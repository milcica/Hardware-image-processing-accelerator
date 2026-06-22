library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bram_linebuf is
    generic (
        MAX_R         : integer := 4;
        IMG_WIDTH_MAX : integer := 1024  -- widened from 512 to support up to 1024-px images
    );
    port (
        clk       : in  std_logic;
        rst       : in  std_logic;
        rd_addr   : in  std_logic_vector(9 downto 0);   -- 10-bit: covers 0..1023
        wr_addr   : in  std_logic_vector(9 downto 0);   -- (was 8 downto 0 = max 511)
        pixel_in  : in  std_logic_vector(7 downto 0);
        wr_enable : in  std_logic;
        rd_enable : in  std_logic;
        -- Pipeline-advance gate for the read output register.
        -- When '0' (stall), col_out HOLDS so the 1-cycle read-skew is preserved.
        -- Drive with combinatorial: (NOT tvalid_fifo(PD-1)) OR m_axis_tready.
        rd_advance : in  std_logic;
        -- 2*MAX_R bytes packed; byte 0 (bits 7:0) = newest buffered row
        col_out   : out std_logic_vector(2*MAX_R*8-1 downto 0)
    );
end entity bram_linebuf;

architecture Behavioral of bram_linebuf is
    constant WORD_WIDTH : integer := 2 * MAX_R * 8;   -- 64 bits for MAX_R=4
    type bram_t is array (0 to IMG_WIDTH_MAX-1)
        of std_logic_vector(WORD_WIDTH-1 downto 0);
    signal mem : bram_t := (others => (others => '0'));
begin
    process(clk)
        variable word    : std_logic_vector(WORD_WIDTH-1 downto 0);
        variable rd_idx  : integer range 0 to IMG_WIDTH_MAX-1;
        variable wr_idx  : integer range 0 to IMG_WIDTH_MAX-1;
    begin
        if rising_edge(clk) then
            if rst = '1' then
                col_out <= (others => '0');
            else
                rd_idx := to_integer(unsigned(rd_addr));
                wr_idx := to_integer(unsigned(wr_addr));

                -- READ: only advance col_out when the pipeline is advancing.
                -- When rd_advance='0' (stall) col_out holds, preserving the 1-cycle
                -- read-address skew so resume sees the correct buffered-row column.
                if rd_enable = '1' and rd_advance = '1' then
                    col_out <= mem(rd_idx);
                end if;

                -- WRITE AND SHIFT LEFT
                if wr_enable = '1' then
                    word := mem(wr_idx);
                    word := word(WORD_WIDTH-9 downto 0) & pixel_in;
                    mem(wr_idx) <= word;
                end if;
            end if;
        end if;
    end process;
end architecture Behavioral;