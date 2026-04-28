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
           		
           -------- AXI4-Lite interface -------
	       --  AXI4-Lite Write address channel
		   s_axi_ctrl_awaddr  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		   -- protection type (priviledge and security of transaction)
		   s_axi_ctrl_awprot  : in std_logic_vector(2 downto 0);
		   s_axi_ctrl_awvalid : in std_logic;
		   s_axi_ctrl_awready : out std_logic;
		
		   --  AXI4-Lite Write data channel
		   s_axi_ctrl_wdata  : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		   s_axi_ctrl_wstrb  : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		   s_axi_ctrl_wvalid : in std_logic;
		   s_axi_ctrl_wready : out std_logic;
		
		   --  AXI4-Lite Write response channel
		   s_axi_ctrl_bresp  : out std_logic_vector(1 downto 0);
		   s_axi_ctrl_bvalid : out std_logic;
		   s_axi_ctrl_bready : in std_logic;
		
		   --  AXI4-Lite Read address related signals
		   s_axi_ctrl_araddr  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		   -- protection type (priviledge and security of transaction)
		   s_axi_ctrl_arprot  : in std_logic_vector(2 downto 0);
		   s_axi_ctrl_arvalid : in std_logic;
		   s_axi_ctrl_arready : out std_logic;
		
		   --  AXI4-Lite Read data related signals
		   s_axi_ctrl_rdata  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		   s_axi_ctrl_rvalid : out std_logic;
		   s_axi_ctrl_rready : in std_logic;
		   s_axi_ctrl_rresp  : out std_logic_vector(1 downto 0);

           -- Input AXI Stream interface
           s_axis_tdata : in STD_LOGIC_VECTOR (7 downto 0);
           s_axis_tvalid : in STD_LOGIC;
           s_axis_tready : out STD_LOGIC;
           s_axis_tlast : in STD_LOGIC;
           
           -- Output AXI Stream interface
           m_axis_tdata : out STD_LOGIC_VECTOR (15 downto 0);
           m_axis_tvalid : out STD_LOGIC;
           m_axis_tready : in STD_LOGIC;
           m_axis_tlast : out STD_LOGIC);
end entity acc_image_filter;

