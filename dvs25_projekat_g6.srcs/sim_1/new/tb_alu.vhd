-- =============================================================================
-- tb_filter_alu.vhd
-- 
-- Testbench for the filter_alu entity.
-- Tests: 
--   1. 3x3 Uniform Filter (Radius 1)
--   2. 9x9 Uniform Filter (Radius 4)
-- =============================================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_filter_alu is
end entity tb_filter_alu;

architecture sim of tb_filter_alu is

    -- Constants
    constant CLK_PERIOD : time := 10 ns;
    constant MAX_R      : integer := 4;
    
    -- Signals to drive UUT
    signal clk           : std_logic := '0';
    signal rst           : std_logic := '1';
    signal radius        : std_logic_vector(2 downto 0) := "000";
    signal coeff         : std_logic_vector(81*16-1 downto 0) := (others => '0');
    signal coeff_scale   : std_logic_vector(15 downto 0) := x"1000"; -- 1.0 (UQ4.12)
    signal mode          : std_logic := '0'; -- 0 = uint8, 1 = Q9.7
    signal pixel_new     : std_logic_vector(7 downto 0) := (others => '0');
    signal col_from_bram : std_logic_vector(63 downto 0) := (others => '0');
    signal shift_en      : std_logic := '0';
    
    -- Outputs from UUT
    signal result        : std_logic_vector(15 downto 0);
    signal result_valid  : std_logic;

begin

    -- -------------------------------------------------------------------------
    -- Instantiate Unit Under Test (UUT)
    -- -------------------------------------------------------------------------
    uut: entity work.filter_alu
        generic map (
            MAX_R      => MAX_R,
            FRAC_COEFF => 15,
            FRAC_SCALE => 12
        )
        port map (
            clk           => clk,
            rst           => rst,
            radius        => radius,
            coeff         => coeff,
            coeff_scale   => coeff_scale,
            mode          => mode,
            pixel_new     => pixel_new,
            col_from_bram => col_from_bram,
            shift_en      => shift_en,
            result        => result,
            result_valid  => result_valid
        );

    -- -------------------------------------------------------------------------
    -- Clock Generation
    -- -------------------------------------------------------------------------
    clk_process : process
    begin
        clk <= '0'; wait for CLK_PERIOD/2;
        clk <= '1'; wait for CLK_PERIOD/2;
    end process;

    -- -------------------------------------------------------------------------
    -- Stimulus Process
    -- -------------------------------------------------------------------------
    stim_proc: process
        -- Helper procedure to set a coefficient at a specific (row, col)
        procedure set_coeff(r, c : integer; val : integer) is
            variable idx : integer;
        begin
            idx := r * 9 + c; -- Stride is always 9 per Fig 5.2
            coeff((idx+1)*16-1 downto idx*16) <= std_logic_vector(to_signed(val, 16));
        end procedure;

        -- Helper to clear all coefficients
        procedure clear_coeffs is
        begin
            coeff <= (others => '0');
        end procedure;

    begin
        -- Initial State
        rst <= '1';
        wait for CLK_PERIOD * 5;
        rst <= '0';
        wait for CLK_PERIOD * 2;

        -- =====================================================================
        -- TEST CASE 1: 3x3 Uniform Filter (Radius = 1)
        -- =====================================================================
        report "--- Starting Test Case 1: 3x3 Uniform Filter ---";
        clear_coeffs;
        radius <= "001"; -- R=1
        
        -- Uniform 3x3 coefficients: 1/9 in Q1.15 is approx 3641
        for r in 0 to 2 loop
            for c in 0 to 2 loop
                set_coeff(r, c, 3641);
            end loop;
        end loop;

        -- Feed constant pixels of 180
        for i in 0 to 15 loop
            pixel_new     <= x"B4"; -- 180
            col_from_bram <= x"000000000000B4B4"; -- Row 1 and Row 2 active
            shift_en      <= '1';
            wait for CLK_PERIOD;
            shift_en      <= '0';
            wait for CLK_PERIOD * 2;
        end loop;

        wait for CLK_PERIOD * 10;

        -- =====================================================================
        -- TEST CASE 2: 9x9 Uniform Filter (Radius = 4)
        -- =====================================================================
        report "--- Starting Test Case 2: 9x9 Uniform Filter ---";
        clear_coeffs;
        radius <= "100"; -- R=4
        
        -- Uniform 9x9 coefficients: 1/81 in Q1.15 is approx 404
        -- (404 * 81 = 32724, which is very close to 2^15 = 32768)
        for r in 0 to 8 loop
            for c in 0 to 8 loop
                set_coeff(r, c, 404);
            end loop;
        end loop;

        -- Feed constant pixels of 100
        for i in 0 to 25 loop
            pixel_new     <= std_logic_vector(to_unsigned(100, 8)); -- 100
            col_from_bram <= x"6464646464646464"; -- All 8 buffered rows = 100
            shift_en      <= '1';
            wait for CLK_PERIOD;
            shift_en      <= '0';
            wait for CLK_PERIOD * 2;
        end loop;

        wait for CLK_PERIOD * 20;

        -- =====================================================================
        -- TEST CASE 3: Mode Switch (Q9.7)
        -- =====================================================================
        report "--- Starting Test Case 3: Mode Switch to Q9.7 ---";
        mode <= '1'; -- Switch to Q9.7
        shift_en <= '1';
        wait for CLK_PERIOD;
        shift_en <= '0';
        
        wait for CLK_PERIOD * 10;
        wait;
    end process;

end architecture;