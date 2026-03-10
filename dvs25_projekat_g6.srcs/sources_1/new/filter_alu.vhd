-- =============================================================================
-- filter_alu.vhd
--
-- Filter Arithmetic Unit (ALU) for the acc_image_filter accelerator.
--
-- -----------------------------------------------------------------------
-- FIGURES REFERENCED
-- -----------------------------------------------------------------------
--   Fig 4.4  - shift-register organisation for a 3×3 window
--   Fig 4.12 - connection between BRAM col-output and shift registers
--   Fig 5.2  - coefficient register map (stride-9 row-major layout)
--   Table 5.1/5.2 - register definitions and fixed-point formats
--
-- -----------------------------------------------------------------------
-- DATA PATH (see Fig 4.12)
-- -----------------------------------------------------------------------
--   pixel_new      : newest pixel arriving directly from AXI-Stream.
--                    → always feeds shift-register ROW 0  (= R11 in Fig 4.4)
--
--   col_from_bram  : 64-bit word read from the BRAM line-buffer each cycle.
--                    Byte layout (produced by the BRAM entity):
--                      bits[ 7: 0]  = newest  buffered row → shift-reg ROW 1
--                      bits[15: 8]  = 1 row older          → shift-reg ROW 2
--                      bits[63:56]  = oldest  buffered row → shift-reg ROW 8
--                    (BRAM writes pixel_in to the LOWEST byte and left-shifts
--                     older data, so LSB is always the newest stored row.)
--
--   shift_reg(r)(c): 2-D array of 8-bit pixel values.
--                    c = 0 is the MOST RECENTLY shifted-in pixel (newest).
--                    c = COLS-1 is the OLDEST pixel still in the register.
--
-- -----------------------------------------------------------------------
-- COEFFICIENT MAPPING (Fig 5.2 - always stride 9, regardless of radius)
-- -----------------------------------------------------------------------
--   W[filter_row][filter_col] → flat index  =  filter_row * 9  +  filter_col
--   coeff port: coeff[(k+1)*16-1 : k*16] = Wk  (Q1.15 signed)
--
--   For a filter of radius R the active sub-grid is (2R+1) × (2R+1).
--   The mapping from window column to shift-register index is:
--     filter_col 0 (left edge of window = oldest pixel)
--       → shift_reg[r][ filter_dim - 1 ]
--     filter_col c
--       → shift_reg[r][ filter_dim - 1 - c ]
--
-- -----------------------------------------------------------------------
-- FIXED-POINT FORMATS (spec Section 5 / Section 6)
-- -----------------------------------------------------------------------
--   Coefficient W  : Q1.15  SIGNED 16-bit  (1 sign+integer bit, 15 frac bits)
--                    Range ≈ [-1, +0.99997].  Negative coefficients are used
--                    by LoG and sharpening filters.  The get_coeff() helper
--                    casts each 16-bit register slice to signed() so the
--                    multiply is a proper signed × signed operation.
--   coeff_scale    : UQ4.12 unsigned 16-bit (4 int bits, 12 frac bits)
--   Pixel          : U8  unsigned 8-bit → zero-extended to signed 9-bit
--                    (prepend '0' so the signed multiply is correct for
--                     pixel values 0..255, which are always non-negative)
--   Product        : 25-bit signed  (9-bit pixel × 16-bit coeff)
--   Row partial sum: 29-bit signed  (9 products of 25 bits, log2(9)≈3 extra)
--   Grand accum.   : ACC_W=24-bit signed (truncated products)
--   After scale    : SCALE_W=41-bit signed  (acc 24-bit × scale 17-bit,
--                    full natural product width, NO truncation)
--
--   Final right-shift to recover integer pixels:
--     MODE=0 (uint8) : right-shift by FRAC_COEFF+FRAC_SCALE=27, clamp [0,255]
--     MODE=1 (Q9.7)  : right-shift by FRAC_COEFF+FRAC_SCALE-7=20, clamp int16
--
-- -----------------------------------------------------------------------
-- LATENCY
-- -----------------------------------------------------------------------
--   The multiply / accumulate / scale path is pipelined over TWO registers:
--     Cycle N   : products and row-sums are computed combinatorially.
--     Cycle N+1 : grand accumulator and scale are registered (PIPE_STAGE_1).
--     Cycle N+2 : output format + clamp is registered (PIPE_STAGE_2 = result).
--   result_valid is high for the cycle that result contains valid data.
--
-- -----------------------------------------------------------------------
-- INTEGRATION NOTE
-- -----------------------------------------------------------------------
--   The 'coeff' port is driven directly from the acc_image_filter helper
--   registers (reg_coeff_helper), packed into a flat std_logic_vector by
--   the top-level entity:
--       coeff_flat((k+1)*16-1 downto k*16) <= reg_coeff_helper(k);
--   coeff_scale, radius and mode come from reg_coeff_scale_helper,
--   reg_radius_helper and reg_ctrl_helper(0) respectively.
-- =============================================================================

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

        -- ----------------------------------------------------------------
        -- Configuration - driven from AXI-Lite helper registers
        -- ----------------------------------------------------------------
        radius        : in  std_logic_vector(2 downto 0);          -- 0..4
        coeff         : in  std_logic_vector(81*16-1 downto 0);    -- W0..W80 packed
        coeff_scale   : in  std_logic_vector(15 downto 0);         -- UQ4.12
        mode          : in  std_logic;                             -- 0=u8, 1=Q9.7

        -- ----------------------------------------------------------------
        -- Pixel data
        -- ----------------------------------------------------------------
        pixel_new     : in  std_logic_vector(7 downto 0);             -- AXI-Stream
        col_from_bram : in  std_logic_vector(2*MAX_R*8-1 downto 0);   -- BRAM word

        -- Advance all shift registers by one column position
        shift_en      : in  std_logic;

        -- ----------------------------------------------------------------
        -- Registered output
        -- ----------------------------------------------------------------
        result        : out std_logic_vector(15 downto 0);
        result_valid  : out std_logic
    );