architecture rtl of acc_image_filter is
    -- CONSTANTS
    
    constant ADDR_LSB       : natural := (C_S_AXI_DATA_WIDTH/32) + 1;
    constant PIPELINE_DEPTH : natural := 7;
    constant CNT_W          : integer := 9; -- log2(MAX_IMG_WIDTH=512)

    constant WA_CTRL        : integer := 0;
    constant WA_RADIUS      : integer := 1;
    constant WA_IMG_W       : integer := 2;
    constant WA_IMG_H       : integer := 3;
    constant WA_COEFF_SCALE : integer := 4;
    constant WA_COEFF_BASE  : integer := 8;
    constant WA_COEFF_LAST  : integer := 88;


    -- TYPES
  
    type coeff_array_t is array (0 to 80) of std_logic_vector(15 downto 0);
    type fsm_rd_t is (RdAddr, RdData);
    type fsm_wr_t is (WrAddr, WrData, WrStall);
    type fsm_t    is (S_IDLE, S_PROCESSING);

    
    -- AXI4-LITE REGISTER FILE
    
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
	-- Internal signals used for processing

	
    -- AXI4-Lite internal signals
    signal axi_awready : std_logic;
    signal axi_wready  : std_logic;
    signal axi_awaddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    
    signal axi_bvalid  : std_logic;
    
    signal axi_arready : std_logic;
    signal axi_rvalid  : std_logic;
    signal axi_araddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

    signal reg_waddr    : integer range 0 to 2**(C_S_AXI_ADDR_WIDTH-ADDR_LSB)-1 := 0;
    signal reg_raddr    : integer range 0 to 2**(C_S_AXI_ADDR_WIDTH-ADDR_LSB)-1 := 0;
    
    signal axi_write_ready : std_logic;
    signal axi_read_ready : std_logic;
    
    -- AXI4-Lite state machines
    type fsm_read_state_type is  (ReadAddress,  ReadData);
    type fsm_write_state_type is (WriteAddress, WriteData, WriteStalled);
    
    signal fsm_axi_read_state : fsm_read_state_type;
    signal fsm_axi_write_state : fsm_write_state_type;
    
    -- AXI Stream state machine
    signal tvalid_fifo : std_logic_vector(PIPELINE_DEPTH-1 downto 0);
    signal tlast_fifo  : std_logic_vector(PIPELINE_DEPTH-1 downto 0);
    
    signal reg_output  : std_logic_vector(15 downto 0);
    
    signal buff_tdata  : std_logic_vector(7 downto 0);
    signal buff_tvalid : std_logic;
    signal buff_tlast  : std_logic;
    signal buff_flag   : std_logic;
    
    type fsm_img_processing_state_type is (AccIdle, AccProcessing);
    
    signal fsm_img_processing_state : fsm_img_processing_state_type;
    
	signal img_row_counter : std_logic_vector(CNT_W - 1 downto 0);
	signal img_col_counter : std_logic_vector(CNT_W - 1 downto 0);
    
    signal tdata_buffer  : std_logic_vector(7 downto 0);
    signal tvalid_buffer : std_logic;
    signal tlast_buffer  : std_logic;
    
    
   -- Stage-A: registered pipeline stage between fetch and ALU
    signal sA_valid  : std_logic := '0';
    signal sA_data   : std_logic_vector(7 downto 0) := (others => '0');
    signal sA_last   : std_logic := '0';
    signal sA_out    : std_logic := '0';
    
    -- BRAM / ALU CONTROL
    signal bram_col_out  : std_logic_vector(2*MAX_FILTER_RADIUS*8-1 downto 0) := (others => '0');
    signal coeff_flat : std_logic_vector(((2*MAX_FILTER_RADIUS+1)**2) * 16 - 1 downto 0);
    signal alu_valid : std_logic;
    
    
   function flatten_coeffs(input : coeff_array_t; r : integer) return std_logic_vector is
        constant CELLS : integer := (2*r + 1)**2;
        variable res   : std_logic_vector(CELLS * 16 - 1 downto 0);
    begin
        for k in 0 to CELLS - 1 loop
            res((k+1)*16-1 downto k*16) := input(k);
        end loop;
        return res;
    end function;
    
    
     -- VIVADO DEBUG ATTRIBUTES
 
    attribute mark_debug : string;
 
    -- AXI4-Lite Control Registers
    attribute mark_debug of reg_ctrl        : signal is "true";
    attribute mark_debug of reg_radius      : signal is "true";
    attribute mark_debug of reg_img_w       : signal is "true";
    attribute mark_debug of reg_img_h       : signal is "true";
    attribute mark_debug of reg_coeff_scale : signal is "true";
 
    -- Snapshot/Held Registers (Frame Start)
    attribute mark_debug of h_ctrl          : signal is "true";
    attribute mark_debug of h_radius        : signal is "true";
    attribute mark_debug of h_img_w         : signal is "true";
    attribute mark_debug of h_img_h         : signal is "true";
 
    -- AXI-Stream Pipeline and Flow Control
    attribute mark_debug of fsm_img_processing_state : signal is "true";
    attribute mark_debug of tvalid_fifo     : signal is "true";
    attribute mark_debug of tlast_fifo      : signal is "true";
    attribute mark_debug of s_axis_tready   : signal is "true";
    attribute mark_debug of m_axis_tvalid   : signal is "true";
    attribute mark_debug of m_axis_tready   : signal is "true";
 
    -- Counter and Addressing Logic
    attribute mark_debug of img_row_counter : signal is "true";
    attribute mark_debug of img_col_counter : signal is "true";
 
    -- Data Path: BRAM and ALU Interface
    attribute mark_debug of sA_data         : signal is "true";
    attribute mark_debug of sA_out          : signal is "true";
    attribute mark_debug of bram_col_out    : signal is "true";
    attribute mark_debug of reg_output      : signal is "true";
    attribute mark_debug of alu_valid       : signal is "true";
 
    -- Stall/Buffer Mechanism
    attribute mark_debug of buff_flag       : signal is "true";
    attribute mark_debug of buff_tvalid     : signal is "true";
   
    


    
