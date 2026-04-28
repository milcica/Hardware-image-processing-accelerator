-- =============================================================================
-- tb_acc_image_filter.vhd
--
-- Testbench for acc_image_filter - 512x512 ramp input, LoG 9x9 radius=4
-- Same test as C software: DataBuffer[i] = i & 0xFF, Mode=Q9.7
--
-- Key waveform signals to add in Vivado:
--   clk, reset
--   s_axis_tdata, s_axis_tvalid, s_axis_tready, s_axis_tlast
--   m_axis_tdata, m_axis_tvalid, m_axis_tlast
--   col_cnt, row_cnt, sA_valid, sA_out, sA_data
--   pipe_valid, pipe_out, pipe_advance
--   u_alu/valid_mul, valid_rowsum, valid_acc, valid_reg1, valid_reg2
--   u_alu/acc_reg, u_alu/result_reg
-- =============================================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_acc_image_filter is
end entity tb_acc_image_filter;

architecture sim of tb_acc_image_filter is

    constant CLK_PERIOD : time    := 10 ns;
    constant IMG_W      : integer := 512;
    constant IMG_H      : integer := 512;
    constant RADIUS     : integer := 4;
    constant OUT_W      : integer := IMG_W - 2*RADIUS;  -- 504
    constant OUT_H      : integer := IMG_H - 2*RADIUS;  -- 504
    constant NUM_PIX    : integer := IMG_W * IMG_H;     -- 262144

    -- -------------------------------------------------------------------------
    -- DUT signals
    -- -------------------------------------------------------------------------
    signal clk   : std_logic := '0';
    signal reset : std_logic := '1';

    signal s_axi_ctrl_awaddr  : std_logic_vector(9 downto 0)  := (others => '0');
    signal s_axi_ctrl_awprot  : std_logic_vector(2 downto 0)  := (others => '0');
    signal s_axi_ctrl_awvalid : std_logic := '0';
    signal s_axi_ctrl_awready : std_logic;
    signal s_axi_ctrl_wdata   : std_logic_vector(31 downto 0) := (others => '0');
    signal s_axi_ctrl_wstrb   : std_logic_vector(3 downto 0)  := "0011";
    signal s_axi_ctrl_wvalid  : std_logic := '0';
    signal s_axi_ctrl_wready  : std_logic;
    signal s_axi_ctrl_bresp   : std_logic_vector(1 downto 0);
    signal s_axi_ctrl_bvalid  : std_logic;
    signal s_axi_ctrl_bready  : std_logic := '1';
    signal s_axi_ctrl_araddr  : std_logic_vector(9 downto 0)  := (others => '0');
    signal s_axi_ctrl_arprot  : std_logic_vector(2 downto 0)  := (others => '0');
    signal s_axi_ctrl_arvalid : std_logic := '0';
    signal s_axi_ctrl_arready : std_logic;
    signal s_axi_ctrl_rdata   : std_logic_vector(31 downto 0);
    signal s_axi_ctrl_rvalid  : std_logic;
    signal s_axi_ctrl_rready  : std_logic := '1';
    signal s_axi_ctrl_rresp   : std_logic_vector(1 downto 0);

    signal s_axis_tdata  : std_logic_vector(7 downto 0) := (others => '0');
    signal s_axis_tvalid : std_logic := '0';
    signal s_axis_tready : std_logic;
    signal s_axis_tlast  : std_logic := '0';

    signal m_axis_tdata  : std_logic_vector(15 downto 0);
    signal m_axis_tvalid : std_logic;
    signal m_axis_tready : std_logic := '1';
    signal m_axis_tlast  : std_logic;

    signal out_count : integer := 0;
    signal done      : std_logic := '0';

    -- LoG 9x9 coefficients
    type coeff_arr_t is array (0 to 80) of integer;
    constant LOG_COEFFS : coeff_arr_t := (
         0,  0,  1,  1,  1,  1,  1,  0,  0,
         0,  1,  3,  4,  4,  4,  3,  1,  0,
         1,  3,  5,  3,  0,  3,  5,  3,  1,
         1,  4,  3,-10,-21,-10,  3,  4,  1,
         1,  4,  0,-21,-40,-21,  0,  4,  1,
         1,  4,  3,-10,-21,-10,  3,  4,  1,
         1,  3,  5,  3,  0,  3,  5,  3,  1,
         0,  1,  3,  4,  4,  4,  3,  1,  0,
         0,  0,  1,  1,  1,  1,  1,  0,  0
    );

    -- Expected first 10 output values (SW reference, Q9.7 signed)
    -- Computed from: DataBuffer[i]=i&0xFF, LoG 9x9, coeff_scale=4096, >>20
    type exp_arr_t is array (0 to 9) of integer;
    constant EXPECTED : exp_arr_t := (-1,-1,-1,-1,-1,-1,-1,-1,-1,-1);

    -- AXI-Lite write procedure
    procedure axi_write (
        signal   clk      : in  std_logic;
        signal   awaddr   : out std_logic_vector(9 downto 0);
        signal   awvalid  : out std_logic;
        signal   awready  : in  std_logic;
        signal   wdata    : out std_logic_vector(31 downto 0);
        signal   wvalid   : out std_logic;
        signal   wready   : in  std_logic;
        signal   bvalid   : in  std_logic;
        signal   bready   : out std_logic;
        constant addr     : in  std_logic_vector(9 downto 0);
        constant data     : in  std_logic_vector(31 downto 0)
    ) is begin
        wait until rising_edge(clk);
        awaddr  <= addr;
        awvalid <= '1';
        wdata   <= data;
        wvalid  <= '1';
        bready  <= '1';
        wait until rising_edge(clk) and awready = '1' and wready = '1';
        awvalid <= '0';
        wvalid  <= '0';
        wait until rising_edge(clk) and bvalid = '1';
    end procedure;