end entity filter_alu;


architecture Behavioral of filter_alu is

    -- -----------------------------------------------------------------------
    -- Array dimensions (fixed at elaboration time for MAX_R = 4)
    -- -----------------------------------------------------------------------
    constant ROWS        : integer := 2*MAX_R + 1;   -- 9
    constant COLS        : integer := 2*MAX_R + 1;   -- 9
    constant ACC_W       : integer := 24;  -- 9 rows × 20-bit row_sum = max ~4.7M < 2^23, 24-bit signed
    -- Scale multiply: acc (40-bit signed) × coeff_scale (17-bit non-negative signed)
    -- Natural product width = 40 + 17 = 57 bits signed. We store all bits.
    constant SCALE_W     : integer := ACC_W + 17;    -- 41

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
    -- Products are truncated to 16 bits before row-sum to prevent DSP48
    -- cascade inference (PCOUT->PCIN chains). Lower 9 bits are fractional
    -- noise; coeff_scale normalisation absorbs remaining error.
    constant PROD_TRUNC   : integer := 9;
    constant PROD_KEEP    : integer := 16;  -- 25 - 9
    type prod_array_t  is array (0 to ROWS-1, 0 to COLS-1) of signed(24 downto 0);
    type trunc_array_t is array (0 to ROWS-1, 0 to COLS-1) of signed(PROD_KEEP-1 downto 0);
    signal products       : prod_array_t;
    signal products_reg   : prod_array_t;
    signal products_trunc : trunc_array_t;

    -- Valid/mode pipeline
    signal valid_mul     : std_logic := '0';
    signal mode_mul      : std_logic := '0';

    -- Accumulator signals
    -- 9 x 16-bit = max 9*(2^15-1)=294903, needs 19 bits signed; use 20 for margin
    type rowsum_array_t is array (0 to ROWS-1) of signed(19 downto 0);
    signal row_sums_reg  : rowsum_array_t := (others => (others => '0'));
    signal valid_rowsum  : std_logic := '0';
    signal mode_rowsum   : std_logic := '0';
    signal acc_cnt       : integer range 0 to ROWS := 0;
    signal acc_running   : std_logic := '0';
    signal acc_reg       : signed(ACC_W-1 downto 0) := (others => '0');
    signal valid_acc     : std_logic := '0';
    signal mode_acc      : std_logic := '0';

    -- -----------------------------------------------------------------------
    -- Pipeline stage 1 register: acc after coeff_scale multiply (56 bits)
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
                cff := get_coeff(coeff, r*9 + c);
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
            else
                products_reg <= products;
                valid_mul    <= shift_en;
                mode_mul     <= mode;
            end if;
        end if;
    end process p_mul_reg;

    -- Truncate products_reg to PROD_KEEP bits (combinatorial, no register).
    -- 16-bit elements prevent Vivado DSP48 cascade inference in row-sum adders.
    gen_trunc: for r in 0 to ROWS-1 generate
        gen_trunc_c: for c in 0 to COLS-1 generate
            products_trunc(r, c) <= products_reg(r, c)(24 downto PROD_TRUNC);
        end generate;
    end generate;

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
    -- PIPELINE_DEPTH = 13 (unchanged): mul_reg(1) + rowsum(1) + serial_add(9)
    --                                  + stage1(1) + stage2(1)
    -- -----------------------------------------------------------------------

    -- Parallel row-sum register: fires once per pixel, computes 9 row sums
    p_rowsum_reg : process(clk)
        variable rs : signed(19 downto 0);
    begin
        if rising_edge(clk) then
            if rst = '1' then
                row_sums_reg <= (others => (others => '0'));
                valid_rowsum <= '0';
                mode_rowsum  <= '0';
            else
                valid_rowsum <= '0';
                if valid_mul = '1' then
                    for r in 0 to ROWS-1 loop
                        rs := (others => '0');
                        for c in 0 to COLS-1 loop
                            rs := rs + resize(products_trunc(r, c), 20);
                        end loop;
                        row_sums_reg(r) <= rs;
                    end loop;
                    valid_rowsum <= '1';
                    mode_rowsum  <= mode_mul;
                end if;
            end if;
        end if;
    end process p_rowsum_reg;

    -- Serial accumulator: add one row sum per cycle (small MUX over 9×29-bit values)
    p_acc_serial : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                acc_cnt     <= 0;
                acc_running <= '0';
                acc_reg     <= (others => '0');
                valid_acc   <= '0';
                mode_acc    <= '0';
            else
                valid_acc <= '0';

                if valid_rowsum = '1' then
                    acc_reg     <= (others => '0');
                    acc_cnt     <= 0;
                    acc_running <= '1';
                end if;

                if acc_running = '1' then
                    acc_reg <= acc_reg + resize(row_sums_reg(acc_cnt), ACC_W);
                    if acc_cnt = ROWS - 1 then
                        acc_running <= '0';
                        valid_acc   <= '1';
                        mode_acc    <= mode_rowsum;
                    else
                        acc_cnt <= acc_cnt + 1;
                    end if;
                end if;
            end if;
        end if;
    end process p_acc_serial;

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
            elsif valid_acc = '1' then
                scale_s    := signed('0' & coeff_scale);
                prod       := acc_reg * scale_s;
                scaled_reg <= prod;
                mode_reg1  <= mode_acc;
                valid_reg1 <= '1';
            else
                valid_reg1 <= '0';
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
            elsif valid_reg1 = '1' then

                if mode_reg1 = '0' then
                    -- ---- uint8 ----
                    -- Right-shift by FRAC_COEFF + FRAC_SCALE = 27
                    sh8 := shr(scaled_reg, FRAC_COEFF + FRAC_SCALE);

                    if sh8 > to_signed(255, SCALE_W) then
                        out16 := (others => '0');
                        out16(7 downto 0) := x"FF";
                    elsif sh8 < to_signed(0, SCALE_W) then
                        out16 := (others => '0');
                    else
                        -- Safe: bounds already checked, take low 8 bits
                        out16 := (others => '0');
                        out16(7 downto 0) := std_logic_vector(sh8(7 downto 0));
                    end if;

                else
                    -- ---- Q9.7 signed 16-bit ----
                    -- Right-shift by FRAC_COEFF + FRAC_SCALE - 7 = 20
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
            else
                valid_reg2 <= '0';
            end if;
        end if;
    end process p_stage2;

    -- -----------------------------------------------------------------------
    -- Output assignments
    -- -----------------------------------------------------------------------
    result       <= result_reg;
    result_valid <= valid_reg2;

end architecture Behavioral;