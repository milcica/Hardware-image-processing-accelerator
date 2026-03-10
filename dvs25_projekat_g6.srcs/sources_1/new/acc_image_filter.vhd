-- =============================================================================
-- acc_image_filter.vhd  -  Complete image-filter hardware accelerator
-- All registered signals driven only from clocked processes (rising_edge(clk)).
-- No concurrent when/else assignments, no case statements, no attributes.
-- =============================================================================

library IEEE;
library xil_defaultlib;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity acc_image_filter is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 10;
        MAX_FILTER_RADIUS  : integer := 4;
        MAX_IMG_WIDTH      : integer := 512
    );
    port (
        -- Clock and reset
        clk   : in std_logic;
        reset : in std_logic;

        -- AXI4-Lite control slave
        s_axi_ctrl_awaddr  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        s_axi_ctrl_awprot  : in  std_logic_vector(2 downto 0);
        s_axi_ctrl_awvalid : in  std_logic;
        s_axi_ctrl_awready : out std_logic;
        s_axi_ctrl_wdata   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        s_axi_ctrl_wstrb   : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        s_axi_ctrl_wvalid  : in  std_logic;
        s_axi_ctrl_wready  : out std_logic;
        s_axi_ctrl_bresp   : out std_logic_vector(1 downto 0);
        s_axi_ctrl_bvalid  : out std_logic;
        s_axi_ctrl_bready  : in  std_logic;
        s_axi_ctrl_araddr  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        s_axi_ctrl_arprot  : in  std_logic_vector(2 downto 0);
        s_axi_ctrl_arvalid : in  std_logic;
        s_axi_ctrl_arready : out std_logic;
        s_axi_ctrl_rdata   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        s_axi_ctrl_rvalid  : out std_logic;
        s_axi_ctrl_rready  : in  std_logic;
        s_axi_ctrl_rresp   : out std_logic_vector(1 downto 0);

        -- AXI4-Stream slave (pixel input)
        s_axis_tdata  : in  std_logic_vector(7 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        -- AXI4-Stream master (filtered output)
        m_axis_tdata  : out std_logic_vector(15 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic
    );


end entity acc_image_filter;

architecture Behavioral of acc_image_filter is

    -- =========================================================================
    -- CONSTANTS
    -- =========================================================================
    constant ADDR_LSB       : natural := (C_S_AXI_DATA_WIDTH/32) + 1;
    constant PIPELINE_DEPTH : natural := 13;
    constant CNT_W          : integer := 9; -- log2(MAX_IMG_WIDTH=512)

    constant WA_CTRL        : integer := 0;
    constant WA_RADIUS      : integer := 1;
    constant WA_IMG_W       : integer := 2;
    constant WA_IMG_H       : integer := 3;
    constant WA_COEFF_SCALE : integer := 4;
    constant WA_COEFF_BASE  : integer := 8;
    constant WA_COEFF_LAST  : integer := 88;

    -- =========================================================================
    -- TYPES
    -- =========================================================================
    type coeff_array_t is array (0 to 80) of std_logic_vector(15 downto 0);
    type fsm_rd_t is (RdAddr, RdData);
    type fsm_wr_t is (WrAddr, WrData, WrStall);
    type fsm_t    is (S_IDLE, S_PROCESSING);

    -- =========================================================================
    -- AXI4-LITE REGISTER FILE
    -- =========================================================================
    signal reg_ctrl        : std_logic_vector(15 downto 0) := (others => '0');
    signal reg_radius      : std_logic_vector(15 downto 0) := (others => '0');
    signal reg_img_w       : std_logic_vector(15 downto 0) := (others => '0');
    signal reg_img_h       : std_logic_vector(15 downto 0) := (others => '0');
    signal reg_coeff_scale : std_logic_vector(15 downto 0) := (others => '0');
    signal reg_coeff       : coeff_array_t                 := (others => (others => '0'));

    -- Frame-start snapshot (consistent for the duration of one frame)
    signal h_ctrl        : std_logic_vector(15 downto 0) := (others => '0');
    signal h_radius      : std_logic_vector(15 downto 0) := (others => '0');
    signal h_img_w       : std_logic_vector(15 downto 0) := (others => '0');
    signal h_img_h       : std_logic_vector(15 downto 0) := (others => '0');
    signal h_coeff_scale : std_logic_vector(15 downto 0) := (others => '0');
    signal h_coeff       : coeff_array_t                 := (others => (others => '0'));

    -- AXI-Lite FSM signals (all registered, driven only from clocked processes)
    signal axi_awready  : std_logic := '0';
    signal axi_wready   : std_logic := '0';
    signal axi_bvalid   : std_logic := '0';
    signal axi_awaddr   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal axi_arready  : std_logic := '0';
    signal axi_rvalid   : std_logic := '0';
    signal axi_araddr   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
    -- Decoded word addresses: registered so they have a clean clock path
    signal reg_waddr    : integer range 0 to 2**(C_S_AXI_ADDR_WIDTH-ADDR_LSB)-1 := 0;
    signal reg_raddr    : integer range 0 to 2**(C_S_AXI_ADDR_WIDTH-ADDR_LSB)-1 := 0;
    -- Write-ready flag: registered
    signal axi_write_ready : std_logic := '0';
    -- Read data mux output: registered
    signal axi_rdata_reg   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');

    signal fsm_rd : fsm_rd_t := RdAddr;
    signal fsm_wr : fsm_wr_t := WrAddr;

    -- =========================================================================
    -- PIXEL DATAPATH
    -- =========================================================================
    signal buf_data  : std_logic_vector(7 downto 0) := (others => '0');
    signal buf_last  : std_logic := '0';
    signal buf_flag  : std_logic := '0';

    signal s0_data   : std_logic_vector(7 downto 0) := (others => '0');
    signal s0_valid  : std_logic := '0';
    signal s0_last   : std_logic := '0';

    -- Counters as slv: Vivado tracks clock domain through slv reliably
    signal col_cnt   : std_logic_vector(CNT_W-1 downto 0) := (others => '0');
    signal row_cnt   : std_logic_vector(CNT_W-1 downto 0) := (others => '0');

    -- win_valid: registered (driven from clocked process, not concurrent assignment)
    signal win_valid    : std_logic := '0';
    -- pixel_to_alu: combinatorial border mux output (feeds into registered sA_data)
    signal pixel_to_alu : std_logic_vector(7 downto 0) := (others => '0');

    -- Stage-A: registered pipeline stage between fetch and ALU
    signal sA_valid  : std_logic := '0';
    signal sA_data   : std_logic_vector(7 downto 0) := (others => '0');
    signal sA_last   : std_logic := '0';
    signal sA_out    : std_logic := '0';
    signal sA_col    : std_logic_vector(CNT_W-1 downto 0) := (others => '0');

    -- Pipeline shift registers
    signal pipe_valid   : std_logic_vector(PIPELINE_DEPTH-1 downto 0) := (others => '0');
    signal pipe_last    : std_logic_vector(PIPELINE_DEPTH-1 downto 0) := (others => '0');
    signal pipe_out     : std_logic_vector(PIPELINE_DEPTH-1 downto 0) := (others => '0');
    -- pipe_advance: registered flag, updated combinatorially would cause issues
    signal pipe_advance : std_logic := '0';

    -- Main FSM
    signal fsm_state : fsm_t := S_IDLE;

    -- =========================================================================
    -- BRAM / ALU CONTROL
    -- =========================================================================
    signal bram_rd_en    : std_logic := '0';
    signal bram_wr_en    : std_logic := '0';
    signal bram_col_out  : std_logic_vector(2*MAX_FILTER_RADIUS*8-1 downto 0) := (others => '0');
    signal alu_shift_en  : std_logic := '0';
    signal coeff_flat    : std_logic_vector(81*16-1 downto 0) := (others => '0');
    signal alu_result    : std_logic_vector(15 downto 0);
    signal alu_result_valid : std_logic;

    -- =========================================================================
begin

    -- =========================================================================
    -- COEFFICIENT FLAT PACK (registered, updated whenever h_coeff changes)
    -- =========================================================================
    p_coeff_pack : process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                coeff_flat <= (others => '0');
            else
                for k in 0 to 80 loop
                    coeff_flat((k+1)*16-1 downto k*16) <= h_coeff(k);
                end loop;
            end if;
        end if;
    end process p_coeff_pack;

    -- =========================================================================
    -- BORDER PIXEL MUX (purely combinatorial; output feeds into registered sA_data)
    -- This is the only combinatorial process: its output is always captured into
    -- a register (sA_data) in the same cycle, so no timing path is left open.
    -- =========================================================================
    p_border_mux : process(s0_data, s0_valid, col_cnt, row_cnt,
                           h_img_w, h_img_h, h_radius, h_ctrl)
        variable bord        : std_logic_vector(1 downto 0);
        variable bval        : std_logic_vector(7 downto 0);
        variable on_col_edge : boolean;
        variable on_row_edge : boolean;
        variable col_u, row_u, rad_u, w_u, h_u : unsigned(CNT_W-1 downto 0);
    begin
        bord  := h_ctrl(3 downto 2);
        bval  := h_ctrl(11 downto 4);
        col_u := unsigned(col_cnt);
        row_u := unsigned(row_cnt);
        rad_u := resize(unsigned(h_radius(2 downto 0)), CNT_W);
        w_u   := unsigned(h_img_w(CNT_W-1 downto 0));
        h_u   := unsigned(h_img_h(CNT_W-1 downto 0));

        on_col_edge := (col_u < rad_u) or (col_u >= w_u - rad_u);
        on_row_edge := (row_u < rad_u) or (row_u >= h_u - rad_u);

        pixel_to_alu <= s0_data;  -- default: pass real pixel through

        if s0_valid = '1' then
            if bord = "11" then
                if on_col_edge or on_row_edge then
                    pixel_to_alu <= bval;
                end if;
            end if;
            -- BORD="10" (clamp): always feed real pixel; shift register fills
            -- naturally with boundary values from previous writes.
        end if;
    end process p_border_mux;

    -- =========================================================================
    -- PIPE ADVANCE FLAG (registered: updated at start of each clocked process)
    -- =========================================================================
    p_pipe_advance : process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                pipe_advance <= '0';
            else
                if pipe_valid(PIPELINE_DEPTH-1) = '0' then
                    pipe_advance <= '1';
                elsif m_axis_tready = '1' then
                    pipe_advance <= '1';
                else
                    pipe_advance <= '0';
                end if;
            end if;
        end if;
    end process p_pipe_advance;

    -- =========================================================================
    -- WIN_VALID (registered: computed from registered slv signals each cycle)
    -- =========================================================================
    p_win_valid : process(clk)
        variable col_u, row_u, rad_u, wm_u, hm_u : unsigned(CNT_W-1 downto 0);
    begin
        if rising_edge(clk) then
            if reset = '1' then
                win_valid <= '0';
            else
                col_u := unsigned(col_cnt);
                row_u := unsigned(row_cnt);
                rad_u := resize(unsigned(h_radius(2 downto 0)), CNT_W);
                wm_u  := unsigned(h_img_w(CNT_W-1 downto 0)) - rad_u;
                hm_u  := unsigned(h_img_h(CNT_W-1 downto 0)) - rad_u;

                if h_ctrl(3 downto 2) /= "00" then
                    -- Any border extension mode: every pixel produces output
                    win_valid <= '1';
                elsif (col_u >= rad_u and col_u < wm_u and
                       row_u >= rad_u and row_u < hm_u) then
                    win_valid <= '1';
                else
                    win_valid <= '0';
                end if;
            end if;
        end if;
    end process p_win_valid;

    -- =========================================================================
    -- AXI4-LITE: WRITE ADDRESS / WRITE READY FLAGS (registered)
    -- =========================================================================
    p_axi_wr_fsm : process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                axi_awready    <= '0';
                axi_wready     <= '0';
                axi_bvalid     <= '0';
                axi_awaddr     <= (others => '0');
                axi_write_ready <= '0';
                fsm_wr         <= WrAddr;
            else
                axi_write_ready <= '0';  -- default: deassert each cycle

                if fsm_wr = WrAddr then
                    axi_awready <= '1';
                    axi_wready  <= '1';
                    if axi_awready = '1' and s_axi_ctrl_awvalid = '1' then
                        axi_awaddr <= s_axi_ctrl_awaddr;
                        if axi_wready = '1' and s_axi_ctrl_wvalid = '1' then
                            axi_write_ready <= '1';
                            axi_bvalid <= '1';
                            if s_axi_ctrl_bready = '0' then
                                axi_awready <= '0';
                                axi_wready  <= '0';
                                fsm_wr      <= WrStall;
                            end if;
                        else
                            axi_awready <= '0';
                            fsm_wr      <= WrData;
                            if s_axi_ctrl_bready = '1' and axi_bvalid = '1' then
                                axi_bvalid <= '0';
                            end if;
                        end if;
                    else
                        if s_axi_ctrl_bready = '1' and axi_bvalid = '1' then
                            axi_bvalid <= '0';
                        end if;
                    end if;

                elsif fsm_wr = WrData then
                    if axi_wready = '1' and s_axi_ctrl_wvalid = '1' then
                        axi_write_ready <= '1';
                        axi_bvalid <= '1';
                        if s_axi_ctrl_bready = '0' then
                            axi_awready <= '0';
                            axi_wready  <= '0';
                            fsm_wr      <= WrStall;
                        else
                            axi_awready <= '1';
                            axi_wready  <= '1';
                            fsm_wr      <= WrAddr;
                        end if;
                    else
                        if s_axi_ctrl_bready = '1' and axi_bvalid = '1' then
                            axi_bvalid <= '0';
                        end if;
                    end if;

                elsif fsm_wr = WrStall then
                    if s_axi_ctrl_bready = '1' and axi_bvalid = '1' then
                        axi_bvalid  <= '0';
                        axi_awready <= '1';
                        axi_wready  <= '1';
                        fsm_wr      <= WrAddr;
                    end if;

                else
                    axi_awready     <= '0';
                    axi_wready      <= '0';
                    axi_bvalid      <= '0';
                    axi_write_ready <= '0';
                    fsm_wr          <= WrAddr;
                end if;
            end if;
        end if;
    end process p_axi_wr_fsm;

    -- reg_waddr: registered, updated whenever a new write address is accepted
    p_reg_waddr : process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                reg_waddr <= 0;
            else
                if s_axi_ctrl_awvalid = '1' then
                    reg_waddr <= to_integer(unsigned(
                        s_axi_ctrl_awaddr(C_S_AXI_ADDR_WIDTH-1 downto ADDR_LSB)));
                else
                    reg_waddr <= to_integer(unsigned(
                        axi_awaddr(C_S_AXI_ADDR_WIDTH-1 downto ADDR_LSB)));
                end if;
            end if;
        end if;
    end process p_reg_waddr;

    s_axi_ctrl_awready <= axi_awready;
    s_axi_ctrl_wready  <= axi_wready;
    s_axi_ctrl_bvalid  <= axi_bvalid;
    s_axi_ctrl_bresp   <= "00";

    -- =========================================================================
    -- AXI4-LITE: WRITE REGISTER FILE
    -- =========================================================================
    p_axi_wr_regs : process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                reg_ctrl        <= (others => '0');
                reg_radius      <= (others => '0');
                reg_img_w       <= (others => '0');
                reg_img_h       <= (others => '0');
                reg_coeff_scale <= (others => '0');
                reg_coeff       <= (others => (others => '0'));
            elsif axi_write_ready = '1' then
                -- Byte 0
                if s_axi_ctrl_wstrb(0) = '1' then
                    if reg_waddr = WA_CTRL then
                        reg_ctrl(7 downto 0) <= s_axi_ctrl_wdata(7 downto 0);
                    elsif reg_waddr = WA_RADIUS then
                        reg_radius(7 downto 0) <= s_axi_ctrl_wdata(7 downto 0);
                    elsif reg_waddr = WA_IMG_W then
                        reg_img_w(7 downto 0) <= s_axi_ctrl_wdata(7 downto 0);
                    elsif reg_waddr = WA_IMG_H then
                        reg_img_h(7 downto 0) <= s_axi_ctrl_wdata(7 downto 0);
                    elsif reg_waddr = WA_COEFF_SCALE then
                        reg_coeff_scale(7 downto 0) <= s_axi_ctrl_wdata(7 downto 0);
                    elsif reg_waddr >= WA_COEFF_BASE and reg_waddr <= WA_COEFF_LAST then
                        reg_coeff(reg_waddr - WA_COEFF_BASE)(7 downto 0) <= s_axi_ctrl_wdata(7 downto 0);
                    end if;
                end if;
                -- Byte 1
                if s_axi_ctrl_wstrb(1) = '1' then
                    if reg_waddr = WA_CTRL then
                        reg_ctrl(15 downto 8) <= s_axi_ctrl_wdata(15 downto 8);
                    elsif reg_waddr = WA_RADIUS then
                        reg_radius(15 downto 8) <= s_axi_ctrl_wdata(15 downto 8);
                    elsif reg_waddr = WA_IMG_W then
                        reg_img_w(15 downto 8) <= s_axi_ctrl_wdata(15 downto 8);
                    elsif reg_waddr = WA_IMG_H then
                        reg_img_h(15 downto 8) <= s_axi_ctrl_wdata(15 downto 8);
                    elsif reg_waddr = WA_COEFF_SCALE then
                        reg_coeff_scale(15 downto 8) <= s_axi_ctrl_wdata(15 downto 8);
                    elsif reg_waddr >= WA_COEFF_BASE and reg_waddr <= WA_COEFF_LAST then
                        reg_coeff(reg_waddr - WA_COEFF_BASE)(15 downto 8) <= s_axi_ctrl_wdata(15 downto 8);
                    end if;
                end if;
            end if;
        end if;
    end process p_axi_wr_regs;

    -- =========================================================================
    -- AXI4-LITE: READ FSM + READ DATA REGISTER
    -- =========================================================================
    p_axi_rd_fsm : process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                axi_arready <= '0';
                axi_rvalid  <= '0';
                axi_araddr  <= (others => '0');
                fsm_rd      <= RdAddr;
            else
                if fsm_rd = RdAddr then
                    axi_arready <= '1';
                    if axi_arready = '1' and s_axi_ctrl_arvalid = '1' then
                        axi_araddr  <= s_axi_ctrl_araddr;
                        axi_arready <= '0';
                        axi_rvalid  <= '1';
                        fsm_rd      <= RdData;
                    end if;
                elsif fsm_rd = RdData then
                    if s_axi_ctrl_rready = '1' and axi_rvalid = '1' then
                        axi_rvalid  <= '0';
                        axi_arready <= '1';
                        fsm_rd      <= RdAddr;
                    end if;
                else
                    axi_arready <= '0';
                    axi_rvalid  <= '0';
                    fsm_rd      <= RdAddr;
                end if;
            end if;
        end if;
    end process p_axi_rd_fsm;

    -- reg_raddr: registered
    p_reg_raddr : process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                reg_raddr <= 0;
            else
                if s_axi_ctrl_arvalid = '1' then
                    reg_raddr <= to_integer(unsigned(
                        s_axi_ctrl_araddr(C_S_AXI_ADDR_WIDTH-1 downto ADDR_LSB)));
                else
                    reg_raddr <= to_integer(unsigned(
                        axi_araddr(C_S_AXI_ADDR_WIDTH-1 downto ADDR_LSB)));
                end if;
            end if;
        end if;
    end process p_reg_raddr;

    -- Read data register: registered mux, no concurrent when/else
    p_axi_rdata : process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                axi_rdata_reg <= (others => '0');
            else
                axi_rdata_reg <= (others => '0');  -- default upper bits zero
                if reg_raddr = WA_CTRL then
                    axi_rdata_reg(15 downto 0) <= reg_ctrl;
                elsif reg_raddr = WA_RADIUS then
                    axi_rdata_reg(15 downto 0) <= reg_radius;
                elsif reg_raddr = WA_IMG_W then
                    axi_rdata_reg(15 downto 0) <= reg_img_w;
                elsif reg_raddr = WA_IMG_H then
                    axi_rdata_reg(15 downto 0) <= reg_img_h;
                elsif reg_raddr = WA_COEFF_SCALE then
                    axi_rdata_reg(15 downto 0) <= reg_coeff_scale;
                elsif reg_raddr >= WA_COEFF_BASE and reg_raddr <= WA_COEFF_LAST then
                    axi_rdata_reg(15 downto 0) <= reg_coeff(reg_raddr - WA_COEFF_BASE);
                end if;
            end if;
        end if;
    end process p_axi_rdata;

    s_axi_ctrl_arready <= axi_arready;
    s_axi_ctrl_rvalid  <= axi_rvalid;
    s_axi_ctrl_rdata   <= axi_rdata_reg;
    s_axi_ctrl_rresp   <= "00";

    -- =========================================================================
    -- STAGE 0: PIXEL FETCH + MAIN FSM
    -- =========================================================================
    p_stage0 : process(clk)
        variable next_col : std_logic_vector(CNT_W-1 downto 0);
        variable next_row : std_logic_vector(CNT_W-1 downto 0);
    begin
        if rising_edge(clk) then
            if reset = '1' then
                fsm_state     <= S_IDLE;
                s0_valid      <= '0';
                s0_data       <= (others => '0');
                s0_last       <= '0';
                col_cnt       <= (others => '0');
                row_cnt       <= (others => '0');
                buf_flag      <= '0';
                buf_data      <= (others => '0');
                buf_last      <= '0';
                h_ctrl        <= (others => '0');
                h_radius      <= (others => '0');
                h_img_w       <= (others => '0');
                h_img_h       <= (others => '0');
                h_coeff_scale <= (others => '0');
                h_coeff       <= (others => (others => '0'));
                bram_rd_en    <= '0';
                sA_valid      <= '0';
                sA_data       <= (others => '0');
                sA_last       <= '0';
                sA_out        <= '0';
                sA_col        <= (others => '0');
                pipe_valid    <= (others => '0');
                pipe_last     <= (others => '0');
                pipe_out      <= (others => '0');
                alu_shift_en  <= '0';
                bram_wr_en    <= '0';
            else
                -- Default: deassert one-cycle pulses
                bram_rd_en   <= '0';
                bram_wr_en   <= '0';
                alu_shift_en <= '0';
                s0_valid     <= '0';

                -- =============================================================
                -- STAGE A → PIPELINE SHIFT
                -- =============================================================
                if pipe_advance = '1' then
                    pipe_valid(0) <= sA_valid;
                    pipe_last(0)  <= sA_last;
                    pipe_out(0)   <= sA_out;
                    for i in 1 to PIPELINE_DEPTH-1 loop
                        pipe_valid(i) <= pipe_valid(i-1);
                        pipe_last(i)  <= pipe_last(i-1);
                        pipe_out(i)   <= pipe_out(i-1);
                    end loop;
                    if sA_valid = '1' then
                        alu_shift_en <= '1';
                        bram_wr_en   <= '1';
                    end if;
                    sA_valid <= '0';
                end if;

                -- =============================================================
                -- MAIN FSM
                -- =============================================================
                if fsm_state = S_IDLE then
                    col_cnt  <= (others => '0');
                    row_cnt  <= (others => '0');
                    buf_flag <= '0';

                    if s_axis_tvalid = '1' then
                        -- Snapshot all config registers for this frame
                        h_ctrl        <= reg_ctrl;
                        h_radius      <= reg_radius;
                        h_img_w       <= reg_img_w;
                        h_img_h       <= reg_img_h;
                        h_coeff_scale <= reg_coeff_scale;
                        h_coeff       <= reg_coeff;

                        -- Capture first pixel
                        s0_data  <= s_axis_tdata;
                        s0_valid <= '1';
                        s0_last  <= s_axis_tlast;

                        -- Latch directly into stage-A
                        sA_valid <= '1';
                        sA_data  <= s_axis_tdata;
                        sA_last  <= s_axis_tlast;
                        sA_col   <= (others => '0');

                        -- win_valid for pixel (0,0)
                        if reg_ctrl(3 downto 2) /= "00" then
                            sA_out <= '1';
                        elsif unsigned(reg_radius(2 downto 0)) = 0 then
                            sA_out <= '1';
                        else
                            sA_out <= '0';
                        end if;

                        bram_rd_en <= '1';

                        -- Advance col_cnt for the next pixel
                        if s_axis_tlast = '1' then
                            col_cnt <= (others => '0');
                            row_cnt <= (others => '0');
                        elsif unsigned(reg_img_w) > 1 then
                            col_cnt <= std_logic_vector(to_unsigned(1, CNT_W));
                        end if;

                        fsm_state <= S_PROCESSING;
                    end if;

                elsif fsm_state = S_PROCESSING then
                    -- Return to idle when last output pixel is accepted
                    if pipe_valid(PIPELINE_DEPTH-1) = '1' and
                       pipe_last(PIPELINE_DEPTH-1)  = '1' and
                       m_axis_tready = '1' then
                        fsm_state <= S_IDLE;
                    end if;

                    if sA_valid = '0' and pipe_advance = '1' then
                        -- Stage-A is empty: load next pixel
                        if buf_flag = '1' then
                            s0_data  <= buf_data;
                            s0_valid <= '1';
                            s0_last  <= buf_last;
                            buf_flag <= '0';
                        elsif s_axis_tvalid = '1' then
                            s0_data  <= s_axis_tdata;
                            s0_valid <= '1';
                            s0_last  <= s_axis_tlast;
                        else
                            s0_valid <= '0';
                        end if;

                        if buf_flag = '1' or s_axis_tvalid = '1' then
                            sA_valid <= '1';
                            sA_data  <= pixel_to_alu;
                            sA_col   <= col_cnt;
                            if buf_flag = '1' then
                                sA_last <= buf_last;
                            else
                                sA_last <= s_axis_tlast;
                            end if;
                            if h_ctrl(1) = '1' then
                                sA_out <= '1';  -- bypass: always output
                            else
                                sA_out <= win_valid;
                            end if;

                            bram_rd_en <= '1';

                            -- Advance counters
                            next_col := col_cnt;
                            next_row := row_cnt;
                            if unsigned(next_col) = unsigned(h_img_w(CNT_W-1 downto 0)) - 1 then
                                next_col := (others => '0');
                                if unsigned(next_row) = unsigned(h_img_h(CNT_W-1 downto 0)) - 1 then
                                    next_row := (others => '0');
                                else
                                    next_row := std_logic_vector(unsigned(next_row) + 1);
                                end if;
                            else
                                next_col := std_logic_vector(unsigned(next_col) + 1);
                            end if;
                            col_cnt <= next_col;
                            row_cnt <= next_row;
                        end if;

                    elsif pipe_advance = '0' and s_axis_tvalid = '1' and buf_flag = '0' then
                        -- Pipeline stalled: buffer the incoming pixel
                        buf_data <= s_axis_tdata;
                        buf_last <= s_axis_tlast;
                        buf_flag <= '1';
                    end if;

                else
                    fsm_state <= S_IDLE;
                end if;

            end if;
        end if;
    end process p_stage0;

    -- =========================================================================
    -- AXI-STREAM INPUT READY (registered)
    -- =========================================================================
    p_s_ready : process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                s_axis_tready <= '0';
            else
                if fsm_state = S_PROCESSING and
                   sA_valid     = '0'          and
                   pipe_advance = '1'          and
                   buf_flag     = '0' then
                    s_axis_tready <= '1';
                else
                    s_axis_tready <= '0';
                end if;
            end if;
        end if;
    end process p_s_ready;

    -- =========================================================================
    -- OUTPUT REGISTER
    -- =========================================================================
    p_output : process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                m_axis_tdata  <= (others => '0');
                m_axis_tvalid <= '0';
                m_axis_tlast  <= '0';
            else
                if pipe_advance = '1' then
                    if pipe_out(PIPELINE_DEPTH-1) = '1' then
                        m_axis_tvalid <= '1';
                        m_axis_tlast  <= pipe_last(PIPELINE_DEPTH-1);
                        if h_ctrl(0) = '0' then
                            -- MODE=0: uint8 in low byte, upper byte zero
                            m_axis_tdata(7 downto 0)  <= alu_result(7 downto 0);
                            m_axis_tdata(15 downto 8) <= (others => '0');
                        else
                            -- MODE=1: full signed Q9.7
                            m_axis_tdata <= alu_result;
                        end if;
                    else
                        m_axis_tvalid <= '0';
                        m_axis_tlast  <= '0';
                        m_axis_tdata  <= (others => '0');
                    end if;
                end if;
            end if;
        end if;
    end process p_output;

    -- =========================================================================
    -- BRAM INSTANCE
    -- =========================================================================
    u_bram : entity xil_defaultlib.bram_linebuf(Behavioral)
        generic map (
            MAX_R         => MAX_FILTER_RADIUS,
            IMG_WIDTH_MAX => MAX_IMG_WIDTH
        )
        port map (
            clk       => clk,
            rst       => reset,
            rd_addr   => col_cnt,
            wr_addr   => sA_col,
            pixel_in  => sA_data,
            wr_enable => bram_wr_en,
            rd_enable => bram_rd_en,
            col_out   => bram_col_out
        );

    -- =========================================================================
    -- ALU INSTANCE
    -- =========================================================================
    u_alu : entity xil_defaultlib.filter_alu(Behavioral)
        generic map (
            MAX_R      => MAX_FILTER_RADIUS,
            FRAC_COEFF => 15,
            FRAC_SCALE => 12
        )
        port map (
            clk           => clk,
            rst           => reset,
            radius        => h_radius(2 downto 0),
            coeff         => coeff_flat,
            coeff_scale   => h_coeff_scale,
            mode          => h_ctrl(0),
            pixel_new     => sA_data,
            col_from_bram => bram_col_out,
            shift_en      => alu_shift_en,
            result        => alu_result,
            result_valid  => alu_result_valid
        );

end architecture Behavioral;