begin

    -- =========================================================================
    -- DUT
    -- =========================================================================
    u_dut : entity work.acc_image_filter(Behavioral)
        generic map (
            C_S_AXI_DATA_WIDTH => 32,
            C_S_AXI_ADDR_WIDTH => 10,
            MAX_FILTER_RADIUS  => 4,
            MAX_IMG_WIDTH      => 512
        )
        port map (
            clk                => clk,
            reset              => reset,
            s_axi_ctrl_awaddr  => s_axi_ctrl_awaddr,
            s_axi_ctrl_awprot  => s_axi_ctrl_awprot,
            s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
            s_axi_ctrl_awready => s_axi_ctrl_awready,
            s_axi_ctrl_wdata   => s_axi_ctrl_wdata,
            s_axi_ctrl_wstrb   => s_axi_ctrl_wstrb,
            s_axi_ctrl_wvalid  => s_axi_ctrl_wvalid,
            s_axi_ctrl_wready  => s_axi_ctrl_wready,
            s_axi_ctrl_bresp   => s_axi_ctrl_bresp,
            s_axi_ctrl_bvalid  => s_axi_ctrl_bvalid,
            s_axi_ctrl_bready  => s_axi_ctrl_bready,
            s_axi_ctrl_araddr  => s_axi_ctrl_araddr,
            s_axi_ctrl_arprot  => s_axi_ctrl_arprot,
            s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
            s_axi_ctrl_arready => s_axi_ctrl_arready,
            s_axi_ctrl_rdata   => s_axi_ctrl_rdata,
            s_axi_ctrl_rvalid  => s_axi_ctrl_rvalid,
            s_axi_ctrl_rready  => s_axi_ctrl_rready,
            s_axi_ctrl_rresp   => s_axi_ctrl_rresp,
            s_axis_tdata       => s_axis_tdata,
            s_axis_tvalid      => s_axis_tvalid,
            s_axis_tready      => s_axis_tready,
            s_axis_tlast       => s_axis_tlast,
            m_axis_tdata       => m_axis_tdata,
            m_axis_tvalid      => m_axis_tvalid,
            m_axis_tready      => m_axis_tready,
            m_axis_tlast       => m_axis_tlast
        );

    -- =========================================================================
    -- Clock
    -- =========================================================================
    clk <= not clk after CLK_PERIOD / 2;

    -- =========================================================================
    -- Stimulus
    -- =========================================================================
    stim : process
        variable coeff_addr : std_logic_vector(9 downto 0);
        variable coeff_byte : integer;
        variable pixel_val  : integer;
    begin
        -- Reset
        reset <= '1';
        wait for 10 * CLK_PERIOD;
        reset <= '0';
        wait for 5 * CLK_PERIOD;

        -- CTRL = 1 (mode=Q9.7)
        axi_write(clk,
            s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
            s_axi_ctrl_wdata,  s_axi_ctrl_wvalid,  s_axi_ctrl_wready,
            s_axi_ctrl_bvalid, s_axi_ctrl_bready,
            "0000000000", x"00000001");

        -- RADIUS = 4
        axi_write(clk,
            s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
            s_axi_ctrl_wdata,  s_axi_ctrl_wvalid,  s_axi_ctrl_wready,
            s_axi_ctrl_bvalid, s_axi_ctrl_bready,
            "0000000100", x"00000004");

        -- IMG_W = 512
        axi_write(clk,
            s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
            s_axi_ctrl_wdata,  s_axi_ctrl_wvalid,  s_axi_ctrl_wready,
            s_axi_ctrl_bvalid, s_axi_ctrl_bready,
            "0000001000", x"00000200");

        -- IMG_H = 512
        axi_write(clk,
            s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
            s_axi_ctrl_wdata,  s_axi_ctrl_wvalid,  s_axi_ctrl_wready,
            s_axi_ctrl_bvalid, s_axi_ctrl_bready,
            "0000001100", x"00000200");

        -- COEFF_SCALE = 4096 (0x1000)
        axi_write(clk,
            s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
            s_axi_ctrl_wdata,  s_axi_ctrl_wvalid,  s_axi_ctrl_wready,
            s_axi_ctrl_bvalid, s_axi_ctrl_bready,
            "0000010000", x"00001000");

        -- Write all 81 LoG coefficients
        for k in 0 to 80 loop
            coeff_byte := 32 + k * 4;
            coeff_addr := std_logic_vector(to_unsigned(coeff_byte, 10));
            axi_write(clk,
                s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
                s_axi_ctrl_wdata,  s_axi_ctrl_wvalid,  s_axi_ctrl_wready,
                s_axi_ctrl_bvalid, s_axi_ctrl_bready,
                coeff_addr,
                std_logic_vector(to_signed(LOG_COEFFS(k), 32)));
        end loop;

        wait for 5 * CLK_PERIOD;
        report "Configuration done - streaming 512x512 pixels" severity note;

        -- Stream 512x512 ramp pixels: DataBuffer[i] = i & 0xFF
        for i in 0 to NUM_PIX-1 loop
            wait until rising_edge(clk) and s_axis_tready = '1';
            pixel_val     := i mod 256;
            s_axis_tdata  <= std_logic_vector(to_unsigned(pixel_val, 8));
            s_axis_tvalid <= '1';
            if (i mod IMG_W) = IMG_W - 1 then
                s_axis_tlast <= '1';
            else
                s_axis_tlast <= '0';
            end if;
            wait until rising_edge(clk);
            s_axis_tvalid <= '0';
            s_axis_tlast  <= '0';
        end loop;

        report "All pixels sent - waiting for output" severity note;
        wait;
    end process stim;

    -- =========================================================================
    -- Output checker - checks first 10 output pixels then reports done
    -- =========================================================================
    p_capture : process(clk)
        variable got : integer;
    begin
        if rising_edge(clk) then
            if reset = '1' then
                out_count <= 0;
                done      <= '0';
            elsif m_axis_tvalid = '1' and m_axis_tready = '1' then
                got := to_integer(signed(m_axis_tdata));

                -- Check first 10 outputs against SW reference
                if out_count < 10 then
                    if got = EXPECTED(out_count) then
                        report "OUT[" & integer'image(out_count) &
                               "] PASS: got=" & integer'image(got) &
                               " expected=" & integer'image(EXPECTED(out_count))
                               severity note;
                    else
                        report "OUT[" & integer'image(out_count) &
                               "] FAIL: got=" & integer'image(got) &
                               " expected=" & integer'image(EXPECTED(out_count))
                               severity error;
                    end if;
                end if;

                if out_count = OUT_W * OUT_H - 1 then
                    done <= '1';
                    report "All " & integer'image(OUT_W*OUT_H) &
                           " output pixels received - simulation complete"
                           severity note;
                end if;

                out_count <= out_count + 1;
            end if;
        end if;
    end process p_capture;

end architecture sim;