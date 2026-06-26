library IEEE;
library xil_defaultlib;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity filter_alu is
    generic (
        MAX_R      : integer := 4;   -- maximum filter radius (window up to 9×9)
        FRAC_COEFF : integer := 15;  -- fractional bits of Q1.15 coefficient
        FRAC_SCALE : integer := 12   -- fractional bits of UQ4.12 scale factor
    );
    port (
        clk           : in  std_logic;
        rst           : in  std_logic;


        -- Configuration

        radius        : in  std_logic_vector(2 downto 0);          -- 0..4
        coeff         : in  std_logic_vector(81*16-1 downto 0);    -- W0..W80 packed
        coeff_scale   : in  std_logic_vector(15 downto 0);         -- UQ4.12
        mode          : in  std_logic;                             -- 0=u8, 1=Q9.7


        -- Pixel data

        pixel_new     : in  std_logic_vector(7 downto 0);             -- AXI-Stream
        col_from_bram : in  std_logic_vector(2*MAX_R*8-1 downto 0);   -- BRAM word

        -- Advance all shift registers by one column position
        shift_en      : in  std_logic;


        -- Registered output

        result        : out std_logic_vector(15 downto 0); -- wtf vratiti se
        result_valid  : out std_logic
    );
end entity filter_alu;


architecture Behavioral of filter_alu is


    -- Array dimensions (fixed at elaboration time for MAX_R = 4)

    constant ROWS        : integer := 2*MAX_R + 1;   -- 9
    constant COLS        : integer := 2*MAX_R + 1;   -- 9
    constant ACC_W       : integer := 33;  -- 9 rows × 29-bit row_sum = 32 + 1 for sign  -- 9*column * 9 for rows
    -- Scale multiply: acc (33-bit signed) × coeff_scale (17-bit non-negative signed)
    constant SCALE_W     : integer := ACC_W + 17;    -- 50

 
    -- -----------------------------------------------------------------------
    -- Shift-register types
    -- -----------------------------------------------------------------------
    type shift_row_t   is array (0 to COLS-1) of std_logic_vector(7 downto 0);
    type shift_array_t is array (0 to ROWS-1) of shift_row_t;
 
    signal shift_reg   : shift_array_t := (others => (others => (others => '0')));
 
    -- -----------------------------------------------------------------------
    -- Decoded radius
    -- -----------------------------------------------------------------------
    signal radius_int  : integer range 0 to MAX_R;
 
    -- -----------------------------------------------------------------------
    -- Pipeline stage 1: products (ROWS × COLS, each 25-bit signed)
    -- -----------------------------------------------------------------------
    type prod_array_t is array (0 to ROWS-1, 0 to COLS-1) of signed(24 downto 0);
    signal products     : prod_array_t;
    signal products_reg : prod_array_t;
 
    -- Valid/mode pipeline
    signal valid_mul     : std_logic := '0';
    signal mode_mul      : std_logic := '0';
 
    -- Accumulator signals
    -- 9 x 25-bit signed = max 9*(2^24-1), needs 29-bit signed
    type rowsum_array_t is array (0 to ROWS-1) of signed(28 downto 0);
    signal row_sums_reg  : rowsum_array_t := (others => (others => '0'));
    signal valid_rowsum  : std_logic := '0';
    signal mode_rowsum   : std_logic := '0';
    signal acc_reg       : signed(ACC_W-1 downto 0) := (others => '0');
    signal valid_acc     : std_logic := '0';
    signal mode_acc      : std_logic := '0';
 
    -- -----------------------------------------------------------------------
    -- Pipeline stage 1 register: acc after coeff_scale multiply (50 bits)
    -- -----------------------------------------------------------------------
    signal scaled_reg  : signed(SCALE_W-1 downto 0) := (others => '0');
    signal mode_reg1   : std_logic := '0';
    signal valid_reg1  : std_logic := '0';
 
    -- -----------------------------------------------------------------------
    -- Pipeline stage 2 register: final formatted output
    -- -----------------------------------------------------------------------
    signal result_reg  : std_logic_vector(15 downto 0) := (others => '0');
    signal valid_reg2  : std_logic := '0';
 
    -- -----------------------------------------------------------------------
    -- Helper: extract coefficient k from the flat packed vector
    -- -----------------------------------------------------------------------
    function get_coeff(flat : std_logic_vector; k : integer) return signed is
    begin
        return signed(flat((k+1)*16-1 downto k*16));
    end function;
 
    -- -----------------------------------------------------------------------
    -- Helper: arithmetic right-shift of a signed value (VHDL-93 compatible)
    -- -----------------------------------------------------------------------
    function shr(v : signed; n : integer) return signed is
    begin
        return shift_right(v, n);
    end function;
    