begin
    coeff_flat <= flatten_coeffs(h_coeff, MAX_FILTER_RADIUS);
    -- AXI4-Lite write registers
    process (clk) is
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
                        for k in 0 to 80 loop
                            if reg_waddr = WA_COEFF_BASE + k then
                                reg_coeff(k)(7 downto 0) <= s_axi_ctrl_wdata(7 downto 0);
                            end if;
                        end loop;
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
                        for k in 0 to 80 loop
                            if reg_waddr = WA_COEFF_BASE + k then
                                reg_coeff(k)(15 downto 8) <= s_axi_ctrl_wdata(15 downto 8);
                            end if;
                        end loop;
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    -- AXI4-Lite read registers
    p_axi_rdata : process(reg_raddr)
    begin
                s_axi_ctrl_rdata(C_S_AXI_DATA_WIDTH -1 downto 16) <= (others => '0');  -- default upper bits zero
                if reg_raddr = WA_CTRL then
                    s_axi_ctrl_rdata(15 downto 0) <= reg_ctrl;
                elsif reg_raddr = WA_RADIUS then
                    s_axi_ctrl_rdata(15 downto 0) <= reg_radius;
                elsif reg_raddr = WA_IMG_W then
                    s_axi_ctrl_rdata(15 downto 0) <= reg_img_w;
                elsif reg_raddr = WA_IMG_H then
                    s_axi_ctrl_rdata(15 downto 0) <= reg_img_h;
                elsif reg_raddr = WA_COEFF_SCALE then
                    s_axi_ctrl_rdata(15 downto 0) <= reg_coeff_scale;
                elsif reg_raddr >= WA_COEFF_BASE and reg_raddr <= WA_COEFF_LAST then
                    s_axi_ctrl_rdata(15 downto 0) <= reg_coeff(reg_raddr - WA_COEFF_BASE);
                end if;
    end process p_axi_rdata;

    s_axi_ctrl_bresp <= "00";
    s_axi_ctrl_rresp <= "00";

    -- AXI4-Lite read state machine
    process (clk) is
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                axi_arready <= '0';
                axi_rvalid  <= '0';
                fsm_axi_read_state <= ReadAddress;
            else
                case (fsm_axi_read_state) is
                    when ReadAddress =>
                        axi_arready <= '1';
                        if (axi_arready = '1' and s_axi_ctrl_arvalid = '1') then
                            axi_araddr <= s_axi_ctrl_araddr;
                            axi_arready <= '0';
                            axi_rvalid <= '1';
                            fsm_axi_read_state <= ReadData;
                        end if;
                    when ReadData =>
                        
                        if (s_axi_ctrl_rready = '1' and axi_rvalid = '1') then
                            axi_rvalid <= '0';
                            axi_arready <= '1';
                            fsm_axi_read_state <= ReadAddress;
                        end if;
                end case;
            end if;
        end if;
    end process;
    
    s_axi_ctrl_arready <= axi_arready;
    s_axi_ctrl_rvalid <= axi_rvalid;
    
    reg_raddr <= to_integer(unsigned(s_axi_ctrl_araddr(C_S_AXI_ADDR_WIDTH-1 downto ADDR_LSB))) when (s_axi_ctrl_arvalid = '1') else
                        to_integer(unsigned(s_axi_ctrl_araddr(C_S_AXI_ADDR_WIDTH-1 downto ADDR_LSB)));
    
    -- AXI4-Lite write state machine
    process (clk) is
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                axi_awready <= '0';
                axi_wready  <= '0';
                axi_bvalid  <= '0';
                fsm_axi_write_state <= WriteAddress;
            else
                case (fsm_axi_write_state) is                                              
                    when WriteAddress =>
                        axi_awready <= '1';
                        axi_wready <= '1';
                    
                        if (axi_awready = '1' and s_axi_ctrl_awvalid = '1') then
                            axi_awaddr <= s_axi_ctrl_awaddr;
                            if (axi_wready = '1' and s_axi_ctrl_wvalid = '1') then
                                axi_bvalid <= '1';
                                if (s_axi_ctrl_bready = '0') then
                                    axi_awready <= '0';
                                    axi_wready <= '0';
                                    fsm_axi_write_state <= WriteStalled;
                                end if;
                            else
                                axi_awready <= '0';
                                fsm_axi_write_state <= WriteData;
                                if (s_axi_ctrl_bready = '1' and axi_bvalid = '1') then
                                    axi_bvalid <= '0';
                                end if;
                            end if;
                        else
                            if (s_axi_ctrl_bready = '1' and axi_bvalid = '1') then
                                axi_bvalid <= '0';
                            end if;
                        end if;
                        
                    when WriteData =>
                        if (axi_wready = '1' and s_axi_ctrl_wvalid = '1') then
                            axi_bvalid <= '1';
                            if (s_axi_ctrl_bready = '0') then
                                axi_awready <= '0';
                                axi_wready <= '0';
                                fsm_axi_write_state <= WriteStalled;
                            else
                                axi_awready <= '1';
                                axi_wready <= '1';
                                fsm_axi_write_state <= WriteAddress;
                            end if;
                        else
                            if (s_axi_ctrl_bready = '1' and axi_bvalid = '1') then
                                axi_bvalid <= '0';
                            end if;
                        end if;
                        
                    when WriteStalled =>
                        if (s_axi_ctrl_bready = '1' and axi_bvalid = '1') then
                            axi_bvalid <= '0';
                            axi_awready <= '1';
                            axi_wready <= '1';
                            fsm_axi_write_state <= WriteAddress;
                        end if;
                        
                    when others =>
                        axi_awready <= '0';
                        axi_wready <= '0';
                        axi_bvalid <= '0';
                        fsm_axi_write_state <= WriteAddress;
                end case;
            end if;
        end if;
     end process;
        
    s_axi_ctrl_awready <= axi_awready;
    s_axi_ctrl_wready  <= axi_wready;
    s_axi_ctrl_bvalid <= axi_bvalid;
    
    axi_write_ready <= '1' when ((fsm_axi_write_state = WriteAddress and s_axi_ctrl_awvalid = '1' and s_axi_ctrl_wvalid = '1') or
                                 (fsm_axi_write_state = WriteData and s_axi_ctrl_wvalid = '1')) else '0';
    
    reg_waddr <= to_integer(unsigned(s_axi_ctrl_awaddr(C_S_AXI_ADDR_WIDTH-1 downto ADDR_LSB))) when (s_axi_ctrl_awvalid = '1') else
                        to_integer(unsigned(s_axi_ctrl_awaddr(C_S_AXI_ADDR_WIDTH-1 downto ADDR_LSB)));
 

 
