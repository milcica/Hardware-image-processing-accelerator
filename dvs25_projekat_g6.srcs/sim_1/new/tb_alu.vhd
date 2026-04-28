-- =============================================================================
-- tb_acc_image_filter.vhd
--
-- 16x16 checkerboard-gradient image, LoG 9x9 radius=4, mode=Q9.7
-- Output: 8x8 = 64 pixels
-- All expected values pre-computed by Python SW reference.
--
-- Run in Vivado: run all  (~5us, finishes quickly)
-- Reports appear in Tcl Console as WARNING messages.
-- =============================================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_acc_image_filter is
end entity tb_acc_image_filter;

architecture sim of tb_acc_image_filter is

    constant CLK_PERIOD : time    := 10 ns;
    constant IMG_W      : integer := 16;
    constant IMG_H      : integer := 16;
    constant RADIUS     : integer := 4;
    constant OUT_W      : integer := 8;
    constant OUT_H      : integer := 8;
    constant NUM_PIX    : integer := 256;
    constant NUM_OUT    : integer := 64;

    -- 16x16 checkerboard-gradient image (row-major)
    type pixel_arr_t is array (0 to 255) of integer;
    constant PIXELS : pixel_arr_t := (
        0,4,200,200,16,20,200,200,32,36,200,200,48,52,200,200,       -- row 0
        16,20,192,192,32,36,192,192,48,52,192,192,64,68,192,192,     -- row 1
        184,184,40,44,184,184,56,60,184,184,72,76,184,184,88,92,     -- row 2
        176,176,56,60,176,176,72,76,176,176,88,92,176,176,104,108,   -- row 3
        64,68,168,168,80,84,168,168,96,100,168,168,112,116,168,168,  -- row 4
        80,84,160,160,96,100,160,160,112,116,160,160,128,132,160,160,-- row 5
        152,152,104,108,152,152,120,124,152,152,136,140,152,152,152,156,-- row 6
        144,144,120,124,144,144,136,140,144,144,152,156,144,144,168,172,-- row 7
        128,132,136,136,144,148,136,136,160,164,136,136,176,180,136,136,-- row 8
        144,148,128,128,160,164,128,128,176,180,128,128,192,196,128,128,-- row 9
        120,120,168,172,120,120,184,188,120,120,200,204,120,120,216,220,-- row 10
        112,112,184,188,112,112,200,204,112,112,216,220,112,112,232,236,-- row 11
        192,196,104,104,208,212,104,104,224,228,104,104,240,244,104,104,-- row 12
        208,212,96,96,224,228,96,96,240,244,96,96,255,255,96,96,     -- row 13
        88,88,232,236,88,88,248,252,88,88,255,255,88,88,255,255,     -- row 14
        80,80,248,252,80,80,255,255,80,80,255,255,80,80,255,255      -- row 15
    );

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

    -- SW reference expected outputs (Python computed)
    type exp_arr_t is array (0 to 63) of integer;
    constant EXPECTED : exp_arr_t := (
        -10,-10,-14,-15,-12,-11,-14,-15,
         -8, -8,-17,-18,-10, -9,-17,-18,
        -13,-13,-14,-14,-13,-13,-15,-15,
        -15,-16,-12,-12,-15,-16,-13,-13,
        -16,-16,-11,-12,-18,-17,-11,-12,
        -14,-14,-14,-15,-16,-15,-14,-15,
        -10,-10,-20,-20,-10,-10,-21,-21,
        -13,-13,-18,-18,-13,-14,-20,-20
    );

    -- DUT signals
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
    signal all_done  : std_logic := '0';

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

    clk <= not clk after CLK_PERIOD / 2;

    stim : process
        variable coeff_byte : integer;
        variable coeff_addr : std_logic_vector(9 downto 0);
    begin
        reset <= '1';
        wait for 10 * CLK_PERIOD;
        reset <= '0';
        wait for 5 * CLK_PERIOD;

        -- CTRL=1 (Q9.7)
        axi_write(clk, s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
                  s_axi_ctrl_wdata, s_axi_ctrl_wvalid, s_axi_ctrl_wready,
                  s_axi_ctrl_bvalid, s_axi_ctrl_bready, "0000000000", x"00000001");
        -- RADIUS=4
        axi_write(clk, s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
                  s_axi_ctrl_wdata, s_axi_ctrl_wvalid, s_axi_ctrl_wready,
                  s_axi_ctrl_bvalid, s_axi_ctrl_bready, "0000000100", x"00000004");
        -- IMG_W=16
        axi_write(clk, s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
                  s_axi_ctrl_wdata, s_axi_ctrl_wvalid, s_axi_ctrl_wready,
                  s_axi_ctrl_bvalid, s_axi_ctrl_bready, "0000001000", x"00000010");
        -- IMG_H=16
        axi_write(clk, s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
                  s_axi_ctrl_wdata, s_axi_ctrl_wvalid, s_axi_ctrl_wready,
                  s_axi_ctrl_bvalid, s_axi_ctrl_bready, "0000001100", x"00000010");
        -- COEFF_SCALE=4096
        axi_write(clk, s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
                  s_axi_ctrl_wdata, s_axi_ctrl_wvalid, s_axi_ctrl_wready,
                  s_axi_ctrl_bvalid, s_axi_ctrl_bready, "0000010000", x"00001000");

        -- 81 LoG coefficients
        for k in 0 to 80 loop
            coeff_byte := 32 + k * 4;
            coeff_addr := std_logic_vector(to_unsigned(coeff_byte, 10));
            axi_write(clk, s_axi_ctrl_awaddr, s_axi_ctrl_awvalid, s_axi_ctrl_awready,
                      s_axi_ctrl_wdata, s_axi_ctrl_wvalid, s_axi_ctrl_wready,
                      s_axi_ctrl_bvalid, s_axi_ctrl_bready,
                      coeff_addr, std_logic_vector(to_signed(LOG_COEFFS(k), 32)));
        end loop;

        wait for 5 * CLK_PERIOD;
        report "Configuration done - streaming 16x16 image" severity warning;

        -- Stream all 256 pixels
        for i in 0 to NUM_PIX-1 loop
            wait until rising_edge(clk) and s_axis_tready = '1';
            s_axis_tdata  <= std_logic_vector(to_unsigned(PIXELS(i), 8));
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

        report "All 256 pixels sent" severity warning;
        wait until all_done = '1';
        report "===== Simulation complete =====" severity warning;
        wait;
    end process stim;

    p_capture : process(clk)
        variable got : integer;
    begin
        if rising_edge(clk) then
            if reset = '1' then
                out_count <= 0;
                all_done  <= '0';
            elsif m_axis_tvalid = '1' and m_axis_tready = '1' then
                got := to_integer(signed(m_axis_tdata));

                if got = EXPECTED(out_count) then
                    report "OUT[" & integer'image(out_count) &
                           "] PASS: got=" & integer'image(got) &
                           " exp=" & integer'image(EXPECTED(out_count))
                           severity warning;
                else
                    report "OUT[" & integer'image(out_count) &
                           "] FAIL: got=" & integer'image(got) &
                           " exp=" & integer'image(EXPECTED(out_count))
                           severity error;
                end if;

                if out_count = NUM_OUT - 1 then
                    all_done <= '1';
                end if;
                out_count <= out_count + 1;
            end if;
        end if;
    end process p_capture;

end architecture sim;