--    -- VIVADO DEBUG ATTRIBUTES
--    attribute mark_debug : string;

--    attribute mark_debug of shift_en      : signal is "true";
--    attribute mark_debug of pixel_new     : signal is "true";
    
--    attribute mark_debug of valid_mul     : signal is "true";
--    attribute mark_debug of valid_rowsum  : signal is "true";
--    attribute mark_debug of valid_acc     : signal is "true";
--    attribute mark_debug of valid_reg1    : signal is "true";
--    attribute mark_debug of valid_reg2    : signal is "true";

--    attribute mark_debug of acc_reg       : signal is "true";
--    attribute mark_debug of scaled_reg    : signal is "true";   
--    attribute mark_debug of result_reg    : signal is "true";

    -- -----------------------------------------------------------------------
    -- TIMING FIX: disable DSP48 inference for the row-sum and accumulator
    -- registers.
    --
    -- Symptom (routed timing, FCLK0 = 83.3 MHz / period 12.000 ns):
    --   Worst slack -2.494 ns, 495 failing endpoints, all on one path:
    --     row_sums_reg_reg[4]0/CLK -> row_sums_reg_reg[4]/PCIN[0]
    --   Data Path Delay 12.834 ns (99.5% logic, 0.5% routing)
    --   Logic Levels: 6 (DSP48E1=6)
    --
    -- Root cause: even though p_rowsum_reg and p_acc_parallel are written as
    -- explicit 4-level balanced binary trees of additions, Vivado ignores the
    -- parenthesisation when products_reg (the pix*cff results) is inferred
    -- into DSP48s.  It "optimises" the sum-of-DSP48-outputs by chaining 7
    -- DSP48s through their PCIN/PCOUT cascade (each stage ~1.7 ns, serial,
    -- NOT a tree), collapsing the 4-level tree into a 7-deep serial cascade.
    --
    -- Fix: force row_sums_reg and acc_reg to be implemented in fabric LUTs
    -- (carry-chain adders).  This makes Vivado respect the balanced binary
    -- tree topology in the source code:
    --   * 4 levels of 29-bit carries for row_sums_reg  (~3-5 ns)
    --   * 4 levels of 33-bit carries for acc_reg       (~3-5 ns)
    -- Both comfortably inside the ~8 ns data-path budget (12 ns period -
    -- ~3 ns clock skew - ~1 ns setup uncertainty).
    --
    -- products_reg is intentionally LEFT in DSP48s: each product is an
    -- independent 9x16-bit multiply, a perfect standalone DSP48 with no
    -- cascade needed.  Moving those to LUTs would burn ~80 LUT-based muls
    -- and *hurt* timing.
    --
    -- PIPELINE_DEPTH, alu_valid_output, the valid-pipeline chain and main.c
    -- are all unchanged - this is a pure synthesis-hint change.
    -- -----------------------------------------------------------------------
    attribute use_dsp : string;
    attribute use_dsp of row_sums_reg : signal is "no";
    attribute use_dsp of acc_reg      : signal is "no";
 
