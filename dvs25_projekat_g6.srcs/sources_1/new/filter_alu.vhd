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
    
    -- VIVADO DEBUG ATTRIBUTES
    attribute mark_debug : string;

    attribute mark_debug of shift_en      : signal is "true";
    attribute mark_debug of pixel_new     : signal is "true";
    
    attribute mark_debug of valid_mul     : signal is "true";
    attribute mark_debug of valid_rowsum  : signal is "true";
    attribute mark_debug of valid_acc     : signal is "true";
    attribute mark_debug of valid_reg1    : signal is "true";
    attribute mark_debug of valid_reg2    : signal is "true";

    attribute mark_debug of acc_reg       : signal is "true";
    attribute mark_debug of scaled_reg    : signal is "true";   
    attribute mark_debug of result_reg    : signal is "true";
 
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
    p_rowsum_reg : process(clk)
        variable rs : signed(28 downto 0);
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
                        rs := (others => '0');
                        for c in 0 to COLS-1 loop
                            rs := rs + resize(products_reg(r, c), 29);
                        end loop;
                        row_sums_reg(r) <= rs;
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
    p_acc_parallel : process(clk)
        variable acc_v : signed(ACC_W-1 downto 0);
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
                    acc_v := (others => '0');
                    for r in 0 to ROWS-1 loop
                        acc_v := acc_v + resize(row_sums_reg(r), ACC_W);
                    end loop;
                    acc_reg   <= acc_v;
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