MAIN_FSM_LOGIC: process (clk) is
        -- Internal variables for immediate calculation within the process
        variable v_on_col_edge : boolean;
        variable v_on_row_edge : boolean;
        variable v_col_u       : unsigned(CNT_W-1 downto 0);
        variable v_row_u       : unsigned(CNT_W-1 downto 0);
        variable v_rad_u       : unsigned(CNT_W-1 downto 0);
        variable v_w_u         : unsigned(CNT_W-1 downto 0);
        variable v_h_u         : unsigned(CNT_W-1 downto 0);
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
            
                tvalid_fifo   <= (others => '0');
                tlast_fifo    <= (others => '0');
                
                sA_data     <= (others => '0');
                reg_output    <= (others => '0');
                
                buff_tdata    <= (others => '0');
                buff_tvalid   <= '0';
                buff_tlast    <= '0';
                buff_flag     <= '0';
                
                h_ctrl        <= (others => '0');
                h_radius      <= (others => '0');
                h_img_w       <= (others => '0');
                h_img_h       <= (others => '0');
                h_coeff_scale <= (others => '0');
                h_coeff       <= (others => (others => '0'));
                
                fsm_img_processing_state <= AccIdle;
                
                img_row_counter <= (others => '0');
                img_col_counter <= (others => '0');
                
                tdata_buffer  <= (others => '0');
                tvalid_buffer <= '0';
                tlast_buffer  <= '0';
                sA_out        <= '0'; 

            else
                
                -- FSM IDLE
                
                if (fsm_img_processing_state = AccIdle) then
                    if (s_axis_tvalid = '1') then
                        tdata_buffer  <= s_axis_tdata;
                        tvalid_buffer <= s_axis_tvalid;
                        tlast_buffer  <= s_axis_tlast;
                        
                        fsm_img_processing_state <= AccProcessing;
                        
                        -- Latch Control Registers (Helpers)
                        h_ctrl        <= reg_ctrl;
                        h_radius      <= reg_radius;
                        h_img_w       <= reg_img_w;
                        h_img_h       <= reg_img_h;
                        h_coeff_scale <= reg_coeff_scale;
                        h_coeff       <= reg_coeff;
                        
                        -- Reset Counters for new frame
                        img_row_counter <= (others => '0');
                        img_col_counter <= (others => '0');
                    end if;
                    
              
                -- FSM PROCESSING
               
                elsif (fsm_img_processing_state = AccProcessing) then
                    
                    -- Check for End of Frame (Last pixel leaves the pipeline)
                    if (tvalid_fifo(PIPELINE_DEPTH-1) = '1' and m_axis_tready = '1' and tlast_fifo(PIPELINE_DEPTH-1) = '1') then
                        fsm_img_processing_state <= AccIdle;
                    end if;
  
                    -- PIPELINE ADVANCE CONDITION 
                    if (tvalid_fifo(PIPELINE_DEPTH-1) = '0' or m_axis_tready = '1') then
                        
                        
                        -- STAGE 0: p_fetch
                        
                        if (buff_flag = '1') then
                            -- Recover data from stall buffer
                            tdata_buffer  <= buff_tdata;
                            tvalid_buffer <= buff_tvalid;
                            tlast_buffer  <= buff_tlast;
                            buff_flag     <= '0';   
                        else
                            -- Pull fresh data from Bus
                            tdata_buffer  <= s_axis_tdata;
                            tvalid_buffer <= s_axis_tvalid;
                            tlast_buffer  <= s_axis_tlast;
                        end if;

                     
                        -- STAGE A: p_preprocess (Border Logic)
                        
                        -- Initial handoff of control signals
                        tvalid_fifo(0) <= tvalid_buffer;
                        tlast_fifo(0)  <= tlast_buffer;

                        -- Prepare boundary math variables
                        v_col_u := unsigned(img_col_counter);
                        v_row_u := unsigned(img_row_counter);
                        v_rad_u := resize(unsigned(h_radius(2 downto 0)), CNT_W);
                        v_w_u   := unsigned(h_img_w(CNT_W-1 downto 0));
                        v_h_u   := unsigned(h_img_h(CNT_W-1 downto 0));

                        -- Detect Border Zones
                        v_on_col_edge := (v_col_u < v_rad_u) or (v_col_u >= v_w_u - v_rad_u);
                        v_on_row_edge := (v_row_u < v_rad_u) or (v_row_u >= v_h_u - v_rad_u);

                        -- Check for Bypass (Highest Priority)
                        if (h_ctrl(1) = '1') then
                            sA_data <= tdata_buffer;
                            sA_out    <= '1'; -- Valid override
                        else
                            -- Process Border Modes
                            case h_ctrl(3 downto 2) is
                                when "11" => -- Constant Padding
                                    if (v_on_col_edge or v_on_row_edge) then
                                        sA_data <= h_ctrl(11 downto 4); -- Use bval
                                    else
                                        sA_data <= tdata_buffer;
                                    end if;
                                    sA_out <= '1';

                                when "00" | "01" => -- Crop Mode
                                    sA_data <= tdata_buffer;
                                    if (v_on_col_edge or v_on_row_edge) then
                                        sA_out <= '0'; -- Suppress this pixel
                                    else
                                        sA_out <= '1';
                                    end if;

                                when others => -- Replicate/Normal
                                    sA_data <= tdata_buffer;
                                    sA_out    <= '1';
                            end case;
                        end if;

                        
                        -- UPDATE COUNTERS (Based on Stage 0 Validity)
                       
                        if (tvalid_buffer = '1') then
                            if (v_col_u < v_w_u - 1) then
                                img_col_counter <= std_logic_vector(v_col_u + 1);
                            else
                                img_col_counter <= (others => '0'); 
                                if (v_row_u < v_h_u - 1) then
                                    img_row_counter <= std_logic_vector(v_row_u + 1);
                                else
                                    img_row_counter <= (others => '0');
                                end if; 
                            end if;      
                        end if;
                        
                       
                         for i in PIPELINE_DEPTH-1 downto 2 loop
                                 tvalid_fifo(i) <= tvalid_fifo(i-1);
                                 tlast_fifo(i)  <= tlast_fifo(i-1);
                                end loop;
                            
                        -- Stage 1 update: Connect the output of your border logic (sA_out) 
                        -- to the rest of the pipeline chain
                        tvalid_fifo(1) <= tvalid_fifo(0) and sA_out;
                        tlast_fifo(1)  <= tlast_fifo(0);
                      
                    else
                        
                        -- STALL CONDITION: PIPELINE IS BLOCKED
                       
                        -- Save incoming data into the buffer so it isn't lost
                        if (buff_flag = '0') then
                            buff_tdata  <= s_axis_tdata;
                            buff_tvalid <= s_axis_tvalid;
                            buff_tlast  <= s_axis_tlast;
                            buff_flag   <= '1';
                        end if;    
                    end if;
                else 
                    -- Safety catch-all for FSM
                    fsm_img_processing_state <= AccIdle;   
                end if;    
            end if;
        end if;
    end process;

    
    -- OUTPUT MAPPING
    
    m_axis_tvalid <= tvalid_fifo(PIPELINE_DEPTH-1);
    m_axis_tlast  <= tlast_fifo(PIPELINE_DEPTH-1);
    m_axis_tdata  <= reg_output;

   
    -- AXI-STREAM READY SIGNAL GENERATION
 
    process (clk) is
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                s_axis_tready <= '0';
            else
                -- Ready if the output stage is empty or moving
                if (tvalid_fifo(PIPELINE_DEPTH-1) = '0' or m_axis_tready = '1') then
                    s_axis_tready <= '1';
                else
                    s_axis_tready <= '0';
                end if;
            end if;
        end if;
    end process;
    
    -- BRAM INSTANCE

    u_bram : entity xil_defaultlib.bram_linebuf(Behavioral)
        generic map (
            MAX_R         => MAX_FILTER_RADIUS,
            IMG_WIDTH_MAX => MAX_IMG_WIDTH
        )
        port map (
            clk       => clk,
            rst       => reset,
            -- Read current column to get the neighborhood column 
            rd_addr   => img_col_counter(8 downto 0),
            wr_addr   => img_col_counter(8 downto 0),
            pixel_in  => sA_data,
            wr_enable => tvalid_buffer,
            rd_enable => tvalid_buffer,
            col_out   => bram_col_out
        );

    -- ALU INSTANCE
    
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
            -- pixel_new is the ROW 0 input 
            pixel_new     => sA_data,
            -- col_from_bram contains ROWS 1 to 8 (buffered rows)
            col_from_bram => bram_col_out,
            -- Shift internal window only when new data is valid
            shift_en      => tvalid_buffer,
            result        => reg_output,
            result_valid  => alu_valid 
        );
    
   
end architecture rtl; -- of acc_neg_image