begin
 
    -- -----------------------------------------------------------------------
    -- Radius decode
    -- -----------------------------------------------------------------------
    radius_int <= to_integer(unsigned(radius));
 
    -- -----------------------------------------------------------------------
    -- SHIFT-REGISTER UPDATE
    -- -----------------------------------------------------------------------
    -- Row 0              : fed by pixel_new (newest image row / AXI-Stream)
    -- Row r  (1 ≤ r ≤ 8): fed by col_from_bram byte (r-1)
    --   byte 0 = bits[ 7: 0] = newest buffered row  → row 1
    --   byte 1 = bits[15: 8] = 1 row older          → row 2  … etc.
    -- -----------------------------------------------------------------------
    p_shift : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                shift_reg <= (others => (others => (others => '0')));
            elsif shift_en = '1' then
 
                -- Row 0: new pixel enters at cell 0, older data shifts right
                for c in COLS-1 downto 1 loop
                    shift_reg(0)(c) <= shift_reg(0)(c-1);
                end loop;
                shift_reg(0)(0) <= pixel_new;
 
                -- Rows 1 .. ROWS-1: each fed from the corresponding BRAM byte
                for r in 1 to ROWS-1 loop
                    for c in COLS-1 downto 1 loop
                        shift_reg(r)(c) <= shift_reg(r)(c-1);
                    end loop;
                    if (r - 1) < 2*MAX_R then
                        -- byte index into col_from_bram is (r-1)
                        shift_reg(r)(0) <=
                            col_from_bram((r-1)*8+7 downto (r-1)*8);
                    else
                        shift_reg(r)(0) <= (others => '0');
                    end if;
                end loop;
 
            end if;
        end if;
    end process p_shift;
 
    -- -----------------------------------------------------------------------
    -- MULTIPLY STAGE (fully combinatorial, unrolled over full 9×9 grid)
    --
    -- For positions outside the active (2R+1)×(2R+1) window the pixel
    -- is forced to zero so those products do not affect the accumulator.
    -- We still use the coefficient from the register file (it is irrelevant
    -- because the pixel is 0), avoiding any radius-dependent mux on the
    -- coefficient path.
    -- -----------------------------------------------------------------------
    p_mul : process(shift_reg, coeff, radius_int)
        variable pix  : signed(8 downto 0);
        variable cff  : signed(15 downto 0);
        variable fdim : integer;
    begin
        fdim := 2 * radius_int + 1;
 
        for r in 0 to ROWS-1 loop
            for c in 0 to COLS-1 loop
                cff := get_coeff(coeff, (fdim - 1 - r) * 9 + c);
                if r < fdim and c < fdim then
                    -- Zero-extend unsigned pixel to signed 9-bit
                    pix := signed('0' & shift_reg(r)(fdim - 1 - c));
                else
                    pix := (others => '0');   -- outside active window
                end if;
                products(r, c) <= pix * cff;
            end loop;
        end loop;
    end process p_mul;
 
    -- -----------------------------------------------------------------------
    -- MULTIPLY STAGE REGISTER
    -- -----------------------------------------------------------------------
    p_mul_reg : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                products_reg <= (others => (others => (others => '0')));
                valid_mul    <= '0';
                mode_mul     <= '0';
            elsif shift_en = '1' then
                -- shift_en is the global clock-enable for the whole ALU pipeline.
                -- When shift_en='0' (stall) this register HOLDS, so valid_mul and
                -- products_reg freeze instead of draining.  In the original code
                -- valid_mul<=shift_en meant valid_mul went to '0' as soon as the
                -- stall began, draining the downstream stages.  Here a pixel always
                -- advances on an enabled cycle, so valid_mul is simply '1'.
                products_reg <= products;
                valid_mul    <= '1';
                mode_mul     <= mode;
            end if;
        end if;
    end process p_mul_reg;
 
    -- -----------------------------------------------------------------------
    -- ACCUMULATOR: parallel row-sum registration + serial addition
    --
    -- Cycle 0 (p_rowsum_reg, triggered by valid_mul):
    --   Compute all ROWS row sums simultaneously from products_reg.
    --   Each row sum = 9 × 25-bit additions = 29-bit result.
    --   Store into row_sums_reg(0..8). No runtime MUX, no counter fanout.
    --   These are pure LUT/carry adder trees - no DSP (products_reg already
    --   registered; Vivado won't infer DSP for add-only trees on reg outputs).
    --
    -- Cycles 1..9 (p_acc_serial):
    --   Simple 4-bit counter selects from row_sums_reg (9 × 29-bit values).
    --   Counter fanout ≈ 9 × 29 = 261 bits but only 4 bits wide → 4 registers,
    --   each driving ~65 LUTs → Vivado replicates naturally.
    --   Actually: row_sums_reg values are narrow (29-bit) so total MUX is small.
    --   acc_reg += row_sums_reg(cnt) each cycle.
    --
    -- PIPELINE_DEPTH = 5: mul_reg(1) + rowsum(1) + acc_parallel(1) + stage1(1) + stage2(1)
    -- -----------------------------------------------------------------------
 
    -- Parallel row-sum register: fires once per pixel, computes 9 row sums
    -- -----------------------------------------------------------------------
    -- TIMING FIX (FCLK0 = 90 MHz): the original code accumulated 9 column
    -- products per row using "for c in 0 to COLS-1 loop rs := rs + ...;"
    -- which Vivado synthesizes as an 8-deep CHAIN of 29-bit carry-propagate
    -- adders per row (sequential variable accumulation -> ripple chain,
    -- NOT a balanced tree). At Zynq-7 -1 speed grade each 29-bit carry
    -- chain is ~1.5-2.0 ns of LUT/carry logic, so 8 deep ~ 12-16 ns
    -- before routing -> max ~60-65 MHz. This was the row_sum_reg critical
    -- path reported by timing.
    --
    -- Fix: write the sum as an explicit balanced binary tree of depth
    -- ceil(log2(9)) = 4 levels instead of depth 8. Vivado respects the
    -- explicit parenthesisation, producing a balanced adder tree whose
    -- critical path is 4 adders deep (~6-8 ns), comfortably inside the
    -- 11.1 ns budget at 90 MHz.
    --
    -- NO PIPELINE STAGE ADDED: this is still 1 clock cycle from
    -- products_reg (registered at T) to row_sums_reg (registered at T+1).
    -- The change is purely the combinational adder topology inside the
    -- clocked process. PIPELINE_DEPTH, alu_valid_output, valid-pipeline
    -- chain, and main.c are all unaffected.
    -- -----------------------------------------------------------------------
    p_rowsum_reg : process(clk)
        variable p0, p1, p2, p3, p4, p5, p6, p7, p8 : signed(28 downto 0);
        variable s01, s23, s45, s67                  : signed(28 downto 0);
        variable s0123, s4567                        : signed(28 downto 0);
        variable s01234567                           : signed(28 downto 0);
    begin
        if rising_edge(clk) then
            if rst = '1' then
                row_sums_reg <= (others => (others => '0'));
                valid_rowsum <= '0';
                mode_rowsum  <= '0';
            elsif shift_en = '1' then
                -- Clock-enabled by shift_en: holds during stall.
                valid_rowsum <= '0';
                if valid_mul = '1' then
                    for r in 0 to ROWS-1 loop
                        -- Resize all 9 products to 29-bit signed once,
                        -- then form a 4-level balanced binary tree.
                        p0 := resize(products_reg(r, 0), 29);
                        p1 := resize(products_reg(r, 1), 29);
                        p2 := resize(products_reg(r, 2), 29);
                        p3 := resize(products_reg(r, 3), 29);
                        p4 := resize(products_reg(r, 4), 29);
                        p5 := resize(products_reg(r, 5), 29);
                        p6 := resize(products_reg(r, 6), 29);
                        p7 := resize(products_reg(r, 7), 29);
                        p8 := resize(products_reg(r, 8), 29);

                        -- Level 1 (4 pair sums, p8 stands alone)
                        s01 := p0 + p1;
                        s23 := p2 + p3;
                        s45 := p4 + p5;
                        s67 := p6 + p7;

                        -- Level 2 (2 quad sums, p8 still alone)
                        s0123   := s01 + s23;
                        s4567   := s45 + s67;

                        -- Level 3 (1 octet sum, p8 still alone)
                        s01234567 := s0123 + s4567;

                        -- Level 4 (octet + p8 -> full 9-input row sum)
                        row_sums_reg(r) <= s01234567 + p8;
                    end loop;
                    valid_rowsum <= '1';
                    mode_rowsum  <= mode_mul;
                end if;
            end if;
        end if;
    end process p_rowsum_reg;
 
    -- Parallel accumulator: sum all 9 row sums in one cycle
    -- This is a single registered stage - Vivado may infer DSP48 cascade here.
    -- If timing fails, add attribute use_dsp of acc_reg : signal is "no".
    -- -----------------------------------------------------------------------
    -- TIMING FIX (FCLK0 = 90 MHz): same problem as p_rowsum_reg. The
    -- original "for r in 0 to ROWS-1 loop acc_v := acc_v + ..." produced
    -- an 8-deep chain of 33-bit carry-propagate adders feeding acc_reg.
    -- This was the acc_reg critical path reported by timing.
    --
    -- Fix: rewrite the addition as a 4-level balanced binary tree.
    --
    -- NO PIPELINE STAGE ADDED: this is still 1 clock cycle from
    -- row_sums_reg (registered at T) to acc_reg (registered at T+1).
    -- The change is purely the combinational adder topology inside the
    -- clocked process. PIPELINE_DEPTH, alu_valid_output, valid-pipeline
    -- chain, and main.c are all unaffected.
    -- -----------------------------------------------------------------------
    p_acc_parallel : process(clk)
        variable r0, r1, r2, r3, r4, r5, r6, r7, r8 : signed(ACC_W-1 downto 0);
        variable a01, a23, a45, a67                  : signed(ACC_W-1 downto 0);
        variable a0123, a4567                        : signed(ACC_W-1 downto 0);
        variable a01234567                           : signed(ACC_W-1 downto 0);
    begin
        if rising_edge(clk) then
            if rst = '1' then
                acc_reg   <= (others => '0');
                valid_acc <= '0';
                mode_acc  <= '0';
            elsif shift_en = '1' then
                -- Clock-enabled by shift_en: holds during stall.
                valid_acc <= '0';
                if valid_rowsum = '1' then
                    -- Resize all 9 row sums to ACC_W bits, then 4-level tree.
                    r0 := resize(row_sums_reg(0), ACC_W);
                    r1 := resize(row_sums_reg(1), ACC_W);
                    r2 := resize(row_sums_reg(2), ACC_W);
                    r3 := resize(row_sums_reg(3), ACC_W);
                    r4 := resize(row_sums_reg(4), ACC_W);
                    r5 := resize(row_sums_reg(5), ACC_W);
                    r6 := resize(row_sums_reg(6), ACC_W);
                    r7 := resize(row_sums_reg(7), ACC_W);
                    r8 := resize(row_sums_reg(8), ACC_W);

                    -- Level 1 (4 pair sums, r8 alone)
                    a01 := r0 + r1;
                    a23 := r2 + r3;
                    a45 := r4 + r5;
                    a67 := r6 + r7;

                    -- Level 2 (2 quad sums, r8 alone)
                    a0123 := a01 + a23;
                    a4567 := a45 + a67;

                    -- Level 3 (1 octet sum, r8 alone)
                    a01234567 := a0123 + a4567;

                    -- Level 4 (octet + r8 -> full 9-input accumulator)
                    acc_reg   <= a01234567 + r8;
                    valid_acc <= '1';
                    mode_acc  <= mode_rowsum;
                end if;
            end if;
        end if;
    end process p_acc_parallel;
 
    -- -----------------------------------------------------------------------
    -- PIPELINE STAGE 1 REGISTER: acc_reg × coeff_scale (pure DSP path)
    -- -----------------------------------------------------------------------
    p_stage1 : process(clk)
        variable scale_s : signed(16 downto 0);
        variable prod    : signed(SCALE_W-1 downto 0);
    begin
        if rising_edge(clk) then
            if rst = '1' then
                scaled_reg <= (others => '0');
                mode_reg1  <= '0';
                valid_reg1 <= '0';
            elsif shift_en = '1' then
                -- Clock-enabled by shift_en: holds during stall.
                valid_reg1 <= '0';
                if valid_acc = '1' then
                    scale_s    := signed('0' & coeff_scale);
                    prod       := acc_reg * scale_s;
                    scaled_reg <= prod;
                    mode_reg1  <= mode_acc;
                    valid_reg1 <= '1';
                end if;
            end if;
        end if;
    end process p_stage1;
 
    -- -----------------------------------------------------------------------
    -- PIPELINE STAGE 2 REGISTER: shift, clamp, and format
    -- -----------------------------------------------------------------------
    p_stage2 : process(clk)
        variable sh8  : signed(SCALE_W-1 downto 0);
        variable sh16 : signed(SCALE_W-1 downto 0);
        variable out16 : std_logic_vector(15 downto 0);
    begin
        if rising_edge(clk) then
            if rst = '1' then
                result_reg <= (others => '0');
                valid_reg2 <= '0';
            elsif shift_en = '1' then
                -- Clock-enabled by shift_en: result_reg and valid_reg2 HOLD during
                -- a stall, preserving the finished pixel until the DMA accepts it.
                valid_reg2 <= '0';
                if valid_reg1 = '1' then

                    if mode_reg1 = '0' then
                        -- ---- uint8 ----
                        sh8 := shr(scaled_reg, FRAC_COEFF + FRAC_SCALE);
                        if sh8 > to_signed(255, SCALE_W) then
                            out16 := (others => '0');
                            out16(7 downto 0) := x"FF";
                        elsif sh8 < to_signed(0, SCALE_W) then
                            out16 := (others => '0');
                        else
                            out16 := (others => '0');
                            out16(7 downto 0) := std_logic_vector(sh8(7 downto 0));
                        end if;
                    else
                        -- ---- Q9.7 signed 16-bit ----
                        sh16 := shr(scaled_reg, FRAC_COEFF + FRAC_SCALE - 7);
                        if sh16 > to_signed(32767, SCALE_W) then
                            out16 := std_logic_vector(to_signed(32767, 16));
                        elsif sh16 < to_signed(-32768, SCALE_W) then
                            out16 := std_logic_vector(to_signed(-32768, 16));
                        else
                            out16 := std_logic_vector(sh16(15 downto 0));
                        end if;
                    end if;

                    result_reg <= out16;
                    valid_reg2 <= '1';
                end if;
            end if;
        end if;
    end process p_stage2;
 
    -- -----------------------------------------------------------------------
    -- Output assignments
    -- -----------------------------------------------------------------------
    result       <= result_reg;
    result_valid <= valid_reg2;
 
end architecture Behavioral;