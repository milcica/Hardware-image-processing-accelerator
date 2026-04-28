// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Apr 28 15:11:57 2026
// Host        : yoga running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/kowalski/Desktop/ETF/CETVRTA-GODINA/DVS/dvs25_projekat_g6/dvs25_projekat_g6.gen/sources_1/bd/image_filter/ip/image_filter_acc_image_filter_0_2/image_filter_acc_image_filter_0_2_sim_netlist.v
// Design      : image_filter_acc_image_filter_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "image_filter_acc_image_filter_0_2,acc_image_filter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "acc_image_filter,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module image_filter_acc_image_filter_0_2
   (clk,
    reset,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awprot,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wstrb,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arprot,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rresp,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis:s_axi_ctrl, ASSOCIATED_RESET reset, FREQ_HZ 90909088, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN image_filter_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_mode = "slave reset" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *) (* x_interface_mode = "slave s_axi_ctrl" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 90909088, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN image_filter_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [9:0]s_axi_ctrl_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT" *) input [2:0]s_axi_ctrl_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *) input s_axi_ctrl_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *) output s_axi_ctrl_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB" *) input [3:0]s_axi_ctrl_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *) input s_axi_ctrl_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *) output s_axi_ctrl_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *) output s_axi_ctrl_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *) input s_axi_ctrl_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *) input [9:0]s_axi_ctrl_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT" *) input [2:0]s_axi_ctrl_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *) input s_axi_ctrl_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *) output s_axi_ctrl_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *) output s_axi_ctrl_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *) input s_axi_ctrl_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *) output [1:0]s_axi_ctrl_rresp;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_mode = "slave s_axis" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 90909088, PHASE 0.0, CLK_DOMAIN image_filter_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_mode = "master m_axis" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 90909088, PHASE 0.0, CLK_DOMAIN image_filter_processing_system7_0_1_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [15:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;

  wire \<const0> ;
  wire clk;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire reset;
  wire [9:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [9:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_bvalid;
  wire [15:0]\^s_axi_ctrl_rdata ;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire [3:0]s_axi_ctrl_wstrb;
  wire s_axi_ctrl_wvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:16]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;

  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15:0] = \^s_axi_ctrl_rdata [15:0];
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_ADDR_WIDTH = "10" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_FILTER_RADIUS = "4" *) 
  (* MAX_IMG_WIDTH = "512" *) 
  image_filter_acc_image_filter_0_2_acc_image_filter U0
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .reset(reset),
        .s_axi_ctrl_araddr({s_axi_ctrl_araddr[9:2],1'b0,1'b0}),
        .s_axi_ctrl_arprot({1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr({s_axi_ctrl_awaddr[9:2],1'b0,1'b0}),
        .s_axi_ctrl_awprot({1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata({NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:16],\^s_axi_ctrl_rdata }),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_ctrl_wdata[15:0]}),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wstrb({1'b0,1'b0,s_axi_ctrl_wstrb[1:0]}),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_S_AXI_ADDR_WIDTH = "10" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* MAX_FILTER_RADIUS = "4" *) 
(* MAX_IMG_WIDTH = "512" *) (* ORIG_REF_NAME = "acc_image_filter" *) (* keep_hierarchy = "soft" *) 
module image_filter_acc_image_filter_0_2_acc_image_filter
   (clk,
    reset,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awprot,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wstrb,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arprot,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rresp,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast);
  input clk;
  input reset;
  input [9:0]s_axi_ctrl_awaddr;
  input [2:0]s_axi_ctrl_awprot;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_wdata;
  input [3:0]s_axi_ctrl_wstrb;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [9:0]s_axi_ctrl_araddr;
  input [2:0]s_axi_ctrl_arprot;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [1:0]s_axi_ctrl_rresp;
  input [7:0]s_axis_tdata;
  input s_axis_tvalid;
  (* mark_debug = "true" *) output s_axis_tready;
  input s_axis_tlast;
  output [15:0]m_axis_tdata;
  (* mark_debug = "true" *) output m_axis_tvalid;
  (* mark_debug = "true" *) input m_axis_tready;
  output m_axis_tlast;

  wire \<const0> ;
  wire \FSM_onehot_fsm_axi_write_state[0]_i_1_n_0 ;
  wire \FSM_onehot_fsm_axi_write_state[1]_i_1_n_0 ;
  wire \FSM_onehot_fsm_axi_write_state[2]_i_1_n_0 ;
  wire \FSM_onehot_fsm_axi_write_state[2]_i_2_n_0 ;
  wire \FSM_onehot_fsm_axi_write_state[2]_i_3_n_0 ;
  wire \FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ;
  wire \FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ;
  wire \FSM_onehot_fsm_axi_write_state_reg_n_0_[2] ;
  (* MARK_DEBUG *) wire alu_valid;
  wire axi_arready_i_1_n_0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_i_3_n_0;
  wire axi_awready_i_4_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_i_2_n_0;
  wire axi_bvalid_i_3_n_0;
  wire axi_bvalid_i_4_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire axi_wready_i_2_n_0;
  wire axi_write_ready;
  (* MARK_DEBUG *) wire [63:0]bram_col_out;
  (* MARK_DEBUG *) wire buff_flag;
  wire buff_flag_i_1_n_0;
  wire buff_tdata;
  wire \buff_tdata_reg_n_0_[0] ;
  wire \buff_tdata_reg_n_0_[1] ;
  wire \buff_tdata_reg_n_0_[2] ;
  wire \buff_tdata_reg_n_0_[3] ;
  wire \buff_tdata_reg_n_0_[4] ;
  wire \buff_tdata_reg_n_0_[5] ;
  wire \buff_tdata_reg_n_0_[6] ;
  wire \buff_tdata_reg_n_0_[7] ;
  wire buff_tlast_reg_n_0;
  (* MARK_DEBUG *) wire buff_tvalid;
  wire buff_tvalid_i_1_n_0;
  wire clk;
  (* MARK_DEBUG *) wire fsm_img_processing_state;
  wire fsm_img_processing_state_i_1_n_0;
  (* MARK_DEBUG *) wire [15:0]h_ctrl;
  wire \h_ctrl[15]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [15:0]h_img_h;
  wire \h_img_h[0]_i_1_n_0 ;
  wire \h_img_h[10]_i_1_n_0 ;
  wire \h_img_h[11]_i_1_n_0 ;
  wire \h_img_h[12]_i_1_n_0 ;
  wire \h_img_h[13]_i_1_n_0 ;
  wire \h_img_h[14]_i_1_n_0 ;
  wire \h_img_h[15]_i_1_n_0 ;
  wire \h_img_h[1]_i_1_n_0 ;
  wire \h_img_h[2]_i_1_n_0 ;
  wire \h_img_h[3]_i_1_n_0 ;
  wire \h_img_h[4]_i_1_n_0 ;
  wire \h_img_h[5]_i_1_n_0 ;
  wire \h_img_h[6]_i_1_n_0 ;
  wire \h_img_h[7]_i_1_n_0 ;
  wire \h_img_h[8]_i_1_n_0 ;
  wire \h_img_h[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [15:0]h_img_w;
  wire \h_img_w[0]_i_1_n_0 ;
  wire \h_img_w[10]_i_1_n_0 ;
  wire \h_img_w[11]_i_1_n_0 ;
  wire \h_img_w[12]_i_1_n_0 ;
  wire \h_img_w[13]_i_1_n_0 ;
  wire \h_img_w[14]_i_1_n_0 ;
  wire \h_img_w[15]_i_1_n_0 ;
  wire \h_img_w[1]_i_1_n_0 ;
  wire \h_img_w[2]_i_1_n_0 ;
  wire \h_img_w[3]_i_1_n_0 ;
  wire \h_img_w[4]_i_1_n_0 ;
  wire \h_img_w[5]_i_1_n_0 ;
  wire \h_img_w[6]_i_1_n_0 ;
  wire \h_img_w[7]_i_1_n_0 ;
  wire \h_img_w[8]_i_1_n_0 ;
  wire \h_img_w[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [15:0]h_radius;
  wire \h_radius[0]_i_1_n_0 ;
  wire \h_radius[10]_i_1_n_0 ;
  wire \h_radius[11]_i_1_n_0 ;
  wire \h_radius[12]_i_1_n_0 ;
  wire \h_radius[13]_i_1_n_0 ;
  wire \h_radius[14]_i_1_n_0 ;
  wire \h_radius[15]_i_1_n_0 ;
  wire \h_radius[1]_i_1_n_0 ;
  wire \h_radius[2]_i_1_n_0 ;
  wire \h_radius[3]_i_1_n_0 ;
  wire \h_radius[4]_i_1_n_0 ;
  wire \h_radius[5]_i_1_n_0 ;
  wire \h_radius[6]_i_1_n_0 ;
  wire \h_radius[7]_i_1_n_0 ;
  wire \h_radius[8]_i_1_n_0 ;
  wire \h_radius[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [8:0]img_col_counter;
  wire \img_col_counter[0]_i_1_n_0 ;
  wire \img_col_counter[1]_i_1_n_0 ;
  wire \img_col_counter[2]_i_1_n_0 ;
  wire \img_col_counter[3]_i_1_n_0 ;
  wire \img_col_counter[3]_i_2_n_0 ;
  wire \img_col_counter[4]_i_1_n_0 ;
  wire \img_col_counter[5]_i_10_n_0 ;
  wire \img_col_counter[5]_i_11_n_0 ;
  wire \img_col_counter[5]_i_12_n_0 ;
  wire \img_col_counter[5]_i_13_n_0 ;
  wire \img_col_counter[5]_i_14_n_0 ;
  wire \img_col_counter[5]_i_15_n_0 ;
  wire \img_col_counter[5]_i_1_n_0 ;
  wire \img_col_counter[5]_i_4_n_0 ;
  wire \img_col_counter[5]_i_5_n_0 ;
  wire \img_col_counter[5]_i_6_n_0 ;
  wire \img_col_counter[5]_i_7_n_0 ;
  wire \img_col_counter[5]_i_8_n_0 ;
  wire \img_col_counter[5]_i_9_n_0 ;
  wire \img_col_counter[6]_i_1_n_0 ;
  wire \img_col_counter[7]_i_1_n_0 ;
  wire \img_col_counter[7]_i_2_n_0 ;
  wire \img_col_counter[7]_i_3_n_0 ;
  wire \img_col_counter[8]_i_1_n_0 ;
  wire \img_col_counter[8]_i_2_n_0 ;
  wire \img_col_counter[8]_i_3_n_0 ;
  wire \img_col_counter[8]_i_4_n_0 ;
  wire \img_col_counter_reg[5]_i_3_n_0 ;
  wire \img_col_counter_reg[5]_i_3_n_1 ;
  wire \img_col_counter_reg[5]_i_3_n_2 ;
  wire \img_col_counter_reg[5]_i_3_n_3 ;
  (* MARK_DEBUG *) wire [8:0]img_row_counter;
  wire img_row_counter1;
  wire img_row_counter10_in;
  wire \img_row_counter[0]_i_1_n_0 ;
  wire \img_row_counter[1]_i_1_n_0 ;
  wire \img_row_counter[2]_i_1_n_0 ;
  wire \img_row_counter[2]_i_2_n_0 ;
  wire \img_row_counter[3]_i_1_n_0 ;
  wire \img_row_counter[4]_i_1_n_0 ;
  wire \img_row_counter[5]_i_1_n_0 ;
  wire \img_row_counter[6]_i_1_n_0 ;
  wire \img_row_counter[6]_i_2_n_0 ;
  wire \img_row_counter[6]_i_3_n_0 ;
  wire \img_row_counter[7]_i_1_n_0 ;
  wire \img_row_counter[7]_i_2_n_0 ;
  wire \img_row_counter[8]_i_10_n_0 ;
  wire \img_row_counter[8]_i_11_n_0 ;
  wire \img_row_counter[8]_i_12_n_0 ;
  wire \img_row_counter[8]_i_13_n_0 ;
  wire \img_row_counter[8]_i_14_n_0 ;
  wire \img_row_counter[8]_i_15_n_0 ;
  wire \img_row_counter[8]_i_16_n_0 ;
  wire \img_row_counter[8]_i_1_n_0 ;
  wire \img_row_counter[8]_i_2_n_0 ;
  wire \img_row_counter[8]_i_5_n_0 ;
  wire \img_row_counter[8]_i_6_n_0 ;
  wire \img_row_counter[8]_i_7_n_0 ;
  wire \img_row_counter[8]_i_8_n_0 ;
  wire \img_row_counter[8]_i_9_n_0 ;
  wire \img_row_counter_reg[8]_i_4_n_0 ;
  wire \img_row_counter_reg[8]_i_4_n_1 ;
  wire \img_row_counter_reg[8]_i_4_n_2 ;
  wire \img_row_counter_reg[8]_i_4_n_3 ;
  (* MARK_DEBUG *) wire m_axis_tready;
  (* MARK_DEBUG *) wire m_axis_tvalid;
  wire [15:0]p_0_in1_in;
  wire [7:0]p_1_in__0;
  wire [15:15]p_1_out;
  wire [15:0]p_6_out;
  wire \reg_coeff[0][15]_i_1_n_0 ;
  wire \reg_coeff[0][15]_i_2_n_0 ;
  wire \reg_coeff[0][15]_i_3_n_0 ;
  wire \reg_coeff[0][15]_i_4_n_0 ;
  wire \reg_coeff[0][7]_i_1_n_0 ;
  wire \reg_coeff[0][7]_i_2_n_0 ;
  wire \reg_coeff[10][15]_i_1_n_0 ;
  wire \reg_coeff[10][7]_i_1_n_0 ;
  wire \reg_coeff[11][15]_i_1_n_0 ;
  wire \reg_coeff[11][15]_i_2_n_0 ;
  wire \reg_coeff[11][7]_i_1_n_0 ;
  wire \reg_coeff[12][15]_i_1_n_0 ;
  wire \reg_coeff[12][15]_i_2_n_0 ;
  wire \reg_coeff[12][7]_i_1_n_0 ;
  wire \reg_coeff[13][15]_i_1_n_0 ;
  wire \reg_coeff[13][7]_i_1_n_0 ;
  wire \reg_coeff[14][15]_i_1_n_0 ;
  wire \reg_coeff[14][15]_i_2_n_0 ;
  wire \reg_coeff[14][7]_i_1_n_0 ;
  wire \reg_coeff[15][15]_i_1_n_0 ;
  wire \reg_coeff[15][15]_i_2_n_0 ;
  wire \reg_coeff[15][7]_i_1_n_0 ;
  wire \reg_coeff[16][15]_i_1_n_0 ;
  wire \reg_coeff[16][15]_i_2_n_0 ;
  wire \reg_coeff[16][7]_i_1_n_0 ;
  wire \reg_coeff[17][15]_i_1_n_0 ;
  wire \reg_coeff[17][7]_i_1_n_0 ;
  wire \reg_coeff[18][15]_i_1_n_0 ;
  wire \reg_coeff[18][15]_i_2_n_0 ;
  wire \reg_coeff[18][7]_i_1_n_0 ;
  wire \reg_coeff[19][15]_i_1_n_0 ;
  wire \reg_coeff[19][7]_i_1_n_0 ;
  wire \reg_coeff[1][15]_i_1_n_0 ;
  wire \reg_coeff[1][15]_i_2_n_0 ;
  wire \reg_coeff[1][15]_i_3_n_0 ;
  wire \reg_coeff[1][15]_i_4_n_0 ;
  wire \reg_coeff[1][7]_i_1_n_0 ;
  wire \reg_coeff[20][15]_i_1_n_0 ;
  wire \reg_coeff[20][7]_i_1_n_0 ;
  wire \reg_coeff[21][15]_i_1_n_0 ;
  wire \reg_coeff[21][15]_i_2_n_0 ;
  wire \reg_coeff[21][15]_i_3_n_0 ;
  wire \reg_coeff[21][15]_i_4_n_0 ;
  wire \reg_coeff[21][7]_i_1_n_0 ;
  wire \reg_coeff[22][15]_i_1_n_0 ;
  wire \reg_coeff[22][15]_i_2_n_0 ;
  wire \reg_coeff[22][15]_i_3_n_0 ;
  wire \reg_coeff[22][7]_i_1_n_0 ;
  wire \reg_coeff[23][15]_i_1_n_0 ;
  wire \reg_coeff[23][7]_i_1_n_0 ;
  wire \reg_coeff[24][15]_i_1_n_0 ;
  wire \reg_coeff[24][15]_i_2_n_0 ;
  wire \reg_coeff[24][7]_i_1_n_0 ;
  wire \reg_coeff[25][15]_i_1_n_0 ;
  wire \reg_coeff[25][15]_i_2_n_0 ;
  wire \reg_coeff[25][7]_i_1_n_0 ;
  wire \reg_coeff[26][15]_i_1_n_0 ;
  wire \reg_coeff[26][15]_i_2_n_0 ;
  wire \reg_coeff[26][7]_i_1_n_0 ;
  wire \reg_coeff[27][15]_i_1_n_0 ;
  wire \reg_coeff[27][15]_i_2_n_0 ;
  wire \reg_coeff[27][15]_i_3_n_0 ;
  wire \reg_coeff[27][7]_i_1_n_0 ;
  wire \reg_coeff[28][15]_i_1_n_0 ;
  wire \reg_coeff[28][7]_i_1_n_0 ;
  wire \reg_coeff[29][15]_i_1_n_0 ;
  wire \reg_coeff[29][15]_i_2_n_0 ;
  wire \reg_coeff[29][7]_i_1_n_0 ;
  wire \reg_coeff[2][15]_i_1_n_0 ;
  wire \reg_coeff[2][15]_i_2_n_0 ;
  wire \reg_coeff[2][15]_i_3_n_0 ;
  wire \reg_coeff[2][7]_i_1_n_0 ;
  wire \reg_coeff[30][15]_i_1_n_0 ;
  wire \reg_coeff[30][15]_i_2_n_0 ;
  wire \reg_coeff[30][7]_i_1_n_0 ;
  wire \reg_coeff[31][15]_i_1_n_0 ;
  wire \reg_coeff[31][15]_i_2_n_0 ;
  wire \reg_coeff[31][15]_i_3_n_0 ;
  wire \reg_coeff[31][7]_i_1_n_0 ;
  wire \reg_coeff[32][15]_i_1_n_0 ;
  wire \reg_coeff[32][7]_i_1_n_0 ;
  wire \reg_coeff[33][15]_i_1_n_0 ;
  wire \reg_coeff[33][15]_i_2_n_0 ;
  wire \reg_coeff[33][15]_i_3_n_0 ;
  wire \reg_coeff[33][7]_i_1_n_0 ;
  wire \reg_coeff[34][15]_i_1_n_0 ;
  wire \reg_coeff[34][7]_i_1_n_0 ;
  wire \reg_coeff[35][15]_i_1_n_0 ;
  wire \reg_coeff[35][15]_i_2_n_0 ;
  wire \reg_coeff[35][15]_i_3_n_0 ;
  wire \reg_coeff[35][7]_i_1_n_0 ;
  wire \reg_coeff[36][15]_i_1_n_0 ;
  wire \reg_coeff[36][15]_i_2_n_0 ;
  wire \reg_coeff[36][7]_i_1_n_0 ;
  wire \reg_coeff[37][15]_i_1_n_0 ;
  wire \reg_coeff[37][15]_i_2_n_0 ;
  wire \reg_coeff[37][15]_i_3_n_0 ;
  wire \reg_coeff[37][7]_i_1_n_0 ;
  wire \reg_coeff[38][15]_i_1_n_0 ;
  wire \reg_coeff[38][15]_i_2_n_0 ;
  wire \reg_coeff[38][7]_i_1_n_0 ;
  wire \reg_coeff[39][15]_i_1_n_0 ;
  wire \reg_coeff[39][7]_i_1_n_0 ;
  wire \reg_coeff[3][15]_i_1_n_0 ;
  wire \reg_coeff[3][7]_i_1_n_0 ;
  wire \reg_coeff[40][15]_i_1_n_0 ;
  wire \reg_coeff[40][7]_i_1_n_0 ;
  wire \reg_coeff[41][15]_i_1_n_0 ;
  wire \reg_coeff[41][7]_i_1_n_0 ;
  wire \reg_coeff[42][15]_i_1_n_0 ;
  wire \reg_coeff[42][7]_i_1_n_0 ;
  wire \reg_coeff[43][15]_i_1_n_0 ;
  wire \reg_coeff[43][7]_i_1_n_0 ;
  wire \reg_coeff[44][15]_i_1_n_0 ;
  wire \reg_coeff[44][7]_i_1_n_0 ;
  wire \reg_coeff[45][15]_i_1_n_0 ;
  wire \reg_coeff[45][15]_i_2_n_0 ;
  wire \reg_coeff[45][15]_i_3_n_0 ;
  wire \reg_coeff[45][7]_i_1_n_0 ;
  wire \reg_coeff[46][15]_i_1_n_0 ;
  wire \reg_coeff[46][15]_i_2_n_0 ;
  wire \reg_coeff[46][7]_i_1_n_0 ;
  wire \reg_coeff[47][15]_i_1_n_0 ;
  wire \reg_coeff[47][15]_i_2_n_0 ;
  wire \reg_coeff[47][7]_i_1_n_0 ;
  wire \reg_coeff[48][15]_i_1_n_0 ;
  wire \reg_coeff[48][7]_i_1_n_0 ;
  wire \reg_coeff[49][15]_i_1_n_0 ;
  wire \reg_coeff[49][15]_i_2_n_0 ;
  wire \reg_coeff[49][15]_i_3_n_0 ;
  wire \reg_coeff[49][7]_i_1_n_0 ;
  wire \reg_coeff[4][15]_i_1_n_0 ;
  wire \reg_coeff[4][15]_i_2_n_0 ;
  wire \reg_coeff[4][7]_i_1_n_0 ;
  wire \reg_coeff[50][15]_i_1_n_0 ;
  wire \reg_coeff[50][15]_i_2_n_0 ;
  wire \reg_coeff[50][7]_i_1_n_0 ;
  wire \reg_coeff[51][15]_i_1_n_0 ;
  wire \reg_coeff[51][7]_i_1_n_0 ;
  wire \reg_coeff[52][15]_i_1_n_0 ;
  wire \reg_coeff[52][15]_i_2_n_0 ;
  wire \reg_coeff[52][7]_i_1_n_0 ;
  wire \reg_coeff[53][15]_i_1_n_0 ;
  wire \reg_coeff[53][15]_i_2_n_0 ;
  wire \reg_coeff[53][7]_i_1_n_0 ;
  wire \reg_coeff[54][15]_i_1_n_0 ;
  wire \reg_coeff[54][15]_i_2_n_0 ;
  wire \reg_coeff[54][15]_i_3_n_0 ;
  wire \reg_coeff[54][7]_i_1_n_0 ;
  wire \reg_coeff[55][15]_i_1_n_0 ;
  wire \reg_coeff[55][7]_i_1_n_0 ;
  wire \reg_coeff[56][15]_i_1_n_0 ;
  wire \reg_coeff[56][15]_i_2_n_0 ;
  wire \reg_coeff[56][7]_i_1_n_0 ;
  wire \reg_coeff[57][15]_i_1_n_0 ;
  wire \reg_coeff[57][15]_i_2_n_0 ;
  wire \reg_coeff[57][15]_i_3_n_0 ;
  wire \reg_coeff[57][7]_i_1_n_0 ;
  wire \reg_coeff[58][15]_i_1_n_0 ;
  wire \reg_coeff[58][15]_i_2_n_0 ;
  wire \reg_coeff[58][7]_i_1_n_0 ;
  wire \reg_coeff[59][15]_i_1_n_0 ;
  wire \reg_coeff[59][15]_i_2_n_0 ;
  wire \reg_coeff[59][7]_i_1_n_0 ;
  wire \reg_coeff[5][15]_i_1_n_0 ;
  wire \reg_coeff[5][15]_i_2_n_0 ;
  wire \reg_coeff[5][7]_i_1_n_0 ;
  wire \reg_coeff[60][15]_i_1_n_0 ;
  wire \reg_coeff[60][7]_i_1_n_0 ;
  wire \reg_coeff[61][15]_i_1_n_0 ;
  wire \reg_coeff[61][15]_i_2_n_0 ;
  wire \reg_coeff[61][7]_i_1_n_0 ;
  wire \reg_coeff[62][15]_i_1_n_0 ;
  wire \reg_coeff[62][7]_i_1_n_0 ;
  wire \reg_coeff[63][15]_i_1_n_0 ;
  wire \reg_coeff[63][7]_i_1_n_0 ;
  wire \reg_coeff[64][15]_i_1_n_0 ;
  wire \reg_coeff[64][7]_i_1_n_0 ;
  wire \reg_coeff[65][15]_i_1_n_0 ;
  wire \reg_coeff[65][7]_i_1_n_0 ;
  wire \reg_coeff[66][15]_i_1_n_0 ;
  wire \reg_coeff[66][7]_i_1_n_0 ;
  wire \reg_coeff[67][15]_i_1_n_0 ;
  wire \reg_coeff[67][15]_i_2_n_0 ;
  wire \reg_coeff[67][15]_i_3_n_0 ;
  wire \reg_coeff[67][7]_i_1_n_0 ;
  wire \reg_coeff[68][15]_i_1_n_0 ;
  wire \reg_coeff[68][7]_i_1_n_0 ;
  wire \reg_coeff[69][15]_i_1_n_0 ;
  wire \reg_coeff[69][15]_i_2_n_0 ;
  wire \reg_coeff[69][7]_i_1_n_0 ;
  wire \reg_coeff[6][15]_i_1_n_0 ;
  wire \reg_coeff[6][15]_i_2_n_0 ;
  wire \reg_coeff[6][7]_i_1_n_0 ;
  wire \reg_coeff[70][15]_i_1_n_0 ;
  wire \reg_coeff[70][7]_i_1_n_0 ;
  wire \reg_coeff[71][15]_i_1_n_0 ;
  wire \reg_coeff[71][7]_i_1_n_0 ;
  wire \reg_coeff[72][15]_i_1_n_0 ;
  wire \reg_coeff[72][7]_i_1_n_0 ;
  wire \reg_coeff[73][15]_i_1_n_0 ;
  wire \reg_coeff[73][15]_i_2_n_0 ;
  wire \reg_coeff[73][15]_i_3_n_0 ;
  wire \reg_coeff[73][7]_i_1_n_0 ;
  wire \reg_coeff[74][15]_i_1_n_0 ;
  wire \reg_coeff[74][15]_i_2_n_0 ;
  wire \reg_coeff[74][7]_i_1_n_0 ;
  wire \reg_coeff[75][15]_i_1_n_0 ;
  wire \reg_coeff[75][15]_i_2_n_0 ;
  wire \reg_coeff[75][7]_i_1_n_0 ;
  wire \reg_coeff[76][15]_i_1_n_0 ;
  wire \reg_coeff[76][15]_i_2_n_0 ;
  wire \reg_coeff[76][7]_i_1_n_0 ;
  wire \reg_coeff[77][15]_i_1_n_0 ;
  wire \reg_coeff[77][15]_i_2_n_0 ;
  wire \reg_coeff[77][7]_i_1_n_0 ;
  wire \reg_coeff[78][15]_i_1_n_0 ;
  wire \reg_coeff[78][7]_i_1_n_0 ;
  wire \reg_coeff[79][15]_i_1_n_0 ;
  wire \reg_coeff[79][15]_i_2_n_0 ;
  wire \reg_coeff[79][7]_i_1_n_0 ;
  wire \reg_coeff[7][15]_i_1_n_0 ;
  wire \reg_coeff[7][15]_i_2_n_0 ;
  wire \reg_coeff[7][15]_i_3_n_0 ;
  wire \reg_coeff[7][7]_i_1_n_0 ;
  wire \reg_coeff[80][15]_i_1_n_0 ;
  wire \reg_coeff[80][7]_i_1_n_0 ;
  wire \reg_coeff[8][15]_i_1_n_0 ;
  wire \reg_coeff[8][7]_i_1_n_0 ;
  wire \reg_coeff[9][15]_i_1_n_0 ;
  wire \reg_coeff[9][15]_i_2_n_0 ;
  wire \reg_coeff[9][7]_i_1_n_0 ;
  wire [15:0]\reg_coeff_reg[0] ;
  wire [15:0]\reg_coeff_reg[10] ;
  wire [15:0]\reg_coeff_reg[11] ;
  wire [15:0]\reg_coeff_reg[12] ;
  wire [15:0]\reg_coeff_reg[13] ;
  wire [15:0]\reg_coeff_reg[14] ;
  wire [15:0]\reg_coeff_reg[15] ;
  wire [15:0]\reg_coeff_reg[16] ;
  wire [15:0]\reg_coeff_reg[17] ;
  wire [15:0]\reg_coeff_reg[18] ;
  wire [15:0]\reg_coeff_reg[19] ;
  wire [15:0]\reg_coeff_reg[1] ;
  wire [15:0]\reg_coeff_reg[20] ;
  wire [15:0]\reg_coeff_reg[21] ;
  wire [15:0]\reg_coeff_reg[22] ;
  wire [15:0]\reg_coeff_reg[23] ;
  wire [15:0]\reg_coeff_reg[24] ;
  wire [15:0]\reg_coeff_reg[25] ;
  wire [15:0]\reg_coeff_reg[26] ;
  wire [15:0]\reg_coeff_reg[27] ;
  wire [15:0]\reg_coeff_reg[28] ;
  wire [15:0]\reg_coeff_reg[29] ;
  wire [15:0]\reg_coeff_reg[2] ;
  wire [15:0]\reg_coeff_reg[30] ;
  wire [15:0]\reg_coeff_reg[31] ;
  wire [15:0]\reg_coeff_reg[32] ;
  wire [15:0]\reg_coeff_reg[33] ;
  wire [15:0]\reg_coeff_reg[34] ;
  wire [15:0]\reg_coeff_reg[35] ;
  wire [15:0]\reg_coeff_reg[36] ;
  wire [15:0]\reg_coeff_reg[37] ;
  wire [15:0]\reg_coeff_reg[38] ;
  wire [15:0]\reg_coeff_reg[39] ;
  wire [15:0]\reg_coeff_reg[3] ;
  wire [15:0]\reg_coeff_reg[40] ;
  wire [15:0]\reg_coeff_reg[41] ;
  wire [15:0]\reg_coeff_reg[42] ;
  wire [15:0]\reg_coeff_reg[43] ;
  wire [15:0]\reg_coeff_reg[44] ;
  wire [15:0]\reg_coeff_reg[45] ;
  wire [15:0]\reg_coeff_reg[46] ;
  wire [15:0]\reg_coeff_reg[47] ;
  wire [15:0]\reg_coeff_reg[48] ;
  wire [15:0]\reg_coeff_reg[49] ;
  wire [15:0]\reg_coeff_reg[4] ;
  wire [15:0]\reg_coeff_reg[50] ;
  wire [15:0]\reg_coeff_reg[51] ;
  wire [15:0]\reg_coeff_reg[52] ;
  wire [15:0]\reg_coeff_reg[53] ;
  wire [15:0]\reg_coeff_reg[54] ;
  wire [15:0]\reg_coeff_reg[55] ;
  wire [15:0]\reg_coeff_reg[56] ;
  wire [15:0]\reg_coeff_reg[57] ;
  wire [15:0]\reg_coeff_reg[58] ;
  wire [15:0]\reg_coeff_reg[59] ;
  wire [15:0]\reg_coeff_reg[5] ;
  wire [15:0]\reg_coeff_reg[60] ;
  wire [15:0]\reg_coeff_reg[61] ;
  wire [15:0]\reg_coeff_reg[62] ;
  wire [15:0]\reg_coeff_reg[63] ;
  wire [15:0]\reg_coeff_reg[64] ;
  wire [15:0]\reg_coeff_reg[65] ;
  wire [15:0]\reg_coeff_reg[66] ;
  wire [15:0]\reg_coeff_reg[67] ;
  wire [15:0]\reg_coeff_reg[68] ;
  wire [15:0]\reg_coeff_reg[69] ;
  wire [15:0]\reg_coeff_reg[6] ;
  wire [15:0]\reg_coeff_reg[70] ;
  wire [15:0]\reg_coeff_reg[71] ;
  wire [15:0]\reg_coeff_reg[72] ;
  wire [15:0]\reg_coeff_reg[73] ;
  wire [15:0]\reg_coeff_reg[74] ;
  wire [15:0]\reg_coeff_reg[75] ;
  wire [15:0]\reg_coeff_reg[76] ;
  wire [15:0]\reg_coeff_reg[77] ;
  wire [15:0]\reg_coeff_reg[78] ;
  wire [15:0]\reg_coeff_reg[79] ;
  wire [15:0]\reg_coeff_reg[7] ;
  wire [15:0]\reg_coeff_reg[80] ;
  wire [15:0]\reg_coeff_reg[8] ;
  wire [15:0]\reg_coeff_reg[9] ;
  (* MARK_DEBUG *) wire [15:0]reg_coeff_scale;
  wire \reg_coeff_scale[0]_i_1_n_0 ;
  wire \reg_coeff_scale[10]_i_1_n_0 ;
  wire \reg_coeff_scale[11]_i_1_n_0 ;
  wire \reg_coeff_scale[12]_i_1_n_0 ;
  wire \reg_coeff_scale[13]_i_1_n_0 ;
  wire \reg_coeff_scale[14]_i_1_n_0 ;
  wire \reg_coeff_scale[15]_i_1_n_0 ;
  wire \reg_coeff_scale[15]_i_2_n_0 ;
  wire \reg_coeff_scale[15]_i_3_n_0 ;
  wire \reg_coeff_scale[1]_i_1_n_0 ;
  wire \reg_coeff_scale[2]_i_1_n_0 ;
  wire \reg_coeff_scale[3]_i_1_n_0 ;
  wire \reg_coeff_scale[4]_i_1_n_0 ;
  wire \reg_coeff_scale[5]_i_1_n_0 ;
  wire \reg_coeff_scale[6]_i_1_n_0 ;
  wire \reg_coeff_scale[7]_i_1_n_0 ;
  wire \reg_coeff_scale[7]_i_2_n_0 ;
  wire \reg_coeff_scale[8]_i_1_n_0 ;
  wire \reg_coeff_scale[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [15:0]reg_ctrl;
  wire \reg_ctrl[15]_i_3_n_0 ;
  wire \reg_ctrl[15]_i_4_n_0 ;
  wire \reg_ctrl[7]_i_2_n_0 ;
  (* MARK_DEBUG *) wire [15:0]reg_img_h;
  wire \reg_img_h[0]_i_1_n_0 ;
  wire \reg_img_h[10]_i_1_n_0 ;
  wire \reg_img_h[11]_i_1_n_0 ;
  wire \reg_img_h[12]_i_1_n_0 ;
  wire \reg_img_h[13]_i_1_n_0 ;
  wire \reg_img_h[14]_i_1_n_0 ;
  wire \reg_img_h[15]_i_1_n_0 ;
  wire \reg_img_h[15]_i_2_n_0 ;
  wire \reg_img_h[15]_i_3_n_0 ;
  wire \reg_img_h[1]_i_1_n_0 ;
  wire \reg_img_h[2]_i_1_n_0 ;
  wire \reg_img_h[3]_i_1_n_0 ;
  wire \reg_img_h[4]_i_1_n_0 ;
  wire \reg_img_h[5]_i_1_n_0 ;
  wire \reg_img_h[6]_i_1_n_0 ;
  wire \reg_img_h[7]_i_1_n_0 ;
  wire \reg_img_h[7]_i_2_n_0 ;
  wire \reg_img_h[8]_i_1_n_0 ;
  wire \reg_img_h[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [15:0]reg_img_w;
  wire \reg_img_w[0]_i_1_n_0 ;
  wire \reg_img_w[10]_i_1_n_0 ;
  wire \reg_img_w[11]_i_1_n_0 ;
  wire \reg_img_w[12]_i_1_n_0 ;
  wire \reg_img_w[13]_i_1_n_0 ;
  wire \reg_img_w[14]_i_1_n_0 ;
  wire \reg_img_w[15]_i_1_n_0 ;
  wire \reg_img_w[15]_i_2_n_0 ;
  wire \reg_img_w[1]_i_1_n_0 ;
  wire \reg_img_w[2]_i_1_n_0 ;
  wire \reg_img_w[3]_i_1_n_0 ;
  wire \reg_img_w[4]_i_1_n_0 ;
  wire \reg_img_w[5]_i_1_n_0 ;
  wire \reg_img_w[6]_i_1_n_0 ;
  wire \reg_img_w[7]_i_1_n_0 ;
  wire \reg_img_w[7]_i_2_n_0 ;
  wire \reg_img_w[8]_i_1_n_0 ;
  wire \reg_img_w[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [15:0]reg_output;
  (* MARK_DEBUG *) wire [15:0]reg_radius;
  wire \reg_radius[0]_i_1_n_0 ;
  wire \reg_radius[10]_i_1_n_0 ;
  wire \reg_radius[11]_i_1_n_0 ;
  wire \reg_radius[12]_i_1_n_0 ;
  wire \reg_radius[13]_i_1_n_0 ;
  wire \reg_radius[14]_i_1_n_0 ;
  wire \reg_radius[15]_i_1_n_0 ;
  wire \reg_radius[15]_i_2_n_0 ;
  wire \reg_radius[1]_i_1_n_0 ;
  wire \reg_radius[2]_i_1_n_0 ;
  wire \reg_radius[3]_i_1_n_0 ;
  wire \reg_radius[4]_i_1_n_0 ;
  wire \reg_radius[5]_i_1_n_0 ;
  wire \reg_radius[6]_i_1_n_0 ;
  wire \reg_radius[7]_i_1_n_0 ;
  wire \reg_radius[8]_i_1_n_0 ;
  wire \reg_radius[9]_i_1_n_0 ;
  wire reset;
  (* MARK_DEBUG *) wire [7:0]sA_data;
  wire sA_data3;
  wire sA_data30_in;
  wire sA_data31_in;
  wire sA_data32_in;
  wire [8:0]sA_data40_out;
  wire [8:0]sA_data42_out;
  wire \sA_data[7]_i_2_n_0 ;
  wire \sA_data[7]_i_3_n_0 ;
  wire [7:0]sA_data__0;
  (* MARK_DEBUG *) wire sA_out;
  wire sA_out_i_10_n_0;
  wire sA_out_i_12_n_0;
  wire sA_out_i_13_n_0;
  wire sA_out_i_15_n_0;
  wire sA_out_i_16_n_0;
  wire sA_out_i_17_n_0;
  wire sA_out_i_18_n_0;
  wire sA_out_i_19_n_0;
  wire sA_out_i_1_n_0;
  wire sA_out_i_20_n_0;
  wire sA_out_i_21_n_0;
  wire sA_out_i_22_n_0;
  wire sA_out_i_23_n_0;
  wire sA_out_i_25_n_0;
  wire sA_out_i_26_n_0;
  wire sA_out_i_27_n_0;
  wire sA_out_i_28_n_0;
  wire sA_out_i_29_n_0;
  wire sA_out_i_30_n_0;
  wire sA_out_i_31_n_0;
  wire sA_out_i_32_n_0;
  wire sA_out_i_33_n_0;
  wire sA_out_i_34_n_0;
  wire sA_out_i_35_n_0;
  wire sA_out_i_36_n_0;
  wire sA_out_i_37_n_0;
  wire sA_out_i_38_n_0;
  wire sA_out_i_40_n_0;
  wire sA_out_i_41_n_0;
  wire sA_out_i_42_n_0;
  wire sA_out_i_43_n_0;
  wire sA_out_i_44_n_0;
  wire sA_out_i_45_n_0;
  wire sA_out_i_48_n_0;
  wire sA_out_i_51_n_0;
  wire sA_out_i_52_n_0;
  wire sA_out_i_53_n_0;
  wire sA_out_i_54_n_0;
  wire sA_out_i_55_n_0;
  wire sA_out_i_56_n_0;
  wire sA_out_i_57_n_0;
  wire sA_out_i_58_n_0;
  wire sA_out_i_59_n_0;
  wire sA_out_i_60_n_0;
  wire sA_out_i_61_n_0;
  wire sA_out_i_62_n_0;
  wire sA_out_i_63_n_0;
  wire sA_out_i_64_n_0;
  wire sA_out_i_65_n_0;
  wire sA_out_i_66_n_0;
  wire sA_out_i_67_n_0;
  wire sA_out_i_7_n_0;
  wire sA_out_i_8_n_0;
  wire sA_out_reg_i_11_n_0;
  wire sA_out_reg_i_11_n_1;
  wire sA_out_reg_i_11_n_2;
  wire sA_out_reg_i_11_n_3;
  wire sA_out_reg_i_14_n_0;
  wire sA_out_reg_i_14_n_1;
  wire sA_out_reg_i_14_n_2;
  wire sA_out_reg_i_14_n_3;
  wire sA_out_reg_i_46_n_0;
  wire sA_out_reg_i_46_n_1;
  wire sA_out_reg_i_46_n_2;
  wire sA_out_reg_i_46_n_3;
  wire sA_out_reg_i_47_n_0;
  wire sA_out_reg_i_47_n_1;
  wire sA_out_reg_i_47_n_2;
  wire sA_out_reg_i_47_n_3;
  wire sA_out_reg_i_49_n_0;
  wire sA_out_reg_i_49_n_1;
  wire sA_out_reg_i_49_n_2;
  wire sA_out_reg_i_49_n_3;
  wire sA_out_reg_i_50_n_0;
  wire sA_out_reg_i_50_n_1;
  wire sA_out_reg_i_50_n_2;
  wire sA_out_reg_i_50_n_3;
  wire sA_out_reg_i_6_n_0;
  wire sA_out_reg_i_6_n_1;
  wire sA_out_reg_i_6_n_2;
  wire sA_out_reg_i_6_n_3;
  wire sA_out_reg_i_9_n_0;
  wire sA_out_reg_i_9_n_1;
  wire sA_out_reg_i_9_n_2;
  wire sA_out_reg_i_9_n_3;
  wire [9:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [9:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_bvalid;
  wire [15:0]\^s_axi_ctrl_rdata ;
  wire \s_axi_ctrl_rdata_reg[0]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[0]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[10]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[11]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[12]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_38_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[13]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_38_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_39_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_40_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[14]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_38_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_39_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_40_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_41_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_42_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_43_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_44_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[15]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[1]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_38_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[2]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[3]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_38_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[4]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_38_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[5]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_38_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[6]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_38_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[7]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_38_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[8]_i_9_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_10_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_11_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_12_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_13_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_14_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_15_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_16_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_17_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_18_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_19_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_1_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_20_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_21_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_22_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_23_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_24_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_25_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_26_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_27_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_28_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_29_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_2_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_30_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_31_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_32_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_33_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_34_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_35_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_36_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_37_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_38_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_3_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_4_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_5_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_6_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_7_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_8_n_0 ;
  wire \s_axi_ctrl_rdata_reg[9]_i_9_n_0 ;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire [3:0]s_axi_ctrl_wstrb;
  wire s_axi_ctrl_wvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  (* MARK_DEBUG *) wire s_axis_tready;
  wire s_axis_tvalid;
  wire [7:0]tdata_buffer;
  wire \tdata_buffer[7]_i_1_n_0 ;
  wire tlast_buffer;
  wire tlast_buffer_i_1_n_0;
  (* MARK_DEBUG *) wire [6:0]tlast_fifo;
  wire tvalid_buffer;
  wire tvalid_buffer_i_1_n_0;
  wire tvalid_buffer_i_2_n_0;
  wire tvalid_buffer_reg_n_0;
  (* MARK_DEBUG *) wire [6:0]tvalid_fifo;
  wire tvalid_fifo1;
  wire \tvalid_fifo[1]_i_1_n_0 ;
  wire \tvalid_fifo[6]_i_1_n_0 ;
  wire [3:1]\NLW_img_col_counter_reg[5]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_img_col_counter_reg[5]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_img_col_counter_reg[5]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_img_row_counter_reg[8]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_img_row_counter_reg[8]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_img_row_counter_reg[8]_i_4_O_UNCONNECTED ;
  wire [3:0]NLW_sA_out_reg_i_11_O_UNCONNECTED;
  wire [3:0]NLW_sA_out_reg_i_14_O_UNCONNECTED;
  wire [3:1]NLW_sA_out_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_sA_out_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_sA_out_reg_i_24_CO_UNCONNECTED;
  wire [3:1]NLW_sA_out_reg_i_24_O_UNCONNECTED;
  wire [3:1]NLW_sA_out_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_sA_out_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_sA_out_reg_i_39_CO_UNCONNECTED;
  wire [3:1]NLW_sA_out_reg_i_39_O_UNCONNECTED;
  wire [3:1]NLW_sA_out_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_sA_out_reg_i_4_O_UNCONNECTED;
  wire [3:1]NLW_sA_out_reg_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_sA_out_reg_i_5_O_UNCONNECTED;
  wire [3:0]NLW_sA_out_reg_i_6_O_UNCONNECTED;
  wire [3:0]NLW_sA_out_reg_i_9_O_UNCONNECTED;
  wire [15:0]NLW_u_alu_result_UNCONNECTED;

  assign m_axis_tdata[15:0] = reg_output;
  assign m_axis_tlast = tlast_fifo[6];
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15:0] = \^s_axi_ctrl_rdata [15:0];
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \FSM_onehot_fsm_axi_write_state[0]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I2(s_axi_ctrl_bready),
        .I3(\FSM_onehot_fsm_axi_write_state[2]_i_3_n_0 ),
        .I4(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .O(\FSM_onehot_fsm_axi_write_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \FSM_onehot_fsm_axi_write_state[1]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_wready),
        .I2(s_axi_ctrl_wvalid),
        .I3(\FSM_onehot_fsm_axi_write_state[2]_i_3_n_0 ),
        .I4(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .O(\FSM_onehot_fsm_axi_write_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
    \FSM_onehot_fsm_axi_write_state[2]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I2(s_axi_ctrl_bready),
        .I3(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_fsm_axi_write_state[2]_i_3_n_0 ),
        .I5(\FSM_onehot_fsm_axi_write_state_reg_n_0_[2] ),
        .O(\FSM_onehot_fsm_axi_write_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_fsm_axi_write_state[2]_i_2 
       (.I0(s_axi_ctrl_wvalid),
        .I1(s_axi_ctrl_wready),
        .O(\FSM_onehot_fsm_axi_write_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAAAAAAAAAAAAAA)) 
    \FSM_onehot_fsm_axi_write_state[2]_i_3 
       (.I0(axi_awready_i_4_n_0),
        .I1(s_axi_ctrl_bready),
        .I2(\FSM_onehot_fsm_axi_write_state[2]_i_2_n_0 ),
        .I3(s_axi_ctrl_awready),
        .I4(s_axi_ctrl_awvalid),
        .I5(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .O(\FSM_onehot_fsm_axi_write_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "writedata:010,writeaddress:001,writestalled:100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_fsm_axi_write_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_fsm_axi_write_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .S(reset));
  (* FSM_ENCODED_STATES = "writedata:010,writeaddress:001,writestalled:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_axi_write_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_fsm_axi_write_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "writedata:010,writeaddress:001,writestalled:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_axi_write_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_fsm_axi_write_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_fsm_axi_write_state_reg_n_0_[2] ),
        .R(reset));
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h55440555)) 
    axi_arready_i_1
       (.I0(reset),
        .I1(s_axi_ctrl_rready),
        .I2(s_axi_ctrl_arvalid),
        .I3(s_axi_ctrl_arready),
        .I4(s_axi_ctrl_rvalid),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s_axi_ctrl_arready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBABFBAB0)) 
    axi_awready_i_1
       (.I0(axi_awready_i_2_n_0),
        .I1(axi_awready_i_3_n_0),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I3(axi_awready_i_4_n_0),
        .I4(s_axi_ctrl_awready),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hF800)) 
    axi_awready_i_2
       (.I0(s_axi_ctrl_bvalid),
        .I1(\FSM_onehot_fsm_axi_write_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_bready),
        .O(axi_awready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F000000)) 
    axi_awready_i_3
       (.I0(s_axi_ctrl_bready),
        .I1(s_axi_ctrl_wvalid),
        .I2(s_axi_ctrl_wready),
        .I3(s_axi_ctrl_awready),
        .I4(s_axi_ctrl_awvalid),
        .O(axi_awready_i_3_n_0));
  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    axi_awready_i_4
       (.I0(s_axi_ctrl_bready),
        .I1(s_axi_ctrl_bvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[2] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wready),
        .I5(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .O(axi_awready_i_4_n_0));
  FDRE axi_awready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(s_axi_ctrl_awready),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFAAAFA)) 
    axi_bvalid_i_1
       (.I0(axi_bvalid_i_2_n_0),
        .I1(\FSM_onehot_fsm_axi_write_state_reg_n_0_[2] ),
        .I2(s_axi_ctrl_bvalid),
        .I3(s_axi_ctrl_bready),
        .I4(axi_bvalid_i_3_n_0),
        .I5(axi_bvalid_i_4_n_0),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    axi_bvalid_i_2
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I1(s_axi_ctrl_wready),
        .I2(s_axi_ctrl_wvalid),
        .O(axi_bvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    axi_bvalid_i_3
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .O(axi_bvalid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    axi_bvalid_i_4
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_wvalid),
        .I2(s_axi_ctrl_wready),
        .I3(s_axi_ctrl_awvalid),
        .I4(s_axi_ctrl_awready),
        .O(axi_bvalid_i_4_n_0));
  FDRE axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_ctrl_bvalid),
        .R(reset));
  LUT4 #(
    .INIT(16'h55C0)) 
    axi_rvalid_i_1
       (.I0(s_axi_ctrl_rready),
        .I1(s_axi_ctrl_arvalid),
        .I2(s_axi_ctrl_arready),
        .I3(s_axi_ctrl_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_ctrl_rvalid),
        .R(reset));
  LUT6 #(
    .INIT(64'hFEAAFEFFFEAAFE00)) 
    axi_wready_i_1
       (.I0(axi_awready_i_2_n_0),
        .I1(s_axi_ctrl_bready),
        .I2(axi_wready_i_2_n_0),
        .I3(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I4(axi_awready_i_4_n_0),
        .I5(s_axi_ctrl_wready),
        .O(axi_wready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    axi_wready_i_2
       (.I0(s_axi_ctrl_awready),
        .I1(s_axi_ctrl_awvalid),
        .I2(s_axi_ctrl_wready),
        .I3(s_axi_ctrl_wvalid),
        .O(axi_wready_i_2_n_0));
  FDRE axi_wready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s_axi_ctrl_wready),
        .R(reset));
  LUT4 #(
    .INIT(16'h2F20)) 
    buff_flag_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .I2(fsm_img_processing_state),
        .I3(buff_flag),
        .O(buff_flag_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE buff_flag_reg
       (.C(clk),
        .CE(1'b1),
        .D(buff_flag_i_1_n_0),
        .Q(buff_flag),
        .R(reset));
  LUT4 #(
    .INIT(16'h0400)) 
    \buff_tdata[7]_i_1 
       (.I0(buff_flag),
        .I1(m_axis_tvalid),
        .I2(m_axis_tready),
        .I3(fsm_img_processing_state),
        .O(buff_tdata));
  FDRE \buff_tdata_reg[0] 
       (.C(clk),
        .CE(buff_tdata),
        .D(s_axis_tdata[0]),
        .Q(\buff_tdata_reg_n_0_[0] ),
        .R(reset));
  FDRE \buff_tdata_reg[1] 
       (.C(clk),
        .CE(buff_tdata),
        .D(s_axis_tdata[1]),
        .Q(\buff_tdata_reg_n_0_[1] ),
        .R(reset));
  FDRE \buff_tdata_reg[2] 
       (.C(clk),
        .CE(buff_tdata),
        .D(s_axis_tdata[2]),
        .Q(\buff_tdata_reg_n_0_[2] ),
        .R(reset));
  FDRE \buff_tdata_reg[3] 
       (.C(clk),
        .CE(buff_tdata),
        .D(s_axis_tdata[3]),
        .Q(\buff_tdata_reg_n_0_[3] ),
        .R(reset));
  FDRE \buff_tdata_reg[4] 
       (.C(clk),
        .CE(buff_tdata),
        .D(s_axis_tdata[4]),
        .Q(\buff_tdata_reg_n_0_[4] ),
        .R(reset));
  FDRE \buff_tdata_reg[5] 
       (.C(clk),
        .CE(buff_tdata),
        .D(s_axis_tdata[5]),
        .Q(\buff_tdata_reg_n_0_[5] ),
        .R(reset));
  FDRE \buff_tdata_reg[6] 
       (.C(clk),
        .CE(buff_tdata),
        .D(s_axis_tdata[6]),
        .Q(\buff_tdata_reg_n_0_[6] ),
        .R(reset));
  FDRE \buff_tdata_reg[7] 
       (.C(clk),
        .CE(buff_tdata),
        .D(s_axis_tdata[7]),
        .Q(\buff_tdata_reg_n_0_[7] ),
        .R(reset));
  FDRE buff_tlast_reg
       (.C(clk),
        .CE(buff_tdata),
        .D(s_axis_tlast),
        .Q(buff_tlast_reg_n_0),
        .R(reset));
  LUT6 #(
    .INIT(64'hFF00FF20FF00DF00)) 
    buff_tvalid_i_1
       (.I0(fsm_img_processing_state),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid),
        .I3(buff_tvalid),
        .I4(buff_flag),
        .I5(s_axis_tvalid),
        .O(buff_tvalid_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE buff_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(buff_tvalid_i_1_n_0),
        .Q(buff_tvalid),
        .R(reset));
  LUT5 #(
    .INIT(32'h7FFF7F00)) 
    fsm_img_processing_state_i_1
       (.I0(tlast_fifo[6]),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid),
        .I3(fsm_img_processing_state),
        .I4(s_axis_tvalid),
        .O(fsm_img_processing_state_i_1_n_0));
  (* KEEP = "yes" *) 
  FDRE fsm_img_processing_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(fsm_img_processing_state_i_1_n_0),
        .Q(fsm_img_processing_state),
        .R(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[0]_i_1 
       (.I0(reg_ctrl[0]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[0]),
        .O(p_0_in1_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[10]_i_1 
       (.I0(reg_ctrl[10]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[10]),
        .O(p_0_in1_in[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[11]_i_1 
       (.I0(reg_ctrl[11]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[11]),
        .O(p_0_in1_in[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[12]_i_1 
       (.I0(reg_ctrl[12]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[12]),
        .O(p_0_in1_in[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[13]_i_1 
       (.I0(reg_ctrl[13]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[13]),
        .O(p_0_in1_in[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[14]_i_1 
       (.I0(reg_ctrl[14]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[14]),
        .O(p_0_in1_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \h_ctrl[15]_i_1 
       (.I0(fsm_img_processing_state),
        .O(\h_ctrl[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[15]_i_2 
       (.I0(reg_ctrl[15]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[15]),
        .O(p_0_in1_in[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[1]_i_1 
       (.I0(reg_ctrl[1]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[1]),
        .O(p_0_in1_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[2]_i_1 
       (.I0(reg_ctrl[2]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[2]),
        .O(p_0_in1_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[3]_i_1 
       (.I0(reg_ctrl[3]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[3]),
        .O(p_0_in1_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[4]_i_1 
       (.I0(reg_ctrl[4]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[4]),
        .O(p_0_in1_in[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[5]_i_1 
       (.I0(reg_ctrl[5]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[5]),
        .O(p_0_in1_in[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[6]_i_1 
       (.I0(reg_ctrl[6]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[6]),
        .O(p_0_in1_in[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[7]_i_1 
       (.I0(reg_ctrl[7]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[7]),
        .O(p_0_in1_in[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[8]_i_1 
       (.I0(reg_ctrl[8]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[8]),
        .O(p_0_in1_in[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_ctrl[9]_i_1 
       (.I0(reg_ctrl[9]),
        .I1(s_axis_tvalid),
        .I2(h_ctrl[9]),
        .O(p_0_in1_in[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[0] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[0]),
        .Q(h_ctrl[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[10] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[10]),
        .Q(h_ctrl[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[11] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[11]),
        .Q(h_ctrl[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[12] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[12]),
        .Q(h_ctrl[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[13] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[13]),
        .Q(h_ctrl[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[14] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[14]),
        .Q(h_ctrl[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[15] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[15]),
        .Q(h_ctrl[15]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[1] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[1]),
        .Q(h_ctrl[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[2] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[2]),
        .Q(h_ctrl[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[3] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[3]),
        .Q(h_ctrl[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[4] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[4]),
        .Q(h_ctrl[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[5] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[5]),
        .Q(h_ctrl[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[6] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[6]),
        .Q(h_ctrl[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[7] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[7]),
        .Q(h_ctrl[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[8] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[8]),
        .Q(h_ctrl[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_ctrl_reg[9] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(p_0_in1_in[9]),
        .Q(h_ctrl[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[0]_i_1 
       (.I0(reg_img_h[0]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[0]),
        .O(\h_img_h[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[10]_i_1 
       (.I0(reg_img_h[10]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[10]),
        .O(\h_img_h[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[11]_i_1 
       (.I0(reg_img_h[11]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[11]),
        .O(\h_img_h[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[12]_i_1 
       (.I0(reg_img_h[12]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[12]),
        .O(\h_img_h[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[13]_i_1 
       (.I0(reg_img_h[13]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[13]),
        .O(\h_img_h[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[14]_i_1 
       (.I0(reg_img_h[14]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[14]),
        .O(\h_img_h[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[15]_i_1 
       (.I0(reg_img_h[15]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[15]),
        .O(\h_img_h[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[1]_i_1 
       (.I0(reg_img_h[1]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[1]),
        .O(\h_img_h[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[2]_i_1 
       (.I0(reg_img_h[2]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[2]),
        .O(\h_img_h[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[3]_i_1 
       (.I0(reg_img_h[3]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[3]),
        .O(\h_img_h[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[4]_i_1 
       (.I0(reg_img_h[4]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[4]),
        .O(\h_img_h[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[5]_i_1 
       (.I0(reg_img_h[5]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[5]),
        .O(\h_img_h[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[6]_i_1 
       (.I0(reg_img_h[6]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[6]),
        .O(\h_img_h[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[7]_i_1 
       (.I0(reg_img_h[7]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[7]),
        .O(\h_img_h[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[8]_i_1 
       (.I0(reg_img_h[8]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[8]),
        .O(\h_img_h[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_h[9]_i_1 
       (.I0(reg_img_h[9]),
        .I1(s_axis_tvalid),
        .I2(h_img_h[9]),
        .O(\h_img_h[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[0] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[0]_i_1_n_0 ),
        .Q(h_img_h[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[10] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[10]_i_1_n_0 ),
        .Q(h_img_h[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[11] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[11]_i_1_n_0 ),
        .Q(h_img_h[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[12] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[12]_i_1_n_0 ),
        .Q(h_img_h[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[13] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[13]_i_1_n_0 ),
        .Q(h_img_h[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[14] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[14]_i_1_n_0 ),
        .Q(h_img_h[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[15] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[15]_i_1_n_0 ),
        .Q(h_img_h[15]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[1] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[1]_i_1_n_0 ),
        .Q(h_img_h[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[2] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[2]_i_1_n_0 ),
        .Q(h_img_h[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[3] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[3]_i_1_n_0 ),
        .Q(h_img_h[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[4] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[4]_i_1_n_0 ),
        .Q(h_img_h[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[5] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[5]_i_1_n_0 ),
        .Q(h_img_h[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[6] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[6]_i_1_n_0 ),
        .Q(h_img_h[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[7] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[7]_i_1_n_0 ),
        .Q(h_img_h[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[8] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[8]_i_1_n_0 ),
        .Q(h_img_h[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_h_reg[9] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_h[9]_i_1_n_0 ),
        .Q(h_img_h[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[0]_i_1 
       (.I0(reg_img_w[0]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[0]),
        .O(\h_img_w[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[10]_i_1 
       (.I0(reg_img_w[10]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[10]),
        .O(\h_img_w[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[11]_i_1 
       (.I0(reg_img_w[11]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[11]),
        .O(\h_img_w[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[12]_i_1 
       (.I0(reg_img_w[12]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[12]),
        .O(\h_img_w[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[13]_i_1 
       (.I0(reg_img_w[13]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[13]),
        .O(\h_img_w[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[14]_i_1 
       (.I0(reg_img_w[14]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[14]),
        .O(\h_img_w[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[15]_i_1 
       (.I0(reg_img_w[15]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[15]),
        .O(\h_img_w[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[1]_i_1 
       (.I0(reg_img_w[1]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[1]),
        .O(\h_img_w[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[2]_i_1 
       (.I0(reg_img_w[2]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[2]),
        .O(\h_img_w[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[3]_i_1 
       (.I0(reg_img_w[3]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[3]),
        .O(\h_img_w[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[4]_i_1 
       (.I0(reg_img_w[4]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[4]),
        .O(\h_img_w[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[5]_i_1 
       (.I0(reg_img_w[5]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[5]),
        .O(\h_img_w[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[6]_i_1 
       (.I0(reg_img_w[6]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[6]),
        .O(\h_img_w[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[7]_i_1 
       (.I0(reg_img_w[7]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[7]),
        .O(\h_img_w[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[8]_i_1 
       (.I0(reg_img_w[8]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[8]),
        .O(\h_img_w[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_img_w[9]_i_1 
       (.I0(reg_img_w[9]),
        .I1(s_axis_tvalid),
        .I2(h_img_w[9]),
        .O(\h_img_w[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[0] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[0]_i_1_n_0 ),
        .Q(h_img_w[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[10] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[10]_i_1_n_0 ),
        .Q(h_img_w[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[11] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[11]_i_1_n_0 ),
        .Q(h_img_w[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[12] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[12]_i_1_n_0 ),
        .Q(h_img_w[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[13] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[13]_i_1_n_0 ),
        .Q(h_img_w[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[14] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[14]_i_1_n_0 ),
        .Q(h_img_w[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[15] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[15]_i_1_n_0 ),
        .Q(h_img_w[15]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[1] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[1]_i_1_n_0 ),
        .Q(h_img_w[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[2] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[2]_i_1_n_0 ),
        .Q(h_img_w[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[3] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[3]_i_1_n_0 ),
        .Q(h_img_w[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[4] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[4]_i_1_n_0 ),
        .Q(h_img_w[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[5] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[5]_i_1_n_0 ),
        .Q(h_img_w[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[6] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[6]_i_1_n_0 ),
        .Q(h_img_w[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[7] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[7]_i_1_n_0 ),
        .Q(h_img_w[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[8] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[8]_i_1_n_0 ),
        .Q(h_img_w[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_img_w_reg[9] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_img_w[9]_i_1_n_0 ),
        .Q(h_img_w[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[0]_i_1 
       (.I0(reg_radius[0]),
        .I1(s_axis_tvalid),
        .I2(h_radius[0]),
        .O(\h_radius[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[10]_i_1 
       (.I0(reg_radius[10]),
        .I1(s_axis_tvalid),
        .I2(h_radius[10]),
        .O(\h_radius[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[11]_i_1 
       (.I0(reg_radius[11]),
        .I1(s_axis_tvalid),
        .I2(h_radius[11]),
        .O(\h_radius[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[12]_i_1 
       (.I0(reg_radius[12]),
        .I1(s_axis_tvalid),
        .I2(h_radius[12]),
        .O(\h_radius[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[13]_i_1 
       (.I0(reg_radius[13]),
        .I1(s_axis_tvalid),
        .I2(h_radius[13]),
        .O(\h_radius[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[14]_i_1 
       (.I0(reg_radius[14]),
        .I1(s_axis_tvalid),
        .I2(h_radius[14]),
        .O(\h_radius[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[15]_i_1 
       (.I0(reg_radius[15]),
        .I1(s_axis_tvalid),
        .I2(h_radius[15]),
        .O(\h_radius[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[1]_i_1 
       (.I0(reg_radius[1]),
        .I1(s_axis_tvalid),
        .I2(h_radius[1]),
        .O(\h_radius[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[2]_i_1 
       (.I0(reg_radius[2]),
        .I1(s_axis_tvalid),
        .I2(h_radius[2]),
        .O(\h_radius[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[3]_i_1 
       (.I0(reg_radius[3]),
        .I1(s_axis_tvalid),
        .I2(h_radius[3]),
        .O(\h_radius[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[4]_i_1 
       (.I0(reg_radius[4]),
        .I1(s_axis_tvalid),
        .I2(h_radius[4]),
        .O(\h_radius[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[5]_i_1 
       (.I0(reg_radius[5]),
        .I1(s_axis_tvalid),
        .I2(h_radius[5]),
        .O(\h_radius[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[6]_i_1 
       (.I0(reg_radius[6]),
        .I1(s_axis_tvalid),
        .I2(h_radius[6]),
        .O(\h_radius[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[7]_i_1 
       (.I0(reg_radius[7]),
        .I1(s_axis_tvalid),
        .I2(h_radius[7]),
        .O(\h_radius[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[8]_i_1 
       (.I0(reg_radius[8]),
        .I1(s_axis_tvalid),
        .I2(h_radius[8]),
        .O(\h_radius[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \h_radius[9]_i_1 
       (.I0(reg_radius[9]),
        .I1(s_axis_tvalid),
        .I2(h_radius[9]),
        .O(\h_radius[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[0] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[0]_i_1_n_0 ),
        .Q(h_radius[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[10] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[10]_i_1_n_0 ),
        .Q(h_radius[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[11] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[11]_i_1_n_0 ),
        .Q(h_radius[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[12] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[12]_i_1_n_0 ),
        .Q(h_radius[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[13] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[13]_i_1_n_0 ),
        .Q(h_radius[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[14] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[14]_i_1_n_0 ),
        .Q(h_radius[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[15] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[15]_i_1_n_0 ),
        .Q(h_radius[15]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[1] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[1]_i_1_n_0 ),
        .Q(h_radius[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[2] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[2]_i_1_n_0 ),
        .Q(h_radius[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[3] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[3]_i_1_n_0 ),
        .Q(h_radius[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[4] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[4]_i_1_n_0 ),
        .Q(h_radius[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[5] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[5]_i_1_n_0 ),
        .Q(h_radius[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[6] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[6]_i_1_n_0 ),
        .Q(h_radius[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[7] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[7]_i_1_n_0 ),
        .Q(h_radius[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[8] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[8]_i_1_n_0 ),
        .Q(h_radius[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \h_radius_reg[9] 
       (.C(clk),
        .CE(\h_ctrl[15]_i_1_n_0 ),
        .D(\h_radius[9]_i_1_n_0 ),
        .Q(h_radius[9]),
        .R(reset));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(reg_output[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(reg_output[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(reg_output[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(reg_output[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(reg_output[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(reg_output[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(reg_output[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(reg_output[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(reg_output[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(reg_output[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(reg_output[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(reg_output[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(reg_output[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(reg_output[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(reg_output[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(reg_output[6]));
  LUT6 #(
    .INIT(64'h3F33FFFF80880000)) 
    \img_col_counter[0]_i_1 
       (.I0(img_row_counter10_in),
        .I1(tvalid_buffer_reg_n_0),
        .I2(m_axis_tready),
        .I3(m_axis_tvalid),
        .I4(fsm_img_processing_state),
        .I5(img_col_counter[0]),
        .O(\img_col_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDF20CF00)) 
    \img_col_counter[1]_i_1 
       (.I0(img_col_counter[0]),
        .I1(tvalid_buffer_i_2_n_0),
        .I2(tvalid_buffer_reg_n_0),
        .I3(img_col_counter[1]),
        .I4(img_row_counter10_in),
        .O(\img_col_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0800F3F30000)) 
    \img_col_counter[2]_i_1 
       (.I0(img_col_counter[1]),
        .I1(tvalid_buffer_reg_n_0),
        .I2(tvalid_buffer_i_2_n_0),
        .I3(img_col_counter[0]),
        .I4(img_col_counter[2]),
        .I5(img_row_counter10_in),
        .O(\img_col_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0800F0F00000)) 
    \img_col_counter[3]_i_1 
       (.I0(img_col_counter[2]),
        .I1(img_col_counter[0]),
        .I2(\img_col_counter[3]_i_2_n_0 ),
        .I3(img_col_counter[1]),
        .I4(img_col_counter[3]),
        .I5(img_row_counter10_in),
        .O(\img_col_counter[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5DFF)) 
    \img_col_counter[3]_i_2 
       (.I0(fsm_img_processing_state),
        .I1(m_axis_tvalid),
        .I2(m_axis_tready),
        .I3(tvalid_buffer_reg_n_0),
        .O(\img_col_counter[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h99999099)) 
    \img_col_counter[4]_i_1 
       (.I0(\img_col_counter[7]_i_2_n_0 ),
        .I1(img_col_counter[4]),
        .I2(img_row_counter10_in),
        .I3(tvalid_buffer_reg_n_0),
        .I4(tvalid_buffer_i_2_n_0),
        .O(\img_col_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD2D2D2D2D200D2D2)) 
    \img_col_counter[5]_i_1 
       (.I0(img_col_counter[4]),
        .I1(\img_col_counter[7]_i_2_n_0 ),
        .I2(img_col_counter[5]),
        .I3(img_row_counter10_in),
        .I4(tvalid_buffer_reg_n_0),
        .I5(tvalid_buffer_i_2_n_0),
        .O(\img_col_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h90060990)) 
    \img_col_counter[5]_i_10 
       (.I0(h_img_w[7]),
        .I1(img_col_counter[7]),
        .I2(h_img_w[6]),
        .I3(\img_col_counter[5]_i_14_n_0 ),
        .I4(img_col_counter[6]),
        .O(\img_col_counter[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h90060990)) 
    \img_col_counter[5]_i_11 
       (.I0(h_img_w[5]),
        .I1(img_col_counter[5]),
        .I2(h_img_w[4]),
        .I3(\img_col_counter[5]_i_15_n_0 ),
        .I4(img_col_counter[4]),
        .O(\img_col_counter[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    \img_col_counter[5]_i_12 
       (.I0(h_img_w[3]),
        .I1(img_col_counter[3]),
        .I2(h_img_w[2]),
        .I3(h_img_w[1]),
        .I4(h_img_w[0]),
        .I5(img_col_counter[2]),
        .O(\img_col_counter[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0690)) 
    \img_col_counter[5]_i_13 
       (.I0(h_img_w[1]),
        .I1(img_col_counter[1]),
        .I2(h_img_w[0]),
        .I3(img_col_counter[0]),
        .O(\img_col_counter[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \img_col_counter[5]_i_14 
       (.I0(h_img_w[5]),
        .I1(h_img_w[3]),
        .I2(h_img_w[0]),
        .I3(h_img_w[1]),
        .I4(h_img_w[2]),
        .I5(h_img_w[4]),
        .O(\img_col_counter[5]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \img_col_counter[5]_i_15 
       (.I0(h_img_w[3]),
        .I1(h_img_w[0]),
        .I2(h_img_w[1]),
        .I3(h_img_w[2]),
        .O(\img_col_counter[5]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h55540001)) 
    \img_col_counter[5]_i_4 
       (.I0(img_col_counter[8]),
        .I1(\img_col_counter[5]_i_14_n_0 ),
        .I2(h_img_w[6]),
        .I3(h_img_w[7]),
        .I4(h_img_w[8]),
        .O(\img_col_counter[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    \img_col_counter[5]_i_5 
       (.I0(img_col_counter[8]),
        .I1(\img_col_counter[5]_i_14_n_0 ),
        .I2(h_img_w[6]),
        .I3(h_img_w[7]),
        .I4(h_img_w[8]),
        .O(\img_col_counter[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5401D543)) 
    \img_col_counter[5]_i_6 
       (.I0(img_col_counter[7]),
        .I1(h_img_w[6]),
        .I2(\img_col_counter[5]_i_14_n_0 ),
        .I3(h_img_w[7]),
        .I4(img_col_counter[6]),
        .O(\img_col_counter[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h5401D543)) 
    \img_col_counter[5]_i_7 
       (.I0(img_col_counter[5]),
        .I1(h_img_w[4]),
        .I2(\img_col_counter[5]_i_15_n_0 ),
        .I3(h_img_w[5]),
        .I4(img_col_counter[4]),
        .O(\img_col_counter[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55540001DDD54443)) 
    \img_col_counter[5]_i_8 
       (.I0(img_col_counter[3]),
        .I1(h_img_w[2]),
        .I2(h_img_w[1]),
        .I3(h_img_w[0]),
        .I4(h_img_w[3]),
        .I5(img_col_counter[2]),
        .O(\img_col_counter[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4147)) 
    \img_col_counter[5]_i_9 
       (.I0(img_col_counter[1]),
        .I1(h_img_w[1]),
        .I2(h_img_w[0]),
        .I3(img_col_counter[0]),
        .O(\img_col_counter[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \img_col_counter[6]_i_1 
       (.I0(img_col_counter[5]),
        .I1(\img_col_counter[7]_i_2_n_0 ),
        .I2(img_col_counter[4]),
        .I3(img_col_counter[6]),
        .I4(\img_col_counter[7]_i_3_n_0 ),
        .O(\img_col_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FF0800)) 
    \img_col_counter[7]_i_1 
       (.I0(img_col_counter[6]),
        .I1(img_col_counter[4]),
        .I2(\img_col_counter[7]_i_2_n_0 ),
        .I3(img_col_counter[5]),
        .I4(img_col_counter[7]),
        .I5(\img_col_counter[7]_i_3_n_0 ),
        .O(\img_col_counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \img_col_counter[7]_i_2 
       (.I0(img_col_counter[2]),
        .I1(img_col_counter[0]),
        .I2(tvalid_buffer_i_2_n_0),
        .I3(tvalid_buffer_reg_n_0),
        .I4(img_col_counter[1]),
        .I5(img_col_counter[3]),
        .O(\img_col_counter[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40440000)) 
    \img_col_counter[7]_i_3 
       (.I0(img_row_counter10_in),
        .I1(tvalid_buffer_reg_n_0),
        .I2(m_axis_tready),
        .I3(m_axis_tvalid),
        .I4(fsm_img_processing_state),
        .O(\img_col_counter[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \img_col_counter[8]_i_1 
       (.I0(reset),
        .I1(fsm_img_processing_state),
        .I2(s_axis_tvalid),
        .O(\img_col_counter[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF2FFD000)) 
    \img_col_counter[8]_i_2 
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .I2(\img_col_counter[8]_i_3_n_0 ),
        .I3(fsm_img_processing_state),
        .I4(img_col_counter[8]),
        .O(\img_col_counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AFFFF00800000)) 
    \img_col_counter[8]_i_3 
       (.I0(img_row_counter10_in),
        .I1(img_col_counter[7]),
        .I2(img_col_counter[6]),
        .I3(\img_col_counter[8]_i_4_n_0 ),
        .I4(tvalid_buffer_reg_n_0),
        .I5(img_col_counter[8]),
        .O(\img_col_counter[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \img_col_counter[8]_i_4 
       (.I0(img_col_counter[4]),
        .I1(img_col_counter[2]),
        .I2(img_col_counter[0]),
        .I3(img_col_counter[1]),
        .I4(img_col_counter[3]),
        .I5(img_col_counter[5]),
        .O(\img_col_counter[8]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_col_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_col_counter[0]_i_1_n_0 ),
        .Q(img_col_counter[0]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_col_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_col_counter[1]_i_1_n_0 ),
        .Q(img_col_counter[1]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_col_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_col_counter[2]_i_1_n_0 ),
        .Q(img_col_counter[2]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_col_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_col_counter[3]_i_1_n_0 ),
        .Q(img_col_counter[3]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_col_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_col_counter[4]_i_1_n_0 ),
        .Q(img_col_counter[4]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_col_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_col_counter[5]_i_1_n_0 ),
        .Q(img_col_counter[5]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \img_col_counter_reg[5]_i_2 
       (.CI(\img_col_counter_reg[5]_i_3_n_0 ),
        .CO({\NLW_img_col_counter_reg[5]_i_2_CO_UNCONNECTED [3:1],img_row_counter10_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\img_col_counter[5]_i_4_n_0 }),
        .O(\NLW_img_col_counter_reg[5]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\img_col_counter[5]_i_5_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \img_col_counter_reg[5]_i_3 
       (.CI(1'b0),
        .CO({\img_col_counter_reg[5]_i_3_n_0 ,\img_col_counter_reg[5]_i_3_n_1 ,\img_col_counter_reg[5]_i_3_n_2 ,\img_col_counter_reg[5]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\img_col_counter[5]_i_6_n_0 ,\img_col_counter[5]_i_7_n_0 ,\img_col_counter[5]_i_8_n_0 ,\img_col_counter[5]_i_9_n_0 }),
        .O(\NLW_img_col_counter_reg[5]_i_3_O_UNCONNECTED [3:0]),
        .S({\img_col_counter[5]_i_10_n_0 ,\img_col_counter[5]_i_11_n_0 ,\img_col_counter[5]_i_12_n_0 ,\img_col_counter[5]_i_13_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \img_col_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_col_counter[6]_i_1_n_0 ),
        .Q(img_col_counter[6]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_col_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_col_counter[7]_i_1_n_0 ),
        .Q(img_col_counter[7]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_col_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_col_counter[8]_i_2_n_0 ),
        .Q(img_col_counter[8]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFCF0020)) 
    \img_row_counter[0]_i_1 
       (.I0(img_row_counter1),
        .I1(img_row_counter10_in),
        .I2(tvalid_buffer_reg_n_0),
        .I3(tvalid_buffer_i_2_n_0),
        .I4(img_row_counter[0]),
        .O(\img_row_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0020FFDD0000)) 
    \img_row_counter[1]_i_1 
       (.I0(tvalid_buffer_reg_n_0),
        .I1(img_row_counter10_in),
        .I2(img_row_counter[0]),
        .I3(tvalid_buffer_i_2_n_0),
        .I4(img_row_counter[1]),
        .I5(img_row_counter1),
        .O(\img_row_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999099)) 
    \img_row_counter[2]_i_1 
       (.I0(\img_row_counter[2]_i_2_n_0 ),
        .I1(img_row_counter[2]),
        .I2(tvalid_buffer_i_2_n_0),
        .I3(tvalid_buffer_reg_n_0),
        .I4(img_row_counter10_in),
        .I5(img_row_counter1),
        .O(\img_row_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \img_row_counter[2]_i_2 
       (.I0(tvalid_buffer_reg_n_0),
        .I1(img_row_counter10_in),
        .I2(img_row_counter[0]),
        .I3(tvalid_buffer_i_2_n_0),
        .I4(img_row_counter[1]),
        .O(\img_row_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999099)) 
    \img_row_counter[3]_i_1 
       (.I0(\img_row_counter[6]_i_2_n_0 ),
        .I1(img_row_counter[3]),
        .I2(tvalid_buffer_i_2_n_0),
        .I3(tvalid_buffer_reg_n_0),
        .I4(img_row_counter10_in),
        .I5(img_row_counter1),
        .O(\img_row_counter[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00D2)) 
    \img_row_counter[4]_i_1 
       (.I0(img_row_counter[3]),
        .I1(\img_row_counter[6]_i_2_n_0 ),
        .I2(img_row_counter[4]),
        .I3(\img_row_counter[6]_i_3_n_0 ),
        .O(\img_row_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \img_row_counter[5]_i_1 
       (.I0(img_row_counter[4]),
        .I1(\img_row_counter[6]_i_2_n_0 ),
        .I2(img_row_counter[3]),
        .I3(img_row_counter[5]),
        .I4(\img_row_counter[6]_i_3_n_0 ),
        .O(\img_row_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7FF0800)) 
    \img_row_counter[6]_i_1 
       (.I0(img_row_counter[5]),
        .I1(img_row_counter[3]),
        .I2(\img_row_counter[6]_i_2_n_0 ),
        .I3(img_row_counter[4]),
        .I4(img_row_counter[6]),
        .I5(\img_row_counter[6]_i_3_n_0 ),
        .O(\img_row_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \img_row_counter[6]_i_2 
       (.I0(img_row_counter[1]),
        .I1(tvalid_buffer_i_2_n_0),
        .I2(img_row_counter[0]),
        .I3(img_row_counter10_in),
        .I4(tvalid_buffer_reg_n_0),
        .I5(img_row_counter[2]),
        .O(\img_row_counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000A200)) 
    \img_row_counter[6]_i_3 
       (.I0(fsm_img_processing_state),
        .I1(m_axis_tvalid),
        .I2(m_axis_tready),
        .I3(tvalid_buffer_reg_n_0),
        .I4(img_row_counter10_in),
        .I5(img_row_counter1),
        .O(\img_row_counter[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999099)) 
    \img_row_counter[7]_i_1 
       (.I0(\img_row_counter[7]_i_2_n_0 ),
        .I1(img_row_counter[7]),
        .I2(tvalid_buffer_i_2_n_0),
        .I3(tvalid_buffer_reg_n_0),
        .I4(img_row_counter10_in),
        .I5(img_row_counter1),
        .O(\img_row_counter[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \img_row_counter[7]_i_2 
       (.I0(img_row_counter[5]),
        .I1(img_row_counter[3]),
        .I2(\img_row_counter[6]_i_2_n_0 ),
        .I3(img_row_counter[4]),
        .I4(img_row_counter[6]),
        .O(\img_row_counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999099)) 
    \img_row_counter[8]_i_1 
       (.I0(\img_row_counter[8]_i_2_n_0 ),
        .I1(img_row_counter[8]),
        .I2(tvalid_buffer_i_2_n_0),
        .I3(tvalid_buffer_reg_n_0),
        .I4(img_row_counter10_in),
        .I5(img_row_counter1),
        .O(\img_row_counter[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4147)) 
    \img_row_counter[8]_i_10 
       (.I0(img_row_counter[1]),
        .I1(h_img_h[1]),
        .I2(h_img_h[0]),
        .I3(img_row_counter[0]),
        .O(\img_row_counter[8]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h90060990)) 
    \img_row_counter[8]_i_11 
       (.I0(h_img_h[7]),
        .I1(img_row_counter[7]),
        .I2(h_img_h[6]),
        .I3(\img_row_counter[8]_i_15_n_0 ),
        .I4(img_row_counter[6]),
        .O(\img_row_counter[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h90060990)) 
    \img_row_counter[8]_i_12 
       (.I0(h_img_h[5]),
        .I1(img_row_counter[5]),
        .I2(h_img_h[4]),
        .I3(\img_row_counter[8]_i_16_n_0 ),
        .I4(img_row_counter[4]),
        .O(\img_row_counter[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    \img_row_counter[8]_i_13 
       (.I0(h_img_h[3]),
        .I1(img_row_counter[3]),
        .I2(h_img_h[2]),
        .I3(h_img_h[1]),
        .I4(h_img_h[0]),
        .I5(img_row_counter[2]),
        .O(\img_row_counter[8]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0690)) 
    \img_row_counter[8]_i_14 
       (.I0(h_img_h[1]),
        .I1(img_row_counter[1]),
        .I2(h_img_h[0]),
        .I3(img_row_counter[0]),
        .O(\img_row_counter[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \img_row_counter[8]_i_15 
       (.I0(h_img_h[5]),
        .I1(h_img_h[3]),
        .I2(h_img_h[0]),
        .I3(h_img_h[1]),
        .I4(h_img_h[2]),
        .I5(h_img_h[4]),
        .O(\img_row_counter[8]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \img_row_counter[8]_i_16 
       (.I0(h_img_h[3]),
        .I1(h_img_h[0]),
        .I2(h_img_h[1]),
        .I3(h_img_h[2]),
        .O(\img_row_counter[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \img_row_counter[8]_i_2 
       (.I0(img_row_counter[6]),
        .I1(img_row_counter[4]),
        .I2(\img_row_counter[6]_i_2_n_0 ),
        .I3(img_row_counter[3]),
        .I4(img_row_counter[5]),
        .I5(img_row_counter[7]),
        .O(\img_row_counter[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55540001)) 
    \img_row_counter[8]_i_5 
       (.I0(img_row_counter[8]),
        .I1(\img_row_counter[8]_i_15_n_0 ),
        .I2(h_img_h[6]),
        .I3(h_img_h[7]),
        .I4(h_img_h[8]),
        .O(\img_row_counter[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    \img_row_counter[8]_i_6 
       (.I0(img_row_counter[8]),
        .I1(\img_row_counter[8]_i_15_n_0 ),
        .I2(h_img_h[6]),
        .I3(h_img_h[7]),
        .I4(h_img_h[8]),
        .O(\img_row_counter[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h5401D543)) 
    \img_row_counter[8]_i_7 
       (.I0(img_row_counter[7]),
        .I1(h_img_h[6]),
        .I2(\img_row_counter[8]_i_15_n_0 ),
        .I3(h_img_h[7]),
        .I4(img_row_counter[6]),
        .O(\img_row_counter[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h5401D543)) 
    \img_row_counter[8]_i_8 
       (.I0(img_row_counter[5]),
        .I1(h_img_h[4]),
        .I2(\img_row_counter[8]_i_16_n_0 ),
        .I3(h_img_h[5]),
        .I4(img_row_counter[4]),
        .O(\img_row_counter[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h55540001DDD54443)) 
    \img_row_counter[8]_i_9 
       (.I0(img_row_counter[3]),
        .I1(h_img_h[2]),
        .I2(h_img_h[1]),
        .I3(h_img_h[0]),
        .I4(h_img_h[3]),
        .I5(img_row_counter[2]),
        .O(\img_row_counter[8]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_row_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_row_counter[0]_i_1_n_0 ),
        .Q(img_row_counter[0]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_row_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_row_counter[1]_i_1_n_0 ),
        .Q(img_row_counter[1]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_row_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_row_counter[2]_i_1_n_0 ),
        .Q(img_row_counter[2]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_row_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_row_counter[3]_i_1_n_0 ),
        .Q(img_row_counter[3]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_row_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_row_counter[4]_i_1_n_0 ),
        .Q(img_row_counter[4]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_row_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_row_counter[5]_i_1_n_0 ),
        .Q(img_row_counter[5]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_row_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_row_counter[6]_i_1_n_0 ),
        .Q(img_row_counter[6]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_row_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_row_counter[7]_i_1_n_0 ),
        .Q(img_row_counter[7]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \img_row_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\img_row_counter[8]_i_1_n_0 ),
        .Q(img_row_counter[8]),
        .R(\img_col_counter[8]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \img_row_counter_reg[8]_i_3 
       (.CI(\img_row_counter_reg[8]_i_4_n_0 ),
        .CO({\NLW_img_row_counter_reg[8]_i_3_CO_UNCONNECTED [3:1],img_row_counter1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\img_row_counter[8]_i_5_n_0 }),
        .O(\NLW_img_row_counter_reg[8]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\img_row_counter[8]_i_6_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \img_row_counter_reg[8]_i_4 
       (.CI(1'b0),
        .CO({\img_row_counter_reg[8]_i_4_n_0 ,\img_row_counter_reg[8]_i_4_n_1 ,\img_row_counter_reg[8]_i_4_n_2 ,\img_row_counter_reg[8]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\img_row_counter[8]_i_7_n_0 ,\img_row_counter[8]_i_8_n_0 ,\img_row_counter[8]_i_9_n_0 ,\img_row_counter[8]_i_10_n_0 }),
        .O(\NLW_img_row_counter_reg[8]_i_4_O_UNCONNECTED [3:0]),
        .S({\img_row_counter[8]_i_11_n_0 ,\img_row_counter[8]_i_12_n_0 ,\img_row_counter[8]_i_13_n_0 ,\img_row_counter[8]_i_14_n_0 }));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_coeff[0][15]_i_1 
       (.I0(s_axi_ctrl_awaddr[5]),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(\reg_coeff[0][15]_i_2_n_0 ),
        .I4(\reg_coeff[0][15]_i_3_n_0 ),
        .I5(\reg_coeff[0][15]_i_4_n_0 ),
        .O(\reg_coeff[0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reg_coeff[0][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[7]),
        .I1(s_axi_ctrl_awaddr[8]),
        .I2(\reg_coeff[57][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[0][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_coeff[0][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[4]),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[0][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \reg_coeff[0][15]_i_4 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(s_axi_ctrl_wvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_awvalid),
        .I4(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .O(\reg_coeff[0][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_coeff[0][7]_i_1 
       (.I0(s_axi_ctrl_awaddr[5]),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(\reg_coeff[0][15]_i_2_n_0 ),
        .I4(\reg_coeff[0][15]_i_3_n_0 ),
        .I5(\reg_coeff[0][7]_i_2_n_0 ),
        .O(\reg_coeff[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \reg_coeff[0][7]_i_2 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(s_axi_ctrl_wvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_awvalid),
        .I4(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .O(\reg_coeff[0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_coeff[10][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[2][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[10][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_coeff[10][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[2][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[10][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \reg_coeff[11][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[11][15]_i_2_n_0 ),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[11][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \reg_coeff[11][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[5]),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[8]),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[57][15]_i_3_n_0 ),
        .O(\reg_coeff[11][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \reg_coeff[11][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[11][15]_i_2_n_0 ),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[11][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_coeff[12][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[12][15]_i_2_n_0 ),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff[12][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \reg_coeff[12][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[3]),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(\reg_coeff[57][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[8]),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[12][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_coeff[12][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[12][15]_i_2_n_0 ),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff[12][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_coeff[13][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[11][15]_i_2_n_0 ),
        .O(\reg_coeff[13][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_coeff[13][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[11][15]_i_2_n_0 ),
        .O(\reg_coeff[13][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_coeff[14][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[14][15]_i_2_n_0 ),
        .O(\reg_coeff[14][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[14][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[8]),
        .I1(s_axi_ctrl_awaddr[7]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[14][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_coeff[14][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[14][15]_i_2_n_0 ),
        .O(\reg_coeff[14][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[15][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[6]),
        .I5(\reg_coeff[15][15]_i_2_n_0 ),
        .O(\reg_coeff[15][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \reg_coeff[15][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[8]),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[57][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[15][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[15][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[6]),
        .I5(\reg_coeff[15][15]_i_2_n_0 ),
        .O(\reg_coeff[15][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \reg_coeff[16][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[16][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(\reg_coeff[2][15]_i_2_n_0 ),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[16][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_coeff[16][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[2]),
        .I1(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[16][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \reg_coeff[16][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[16][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(\reg_coeff[2][15]_i_2_n_0 ),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[16][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_coeff[17][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[1][15]_i_2_n_0 ),
        .O(\reg_coeff[17][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_coeff[17][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[1][15]_i_2_n_0 ),
        .O(\reg_coeff[17][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \reg_coeff[18][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[18][15]_i_2_n_0 ),
        .I4(\reg_coeff[2][15]_i_2_n_0 ),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[18][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_coeff[18][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[2]),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[18][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \reg_coeff[18][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[18][15]_i_2_n_0 ),
        .I4(\reg_coeff[2][15]_i_2_n_0 ),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[18][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_coeff[19][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[2][15]_i_2_n_0 ),
        .O(\reg_coeff[19][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_coeff[19][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[2][15]_i_2_n_0 ),
        .O(\reg_coeff[19][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \reg_coeff[1][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[1][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[1][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \reg_coeff[1][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[7]),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[8]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[1][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F8F0FFF0F0F3)) 
    \reg_coeff[1][15]_i_3 
       (.I0(\reg_coeff[1][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[8]),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[1][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_coeff[1][15]_i_4 
       (.I0(s_axi_ctrl_awaddr[4]),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[1][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \reg_coeff[1][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[1][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \reg_coeff[20][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[18][15]_i_2_n_0 ),
        .I4(\reg_coeff[0][15]_i_2_n_0 ),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[20][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \reg_coeff[20][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[18][15]_i_2_n_0 ),
        .I4(\reg_coeff[0][15]_i_2_n_0 ),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[20][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \reg_coeff[21][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(\reg_coeff[21][15]_i_2_n_0 ),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(\reg_coeff[21][15]_i_3_n_0 ),
        .I5(\reg_coeff[21][15]_i_4_n_0 ),
        .O(\reg_coeff[21][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_coeff[21][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[8]),
        .I1(\reg_coeff[57][15]_i_3_n_0 ),
        .O(\reg_coeff[21][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_coeff[21][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[9]),
        .I1(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[21][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \reg_coeff[21][15]_i_4 
       (.I0(\reg_coeff[1][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[7]),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[21][15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \reg_coeff[21][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(\reg_coeff[21][15]_i_2_n_0 ),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(\reg_coeff[21][15]_i_3_n_0 ),
        .I5(\reg_coeff[21][15]_i_4_n_0 ),
        .O(\reg_coeff[21][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[22][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[22][15]_i_2_n_0 ),
        .O(\reg_coeff[22][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \reg_coeff[22][15]_i_2 
       (.I0(\reg_coeff[21][15]_i_4_n_0 ),
        .I1(\reg_coeff[57][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[8]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[9]),
        .I5(\reg_coeff[22][15]_i_3_n_0 ),
        .O(\reg_coeff[22][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_coeff[22][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[6]),
        .I1(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[22][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[22][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[22][15]_i_2_n_0 ),
        .O(\reg_coeff[22][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \reg_coeff[23][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[8]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(\reg_coeff[7][15]_i_2_n_0 ),
        .O(\reg_coeff[23][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \reg_coeff[23][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[8]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(\reg_coeff[7][15]_i_2_n_0 ),
        .O(\reg_coeff[23][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[24][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[24][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff[24][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[24][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[3]),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[24][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[24][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[24][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff[24][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[25][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[25][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[25][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \reg_coeff[25][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[6]),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(\reg_coeff[57][15]_i_3_n_0 ),
        .O(\reg_coeff[25][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[25][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[25][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[25][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[26][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[26][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[26][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \reg_coeff[26][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[8]),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[7]),
        .O(\reg_coeff[26][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[26][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[26][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[26][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[27][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[27][15]_i_2_n_0 ),
        .O(\reg_coeff[27][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \reg_coeff[27][15]_i_2 
       (.I0(\reg_coeff[27][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[8]),
        .I4(s_axi_ctrl_awaddr[5]),
        .I5(s_axi_ctrl_awaddr[9]),
        .O(\reg_coeff[27][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFFFFFFFFFF)) 
    \reg_coeff[27][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[4]),
        .I1(\reg_coeff[38][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[27][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[27][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[27][15]_i_2_n_0 ),
        .O(\reg_coeff[27][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \reg_coeff[28][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(\reg_coeff[24][15]_i_2_n_0 ),
        .O(\reg_coeff[28][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \reg_coeff[28][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(\reg_coeff[24][15]_i_2_n_0 ),
        .O(\reg_coeff[28][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[29][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(\reg_coeff[29][15]_i_2_n_0 ),
        .O(\reg_coeff[29][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \reg_coeff[29][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[2]),
        .I1(s_axi_ctrl_awaddr[8]),
        .I2(\reg_coeff[57][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[29][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[29][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(\reg_coeff[29][15]_i_2_n_0 ),
        .O(\reg_coeff[29][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \reg_coeff[2][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(\reg_coeff[2][15]_i_2_n_0 ),
        .I5(\reg_coeff[2][15]_i_3_n_0 ),
        .O(\reg_coeff[2][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[2][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[4]),
        .I1(s_axi_ctrl_awaddr[8]),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[7]),
        .O(\reg_coeff[2][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_coeff[2][15]_i_3 
       (.I0(\reg_coeff[1][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[2][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \reg_coeff[2][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(\reg_coeff[2][15]_i_2_n_0 ),
        .I5(\reg_coeff[2][15]_i_3_n_0 ),
        .O(\reg_coeff[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \reg_coeff[30][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[30][15]_i_2_n_0 ),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[30][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \reg_coeff[30][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[5]),
        .I1(s_axi_ctrl_awaddr[7]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[30][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \reg_coeff[30][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[30][15]_i_2_n_0 ),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[30][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[31][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[31][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[7]),
        .I4(\reg_coeff[31][15]_i_3_n_0 ),
        .I5(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[31][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_coeff[31][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[3]),
        .I1(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff[31][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_coeff[31][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[5]),
        .I1(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[31][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[31][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[31][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[7]),
        .I4(\reg_coeff[31][15]_i_3_n_0 ),
        .I5(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[31][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \reg_coeff[32][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[26][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[32][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \reg_coeff[32][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[26][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[32][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[33][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[33][15]_i_2_n_0 ),
        .O(\reg_coeff[33][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \reg_coeff[33][15]_i_2 
       (.I0(\reg_coeff[5][15]_i_2_n_0 ),
        .I1(\reg_coeff[33][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[57][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[33][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[33][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[3]),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[33][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[33][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[33][15]_i_2_n_0 ),
        .O(\reg_coeff[33][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[34][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[26][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[34][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[34][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[26][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[34][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[35][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[35][15]_i_2_n_0 ),
        .O(\reg_coeff[35][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \reg_coeff[35][15]_i_2 
       (.I0(\reg_coeff[0][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(\reg_coeff[35][15]_i_3_n_0 ),
        .O(\reg_coeff[35][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[35][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[9]),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(\reg_coeff[57][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[35][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[35][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[35][15]_i_2_n_0 ),
        .O(\reg_coeff[35][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[36][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[8]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(\reg_coeff[21][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(\reg_coeff[36][15]_i_2_n_0 ),
        .O(\reg_coeff[36][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \reg_coeff[36][15]_i_2 
       (.I0(\reg_coeff[1][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[36][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[36][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[8]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(\reg_coeff[21][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(\reg_coeff[36][15]_i_2_n_0 ),
        .O(\reg_coeff[36][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[37][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[37][15]_i_2_n_0 ),
        .O(\reg_coeff[37][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \reg_coeff[37][15]_i_2 
       (.I0(\reg_coeff[1][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(\reg_coeff[37][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[6]),
        .I5(\reg_coeff[21][15]_i_2_n_0 ),
        .O(\reg_coeff[37][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \reg_coeff[37][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[4]),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[7]),
        .O(\reg_coeff[37][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[37][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[37][15]_i_2_n_0 ),
        .O(\reg_coeff[37][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \reg_coeff[38][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(\reg_coeff[31][15]_i_2_n_0 ),
        .I4(\reg_coeff[38][15]_i_2_n_0 ),
        .I5(\reg_coeff[18][15]_i_2_n_0 ),
        .O(\reg_coeff[38][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \reg_coeff[38][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[8]),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[38][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \reg_coeff[38][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(\reg_coeff[31][15]_i_2_n_0 ),
        .I4(\reg_coeff[38][15]_i_2_n_0 ),
        .I5(\reg_coeff[18][15]_i_2_n_0 ),
        .O(\reg_coeff[38][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_coeff[39][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(\reg_coeff[7][15]_i_2_n_0 ),
        .I4(\reg_coeff[38][15]_i_2_n_0 ),
        .O(\reg_coeff[39][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \reg_coeff[39][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(\reg_coeff[7][15]_i_2_n_0 ),
        .I4(\reg_coeff[38][15]_i_2_n_0 ),
        .O(\reg_coeff[39][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_coeff[3][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[6]),
        .I5(\reg_coeff[1][15]_i_2_n_0 ),
        .O(\reg_coeff[3][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_coeff[3][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[6]),
        .I5(\reg_coeff[1][15]_i_2_n_0 ),
        .O(\reg_coeff[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \reg_coeff[40][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[26][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[40][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \reg_coeff[40][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[26][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[40][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[41][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[7]),
        .I4(s_axi_ctrl_awaddr[6]),
        .I5(\reg_coeff[29][15]_i_2_n_0 ),
        .O(\reg_coeff[41][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[41][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[7]),
        .I4(s_axi_ctrl_awaddr[6]),
        .I5(\reg_coeff[29][15]_i_2_n_0 ),
        .O(\reg_coeff[41][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \reg_coeff[42][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[30][15]_i_2_n_0 ),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[42][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \reg_coeff[42][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[30][15]_i_2_n_0 ),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[42][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[43][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[7]),
        .I4(s_axi_ctrl_awaddr[6]),
        .I5(\reg_coeff[15][15]_i_2_n_0 ),
        .O(\reg_coeff[43][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[43][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[7]),
        .I4(s_axi_ctrl_awaddr[6]),
        .I5(\reg_coeff[15][15]_i_2_n_0 ),
        .O(\reg_coeff[43][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[44][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[30][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[44][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[44][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[30][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[44][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[45][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[8]),
        .I4(\reg_coeff[45][15]_i_2_n_0 ),
        .I5(\reg_coeff[45][15]_i_3_n_0 ),
        .O(\reg_coeff[45][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_coeff[45][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[7]),
        .I1(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[45][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \reg_coeff[45][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[4]),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[45][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[45][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[8]),
        .I4(\reg_coeff[45][15]_i_2_n_0 ),
        .I5(\reg_coeff[45][15]_i_3_n_0 ),
        .O(\reg_coeff[45][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[46][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[46][15]_i_2_n_0 ),
        .O(\reg_coeff[46][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \reg_coeff[46][15]_i_2 
       (.I0(\reg_coeff[18][15]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(\reg_coeff[47][15]_i_2_n_0 ),
        .O(\reg_coeff[46][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[46][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[46][15]_i_2_n_0 ),
        .O(\reg_coeff[46][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[47][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[47][15]_i_2_n_0 ),
        .I2(\reg_coeff[45][15]_i_2_n_0 ),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(\reg_coeff[9][15]_i_2_n_0 ),
        .O(\reg_coeff[47][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[47][15]_i_2 
       (.I0(\reg_coeff[57][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[47][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[47][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[47][15]_i_2_n_0 ),
        .I2(\reg_coeff[45][15]_i_2_n_0 ),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(\reg_coeff[9][15]_i_2_n_0 ),
        .O(\reg_coeff[47][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[48][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[26][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[48][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[48][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[26][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[48][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \reg_coeff[49][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(\reg_coeff[49][15]_i_2_n_0 ),
        .I4(\reg_coeff[49][15]_i_3_n_0 ),
        .O(\reg_coeff[49][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[49][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[4]),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(\reg_coeff[57][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[49][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \reg_coeff[49][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[6]),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[49][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \reg_coeff[49][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(\reg_coeff[49][15]_i_2_n_0 ),
        .I4(\reg_coeff[49][15]_i_3_n_0 ),
        .O(\reg_coeff[49][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[4][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[4][15]_i_2_n_0 ),
        .O(\reg_coeff[4][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \reg_coeff[4][15]_i_2 
       (.I0(\reg_coeff[0][15]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[4][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[4][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[4][15]_i_2_n_0 ),
        .O(\reg_coeff[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[50][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[50][15]_i_2_n_0 ),
        .O(\reg_coeff[50][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \reg_coeff[50][15]_i_2 
       (.I0(\reg_coeff[18][15]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[7]),
        .I4(s_axi_ctrl_awaddr[5]),
        .I5(\reg_coeff[49][15]_i_2_n_0 ),
        .O(\reg_coeff[50][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[50][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[50][15]_i_2_n_0 ),
        .O(\reg_coeff[50][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[51][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[45][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(\reg_coeff[49][15]_i_2_n_0 ),
        .I5(\reg_coeff[9][15]_i_2_n_0 ),
        .O(\reg_coeff[51][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[51][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[45][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(\reg_coeff[49][15]_i_2_n_0 ),
        .I5(\reg_coeff[9][15]_i_2_n_0 ),
        .O(\reg_coeff[51][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[52][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[52][15]_i_2_n_0 ),
        .O(\reg_coeff[52][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \reg_coeff[52][15]_i_2 
       (.I0(\reg_coeff[18][15]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(\reg_coeff[53][15]_i_2_n_0 ),
        .O(\reg_coeff[52][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[52][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[52][15]_i_2_n_0 ),
        .O(\reg_coeff[52][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[53][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[53][15]_i_2_n_0 ),
        .I2(\reg_coeff[45][15]_i_2_n_0 ),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(\reg_coeff[9][15]_i_2_n_0 ),
        .O(\reg_coeff[53][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[53][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[3]),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(\reg_coeff[57][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[53][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[53][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[53][15]_i_2_n_0 ),
        .I2(\reg_coeff[45][15]_i_2_n_0 ),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(\reg_coeff[9][15]_i_2_n_0 ),
        .O(\reg_coeff[53][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[54][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[54][15]_i_2_n_0 ),
        .O(\reg_coeff[54][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \reg_coeff[54][15]_i_2 
       (.I0(\reg_coeff[9][15]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[7]),
        .I4(s_axi_ctrl_awaddr[5]),
        .I5(\reg_coeff[54][15]_i_3_n_0 ),
        .O(\reg_coeff[54][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[54][15]_i_3 
       (.I0(\reg_coeff[57][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[8]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[9]),
        .O(\reg_coeff[54][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[54][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[54][15]_i_2_n_0 ),
        .O(\reg_coeff[54][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_coeff[55][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[7]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[7][15]_i_2_n_0 ),
        .O(\reg_coeff[55][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_coeff[55][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[7]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[7][15]_i_2_n_0 ),
        .O(\reg_coeff[55][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[56][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[56][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff[56][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[56][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[9]),
        .I1(s_axi_ctrl_awaddr[7]),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[56][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[56][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[56][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff[56][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[57][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[57][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[57][15]_i_3_n_0 ),
        .O(\reg_coeff[57][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \reg_coeff[57][15]_i_2 
       (.I0(\reg_coeff[1][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[7]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(s_axi_ctrl_awaddr[9]),
        .O(\reg_coeff[57][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010001000101010)) 
    \reg_coeff[57][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[5]),
        .I1(s_axi_ctrl_awaddr[7]),
        .I2(\reg_coeff[38][15]_i_2_n_0 ),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[57][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[57][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[57][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[57][15]_i_3_n_0 ),
        .O(\reg_coeff[57][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[58][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[58][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[58][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \reg_coeff[58][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[7]),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[58][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[58][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[58][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[58][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[59][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[59][15]_i_2_n_0 ),
        .O(\reg_coeff[59][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \reg_coeff[59][15]_i_2 
       (.I0(\reg_coeff[61][15]_i_2_n_0 ),
        .I1(\reg_coeff[57][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[9]),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff[59][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[59][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[59][15]_i_2_n_0 ),
        .O(\reg_coeff[59][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \reg_coeff[5][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[0][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(\reg_coeff[5][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[5][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_coeff[5][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[6]),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[5][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \reg_coeff[5][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[0][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(\reg_coeff[5][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[60][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[56][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[60][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[60][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[56][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[60][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \reg_coeff[61][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[61][15]_i_2_n_0 ),
        .O(\reg_coeff[61][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_coeff[61][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[6]),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[7]),
        .O(\reg_coeff[61][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \reg_coeff[61][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[61][15]_i_2_n_0 ),
        .O(\reg_coeff[61][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[62][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[5]),
        .I5(\reg_coeff[6][15]_i_2_n_0 ),
        .O(\reg_coeff[62][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[62][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[5]),
        .I5(\reg_coeff[6][15]_i_2_n_0 ),
        .O(\reg_coeff[62][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_coeff[63][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[61][15]_i_2_n_0 ),
        .O(\reg_coeff[63][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_coeff[63][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[61][15]_i_2_n_0 ),
        .O(\reg_coeff[63][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \reg_coeff[64][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[58][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[64][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \reg_coeff[64][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[58][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[64][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \reg_coeff[65][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[57][15]_i_2_n_0 ),
        .O(\reg_coeff[65][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \reg_coeff[65][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[57][15]_i_2_n_0 ),
        .O(\reg_coeff[65][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[66][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[58][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[66][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[66][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[58][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[66][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[67][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[67][15]_i_2_n_0 ),
        .O(\reg_coeff[67][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \reg_coeff[67][15]_i_2 
       (.I0(\reg_coeff[5][15]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(\reg_coeff[67][15]_i_3_n_0 ),
        .O(\reg_coeff[67][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \reg_coeff[67][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[3]),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[67][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[67][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[67][15]_i_2_n_0 ),
        .O(\reg_coeff[67][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \reg_coeff[68][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[56][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[8]),
        .I3(\reg_coeff[5][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[68][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \reg_coeff[68][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[56][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[8]),
        .I3(\reg_coeff[5][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[4]),
        .I5(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[68][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[69][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[69][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[21][15]_i_4_n_0 ),
        .O(\reg_coeff[69][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_coeff[69][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[8]),
        .I1(s_axi_ctrl_awaddr[9]),
        .O(\reg_coeff[69][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[69][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[69][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[21][15]_i_4_n_0 ),
        .O(\reg_coeff[69][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[6][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[6][15]_i_2_n_0 ),
        .O(\reg_coeff[6][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \reg_coeff[6][15]_i_2 
       (.I0(\reg_coeff[1][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[6][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[6][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[6][15]_i_2_n_0 ),
        .O(\reg_coeff[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[70][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[69][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[21][15]_i_4_n_0 ),
        .O(\reg_coeff[70][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[70][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[69][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[21][15]_i_4_n_0 ),
        .O(\reg_coeff[70][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[71][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[7]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[7][15]_i_2_n_0 ),
        .O(\reg_coeff[71][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[71][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[7]),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[7][15]_i_2_n_0 ),
        .O(\reg_coeff[71][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \reg_coeff[72][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[58][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[72][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \reg_coeff[72][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[58][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(\reg_coeff[1][15]_i_3_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[5]),
        .O(\reg_coeff[72][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[73][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[73][15]_i_2_n_0 ),
        .O(\reg_coeff[73][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \reg_coeff[73][15]_i_2 
       (.I0(\reg_coeff[9][15]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(\reg_coeff[21][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[73][15]_i_3_n_0 ),
        .O(\reg_coeff[73][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_coeff[73][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[5]),
        .I1(s_axi_ctrl_awaddr[7]),
        .O(\reg_coeff[73][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[73][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[73][15]_i_2_n_0 ),
        .O(\reg_coeff[73][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \reg_coeff[74][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[74][15]_i_2_n_0 ),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[74][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \reg_coeff[74][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[5]),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[74][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \reg_coeff[74][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[74][15]_i_2_n_0 ),
        .I2(\reg_coeff[1][15]_i_3_n_0 ),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[74][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[75][15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[1]),
        .I5(\reg_coeff[75][15]_i_2_n_0 ),
        .O(\reg_coeff[75][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \reg_coeff[75][15]_i_2 
       (.I0(\reg_coeff[7][15]_i_3_n_0 ),
        .I1(\reg_coeff[22][15]_i_3_n_0 ),
        .I2(\reg_coeff[69][15]_i_2_n_0 ),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff[75][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8000000)) 
    \reg_coeff[75][7]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .I4(s_axi_ctrl_wstrb[0]),
        .I5(\reg_coeff[75][15]_i_2_n_0 ),
        .O(\reg_coeff[75][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[76][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[76][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[45][15]_i_3_n_0 ),
        .O(\reg_coeff[76][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_coeff[76][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[5]),
        .I1(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[76][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \reg_coeff[76][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[76][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[45][15]_i_3_n_0 ),
        .O(\reg_coeff[76][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[77][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[69][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[77][15]_i_2_n_0 ),
        .O(\reg_coeff[77][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \reg_coeff[77][15]_i_2 
       (.I0(\reg_coeff[1][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[7]),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[77][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[77][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[69][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[2]),
        .I5(\reg_coeff[77][15]_i_2_n_0 ),
        .O(\reg_coeff[77][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[78][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[69][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[77][15]_i_2_n_0 ),
        .O(\reg_coeff[78][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \reg_coeff[78][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(\reg_coeff[69][15]_i_2_n_0 ),
        .I4(s_axi_ctrl_awaddr[3]),
        .I5(\reg_coeff[77][15]_i_2_n_0 ),
        .O(\reg_coeff[78][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[79][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(\reg_coeff[79][15]_i_2_n_0 ),
        .I5(\reg_coeff[9][15]_i_2_n_0 ),
        .O(\reg_coeff[79][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \reg_coeff[79][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[4]),
        .I1(s_axi_ctrl_awaddr[3]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff[79][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[79][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[7]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(\reg_coeff[79][15]_i_2_n_0 ),
        .I5(\reg_coeff[9][15]_i_2_n_0 ),
        .O(\reg_coeff[79][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[7][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[7][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[7][15]_i_3_n_0 ),
        .O(\reg_coeff[7][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \reg_coeff[7][15]_i_2 
       (.I0(s_axi_ctrl_awaddr[4]),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[7][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_coeff[7][15]_i_3 
       (.I0(s_axi_ctrl_awaddr[7]),
        .I1(\reg_coeff[1][15]_i_3_n_0 ),
        .O(\reg_coeff[7][15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \reg_coeff[7][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[7][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[9]),
        .I4(s_axi_ctrl_awaddr[8]),
        .I5(\reg_coeff[7][15]_i_3_n_0 ),
        .O(\reg_coeff[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[80][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[58][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[80][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \reg_coeff[80][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[58][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[1][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_coeff[80][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \reg_coeff[8][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(\reg_coeff[0][15]_i_2_n_0 ),
        .I5(\reg_coeff[0][15]_i_3_n_0 ),
        .O(\reg_coeff[8][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \reg_coeff[8][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[2]),
        .I2(s_axi_ctrl_awaddr[5]),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(\reg_coeff[0][15]_i_2_n_0 ),
        .I5(\reg_coeff[0][15]_i_3_n_0 ),
        .O(\reg_coeff[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_coeff[9][15]_i_1 
       (.I0(\reg_coeff[0][15]_i_4_n_0 ),
        .I1(\reg_coeff[9][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[2][15]_i_2_n_0 ),
        .I5(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[9][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_coeff[9][15]_i_2 
       (.I0(\reg_coeff[1][15]_i_3_n_0 ),
        .I1(s_axi_ctrl_awaddr[6]),
        .O(\reg_coeff[9][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_coeff[9][7]_i_1 
       (.I0(\reg_coeff[0][7]_i_2_n_0 ),
        .I1(\reg_coeff[9][15]_i_2_n_0 ),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[5]),
        .I4(\reg_coeff[2][15]_i_2_n_0 ),
        .I5(s_axi_ctrl_awaddr[2]),
        .O(\reg_coeff[9][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][0] 
       (.C(clk),
        .CE(\reg_coeff[0][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[0] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][10] 
       (.C(clk),
        .CE(\reg_coeff[0][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[0] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][11] 
       (.C(clk),
        .CE(\reg_coeff[0][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[0] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][12] 
       (.C(clk),
        .CE(\reg_coeff[0][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[0] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][13] 
       (.C(clk),
        .CE(\reg_coeff[0][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[0] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][14] 
       (.C(clk),
        .CE(\reg_coeff[0][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[0] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][15] 
       (.C(clk),
        .CE(\reg_coeff[0][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[0] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][1] 
       (.C(clk),
        .CE(\reg_coeff[0][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[0] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][2] 
       (.C(clk),
        .CE(\reg_coeff[0][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[0] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][3] 
       (.C(clk),
        .CE(\reg_coeff[0][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[0] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][4] 
       (.C(clk),
        .CE(\reg_coeff[0][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[0] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][5] 
       (.C(clk),
        .CE(\reg_coeff[0][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[0] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][6] 
       (.C(clk),
        .CE(\reg_coeff[0][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[0] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][7] 
       (.C(clk),
        .CE(\reg_coeff[0][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[0] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][8] 
       (.C(clk),
        .CE(\reg_coeff[0][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[0] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[0][9] 
       (.C(clk),
        .CE(\reg_coeff[0][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[0] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][0] 
       (.C(clk),
        .CE(\reg_coeff[10][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[10] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][10] 
       (.C(clk),
        .CE(\reg_coeff[10][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[10] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][11] 
       (.C(clk),
        .CE(\reg_coeff[10][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[10] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][12] 
       (.C(clk),
        .CE(\reg_coeff[10][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[10] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][13] 
       (.C(clk),
        .CE(\reg_coeff[10][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[10] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][14] 
       (.C(clk),
        .CE(\reg_coeff[10][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[10] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][15] 
       (.C(clk),
        .CE(\reg_coeff[10][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[10] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][1] 
       (.C(clk),
        .CE(\reg_coeff[10][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[10] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][2] 
       (.C(clk),
        .CE(\reg_coeff[10][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[10] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][3] 
       (.C(clk),
        .CE(\reg_coeff[10][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[10] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][4] 
       (.C(clk),
        .CE(\reg_coeff[10][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[10] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][5] 
       (.C(clk),
        .CE(\reg_coeff[10][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[10] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][6] 
       (.C(clk),
        .CE(\reg_coeff[10][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[10] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][7] 
       (.C(clk),
        .CE(\reg_coeff[10][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[10] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][8] 
       (.C(clk),
        .CE(\reg_coeff[10][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[10] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[10][9] 
       (.C(clk),
        .CE(\reg_coeff[10][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[10] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][0] 
       (.C(clk),
        .CE(\reg_coeff[11][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[11] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][10] 
       (.C(clk),
        .CE(\reg_coeff[11][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[11] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][11] 
       (.C(clk),
        .CE(\reg_coeff[11][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[11] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][12] 
       (.C(clk),
        .CE(\reg_coeff[11][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[11] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][13] 
       (.C(clk),
        .CE(\reg_coeff[11][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[11] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][14] 
       (.C(clk),
        .CE(\reg_coeff[11][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[11] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][15] 
       (.C(clk),
        .CE(\reg_coeff[11][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[11] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][1] 
       (.C(clk),
        .CE(\reg_coeff[11][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[11] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][2] 
       (.C(clk),
        .CE(\reg_coeff[11][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[11] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][3] 
       (.C(clk),
        .CE(\reg_coeff[11][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[11] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][4] 
       (.C(clk),
        .CE(\reg_coeff[11][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[11] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][5] 
       (.C(clk),
        .CE(\reg_coeff[11][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[11] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][6] 
       (.C(clk),
        .CE(\reg_coeff[11][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[11] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][7] 
       (.C(clk),
        .CE(\reg_coeff[11][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[11] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][8] 
       (.C(clk),
        .CE(\reg_coeff[11][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[11] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[11][9] 
       (.C(clk),
        .CE(\reg_coeff[11][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[11] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][0] 
       (.C(clk),
        .CE(\reg_coeff[12][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[12] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][10] 
       (.C(clk),
        .CE(\reg_coeff[12][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[12] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][11] 
       (.C(clk),
        .CE(\reg_coeff[12][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[12] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][12] 
       (.C(clk),
        .CE(\reg_coeff[12][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[12] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][13] 
       (.C(clk),
        .CE(\reg_coeff[12][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[12] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][14] 
       (.C(clk),
        .CE(\reg_coeff[12][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[12] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][15] 
       (.C(clk),
        .CE(\reg_coeff[12][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[12] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][1] 
       (.C(clk),
        .CE(\reg_coeff[12][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[12] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][2] 
       (.C(clk),
        .CE(\reg_coeff[12][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[12] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][3] 
       (.C(clk),
        .CE(\reg_coeff[12][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[12] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][4] 
       (.C(clk),
        .CE(\reg_coeff[12][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[12] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][5] 
       (.C(clk),
        .CE(\reg_coeff[12][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[12] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][6] 
       (.C(clk),
        .CE(\reg_coeff[12][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[12] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][7] 
       (.C(clk),
        .CE(\reg_coeff[12][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[12] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][8] 
       (.C(clk),
        .CE(\reg_coeff[12][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[12] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[12][9] 
       (.C(clk),
        .CE(\reg_coeff[12][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[12] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][0] 
       (.C(clk),
        .CE(\reg_coeff[13][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[13] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][10] 
       (.C(clk),
        .CE(\reg_coeff[13][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[13] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][11] 
       (.C(clk),
        .CE(\reg_coeff[13][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[13] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][12] 
       (.C(clk),
        .CE(\reg_coeff[13][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[13] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][13] 
       (.C(clk),
        .CE(\reg_coeff[13][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[13] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][14] 
       (.C(clk),
        .CE(\reg_coeff[13][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[13] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][15] 
       (.C(clk),
        .CE(\reg_coeff[13][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[13] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][1] 
       (.C(clk),
        .CE(\reg_coeff[13][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[13] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][2] 
       (.C(clk),
        .CE(\reg_coeff[13][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[13] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][3] 
       (.C(clk),
        .CE(\reg_coeff[13][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[13] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][4] 
       (.C(clk),
        .CE(\reg_coeff[13][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[13] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][5] 
       (.C(clk),
        .CE(\reg_coeff[13][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[13] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][6] 
       (.C(clk),
        .CE(\reg_coeff[13][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[13] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][7] 
       (.C(clk),
        .CE(\reg_coeff[13][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[13] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][8] 
       (.C(clk),
        .CE(\reg_coeff[13][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[13] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[13][9] 
       (.C(clk),
        .CE(\reg_coeff[13][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[13] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][0] 
       (.C(clk),
        .CE(\reg_coeff[14][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[14] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][10] 
       (.C(clk),
        .CE(\reg_coeff[14][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[14] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][11] 
       (.C(clk),
        .CE(\reg_coeff[14][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[14] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][12] 
       (.C(clk),
        .CE(\reg_coeff[14][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[14] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][13] 
       (.C(clk),
        .CE(\reg_coeff[14][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[14] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][14] 
       (.C(clk),
        .CE(\reg_coeff[14][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[14] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][15] 
       (.C(clk),
        .CE(\reg_coeff[14][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[14] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][1] 
       (.C(clk),
        .CE(\reg_coeff[14][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[14] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][2] 
       (.C(clk),
        .CE(\reg_coeff[14][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[14] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][3] 
       (.C(clk),
        .CE(\reg_coeff[14][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[14] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][4] 
       (.C(clk),
        .CE(\reg_coeff[14][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[14] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][5] 
       (.C(clk),
        .CE(\reg_coeff[14][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[14] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][6] 
       (.C(clk),
        .CE(\reg_coeff[14][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[14] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][7] 
       (.C(clk),
        .CE(\reg_coeff[14][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[14] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][8] 
       (.C(clk),
        .CE(\reg_coeff[14][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[14] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[14][9] 
       (.C(clk),
        .CE(\reg_coeff[14][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[14] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][0] 
       (.C(clk),
        .CE(\reg_coeff[15][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[15] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][10] 
       (.C(clk),
        .CE(\reg_coeff[15][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[15] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][11] 
       (.C(clk),
        .CE(\reg_coeff[15][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[15] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][12] 
       (.C(clk),
        .CE(\reg_coeff[15][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[15] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][13] 
       (.C(clk),
        .CE(\reg_coeff[15][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[15] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][14] 
       (.C(clk),
        .CE(\reg_coeff[15][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[15] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][15] 
       (.C(clk),
        .CE(\reg_coeff[15][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[15] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][1] 
       (.C(clk),
        .CE(\reg_coeff[15][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[15] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][2] 
       (.C(clk),
        .CE(\reg_coeff[15][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[15] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][3] 
       (.C(clk),
        .CE(\reg_coeff[15][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[15] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][4] 
       (.C(clk),
        .CE(\reg_coeff[15][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[15] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][5] 
       (.C(clk),
        .CE(\reg_coeff[15][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[15] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][6] 
       (.C(clk),
        .CE(\reg_coeff[15][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[15] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][7] 
       (.C(clk),
        .CE(\reg_coeff[15][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[15] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][8] 
       (.C(clk),
        .CE(\reg_coeff[15][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[15] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[15][9] 
       (.C(clk),
        .CE(\reg_coeff[15][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[15] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][0] 
       (.C(clk),
        .CE(\reg_coeff[16][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[16] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][10] 
       (.C(clk),
        .CE(\reg_coeff[16][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[16] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][11] 
       (.C(clk),
        .CE(\reg_coeff[16][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[16] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][12] 
       (.C(clk),
        .CE(\reg_coeff[16][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[16] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][13] 
       (.C(clk),
        .CE(\reg_coeff[16][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[16] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][14] 
       (.C(clk),
        .CE(\reg_coeff[16][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[16] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][15] 
       (.C(clk),
        .CE(\reg_coeff[16][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[16] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][1] 
       (.C(clk),
        .CE(\reg_coeff[16][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[16] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][2] 
       (.C(clk),
        .CE(\reg_coeff[16][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[16] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][3] 
       (.C(clk),
        .CE(\reg_coeff[16][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[16] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][4] 
       (.C(clk),
        .CE(\reg_coeff[16][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[16] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][5] 
       (.C(clk),
        .CE(\reg_coeff[16][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[16] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][6] 
       (.C(clk),
        .CE(\reg_coeff[16][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[16] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][7] 
       (.C(clk),
        .CE(\reg_coeff[16][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[16] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][8] 
       (.C(clk),
        .CE(\reg_coeff[16][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[16] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[16][9] 
       (.C(clk),
        .CE(\reg_coeff[16][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[16] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][0] 
       (.C(clk),
        .CE(\reg_coeff[17][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[17] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][10] 
       (.C(clk),
        .CE(\reg_coeff[17][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[17] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][11] 
       (.C(clk),
        .CE(\reg_coeff[17][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[17] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][12] 
       (.C(clk),
        .CE(\reg_coeff[17][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[17] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][13] 
       (.C(clk),
        .CE(\reg_coeff[17][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[17] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][14] 
       (.C(clk),
        .CE(\reg_coeff[17][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[17] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][15] 
       (.C(clk),
        .CE(\reg_coeff[17][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[17] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][1] 
       (.C(clk),
        .CE(\reg_coeff[17][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[17] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][2] 
       (.C(clk),
        .CE(\reg_coeff[17][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[17] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][3] 
       (.C(clk),
        .CE(\reg_coeff[17][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[17] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][4] 
       (.C(clk),
        .CE(\reg_coeff[17][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[17] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][5] 
       (.C(clk),
        .CE(\reg_coeff[17][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[17] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][6] 
       (.C(clk),
        .CE(\reg_coeff[17][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[17] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][7] 
       (.C(clk),
        .CE(\reg_coeff[17][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[17] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][8] 
       (.C(clk),
        .CE(\reg_coeff[17][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[17] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[17][9] 
       (.C(clk),
        .CE(\reg_coeff[17][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[17] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][0] 
       (.C(clk),
        .CE(\reg_coeff[18][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[18] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][10] 
       (.C(clk),
        .CE(\reg_coeff[18][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[18] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][11] 
       (.C(clk),
        .CE(\reg_coeff[18][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[18] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][12] 
       (.C(clk),
        .CE(\reg_coeff[18][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[18] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][13] 
       (.C(clk),
        .CE(\reg_coeff[18][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[18] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][14] 
       (.C(clk),
        .CE(\reg_coeff[18][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[18] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][15] 
       (.C(clk),
        .CE(\reg_coeff[18][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[18] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][1] 
       (.C(clk),
        .CE(\reg_coeff[18][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[18] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][2] 
       (.C(clk),
        .CE(\reg_coeff[18][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[18] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][3] 
       (.C(clk),
        .CE(\reg_coeff[18][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[18] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][4] 
       (.C(clk),
        .CE(\reg_coeff[18][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[18] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][5] 
       (.C(clk),
        .CE(\reg_coeff[18][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[18] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][6] 
       (.C(clk),
        .CE(\reg_coeff[18][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[18] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][7] 
       (.C(clk),
        .CE(\reg_coeff[18][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[18] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][8] 
       (.C(clk),
        .CE(\reg_coeff[18][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[18] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[18][9] 
       (.C(clk),
        .CE(\reg_coeff[18][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[18] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][0] 
       (.C(clk),
        .CE(\reg_coeff[19][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[19] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][10] 
       (.C(clk),
        .CE(\reg_coeff[19][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[19] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][11] 
       (.C(clk),
        .CE(\reg_coeff[19][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[19] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][12] 
       (.C(clk),
        .CE(\reg_coeff[19][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[19] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][13] 
       (.C(clk),
        .CE(\reg_coeff[19][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[19] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][14] 
       (.C(clk),
        .CE(\reg_coeff[19][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[19] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][15] 
       (.C(clk),
        .CE(\reg_coeff[19][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[19] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][1] 
       (.C(clk),
        .CE(\reg_coeff[19][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[19] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][2] 
       (.C(clk),
        .CE(\reg_coeff[19][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[19] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][3] 
       (.C(clk),
        .CE(\reg_coeff[19][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[19] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][4] 
       (.C(clk),
        .CE(\reg_coeff[19][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[19] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][5] 
       (.C(clk),
        .CE(\reg_coeff[19][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[19] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][6] 
       (.C(clk),
        .CE(\reg_coeff[19][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[19] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][7] 
       (.C(clk),
        .CE(\reg_coeff[19][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[19] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][8] 
       (.C(clk),
        .CE(\reg_coeff[19][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[19] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[19][9] 
       (.C(clk),
        .CE(\reg_coeff[19][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[19] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][0] 
       (.C(clk),
        .CE(\reg_coeff[1][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[1] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][10] 
       (.C(clk),
        .CE(\reg_coeff[1][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[1] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][11] 
       (.C(clk),
        .CE(\reg_coeff[1][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[1] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][12] 
       (.C(clk),
        .CE(\reg_coeff[1][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[1] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][13] 
       (.C(clk),
        .CE(\reg_coeff[1][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[1] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][14] 
       (.C(clk),
        .CE(\reg_coeff[1][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[1] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][15] 
       (.C(clk),
        .CE(\reg_coeff[1][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[1] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][1] 
       (.C(clk),
        .CE(\reg_coeff[1][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[1] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][2] 
       (.C(clk),
        .CE(\reg_coeff[1][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[1] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][3] 
       (.C(clk),
        .CE(\reg_coeff[1][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[1] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][4] 
       (.C(clk),
        .CE(\reg_coeff[1][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[1] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][5] 
       (.C(clk),
        .CE(\reg_coeff[1][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[1] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][6] 
       (.C(clk),
        .CE(\reg_coeff[1][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[1] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][7] 
       (.C(clk),
        .CE(\reg_coeff[1][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[1] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][8] 
       (.C(clk),
        .CE(\reg_coeff[1][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[1] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[1][9] 
       (.C(clk),
        .CE(\reg_coeff[1][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[1] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][0] 
       (.C(clk),
        .CE(\reg_coeff[20][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[20] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][10] 
       (.C(clk),
        .CE(\reg_coeff[20][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[20] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][11] 
       (.C(clk),
        .CE(\reg_coeff[20][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[20] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][12] 
       (.C(clk),
        .CE(\reg_coeff[20][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[20] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][13] 
       (.C(clk),
        .CE(\reg_coeff[20][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[20] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][14] 
       (.C(clk),
        .CE(\reg_coeff[20][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[20] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][15] 
       (.C(clk),
        .CE(\reg_coeff[20][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[20] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][1] 
       (.C(clk),
        .CE(\reg_coeff[20][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[20] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][2] 
       (.C(clk),
        .CE(\reg_coeff[20][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[20] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][3] 
       (.C(clk),
        .CE(\reg_coeff[20][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[20] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][4] 
       (.C(clk),
        .CE(\reg_coeff[20][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[20] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][5] 
       (.C(clk),
        .CE(\reg_coeff[20][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[20] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][6] 
       (.C(clk),
        .CE(\reg_coeff[20][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[20] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][7] 
       (.C(clk),
        .CE(\reg_coeff[20][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[20] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][8] 
       (.C(clk),
        .CE(\reg_coeff[20][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[20] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[20][9] 
       (.C(clk),
        .CE(\reg_coeff[20][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[20] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][0] 
       (.C(clk),
        .CE(\reg_coeff[21][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[21] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][10] 
       (.C(clk),
        .CE(\reg_coeff[21][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[21] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][11] 
       (.C(clk),
        .CE(\reg_coeff[21][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[21] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][12] 
       (.C(clk),
        .CE(\reg_coeff[21][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[21] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][13] 
       (.C(clk),
        .CE(\reg_coeff[21][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[21] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][14] 
       (.C(clk),
        .CE(\reg_coeff[21][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[21] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][15] 
       (.C(clk),
        .CE(\reg_coeff[21][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[21] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][1] 
       (.C(clk),
        .CE(\reg_coeff[21][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[21] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][2] 
       (.C(clk),
        .CE(\reg_coeff[21][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[21] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][3] 
       (.C(clk),
        .CE(\reg_coeff[21][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[21] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][4] 
       (.C(clk),
        .CE(\reg_coeff[21][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[21] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][5] 
       (.C(clk),
        .CE(\reg_coeff[21][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[21] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][6] 
       (.C(clk),
        .CE(\reg_coeff[21][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[21] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][7] 
       (.C(clk),
        .CE(\reg_coeff[21][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[21] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][8] 
       (.C(clk),
        .CE(\reg_coeff[21][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[21] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[21][9] 
       (.C(clk),
        .CE(\reg_coeff[21][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[21] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][0] 
       (.C(clk),
        .CE(\reg_coeff[22][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[22] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][10] 
       (.C(clk),
        .CE(\reg_coeff[22][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[22] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][11] 
       (.C(clk),
        .CE(\reg_coeff[22][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[22] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][12] 
       (.C(clk),
        .CE(\reg_coeff[22][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[22] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][13] 
       (.C(clk),
        .CE(\reg_coeff[22][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[22] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][14] 
       (.C(clk),
        .CE(\reg_coeff[22][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[22] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][15] 
       (.C(clk),
        .CE(\reg_coeff[22][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[22] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][1] 
       (.C(clk),
        .CE(\reg_coeff[22][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[22] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][2] 
       (.C(clk),
        .CE(\reg_coeff[22][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[22] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][3] 
       (.C(clk),
        .CE(\reg_coeff[22][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[22] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][4] 
       (.C(clk),
        .CE(\reg_coeff[22][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[22] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][5] 
       (.C(clk),
        .CE(\reg_coeff[22][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[22] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][6] 
       (.C(clk),
        .CE(\reg_coeff[22][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[22] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][7] 
       (.C(clk),
        .CE(\reg_coeff[22][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[22] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][8] 
       (.C(clk),
        .CE(\reg_coeff[22][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[22] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[22][9] 
       (.C(clk),
        .CE(\reg_coeff[22][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[22] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][0] 
       (.C(clk),
        .CE(\reg_coeff[23][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[23] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][10] 
       (.C(clk),
        .CE(\reg_coeff[23][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[23] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][11] 
       (.C(clk),
        .CE(\reg_coeff[23][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[23] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][12] 
       (.C(clk),
        .CE(\reg_coeff[23][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[23] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][13] 
       (.C(clk),
        .CE(\reg_coeff[23][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[23] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][14] 
       (.C(clk),
        .CE(\reg_coeff[23][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[23] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][15] 
       (.C(clk),
        .CE(\reg_coeff[23][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[23] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][1] 
       (.C(clk),
        .CE(\reg_coeff[23][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[23] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][2] 
       (.C(clk),
        .CE(\reg_coeff[23][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[23] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][3] 
       (.C(clk),
        .CE(\reg_coeff[23][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[23] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][4] 
       (.C(clk),
        .CE(\reg_coeff[23][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[23] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][5] 
       (.C(clk),
        .CE(\reg_coeff[23][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[23] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][6] 
       (.C(clk),
        .CE(\reg_coeff[23][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[23] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][7] 
       (.C(clk),
        .CE(\reg_coeff[23][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[23] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][8] 
       (.C(clk),
        .CE(\reg_coeff[23][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[23] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[23][9] 
       (.C(clk),
        .CE(\reg_coeff[23][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[23] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][0] 
       (.C(clk),
        .CE(\reg_coeff[24][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[24] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][10] 
       (.C(clk),
        .CE(\reg_coeff[24][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[24] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][11] 
       (.C(clk),
        .CE(\reg_coeff[24][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[24] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][12] 
       (.C(clk),
        .CE(\reg_coeff[24][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[24] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][13] 
       (.C(clk),
        .CE(\reg_coeff[24][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[24] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][14] 
       (.C(clk),
        .CE(\reg_coeff[24][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[24] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][15] 
       (.C(clk),
        .CE(\reg_coeff[24][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[24] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][1] 
       (.C(clk),
        .CE(\reg_coeff[24][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[24] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][2] 
       (.C(clk),
        .CE(\reg_coeff[24][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[24] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][3] 
       (.C(clk),
        .CE(\reg_coeff[24][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[24] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][4] 
       (.C(clk),
        .CE(\reg_coeff[24][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[24] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][5] 
       (.C(clk),
        .CE(\reg_coeff[24][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[24] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][6] 
       (.C(clk),
        .CE(\reg_coeff[24][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[24] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][7] 
       (.C(clk),
        .CE(\reg_coeff[24][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[24] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][8] 
       (.C(clk),
        .CE(\reg_coeff[24][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[24] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[24][9] 
       (.C(clk),
        .CE(\reg_coeff[24][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[24] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][0] 
       (.C(clk),
        .CE(\reg_coeff[25][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[25] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][10] 
       (.C(clk),
        .CE(\reg_coeff[25][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[25] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][11] 
       (.C(clk),
        .CE(\reg_coeff[25][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[25] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][12] 
       (.C(clk),
        .CE(\reg_coeff[25][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[25] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][13] 
       (.C(clk),
        .CE(\reg_coeff[25][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[25] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][14] 
       (.C(clk),
        .CE(\reg_coeff[25][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[25] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][15] 
       (.C(clk),
        .CE(\reg_coeff[25][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[25] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][1] 
       (.C(clk),
        .CE(\reg_coeff[25][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[25] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][2] 
       (.C(clk),
        .CE(\reg_coeff[25][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[25] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][3] 
       (.C(clk),
        .CE(\reg_coeff[25][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[25] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][4] 
       (.C(clk),
        .CE(\reg_coeff[25][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[25] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][5] 
       (.C(clk),
        .CE(\reg_coeff[25][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[25] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][6] 
       (.C(clk),
        .CE(\reg_coeff[25][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[25] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][7] 
       (.C(clk),
        .CE(\reg_coeff[25][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[25] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][8] 
       (.C(clk),
        .CE(\reg_coeff[25][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[25] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[25][9] 
       (.C(clk),
        .CE(\reg_coeff[25][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[25] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][0] 
       (.C(clk),
        .CE(\reg_coeff[26][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[26] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][10] 
       (.C(clk),
        .CE(\reg_coeff[26][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[26] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][11] 
       (.C(clk),
        .CE(\reg_coeff[26][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[26] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][12] 
       (.C(clk),
        .CE(\reg_coeff[26][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[26] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][13] 
       (.C(clk),
        .CE(\reg_coeff[26][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[26] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][14] 
       (.C(clk),
        .CE(\reg_coeff[26][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[26] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][15] 
       (.C(clk),
        .CE(\reg_coeff[26][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[26] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][1] 
       (.C(clk),
        .CE(\reg_coeff[26][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[26] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][2] 
       (.C(clk),
        .CE(\reg_coeff[26][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[26] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][3] 
       (.C(clk),
        .CE(\reg_coeff[26][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[26] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][4] 
       (.C(clk),
        .CE(\reg_coeff[26][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[26] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][5] 
       (.C(clk),
        .CE(\reg_coeff[26][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[26] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][6] 
       (.C(clk),
        .CE(\reg_coeff[26][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[26] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][7] 
       (.C(clk),
        .CE(\reg_coeff[26][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[26] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][8] 
       (.C(clk),
        .CE(\reg_coeff[26][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[26] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[26][9] 
       (.C(clk),
        .CE(\reg_coeff[26][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[26] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][0] 
       (.C(clk),
        .CE(\reg_coeff[27][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[27] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][10] 
       (.C(clk),
        .CE(\reg_coeff[27][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[27] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][11] 
       (.C(clk),
        .CE(\reg_coeff[27][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[27] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][12] 
       (.C(clk),
        .CE(\reg_coeff[27][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[27] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][13] 
       (.C(clk),
        .CE(\reg_coeff[27][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[27] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][14] 
       (.C(clk),
        .CE(\reg_coeff[27][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[27] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][15] 
       (.C(clk),
        .CE(\reg_coeff[27][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[27] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][1] 
       (.C(clk),
        .CE(\reg_coeff[27][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[27] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][2] 
       (.C(clk),
        .CE(\reg_coeff[27][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[27] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][3] 
       (.C(clk),
        .CE(\reg_coeff[27][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[27] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][4] 
       (.C(clk),
        .CE(\reg_coeff[27][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[27] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][5] 
       (.C(clk),
        .CE(\reg_coeff[27][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[27] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][6] 
       (.C(clk),
        .CE(\reg_coeff[27][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[27] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][7] 
       (.C(clk),
        .CE(\reg_coeff[27][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[27] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][8] 
       (.C(clk),
        .CE(\reg_coeff[27][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[27] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[27][9] 
       (.C(clk),
        .CE(\reg_coeff[27][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[27] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][0] 
       (.C(clk),
        .CE(\reg_coeff[28][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[28] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][10] 
       (.C(clk),
        .CE(\reg_coeff[28][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[28] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][11] 
       (.C(clk),
        .CE(\reg_coeff[28][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[28] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][12] 
       (.C(clk),
        .CE(\reg_coeff[28][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[28] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][13] 
       (.C(clk),
        .CE(\reg_coeff[28][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[28] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][14] 
       (.C(clk),
        .CE(\reg_coeff[28][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[28] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][15] 
       (.C(clk),
        .CE(\reg_coeff[28][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[28] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][1] 
       (.C(clk),
        .CE(\reg_coeff[28][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[28] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][2] 
       (.C(clk),
        .CE(\reg_coeff[28][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[28] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][3] 
       (.C(clk),
        .CE(\reg_coeff[28][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[28] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][4] 
       (.C(clk),
        .CE(\reg_coeff[28][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[28] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][5] 
       (.C(clk),
        .CE(\reg_coeff[28][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[28] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][6] 
       (.C(clk),
        .CE(\reg_coeff[28][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[28] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][7] 
       (.C(clk),
        .CE(\reg_coeff[28][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[28] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][8] 
       (.C(clk),
        .CE(\reg_coeff[28][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[28] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[28][9] 
       (.C(clk),
        .CE(\reg_coeff[28][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[28] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][0] 
       (.C(clk),
        .CE(\reg_coeff[29][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[29] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][10] 
       (.C(clk),
        .CE(\reg_coeff[29][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[29] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][11] 
       (.C(clk),
        .CE(\reg_coeff[29][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[29] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][12] 
       (.C(clk),
        .CE(\reg_coeff[29][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[29] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][13] 
       (.C(clk),
        .CE(\reg_coeff[29][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[29] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][14] 
       (.C(clk),
        .CE(\reg_coeff[29][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[29] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][15] 
       (.C(clk),
        .CE(\reg_coeff[29][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[29] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][1] 
       (.C(clk),
        .CE(\reg_coeff[29][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[29] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][2] 
       (.C(clk),
        .CE(\reg_coeff[29][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[29] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][3] 
       (.C(clk),
        .CE(\reg_coeff[29][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[29] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][4] 
       (.C(clk),
        .CE(\reg_coeff[29][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[29] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][5] 
       (.C(clk),
        .CE(\reg_coeff[29][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[29] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][6] 
       (.C(clk),
        .CE(\reg_coeff[29][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[29] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][7] 
       (.C(clk),
        .CE(\reg_coeff[29][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[29] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][8] 
       (.C(clk),
        .CE(\reg_coeff[29][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[29] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[29][9] 
       (.C(clk),
        .CE(\reg_coeff[29][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[29] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][0] 
       (.C(clk),
        .CE(\reg_coeff[2][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[2] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][10] 
       (.C(clk),
        .CE(\reg_coeff[2][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[2] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][11] 
       (.C(clk),
        .CE(\reg_coeff[2][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[2] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][12] 
       (.C(clk),
        .CE(\reg_coeff[2][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[2] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][13] 
       (.C(clk),
        .CE(\reg_coeff[2][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[2] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][14] 
       (.C(clk),
        .CE(\reg_coeff[2][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[2] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][15] 
       (.C(clk),
        .CE(\reg_coeff[2][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[2] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][1] 
       (.C(clk),
        .CE(\reg_coeff[2][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[2] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][2] 
       (.C(clk),
        .CE(\reg_coeff[2][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[2] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][3] 
       (.C(clk),
        .CE(\reg_coeff[2][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[2] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][4] 
       (.C(clk),
        .CE(\reg_coeff[2][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[2] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][5] 
       (.C(clk),
        .CE(\reg_coeff[2][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[2] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][6] 
       (.C(clk),
        .CE(\reg_coeff[2][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[2] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][7] 
       (.C(clk),
        .CE(\reg_coeff[2][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[2] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][8] 
       (.C(clk),
        .CE(\reg_coeff[2][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[2] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[2][9] 
       (.C(clk),
        .CE(\reg_coeff[2][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[2] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][0] 
       (.C(clk),
        .CE(\reg_coeff[30][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[30] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][10] 
       (.C(clk),
        .CE(\reg_coeff[30][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[30] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][11] 
       (.C(clk),
        .CE(\reg_coeff[30][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[30] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][12] 
       (.C(clk),
        .CE(\reg_coeff[30][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[30] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][13] 
       (.C(clk),
        .CE(\reg_coeff[30][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[30] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][14] 
       (.C(clk),
        .CE(\reg_coeff[30][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[30] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][15] 
       (.C(clk),
        .CE(\reg_coeff[30][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[30] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][1] 
       (.C(clk),
        .CE(\reg_coeff[30][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[30] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][2] 
       (.C(clk),
        .CE(\reg_coeff[30][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[30] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][3] 
       (.C(clk),
        .CE(\reg_coeff[30][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[30] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][4] 
       (.C(clk),
        .CE(\reg_coeff[30][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[30] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][5] 
       (.C(clk),
        .CE(\reg_coeff[30][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[30] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][6] 
       (.C(clk),
        .CE(\reg_coeff[30][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[30] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][7] 
       (.C(clk),
        .CE(\reg_coeff[30][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[30] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][8] 
       (.C(clk),
        .CE(\reg_coeff[30][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[30] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[30][9] 
       (.C(clk),
        .CE(\reg_coeff[30][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[30] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][0] 
       (.C(clk),
        .CE(\reg_coeff[31][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[31] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][10] 
       (.C(clk),
        .CE(\reg_coeff[31][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[31] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][11] 
       (.C(clk),
        .CE(\reg_coeff[31][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[31] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][12] 
       (.C(clk),
        .CE(\reg_coeff[31][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[31] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][13] 
       (.C(clk),
        .CE(\reg_coeff[31][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[31] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][14] 
       (.C(clk),
        .CE(\reg_coeff[31][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[31] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][15] 
       (.C(clk),
        .CE(\reg_coeff[31][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[31] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][1] 
       (.C(clk),
        .CE(\reg_coeff[31][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[31] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][2] 
       (.C(clk),
        .CE(\reg_coeff[31][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[31] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][3] 
       (.C(clk),
        .CE(\reg_coeff[31][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[31] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][4] 
       (.C(clk),
        .CE(\reg_coeff[31][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[31] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][5] 
       (.C(clk),
        .CE(\reg_coeff[31][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[31] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][6] 
       (.C(clk),
        .CE(\reg_coeff[31][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[31] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][7] 
       (.C(clk),
        .CE(\reg_coeff[31][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[31] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][8] 
       (.C(clk),
        .CE(\reg_coeff[31][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[31] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[31][9] 
       (.C(clk),
        .CE(\reg_coeff[31][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[31] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][0] 
       (.C(clk),
        .CE(\reg_coeff[32][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[32] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][10] 
       (.C(clk),
        .CE(\reg_coeff[32][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[32] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][11] 
       (.C(clk),
        .CE(\reg_coeff[32][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[32] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][12] 
       (.C(clk),
        .CE(\reg_coeff[32][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[32] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][13] 
       (.C(clk),
        .CE(\reg_coeff[32][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[32] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][14] 
       (.C(clk),
        .CE(\reg_coeff[32][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[32] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][15] 
       (.C(clk),
        .CE(\reg_coeff[32][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[32] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][1] 
       (.C(clk),
        .CE(\reg_coeff[32][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[32] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][2] 
       (.C(clk),
        .CE(\reg_coeff[32][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[32] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][3] 
       (.C(clk),
        .CE(\reg_coeff[32][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[32] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][4] 
       (.C(clk),
        .CE(\reg_coeff[32][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[32] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][5] 
       (.C(clk),
        .CE(\reg_coeff[32][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[32] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][6] 
       (.C(clk),
        .CE(\reg_coeff[32][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[32] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][7] 
       (.C(clk),
        .CE(\reg_coeff[32][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[32] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][8] 
       (.C(clk),
        .CE(\reg_coeff[32][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[32] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[32][9] 
       (.C(clk),
        .CE(\reg_coeff[32][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[32] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][0] 
       (.C(clk),
        .CE(\reg_coeff[33][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[33] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][10] 
       (.C(clk),
        .CE(\reg_coeff[33][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[33] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][11] 
       (.C(clk),
        .CE(\reg_coeff[33][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[33] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][12] 
       (.C(clk),
        .CE(\reg_coeff[33][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[33] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][13] 
       (.C(clk),
        .CE(\reg_coeff[33][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[33] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][14] 
       (.C(clk),
        .CE(\reg_coeff[33][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[33] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][15] 
       (.C(clk),
        .CE(\reg_coeff[33][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[33] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][1] 
       (.C(clk),
        .CE(\reg_coeff[33][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[33] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][2] 
       (.C(clk),
        .CE(\reg_coeff[33][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[33] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][3] 
       (.C(clk),
        .CE(\reg_coeff[33][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[33] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][4] 
       (.C(clk),
        .CE(\reg_coeff[33][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[33] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][5] 
       (.C(clk),
        .CE(\reg_coeff[33][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[33] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][6] 
       (.C(clk),
        .CE(\reg_coeff[33][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[33] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][7] 
       (.C(clk),
        .CE(\reg_coeff[33][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[33] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][8] 
       (.C(clk),
        .CE(\reg_coeff[33][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[33] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[33][9] 
       (.C(clk),
        .CE(\reg_coeff[33][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[33] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][0] 
       (.C(clk),
        .CE(\reg_coeff[34][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[34] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][10] 
       (.C(clk),
        .CE(\reg_coeff[34][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[34] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][11] 
       (.C(clk),
        .CE(\reg_coeff[34][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[34] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][12] 
       (.C(clk),
        .CE(\reg_coeff[34][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[34] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][13] 
       (.C(clk),
        .CE(\reg_coeff[34][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[34] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][14] 
       (.C(clk),
        .CE(\reg_coeff[34][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[34] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][15] 
       (.C(clk),
        .CE(\reg_coeff[34][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[34] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][1] 
       (.C(clk),
        .CE(\reg_coeff[34][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[34] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][2] 
       (.C(clk),
        .CE(\reg_coeff[34][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[34] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][3] 
       (.C(clk),
        .CE(\reg_coeff[34][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[34] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][4] 
       (.C(clk),
        .CE(\reg_coeff[34][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[34] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][5] 
       (.C(clk),
        .CE(\reg_coeff[34][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[34] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][6] 
       (.C(clk),
        .CE(\reg_coeff[34][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[34] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][7] 
       (.C(clk),
        .CE(\reg_coeff[34][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[34] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][8] 
       (.C(clk),
        .CE(\reg_coeff[34][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[34] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[34][9] 
       (.C(clk),
        .CE(\reg_coeff[34][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[34] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][0] 
       (.C(clk),
        .CE(\reg_coeff[35][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[35] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][10] 
       (.C(clk),
        .CE(\reg_coeff[35][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[35] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][11] 
       (.C(clk),
        .CE(\reg_coeff[35][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[35] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][12] 
       (.C(clk),
        .CE(\reg_coeff[35][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[35] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][13] 
       (.C(clk),
        .CE(\reg_coeff[35][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[35] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][14] 
       (.C(clk),
        .CE(\reg_coeff[35][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[35] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][15] 
       (.C(clk),
        .CE(\reg_coeff[35][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[35] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][1] 
       (.C(clk),
        .CE(\reg_coeff[35][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[35] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][2] 
       (.C(clk),
        .CE(\reg_coeff[35][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[35] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][3] 
       (.C(clk),
        .CE(\reg_coeff[35][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[35] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][4] 
       (.C(clk),
        .CE(\reg_coeff[35][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[35] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][5] 
       (.C(clk),
        .CE(\reg_coeff[35][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[35] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][6] 
       (.C(clk),
        .CE(\reg_coeff[35][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[35] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][7] 
       (.C(clk),
        .CE(\reg_coeff[35][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[35] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][8] 
       (.C(clk),
        .CE(\reg_coeff[35][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[35] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[35][9] 
       (.C(clk),
        .CE(\reg_coeff[35][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[35] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][0] 
       (.C(clk),
        .CE(\reg_coeff[36][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[36] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][10] 
       (.C(clk),
        .CE(\reg_coeff[36][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[36] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][11] 
       (.C(clk),
        .CE(\reg_coeff[36][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[36] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][12] 
       (.C(clk),
        .CE(\reg_coeff[36][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[36] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][13] 
       (.C(clk),
        .CE(\reg_coeff[36][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[36] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][14] 
       (.C(clk),
        .CE(\reg_coeff[36][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[36] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][15] 
       (.C(clk),
        .CE(\reg_coeff[36][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[36] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][1] 
       (.C(clk),
        .CE(\reg_coeff[36][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[36] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][2] 
       (.C(clk),
        .CE(\reg_coeff[36][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[36] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][3] 
       (.C(clk),
        .CE(\reg_coeff[36][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[36] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][4] 
       (.C(clk),
        .CE(\reg_coeff[36][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[36] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][5] 
       (.C(clk),
        .CE(\reg_coeff[36][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[36] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][6] 
       (.C(clk),
        .CE(\reg_coeff[36][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[36] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][7] 
       (.C(clk),
        .CE(\reg_coeff[36][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[36] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][8] 
       (.C(clk),
        .CE(\reg_coeff[36][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[36] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[36][9] 
       (.C(clk),
        .CE(\reg_coeff[36][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[36] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][0] 
       (.C(clk),
        .CE(\reg_coeff[37][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[37] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][10] 
       (.C(clk),
        .CE(\reg_coeff[37][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[37] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][11] 
       (.C(clk),
        .CE(\reg_coeff[37][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[37] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][12] 
       (.C(clk),
        .CE(\reg_coeff[37][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[37] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][13] 
       (.C(clk),
        .CE(\reg_coeff[37][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[37] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][14] 
       (.C(clk),
        .CE(\reg_coeff[37][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[37] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][15] 
       (.C(clk),
        .CE(\reg_coeff[37][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[37] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][1] 
       (.C(clk),
        .CE(\reg_coeff[37][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[37] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][2] 
       (.C(clk),
        .CE(\reg_coeff[37][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[37] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][3] 
       (.C(clk),
        .CE(\reg_coeff[37][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[37] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][4] 
       (.C(clk),
        .CE(\reg_coeff[37][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[37] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][5] 
       (.C(clk),
        .CE(\reg_coeff[37][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[37] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][6] 
       (.C(clk),
        .CE(\reg_coeff[37][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[37] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][7] 
       (.C(clk),
        .CE(\reg_coeff[37][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[37] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][8] 
       (.C(clk),
        .CE(\reg_coeff[37][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[37] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[37][9] 
       (.C(clk),
        .CE(\reg_coeff[37][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[37] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][0] 
       (.C(clk),
        .CE(\reg_coeff[38][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[38] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][10] 
       (.C(clk),
        .CE(\reg_coeff[38][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[38] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][11] 
       (.C(clk),
        .CE(\reg_coeff[38][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[38] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][12] 
       (.C(clk),
        .CE(\reg_coeff[38][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[38] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][13] 
       (.C(clk),
        .CE(\reg_coeff[38][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[38] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][14] 
       (.C(clk),
        .CE(\reg_coeff[38][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[38] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][15] 
       (.C(clk),
        .CE(\reg_coeff[38][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[38] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][1] 
       (.C(clk),
        .CE(\reg_coeff[38][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[38] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][2] 
       (.C(clk),
        .CE(\reg_coeff[38][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[38] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][3] 
       (.C(clk),
        .CE(\reg_coeff[38][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[38] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][4] 
       (.C(clk),
        .CE(\reg_coeff[38][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[38] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][5] 
       (.C(clk),
        .CE(\reg_coeff[38][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[38] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][6] 
       (.C(clk),
        .CE(\reg_coeff[38][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[38] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][7] 
       (.C(clk),
        .CE(\reg_coeff[38][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[38] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][8] 
       (.C(clk),
        .CE(\reg_coeff[38][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[38] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[38][9] 
       (.C(clk),
        .CE(\reg_coeff[38][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[38] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][0] 
       (.C(clk),
        .CE(\reg_coeff[39][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[39] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][10] 
       (.C(clk),
        .CE(\reg_coeff[39][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[39] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][11] 
       (.C(clk),
        .CE(\reg_coeff[39][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[39] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][12] 
       (.C(clk),
        .CE(\reg_coeff[39][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[39] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][13] 
       (.C(clk),
        .CE(\reg_coeff[39][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[39] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][14] 
       (.C(clk),
        .CE(\reg_coeff[39][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[39] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][15] 
       (.C(clk),
        .CE(\reg_coeff[39][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[39] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][1] 
       (.C(clk),
        .CE(\reg_coeff[39][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[39] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][2] 
       (.C(clk),
        .CE(\reg_coeff[39][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[39] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][3] 
       (.C(clk),
        .CE(\reg_coeff[39][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[39] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][4] 
       (.C(clk),
        .CE(\reg_coeff[39][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[39] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][5] 
       (.C(clk),
        .CE(\reg_coeff[39][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[39] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][6] 
       (.C(clk),
        .CE(\reg_coeff[39][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[39] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][7] 
       (.C(clk),
        .CE(\reg_coeff[39][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[39] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][8] 
       (.C(clk),
        .CE(\reg_coeff[39][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[39] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[39][9] 
       (.C(clk),
        .CE(\reg_coeff[39][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[39] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][0] 
       (.C(clk),
        .CE(\reg_coeff[3][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[3] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][10] 
       (.C(clk),
        .CE(\reg_coeff[3][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[3] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][11] 
       (.C(clk),
        .CE(\reg_coeff[3][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[3] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][12] 
       (.C(clk),
        .CE(\reg_coeff[3][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[3] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][13] 
       (.C(clk),
        .CE(\reg_coeff[3][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[3] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][14] 
       (.C(clk),
        .CE(\reg_coeff[3][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[3] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][15] 
       (.C(clk),
        .CE(\reg_coeff[3][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[3] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][1] 
       (.C(clk),
        .CE(\reg_coeff[3][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[3] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][2] 
       (.C(clk),
        .CE(\reg_coeff[3][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[3] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][3] 
       (.C(clk),
        .CE(\reg_coeff[3][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[3] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][4] 
       (.C(clk),
        .CE(\reg_coeff[3][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[3] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][5] 
       (.C(clk),
        .CE(\reg_coeff[3][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[3] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][6] 
       (.C(clk),
        .CE(\reg_coeff[3][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[3] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][7] 
       (.C(clk),
        .CE(\reg_coeff[3][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[3] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][8] 
       (.C(clk),
        .CE(\reg_coeff[3][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[3] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[3][9] 
       (.C(clk),
        .CE(\reg_coeff[3][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[3] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][0] 
       (.C(clk),
        .CE(\reg_coeff[40][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[40] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][10] 
       (.C(clk),
        .CE(\reg_coeff[40][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[40] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][11] 
       (.C(clk),
        .CE(\reg_coeff[40][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[40] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][12] 
       (.C(clk),
        .CE(\reg_coeff[40][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[40] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][13] 
       (.C(clk),
        .CE(\reg_coeff[40][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[40] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][14] 
       (.C(clk),
        .CE(\reg_coeff[40][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[40] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][15] 
       (.C(clk),
        .CE(\reg_coeff[40][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[40] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][1] 
       (.C(clk),
        .CE(\reg_coeff[40][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[40] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][2] 
       (.C(clk),
        .CE(\reg_coeff[40][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[40] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][3] 
       (.C(clk),
        .CE(\reg_coeff[40][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[40] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][4] 
       (.C(clk),
        .CE(\reg_coeff[40][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[40] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][5] 
       (.C(clk),
        .CE(\reg_coeff[40][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[40] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][6] 
       (.C(clk),
        .CE(\reg_coeff[40][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[40] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][7] 
       (.C(clk),
        .CE(\reg_coeff[40][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[40] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][8] 
       (.C(clk),
        .CE(\reg_coeff[40][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[40] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[40][9] 
       (.C(clk),
        .CE(\reg_coeff[40][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[40] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][0] 
       (.C(clk),
        .CE(\reg_coeff[41][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[41] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][10] 
       (.C(clk),
        .CE(\reg_coeff[41][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[41] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][11] 
       (.C(clk),
        .CE(\reg_coeff[41][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[41] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][12] 
       (.C(clk),
        .CE(\reg_coeff[41][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[41] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][13] 
       (.C(clk),
        .CE(\reg_coeff[41][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[41] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][14] 
       (.C(clk),
        .CE(\reg_coeff[41][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[41] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][15] 
       (.C(clk),
        .CE(\reg_coeff[41][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[41] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][1] 
       (.C(clk),
        .CE(\reg_coeff[41][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[41] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][2] 
       (.C(clk),
        .CE(\reg_coeff[41][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[41] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][3] 
       (.C(clk),
        .CE(\reg_coeff[41][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[41] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][4] 
       (.C(clk),
        .CE(\reg_coeff[41][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[41] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][5] 
       (.C(clk),
        .CE(\reg_coeff[41][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[41] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][6] 
       (.C(clk),
        .CE(\reg_coeff[41][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[41] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][7] 
       (.C(clk),
        .CE(\reg_coeff[41][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[41] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][8] 
       (.C(clk),
        .CE(\reg_coeff[41][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[41] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[41][9] 
       (.C(clk),
        .CE(\reg_coeff[41][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[41] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][0] 
       (.C(clk),
        .CE(\reg_coeff[42][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[42] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][10] 
       (.C(clk),
        .CE(\reg_coeff[42][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[42] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][11] 
       (.C(clk),
        .CE(\reg_coeff[42][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[42] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][12] 
       (.C(clk),
        .CE(\reg_coeff[42][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[42] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][13] 
       (.C(clk),
        .CE(\reg_coeff[42][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[42] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][14] 
       (.C(clk),
        .CE(\reg_coeff[42][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[42] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][15] 
       (.C(clk),
        .CE(\reg_coeff[42][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[42] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][1] 
       (.C(clk),
        .CE(\reg_coeff[42][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[42] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][2] 
       (.C(clk),
        .CE(\reg_coeff[42][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[42] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][3] 
       (.C(clk),
        .CE(\reg_coeff[42][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[42] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][4] 
       (.C(clk),
        .CE(\reg_coeff[42][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[42] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][5] 
       (.C(clk),
        .CE(\reg_coeff[42][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[42] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][6] 
       (.C(clk),
        .CE(\reg_coeff[42][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[42] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][7] 
       (.C(clk),
        .CE(\reg_coeff[42][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[42] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][8] 
       (.C(clk),
        .CE(\reg_coeff[42][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[42] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[42][9] 
       (.C(clk),
        .CE(\reg_coeff[42][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[42] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][0] 
       (.C(clk),
        .CE(\reg_coeff[43][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[43] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][10] 
       (.C(clk),
        .CE(\reg_coeff[43][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[43] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][11] 
       (.C(clk),
        .CE(\reg_coeff[43][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[43] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][12] 
       (.C(clk),
        .CE(\reg_coeff[43][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[43] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][13] 
       (.C(clk),
        .CE(\reg_coeff[43][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[43] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][14] 
       (.C(clk),
        .CE(\reg_coeff[43][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[43] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][15] 
       (.C(clk),
        .CE(\reg_coeff[43][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[43] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][1] 
       (.C(clk),
        .CE(\reg_coeff[43][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[43] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][2] 
       (.C(clk),
        .CE(\reg_coeff[43][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[43] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][3] 
       (.C(clk),
        .CE(\reg_coeff[43][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[43] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][4] 
       (.C(clk),
        .CE(\reg_coeff[43][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[43] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][5] 
       (.C(clk),
        .CE(\reg_coeff[43][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[43] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][6] 
       (.C(clk),
        .CE(\reg_coeff[43][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[43] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][7] 
       (.C(clk),
        .CE(\reg_coeff[43][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[43] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][8] 
       (.C(clk),
        .CE(\reg_coeff[43][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[43] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[43][9] 
       (.C(clk),
        .CE(\reg_coeff[43][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[43] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][0] 
       (.C(clk),
        .CE(\reg_coeff[44][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[44] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][10] 
       (.C(clk),
        .CE(\reg_coeff[44][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[44] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][11] 
       (.C(clk),
        .CE(\reg_coeff[44][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[44] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][12] 
       (.C(clk),
        .CE(\reg_coeff[44][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[44] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][13] 
       (.C(clk),
        .CE(\reg_coeff[44][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[44] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][14] 
       (.C(clk),
        .CE(\reg_coeff[44][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[44] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][15] 
       (.C(clk),
        .CE(\reg_coeff[44][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[44] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][1] 
       (.C(clk),
        .CE(\reg_coeff[44][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[44] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][2] 
       (.C(clk),
        .CE(\reg_coeff[44][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[44] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][3] 
       (.C(clk),
        .CE(\reg_coeff[44][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[44] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][4] 
       (.C(clk),
        .CE(\reg_coeff[44][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[44] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][5] 
       (.C(clk),
        .CE(\reg_coeff[44][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[44] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][6] 
       (.C(clk),
        .CE(\reg_coeff[44][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[44] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][7] 
       (.C(clk),
        .CE(\reg_coeff[44][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[44] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][8] 
       (.C(clk),
        .CE(\reg_coeff[44][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[44] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[44][9] 
       (.C(clk),
        .CE(\reg_coeff[44][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[44] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][0] 
       (.C(clk),
        .CE(\reg_coeff[45][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[45] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][10] 
       (.C(clk),
        .CE(\reg_coeff[45][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[45] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][11] 
       (.C(clk),
        .CE(\reg_coeff[45][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[45] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][12] 
       (.C(clk),
        .CE(\reg_coeff[45][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[45] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][13] 
       (.C(clk),
        .CE(\reg_coeff[45][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[45] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][14] 
       (.C(clk),
        .CE(\reg_coeff[45][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[45] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][15] 
       (.C(clk),
        .CE(\reg_coeff[45][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[45] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][1] 
       (.C(clk),
        .CE(\reg_coeff[45][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[45] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][2] 
       (.C(clk),
        .CE(\reg_coeff[45][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[45] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][3] 
       (.C(clk),
        .CE(\reg_coeff[45][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[45] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][4] 
       (.C(clk),
        .CE(\reg_coeff[45][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[45] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][5] 
       (.C(clk),
        .CE(\reg_coeff[45][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[45] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][6] 
       (.C(clk),
        .CE(\reg_coeff[45][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[45] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][7] 
       (.C(clk),
        .CE(\reg_coeff[45][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[45] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][8] 
       (.C(clk),
        .CE(\reg_coeff[45][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[45] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[45][9] 
       (.C(clk),
        .CE(\reg_coeff[45][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[45] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][0] 
       (.C(clk),
        .CE(\reg_coeff[46][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[46] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][10] 
       (.C(clk),
        .CE(\reg_coeff[46][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[46] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][11] 
       (.C(clk),
        .CE(\reg_coeff[46][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[46] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][12] 
       (.C(clk),
        .CE(\reg_coeff[46][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[46] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][13] 
       (.C(clk),
        .CE(\reg_coeff[46][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[46] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][14] 
       (.C(clk),
        .CE(\reg_coeff[46][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[46] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][15] 
       (.C(clk),
        .CE(\reg_coeff[46][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[46] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][1] 
       (.C(clk),
        .CE(\reg_coeff[46][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[46] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][2] 
       (.C(clk),
        .CE(\reg_coeff[46][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[46] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][3] 
       (.C(clk),
        .CE(\reg_coeff[46][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[46] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][4] 
       (.C(clk),
        .CE(\reg_coeff[46][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[46] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][5] 
       (.C(clk),
        .CE(\reg_coeff[46][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[46] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][6] 
       (.C(clk),
        .CE(\reg_coeff[46][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[46] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][7] 
       (.C(clk),
        .CE(\reg_coeff[46][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[46] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][8] 
       (.C(clk),
        .CE(\reg_coeff[46][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[46] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[46][9] 
       (.C(clk),
        .CE(\reg_coeff[46][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[46] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][0] 
       (.C(clk),
        .CE(\reg_coeff[47][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[47] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][10] 
       (.C(clk),
        .CE(\reg_coeff[47][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[47] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][11] 
       (.C(clk),
        .CE(\reg_coeff[47][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[47] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][12] 
       (.C(clk),
        .CE(\reg_coeff[47][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[47] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][13] 
       (.C(clk),
        .CE(\reg_coeff[47][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[47] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][14] 
       (.C(clk),
        .CE(\reg_coeff[47][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[47] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][15] 
       (.C(clk),
        .CE(\reg_coeff[47][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[47] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][1] 
       (.C(clk),
        .CE(\reg_coeff[47][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[47] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][2] 
       (.C(clk),
        .CE(\reg_coeff[47][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[47] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][3] 
       (.C(clk),
        .CE(\reg_coeff[47][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[47] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][4] 
       (.C(clk),
        .CE(\reg_coeff[47][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[47] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][5] 
       (.C(clk),
        .CE(\reg_coeff[47][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[47] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][6] 
       (.C(clk),
        .CE(\reg_coeff[47][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[47] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][7] 
       (.C(clk),
        .CE(\reg_coeff[47][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[47] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][8] 
       (.C(clk),
        .CE(\reg_coeff[47][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[47] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[47][9] 
       (.C(clk),
        .CE(\reg_coeff[47][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[47] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][0] 
       (.C(clk),
        .CE(\reg_coeff[48][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[48] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][10] 
       (.C(clk),
        .CE(\reg_coeff[48][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[48] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][11] 
       (.C(clk),
        .CE(\reg_coeff[48][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[48] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][12] 
       (.C(clk),
        .CE(\reg_coeff[48][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[48] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][13] 
       (.C(clk),
        .CE(\reg_coeff[48][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[48] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][14] 
       (.C(clk),
        .CE(\reg_coeff[48][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[48] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][15] 
       (.C(clk),
        .CE(\reg_coeff[48][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[48] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][1] 
       (.C(clk),
        .CE(\reg_coeff[48][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[48] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][2] 
       (.C(clk),
        .CE(\reg_coeff[48][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[48] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][3] 
       (.C(clk),
        .CE(\reg_coeff[48][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[48] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][4] 
       (.C(clk),
        .CE(\reg_coeff[48][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[48] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][5] 
       (.C(clk),
        .CE(\reg_coeff[48][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[48] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][6] 
       (.C(clk),
        .CE(\reg_coeff[48][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[48] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][7] 
       (.C(clk),
        .CE(\reg_coeff[48][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[48] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][8] 
       (.C(clk),
        .CE(\reg_coeff[48][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[48] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[48][9] 
       (.C(clk),
        .CE(\reg_coeff[48][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[48] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][0] 
       (.C(clk),
        .CE(\reg_coeff[49][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[49] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][10] 
       (.C(clk),
        .CE(\reg_coeff[49][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[49] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][11] 
       (.C(clk),
        .CE(\reg_coeff[49][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[49] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][12] 
       (.C(clk),
        .CE(\reg_coeff[49][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[49] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][13] 
       (.C(clk),
        .CE(\reg_coeff[49][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[49] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][14] 
       (.C(clk),
        .CE(\reg_coeff[49][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[49] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][15] 
       (.C(clk),
        .CE(\reg_coeff[49][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[49] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][1] 
       (.C(clk),
        .CE(\reg_coeff[49][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[49] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][2] 
       (.C(clk),
        .CE(\reg_coeff[49][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[49] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][3] 
       (.C(clk),
        .CE(\reg_coeff[49][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[49] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][4] 
       (.C(clk),
        .CE(\reg_coeff[49][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[49] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][5] 
       (.C(clk),
        .CE(\reg_coeff[49][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[49] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][6] 
       (.C(clk),
        .CE(\reg_coeff[49][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[49] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][7] 
       (.C(clk),
        .CE(\reg_coeff[49][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[49] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][8] 
       (.C(clk),
        .CE(\reg_coeff[49][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[49] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[49][9] 
       (.C(clk),
        .CE(\reg_coeff[49][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[49] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][0] 
       (.C(clk),
        .CE(\reg_coeff[4][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[4] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][10] 
       (.C(clk),
        .CE(\reg_coeff[4][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[4] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][11] 
       (.C(clk),
        .CE(\reg_coeff[4][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[4] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][12] 
       (.C(clk),
        .CE(\reg_coeff[4][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[4] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][13] 
       (.C(clk),
        .CE(\reg_coeff[4][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[4] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][14] 
       (.C(clk),
        .CE(\reg_coeff[4][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[4] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][15] 
       (.C(clk),
        .CE(\reg_coeff[4][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[4] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][1] 
       (.C(clk),
        .CE(\reg_coeff[4][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[4] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][2] 
       (.C(clk),
        .CE(\reg_coeff[4][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[4] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][3] 
       (.C(clk),
        .CE(\reg_coeff[4][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[4] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][4] 
       (.C(clk),
        .CE(\reg_coeff[4][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[4] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][5] 
       (.C(clk),
        .CE(\reg_coeff[4][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[4] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][6] 
       (.C(clk),
        .CE(\reg_coeff[4][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[4] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][7] 
       (.C(clk),
        .CE(\reg_coeff[4][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[4] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][8] 
       (.C(clk),
        .CE(\reg_coeff[4][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[4] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[4][9] 
       (.C(clk),
        .CE(\reg_coeff[4][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[4] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][0] 
       (.C(clk),
        .CE(\reg_coeff[50][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[50] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][10] 
       (.C(clk),
        .CE(\reg_coeff[50][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[50] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][11] 
       (.C(clk),
        .CE(\reg_coeff[50][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[50] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][12] 
       (.C(clk),
        .CE(\reg_coeff[50][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[50] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][13] 
       (.C(clk),
        .CE(\reg_coeff[50][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[50] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][14] 
       (.C(clk),
        .CE(\reg_coeff[50][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[50] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][15] 
       (.C(clk),
        .CE(\reg_coeff[50][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[50] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][1] 
       (.C(clk),
        .CE(\reg_coeff[50][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[50] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][2] 
       (.C(clk),
        .CE(\reg_coeff[50][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[50] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][3] 
       (.C(clk),
        .CE(\reg_coeff[50][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[50] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][4] 
       (.C(clk),
        .CE(\reg_coeff[50][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[50] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][5] 
       (.C(clk),
        .CE(\reg_coeff[50][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[50] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][6] 
       (.C(clk),
        .CE(\reg_coeff[50][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[50] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][7] 
       (.C(clk),
        .CE(\reg_coeff[50][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[50] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][8] 
       (.C(clk),
        .CE(\reg_coeff[50][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[50] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[50][9] 
       (.C(clk),
        .CE(\reg_coeff[50][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[50] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][0] 
       (.C(clk),
        .CE(\reg_coeff[51][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[51] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][10] 
       (.C(clk),
        .CE(\reg_coeff[51][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[51] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][11] 
       (.C(clk),
        .CE(\reg_coeff[51][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[51] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][12] 
       (.C(clk),
        .CE(\reg_coeff[51][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[51] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][13] 
       (.C(clk),
        .CE(\reg_coeff[51][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[51] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][14] 
       (.C(clk),
        .CE(\reg_coeff[51][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[51] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][15] 
       (.C(clk),
        .CE(\reg_coeff[51][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[51] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][1] 
       (.C(clk),
        .CE(\reg_coeff[51][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[51] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][2] 
       (.C(clk),
        .CE(\reg_coeff[51][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[51] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][3] 
       (.C(clk),
        .CE(\reg_coeff[51][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[51] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][4] 
       (.C(clk),
        .CE(\reg_coeff[51][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[51] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][5] 
       (.C(clk),
        .CE(\reg_coeff[51][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[51] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][6] 
       (.C(clk),
        .CE(\reg_coeff[51][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[51] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][7] 
       (.C(clk),
        .CE(\reg_coeff[51][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[51] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][8] 
       (.C(clk),
        .CE(\reg_coeff[51][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[51] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[51][9] 
       (.C(clk),
        .CE(\reg_coeff[51][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[51] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][0] 
       (.C(clk),
        .CE(\reg_coeff[52][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[52] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][10] 
       (.C(clk),
        .CE(\reg_coeff[52][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[52] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][11] 
       (.C(clk),
        .CE(\reg_coeff[52][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[52] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][12] 
       (.C(clk),
        .CE(\reg_coeff[52][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[52] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][13] 
       (.C(clk),
        .CE(\reg_coeff[52][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[52] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][14] 
       (.C(clk),
        .CE(\reg_coeff[52][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[52] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][15] 
       (.C(clk),
        .CE(\reg_coeff[52][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[52] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][1] 
       (.C(clk),
        .CE(\reg_coeff[52][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[52] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][2] 
       (.C(clk),
        .CE(\reg_coeff[52][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[52] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][3] 
       (.C(clk),
        .CE(\reg_coeff[52][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[52] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][4] 
       (.C(clk),
        .CE(\reg_coeff[52][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[52] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][5] 
       (.C(clk),
        .CE(\reg_coeff[52][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[52] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][6] 
       (.C(clk),
        .CE(\reg_coeff[52][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[52] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][7] 
       (.C(clk),
        .CE(\reg_coeff[52][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[52] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][8] 
       (.C(clk),
        .CE(\reg_coeff[52][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[52] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[52][9] 
       (.C(clk),
        .CE(\reg_coeff[52][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[52] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][0] 
       (.C(clk),
        .CE(\reg_coeff[53][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[53] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][10] 
       (.C(clk),
        .CE(\reg_coeff[53][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[53] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][11] 
       (.C(clk),
        .CE(\reg_coeff[53][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[53] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][12] 
       (.C(clk),
        .CE(\reg_coeff[53][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[53] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][13] 
       (.C(clk),
        .CE(\reg_coeff[53][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[53] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][14] 
       (.C(clk),
        .CE(\reg_coeff[53][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[53] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][15] 
       (.C(clk),
        .CE(\reg_coeff[53][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[53] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][1] 
       (.C(clk),
        .CE(\reg_coeff[53][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[53] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][2] 
       (.C(clk),
        .CE(\reg_coeff[53][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[53] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][3] 
       (.C(clk),
        .CE(\reg_coeff[53][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[53] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][4] 
       (.C(clk),
        .CE(\reg_coeff[53][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[53] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][5] 
       (.C(clk),
        .CE(\reg_coeff[53][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[53] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][6] 
       (.C(clk),
        .CE(\reg_coeff[53][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[53] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][7] 
       (.C(clk),
        .CE(\reg_coeff[53][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[53] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][8] 
       (.C(clk),
        .CE(\reg_coeff[53][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[53] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[53][9] 
       (.C(clk),
        .CE(\reg_coeff[53][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[53] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][0] 
       (.C(clk),
        .CE(\reg_coeff[54][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[54] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][10] 
       (.C(clk),
        .CE(\reg_coeff[54][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[54] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][11] 
       (.C(clk),
        .CE(\reg_coeff[54][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[54] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][12] 
       (.C(clk),
        .CE(\reg_coeff[54][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[54] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][13] 
       (.C(clk),
        .CE(\reg_coeff[54][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[54] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][14] 
       (.C(clk),
        .CE(\reg_coeff[54][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[54] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][15] 
       (.C(clk),
        .CE(\reg_coeff[54][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[54] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][1] 
       (.C(clk),
        .CE(\reg_coeff[54][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[54] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][2] 
       (.C(clk),
        .CE(\reg_coeff[54][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[54] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][3] 
       (.C(clk),
        .CE(\reg_coeff[54][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[54] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][4] 
       (.C(clk),
        .CE(\reg_coeff[54][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[54] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][5] 
       (.C(clk),
        .CE(\reg_coeff[54][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[54] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][6] 
       (.C(clk),
        .CE(\reg_coeff[54][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[54] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][7] 
       (.C(clk),
        .CE(\reg_coeff[54][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[54] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][8] 
       (.C(clk),
        .CE(\reg_coeff[54][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[54] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[54][9] 
       (.C(clk),
        .CE(\reg_coeff[54][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[54] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][0] 
       (.C(clk),
        .CE(\reg_coeff[55][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[55] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][10] 
       (.C(clk),
        .CE(\reg_coeff[55][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[55] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][11] 
       (.C(clk),
        .CE(\reg_coeff[55][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[55] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][12] 
       (.C(clk),
        .CE(\reg_coeff[55][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[55] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][13] 
       (.C(clk),
        .CE(\reg_coeff[55][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[55] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][14] 
       (.C(clk),
        .CE(\reg_coeff[55][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[55] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][15] 
       (.C(clk),
        .CE(\reg_coeff[55][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[55] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][1] 
       (.C(clk),
        .CE(\reg_coeff[55][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[55] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][2] 
       (.C(clk),
        .CE(\reg_coeff[55][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[55] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][3] 
       (.C(clk),
        .CE(\reg_coeff[55][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[55] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][4] 
       (.C(clk),
        .CE(\reg_coeff[55][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[55] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][5] 
       (.C(clk),
        .CE(\reg_coeff[55][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[55] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][6] 
       (.C(clk),
        .CE(\reg_coeff[55][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[55] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][7] 
       (.C(clk),
        .CE(\reg_coeff[55][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[55] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][8] 
       (.C(clk),
        .CE(\reg_coeff[55][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[55] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[55][9] 
       (.C(clk),
        .CE(\reg_coeff[55][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[55] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][0] 
       (.C(clk),
        .CE(\reg_coeff[56][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[56] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][10] 
       (.C(clk),
        .CE(\reg_coeff[56][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[56] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][11] 
       (.C(clk),
        .CE(\reg_coeff[56][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[56] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][12] 
       (.C(clk),
        .CE(\reg_coeff[56][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[56] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][13] 
       (.C(clk),
        .CE(\reg_coeff[56][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[56] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][14] 
       (.C(clk),
        .CE(\reg_coeff[56][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[56] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][15] 
       (.C(clk),
        .CE(\reg_coeff[56][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[56] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][1] 
       (.C(clk),
        .CE(\reg_coeff[56][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[56] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][2] 
       (.C(clk),
        .CE(\reg_coeff[56][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[56] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][3] 
       (.C(clk),
        .CE(\reg_coeff[56][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[56] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][4] 
       (.C(clk),
        .CE(\reg_coeff[56][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[56] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][5] 
       (.C(clk),
        .CE(\reg_coeff[56][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[56] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][6] 
       (.C(clk),
        .CE(\reg_coeff[56][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[56] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][7] 
       (.C(clk),
        .CE(\reg_coeff[56][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[56] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][8] 
       (.C(clk),
        .CE(\reg_coeff[56][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[56] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[56][9] 
       (.C(clk),
        .CE(\reg_coeff[56][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[56] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][0] 
       (.C(clk),
        .CE(\reg_coeff[57][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[57] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][10] 
       (.C(clk),
        .CE(\reg_coeff[57][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[57] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][11] 
       (.C(clk),
        .CE(\reg_coeff[57][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[57] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][12] 
       (.C(clk),
        .CE(\reg_coeff[57][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[57] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][13] 
       (.C(clk),
        .CE(\reg_coeff[57][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[57] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][14] 
       (.C(clk),
        .CE(\reg_coeff[57][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[57] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][15] 
       (.C(clk),
        .CE(\reg_coeff[57][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[57] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][1] 
       (.C(clk),
        .CE(\reg_coeff[57][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[57] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][2] 
       (.C(clk),
        .CE(\reg_coeff[57][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[57] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][3] 
       (.C(clk),
        .CE(\reg_coeff[57][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[57] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][4] 
       (.C(clk),
        .CE(\reg_coeff[57][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[57] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][5] 
       (.C(clk),
        .CE(\reg_coeff[57][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[57] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][6] 
       (.C(clk),
        .CE(\reg_coeff[57][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[57] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][7] 
       (.C(clk),
        .CE(\reg_coeff[57][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[57] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][8] 
       (.C(clk),
        .CE(\reg_coeff[57][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[57] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[57][9] 
       (.C(clk),
        .CE(\reg_coeff[57][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[57] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][0] 
       (.C(clk),
        .CE(\reg_coeff[58][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[58] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][10] 
       (.C(clk),
        .CE(\reg_coeff[58][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[58] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][11] 
       (.C(clk),
        .CE(\reg_coeff[58][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[58] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][12] 
       (.C(clk),
        .CE(\reg_coeff[58][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[58] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][13] 
       (.C(clk),
        .CE(\reg_coeff[58][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[58] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][14] 
       (.C(clk),
        .CE(\reg_coeff[58][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[58] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][15] 
       (.C(clk),
        .CE(\reg_coeff[58][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[58] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][1] 
       (.C(clk),
        .CE(\reg_coeff[58][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[58] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][2] 
       (.C(clk),
        .CE(\reg_coeff[58][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[58] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][3] 
       (.C(clk),
        .CE(\reg_coeff[58][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[58] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][4] 
       (.C(clk),
        .CE(\reg_coeff[58][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[58] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][5] 
       (.C(clk),
        .CE(\reg_coeff[58][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[58] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][6] 
       (.C(clk),
        .CE(\reg_coeff[58][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[58] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][7] 
       (.C(clk),
        .CE(\reg_coeff[58][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[58] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][8] 
       (.C(clk),
        .CE(\reg_coeff[58][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[58] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[58][9] 
       (.C(clk),
        .CE(\reg_coeff[58][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[58] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][0] 
       (.C(clk),
        .CE(\reg_coeff[59][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[59] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][10] 
       (.C(clk),
        .CE(\reg_coeff[59][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[59] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][11] 
       (.C(clk),
        .CE(\reg_coeff[59][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[59] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][12] 
       (.C(clk),
        .CE(\reg_coeff[59][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[59] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][13] 
       (.C(clk),
        .CE(\reg_coeff[59][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[59] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][14] 
       (.C(clk),
        .CE(\reg_coeff[59][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[59] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][15] 
       (.C(clk),
        .CE(\reg_coeff[59][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[59] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][1] 
       (.C(clk),
        .CE(\reg_coeff[59][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[59] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][2] 
       (.C(clk),
        .CE(\reg_coeff[59][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[59] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][3] 
       (.C(clk),
        .CE(\reg_coeff[59][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[59] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][4] 
       (.C(clk),
        .CE(\reg_coeff[59][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[59] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][5] 
       (.C(clk),
        .CE(\reg_coeff[59][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[59] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][6] 
       (.C(clk),
        .CE(\reg_coeff[59][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[59] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][7] 
       (.C(clk),
        .CE(\reg_coeff[59][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[59] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][8] 
       (.C(clk),
        .CE(\reg_coeff[59][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[59] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[59][9] 
       (.C(clk),
        .CE(\reg_coeff[59][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[59] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][0] 
       (.C(clk),
        .CE(\reg_coeff[5][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[5] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][10] 
       (.C(clk),
        .CE(\reg_coeff[5][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[5] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][11] 
       (.C(clk),
        .CE(\reg_coeff[5][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[5] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][12] 
       (.C(clk),
        .CE(\reg_coeff[5][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[5] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][13] 
       (.C(clk),
        .CE(\reg_coeff[5][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[5] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][14] 
       (.C(clk),
        .CE(\reg_coeff[5][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[5] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][15] 
       (.C(clk),
        .CE(\reg_coeff[5][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[5] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][1] 
       (.C(clk),
        .CE(\reg_coeff[5][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[5] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][2] 
       (.C(clk),
        .CE(\reg_coeff[5][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[5] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][3] 
       (.C(clk),
        .CE(\reg_coeff[5][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[5] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][4] 
       (.C(clk),
        .CE(\reg_coeff[5][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[5] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][5] 
       (.C(clk),
        .CE(\reg_coeff[5][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[5] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][6] 
       (.C(clk),
        .CE(\reg_coeff[5][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[5] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][7] 
       (.C(clk),
        .CE(\reg_coeff[5][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[5] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][8] 
       (.C(clk),
        .CE(\reg_coeff[5][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[5] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[5][9] 
       (.C(clk),
        .CE(\reg_coeff[5][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[5] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][0] 
       (.C(clk),
        .CE(\reg_coeff[60][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[60] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][10] 
       (.C(clk),
        .CE(\reg_coeff[60][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[60] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][11] 
       (.C(clk),
        .CE(\reg_coeff[60][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[60] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][12] 
       (.C(clk),
        .CE(\reg_coeff[60][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[60] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][13] 
       (.C(clk),
        .CE(\reg_coeff[60][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[60] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][14] 
       (.C(clk),
        .CE(\reg_coeff[60][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[60] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][15] 
       (.C(clk),
        .CE(\reg_coeff[60][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[60] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][1] 
       (.C(clk),
        .CE(\reg_coeff[60][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[60] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][2] 
       (.C(clk),
        .CE(\reg_coeff[60][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[60] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][3] 
       (.C(clk),
        .CE(\reg_coeff[60][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[60] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][4] 
       (.C(clk),
        .CE(\reg_coeff[60][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[60] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][5] 
       (.C(clk),
        .CE(\reg_coeff[60][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[60] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][6] 
       (.C(clk),
        .CE(\reg_coeff[60][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[60] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][7] 
       (.C(clk),
        .CE(\reg_coeff[60][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[60] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][8] 
       (.C(clk),
        .CE(\reg_coeff[60][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[60] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[60][9] 
       (.C(clk),
        .CE(\reg_coeff[60][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[60] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][0] 
       (.C(clk),
        .CE(\reg_coeff[61][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[61] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][10] 
       (.C(clk),
        .CE(\reg_coeff[61][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[61] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][11] 
       (.C(clk),
        .CE(\reg_coeff[61][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[61] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][12] 
       (.C(clk),
        .CE(\reg_coeff[61][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[61] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][13] 
       (.C(clk),
        .CE(\reg_coeff[61][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[61] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][14] 
       (.C(clk),
        .CE(\reg_coeff[61][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[61] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][15] 
       (.C(clk),
        .CE(\reg_coeff[61][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[61] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][1] 
       (.C(clk),
        .CE(\reg_coeff[61][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[61] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][2] 
       (.C(clk),
        .CE(\reg_coeff[61][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[61] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][3] 
       (.C(clk),
        .CE(\reg_coeff[61][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[61] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][4] 
       (.C(clk),
        .CE(\reg_coeff[61][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[61] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][5] 
       (.C(clk),
        .CE(\reg_coeff[61][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[61] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][6] 
       (.C(clk),
        .CE(\reg_coeff[61][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[61] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][7] 
       (.C(clk),
        .CE(\reg_coeff[61][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[61] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][8] 
       (.C(clk),
        .CE(\reg_coeff[61][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[61] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[61][9] 
       (.C(clk),
        .CE(\reg_coeff[61][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[61] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][0] 
       (.C(clk),
        .CE(\reg_coeff[62][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[62] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][10] 
       (.C(clk),
        .CE(\reg_coeff[62][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[62] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][11] 
       (.C(clk),
        .CE(\reg_coeff[62][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[62] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][12] 
       (.C(clk),
        .CE(\reg_coeff[62][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[62] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][13] 
       (.C(clk),
        .CE(\reg_coeff[62][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[62] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][14] 
       (.C(clk),
        .CE(\reg_coeff[62][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[62] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][15] 
       (.C(clk),
        .CE(\reg_coeff[62][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[62] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][1] 
       (.C(clk),
        .CE(\reg_coeff[62][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[62] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][2] 
       (.C(clk),
        .CE(\reg_coeff[62][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[62] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][3] 
       (.C(clk),
        .CE(\reg_coeff[62][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[62] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][4] 
       (.C(clk),
        .CE(\reg_coeff[62][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[62] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][5] 
       (.C(clk),
        .CE(\reg_coeff[62][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[62] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][6] 
       (.C(clk),
        .CE(\reg_coeff[62][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[62] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][7] 
       (.C(clk),
        .CE(\reg_coeff[62][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[62] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][8] 
       (.C(clk),
        .CE(\reg_coeff[62][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[62] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[62][9] 
       (.C(clk),
        .CE(\reg_coeff[62][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[62] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][0] 
       (.C(clk),
        .CE(\reg_coeff[63][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[63] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][10] 
       (.C(clk),
        .CE(\reg_coeff[63][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[63] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][11] 
       (.C(clk),
        .CE(\reg_coeff[63][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[63] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][12] 
       (.C(clk),
        .CE(\reg_coeff[63][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[63] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][13] 
       (.C(clk),
        .CE(\reg_coeff[63][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[63] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][14] 
       (.C(clk),
        .CE(\reg_coeff[63][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[63] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][15] 
       (.C(clk),
        .CE(\reg_coeff[63][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[63] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][1] 
       (.C(clk),
        .CE(\reg_coeff[63][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[63] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][2] 
       (.C(clk),
        .CE(\reg_coeff[63][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[63] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][3] 
       (.C(clk),
        .CE(\reg_coeff[63][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[63] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][4] 
       (.C(clk),
        .CE(\reg_coeff[63][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[63] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][5] 
       (.C(clk),
        .CE(\reg_coeff[63][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[63] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][6] 
       (.C(clk),
        .CE(\reg_coeff[63][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[63] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][7] 
       (.C(clk),
        .CE(\reg_coeff[63][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[63] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][8] 
       (.C(clk),
        .CE(\reg_coeff[63][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[63] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[63][9] 
       (.C(clk),
        .CE(\reg_coeff[63][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[63] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][0] 
       (.C(clk),
        .CE(\reg_coeff[64][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[64] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][10] 
       (.C(clk),
        .CE(\reg_coeff[64][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[64] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][11] 
       (.C(clk),
        .CE(\reg_coeff[64][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[64] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][12] 
       (.C(clk),
        .CE(\reg_coeff[64][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[64] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][13] 
       (.C(clk),
        .CE(\reg_coeff[64][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[64] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][14] 
       (.C(clk),
        .CE(\reg_coeff[64][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[64] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][15] 
       (.C(clk),
        .CE(\reg_coeff[64][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[64] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][1] 
       (.C(clk),
        .CE(\reg_coeff[64][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[64] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][2] 
       (.C(clk),
        .CE(\reg_coeff[64][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[64] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][3] 
       (.C(clk),
        .CE(\reg_coeff[64][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[64] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][4] 
       (.C(clk),
        .CE(\reg_coeff[64][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[64] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][5] 
       (.C(clk),
        .CE(\reg_coeff[64][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[64] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][6] 
       (.C(clk),
        .CE(\reg_coeff[64][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[64] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][7] 
       (.C(clk),
        .CE(\reg_coeff[64][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[64] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][8] 
       (.C(clk),
        .CE(\reg_coeff[64][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[64] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[64][9] 
       (.C(clk),
        .CE(\reg_coeff[64][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[64] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][0] 
       (.C(clk),
        .CE(\reg_coeff[65][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[65] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][10] 
       (.C(clk),
        .CE(\reg_coeff[65][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[65] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][11] 
       (.C(clk),
        .CE(\reg_coeff[65][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[65] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][12] 
       (.C(clk),
        .CE(\reg_coeff[65][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[65] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][13] 
       (.C(clk),
        .CE(\reg_coeff[65][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[65] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][14] 
       (.C(clk),
        .CE(\reg_coeff[65][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[65] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][15] 
       (.C(clk),
        .CE(\reg_coeff[65][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[65] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][1] 
       (.C(clk),
        .CE(\reg_coeff[65][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[65] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][2] 
       (.C(clk),
        .CE(\reg_coeff[65][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[65] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][3] 
       (.C(clk),
        .CE(\reg_coeff[65][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[65] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][4] 
       (.C(clk),
        .CE(\reg_coeff[65][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[65] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][5] 
       (.C(clk),
        .CE(\reg_coeff[65][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[65] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][6] 
       (.C(clk),
        .CE(\reg_coeff[65][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[65] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][7] 
       (.C(clk),
        .CE(\reg_coeff[65][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[65] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][8] 
       (.C(clk),
        .CE(\reg_coeff[65][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[65] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[65][9] 
       (.C(clk),
        .CE(\reg_coeff[65][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[65] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][0] 
       (.C(clk),
        .CE(\reg_coeff[66][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[66] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][10] 
       (.C(clk),
        .CE(\reg_coeff[66][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[66] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][11] 
       (.C(clk),
        .CE(\reg_coeff[66][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[66] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][12] 
       (.C(clk),
        .CE(\reg_coeff[66][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[66] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][13] 
       (.C(clk),
        .CE(\reg_coeff[66][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[66] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][14] 
       (.C(clk),
        .CE(\reg_coeff[66][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[66] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][15] 
       (.C(clk),
        .CE(\reg_coeff[66][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[66] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][1] 
       (.C(clk),
        .CE(\reg_coeff[66][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[66] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][2] 
       (.C(clk),
        .CE(\reg_coeff[66][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[66] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][3] 
       (.C(clk),
        .CE(\reg_coeff[66][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[66] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][4] 
       (.C(clk),
        .CE(\reg_coeff[66][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[66] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][5] 
       (.C(clk),
        .CE(\reg_coeff[66][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[66] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][6] 
       (.C(clk),
        .CE(\reg_coeff[66][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[66] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][7] 
       (.C(clk),
        .CE(\reg_coeff[66][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[66] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][8] 
       (.C(clk),
        .CE(\reg_coeff[66][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[66] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[66][9] 
       (.C(clk),
        .CE(\reg_coeff[66][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[66] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][0] 
       (.C(clk),
        .CE(\reg_coeff[67][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[67] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][10] 
       (.C(clk),
        .CE(\reg_coeff[67][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[67] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][11] 
       (.C(clk),
        .CE(\reg_coeff[67][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[67] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][12] 
       (.C(clk),
        .CE(\reg_coeff[67][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[67] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][13] 
       (.C(clk),
        .CE(\reg_coeff[67][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[67] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][14] 
       (.C(clk),
        .CE(\reg_coeff[67][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[67] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][15] 
       (.C(clk),
        .CE(\reg_coeff[67][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[67] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][1] 
       (.C(clk),
        .CE(\reg_coeff[67][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[67] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][2] 
       (.C(clk),
        .CE(\reg_coeff[67][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[67] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][3] 
       (.C(clk),
        .CE(\reg_coeff[67][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[67] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][4] 
       (.C(clk),
        .CE(\reg_coeff[67][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[67] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][5] 
       (.C(clk),
        .CE(\reg_coeff[67][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[67] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][6] 
       (.C(clk),
        .CE(\reg_coeff[67][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[67] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][7] 
       (.C(clk),
        .CE(\reg_coeff[67][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[67] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][8] 
       (.C(clk),
        .CE(\reg_coeff[67][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[67] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[67][9] 
       (.C(clk),
        .CE(\reg_coeff[67][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[67] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][0] 
       (.C(clk),
        .CE(\reg_coeff[68][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[68] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][10] 
       (.C(clk),
        .CE(\reg_coeff[68][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[68] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][11] 
       (.C(clk),
        .CE(\reg_coeff[68][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[68] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][12] 
       (.C(clk),
        .CE(\reg_coeff[68][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[68] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][13] 
       (.C(clk),
        .CE(\reg_coeff[68][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[68] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][14] 
       (.C(clk),
        .CE(\reg_coeff[68][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[68] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][15] 
       (.C(clk),
        .CE(\reg_coeff[68][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[68] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][1] 
       (.C(clk),
        .CE(\reg_coeff[68][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[68] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][2] 
       (.C(clk),
        .CE(\reg_coeff[68][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[68] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][3] 
       (.C(clk),
        .CE(\reg_coeff[68][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[68] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][4] 
       (.C(clk),
        .CE(\reg_coeff[68][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[68] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][5] 
       (.C(clk),
        .CE(\reg_coeff[68][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[68] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][6] 
       (.C(clk),
        .CE(\reg_coeff[68][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[68] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][7] 
       (.C(clk),
        .CE(\reg_coeff[68][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[68] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][8] 
       (.C(clk),
        .CE(\reg_coeff[68][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[68] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[68][9] 
       (.C(clk),
        .CE(\reg_coeff[68][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[68] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][0] 
       (.C(clk),
        .CE(\reg_coeff[69][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[69] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][10] 
       (.C(clk),
        .CE(\reg_coeff[69][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[69] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][11] 
       (.C(clk),
        .CE(\reg_coeff[69][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[69] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][12] 
       (.C(clk),
        .CE(\reg_coeff[69][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[69] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][13] 
       (.C(clk),
        .CE(\reg_coeff[69][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[69] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][14] 
       (.C(clk),
        .CE(\reg_coeff[69][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[69] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][15] 
       (.C(clk),
        .CE(\reg_coeff[69][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[69] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][1] 
       (.C(clk),
        .CE(\reg_coeff[69][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[69] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][2] 
       (.C(clk),
        .CE(\reg_coeff[69][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[69] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][3] 
       (.C(clk),
        .CE(\reg_coeff[69][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[69] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][4] 
       (.C(clk),
        .CE(\reg_coeff[69][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[69] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][5] 
       (.C(clk),
        .CE(\reg_coeff[69][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[69] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][6] 
       (.C(clk),
        .CE(\reg_coeff[69][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[69] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][7] 
       (.C(clk),
        .CE(\reg_coeff[69][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[69] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][8] 
       (.C(clk),
        .CE(\reg_coeff[69][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[69] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[69][9] 
       (.C(clk),
        .CE(\reg_coeff[69][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[69] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][0] 
       (.C(clk),
        .CE(\reg_coeff[6][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[6] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][10] 
       (.C(clk),
        .CE(\reg_coeff[6][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[6] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][11] 
       (.C(clk),
        .CE(\reg_coeff[6][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[6] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][12] 
       (.C(clk),
        .CE(\reg_coeff[6][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[6] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][13] 
       (.C(clk),
        .CE(\reg_coeff[6][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[6] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][14] 
       (.C(clk),
        .CE(\reg_coeff[6][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[6] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][15] 
       (.C(clk),
        .CE(\reg_coeff[6][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[6] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][1] 
       (.C(clk),
        .CE(\reg_coeff[6][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[6] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][2] 
       (.C(clk),
        .CE(\reg_coeff[6][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[6] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][3] 
       (.C(clk),
        .CE(\reg_coeff[6][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[6] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][4] 
       (.C(clk),
        .CE(\reg_coeff[6][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[6] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][5] 
       (.C(clk),
        .CE(\reg_coeff[6][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[6] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][6] 
       (.C(clk),
        .CE(\reg_coeff[6][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[6] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][7] 
       (.C(clk),
        .CE(\reg_coeff[6][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[6] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][8] 
       (.C(clk),
        .CE(\reg_coeff[6][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[6] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[6][9] 
       (.C(clk),
        .CE(\reg_coeff[6][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[6] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][0] 
       (.C(clk),
        .CE(\reg_coeff[70][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[70] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][10] 
       (.C(clk),
        .CE(\reg_coeff[70][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[70] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][11] 
       (.C(clk),
        .CE(\reg_coeff[70][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[70] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][12] 
       (.C(clk),
        .CE(\reg_coeff[70][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[70] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][13] 
       (.C(clk),
        .CE(\reg_coeff[70][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[70] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][14] 
       (.C(clk),
        .CE(\reg_coeff[70][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[70] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][15] 
       (.C(clk),
        .CE(\reg_coeff[70][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[70] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][1] 
       (.C(clk),
        .CE(\reg_coeff[70][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[70] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][2] 
       (.C(clk),
        .CE(\reg_coeff[70][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[70] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][3] 
       (.C(clk),
        .CE(\reg_coeff[70][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[70] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][4] 
       (.C(clk),
        .CE(\reg_coeff[70][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[70] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][5] 
       (.C(clk),
        .CE(\reg_coeff[70][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[70] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][6] 
       (.C(clk),
        .CE(\reg_coeff[70][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[70] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][7] 
       (.C(clk),
        .CE(\reg_coeff[70][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[70] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][8] 
       (.C(clk),
        .CE(\reg_coeff[70][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[70] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[70][9] 
       (.C(clk),
        .CE(\reg_coeff[70][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[70] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][0] 
       (.C(clk),
        .CE(\reg_coeff[71][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[71] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][10] 
       (.C(clk),
        .CE(\reg_coeff[71][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[71] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][11] 
       (.C(clk),
        .CE(\reg_coeff[71][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[71] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][12] 
       (.C(clk),
        .CE(\reg_coeff[71][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[71] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][13] 
       (.C(clk),
        .CE(\reg_coeff[71][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[71] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][14] 
       (.C(clk),
        .CE(\reg_coeff[71][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[71] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][15] 
       (.C(clk),
        .CE(\reg_coeff[71][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[71] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][1] 
       (.C(clk),
        .CE(\reg_coeff[71][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[71] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][2] 
       (.C(clk),
        .CE(\reg_coeff[71][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[71] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][3] 
       (.C(clk),
        .CE(\reg_coeff[71][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[71] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][4] 
       (.C(clk),
        .CE(\reg_coeff[71][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[71] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][5] 
       (.C(clk),
        .CE(\reg_coeff[71][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[71] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][6] 
       (.C(clk),
        .CE(\reg_coeff[71][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[71] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][7] 
       (.C(clk),
        .CE(\reg_coeff[71][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[71] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][8] 
       (.C(clk),
        .CE(\reg_coeff[71][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[71] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[71][9] 
       (.C(clk),
        .CE(\reg_coeff[71][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[71] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][0] 
       (.C(clk),
        .CE(\reg_coeff[72][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[72] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][10] 
       (.C(clk),
        .CE(\reg_coeff[72][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[72] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][11] 
       (.C(clk),
        .CE(\reg_coeff[72][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[72] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][12] 
       (.C(clk),
        .CE(\reg_coeff[72][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[72] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][13] 
       (.C(clk),
        .CE(\reg_coeff[72][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[72] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][14] 
       (.C(clk),
        .CE(\reg_coeff[72][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[72] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][15] 
       (.C(clk),
        .CE(\reg_coeff[72][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[72] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][1] 
       (.C(clk),
        .CE(\reg_coeff[72][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[72] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][2] 
       (.C(clk),
        .CE(\reg_coeff[72][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[72] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][3] 
       (.C(clk),
        .CE(\reg_coeff[72][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[72] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][4] 
       (.C(clk),
        .CE(\reg_coeff[72][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[72] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][5] 
       (.C(clk),
        .CE(\reg_coeff[72][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[72] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][6] 
       (.C(clk),
        .CE(\reg_coeff[72][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[72] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][7] 
       (.C(clk),
        .CE(\reg_coeff[72][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[72] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][8] 
       (.C(clk),
        .CE(\reg_coeff[72][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[72] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[72][9] 
       (.C(clk),
        .CE(\reg_coeff[72][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[72] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][0] 
       (.C(clk),
        .CE(\reg_coeff[73][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[73] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][10] 
       (.C(clk),
        .CE(\reg_coeff[73][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[73] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][11] 
       (.C(clk),
        .CE(\reg_coeff[73][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[73] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][12] 
       (.C(clk),
        .CE(\reg_coeff[73][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[73] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][13] 
       (.C(clk),
        .CE(\reg_coeff[73][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[73] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][14] 
       (.C(clk),
        .CE(\reg_coeff[73][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[73] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][15] 
       (.C(clk),
        .CE(\reg_coeff[73][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[73] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][1] 
       (.C(clk),
        .CE(\reg_coeff[73][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[73] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][2] 
       (.C(clk),
        .CE(\reg_coeff[73][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[73] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][3] 
       (.C(clk),
        .CE(\reg_coeff[73][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[73] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][4] 
       (.C(clk),
        .CE(\reg_coeff[73][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[73] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][5] 
       (.C(clk),
        .CE(\reg_coeff[73][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[73] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][6] 
       (.C(clk),
        .CE(\reg_coeff[73][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[73] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][7] 
       (.C(clk),
        .CE(\reg_coeff[73][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[73] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][8] 
       (.C(clk),
        .CE(\reg_coeff[73][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[73] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[73][9] 
       (.C(clk),
        .CE(\reg_coeff[73][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[73] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][0] 
       (.C(clk),
        .CE(\reg_coeff[74][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[74] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][10] 
       (.C(clk),
        .CE(\reg_coeff[74][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[74] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][11] 
       (.C(clk),
        .CE(\reg_coeff[74][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[74] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][12] 
       (.C(clk),
        .CE(\reg_coeff[74][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[74] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][13] 
       (.C(clk),
        .CE(\reg_coeff[74][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[74] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][14] 
       (.C(clk),
        .CE(\reg_coeff[74][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[74] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][15] 
       (.C(clk),
        .CE(\reg_coeff[74][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[74] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][1] 
       (.C(clk),
        .CE(\reg_coeff[74][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[74] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][2] 
       (.C(clk),
        .CE(\reg_coeff[74][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[74] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][3] 
       (.C(clk),
        .CE(\reg_coeff[74][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[74] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][4] 
       (.C(clk),
        .CE(\reg_coeff[74][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[74] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][5] 
       (.C(clk),
        .CE(\reg_coeff[74][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[74] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][6] 
       (.C(clk),
        .CE(\reg_coeff[74][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[74] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][7] 
       (.C(clk),
        .CE(\reg_coeff[74][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[74] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][8] 
       (.C(clk),
        .CE(\reg_coeff[74][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[74] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[74][9] 
       (.C(clk),
        .CE(\reg_coeff[74][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[74] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][0] 
       (.C(clk),
        .CE(\reg_coeff[75][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[75] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][10] 
       (.C(clk),
        .CE(\reg_coeff[75][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[75] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][11] 
       (.C(clk),
        .CE(\reg_coeff[75][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[75] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][12] 
       (.C(clk),
        .CE(\reg_coeff[75][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[75] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][13] 
       (.C(clk),
        .CE(\reg_coeff[75][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[75] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][14] 
       (.C(clk),
        .CE(\reg_coeff[75][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[75] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][15] 
       (.C(clk),
        .CE(\reg_coeff[75][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[75] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][1] 
       (.C(clk),
        .CE(\reg_coeff[75][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[75] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][2] 
       (.C(clk),
        .CE(\reg_coeff[75][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[75] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][3] 
       (.C(clk),
        .CE(\reg_coeff[75][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[75] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][4] 
       (.C(clk),
        .CE(\reg_coeff[75][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[75] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][5] 
       (.C(clk),
        .CE(\reg_coeff[75][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[75] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][6] 
       (.C(clk),
        .CE(\reg_coeff[75][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[75] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][7] 
       (.C(clk),
        .CE(\reg_coeff[75][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[75] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][8] 
       (.C(clk),
        .CE(\reg_coeff[75][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[75] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[75][9] 
       (.C(clk),
        .CE(\reg_coeff[75][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[75] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][0] 
       (.C(clk),
        .CE(\reg_coeff[76][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[76] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][10] 
       (.C(clk),
        .CE(\reg_coeff[76][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[76] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][11] 
       (.C(clk),
        .CE(\reg_coeff[76][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[76] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][12] 
       (.C(clk),
        .CE(\reg_coeff[76][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[76] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][13] 
       (.C(clk),
        .CE(\reg_coeff[76][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[76] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][14] 
       (.C(clk),
        .CE(\reg_coeff[76][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[76] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][15] 
       (.C(clk),
        .CE(\reg_coeff[76][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[76] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][1] 
       (.C(clk),
        .CE(\reg_coeff[76][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[76] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][2] 
       (.C(clk),
        .CE(\reg_coeff[76][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[76] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][3] 
       (.C(clk),
        .CE(\reg_coeff[76][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[76] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][4] 
       (.C(clk),
        .CE(\reg_coeff[76][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[76] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][5] 
       (.C(clk),
        .CE(\reg_coeff[76][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[76] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][6] 
       (.C(clk),
        .CE(\reg_coeff[76][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[76] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][7] 
       (.C(clk),
        .CE(\reg_coeff[76][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[76] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][8] 
       (.C(clk),
        .CE(\reg_coeff[76][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[76] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[76][9] 
       (.C(clk),
        .CE(\reg_coeff[76][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[76] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][0] 
       (.C(clk),
        .CE(\reg_coeff[77][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[77] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][10] 
       (.C(clk),
        .CE(\reg_coeff[77][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[77] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][11] 
       (.C(clk),
        .CE(\reg_coeff[77][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[77] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][12] 
       (.C(clk),
        .CE(\reg_coeff[77][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[77] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][13] 
       (.C(clk),
        .CE(\reg_coeff[77][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[77] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][14] 
       (.C(clk),
        .CE(\reg_coeff[77][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[77] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][15] 
       (.C(clk),
        .CE(\reg_coeff[77][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[77] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][1] 
       (.C(clk),
        .CE(\reg_coeff[77][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[77] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][2] 
       (.C(clk),
        .CE(\reg_coeff[77][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[77] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][3] 
       (.C(clk),
        .CE(\reg_coeff[77][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[77] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][4] 
       (.C(clk),
        .CE(\reg_coeff[77][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[77] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][5] 
       (.C(clk),
        .CE(\reg_coeff[77][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[77] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][6] 
       (.C(clk),
        .CE(\reg_coeff[77][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[77] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][7] 
       (.C(clk),
        .CE(\reg_coeff[77][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[77] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][8] 
       (.C(clk),
        .CE(\reg_coeff[77][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[77] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[77][9] 
       (.C(clk),
        .CE(\reg_coeff[77][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[77] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][0] 
       (.C(clk),
        .CE(\reg_coeff[78][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[78] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][10] 
       (.C(clk),
        .CE(\reg_coeff[78][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[78] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][11] 
       (.C(clk),
        .CE(\reg_coeff[78][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[78] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][12] 
       (.C(clk),
        .CE(\reg_coeff[78][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[78] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][13] 
       (.C(clk),
        .CE(\reg_coeff[78][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[78] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][14] 
       (.C(clk),
        .CE(\reg_coeff[78][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[78] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][15] 
       (.C(clk),
        .CE(\reg_coeff[78][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[78] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][1] 
       (.C(clk),
        .CE(\reg_coeff[78][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[78] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][2] 
       (.C(clk),
        .CE(\reg_coeff[78][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[78] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][3] 
       (.C(clk),
        .CE(\reg_coeff[78][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[78] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][4] 
       (.C(clk),
        .CE(\reg_coeff[78][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[78] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][5] 
       (.C(clk),
        .CE(\reg_coeff[78][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[78] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][6] 
       (.C(clk),
        .CE(\reg_coeff[78][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[78] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][7] 
       (.C(clk),
        .CE(\reg_coeff[78][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[78] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][8] 
       (.C(clk),
        .CE(\reg_coeff[78][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[78] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[78][9] 
       (.C(clk),
        .CE(\reg_coeff[78][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[78] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][0] 
       (.C(clk),
        .CE(\reg_coeff[79][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[79] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][10] 
       (.C(clk),
        .CE(\reg_coeff[79][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[79] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][11] 
       (.C(clk),
        .CE(\reg_coeff[79][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[79] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][12] 
       (.C(clk),
        .CE(\reg_coeff[79][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[79] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][13] 
       (.C(clk),
        .CE(\reg_coeff[79][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[79] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][14] 
       (.C(clk),
        .CE(\reg_coeff[79][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[79] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][15] 
       (.C(clk),
        .CE(\reg_coeff[79][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[79] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][1] 
       (.C(clk),
        .CE(\reg_coeff[79][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[79] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][2] 
       (.C(clk),
        .CE(\reg_coeff[79][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[79] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][3] 
       (.C(clk),
        .CE(\reg_coeff[79][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[79] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][4] 
       (.C(clk),
        .CE(\reg_coeff[79][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[79] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][5] 
       (.C(clk),
        .CE(\reg_coeff[79][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[79] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][6] 
       (.C(clk),
        .CE(\reg_coeff[79][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[79] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][7] 
       (.C(clk),
        .CE(\reg_coeff[79][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[79] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][8] 
       (.C(clk),
        .CE(\reg_coeff[79][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[79] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[79][9] 
       (.C(clk),
        .CE(\reg_coeff[79][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[79] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][0] 
       (.C(clk),
        .CE(\reg_coeff[7][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[7] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][10] 
       (.C(clk),
        .CE(\reg_coeff[7][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[7] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][11] 
       (.C(clk),
        .CE(\reg_coeff[7][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[7] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][12] 
       (.C(clk),
        .CE(\reg_coeff[7][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[7] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][13] 
       (.C(clk),
        .CE(\reg_coeff[7][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[7] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][14] 
       (.C(clk),
        .CE(\reg_coeff[7][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[7] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][15] 
       (.C(clk),
        .CE(\reg_coeff[7][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[7] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][1] 
       (.C(clk),
        .CE(\reg_coeff[7][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[7] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][2] 
       (.C(clk),
        .CE(\reg_coeff[7][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[7] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][3] 
       (.C(clk),
        .CE(\reg_coeff[7][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[7] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][4] 
       (.C(clk),
        .CE(\reg_coeff[7][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[7] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][5] 
       (.C(clk),
        .CE(\reg_coeff[7][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[7] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][6] 
       (.C(clk),
        .CE(\reg_coeff[7][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[7] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][7] 
       (.C(clk),
        .CE(\reg_coeff[7][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[7] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][8] 
       (.C(clk),
        .CE(\reg_coeff[7][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[7] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[7][9] 
       (.C(clk),
        .CE(\reg_coeff[7][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[7] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][0] 
       (.C(clk),
        .CE(\reg_coeff[80][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[80] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][10] 
       (.C(clk),
        .CE(\reg_coeff[80][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[80] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][11] 
       (.C(clk),
        .CE(\reg_coeff[80][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[80] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][12] 
       (.C(clk),
        .CE(\reg_coeff[80][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[80] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][13] 
       (.C(clk),
        .CE(\reg_coeff[80][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[80] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][14] 
       (.C(clk),
        .CE(\reg_coeff[80][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[80] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][15] 
       (.C(clk),
        .CE(\reg_coeff[80][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[80] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][1] 
       (.C(clk),
        .CE(\reg_coeff[80][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[80] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][2] 
       (.C(clk),
        .CE(\reg_coeff[80][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[80] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][3] 
       (.C(clk),
        .CE(\reg_coeff[80][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[80] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][4] 
       (.C(clk),
        .CE(\reg_coeff[80][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[80] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][5] 
       (.C(clk),
        .CE(\reg_coeff[80][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[80] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][6] 
       (.C(clk),
        .CE(\reg_coeff[80][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[80] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][7] 
       (.C(clk),
        .CE(\reg_coeff[80][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[80] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][8] 
       (.C(clk),
        .CE(\reg_coeff[80][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[80] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[80][9] 
       (.C(clk),
        .CE(\reg_coeff[80][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[80] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][0] 
       (.C(clk),
        .CE(\reg_coeff[8][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[8] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][10] 
       (.C(clk),
        .CE(\reg_coeff[8][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[8] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][11] 
       (.C(clk),
        .CE(\reg_coeff[8][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[8] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][12] 
       (.C(clk),
        .CE(\reg_coeff[8][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[8] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][13] 
       (.C(clk),
        .CE(\reg_coeff[8][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[8] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][14] 
       (.C(clk),
        .CE(\reg_coeff[8][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[8] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][15] 
       (.C(clk),
        .CE(\reg_coeff[8][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[8] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][1] 
       (.C(clk),
        .CE(\reg_coeff[8][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[8] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][2] 
       (.C(clk),
        .CE(\reg_coeff[8][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[8] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][3] 
       (.C(clk),
        .CE(\reg_coeff[8][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[8] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][4] 
       (.C(clk),
        .CE(\reg_coeff[8][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[8] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][5] 
       (.C(clk),
        .CE(\reg_coeff[8][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[8] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][6] 
       (.C(clk),
        .CE(\reg_coeff[8][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[8] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][7] 
       (.C(clk),
        .CE(\reg_coeff[8][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[8] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][8] 
       (.C(clk),
        .CE(\reg_coeff[8][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[8] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[8][9] 
       (.C(clk),
        .CE(\reg_coeff[8][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[8] [9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][0] 
       (.C(clk),
        .CE(\reg_coeff[9][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\reg_coeff_reg[9] [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][10] 
       (.C(clk),
        .CE(\reg_coeff[9][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\reg_coeff_reg[9] [10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][11] 
       (.C(clk),
        .CE(\reg_coeff[9][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\reg_coeff_reg[9] [11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][12] 
       (.C(clk),
        .CE(\reg_coeff[9][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\reg_coeff_reg[9] [12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][13] 
       (.C(clk),
        .CE(\reg_coeff[9][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\reg_coeff_reg[9] [13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][14] 
       (.C(clk),
        .CE(\reg_coeff[9][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\reg_coeff_reg[9] [14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][15] 
       (.C(clk),
        .CE(\reg_coeff[9][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\reg_coeff_reg[9] [15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][1] 
       (.C(clk),
        .CE(\reg_coeff[9][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\reg_coeff_reg[9] [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][2] 
       (.C(clk),
        .CE(\reg_coeff[9][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\reg_coeff_reg[9] [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][3] 
       (.C(clk),
        .CE(\reg_coeff[9][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\reg_coeff_reg[9] [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][4] 
       (.C(clk),
        .CE(\reg_coeff[9][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\reg_coeff_reg[9] [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][5] 
       (.C(clk),
        .CE(\reg_coeff[9][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\reg_coeff_reg[9] [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][6] 
       (.C(clk),
        .CE(\reg_coeff[9][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\reg_coeff_reg[9] [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][7] 
       (.C(clk),
        .CE(\reg_coeff[9][7]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\reg_coeff_reg[9] [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][8] 
       (.C(clk),
        .CE(\reg_coeff[9][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\reg_coeff_reg[9] [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_reg[9][9] 
       (.C(clk),
        .CE(\reg_coeff[9][15]_i_1_n_0 ),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\reg_coeff_reg[9] [9]),
        .R(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\reg_coeff_scale[7]_i_2_n_0 ),
        .I2(reg_coeff_scale[0]),
        .O(\reg_coeff_scale[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[10]_i_1 
       (.I0(s_axi_ctrl_wdata[10]),
        .I1(\reg_coeff_scale[15]_i_2_n_0 ),
        .I2(reg_coeff_scale[10]),
        .O(\reg_coeff_scale[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[11]_i_1 
       (.I0(s_axi_ctrl_wdata[11]),
        .I1(\reg_coeff_scale[15]_i_2_n_0 ),
        .I2(reg_coeff_scale[11]),
        .O(\reg_coeff_scale[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[12]_i_1 
       (.I0(s_axi_ctrl_wdata[12]),
        .I1(\reg_coeff_scale[15]_i_2_n_0 ),
        .I2(reg_coeff_scale[12]),
        .O(\reg_coeff_scale[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[13]_i_1 
       (.I0(s_axi_ctrl_wdata[13]),
        .I1(\reg_coeff_scale[15]_i_2_n_0 ),
        .I2(reg_coeff_scale[13]),
        .O(\reg_coeff_scale[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[14]_i_1 
       (.I0(s_axi_ctrl_wdata[14]),
        .I1(\reg_coeff_scale[15]_i_2_n_0 ),
        .I2(reg_coeff_scale[14]),
        .O(\reg_coeff_scale[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[15]_i_1 
       (.I0(s_axi_ctrl_wdata[15]),
        .I1(\reg_coeff_scale[15]_i_2_n_0 ),
        .I2(reg_coeff_scale[15]),
        .O(\reg_coeff_scale[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_coeff_scale[15]_i_2 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_coeff_scale[15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(\reg_coeff[21][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff_scale[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \reg_coeff_scale[15]_i_3 
       (.I0(s_axi_ctrl_awaddr[7]),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[9]),
        .I3(s_axi_ctrl_awaddr[8]),
        .O(\reg_coeff_scale[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\reg_coeff_scale[7]_i_2_n_0 ),
        .I2(reg_coeff_scale[1]),
        .O(\reg_coeff_scale[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(\reg_coeff_scale[7]_i_2_n_0 ),
        .I2(reg_coeff_scale[2]),
        .O(\reg_coeff_scale[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[3]_i_1 
       (.I0(s_axi_ctrl_wdata[3]),
        .I1(\reg_coeff_scale[7]_i_2_n_0 ),
        .I2(reg_coeff_scale[3]),
        .O(\reg_coeff_scale[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[4]_i_1 
       (.I0(s_axi_ctrl_wdata[4]),
        .I1(\reg_coeff_scale[7]_i_2_n_0 ),
        .I2(reg_coeff_scale[4]),
        .O(\reg_coeff_scale[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[5]_i_1 
       (.I0(s_axi_ctrl_wdata[5]),
        .I1(\reg_coeff_scale[7]_i_2_n_0 ),
        .I2(reg_coeff_scale[5]),
        .O(\reg_coeff_scale[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[6]_i_1 
       (.I0(s_axi_ctrl_wdata[6]),
        .I1(\reg_coeff_scale[7]_i_2_n_0 ),
        .I2(reg_coeff_scale[6]),
        .O(\reg_coeff_scale[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[7]_i_1 
       (.I0(s_axi_ctrl_wdata[7]),
        .I1(\reg_coeff_scale[7]_i_2_n_0 ),
        .I2(reg_coeff_scale[7]),
        .O(\reg_coeff_scale[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_coeff_scale[7]_i_2 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_coeff_scale[15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[6]),
        .I4(\reg_coeff[21][15]_i_3_n_0 ),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_coeff_scale[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[8]_i_1 
       (.I0(s_axi_ctrl_wdata[8]),
        .I1(\reg_coeff_scale[15]_i_2_n_0 ),
        .I2(reg_coeff_scale[8]),
        .O(\reg_coeff_scale[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_coeff_scale[9]_i_1 
       (.I0(s_axi_ctrl_wdata[9]),
        .I1(\reg_coeff_scale[15]_i_2_n_0 ),
        .I2(reg_coeff_scale[9]),
        .O(\reg_coeff_scale[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[0] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[0]_i_1_n_0 ),
        .Q(reg_coeff_scale[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[10] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[10]_i_1_n_0 ),
        .Q(reg_coeff_scale[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[11] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[11]_i_1_n_0 ),
        .Q(reg_coeff_scale[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[12] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[12]_i_1_n_0 ),
        .Q(reg_coeff_scale[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[13] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[13]_i_1_n_0 ),
        .Q(reg_coeff_scale[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[14] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[14]_i_1_n_0 ),
        .Q(reg_coeff_scale[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[15] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[15]_i_1_n_0 ),
        .Q(reg_coeff_scale[15]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[1] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[1]_i_1_n_0 ),
        .Q(reg_coeff_scale[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[2] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[2]_i_1_n_0 ),
        .Q(reg_coeff_scale[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[3] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[3]_i_1_n_0 ),
        .Q(reg_coeff_scale[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[4] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[4]_i_1_n_0 ),
        .Q(reg_coeff_scale[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[5] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[5]_i_1_n_0 ),
        .Q(reg_coeff_scale[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[6] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[6]_i_1_n_0 ),
        .Q(reg_coeff_scale[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[7] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[7]_i_1_n_0 ),
        .Q(reg_coeff_scale[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[8] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[8]_i_1_n_0 ),
        .Q(reg_coeff_scale[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_coeff_scale_reg[9] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_coeff_scale[9]_i_1_n_0 ),
        .Q(reg_coeff_scale[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\reg_ctrl[7]_i_2_n_0 ),
        .I2(reg_ctrl[0]),
        .O(p_6_out[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[10]_i_1 
       (.I0(s_axi_ctrl_wdata[10]),
        .I1(\reg_ctrl[15]_i_3_n_0 ),
        .I2(reg_ctrl[10]),
        .O(p_6_out[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[11]_i_1 
       (.I0(s_axi_ctrl_wdata[11]),
        .I1(\reg_ctrl[15]_i_3_n_0 ),
        .I2(reg_ctrl[11]),
        .O(p_6_out[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[12]_i_1 
       (.I0(s_axi_ctrl_wdata[12]),
        .I1(\reg_ctrl[15]_i_3_n_0 ),
        .I2(reg_ctrl[12]),
        .O(p_6_out[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[13]_i_1 
       (.I0(s_axi_ctrl_wdata[13]),
        .I1(\reg_ctrl[15]_i_3_n_0 ),
        .I2(reg_ctrl[13]),
        .O(p_6_out[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[14]_i_1 
       (.I0(s_axi_ctrl_wdata[14]),
        .I1(\reg_ctrl[15]_i_3_n_0 ),
        .I2(reg_ctrl[14]),
        .O(p_6_out[14]));
  LUT4 #(
    .INIT(16'hF800)) 
    \reg_ctrl[15]_i_1 
       (.I0(\FSM_onehot_fsm_axi_write_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_awvalid),
        .I2(\FSM_onehot_fsm_axi_write_state_reg_n_0_[1] ),
        .I3(s_axi_ctrl_wvalid),
        .O(axi_write_ready));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[15]_i_2 
       (.I0(s_axi_ctrl_wdata[15]),
        .I1(\reg_ctrl[15]_i_3_n_0 ),
        .I2(reg_ctrl[15]),
        .O(p_6_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \reg_ctrl[15]_i_3 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_ctrl[15]_i_4_n_0 ),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[2]),
        .O(\reg_ctrl[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \reg_ctrl[15]_i_4 
       (.I0(s_axi_ctrl_awaddr[6]),
        .I1(s_axi_ctrl_awaddr[9]),
        .I2(s_axi_ctrl_awaddr[8]),
        .I3(s_axi_ctrl_awaddr[7]),
        .I4(s_axi_ctrl_awaddr[5]),
        .O(\reg_ctrl[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\reg_ctrl[7]_i_2_n_0 ),
        .I2(reg_ctrl[1]),
        .O(p_6_out[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(\reg_ctrl[7]_i_2_n_0 ),
        .I2(reg_ctrl[2]),
        .O(p_6_out[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[3]_i_1 
       (.I0(s_axi_ctrl_wdata[3]),
        .I1(\reg_ctrl[7]_i_2_n_0 ),
        .I2(reg_ctrl[3]),
        .O(p_6_out[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[4]_i_1 
       (.I0(s_axi_ctrl_wdata[4]),
        .I1(\reg_ctrl[7]_i_2_n_0 ),
        .I2(reg_ctrl[4]),
        .O(p_6_out[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[5]_i_1 
       (.I0(s_axi_ctrl_wdata[5]),
        .I1(\reg_ctrl[7]_i_2_n_0 ),
        .I2(reg_ctrl[5]),
        .O(p_6_out[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[6]_i_1 
       (.I0(s_axi_ctrl_wdata[6]),
        .I1(\reg_ctrl[7]_i_2_n_0 ),
        .I2(reg_ctrl[6]),
        .O(p_6_out[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[7]_i_1 
       (.I0(s_axi_ctrl_wdata[7]),
        .I1(\reg_ctrl[7]_i_2_n_0 ),
        .I2(reg_ctrl[7]),
        .O(p_6_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \reg_ctrl[7]_i_2 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_ctrl[15]_i_4_n_0 ),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[2]),
        .O(\reg_ctrl[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[8]_i_1 
       (.I0(s_axi_ctrl_wdata[8]),
        .I1(\reg_ctrl[15]_i_3_n_0 ),
        .I2(reg_ctrl[8]),
        .O(p_6_out[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ctrl[9]_i_1 
       (.I0(s_axi_ctrl_wdata[9]),
        .I1(\reg_ctrl[15]_i_3_n_0 ),
        .I2(reg_ctrl[9]),
        .O(p_6_out[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[0] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[0]),
        .Q(reg_ctrl[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[10] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[10]),
        .Q(reg_ctrl[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[11] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[11]),
        .Q(reg_ctrl[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[12] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[12]),
        .Q(reg_ctrl[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[13] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[13]),
        .Q(reg_ctrl[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[14] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[14]),
        .Q(reg_ctrl[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[15] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[15]),
        .Q(reg_ctrl[15]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[1] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[1]),
        .Q(reg_ctrl[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[2] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[2]),
        .Q(reg_ctrl[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[3] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[3]),
        .Q(reg_ctrl[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[4] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[4]),
        .Q(reg_ctrl[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[5] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[5]),
        .Q(reg_ctrl[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[6] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[6]),
        .Q(reg_ctrl[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[7] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[7]),
        .Q(reg_ctrl[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[8] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[8]),
        .Q(reg_ctrl[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_ctrl_reg[9] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(p_6_out[9]),
        .Q(reg_ctrl[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\reg_img_h[7]_i_2_n_0 ),
        .I2(reg_img_h[0]),
        .O(\reg_img_h[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[10]_i_1 
       (.I0(s_axi_ctrl_wdata[10]),
        .I1(\reg_img_h[15]_i_2_n_0 ),
        .I2(reg_img_h[10]),
        .O(\reg_img_h[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[11]_i_1 
       (.I0(s_axi_ctrl_wdata[11]),
        .I1(\reg_img_h[15]_i_2_n_0 ),
        .I2(reg_img_h[11]),
        .O(\reg_img_h[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[12]_i_1 
       (.I0(s_axi_ctrl_wdata[12]),
        .I1(\reg_img_h[15]_i_2_n_0 ),
        .I2(reg_img_h[12]),
        .O(\reg_img_h[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[13]_i_1 
       (.I0(s_axi_ctrl_wdata[13]),
        .I1(\reg_img_h[15]_i_2_n_0 ),
        .I2(reg_img_h[13]),
        .O(\reg_img_h[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[14]_i_1 
       (.I0(s_axi_ctrl_wdata[14]),
        .I1(\reg_img_h[15]_i_2_n_0 ),
        .I2(reg_img_h[14]),
        .O(\reg_img_h[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[15]_i_1 
       (.I0(s_axi_ctrl_wdata[15]),
        .I1(\reg_img_h[15]_i_2_n_0 ),
        .I2(reg_img_h[15]),
        .O(\reg_img_h[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h22202020)) 
    \reg_img_h[15]_i_2 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_img_h[15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[2]),
        .O(\reg_img_h[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \reg_img_h[15]_i_3 
       (.I0(s_axi_ctrl_awaddr[8]),
        .I1(\reg_coeff[73][15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[6]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[9]),
        .I5(s_axi_ctrl_awaddr[4]),
        .O(\reg_img_h[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\reg_img_h[7]_i_2_n_0 ),
        .I2(reg_img_h[1]),
        .O(\reg_img_h[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(\reg_img_h[7]_i_2_n_0 ),
        .I2(reg_img_h[2]),
        .O(\reg_img_h[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[3]_i_1 
       (.I0(s_axi_ctrl_wdata[3]),
        .I1(\reg_img_h[7]_i_2_n_0 ),
        .I2(reg_img_h[3]),
        .O(\reg_img_h[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[4]_i_1 
       (.I0(s_axi_ctrl_wdata[4]),
        .I1(\reg_img_h[7]_i_2_n_0 ),
        .I2(reg_img_h[4]),
        .O(\reg_img_h[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[5]_i_1 
       (.I0(s_axi_ctrl_wdata[5]),
        .I1(\reg_img_h[7]_i_2_n_0 ),
        .I2(reg_img_h[5]),
        .O(\reg_img_h[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[6]_i_1 
       (.I0(s_axi_ctrl_wdata[6]),
        .I1(\reg_img_h[7]_i_2_n_0 ),
        .I2(reg_img_h[6]),
        .O(\reg_img_h[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[7]_i_1 
       (.I0(s_axi_ctrl_wdata[7]),
        .I1(\reg_img_h[7]_i_2_n_0 ),
        .I2(reg_img_h[7]),
        .O(\reg_img_h[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h22202020)) 
    \reg_img_h[7]_i_2 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_img_h[15]_i_3_n_0 ),
        .I2(s_axi_ctrl_awaddr[4]),
        .I3(s_axi_ctrl_awaddr[3]),
        .I4(s_axi_ctrl_awaddr[2]),
        .O(\reg_img_h[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[8]_i_1 
       (.I0(s_axi_ctrl_wdata[8]),
        .I1(\reg_img_h[15]_i_2_n_0 ),
        .I2(reg_img_h[8]),
        .O(\reg_img_h[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_h[9]_i_1 
       (.I0(s_axi_ctrl_wdata[9]),
        .I1(\reg_img_h[15]_i_2_n_0 ),
        .I2(reg_img_h[9]),
        .O(\reg_img_h[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[0] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[0]_i_1_n_0 ),
        .Q(reg_img_h[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[10] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[10]_i_1_n_0 ),
        .Q(reg_img_h[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[11] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[11]_i_1_n_0 ),
        .Q(reg_img_h[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[12] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[12]_i_1_n_0 ),
        .Q(reg_img_h[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[13] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[13]_i_1_n_0 ),
        .Q(reg_img_h[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[14] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[14]_i_1_n_0 ),
        .Q(reg_img_h[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[15] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[15]_i_1_n_0 ),
        .Q(reg_img_h[15]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[1] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[1]_i_1_n_0 ),
        .Q(reg_img_h[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[2] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[2]_i_1_n_0 ),
        .Q(reg_img_h[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[3] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[3]_i_1_n_0 ),
        .Q(reg_img_h[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[4] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[4]_i_1_n_0 ),
        .Q(reg_img_h[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[5] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[5]_i_1_n_0 ),
        .Q(reg_img_h[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[6] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[6]_i_1_n_0 ),
        .Q(reg_img_h[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[7] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[7]_i_1_n_0 ),
        .Q(reg_img_h[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[8] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[8]_i_1_n_0 ),
        .Q(reg_img_h[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_h_reg[9] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_h[9]_i_1_n_0 ),
        .Q(reg_img_h[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[0]_i_1 
       (.I0(s_axi_ctrl_wdata[0]),
        .I1(\reg_img_w[7]_i_2_n_0 ),
        .I2(reg_img_w[0]),
        .O(\reg_img_w[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[10]_i_1 
       (.I0(s_axi_ctrl_wdata[10]),
        .I1(\reg_img_w[15]_i_2_n_0 ),
        .I2(reg_img_w[10]),
        .O(\reg_img_w[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[11]_i_1 
       (.I0(s_axi_ctrl_wdata[11]),
        .I1(\reg_img_w[15]_i_2_n_0 ),
        .I2(reg_img_w[11]),
        .O(\reg_img_w[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[12]_i_1 
       (.I0(s_axi_ctrl_wdata[12]),
        .I1(\reg_img_w[15]_i_2_n_0 ),
        .I2(reg_img_w[12]),
        .O(\reg_img_w[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[13]_i_1 
       (.I0(s_axi_ctrl_wdata[13]),
        .I1(\reg_img_w[15]_i_2_n_0 ),
        .I2(reg_img_w[13]),
        .O(\reg_img_w[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[14]_i_1 
       (.I0(s_axi_ctrl_wdata[14]),
        .I1(\reg_img_w[15]_i_2_n_0 ),
        .I2(reg_img_w[14]),
        .O(\reg_img_w[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[15]_i_1 
       (.I0(s_axi_ctrl_wdata[15]),
        .I1(\reg_img_w[15]_i_2_n_0 ),
        .I2(reg_img_w[15]),
        .O(\reg_img_w[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000222)) 
    \reg_img_w[15]_i_2 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(\reg_img_h[15]_i_3_n_0 ),
        .O(\reg_img_w[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[1]_i_1 
       (.I0(s_axi_ctrl_wdata[1]),
        .I1(\reg_img_w[7]_i_2_n_0 ),
        .I2(reg_img_w[1]),
        .O(\reg_img_w[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[2]_i_1 
       (.I0(s_axi_ctrl_wdata[2]),
        .I1(\reg_img_w[7]_i_2_n_0 ),
        .I2(reg_img_w[2]),
        .O(\reg_img_w[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[3]_i_1 
       (.I0(s_axi_ctrl_wdata[3]),
        .I1(\reg_img_w[7]_i_2_n_0 ),
        .I2(reg_img_w[3]),
        .O(\reg_img_w[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[4]_i_1 
       (.I0(s_axi_ctrl_wdata[4]),
        .I1(\reg_img_w[7]_i_2_n_0 ),
        .I2(reg_img_w[4]),
        .O(\reg_img_w[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[5]_i_1 
       (.I0(s_axi_ctrl_wdata[5]),
        .I1(\reg_img_w[7]_i_2_n_0 ),
        .I2(reg_img_w[5]),
        .O(\reg_img_w[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[6]_i_1 
       (.I0(s_axi_ctrl_wdata[6]),
        .I1(\reg_img_w[7]_i_2_n_0 ),
        .I2(reg_img_w[6]),
        .O(\reg_img_w[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[7]_i_1 
       (.I0(s_axi_ctrl_wdata[7]),
        .I1(\reg_img_w[7]_i_2_n_0 ),
        .I2(reg_img_w[7]),
        .O(\reg_img_w[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000222)) 
    \reg_img_w[7]_i_2 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(s_axi_ctrl_awaddr[4]),
        .I2(s_axi_ctrl_awaddr[3]),
        .I3(s_axi_ctrl_awaddr[2]),
        .I4(\reg_img_h[15]_i_3_n_0 ),
        .O(\reg_img_w[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[8]_i_1 
       (.I0(s_axi_ctrl_wdata[8]),
        .I1(\reg_img_w[15]_i_2_n_0 ),
        .I2(reg_img_w[8]),
        .O(\reg_img_w[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_img_w[9]_i_1 
       (.I0(s_axi_ctrl_wdata[9]),
        .I1(\reg_img_w[15]_i_2_n_0 ),
        .I2(reg_img_w[9]),
        .O(\reg_img_w[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[0] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[0]_i_1_n_0 ),
        .Q(reg_img_w[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[10] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[10]_i_1_n_0 ),
        .Q(reg_img_w[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[11] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[11]_i_1_n_0 ),
        .Q(reg_img_w[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[12] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[12]_i_1_n_0 ),
        .Q(reg_img_w[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[13] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[13]_i_1_n_0 ),
        .Q(reg_img_w[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[14] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[14]_i_1_n_0 ),
        .Q(reg_img_w[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[15] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[15]_i_1_n_0 ),
        .Q(reg_img_w[15]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[1] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[1]_i_1_n_0 ),
        .Q(reg_img_w[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[2] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[2]_i_1_n_0 ),
        .Q(reg_img_w[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[3] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[3]_i_1_n_0 ),
        .Q(reg_img_w[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[4] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[4]_i_1_n_0 ),
        .Q(reg_img_w[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[5] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[5]_i_1_n_0 ),
        .Q(reg_img_w[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[6] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[6]_i_1_n_0 ),
        .Q(reg_img_w[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[7] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[7]_i_1_n_0 ),
        .Q(reg_img_w[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[8] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[8]_i_1_n_0 ),
        .Q(reg_img_w[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_img_w_reg[9] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_img_w[9]_i_1_n_0 ),
        .Q(reg_img_w[9]),
        .R(reset));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[0]_i_1 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[0]),
        .I3(reg_radius[0]),
        .O(\reg_radius[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[10]_i_1 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[10]),
        .I3(reg_radius[10]),
        .O(\reg_radius[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[11]_i_1 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[11]),
        .I3(reg_radius[11]),
        .O(\reg_radius[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[12]_i_1 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[12]),
        .I3(reg_radius[12]),
        .O(\reg_radius[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[13]_i_1 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[13]),
        .I3(reg_radius[13]),
        .O(\reg_radius[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[14]_i_1 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[14]),
        .I3(reg_radius[14]),
        .O(\reg_radius[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[15]_i_1 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[15]),
        .I3(reg_radius[15]),
        .O(\reg_radius[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \reg_radius[15]_i_2 
       (.I0(\reg_coeff[38][15]_i_2_n_0 ),
        .I1(s_axi_ctrl_awaddr[5]),
        .I2(s_axi_ctrl_awaddr[2]),
        .I3(s_axi_ctrl_awaddr[4]),
        .I4(s_axi_ctrl_awaddr[7]),
        .I5(s_axi_ctrl_awaddr[3]),
        .O(\reg_radius[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[1]_i_1 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[1]),
        .I3(reg_radius[1]),
        .O(\reg_radius[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[2]_i_1 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[2]),
        .I3(reg_radius[2]),
        .O(\reg_radius[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[3]_i_1 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[3]),
        .I3(reg_radius[3]),
        .O(\reg_radius[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[4]_i_1 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[4]),
        .I3(reg_radius[4]),
        .O(\reg_radius[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[5]_i_1 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[5]),
        .I3(reg_radius[5]),
        .O(\reg_radius[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[6]_i_1 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[6]),
        .I3(reg_radius[6]),
        .O(\reg_radius[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[7]_i_1 
       (.I0(s_axi_ctrl_wstrb[0]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[7]),
        .I3(reg_radius[7]),
        .O(\reg_radius[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[8]_i_1 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[8]),
        .I3(reg_radius[8]),
        .O(\reg_radius[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \reg_radius[9]_i_1 
       (.I0(s_axi_ctrl_wstrb[1]),
        .I1(\reg_radius[15]_i_2_n_0 ),
        .I2(s_axi_ctrl_wdata[9]),
        .I3(reg_radius[9]),
        .O(\reg_radius[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[0] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[0]_i_1_n_0 ),
        .Q(reg_radius[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[10] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[10]_i_1_n_0 ),
        .Q(reg_radius[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[11] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[11]_i_1_n_0 ),
        .Q(reg_radius[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[12] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[12]_i_1_n_0 ),
        .Q(reg_radius[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[13] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[13]_i_1_n_0 ),
        .Q(reg_radius[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[14] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[14]_i_1_n_0 ),
        .Q(reg_radius[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[15] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[15]_i_1_n_0 ),
        .Q(reg_radius[15]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[1] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[1]_i_1_n_0 ),
        .Q(reg_radius[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[2] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[2]_i_1_n_0 ),
        .Q(reg_radius[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[3] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[3]_i_1_n_0 ),
        .Q(reg_radius[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[4] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[4]_i_1_n_0 ),
        .Q(reg_radius[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[5] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[5]_i_1_n_0 ),
        .Q(reg_radius[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[6] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[6]_i_1_n_0 ),
        .Q(reg_radius[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[7] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[7]_i_1_n_0 ),
        .Q(reg_radius[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[8] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[8]_i_1_n_0 ),
        .Q(reg_radius[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_radius_reg[9] 
       (.C(clk),
        .CE(axi_write_ready),
        .D(\reg_radius[9]_i_1_n_0 ),
        .Q(reg_radius[9]),
        .R(reset));
  LUT5 #(
    .INIT(32'hBB8BB888)) 
    \sA_data[0]_i_1 
       (.I0(sA_data[0]),
        .I1(tvalid_buffer_i_2_n_0),
        .I2(\sA_data[7]_i_2_n_0 ),
        .I3(h_ctrl[4]),
        .I4(tdata_buffer[0]),
        .O(sA_data__0[0]));
  LUT5 #(
    .INIT(32'hBB8BB888)) 
    \sA_data[1]_i_1 
       (.I0(sA_data[1]),
        .I1(tvalid_buffer_i_2_n_0),
        .I2(\sA_data[7]_i_2_n_0 ),
        .I3(h_ctrl[5]),
        .I4(tdata_buffer[1]),
        .O(sA_data__0[1]));
  LUT5 #(
    .INIT(32'hBB8BB888)) 
    \sA_data[2]_i_1 
       (.I0(sA_data[2]),
        .I1(tvalid_buffer_i_2_n_0),
        .I2(\sA_data[7]_i_2_n_0 ),
        .I3(h_ctrl[6]),
        .I4(tdata_buffer[2]),
        .O(sA_data__0[2]));
  LUT5 #(
    .INIT(32'hBB8BB888)) 
    \sA_data[3]_i_1 
       (.I0(sA_data[3]),
        .I1(tvalid_buffer_i_2_n_0),
        .I2(\sA_data[7]_i_2_n_0 ),
        .I3(h_ctrl[7]),
        .I4(tdata_buffer[3]),
        .O(sA_data__0[3]));
  LUT5 #(
    .INIT(32'hBB8BB888)) 
    \sA_data[4]_i_1 
       (.I0(sA_data[4]),
        .I1(tvalid_buffer_i_2_n_0),
        .I2(\sA_data[7]_i_2_n_0 ),
        .I3(h_ctrl[8]),
        .I4(tdata_buffer[4]),
        .O(sA_data__0[4]));
  LUT5 #(
    .INIT(32'hBB8BB888)) 
    \sA_data[5]_i_1 
       (.I0(sA_data[5]),
        .I1(tvalid_buffer_i_2_n_0),
        .I2(\sA_data[7]_i_2_n_0 ),
        .I3(h_ctrl[9]),
        .I4(tdata_buffer[5]),
        .O(sA_data__0[5]));
  LUT5 #(
    .INIT(32'hBB8BB888)) 
    \sA_data[6]_i_1 
       (.I0(sA_data[6]),
        .I1(tvalid_buffer_i_2_n_0),
        .I2(\sA_data[7]_i_2_n_0 ),
        .I3(h_ctrl[10]),
        .I4(tdata_buffer[6]),
        .O(sA_data__0[6]));
  LUT5 #(
    .INIT(32'hBB8BB888)) 
    \sA_data[7]_i_1 
       (.I0(sA_data[7]),
        .I1(tvalid_buffer_i_2_n_0),
        .I2(\sA_data[7]_i_2_n_0 ),
        .I3(h_ctrl[11]),
        .I4(tdata_buffer[7]),
        .O(sA_data__0[7]));
  LUT4 #(
    .INIT(16'h0400)) 
    \sA_data[7]_i_2 
       (.I0(\sA_data[7]_i_3_n_0 ),
        .I1(h_ctrl[3]),
        .I2(h_ctrl[1]),
        .I3(h_ctrl[2]),
        .O(\sA_data[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sA_data[7]_i_3 
       (.I0(sA_data32_in),
        .I1(sA_data3),
        .I2(sA_data31_in),
        .I3(sA_data30_in),
        .O(\sA_data[7]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sA_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(sA_data__0[0]),
        .Q(sA_data[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sA_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(sA_data__0[1]),
        .Q(sA_data[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sA_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(sA_data__0[2]),
        .Q(sA_data[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sA_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(sA_data__0[3]),
        .Q(sA_data[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sA_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(sA_data__0[4]),
        .Q(sA_data[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sA_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(sA_data__0[5]),
        .Q(sA_data[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sA_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(sA_data__0[6]),
        .Q(sA_data[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sA_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(sA_data__0[7]),
        .Q(sA_data[7]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0001)) 
    sA_out_i_1
       (.I0(sA_data30_in),
        .I1(sA_data31_in),
        .I2(sA_data3),
        .I3(sA_data32_in),
        .I4(h_ctrl[1]),
        .I5(h_ctrl[3]),
        .O(sA_out_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_10
       (.I0(img_row_counter[8]),
        .O(sA_out_i_10_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sA_out_i_12
       (.I0(img_row_counter[8]),
        .I1(sA_data40_out[8]),
        .O(sA_out_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sA_out_i_13
       (.I0(sA_data40_out[8]),
        .I1(img_row_counter[8]),
        .O(sA_out_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_15
       (.I0(img_col_counter[8]),
        .O(sA_out_i_15_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sA_out_i_16
       (.I0(img_col_counter[7]),
        .I1(sA_data42_out[7]),
        .I2(img_col_counter[6]),
        .I3(sA_data42_out[6]),
        .O(sA_out_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sA_out_i_17
       (.I0(img_col_counter[5]),
        .I1(sA_data42_out[5]),
        .I2(img_col_counter[4]),
        .I3(sA_data42_out[4]),
        .O(sA_out_i_17_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sA_out_i_18
       (.I0(img_col_counter[3]),
        .I1(sA_data42_out[3]),
        .I2(img_col_counter[2]),
        .I3(sA_data42_out[2]),
        .O(sA_out_i_18_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sA_out_i_19
       (.I0(img_col_counter[1]),
        .I1(sA_data42_out[1]),
        .I2(img_col_counter[0]),
        .I3(sA_data42_out[0]),
        .O(sA_out_i_19_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sA_out_i_20
       (.I0(sA_data42_out[7]),
        .I1(img_col_counter[7]),
        .I2(sA_data42_out[6]),
        .I3(img_col_counter[6]),
        .O(sA_out_i_20_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sA_out_i_21
       (.I0(sA_data42_out[5]),
        .I1(img_col_counter[5]),
        .I2(sA_data42_out[4]),
        .I3(img_col_counter[4]),
        .O(sA_out_i_21_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sA_out_i_22
       (.I0(sA_data42_out[3]),
        .I1(img_col_counter[3]),
        .I2(sA_data42_out[2]),
        .I3(img_col_counter[2]),
        .O(sA_out_i_22_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sA_out_i_23
       (.I0(sA_data42_out[1]),
        .I1(img_col_counter[1]),
        .I2(sA_data42_out[0]),
        .I3(img_col_counter[0]),
        .O(sA_out_i_23_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    sA_out_i_25
       (.I0(img_row_counter[3]),
        .I1(h_radius[2]),
        .I2(img_row_counter[2]),
        .O(sA_out_i_25_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    sA_out_i_26
       (.I0(img_row_counter[1]),
        .I1(h_radius[1]),
        .I2(h_radius[0]),
        .I3(img_row_counter[0]),
        .O(sA_out_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sA_out_i_27
       (.I0(img_row_counter[6]),
        .I1(img_row_counter[7]),
        .O(sA_out_i_27_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sA_out_i_28
       (.I0(img_row_counter[4]),
        .I1(img_row_counter[5]),
        .O(sA_out_i_28_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    sA_out_i_29
       (.I0(img_row_counter[3]),
        .I1(h_radius[2]),
        .I2(img_row_counter[2]),
        .O(sA_out_i_29_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sA_out_i_30
       (.I0(h_radius[1]),
        .I1(img_row_counter[1]),
        .I2(h_radius[0]),
        .I3(img_row_counter[0]),
        .O(sA_out_i_30_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sA_out_i_31
       (.I0(img_row_counter[7]),
        .I1(sA_data40_out[7]),
        .I2(img_row_counter[6]),
        .I3(sA_data40_out[6]),
        .O(sA_out_i_31_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sA_out_i_32
       (.I0(img_row_counter[5]),
        .I1(sA_data40_out[5]),
        .I2(img_row_counter[4]),
        .I3(sA_data40_out[4]),
        .O(sA_out_i_32_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sA_out_i_33
       (.I0(img_row_counter[3]),
        .I1(sA_data40_out[3]),
        .I2(img_row_counter[2]),
        .I3(sA_data40_out[2]),
        .O(sA_out_i_33_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sA_out_i_34
       (.I0(img_row_counter[1]),
        .I1(sA_data40_out[1]),
        .I2(img_row_counter[0]),
        .I3(sA_data40_out[0]),
        .O(sA_out_i_34_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sA_out_i_35
       (.I0(sA_data40_out[7]),
        .I1(img_row_counter[7]),
        .I2(sA_data40_out[6]),
        .I3(img_row_counter[6]),
        .O(sA_out_i_35_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sA_out_i_36
       (.I0(sA_data40_out[5]),
        .I1(img_row_counter[5]),
        .I2(sA_data40_out[4]),
        .I3(img_row_counter[4]),
        .O(sA_out_i_36_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sA_out_i_37
       (.I0(sA_data40_out[3]),
        .I1(img_row_counter[3]),
        .I2(sA_data40_out[2]),
        .I3(img_row_counter[2]),
        .O(sA_out_i_37_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sA_out_i_38
       (.I0(sA_data40_out[1]),
        .I1(img_row_counter[1]),
        .I2(sA_data40_out[0]),
        .I3(img_row_counter[0]),
        .O(sA_out_i_38_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    sA_out_i_40
       (.I0(img_col_counter[3]),
        .I1(h_radius[2]),
        .I2(img_col_counter[2]),
        .O(sA_out_i_40_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    sA_out_i_41
       (.I0(img_col_counter[1]),
        .I1(h_radius[1]),
        .I2(h_radius[0]),
        .I3(img_col_counter[0]),
        .O(sA_out_i_41_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sA_out_i_42
       (.I0(img_col_counter[6]),
        .I1(img_col_counter[7]),
        .O(sA_out_i_42_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sA_out_i_43
       (.I0(img_col_counter[4]),
        .I1(img_col_counter[5]),
        .O(sA_out_i_43_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    sA_out_i_44
       (.I0(img_col_counter[3]),
        .I1(h_radius[2]),
        .I2(img_col_counter[2]),
        .O(sA_out_i_44_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sA_out_i_45
       (.I0(h_radius[1]),
        .I1(img_col_counter[1]),
        .I2(h_radius[0]),
        .I3(img_col_counter[0]),
        .O(sA_out_i_45_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_48
       (.I0(h_img_w[8]),
        .O(sA_out_i_48_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_51
       (.I0(h_img_h[8]),
        .O(sA_out_i_51_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_52
       (.I0(h_img_w[7]),
        .O(sA_out_i_52_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_53
       (.I0(h_img_w[6]),
        .O(sA_out_i_53_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_54
       (.I0(h_img_w[5]),
        .O(sA_out_i_54_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_55
       (.I0(h_img_w[4]),
        .O(sA_out_i_55_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_56
       (.I0(h_img_w[3]),
        .O(sA_out_i_56_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sA_out_i_57
       (.I0(h_img_w[2]),
        .I1(h_radius[2]),
        .O(sA_out_i_57_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sA_out_i_58
       (.I0(h_img_w[1]),
        .I1(h_radius[1]),
        .O(sA_out_i_58_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sA_out_i_59
       (.I0(h_img_w[0]),
        .I1(h_radius[0]),
        .O(sA_out_i_59_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_60
       (.I0(h_img_h[7]),
        .O(sA_out_i_60_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_61
       (.I0(h_img_h[6]),
        .O(sA_out_i_61_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_62
       (.I0(h_img_h[5]),
        .O(sA_out_i_62_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_63
       (.I0(h_img_h[4]),
        .O(sA_out_i_63_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sA_out_i_64
       (.I0(h_img_h[3]),
        .O(sA_out_i_64_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sA_out_i_65
       (.I0(h_img_h[2]),
        .I1(h_radius[2]),
        .O(sA_out_i_65_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sA_out_i_66
       (.I0(h_img_h[1]),
        .I1(h_radius[1]),
        .O(sA_out_i_66_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sA_out_i_67
       (.I0(h_img_h[0]),
        .I1(h_radius[0]),
        .O(sA_out_i_67_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sA_out_i_7
       (.I0(img_col_counter[8]),
        .I1(sA_data42_out[8]),
        .O(sA_out_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sA_out_i_8
       (.I0(sA_data42_out[8]),
        .I1(img_col_counter[8]),
        .O(sA_out_i_8_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    sA_out_reg
       (.C(clk),
        .CE(tvalid_buffer),
        .D(sA_out_i_1_n_0),
        .Q(sA_out),
        .R(reset));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sA_out_reg_i_11
       (.CI(1'b0),
        .CO({sA_out_reg_i_11_n_0,sA_out_reg_i_11_n_1,sA_out_reg_i_11_n_2,sA_out_reg_i_11_n_3}),
        .CYINIT(1'b1),
        .DI({sA_out_i_31_n_0,sA_out_i_32_n_0,sA_out_i_33_n_0,sA_out_i_34_n_0}),
        .O(NLW_sA_out_reg_i_11_O_UNCONNECTED[3:0]),
        .S({sA_out_i_35_n_0,sA_out_i_36_n_0,sA_out_i_37_n_0,sA_out_i_38_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sA_out_reg_i_14
       (.CI(1'b0),
        .CO({sA_out_reg_i_14_n_0,sA_out_reg_i_14_n_1,sA_out_reg_i_14_n_2,sA_out_reg_i_14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sA_out_i_40_n_0,sA_out_i_41_n_0}),
        .O(NLW_sA_out_reg_i_14_O_UNCONNECTED[3:0]),
        .S({sA_out_i_42_n_0,sA_out_i_43_n_0,sA_out_i_44_n_0,sA_out_i_45_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sA_out_reg_i_2
       (.CI(sA_out_reg_i_6_n_0),
        .CO({NLW_sA_out_reg_i_2_CO_UNCONNECTED[3:1],sA_data30_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sA_out_i_7_n_0}),
        .O(NLW_sA_out_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,sA_out_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sA_out_reg_i_24
       (.CI(sA_out_reg_i_46_n_0),
        .CO(NLW_sA_out_reg_i_24_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sA_out_reg_i_24_O_UNCONNECTED[3:1],sA_data42_out[8]}),
        .S({1'b0,1'b0,1'b0,sA_out_i_48_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sA_out_reg_i_3
       (.CI(sA_out_reg_i_9_n_0),
        .CO({NLW_sA_out_reg_i_3_CO_UNCONNECTED[3:1],sA_data31_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sA_out_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,sA_out_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sA_out_reg_i_39
       (.CI(sA_out_reg_i_49_n_0),
        .CO(NLW_sA_out_reg_i_39_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sA_out_reg_i_39_O_UNCONNECTED[3:1],sA_data40_out[8]}),
        .S({1'b0,1'b0,1'b0,sA_out_i_51_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sA_out_reg_i_4
       (.CI(sA_out_reg_i_11_n_0),
        .CO({NLW_sA_out_reg_i_4_CO_UNCONNECTED[3:1],sA_data3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sA_out_i_12_n_0}),
        .O(NLW_sA_out_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,sA_out_i_13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sA_out_reg_i_46
       (.CI(sA_out_reg_i_47_n_0),
        .CO({sA_out_reg_i_46_n_0,sA_out_reg_i_46_n_1,sA_out_reg_i_46_n_2,sA_out_reg_i_46_n_3}),
        .CYINIT(1'b0),
        .DI(h_img_w[7:4]),
        .O(sA_data42_out[7:4]),
        .S({sA_out_i_52_n_0,sA_out_i_53_n_0,sA_out_i_54_n_0,sA_out_i_55_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sA_out_reg_i_47
       (.CI(1'b0),
        .CO({sA_out_reg_i_47_n_0,sA_out_reg_i_47_n_1,sA_out_reg_i_47_n_2,sA_out_reg_i_47_n_3}),
        .CYINIT(1'b1),
        .DI(h_img_w[3:0]),
        .O(sA_data42_out[3:0]),
        .S({sA_out_i_56_n_0,sA_out_i_57_n_0,sA_out_i_58_n_0,sA_out_i_59_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sA_out_reg_i_49
       (.CI(sA_out_reg_i_50_n_0),
        .CO({sA_out_reg_i_49_n_0,sA_out_reg_i_49_n_1,sA_out_reg_i_49_n_2,sA_out_reg_i_49_n_3}),
        .CYINIT(1'b0),
        .DI(h_img_h[7:4]),
        .O(sA_data40_out[7:4]),
        .S({sA_out_i_60_n_0,sA_out_i_61_n_0,sA_out_i_62_n_0,sA_out_i_63_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sA_out_reg_i_5
       (.CI(sA_out_reg_i_14_n_0),
        .CO({NLW_sA_out_reg_i_5_CO_UNCONNECTED[3:1],sA_data32_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sA_out_reg_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,sA_out_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sA_out_reg_i_50
       (.CI(1'b0),
        .CO({sA_out_reg_i_50_n_0,sA_out_reg_i_50_n_1,sA_out_reg_i_50_n_2,sA_out_reg_i_50_n_3}),
        .CYINIT(1'b1),
        .DI(h_img_h[3:0]),
        .O(sA_data40_out[3:0]),
        .S({sA_out_i_64_n_0,sA_out_i_65_n_0,sA_out_i_66_n_0,sA_out_i_67_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sA_out_reg_i_6
       (.CI(1'b0),
        .CO({sA_out_reg_i_6_n_0,sA_out_reg_i_6_n_1,sA_out_reg_i_6_n_2,sA_out_reg_i_6_n_3}),
        .CYINIT(1'b1),
        .DI({sA_out_i_16_n_0,sA_out_i_17_n_0,sA_out_i_18_n_0,sA_out_i_19_n_0}),
        .O(NLW_sA_out_reg_i_6_O_UNCONNECTED[3:0]),
        .S({sA_out_i_20_n_0,sA_out_i_21_n_0,sA_out_i_22_n_0,sA_out_i_23_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sA_out_reg_i_9
       (.CI(1'b0),
        .CO({sA_out_reg_i_9_n_0,sA_out_reg_i_9_n_1,sA_out_reg_i_9_n_2,sA_out_reg_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sA_out_i_25_n_0,sA_out_i_26_n_0}),
        .O(NLW_sA_out_reg_i_9_O_UNCONNECTED[3:0]),
        .S({sA_out_i_27_n_0,sA_out_i_28_n_0,sA_out_i_29_n_0,sA_out_i_30_n_0}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[0] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[0]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [0]));
  LUT6 #(
    .INIT(64'hF4F404F4F4040404)) 
    \s_axi_ctrl_rdata_reg[0]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_3_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[14]_i_5_n_0 ),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(reg_coeff_scale[0]),
        .I5(\s_axi_ctrl_rdata_reg[0]_i_4_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[0]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_22_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_23_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[0]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_24_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_25_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_12 
       (.I0(\reg_coeff_reg[79] [0]),
        .I1(\reg_coeff_reg[78] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_13 
       (.I0(\reg_coeff_reg[75] [0]),
        .I1(\reg_coeff_reg[74] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_13_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[0]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_26_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_27_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_14_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[0]_i_15 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_28_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_29_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_15_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[0]_i_16 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_30_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_31_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_16_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[0]_i_17 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_32_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_33_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_17_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[0]_i_18 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_34_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_35_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_18_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[0]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_36_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_37_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \s_axi_ctrl_rdata_reg[0]_i_2 
       (.I0(s_axi_ctrl_araddr[8]),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_5_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ),
        .I3(\reg_coeff_reg[80] [0]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_23_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[0]_i_6_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_20 
       (.I0(\reg_coeff_reg[3] [0]),
        .I1(\reg_coeff_reg[2] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_21 
       (.I0(\reg_coeff_reg[7] [0]),
        .I1(\reg_coeff_reg[6] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_22 
       (.I0(\reg_coeff_reg[59] [0]),
        .I1(\reg_coeff_reg[58] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_23 
       (.I0(\reg_coeff_reg[63] [0]),
        .I1(\reg_coeff_reg[62] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_24 
       (.I0(\reg_coeff_reg[67] [0]),
        .I1(\reg_coeff_reg[66] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_25 
       (.I0(\reg_coeff_reg[71] [0]),
        .I1(\reg_coeff_reg[70] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_26 
       (.I0(\reg_coeff_reg[51] [0]),
        .I1(\reg_coeff_reg[50] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_27 
       (.I0(\reg_coeff_reg[55] [0]),
        .I1(\reg_coeff_reg[54] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_28 
       (.I0(\reg_coeff_reg[43] [0]),
        .I1(\reg_coeff_reg[42] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_29 
       (.I0(\reg_coeff_reg[47] [0]),
        .I1(\reg_coeff_reg[46] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAACFC0)) 
    \s_axi_ctrl_rdata_reg[0]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_7_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_8_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[0]_i_9_n_0 ),
        .I4(s_axi_ctrl_araddr[7]),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_30 
       (.I0(\reg_coeff_reg[35] [0]),
        .I1(\reg_coeff_reg[34] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_31 
       (.I0(\reg_coeff_reg[39] [0]),
        .I1(\reg_coeff_reg[38] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_32 
       (.I0(\reg_coeff_reg[27] [0]),
        .I1(\reg_coeff_reg[26] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_33 
       (.I0(\reg_coeff_reg[31] [0]),
        .I1(\reg_coeff_reg[30] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_34 
       (.I0(\reg_coeff_reg[11] [0]),
        .I1(\reg_coeff_reg[10] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_35 
       (.I0(\reg_coeff_reg[15] [0]),
        .I1(\reg_coeff_reg[14] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_36 
       (.I0(\reg_coeff_reg[19] [0]),
        .I1(\reg_coeff_reg[18] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_37 
       (.I0(\reg_coeff_reg[23] [0]),
        .I1(\reg_coeff_reg[22] [0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_4 
       (.I0(reg_img_h[0]),
        .I1(reg_img_w[0]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[0]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[0]),
        .O(\s_axi_ctrl_rdata_reg[0]_i_4_n_0 ));
  MUXF8 \s_axi_ctrl_rdata_reg[0]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_10_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_11_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_5_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[0]_i_6 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_12_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_13_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_6_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[0]_i_7 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_14_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_15_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[0]_i_16_n_0 ),
        .I4(s_axi_ctrl_araddr[5]),
        .I5(\s_axi_ctrl_rdata_reg[0]_i_17_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_7_n_0 ));
  MUXF8 \s_axi_ctrl_rdata_reg[0]_i_8 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_18_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_19_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_8_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[0]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[0]_i_20_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[0]_i_21_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[0]_i_9_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[10] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[10]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [10]));
  LUT6 #(
    .INIT(64'hF4F404F4F4040404)) 
    \s_axi_ctrl_rdata_reg[10]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_3_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[14]_i_5_n_0 ),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(reg_coeff_scale[10]),
        .I5(\s_axi_ctrl_rdata_reg[10]_i_4_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[10]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_22_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_23_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[10]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_24_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_25_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_12 
       (.I0(\reg_coeff_reg[79] [10]),
        .I1(\reg_coeff_reg[78] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_13 
       (.I0(\reg_coeff_reg[75] [10]),
        .I1(\reg_coeff_reg[74] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_13_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[10]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_26_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_27_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_14_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[10]_i_15 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_28_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_29_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_15_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[10]_i_16 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_30_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_31_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_16_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[10]_i_17 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_32_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_33_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_17_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_18 
       (.I0(\reg_coeff_reg[3] [10]),
        .I1(\reg_coeff_reg[2] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_19 
       (.I0(\reg_coeff_reg[7] [10]),
        .I1(\reg_coeff_reg[6] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \s_axi_ctrl_rdata_reg[10]_i_2 
       (.I0(s_axi_ctrl_araddr[8]),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_5_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ),
        .I3(\reg_coeff_reg[80] [10]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_23_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[10]_i_6_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_2_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[10]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_34_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_35_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[10]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_36_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_37_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_22 
       (.I0(\reg_coeff_reg[59] [10]),
        .I1(\reg_coeff_reg[58] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_23 
       (.I0(\reg_coeff_reg[63] [10]),
        .I1(\reg_coeff_reg[62] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_24 
       (.I0(\reg_coeff_reg[67] [10]),
        .I1(\reg_coeff_reg[66] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_25 
       (.I0(\reg_coeff_reg[71] [10]),
        .I1(\reg_coeff_reg[70] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_26 
       (.I0(\reg_coeff_reg[51] [10]),
        .I1(\reg_coeff_reg[50] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_27 
       (.I0(\reg_coeff_reg[55] [10]),
        .I1(\reg_coeff_reg[54] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_28 
       (.I0(\reg_coeff_reg[43] [10]),
        .I1(\reg_coeff_reg[42] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_29 
       (.I0(\reg_coeff_reg[47] [10]),
        .I1(\reg_coeff_reg[46] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFC0C)) 
    \s_axi_ctrl_rdata_reg[10]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_7_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_8_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[10]_i_9_n_0 ),
        .I4(s_axi_ctrl_araddr[7]),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_30 
       (.I0(\reg_coeff_reg[35] [10]),
        .I1(\reg_coeff_reg[34] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_31 
       (.I0(\reg_coeff_reg[39] [10]),
        .I1(\reg_coeff_reg[38] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_32 
       (.I0(\reg_coeff_reg[27] [10]),
        .I1(\reg_coeff_reg[26] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_33 
       (.I0(\reg_coeff_reg[31] [10]),
        .I1(\reg_coeff_reg[30] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_34 
       (.I0(\reg_coeff_reg[11] [10]),
        .I1(\reg_coeff_reg[10] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_35 
       (.I0(\reg_coeff_reg[15] [10]),
        .I1(\reg_coeff_reg[14] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_36 
       (.I0(\reg_coeff_reg[19] [10]),
        .I1(\reg_coeff_reg[18] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_37 
       (.I0(\reg_coeff_reg[23] [10]),
        .I1(\reg_coeff_reg[22] [10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_4 
       (.I0(reg_img_h[10]),
        .I1(reg_img_w[10]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[10]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[10]),
        .O(\s_axi_ctrl_rdata_reg[10]_i_4_n_0 ));
  MUXF8 \s_axi_ctrl_rdata_reg[10]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_10_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_11_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_5_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[10]_i_6 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_12_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_13_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_6_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[10]_i_7 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_14_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_15_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[10]_i_16_n_0 ),
        .I4(s_axi_ctrl_araddr[5]),
        .I5(\s_axi_ctrl_rdata_reg[10]_i_17_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_7_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[10]_i_8 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_18_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_19_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_8_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF8 \s_axi_ctrl_rdata_reg[10]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[10]_i_20_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[10]_i_21_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[10]_i_9_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[11] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[11]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [11]));
  LUT6 #(
    .INIT(64'hFFF4F4F4FFF4FFF4)) 
    \s_axi_ctrl_rdata_reg[11]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[11]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[11]_i_3_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[11]_i_4_n_0 ),
        .I3(s_axi_ctrl_araddr[8]),
        .I4(\s_axi_ctrl_rdata_reg[11]_i_5_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[11]_i_6_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[11]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[11]_i_26_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[11]_i_27_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[11]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[11]_i_28_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[11]_i_29_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT5 #(
    .INIT(32'hFFFF00CA)) 
    \s_axi_ctrl_rdata_reg[11]_i_12 
       (.I0(reg_ctrl[11]),
        .I1(reg_radius[11]),
        .I2(s_axi_ctrl_araddr[2]),
        .I3(s_axi_ctrl_araddr[3]),
        .I4(s_axi_ctrl_araddr[4]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDD5D)) 
    \s_axi_ctrl_rdata_reg[11]_i_13 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_9_n_0 ),
        .I1(s_axi_ctrl_araddr[4]),
        .I2(reg_coeff_scale[11]),
        .I3(s_axi_ctrl_araddr[2]),
        .I4(s_axi_ctrl_araddr[3]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_13_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[11]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[11]_i_30_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[11]_i_31_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_14_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_15 
       (.I0(\reg_coeff_reg[71] [11]),
        .I1(\reg_coeff_reg[70] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_16 
       (.I0(\reg_coeff_reg[67] [11]),
        .I1(\reg_coeff_reg[66] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_17 
       (.I0(\reg_coeff_reg[63] [11]),
        .I1(\reg_coeff_reg[62] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_18 
       (.I0(\reg_coeff_reg[59] [11]),
        .I1(\reg_coeff_reg[58] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_19 
       (.I0(\reg_coeff_reg[3] [11]),
        .I1(\reg_coeff_reg[2] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFEFEFEEEF)) 
    \s_axi_ctrl_rdata_reg[11]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I1(s_axi_ctrl_araddr[8]),
        .I2(s_axi_ctrl_araddr[7]),
        .I3(\s_axi_ctrl_rdata_reg[11]_i_7_n_0 ),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[11]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_20 
       (.I0(\reg_coeff_reg[7] [11]),
        .I1(\reg_coeff_reg[6] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_20_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[11]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[11]_i_32_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[11]_i_33_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[11]_i_22 
       (.I0(\s_axi_ctrl_rdata_reg[11]_i_34_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[11]_i_35_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_22_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_23 
       (.I0(\reg_coeff_reg[55] [11]),
        .I1(\reg_coeff_reg[54] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_24 
       (.I0(\reg_coeff_reg[51] [11]),
        .I1(\reg_coeff_reg[50] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h44044000)) 
    \s_axi_ctrl_rdata_reg[11]_i_25 
       (.I0(s_axi_ctrl_araddr[5]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[4]),
        .I3(\s_axi_ctrl_rdata_reg[11]_i_36_n_0 ),
        .I4(\s_axi_ctrl_rdata_reg[11]_i_37_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_26 
       (.I0(\reg_coeff_reg[27] [11]),
        .I1(\reg_coeff_reg[26] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_27 
       (.I0(\reg_coeff_reg[31] [11]),
        .I1(\reg_coeff_reg[30] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_28 
       (.I0(\reg_coeff_reg[35] [11]),
        .I1(\reg_coeff_reg[34] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_29 
       (.I0(\reg_coeff_reg[39] [11]),
        .I1(\reg_coeff_reg[38] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFDDDDDDDFDD)) 
    \s_axi_ctrl_rdata_reg[11]_i_3 
       (.I0(s_axi_ctrl_araddr[7]),
        .I1(\s_axi_ctrl_rdata_reg[11]_i_9_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[11]_i_10_n_0 ),
        .I4(s_axi_ctrl_araddr[5]),
        .I5(\s_axi_ctrl_rdata_reg[11]_i_11_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_30 
       (.I0(\reg_coeff_reg[79] [11]),
        .I1(\reg_coeff_reg[78] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_31 
       (.I0(\reg_coeff_reg[75] [11]),
        .I1(\reg_coeff_reg[74] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_32 
       (.I0(\reg_coeff_reg[11] [11]),
        .I1(\reg_coeff_reg[10] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_33 
       (.I0(\reg_coeff_reg[15] [11]),
        .I1(\reg_coeff_reg[14] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_34 
       (.I0(\reg_coeff_reg[19] [11]),
        .I1(\reg_coeff_reg[18] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_35 
       (.I0(\reg_coeff_reg[23] [11]),
        .I1(\reg_coeff_reg[22] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_36 
       (.I0(\reg_coeff_reg[47] [11]),
        .I1(\reg_coeff_reg[46] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[11]_i_37 
       (.I0(\reg_coeff_reg[43] [11]),
        .I1(\reg_coeff_reg[42] [11]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [11]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [11]),
        .O(\s_axi_ctrl_rdata_reg[11]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEAEAAAA)) 
    \s_axi_ctrl_rdata_reg[11]_i_4 
       (.I0(\s_axi_ctrl_rdata_reg[11]_i_12_n_0 ),
        .I1(reg_img_w[11]),
        .I2(s_axi_ctrl_araddr[2]),
        .I3(reg_img_h[11]),
        .I4(s_axi_ctrl_araddr[3]),
        .I5(\s_axi_ctrl_rdata_reg[11]_i_13_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2C202C2C2C202020)) 
    \s_axi_ctrl_rdata_reg[11]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[11]_i_14_n_0 ),
        .I1(s_axi_ctrl_araddr[5]),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[11]_i_15_n_0 ),
        .I4(s_axi_ctrl_araddr[4]),
        .I5(\s_axi_ctrl_rdata_reg[11]_i_16_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7C7F7C7C7C7F7F7F)) 
    \s_axi_ctrl_rdata_reg[11]_i_6 
       (.I0(\reg_coeff_reg[80] [11]),
        .I1(s_axi_ctrl_araddr[5]),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[11]_i_17_n_0 ),
        .I4(s_axi_ctrl_araddr[4]),
        .I5(\s_axi_ctrl_rdata_reg[11]_i_18_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_6_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[11]_i_7 
       (.I0(\s_axi_ctrl_rdata_reg[11]_i_19_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[11]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_7_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF8 \s_axi_ctrl_rdata_reg[11]_i_8 
       (.I0(\s_axi_ctrl_rdata_reg[11]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[11]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_8_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80888000)) 
    \s_axi_ctrl_rdata_reg[11]_i_9 
       (.I0(s_axi_ctrl_araddr[5]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(\s_axi_ctrl_rdata_reg[11]_i_23_n_0 ),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[11]_i_24_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[11]_i_25_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[11]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[12] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[12]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [12]));
  LUT6 #(
    .INIT(64'hD0D0D0D0D0D0D0DD)) 
    \s_axi_ctrl_rdata_reg[12]_i_1 
       (.I0(s_axi_ctrl_araddr[8]),
        .I1(\s_axi_ctrl_rdata_reg[12]_i_2_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[12]_i_3_n_0 ),
        .I3(\s_axi_ctrl_rdata_reg[12]_i_4_n_0 ),
        .I4(\s_axi_ctrl_rdata_reg[12]_i_5_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[12]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[12]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[12]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[12]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'h0000CA00FFFFFFFF)) 
    \s_axi_ctrl_rdata_reg[12]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[12]_i_26_n_0 ),
        .I2(s_axi_ctrl_araddr[4]),
        .I3(s_axi_ctrl_araddr[6]),
        .I4(s_axi_ctrl_araddr[5]),
        .I5(s_axi_ctrl_araddr[7]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \s_axi_ctrl_rdata_reg[12]_i_13 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_27_n_0 ),
        .I1(s_axi_ctrl_araddr[4]),
        .I2(\s_axi_ctrl_rdata_reg[12]_i_28_n_0 ),
        .I3(s_axi_ctrl_araddr[6]),
        .I4(s_axi_ctrl_araddr[5]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h1555151515555555)) 
    \s_axi_ctrl_rdata_reg[12]_i_14 
       (.I0(s_axi_ctrl_araddr[7]),
        .I1(s_axi_ctrl_araddr[5]),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[12]_i_29_n_0 ),
        .I4(s_axi_ctrl_araddr[4]),
        .I5(\s_axi_ctrl_rdata_reg[12]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h080C0800)) 
    \s_axi_ctrl_rdata_reg[12]_i_15 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_31_n_0 ),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[5]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[12]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_16 
       (.I0(\reg_coeff_reg[3] [12]),
        .I1(\reg_coeff_reg[2] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_17 
       (.I0(\reg_coeff_reg[7] [12]),
        .I1(\reg_coeff_reg[6] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_17_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[12]_i_18 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[12]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_18_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[12]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[12]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_6_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[12]_i_7_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[15]_i_23_n_0 ),
        .I3(\reg_coeff_reg[80] [12]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[12]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h23232320)) 
    \s_axi_ctrl_rdata_reg[12]_i_20 
       (.I0(reg_radius[12]),
        .I1(s_axi_ctrl_araddr[3]),
        .I2(s_axi_ctrl_araddr[2]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(reg_ctrl[12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_21 
       (.I0(\reg_coeff_reg[35] [12]),
        .I1(\reg_coeff_reg[34] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_22 
       (.I0(\reg_coeff_reg[39] [12]),
        .I1(\reg_coeff_reg[38] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_23 
       (.I0(\reg_coeff_reg[27] [12]),
        .I1(\reg_coeff_reg[26] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_24 
       (.I0(\reg_coeff_reg[31] [12]),
        .I1(\reg_coeff_reg[30] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_25 
       (.I0(\reg_coeff_reg[43] [12]),
        .I1(\reg_coeff_reg[42] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_26 
       (.I0(\reg_coeff_reg[47] [12]),
        .I1(\reg_coeff_reg[46] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_27 
       (.I0(\reg_coeff_reg[55] [12]),
        .I1(\reg_coeff_reg[54] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_28 
       (.I0(\reg_coeff_reg[51] [12]),
        .I1(\reg_coeff_reg[50] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_29 
       (.I0(\reg_coeff_reg[23] [12]),
        .I1(\reg_coeff_reg[22] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hEEAEAAAA)) 
    \s_axi_ctrl_rdata_reg[12]_i_3 
       (.I0(s_axi_ctrl_araddr[8]),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I2(s_axi_ctrl_araddr[4]),
        .I3(reg_coeff_scale[12]),
        .I4(\s_axi_ctrl_rdata_reg[12]_i_9_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_30 
       (.I0(\reg_coeff_reg[19] [12]),
        .I1(\reg_coeff_reg[18] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_31 
       (.I0(\reg_coeff_reg[15] [12]),
        .I1(\reg_coeff_reg[14] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_32 
       (.I0(\reg_coeff_reg[11] [12]),
        .I1(\reg_coeff_reg[10] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_33 
       (.I0(\reg_coeff_reg[59] [12]),
        .I1(\reg_coeff_reg[58] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_34 
       (.I0(\reg_coeff_reg[63] [12]),
        .I1(\reg_coeff_reg[62] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_35 
       (.I0(\reg_coeff_reg[67] [12]),
        .I1(\reg_coeff_reg[66] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_36 
       (.I0(\reg_coeff_reg[71] [12]),
        .I1(\reg_coeff_reg[70] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF47)) 
    \s_axi_ctrl_rdata_reg[12]_i_4 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_10_n_0 ),
        .I1(s_axi_ctrl_araddr[5]),
        .I2(\s_axi_ctrl_rdata_reg[12]_i_11_n_0 ),
        .I3(s_axi_ctrl_araddr[6]),
        .I4(\s_axi_ctrl_rdata_reg[12]_i_12_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[12]_i_13_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2020202222202222)) 
    \s_axi_ctrl_rdata_reg[12]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_14_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[12]_i_15_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[12]_i_16_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[12]_i_17_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_6 
       (.I0(\reg_coeff_reg[75] [12]),
        .I1(\reg_coeff_reg[74] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[12]_i_7 
       (.I0(\reg_coeff_reg[79] [12]),
        .I1(\reg_coeff_reg[78] [12]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [12]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [12]),
        .O(\s_axi_ctrl_rdata_reg[12]_i_7_n_0 ));
  MUXF8 \s_axi_ctrl_rdata_reg[12]_i_8 
       (.I0(\s_axi_ctrl_rdata_reg[12]_i_18_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[12]_i_19_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_8_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  LUT5 #(
    .INIT(32'hFFFF8A80)) 
    \s_axi_ctrl_rdata_reg[12]_i_9 
       (.I0(s_axi_ctrl_araddr[3]),
        .I1(reg_img_h[12]),
        .I2(s_axi_ctrl_araddr[2]),
        .I3(reg_img_w[12]),
        .I4(\s_axi_ctrl_rdata_reg[12]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[12]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[13] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[13]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [13]));
  LUT6 #(
    .INIT(64'hFFFFFFFF11111000)) 
    \s_axi_ctrl_rdata_reg[13]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[13]_i_3_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[13]_i_4_n_0 ),
        .I4(\s_axi_ctrl_rdata_reg[13]_i_5_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[13]_i_6_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00CFAAAA00C0AAAA)) 
    \s_axi_ctrl_rdata_reg[13]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_20_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[13]_i_21_n_0 ),
        .I2(s_axi_ctrl_araddr[4]),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[13]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_10_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[13]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[13]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[13]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[13]_i_26_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_12_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_13 
       (.I0(\reg_coeff_reg[39] [13]),
        .I1(\reg_coeff_reg[38] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_14 
       (.I0(\reg_coeff_reg[35] [13]),
        .I1(\reg_coeff_reg[34] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h10111000FFFFFFFF)) 
    \s_axi_ctrl_rdata_reg[13]_i_15 
       (.I0(s_axi_ctrl_araddr[5]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(\s_axi_ctrl_rdata_reg[13]_i_27_n_0 ),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[13]_i_28_n_0 ),
        .I5(s_axi_ctrl_araddr[7]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h7C7F7C7C7C7F7F7F)) 
    \s_axi_ctrl_rdata_reg[13]_i_16 
       (.I0(\reg_coeff_reg[80] [13]),
        .I1(s_axi_ctrl_araddr[5]),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[13]_i_29_n_0 ),
        .I4(s_axi_ctrl_araddr[4]),
        .I5(\s_axi_ctrl_rdata_reg[13]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00E20000)) 
    \s_axi_ctrl_rdata_reg[13]_i_17 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_31_n_0 ),
        .I1(s_axi_ctrl_araddr[4]),
        .I2(\s_axi_ctrl_rdata_reg[13]_i_32_n_0 ),
        .I3(s_axi_ctrl_araddr[6]),
        .I4(s_axi_ctrl_araddr[5]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_17_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[13]_i_18 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[13]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_18_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEAEAAAA)) 
    \s_axi_ctrl_rdata_reg[13]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_35_n_0 ),
        .I1(reg_img_w[13]),
        .I2(s_axi_ctrl_araddr[2]),
        .I3(reg_img_h[13]),
        .I4(s_axi_ctrl_araddr[3]),
        .I5(\s_axi_ctrl_rdata_reg[13]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF47)) 
    \s_axi_ctrl_rdata_reg[13]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_7_n_0 ),
        .I1(s_axi_ctrl_araddr[4]),
        .I2(\s_axi_ctrl_rdata_reg[13]_i_8_n_0 ),
        .I3(\s_axi_ctrl_rdata_reg[13]_i_9_n_0 ),
        .I4(s_axi_ctrl_araddr[7]),
        .I5(\s_axi_ctrl_rdata_reg[13]_i_10_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_2_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[13]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_37_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[13]_i_38_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_21 
       (.I0(\reg_coeff_reg[15] [13]),
        .I1(\reg_coeff_reg[14] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_22 
       (.I0(\reg_coeff_reg[11] [13]),
        .I1(\reg_coeff_reg[10] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_23 
       (.I0(\reg_coeff_reg[43] [13]),
        .I1(\reg_coeff_reg[42] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_24 
       (.I0(\reg_coeff_reg[47] [13]),
        .I1(\reg_coeff_reg[46] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_25 
       (.I0(\reg_coeff_reg[51] [13]),
        .I1(\reg_coeff_reg[50] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_26 
       (.I0(\reg_coeff_reg[55] [13]),
        .I1(\reg_coeff_reg[54] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_27 
       (.I0(\reg_coeff_reg[31] [13]),
        .I1(\reg_coeff_reg[30] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_28 
       (.I0(\reg_coeff_reg[27] [13]),
        .I1(\reg_coeff_reg[26] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_29 
       (.I0(\reg_coeff_reg[63] [13]),
        .I1(\reg_coeff_reg[62] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_ctrl_rdata_reg[13]_i_3 
       (.I0(s_axi_ctrl_araddr[8]),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_30 
       (.I0(\reg_coeff_reg[59] [13]),
        .I1(\reg_coeff_reg[58] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_31 
       (.I0(\reg_coeff_reg[67] [13]),
        .I1(\reg_coeff_reg[66] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_32 
       (.I0(\reg_coeff_reg[71] [13]),
        .I1(\reg_coeff_reg[70] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_33 
       (.I0(\reg_coeff_reg[79] [13]),
        .I1(\reg_coeff_reg[78] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_34 
       (.I0(\reg_coeff_reg[75] [13]),
        .I1(\reg_coeff_reg[74] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00CA)) 
    \s_axi_ctrl_rdata_reg[13]_i_35 
       (.I0(reg_ctrl[13]),
        .I1(reg_radius[13]),
        .I2(s_axi_ctrl_araddr[2]),
        .I3(s_axi_ctrl_araddr[3]),
        .I4(s_axi_ctrl_araddr[4]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDD5D)) 
    \s_axi_ctrl_rdata_reg[13]_i_36 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_9_n_0 ),
        .I1(s_axi_ctrl_araddr[4]),
        .I2(reg_coeff_scale[13]),
        .I3(s_axi_ctrl_araddr[2]),
        .I4(s_axi_ctrl_araddr[3]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_37 
       (.I0(\reg_coeff_reg[3] [13]),
        .I1(\reg_coeff_reg[2] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_38 
       (.I0(\reg_coeff_reg[7] [13]),
        .I1(\reg_coeff_reg[6] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_38_n_0 ));
  MUXF8 \s_axi_ctrl_rdata_reg[13]_i_4 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_11_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[13]_i_12_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_4_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF20222000)) 
    \s_axi_ctrl_rdata_reg[13]_i_5 
       (.I0(s_axi_ctrl_araddr[5]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(\s_axi_ctrl_rdata_reg[13]_i_13_n_0 ),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[13]_i_14_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[13]_i_15_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDDD0000)) 
    \s_axi_ctrl_rdata_reg[13]_i_6 
       (.I0(\s_axi_ctrl_rdata_reg[13]_i_16_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[13]_i_17_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[13]_i_18_n_0 ),
        .I3(\s_axi_ctrl_rdata_reg[15]_i_23_n_0 ),
        .I4(s_axi_ctrl_araddr[8]),
        .I5(\s_axi_ctrl_rdata_reg[13]_i_19_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_7 
       (.I0(\reg_coeff_reg[23] [13]),
        .I1(\reg_coeff_reg[22] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[13]_i_8 
       (.I0(\reg_coeff_reg[19] [13]),
        .I1(\reg_coeff_reg[18] [13]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [13]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [13]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_axi_ctrl_rdata_reg[13]_i_9 
       (.I0(s_axi_ctrl_araddr[6]),
        .I1(s_axi_ctrl_araddr[5]),
        .O(\s_axi_ctrl_rdata_reg[13]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[14] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[14]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [14]));
  LUT6 #(
    .INIT(64'hAAEFAAEFAAEFAAAA)) 
    \s_axi_ctrl_rdata_reg[14]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_3_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[14]_i_4_n_0 ),
        .I3(\s_axi_ctrl_rdata_reg[14]_i_5_n_0 ),
        .I4(s_axi_ctrl_araddr[8]),
        .I5(\s_axi_ctrl_rdata_reg[14]_i_6_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_10 
       (.I0(\reg_coeff_reg[59] [14]),
        .I1(\reg_coeff_reg[58] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_11 
       (.I0(\reg_coeff_reg[63] [14]),
        .I1(\reg_coeff_reg[62] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_12 
       (.I0(\reg_coeff_reg[71] [14]),
        .I1(\reg_coeff_reg[70] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_13 
       (.I0(\reg_coeff_reg[67] [14]),
        .I1(\reg_coeff_reg[66] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \s_axi_ctrl_rdata_reg[14]_i_14 
       (.I0(s_axi_ctrl_araddr[6]),
        .I1(s_axi_ctrl_araddr[5]),
        .I2(\reg_coeff_reg[80] [14]),
        .I3(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_14_n_0 ));
  MUXF8 \s_axi_ctrl_rdata_reg[14]_i_15 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_15_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[14]_i_16 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_16_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[14]_i_17 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_26_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_17_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[14]_i_18 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_27_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_28_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_18_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_19 
       (.I0(\reg_coeff_reg[79] [14]),
        .I1(\reg_coeff_reg[78] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEAEAAAA)) 
    \s_axi_ctrl_rdata_reg[14]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_7_n_0 ),
        .I1(reg_img_w[14]),
        .I2(s_axi_ctrl_araddr[2]),
        .I3(reg_img_h[14]),
        .I4(s_axi_ctrl_araddr[3]),
        .I5(\s_axi_ctrl_rdata_reg[14]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_20 
       (.I0(\reg_coeff_reg[75] [14]),
        .I1(\reg_coeff_reg[74] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_20_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[14]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_29_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[14]_i_22 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_31_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_22_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[14]_i_23 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_23_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[14]_i_24 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_24_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[14]_i_25 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_37_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_38_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_25_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[14]_i_26 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_39_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_40_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_26_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_27 
       (.I0(\reg_coeff_reg[3] [14]),
        .I1(\reg_coeff_reg[2] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_28 
       (.I0(\reg_coeff_reg[7] [14]),
        .I1(\reg_coeff_reg[6] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_29 
       (.I0(\reg_coeff_reg[43] [14]),
        .I1(\reg_coeff_reg[42] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h2323232020202320)) 
    \s_axi_ctrl_rdata_reg[14]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_9_n_0 ),
        .I1(s_axi_ctrl_araddr[5]),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[14]_i_10_n_0 ),
        .I4(s_axi_ctrl_araddr[4]),
        .I5(\s_axi_ctrl_rdata_reg[14]_i_11_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_30 
       (.I0(\reg_coeff_reg[47] [14]),
        .I1(\reg_coeff_reg[46] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_31 
       (.I0(\reg_coeff_reg[51] [14]),
        .I1(\reg_coeff_reg[50] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_32 
       (.I0(\reg_coeff_reg[55] [14]),
        .I1(\reg_coeff_reg[54] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_33 
       (.I0(\reg_coeff_reg[27] [14]),
        .I1(\reg_coeff_reg[26] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_34 
       (.I0(\reg_coeff_reg[31] [14]),
        .I1(\reg_coeff_reg[30] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_35 
       (.I0(\reg_coeff_reg[35] [14]),
        .I1(\reg_coeff_reg[34] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_36 
       (.I0(\reg_coeff_reg[39] [14]),
        .I1(\reg_coeff_reg[38] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_37 
       (.I0(\reg_coeff_reg[11] [14]),
        .I1(\reg_coeff_reg[10] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_38 
       (.I0(\reg_coeff_reg[15] [14]),
        .I1(\reg_coeff_reg[14] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_39 
       (.I0(\reg_coeff_reg[19] [14]),
        .I1(\reg_coeff_reg[18] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFDDDFFF)) 
    \s_axi_ctrl_rdata_reg[14]_i_4 
       (.I0(s_axi_ctrl_araddr[5]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(\s_axi_ctrl_rdata_reg[14]_i_12_n_0 ),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[14]_i_13_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[14]_i_14_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_40 
       (.I0(\reg_coeff_reg[23] [14]),
        .I1(\reg_coeff_reg[22] [14]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [14]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [14]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h222A)) 
    \s_axi_ctrl_rdata_reg[14]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_9_n_0 ),
        .I1(s_axi_ctrl_araddr[4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(s_axi_ctrl_araddr[2]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[14]_i_6 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_15_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_16_n_0 ),
        .I2(s_axi_ctrl_araddr[7]),
        .I3(\s_axi_ctrl_rdata_reg[14]_i_17_n_0 ),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[14]_i_18_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00CA)) 
    \s_axi_ctrl_rdata_reg[14]_i_7 
       (.I0(reg_ctrl[14]),
        .I1(reg_radius[14]),
        .I2(s_axi_ctrl_araddr[2]),
        .I3(s_axi_ctrl_araddr[3]),
        .I4(s_axi_ctrl_araddr[4]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDD5D)) 
    \s_axi_ctrl_rdata_reg[14]_i_8 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_9_n_0 ),
        .I1(s_axi_ctrl_araddr[4]),
        .I2(reg_coeff_scale[14]),
        .I3(s_axi_ctrl_araddr[2]),
        .I4(s_axi_ctrl_araddr[3]),
        .O(\s_axi_ctrl_rdata_reg[14]_i_8_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[14]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[14]_i_19_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[14]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[14]_i_9_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[15] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[15]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [15]));
  LUT6 #(
    .INIT(64'hFFFFABAAAAAAABAA)) 
    \s_axi_ctrl_rdata_reg[15]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_3_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[15]_i_5_n_0 ),
        .I3(\s_axi_ctrl_rdata_reg[15]_i_6_n_0 ),
        .I4(s_axi_ctrl_araddr[8]),
        .I5(\s_axi_ctrl_rdata_reg[15]_i_7_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1515151515151555)) 
    \s_axi_ctrl_rdata_reg[15]_i_10 
       (.I0(s_axi_ctrl_araddr[7]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[5]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(s_axi_ctrl_araddr[3]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00CA)) 
    \s_axi_ctrl_rdata_reg[15]_i_11 
       (.I0(reg_ctrl[15]),
        .I1(reg_radius[15]),
        .I2(s_axi_ctrl_araddr[2]),
        .I3(s_axi_ctrl_araddr[3]),
        .I4(s_axi_ctrl_araddr[4]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDD5D)) 
    \s_axi_ctrl_rdata_reg[15]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_9_n_0 ),
        .I1(s_axi_ctrl_araddr[4]),
        .I2(reg_coeff_scale[15]),
        .I3(s_axi_ctrl_araddr[2]),
        .I4(s_axi_ctrl_araddr[3]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2A2A2AAAAAAA)) 
    \s_axi_ctrl_rdata_reg[15]_i_13 
       (.I0(s_axi_ctrl_araddr[7]),
        .I1(s_axi_ctrl_araddr[5]),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[15]_i_26_n_0 ),
        .I4(s_axi_ctrl_araddr[4]),
        .I5(\s_axi_ctrl_rdata_reg[15]_i_27_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000AC00)) 
    \s_axi_ctrl_rdata_reg[15]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_28_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_29_n_0 ),
        .I2(s_axi_ctrl_araddr[4]),
        .I3(s_axi_ctrl_araddr[6]),
        .I4(s_axi_ctrl_araddr[5]),
        .I5(\s_axi_ctrl_rdata_reg[15]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_15 
       (.I0(\reg_coeff_reg[27] [15]),
        .I1(\reg_coeff_reg[26] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_16 
       (.I0(\reg_coeff_reg[31] [15]),
        .I1(\reg_coeff_reg[30] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_ctrl_rdata_reg[15]_i_17 
       (.I0(s_axi_ctrl_araddr[6]),
        .I1(s_axi_ctrl_araddr[5]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_17_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[15]_i_18 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_31_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_18_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[15]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'h770F7700770F770F)) 
    \s_axi_ctrl_rdata_reg[15]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_8_n_0 ),
        .I1(s_axi_ctrl_araddr[4]),
        .I2(s_axi_ctrl_araddr[9]),
        .I3(\s_axi_ctrl_rdata_reg[15]_i_9_n_0 ),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_10_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(p_1_out));
  MUXF7 \s_axi_ctrl_rdata_reg[15]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_21 
       (.I0(\reg_coeff_reg[75] [15]),
        .I1(\reg_coeff_reg[74] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_22 
       (.I0(\reg_coeff_reg[79] [15]),
        .I1(\reg_coeff_reg[78] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_ctrl_rdata_reg[15]_i_23 
       (.I0(s_axi_ctrl_araddr[6]),
        .I1(s_axi_ctrl_araddr[5]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_ctrl_rdata_reg[15]_i_24 
       (.I0(s_axi_ctrl_araddr[6]),
        .I1(s_axi_ctrl_araddr[5]),
        .I2(s_axi_ctrl_araddr[4]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  MUXF8 \s_axi_ctrl_rdata_reg[15]_i_25 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_37_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_38_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_25_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_26 
       (.I0(\reg_coeff_reg[55] [15]),
        .I1(\reg_coeff_reg[54] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_27 
       (.I0(\reg_coeff_reg[51] [15]),
        .I1(\reg_coeff_reg[50] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_28 
       (.I0(\reg_coeff_reg[47] [15]),
        .I1(\reg_coeff_reg[46] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_29 
       (.I0(\reg_coeff_reg[43] [15]),
        .I1(\reg_coeff_reg[42] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEAEAAAA)) 
    \s_axi_ctrl_rdata_reg[15]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_11_n_0 ),
        .I1(reg_img_w[15]),
        .I2(s_axi_ctrl_araddr[2]),
        .I3(reg_img_h[15]),
        .I4(s_axi_ctrl_araddr[3]),
        .I5(\s_axi_ctrl_rdata_reg[15]_i_12_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00B80000)) 
    \s_axi_ctrl_rdata_reg[15]_i_30 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_39_n_0 ),
        .I1(s_axi_ctrl_araddr[4]),
        .I2(\s_axi_ctrl_rdata_reg[15]_i_40_n_0 ),
        .I3(s_axi_ctrl_araddr[6]),
        .I4(s_axi_ctrl_araddr[5]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_31 
       (.I0(\reg_coeff_reg[3] [15]),
        .I1(\reg_coeff_reg[2] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_32 
       (.I0(\reg_coeff_reg[7] [15]),
        .I1(\reg_coeff_reg[6] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_33 
       (.I0(\reg_coeff_reg[11] [15]),
        .I1(\reg_coeff_reg[10] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_34 
       (.I0(\reg_coeff_reg[15] [15]),
        .I1(\reg_coeff_reg[14] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_35 
       (.I0(\reg_coeff_reg[19] [15]),
        .I1(\reg_coeff_reg[18] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_36 
       (.I0(\reg_coeff_reg[23] [15]),
        .I1(\reg_coeff_reg[22] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_36_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[15]_i_37 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_41_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_42_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_37_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[15]_i_38 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_43_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_44_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_38_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_39 
       (.I0(\reg_coeff_reg[39] [15]),
        .I1(\reg_coeff_reg[38] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    \s_axi_ctrl_rdata_reg[15]_i_4 
       (.I0(s_axi_ctrl_araddr[9]),
        .I1(s_axi_ctrl_araddr[7]),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(s_axi_ctrl_araddr[4]),
        .I5(\s_axi_ctrl_rdata_reg[15]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_40 
       (.I0(\reg_coeff_reg[35] [15]),
        .I1(\reg_coeff_reg[34] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_41 
       (.I0(\reg_coeff_reg[59] [15]),
        .I1(\reg_coeff_reg[58] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_42 
       (.I0(\reg_coeff_reg[63] [15]),
        .I1(\reg_coeff_reg[62] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_43 
       (.I0(\reg_coeff_reg[67] [15]),
        .I1(\reg_coeff_reg[66] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_44 
       (.I0(\reg_coeff_reg[71] [15]),
        .I1(\reg_coeff_reg[70] [15]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [15]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [15]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h2222222200022202)) 
    \s_axi_ctrl_rdata_reg[15]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_13_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_14_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[15]_i_15_n_0 ),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_16_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[15]_i_17_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \s_axi_ctrl_rdata_reg[15]_i_6 
       (.I0(s_axi_ctrl_araddr[7]),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_18_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[15]_i_19_n_0 ),
        .I4(s_axi_ctrl_araddr[5]),
        .I5(\s_axi_ctrl_rdata_reg[15]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[15]_i_7 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[15]_i_22_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[15]_i_23_n_0 ),
        .I3(\reg_coeff_reg[80] [15]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[15]_i_25_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_ctrl_rdata_reg[15]_i_8 
       (.I0(s_axi_ctrl_araddr[3]),
        .I1(s_axi_ctrl_araddr[2]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \s_axi_ctrl_rdata_reg[15]_i_9 
       (.I0(s_axi_ctrl_araddr[8]),
        .I1(s_axi_ctrl_araddr[9]),
        .I2(s_axi_ctrl_araddr[7]),
        .I3(s_axi_ctrl_araddr[6]),
        .I4(s_axi_ctrl_araddr[5]),
        .O(\s_axi_ctrl_rdata_reg[15]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[1] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[1]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF444F4F4)) 
    \s_axi_ctrl_rdata_reg[1]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[1]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[1]_i_3_n_0 ),
        .I2(s_axi_ctrl_araddr[8]),
        .I3(\s_axi_ctrl_rdata_reg[1]_i_4_n_0 ),
        .I4(\s_axi_ctrl_rdata_reg[1]_i_5_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[1]_i_6_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[1]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[1]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[1]_i_26_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[1]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[1]_i_27_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[1]_i_28_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[1]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[1]_i_29_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[1]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_12_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_13 
       (.I0(\reg_coeff_reg[67] [1]),
        .I1(\reg_coeff_reg[66] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_14 
       (.I0(\reg_coeff_reg[71] [1]),
        .I1(\reg_coeff_reg[70] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hCC8C0080)) 
    \s_axi_ctrl_rdata_reg[1]_i_15 
       (.I0(\s_axi_ctrl_rdata_reg[1]_i_31_n_0 ),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[4]),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(\s_axi_ctrl_rdata_reg[1]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_16 
       (.I0(\reg_coeff_reg[63] [1]),
        .I1(\reg_coeff_reg[62] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_17 
       (.I0(\reg_coeff_reg[59] [1]),
        .I1(\reg_coeff_reg[58] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_18 
       (.I0(reg_img_h[1]),
        .I1(reg_img_w[1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_19 
       (.I0(\reg_coeff_reg[51] [1]),
        .I1(\reg_coeff_reg[50] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEEEEEEFEEEFEE)) 
    \s_axi_ctrl_rdata_reg[1]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I1(s_axi_ctrl_araddr[8]),
        .I2(\s_axi_ctrl_rdata_reg[1]_i_7_n_0 ),
        .I3(\s_axi_ctrl_rdata_reg[1]_i_8_n_0 ),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[1]_i_9_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_20 
       (.I0(\reg_coeff_reg[55] [1]),
        .I1(\reg_coeff_reg[54] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_21 
       (.I0(\reg_coeff_reg[43] [1]),
        .I1(\reg_coeff_reg[42] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_22 
       (.I0(\reg_coeff_reg[47] [1]),
        .I1(\reg_coeff_reg[46] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_22_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[1]_i_23 
       (.I0(\s_axi_ctrl_rdata_reg[1]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[1]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_23_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[1]_i_24 
       (.I0(\s_axi_ctrl_rdata_reg[1]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[1]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_24_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_ctrl_rdata_reg[1]_i_25 
       (.I0(\reg_coeff_reg[3] [1]),
        .I1(\reg_coeff_reg[2] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \s_axi_ctrl_rdata_reg[1]_i_26 
       (.I0(\reg_coeff_reg[7] [1]),
        .I1(\reg_coeff_reg[6] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_27 
       (.I0(\reg_coeff_reg[19] [1]),
        .I1(\reg_coeff_reg[18] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_28 
       (.I0(\reg_coeff_reg[23] [1]),
        .I1(\reg_coeff_reg[22] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_29 
       (.I0(\reg_coeff_reg[11] [1]),
        .I1(\reg_coeff_reg[10] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFBABFBFBFBABABAB)) 
    \s_axi_ctrl_rdata_reg[1]_i_3 
       (.I0(s_axi_ctrl_araddr[7]),
        .I1(\s_axi_ctrl_rdata_reg[1]_i_10_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[1]_i_11_n_0 ),
        .I4(s_axi_ctrl_araddr[5]),
        .I5(\s_axi_ctrl_rdata_reg[1]_i_12_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_30 
       (.I0(\reg_coeff_reg[15] [1]),
        .I1(\reg_coeff_reg[14] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_31 
       (.I0(\reg_coeff_reg[79] [1]),
        .I1(\reg_coeff_reg[78] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_32 
       (.I0(\reg_coeff_reg[75] [1]),
        .I1(\reg_coeff_reg[74] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_33 
       (.I0(\reg_coeff_reg[27] [1]),
        .I1(\reg_coeff_reg[26] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_34 
       (.I0(\reg_coeff_reg[31] [1]),
        .I1(\reg_coeff_reg[30] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_35 
       (.I0(\reg_coeff_reg[35] [1]),
        .I1(\reg_coeff_reg[34] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[1]_i_36 
       (.I0(\reg_coeff_reg[39] [1]),
        .I1(\reg_coeff_reg[38] [1]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [1]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [1]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h8C8C8C8080808C80)) 
    \s_axi_ctrl_rdata_reg[1]_i_4 
       (.I0(\reg_coeff_reg[80] [1]),
        .I1(s_axi_ctrl_araddr[5]),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[1]_i_13_n_0 ),
        .I4(s_axi_ctrl_araddr[4]),
        .I5(\s_axi_ctrl_rdata_reg[1]_i_14_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABAAABBB)) 
    \s_axi_ctrl_rdata_reg[1]_i_5 
       (.I0(s_axi_ctrl_araddr[5]),
        .I1(\s_axi_ctrl_rdata_reg[1]_i_15_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[1]_i_16_n_0 ),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[1]_i_17_n_0 ),
        .I5(s_axi_ctrl_araddr[6]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hCA00)) 
    \s_axi_ctrl_rdata_reg[1]_i_6 
       (.I0(\s_axi_ctrl_rdata_reg[1]_i_18_n_0 ),
        .I1(reg_coeff_scale[1]),
        .I2(s_axi_ctrl_araddr[4]),
        .I3(\s_axi_ctrl_rdata_reg[14]_i_5_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88800080FFFFFFFF)) 
    \s_axi_ctrl_rdata_reg[1]_i_7 
       (.I0(s_axi_ctrl_araddr[5]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(\s_axi_ctrl_rdata_reg[1]_i_19_n_0 ),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[1]_i_20_n_0 ),
        .I5(s_axi_ctrl_araddr[7]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF1BFFFF)) 
    \s_axi_ctrl_rdata_reg[1]_i_8 
       (.I0(s_axi_ctrl_araddr[4]),
        .I1(\s_axi_ctrl_rdata_reg[1]_i_21_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[1]_i_22_n_0 ),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(s_axi_ctrl_araddr[6]),
        .O(\s_axi_ctrl_rdata_reg[1]_i_8_n_0 ));
  MUXF8 \s_axi_ctrl_rdata_reg[1]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[1]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[1]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[1]_i_9_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[2] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[2]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [2]));
  LUT6 #(
    .INIT(64'hAA8A0080AAAAAAAA)) 
    \s_axi_ctrl_rdata_reg[2]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_3_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(\s_axi_ctrl_rdata_reg[2]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[2]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_17_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_18_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF8 \s_axi_ctrl_rdata_reg[2]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_19_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[2]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_12_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[2]_i_13 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_13_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[2]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_26_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_14_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_15 
       (.I0(\reg_coeff_reg[67] [2]),
        .I1(\reg_coeff_reg[66] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_16 
       (.I0(\reg_coeff_reg[71] [2]),
        .I1(\reg_coeff_reg[70] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_17 
       (.I0(\reg_coeff_reg[59] [2]),
        .I1(\reg_coeff_reg[58] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_18 
       (.I0(\reg_coeff_reg[63] [2]),
        .I1(\reg_coeff_reg[62] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_18_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[2]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_27_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_28_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0CCAAAA)) 
    \s_axi_ctrl_rdata_reg[2]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_5_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_6_n_0 ),
        .I2(reg_coeff_scale[2]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_2_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[2]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_29_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[2]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_31_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[2]_i_22 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_22_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[2]_i_23 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_23_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[2]_i_24 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_37_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_38_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_24_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_25 
       (.I0(\reg_coeff_reg[3] [2]),
        .I1(\reg_coeff_reg[2] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_26 
       (.I0(\reg_coeff_reg[7] [2]),
        .I1(\reg_coeff_reg[6] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_27 
       (.I0(\reg_coeff_reg[43] [2]),
        .I1(\reg_coeff_reg[42] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_28 
       (.I0(\reg_coeff_reg[47] [2]),
        .I1(\reg_coeff_reg[46] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_29 
       (.I0(\reg_coeff_reg[51] [2]),
        .I1(\reg_coeff_reg[50] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_29_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[2]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_7_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_3_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_30 
       (.I0(\reg_coeff_reg[55] [2]),
        .I1(\reg_coeff_reg[54] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_31 
       (.I0(\reg_coeff_reg[27] [2]),
        .I1(\reg_coeff_reg[26] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_32 
       (.I0(\reg_coeff_reg[31] [2]),
        .I1(\reg_coeff_reg[30] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_33 
       (.I0(\reg_coeff_reg[35] [2]),
        .I1(\reg_coeff_reg[34] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_34 
       (.I0(\reg_coeff_reg[39] [2]),
        .I1(\reg_coeff_reg[38] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_35 
       (.I0(\reg_coeff_reg[11] [2]),
        .I1(\reg_coeff_reg[10] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_36 
       (.I0(\reg_coeff_reg[15] [2]),
        .I1(\reg_coeff_reg[14] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_37 
       (.I0(\reg_coeff_reg[19] [2]),
        .I1(\reg_coeff_reg[18] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_38 
       (.I0(\reg_coeff_reg[23] [2]),
        .I1(\reg_coeff_reg[22] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBFBB8F8BB0B88088)) 
    \s_axi_ctrl_rdata_reg[2]_i_4 
       (.I0(\reg_coeff_reg[80] [2]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[5]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[2]_i_9_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[2]_i_10_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_11_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_12_n_0 ),
        .I2(s_axi_ctrl_araddr[7]),
        .I3(\s_axi_ctrl_rdata_reg[2]_i_13_n_0 ),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[2]_i_14_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_6 
       (.I0(reg_img_h[2]),
        .I1(reg_img_w[2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_7 
       (.I0(\reg_coeff_reg[79] [2]),
        .I1(\reg_coeff_reg[78] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[2]_i_8 
       (.I0(\reg_coeff_reg[75] [2]),
        .I1(\reg_coeff_reg[74] [2]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [2]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [2]),
        .O(\s_axi_ctrl_rdata_reg[2]_i_8_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[2]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[2]_i_15_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[2]_i_16_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[2]_i_9_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[3] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[3]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [3]));
  LUT6 #(
    .INIT(64'hF4F404F4F4040404)) 
    \s_axi_ctrl_rdata_reg[3]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_3_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[14]_i_5_n_0 ),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(reg_coeff_scale[3]),
        .I5(\s_axi_ctrl_rdata_reg[3]_i_4_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[3]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_22_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_23_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[3]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_24_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_25_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_12 
       (.I0(\reg_coeff_reg[79] [3]),
        .I1(\reg_coeff_reg[78] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_13 
       (.I0(\reg_coeff_reg[75] [3]),
        .I1(\reg_coeff_reg[74] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_14 
       (.I0(\reg_coeff_reg[3] [3]),
        .I1(\reg_coeff_reg[2] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_15 
       (.I0(\reg_coeff_reg[7] [3]),
        .I1(\reg_coeff_reg[6] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_15_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[3]_i_16 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_26_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_27_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_16_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[3]_i_17 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_28_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_29_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_17_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[3]_i_18 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_30_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_31_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_18_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[3]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_32_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_33_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \s_axi_ctrl_rdata_reg[3]_i_2 
       (.I0(s_axi_ctrl_araddr[8]),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_5_n_0 ),
        .I2(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ),
        .I3(\reg_coeff_reg[80] [3]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_23_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[3]_i_6_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_2_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[3]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_34_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_35_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[3]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_36_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_37_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_22 
       (.I0(\reg_coeff_reg[59] [3]),
        .I1(\reg_coeff_reg[58] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_23 
       (.I0(\reg_coeff_reg[63] [3]),
        .I1(\reg_coeff_reg[62] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_24 
       (.I0(\reg_coeff_reg[67] [3]),
        .I1(\reg_coeff_reg[66] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_25 
       (.I0(\reg_coeff_reg[71] [3]),
        .I1(\reg_coeff_reg[70] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_26 
       (.I0(\reg_coeff_reg[11] [3]),
        .I1(\reg_coeff_reg[10] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_27 
       (.I0(\reg_coeff_reg[15] [3]),
        .I1(\reg_coeff_reg[14] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_28 
       (.I0(\reg_coeff_reg[19] [3]),
        .I1(\reg_coeff_reg[18] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_29 
       (.I0(\reg_coeff_reg[23] [3]),
        .I1(\reg_coeff_reg[22] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAFEAE)) 
    \s_axi_ctrl_rdata_reg[3]_i_3 
       (.I0(s_axi_ctrl_araddr[8]),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_7_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[3]_i_8_n_0 ),
        .I4(s_axi_ctrl_araddr[7]),
        .I5(\s_axi_ctrl_rdata_reg[3]_i_9_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_30 
       (.I0(\reg_coeff_reg[51] [3]),
        .I1(\reg_coeff_reg[50] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_31 
       (.I0(\reg_coeff_reg[55] [3]),
        .I1(\reg_coeff_reg[54] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_32 
       (.I0(\reg_coeff_reg[43] [3]),
        .I1(\reg_coeff_reg[42] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_33 
       (.I0(\reg_coeff_reg[47] [3]),
        .I1(\reg_coeff_reg[46] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_34 
       (.I0(\reg_coeff_reg[35] [3]),
        .I1(\reg_coeff_reg[34] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_35 
       (.I0(\reg_coeff_reg[39] [3]),
        .I1(\reg_coeff_reg[38] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_36 
       (.I0(\reg_coeff_reg[27] [3]),
        .I1(\reg_coeff_reg[26] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_37 
       (.I0(\reg_coeff_reg[31] [3]),
        .I1(\reg_coeff_reg[30] [3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_4 
       (.I0(reg_img_h[3]),
        .I1(reg_img_w[3]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[3]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[3]),
        .O(\s_axi_ctrl_rdata_reg[3]_i_4_n_0 ));
  MUXF8 \s_axi_ctrl_rdata_reg[3]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_10_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_11_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_5_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[3]_i_6 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_12_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_13_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_6_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[3]_i_7 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_14_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_15_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_7_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF8 \s_axi_ctrl_rdata_reg[3]_i_8 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_16_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_17_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_8_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[3]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[3]_i_18_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[3]_i_19_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(\s_axi_ctrl_rdata_reg[3]_i_20_n_0 ),
        .I4(s_axi_ctrl_araddr[5]),
        .I5(\s_axi_ctrl_rdata_reg[3]_i_21_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[3]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[4] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[4]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [4]));
  LUT6 #(
    .INIT(64'hAA8A0080AAAAAAAA)) 
    \s_axi_ctrl_rdata_reg[4]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_3_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(\s_axi_ctrl_rdata_reg[4]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[4]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_17_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_18_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF8 \s_axi_ctrl_rdata_reg[4]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_19_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[4]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_12_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[4]_i_13 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_13_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[4]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_26_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_14_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_15 
       (.I0(\reg_coeff_reg[67] [4]),
        .I1(\reg_coeff_reg[66] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_16 
       (.I0(\reg_coeff_reg[71] [4]),
        .I1(\reg_coeff_reg[70] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_17 
       (.I0(\reg_coeff_reg[59] [4]),
        .I1(\reg_coeff_reg[58] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_18 
       (.I0(\reg_coeff_reg[63] [4]),
        .I1(\reg_coeff_reg[62] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_18_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[4]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_27_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_28_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0CCAAAA)) 
    \s_axi_ctrl_rdata_reg[4]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_5_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_6_n_0 ),
        .I2(reg_coeff_scale[4]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_2_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[4]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_29_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[4]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_31_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[4]_i_22 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_22_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[4]_i_23 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_23_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[4]_i_24 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_37_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_38_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_24_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_25 
       (.I0(\reg_coeff_reg[3] [4]),
        .I1(\reg_coeff_reg[2] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_26 
       (.I0(\reg_coeff_reg[7] [4]),
        .I1(\reg_coeff_reg[6] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_27 
       (.I0(\reg_coeff_reg[43] [4]),
        .I1(\reg_coeff_reg[42] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_28 
       (.I0(\reg_coeff_reg[47] [4]),
        .I1(\reg_coeff_reg[46] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_29 
       (.I0(\reg_coeff_reg[51] [4]),
        .I1(\reg_coeff_reg[50] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_29_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[4]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_7_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_3_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_30 
       (.I0(\reg_coeff_reg[55] [4]),
        .I1(\reg_coeff_reg[54] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_31 
       (.I0(\reg_coeff_reg[27] [4]),
        .I1(\reg_coeff_reg[26] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_32 
       (.I0(\reg_coeff_reg[31] [4]),
        .I1(\reg_coeff_reg[30] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_33 
       (.I0(\reg_coeff_reg[35] [4]),
        .I1(\reg_coeff_reg[34] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_34 
       (.I0(\reg_coeff_reg[39] [4]),
        .I1(\reg_coeff_reg[38] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_35 
       (.I0(\reg_coeff_reg[11] [4]),
        .I1(\reg_coeff_reg[10] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_36 
       (.I0(\reg_coeff_reg[15] [4]),
        .I1(\reg_coeff_reg[14] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_37 
       (.I0(\reg_coeff_reg[19] [4]),
        .I1(\reg_coeff_reg[18] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_38 
       (.I0(\reg_coeff_reg[23] [4]),
        .I1(\reg_coeff_reg[22] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBFBB8F8BB0B88088)) 
    \s_axi_ctrl_rdata_reg[4]_i_4 
       (.I0(\reg_coeff_reg[80] [4]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[5]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[4]_i_9_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[4]_i_10_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_11_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_12_n_0 ),
        .I2(s_axi_ctrl_araddr[7]),
        .I3(\s_axi_ctrl_rdata_reg[4]_i_13_n_0 ),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[4]_i_14_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_6 
       (.I0(reg_img_h[4]),
        .I1(reg_img_w[4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_7 
       (.I0(\reg_coeff_reg[79] [4]),
        .I1(\reg_coeff_reg[78] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[4]_i_8 
       (.I0(\reg_coeff_reg[75] [4]),
        .I1(\reg_coeff_reg[74] [4]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [4]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [4]),
        .O(\s_axi_ctrl_rdata_reg[4]_i_8_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[4]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[4]_i_15_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[4]_i_16_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[4]_i_9_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[5] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[5]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [5]));
  LUT6 #(
    .INIT(64'hAA8A0080AAAAAAAA)) 
    \s_axi_ctrl_rdata_reg[5]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_3_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(\s_axi_ctrl_rdata_reg[5]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[5]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_17_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_18_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF8 \s_axi_ctrl_rdata_reg[5]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_19_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[5]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_12_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[5]_i_13 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_13_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[5]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_26_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_14_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_15 
       (.I0(\reg_coeff_reg[67] [5]),
        .I1(\reg_coeff_reg[66] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_16 
       (.I0(\reg_coeff_reg[71] [5]),
        .I1(\reg_coeff_reg[70] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_17 
       (.I0(\reg_coeff_reg[59] [5]),
        .I1(\reg_coeff_reg[58] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_18 
       (.I0(\reg_coeff_reg[63] [5]),
        .I1(\reg_coeff_reg[62] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_18_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[5]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_27_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_28_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0CCAAAA)) 
    \s_axi_ctrl_rdata_reg[5]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_5_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_6_n_0 ),
        .I2(reg_coeff_scale[5]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_2_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[5]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_29_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[5]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_31_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[5]_i_22 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_22_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[5]_i_23 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_23_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[5]_i_24 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_37_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_38_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_24_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_25 
       (.I0(\reg_coeff_reg[3] [5]),
        .I1(\reg_coeff_reg[2] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_26 
       (.I0(\reg_coeff_reg[7] [5]),
        .I1(\reg_coeff_reg[6] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_27 
       (.I0(\reg_coeff_reg[43] [5]),
        .I1(\reg_coeff_reg[42] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_28 
       (.I0(\reg_coeff_reg[47] [5]),
        .I1(\reg_coeff_reg[46] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_29 
       (.I0(\reg_coeff_reg[51] [5]),
        .I1(\reg_coeff_reg[50] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_29_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[5]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_7_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_3_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_30 
       (.I0(\reg_coeff_reg[55] [5]),
        .I1(\reg_coeff_reg[54] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_31 
       (.I0(\reg_coeff_reg[27] [5]),
        .I1(\reg_coeff_reg[26] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_32 
       (.I0(\reg_coeff_reg[31] [5]),
        .I1(\reg_coeff_reg[30] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_33 
       (.I0(\reg_coeff_reg[35] [5]),
        .I1(\reg_coeff_reg[34] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_34 
       (.I0(\reg_coeff_reg[39] [5]),
        .I1(\reg_coeff_reg[38] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_35 
       (.I0(\reg_coeff_reg[11] [5]),
        .I1(\reg_coeff_reg[10] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_36 
       (.I0(\reg_coeff_reg[15] [5]),
        .I1(\reg_coeff_reg[14] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_37 
       (.I0(\reg_coeff_reg[19] [5]),
        .I1(\reg_coeff_reg[18] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_38 
       (.I0(\reg_coeff_reg[23] [5]),
        .I1(\reg_coeff_reg[22] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBFBB8F8BB0B88088)) 
    \s_axi_ctrl_rdata_reg[5]_i_4 
       (.I0(\reg_coeff_reg[80] [5]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[5]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[5]_i_9_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[5]_i_10_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_11_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_12_n_0 ),
        .I2(s_axi_ctrl_araddr[7]),
        .I3(\s_axi_ctrl_rdata_reg[5]_i_13_n_0 ),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[5]_i_14_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_6 
       (.I0(reg_img_h[5]),
        .I1(reg_img_w[5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_7 
       (.I0(\reg_coeff_reg[79] [5]),
        .I1(\reg_coeff_reg[78] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[5]_i_8 
       (.I0(\reg_coeff_reg[75] [5]),
        .I1(\reg_coeff_reg[74] [5]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [5]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [5]),
        .O(\s_axi_ctrl_rdata_reg[5]_i_8_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[5]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[5]_i_15_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[5]_i_16_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[5]_i_9_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[6] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[6]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [6]));
  LUT6 #(
    .INIT(64'hAA8A0080AAAAAAAA)) 
    \s_axi_ctrl_rdata_reg[6]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_3_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(\s_axi_ctrl_rdata_reg[6]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[6]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_17_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_18_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF8 \s_axi_ctrl_rdata_reg[6]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_19_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[6]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_12_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[6]_i_13 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_13_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[6]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_26_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_14_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_15 
       (.I0(\reg_coeff_reg[67] [6]),
        .I1(\reg_coeff_reg[66] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_16 
       (.I0(\reg_coeff_reg[71] [6]),
        .I1(\reg_coeff_reg[70] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_17 
       (.I0(\reg_coeff_reg[59] [6]),
        .I1(\reg_coeff_reg[58] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_18 
       (.I0(\reg_coeff_reg[63] [6]),
        .I1(\reg_coeff_reg[62] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_18_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[6]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_27_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_28_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0CCAAAA)) 
    \s_axi_ctrl_rdata_reg[6]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_5_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_6_n_0 ),
        .I2(reg_coeff_scale[6]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_2_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[6]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_29_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[6]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_31_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[6]_i_22 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_22_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[6]_i_23 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_23_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[6]_i_24 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_37_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_38_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_24_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_25 
       (.I0(\reg_coeff_reg[3] [6]),
        .I1(\reg_coeff_reg[2] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_26 
       (.I0(\reg_coeff_reg[7] [6]),
        .I1(\reg_coeff_reg[6] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_27 
       (.I0(\reg_coeff_reg[43] [6]),
        .I1(\reg_coeff_reg[42] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_28 
       (.I0(\reg_coeff_reg[47] [6]),
        .I1(\reg_coeff_reg[46] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_29 
       (.I0(\reg_coeff_reg[51] [6]),
        .I1(\reg_coeff_reg[50] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_29_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[6]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_7_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_3_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_30 
       (.I0(\reg_coeff_reg[55] [6]),
        .I1(\reg_coeff_reg[54] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_31 
       (.I0(\reg_coeff_reg[27] [6]),
        .I1(\reg_coeff_reg[26] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_32 
       (.I0(\reg_coeff_reg[31] [6]),
        .I1(\reg_coeff_reg[30] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_33 
       (.I0(\reg_coeff_reg[35] [6]),
        .I1(\reg_coeff_reg[34] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_34 
       (.I0(\reg_coeff_reg[39] [6]),
        .I1(\reg_coeff_reg[38] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_35 
       (.I0(\reg_coeff_reg[11] [6]),
        .I1(\reg_coeff_reg[10] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_36 
       (.I0(\reg_coeff_reg[15] [6]),
        .I1(\reg_coeff_reg[14] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_37 
       (.I0(\reg_coeff_reg[19] [6]),
        .I1(\reg_coeff_reg[18] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_38 
       (.I0(\reg_coeff_reg[23] [6]),
        .I1(\reg_coeff_reg[22] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBFBB8F8BB0B88088)) 
    \s_axi_ctrl_rdata_reg[6]_i_4 
       (.I0(\reg_coeff_reg[80] [6]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[5]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[6]_i_9_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[6]_i_10_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_11_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_12_n_0 ),
        .I2(s_axi_ctrl_araddr[7]),
        .I3(\s_axi_ctrl_rdata_reg[6]_i_13_n_0 ),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[6]_i_14_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_6 
       (.I0(reg_img_h[6]),
        .I1(reg_img_w[6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_7 
       (.I0(\reg_coeff_reg[79] [6]),
        .I1(\reg_coeff_reg[78] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[6]_i_8 
       (.I0(\reg_coeff_reg[75] [6]),
        .I1(\reg_coeff_reg[74] [6]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [6]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [6]),
        .O(\s_axi_ctrl_rdata_reg[6]_i_8_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[6]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[6]_i_15_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[6]_i_16_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[6]_i_9_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[7] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[7]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [7]));
  LUT6 #(
    .INIT(64'hAA8A0080AAAAAAAA)) 
    \s_axi_ctrl_rdata_reg[7]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_3_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(\s_axi_ctrl_rdata_reg[7]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[7]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_17_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_18_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF8 \s_axi_ctrl_rdata_reg[7]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_19_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[7]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_12_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[7]_i_13 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_13_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[7]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_26_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_14_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_15 
       (.I0(\reg_coeff_reg[67] [7]),
        .I1(\reg_coeff_reg[66] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_16 
       (.I0(\reg_coeff_reg[71] [7]),
        .I1(\reg_coeff_reg[70] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_17 
       (.I0(\reg_coeff_reg[59] [7]),
        .I1(\reg_coeff_reg[58] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_18 
       (.I0(\reg_coeff_reg[63] [7]),
        .I1(\reg_coeff_reg[62] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_18_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[7]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_27_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_28_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0CCAAAA)) 
    \s_axi_ctrl_rdata_reg[7]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_5_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_6_n_0 ),
        .I2(reg_coeff_scale[7]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_2_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[7]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_29_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[7]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_31_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[7]_i_22 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_22_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[7]_i_23 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_23_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[7]_i_24 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_37_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_38_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_24_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_25 
       (.I0(\reg_coeff_reg[3] [7]),
        .I1(\reg_coeff_reg[2] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_26 
       (.I0(\reg_coeff_reg[7] [7]),
        .I1(\reg_coeff_reg[6] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_27 
       (.I0(\reg_coeff_reg[43] [7]),
        .I1(\reg_coeff_reg[42] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_28 
       (.I0(\reg_coeff_reg[47] [7]),
        .I1(\reg_coeff_reg[46] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_29 
       (.I0(\reg_coeff_reg[51] [7]),
        .I1(\reg_coeff_reg[50] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_29_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[7]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_7_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_3_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_30 
       (.I0(\reg_coeff_reg[55] [7]),
        .I1(\reg_coeff_reg[54] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_31 
       (.I0(\reg_coeff_reg[27] [7]),
        .I1(\reg_coeff_reg[26] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_32 
       (.I0(\reg_coeff_reg[31] [7]),
        .I1(\reg_coeff_reg[30] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_33 
       (.I0(\reg_coeff_reg[35] [7]),
        .I1(\reg_coeff_reg[34] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_34 
       (.I0(\reg_coeff_reg[39] [7]),
        .I1(\reg_coeff_reg[38] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_35 
       (.I0(\reg_coeff_reg[11] [7]),
        .I1(\reg_coeff_reg[10] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_36 
       (.I0(\reg_coeff_reg[15] [7]),
        .I1(\reg_coeff_reg[14] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_37 
       (.I0(\reg_coeff_reg[19] [7]),
        .I1(\reg_coeff_reg[18] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_38 
       (.I0(\reg_coeff_reg[23] [7]),
        .I1(\reg_coeff_reg[22] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBFBB8F8BB0B88088)) 
    \s_axi_ctrl_rdata_reg[7]_i_4 
       (.I0(\reg_coeff_reg[80] [7]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[5]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[7]_i_9_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[7]_i_10_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_11_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_12_n_0 ),
        .I2(s_axi_ctrl_araddr[7]),
        .I3(\s_axi_ctrl_rdata_reg[7]_i_13_n_0 ),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[7]_i_14_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_6 
       (.I0(reg_img_h[7]),
        .I1(reg_img_w[7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_7 
       (.I0(\reg_coeff_reg[79] [7]),
        .I1(\reg_coeff_reg[78] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[7]_i_8 
       (.I0(\reg_coeff_reg[75] [7]),
        .I1(\reg_coeff_reg[74] [7]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [7]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [7]),
        .O(\s_axi_ctrl_rdata_reg[7]_i_8_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[7]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[7]_i_15_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[7]_i_16_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[7]_i_9_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[8] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[8]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [8]));
  LUT6 #(
    .INIT(64'hAA8A0080AAAAAAAA)) 
    \s_axi_ctrl_rdata_reg[8]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_3_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(\s_axi_ctrl_rdata_reg[8]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[8]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_17_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_18_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF8 \s_axi_ctrl_rdata_reg[8]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_19_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[8]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_12_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[8]_i_13 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_13_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[8]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_26_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_14_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_15 
       (.I0(\reg_coeff_reg[67] [8]),
        .I1(\reg_coeff_reg[66] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_16 
       (.I0(\reg_coeff_reg[71] [8]),
        .I1(\reg_coeff_reg[70] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_17 
       (.I0(\reg_coeff_reg[59] [8]),
        .I1(\reg_coeff_reg[58] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_18 
       (.I0(\reg_coeff_reg[63] [8]),
        .I1(\reg_coeff_reg[62] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_18_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[8]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_27_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_28_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0CCAAAA)) 
    \s_axi_ctrl_rdata_reg[8]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_5_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_6_n_0 ),
        .I2(reg_coeff_scale[8]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_2_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[8]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_29_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[8]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_31_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[8]_i_22 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_22_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[8]_i_23 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_23_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[8]_i_24 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_37_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_38_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_24_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_25 
       (.I0(\reg_coeff_reg[3] [8]),
        .I1(\reg_coeff_reg[2] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_26 
       (.I0(\reg_coeff_reg[7] [8]),
        .I1(\reg_coeff_reg[6] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_27 
       (.I0(\reg_coeff_reg[43] [8]),
        .I1(\reg_coeff_reg[42] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_28 
       (.I0(\reg_coeff_reg[47] [8]),
        .I1(\reg_coeff_reg[46] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_29 
       (.I0(\reg_coeff_reg[51] [8]),
        .I1(\reg_coeff_reg[50] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_29_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[8]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_7_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_3_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_30 
       (.I0(\reg_coeff_reg[55] [8]),
        .I1(\reg_coeff_reg[54] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_31 
       (.I0(\reg_coeff_reg[27] [8]),
        .I1(\reg_coeff_reg[26] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_32 
       (.I0(\reg_coeff_reg[31] [8]),
        .I1(\reg_coeff_reg[30] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_33 
       (.I0(\reg_coeff_reg[35] [8]),
        .I1(\reg_coeff_reg[34] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_34 
       (.I0(\reg_coeff_reg[39] [8]),
        .I1(\reg_coeff_reg[38] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_35 
       (.I0(\reg_coeff_reg[11] [8]),
        .I1(\reg_coeff_reg[10] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_36 
       (.I0(\reg_coeff_reg[15] [8]),
        .I1(\reg_coeff_reg[14] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_37 
       (.I0(\reg_coeff_reg[19] [8]),
        .I1(\reg_coeff_reg[18] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_38 
       (.I0(\reg_coeff_reg[23] [8]),
        .I1(\reg_coeff_reg[22] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBFBB8F8BB0B88088)) 
    \s_axi_ctrl_rdata_reg[8]_i_4 
       (.I0(\reg_coeff_reg[80] [8]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[5]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[8]_i_9_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[8]_i_10_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_11_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_12_n_0 ),
        .I2(s_axi_ctrl_araddr[7]),
        .I3(\s_axi_ctrl_rdata_reg[8]_i_13_n_0 ),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[8]_i_14_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_6 
       (.I0(reg_img_h[8]),
        .I1(reg_img_w[8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_7 
       (.I0(\reg_coeff_reg[79] [8]),
        .I1(\reg_coeff_reg[78] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[8]_i_8 
       (.I0(\reg_coeff_reg[75] [8]),
        .I1(\reg_coeff_reg[74] [8]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [8]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [8]),
        .O(\s_axi_ctrl_rdata_reg[8]_i_8_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[8]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[8]_i_15_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[8]_i_16_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[8]_i_9_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \s_axi_ctrl_rdata_reg[9] 
       (.CLR(1'b0),
        .D(\s_axi_ctrl_rdata_reg[9]_i_1_n_0 ),
        .G(p_1_out),
        .GE(1'b1),
        .Q(\^s_axi_ctrl_rdata [9]));
  LUT6 #(
    .INIT(64'hAA8A0080AAAAAAAA)) 
    \s_axi_ctrl_rdata_reg[9]_i_1 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_2_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_3_n_0 ),
        .I2(s_axi_ctrl_araddr[6]),
        .I3(s_axi_ctrl_araddr[5]),
        .I4(\s_axi_ctrl_rdata_reg[9]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_1_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[9]_i_10 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_17_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_18_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_10_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF8 \s_axi_ctrl_rdata_reg[9]_i_11 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_19_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_20_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_11_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[9]_i_12 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_21_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_22_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_12_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF8 \s_axi_ctrl_rdata_reg[9]_i_13 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_23_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_24_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_13_n_0 ),
        .S(s_axi_ctrl_araddr[5]));
  MUXF7 \s_axi_ctrl_rdata_reg[9]_i_14 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_25_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_26_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_14_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_15 
       (.I0(\reg_coeff_reg[67] [9]),
        .I1(\reg_coeff_reg[66] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[65] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[64] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_16 
       (.I0(\reg_coeff_reg[71] [9]),
        .I1(\reg_coeff_reg[70] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[69] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[68] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_17 
       (.I0(\reg_coeff_reg[59] [9]),
        .I1(\reg_coeff_reg[58] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[57] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[56] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_18 
       (.I0(\reg_coeff_reg[63] [9]),
        .I1(\reg_coeff_reg[62] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[61] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[60] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_18_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[9]_i_19 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_27_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_28_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_19_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0CCAAAA)) 
    \s_axi_ctrl_rdata_reg[9]_i_2 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_5_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_6_n_0 ),
        .I2(reg_coeff_scale[9]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[15]_i_4_n_0 ),
        .I5(s_axi_ctrl_araddr[8]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_2_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[9]_i_20 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_29_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_30_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_20_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[9]_i_21 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_31_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_32_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_21_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[9]_i_22 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_33_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_34_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_22_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[9]_i_23 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_35_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_36_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_23_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  MUXF7 \s_axi_ctrl_rdata_reg[9]_i_24 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_37_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_38_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_24_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_25 
       (.I0(\reg_coeff_reg[3] [9]),
        .I1(\reg_coeff_reg[2] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[1] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[0] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_26 
       (.I0(\reg_coeff_reg[7] [9]),
        .I1(\reg_coeff_reg[6] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[5] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[4] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_27 
       (.I0(\reg_coeff_reg[43] [9]),
        .I1(\reg_coeff_reg[42] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[41] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[40] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_28 
       (.I0(\reg_coeff_reg[47] [9]),
        .I1(\reg_coeff_reg[46] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[45] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[44] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_29 
       (.I0(\reg_coeff_reg[51] [9]),
        .I1(\reg_coeff_reg[50] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[49] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[48] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_29_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[9]_i_3 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_7_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_8_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_3_n_0 ),
        .S(\s_axi_ctrl_rdata_reg[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_30 
       (.I0(\reg_coeff_reg[55] [9]),
        .I1(\reg_coeff_reg[54] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[53] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[52] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_31 
       (.I0(\reg_coeff_reg[27] [9]),
        .I1(\reg_coeff_reg[26] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[25] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[24] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_32 
       (.I0(\reg_coeff_reg[31] [9]),
        .I1(\reg_coeff_reg[30] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[29] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[28] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_33 
       (.I0(\reg_coeff_reg[35] [9]),
        .I1(\reg_coeff_reg[34] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[33] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[32] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_34 
       (.I0(\reg_coeff_reg[39] [9]),
        .I1(\reg_coeff_reg[38] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[37] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[36] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_35 
       (.I0(\reg_coeff_reg[11] [9]),
        .I1(\reg_coeff_reg[10] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[9] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[8] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_36 
       (.I0(\reg_coeff_reg[15] [9]),
        .I1(\reg_coeff_reg[14] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[13] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[12] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_37 
       (.I0(\reg_coeff_reg[19] [9]),
        .I1(\reg_coeff_reg[18] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[17] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[16] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_38 
       (.I0(\reg_coeff_reg[23] [9]),
        .I1(\reg_coeff_reg[22] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[21] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[20] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hBFBB8F8BB0B88088)) 
    \s_axi_ctrl_rdata_reg[9]_i_4 
       (.I0(\reg_coeff_reg[80] [9]),
        .I1(s_axi_ctrl_araddr[6]),
        .I2(s_axi_ctrl_araddr[5]),
        .I3(s_axi_ctrl_araddr[4]),
        .I4(\s_axi_ctrl_rdata_reg[9]_i_9_n_0 ),
        .I5(\s_axi_ctrl_rdata_reg[9]_i_10_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_5 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_11_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_12_n_0 ),
        .I2(s_axi_ctrl_araddr[7]),
        .I3(\s_axi_ctrl_rdata_reg[9]_i_13_n_0 ),
        .I4(s_axi_ctrl_araddr[6]),
        .I5(\s_axi_ctrl_rdata_reg[9]_i_14_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_6 
       (.I0(reg_img_h[9]),
        .I1(reg_img_w[9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(reg_radius[9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(reg_ctrl[9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_7 
       (.I0(\reg_coeff_reg[79] [9]),
        .I1(\reg_coeff_reg[78] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[77] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[76] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_ctrl_rdata_reg[9]_i_8 
       (.I0(\reg_coeff_reg[75] [9]),
        .I1(\reg_coeff_reg[74] [9]),
        .I2(s_axi_ctrl_araddr[3]),
        .I3(\reg_coeff_reg[73] [9]),
        .I4(s_axi_ctrl_araddr[2]),
        .I5(\reg_coeff_reg[72] [9]),
        .O(\s_axi_ctrl_rdata_reg[9]_i_8_n_0 ));
  MUXF7 \s_axi_ctrl_rdata_reg[9]_i_9 
       (.I0(\s_axi_ctrl_rdata_reg[9]_i_15_n_0 ),
        .I1(\s_axi_ctrl_rdata_reg[9]_i_16_n_0 ),
        .O(\s_axi_ctrl_rdata_reg[9]_i_9_n_0 ),
        .S(s_axi_ctrl_araddr[4]));
  LUT2 #(
    .INIT(4'hB)) 
    s_axis_tready_i_1
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .O(tvalid_fifo1));
  (* KEEP = "yes" *) 
  FDRE s_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(tvalid_fifo1),
        .Q(s_axis_tready),
        .R(reset));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \tdata_buffer[0]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(fsm_img_processing_state),
        .I2(buff_flag),
        .I3(\buff_tdata_reg_n_0_[0] ),
        .O(p_1_in__0[0]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \tdata_buffer[1]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(fsm_img_processing_state),
        .I2(buff_flag),
        .I3(\buff_tdata_reg_n_0_[1] ),
        .O(p_1_in__0[1]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \tdata_buffer[2]_i_1 
       (.I0(s_axis_tdata[2]),
        .I1(fsm_img_processing_state),
        .I2(buff_flag),
        .I3(\buff_tdata_reg_n_0_[2] ),
        .O(p_1_in__0[2]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \tdata_buffer[3]_i_1 
       (.I0(s_axis_tdata[3]),
        .I1(fsm_img_processing_state),
        .I2(buff_flag),
        .I3(\buff_tdata_reg_n_0_[3] ),
        .O(p_1_in__0[3]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \tdata_buffer[4]_i_1 
       (.I0(s_axis_tdata[4]),
        .I1(fsm_img_processing_state),
        .I2(buff_flag),
        .I3(\buff_tdata_reg_n_0_[4] ),
        .O(p_1_in__0[4]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \tdata_buffer[5]_i_1 
       (.I0(s_axis_tdata[5]),
        .I1(fsm_img_processing_state),
        .I2(buff_flag),
        .I3(\buff_tdata_reg_n_0_[5] ),
        .O(p_1_in__0[5]));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \tdata_buffer[6]_i_1 
       (.I0(s_axis_tdata[6]),
        .I1(fsm_img_processing_state),
        .I2(buff_flag),
        .I3(\buff_tdata_reg_n_0_[6] ),
        .O(p_1_in__0[6]));
  LUT4 #(
    .INIT(16'hEE2E)) 
    \tdata_buffer[7]_i_1 
       (.I0(s_axis_tvalid),
        .I1(fsm_img_processing_state),
        .I2(m_axis_tvalid),
        .I3(m_axis_tready),
        .O(\tdata_buffer[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \tdata_buffer[7]_i_2 
       (.I0(s_axis_tdata[7]),
        .I1(fsm_img_processing_state),
        .I2(buff_flag),
        .I3(\buff_tdata_reg_n_0_[7] ),
        .O(p_1_in__0[7]));
  FDRE \tdata_buffer_reg[0] 
       (.C(clk),
        .CE(\tdata_buffer[7]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(tdata_buffer[0]),
        .R(reset));
  FDRE \tdata_buffer_reg[1] 
       (.C(clk),
        .CE(\tdata_buffer[7]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(tdata_buffer[1]),
        .R(reset));
  FDRE \tdata_buffer_reg[2] 
       (.C(clk),
        .CE(\tdata_buffer[7]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(tdata_buffer[2]),
        .R(reset));
  FDRE \tdata_buffer_reg[3] 
       (.C(clk),
        .CE(\tdata_buffer[7]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(tdata_buffer[3]),
        .R(reset));
  FDRE \tdata_buffer_reg[4] 
       (.C(clk),
        .CE(\tdata_buffer[7]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(tdata_buffer[4]),
        .R(reset));
  FDRE \tdata_buffer_reg[5] 
       (.C(clk),
        .CE(\tdata_buffer[7]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(tdata_buffer[5]),
        .R(reset));
  FDRE \tdata_buffer_reg[6] 
       (.C(clk),
        .CE(\tdata_buffer[7]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(tdata_buffer[6]),
        .R(reset));
  FDRE \tdata_buffer_reg[7] 
       (.C(clk),
        .CE(\tdata_buffer[7]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(tdata_buffer[7]),
        .R(reset));
  LUT4 #(
    .INIT(16'hEA2A)) 
    tlast_buffer_i_1
       (.I0(s_axis_tlast),
        .I1(fsm_img_processing_state),
        .I2(buff_flag),
        .I3(buff_tlast_reg_n_0),
        .O(tlast_buffer_i_1_n_0));
  FDRE tlast_buffer_reg
       (.C(clk),
        .CE(\tdata_buffer[7]_i_1_n_0 ),
        .D(tlast_buffer_i_1_n_0),
        .Q(tlast_buffer),
        .R(reset));
  LUT3 #(
    .INIT(8'hA2)) 
    \tlast_fifo[6]_i_1 
       (.I0(fsm_img_processing_state),
        .I1(m_axis_tvalid),
        .I2(m_axis_tready),
        .O(tvalid_buffer));
  (* KEEP = "yes" *) 
  FDRE \tlast_fifo_reg[0] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tlast_buffer),
        .Q(tlast_fifo[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tlast_fifo_reg[1] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tlast_fifo[0]),
        .Q(tlast_fifo[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tlast_fifo_reg[2] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tlast_fifo[1]),
        .Q(tlast_fifo[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tlast_fifo_reg[3] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tlast_fifo[2]),
        .Q(tlast_fifo[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tlast_fifo_reg[4] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tlast_fifo[3]),
        .Q(tlast_fifo[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tlast_fifo_reg[5] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tlast_fifo[4]),
        .Q(tlast_fifo[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tlast_fifo_reg[6] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tlast_fifo[5]),
        .Q(tlast_fifo[6]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFDF880F00DF88)) 
    tvalid_buffer_i_1
       (.I0(buff_flag),
        .I1(buff_tvalid),
        .I2(fsm_img_processing_state),
        .I3(s_axis_tvalid),
        .I4(tvalid_buffer_i_2_n_0),
        .I5(tvalid_buffer_reg_n_0),
        .O(tvalid_buffer_i_1_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    tvalid_buffer_i_2
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .I2(fsm_img_processing_state),
        .O(tvalid_buffer_i_2_n_0));
  FDRE tvalid_buffer_reg
       (.C(clk),
        .CE(1'b1),
        .D(tvalid_buffer_i_1_n_0),
        .Q(tvalid_buffer_reg_n_0),
        .R(reset));
  LUT2 #(
    .INIT(4'h8)) 
    \tvalid_fifo[1]_i_1 
       (.I0(sA_out),
        .I1(tvalid_fifo[0]),
        .O(\tvalid_fifo[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFA0)) 
    \tvalid_fifo[6]_i_1 
       (.I0(tvalid_fifo[5]),
        .I1(m_axis_tready),
        .I2(fsm_img_processing_state),
        .I3(m_axis_tvalid),
        .O(\tvalid_fifo[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    tvalid_fifo_inst
       (.I0(tvalid_fifo[6]),
        .O(m_axis_tvalid));
  (* KEEP = "yes" *) 
  FDRE \tvalid_fifo_reg[0] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tvalid_buffer_reg_n_0),
        .Q(tvalid_fifo[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tvalid_fifo_reg[1] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(\tvalid_fifo[1]_i_1_n_0 ),
        .Q(tvalid_fifo[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tvalid_fifo_reg[2] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tvalid_fifo[1]),
        .Q(tvalid_fifo[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tvalid_fifo_reg[3] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tvalid_fifo[2]),
        .Q(tvalid_fifo[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tvalid_fifo_reg[4] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tvalid_fifo[3]),
        .Q(tvalid_fifo[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tvalid_fifo_reg[5] 
       (.C(clk),
        .CE(tvalid_buffer),
        .D(tvalid_fifo[4]),
        .Q(tvalid_fifo[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \tvalid_fifo_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\tvalid_fifo[6]_i_1_n_0 ),
        .Q(tvalid_fifo[6]),
        .R(reset));
  (* FRAC_COEFF = "15" *) 
  (* FRAC_SCALE = "12" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_R = "4" *) 
  image_filter_acc_image_filter_0_2_filter_alu u_alu
       (.clk(clk),
        .coeff({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .coeff_scale({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .col_from_bram({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .mode(1'b0),
        .pixel_new({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .radius({1'b0,1'b0,1'b0}),
        .result(NLW_u_alu_result_UNCONNECTED[15:0]),
        .result_valid(alu_valid),
        .rst(reset),
        .shift_en(tvalid_buffer_reg_n_0));
  (* IMG_WIDTH_MAX = "512" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_R = "4" *) 
  image_filter_acc_image_filter_0_2_bram_linebuf u_bram
       (.clk(clk),
        .col_out(bram_col_out),
        .pixel_in(sA_data),
        .rd_addr({img_col_counter[8:7],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_enable(tvalid_buffer_reg_n_0),
        .rst(reset),
        .wr_addr({1'b0,1'b0,img_col_counter[6:0]}),
        .wr_enable(1'b0));
endmodule

(* IMG_WIDTH_MAX = "512" *) (* MAX_R = "4" *) (* ORIG_REF_NAME = "bram_linebuf" *) 
module image_filter_acc_image_filter_0_2_bram_linebuf
   (clk,
    rst,
    rd_addr,
    wr_addr,
    pixel_in,
    wr_enable,
    rd_enable,
    col_out);
  input clk;
  input rst;
  input [8:0]rd_addr;
  input [8:0]wr_addr;
  input [7:0]pixel_in;
  input wr_enable;
  input rd_enable;
  output [63:0]col_out;

  wire clk;
  wire [63:0]col_out;
  wire [63:0]col_out0;
  wire mem_reg_0_127_0_0_i_1_n_0;
  wire mem_reg_0_127_0_0_n_0;
  wire mem_reg_0_127_0_0_n_1;
  wire mem_reg_0_127_10_10_i_1_n_0;
  wire mem_reg_0_127_10_10_n_0;
  wire mem_reg_0_127_10_10_n_1;
  wire mem_reg_0_127_11_11_i_1_n_0;
  wire mem_reg_0_127_11_11_n_0;
  wire mem_reg_0_127_11_11_n_1;
  wire mem_reg_0_127_12_12_i_1_n_0;
  wire mem_reg_0_127_12_12_n_0;
  wire mem_reg_0_127_12_12_n_1;
  wire mem_reg_0_127_13_13_i_1_n_0;
  wire mem_reg_0_127_13_13_n_0;
  wire mem_reg_0_127_13_13_n_1;
  wire mem_reg_0_127_14_14_i_1_n_0;
  wire mem_reg_0_127_14_14_n_0;
  wire mem_reg_0_127_14_14_n_1;
  wire mem_reg_0_127_15_15_i_1_n_0;
  wire mem_reg_0_127_15_15_n_0;
  wire mem_reg_0_127_15_15_n_1;
  wire mem_reg_0_127_16_16_i_1_n_0;
  wire mem_reg_0_127_16_16_n_0;
  wire mem_reg_0_127_16_16_n_1;
  wire mem_reg_0_127_17_17_i_1_n_0;
  wire mem_reg_0_127_17_17_n_0;
  wire mem_reg_0_127_17_17_n_1;
  wire mem_reg_0_127_18_18_i_1_n_0;
  wire mem_reg_0_127_18_18_n_0;
  wire mem_reg_0_127_18_18_n_1;
  wire mem_reg_0_127_19_19_i_1_n_0;
  wire mem_reg_0_127_19_19_n_0;
  wire mem_reg_0_127_19_19_n_1;
  wire mem_reg_0_127_1_1_n_0;
  wire mem_reg_0_127_1_1_n_1;
  wire mem_reg_0_127_20_20_i_1_n_0;
  wire mem_reg_0_127_20_20_n_0;
  wire mem_reg_0_127_20_20_n_1;
  wire mem_reg_0_127_21_21_i_1_n_0;
  wire mem_reg_0_127_21_21_n_0;
  wire mem_reg_0_127_21_21_n_1;
  wire mem_reg_0_127_22_22_i_1_n_0;
  wire mem_reg_0_127_22_22_n_0;
  wire mem_reg_0_127_22_22_n_1;
  wire mem_reg_0_127_23_23_i_1_n_0;
  wire mem_reg_0_127_23_23_n_0;
  wire mem_reg_0_127_23_23_n_1;
  wire mem_reg_0_127_24_24_i_1_n_0;
  wire mem_reg_0_127_24_24_n_0;
  wire mem_reg_0_127_24_24_n_1;
  wire mem_reg_0_127_25_25_i_1_n_0;
  wire mem_reg_0_127_25_25_n_0;
  wire mem_reg_0_127_25_25_n_1;
  wire mem_reg_0_127_26_26_i_1_n_0;
  wire mem_reg_0_127_26_26_n_0;
  wire mem_reg_0_127_26_26_n_1;
  wire mem_reg_0_127_27_27_i_1_n_0;
  wire mem_reg_0_127_27_27_n_0;
  wire mem_reg_0_127_27_27_n_1;
  wire mem_reg_0_127_28_28_i_1_n_0;
  wire mem_reg_0_127_28_28_n_0;
  wire mem_reg_0_127_28_28_n_1;
  wire mem_reg_0_127_29_29_i_1_n_0;
  wire mem_reg_0_127_29_29_n_0;
  wire mem_reg_0_127_29_29_n_1;
  wire mem_reg_0_127_2_2_i_1_n_0;
  wire mem_reg_0_127_2_2_n_0;
  wire mem_reg_0_127_2_2_n_1;
  wire mem_reg_0_127_30_30_i_1_n_0;
  wire mem_reg_0_127_30_30_n_0;
  wire mem_reg_0_127_30_30_n_1;
  wire mem_reg_0_127_31_31_i_1_n_0;
  wire mem_reg_0_127_31_31_n_0;
  wire mem_reg_0_127_31_31_n_1;
  wire mem_reg_0_127_32_32_i_1_n_0;
  wire mem_reg_0_127_32_32_n_0;
  wire mem_reg_0_127_32_32_n_1;
  wire mem_reg_0_127_33_33_i_1_n_0;
  wire mem_reg_0_127_33_33_n_0;
  wire mem_reg_0_127_33_33_n_1;
  wire mem_reg_0_127_34_34_i_1_n_0;
  wire mem_reg_0_127_34_34_n_0;
  wire mem_reg_0_127_34_34_n_1;
  wire mem_reg_0_127_35_35_i_1_n_0;
  wire mem_reg_0_127_35_35_n_0;
  wire mem_reg_0_127_35_35_n_1;
  wire mem_reg_0_127_36_36_i_1_n_0;
  wire mem_reg_0_127_36_36_n_0;
  wire mem_reg_0_127_36_36_n_1;
  wire mem_reg_0_127_37_37_i_1_n_0;
  wire mem_reg_0_127_37_37_n_0;
  wire mem_reg_0_127_37_37_n_1;
  wire mem_reg_0_127_38_38_i_1_n_0;
  wire mem_reg_0_127_38_38_n_0;
  wire mem_reg_0_127_38_38_n_1;
  wire mem_reg_0_127_39_39_i_1_n_0;
  wire mem_reg_0_127_39_39_n_0;
  wire mem_reg_0_127_39_39_n_1;
  wire mem_reg_0_127_3_3_n_0;
  wire mem_reg_0_127_3_3_n_1;
  wire mem_reg_0_127_40_40_i_1_n_0;
  wire mem_reg_0_127_40_40_n_0;
  wire mem_reg_0_127_40_40_n_1;
  wire mem_reg_0_127_41_41_i_1_n_0;
  wire mem_reg_0_127_41_41_n_0;
  wire mem_reg_0_127_41_41_n_1;
  wire mem_reg_0_127_42_42_i_1_n_0;
  wire mem_reg_0_127_42_42_n_0;
  wire mem_reg_0_127_42_42_n_1;
  wire mem_reg_0_127_43_43_i_1_n_0;
  wire mem_reg_0_127_43_43_n_0;
  wire mem_reg_0_127_43_43_n_1;
  wire mem_reg_0_127_44_44_i_1_n_0;
  wire mem_reg_0_127_44_44_n_0;
  wire mem_reg_0_127_44_44_n_1;
  wire mem_reg_0_127_45_45_i_1_n_0;
  wire mem_reg_0_127_45_45_n_0;
  wire mem_reg_0_127_45_45_n_1;
  wire mem_reg_0_127_46_46_i_1_n_0;
  wire mem_reg_0_127_46_46_n_0;
  wire mem_reg_0_127_46_46_n_1;
  wire mem_reg_0_127_47_47_i_1_n_0;
  wire mem_reg_0_127_47_47_n_0;
  wire mem_reg_0_127_47_47_n_1;
  wire mem_reg_0_127_48_48_i_1_n_0;
  wire mem_reg_0_127_48_48_n_0;
  wire mem_reg_0_127_48_48_n_1;
  wire mem_reg_0_127_49_49_i_1_n_0;
  wire mem_reg_0_127_49_49_n_0;
  wire mem_reg_0_127_49_49_n_1;
  wire mem_reg_0_127_4_4_n_0;
  wire mem_reg_0_127_4_4_n_1;
  wire mem_reg_0_127_50_50_i_1_n_0;
  wire mem_reg_0_127_50_50_n_0;
  wire mem_reg_0_127_50_50_n_1;
  wire mem_reg_0_127_51_51_i_1_n_0;
  wire mem_reg_0_127_51_51_n_0;
  wire mem_reg_0_127_51_51_n_1;
  wire mem_reg_0_127_52_52_i_1_n_0;
  wire mem_reg_0_127_52_52_n_0;
  wire mem_reg_0_127_52_52_n_1;
  wire mem_reg_0_127_53_53_i_1_n_0;
  wire mem_reg_0_127_53_53_n_0;
  wire mem_reg_0_127_53_53_n_1;
  wire mem_reg_0_127_54_54_i_1_n_0;
  wire mem_reg_0_127_54_54_n_0;
  wire mem_reg_0_127_54_54_n_1;
  wire mem_reg_0_127_55_55_i_1_n_0;
  wire mem_reg_0_127_55_55_n_0;
  wire mem_reg_0_127_55_55_n_1;
  wire mem_reg_0_127_56_56_i_1_n_0;
  wire mem_reg_0_127_56_56_n_0;
  wire mem_reg_0_127_56_56_n_1;
  wire mem_reg_0_127_57_57_i_1_n_0;
  wire mem_reg_0_127_57_57_n_0;
  wire mem_reg_0_127_57_57_n_1;
  wire mem_reg_0_127_58_58_i_1_n_0;
  wire mem_reg_0_127_58_58_n_0;
  wire mem_reg_0_127_58_58_n_1;
  wire mem_reg_0_127_59_59_i_1_n_0;
  wire mem_reg_0_127_59_59_n_0;
  wire mem_reg_0_127_59_59_n_1;
  wire mem_reg_0_127_5_5_n_0;
  wire mem_reg_0_127_5_5_n_1;
  wire mem_reg_0_127_60_60_i_1_n_0;
  wire mem_reg_0_127_60_60_n_0;
  wire mem_reg_0_127_60_60_n_1;
  wire mem_reg_0_127_61_61_i_1_n_0;
  wire mem_reg_0_127_61_61_n_0;
  wire mem_reg_0_127_61_61_n_1;
  wire mem_reg_0_127_62_62_i_1_n_0;
  wire mem_reg_0_127_62_62_n_0;
  wire mem_reg_0_127_62_62_n_1;
  wire mem_reg_0_127_63_63_i_1_n_0;
  wire mem_reg_0_127_63_63_n_0;
  wire mem_reg_0_127_63_63_n_1;
  wire mem_reg_0_127_6_6_n_0;
  wire mem_reg_0_127_6_6_n_1;
  wire mem_reg_0_127_7_7_n_0;
  wire mem_reg_0_127_7_7_n_1;
  wire mem_reg_0_127_8_8_i_1_n_0;
  wire mem_reg_0_127_8_8_n_0;
  wire mem_reg_0_127_8_8_n_1;
  wire mem_reg_0_127_9_9_i_1_n_0;
  wire mem_reg_0_127_9_9_n_0;
  wire mem_reg_0_127_9_9_n_1;
  wire mem_reg_128_255_0_0_i_1_n_0;
  wire mem_reg_128_255_0_0_n_0;
  wire mem_reg_128_255_0_0_n_1;
  wire mem_reg_128_255_10_10_n_0;
  wire mem_reg_128_255_10_10_n_1;
  wire mem_reg_128_255_11_11_n_0;
  wire mem_reg_128_255_11_11_n_1;
  wire mem_reg_128_255_12_12_n_0;
  wire mem_reg_128_255_12_12_n_1;
  wire mem_reg_128_255_13_13_n_0;
  wire mem_reg_128_255_13_13_n_1;
  wire mem_reg_128_255_14_14_n_0;
  wire mem_reg_128_255_14_14_n_1;
  wire mem_reg_128_255_15_15_n_0;
  wire mem_reg_128_255_15_15_n_1;
  wire mem_reg_128_255_16_16_n_0;
  wire mem_reg_128_255_16_16_n_1;
  wire mem_reg_128_255_17_17_n_0;
  wire mem_reg_128_255_17_17_n_1;
  wire mem_reg_128_255_18_18_n_0;
  wire mem_reg_128_255_18_18_n_1;
  wire mem_reg_128_255_19_19_n_0;
  wire mem_reg_128_255_19_19_n_1;
  wire mem_reg_128_255_1_1_n_0;
  wire mem_reg_128_255_1_1_n_1;
  wire mem_reg_128_255_20_20_n_0;
  wire mem_reg_128_255_20_20_n_1;
  wire mem_reg_128_255_21_21_n_0;
  wire mem_reg_128_255_21_21_n_1;
  wire mem_reg_128_255_22_22_n_0;
  wire mem_reg_128_255_22_22_n_1;
  wire mem_reg_128_255_23_23_n_0;
  wire mem_reg_128_255_23_23_n_1;
  wire mem_reg_128_255_24_24_n_0;
  wire mem_reg_128_255_24_24_n_1;
  wire mem_reg_128_255_25_25_n_0;
  wire mem_reg_128_255_25_25_n_1;
  wire mem_reg_128_255_26_26_n_0;
  wire mem_reg_128_255_26_26_n_1;
  wire mem_reg_128_255_27_27_n_0;
  wire mem_reg_128_255_27_27_n_1;
  wire mem_reg_128_255_28_28_n_0;
  wire mem_reg_128_255_28_28_n_1;
  wire mem_reg_128_255_29_29_n_0;
  wire mem_reg_128_255_29_29_n_1;
  wire mem_reg_128_255_2_2_n_0;
  wire mem_reg_128_255_2_2_n_1;
  wire mem_reg_128_255_30_30_n_0;
  wire mem_reg_128_255_30_30_n_1;
  wire mem_reg_128_255_31_31_n_0;
  wire mem_reg_128_255_31_31_n_1;
  wire mem_reg_128_255_32_32_n_0;
  wire mem_reg_128_255_32_32_n_1;
  wire mem_reg_128_255_33_33_n_0;
  wire mem_reg_128_255_33_33_n_1;
  wire mem_reg_128_255_34_34_n_0;
  wire mem_reg_128_255_34_34_n_1;
  wire mem_reg_128_255_35_35_n_0;
  wire mem_reg_128_255_35_35_n_1;
  wire mem_reg_128_255_36_36_n_0;
  wire mem_reg_128_255_36_36_n_1;
  wire mem_reg_128_255_37_37_n_0;
  wire mem_reg_128_255_37_37_n_1;
  wire mem_reg_128_255_38_38_n_0;
  wire mem_reg_128_255_38_38_n_1;
  wire mem_reg_128_255_39_39_n_0;
  wire mem_reg_128_255_39_39_n_1;
  wire mem_reg_128_255_3_3_n_0;
  wire mem_reg_128_255_3_3_n_1;
  wire mem_reg_128_255_40_40_n_0;
  wire mem_reg_128_255_40_40_n_1;
  wire mem_reg_128_255_41_41_n_0;
  wire mem_reg_128_255_41_41_n_1;
  wire mem_reg_128_255_42_42_n_0;
  wire mem_reg_128_255_42_42_n_1;
  wire mem_reg_128_255_43_43_n_0;
  wire mem_reg_128_255_43_43_n_1;
  wire mem_reg_128_255_44_44_n_0;
  wire mem_reg_128_255_44_44_n_1;
  wire mem_reg_128_255_45_45_n_0;
  wire mem_reg_128_255_45_45_n_1;
  wire mem_reg_128_255_46_46_n_0;
  wire mem_reg_128_255_46_46_n_1;
  wire mem_reg_128_255_47_47_n_0;
  wire mem_reg_128_255_47_47_n_1;
  wire mem_reg_128_255_48_48_n_0;
  wire mem_reg_128_255_48_48_n_1;
  wire mem_reg_128_255_49_49_n_0;
  wire mem_reg_128_255_49_49_n_1;
  wire mem_reg_128_255_4_4_n_0;
  wire mem_reg_128_255_4_4_n_1;
  wire mem_reg_128_255_50_50_n_0;
  wire mem_reg_128_255_50_50_n_1;
  wire mem_reg_128_255_51_51_n_0;
  wire mem_reg_128_255_51_51_n_1;
  wire mem_reg_128_255_52_52_n_0;
  wire mem_reg_128_255_52_52_n_1;
  wire mem_reg_128_255_53_53_n_0;
  wire mem_reg_128_255_53_53_n_1;
  wire mem_reg_128_255_54_54_n_0;
  wire mem_reg_128_255_54_54_n_1;
  wire mem_reg_128_255_55_55_n_0;
  wire mem_reg_128_255_55_55_n_1;
  wire mem_reg_128_255_56_56_n_0;
  wire mem_reg_128_255_56_56_n_1;
  wire mem_reg_128_255_57_57_n_0;
  wire mem_reg_128_255_57_57_n_1;
  wire mem_reg_128_255_58_58_n_0;
  wire mem_reg_128_255_58_58_n_1;
  wire mem_reg_128_255_59_59_n_0;
  wire mem_reg_128_255_59_59_n_1;
  wire mem_reg_128_255_5_5_n_0;
  wire mem_reg_128_255_5_5_n_1;
  wire mem_reg_128_255_60_60_n_0;
  wire mem_reg_128_255_60_60_n_1;
  wire mem_reg_128_255_61_61_n_0;
  wire mem_reg_128_255_61_61_n_1;
  wire mem_reg_128_255_62_62_n_0;
  wire mem_reg_128_255_62_62_n_1;
  wire mem_reg_128_255_63_63_n_0;
  wire mem_reg_128_255_63_63_n_1;
  wire mem_reg_128_255_6_6_i_1_n_0;
  wire mem_reg_128_255_6_6_n_0;
  wire mem_reg_128_255_6_6_n_1;
  wire mem_reg_128_255_7_7_n_0;
  wire mem_reg_128_255_7_7_n_1;
  wire mem_reg_128_255_8_8_n_0;
  wire mem_reg_128_255_8_8_n_1;
  wire mem_reg_128_255_9_9_n_0;
  wire mem_reg_128_255_9_9_n_1;
  wire mem_reg_256_383_0_0_i_1_n_0;
  wire mem_reg_256_383_0_0_n_0;
  wire mem_reg_256_383_0_0_n_1;
  wire mem_reg_256_383_10_10_n_0;
  wire mem_reg_256_383_10_10_n_1;
  wire mem_reg_256_383_11_11_n_0;
  wire mem_reg_256_383_11_11_n_1;
  wire mem_reg_256_383_12_12_n_0;
  wire mem_reg_256_383_12_12_n_1;
  wire mem_reg_256_383_13_13_n_0;
  wire mem_reg_256_383_13_13_n_1;
  wire mem_reg_256_383_14_14_n_0;
  wire mem_reg_256_383_14_14_n_1;
  wire mem_reg_256_383_15_15_n_0;
  wire mem_reg_256_383_15_15_n_1;
  wire mem_reg_256_383_16_16_n_0;
  wire mem_reg_256_383_16_16_n_1;
  wire mem_reg_256_383_17_17_n_0;
  wire mem_reg_256_383_17_17_n_1;
  wire mem_reg_256_383_18_18_n_0;
  wire mem_reg_256_383_18_18_n_1;
  wire mem_reg_256_383_19_19_n_0;
  wire mem_reg_256_383_19_19_n_1;
  wire mem_reg_256_383_1_1_n_0;
  wire mem_reg_256_383_1_1_n_1;
  wire mem_reg_256_383_20_20_n_0;
  wire mem_reg_256_383_20_20_n_1;
  wire mem_reg_256_383_21_21_n_0;
  wire mem_reg_256_383_21_21_n_1;
  wire mem_reg_256_383_22_22_n_0;
  wire mem_reg_256_383_22_22_n_1;
  wire mem_reg_256_383_23_23_n_0;
  wire mem_reg_256_383_23_23_n_1;
  wire mem_reg_256_383_24_24_n_0;
  wire mem_reg_256_383_24_24_n_1;
  wire mem_reg_256_383_25_25_n_0;
  wire mem_reg_256_383_25_25_n_1;
  wire mem_reg_256_383_26_26_n_0;
  wire mem_reg_256_383_26_26_n_1;
  wire mem_reg_256_383_27_27_n_0;
  wire mem_reg_256_383_27_27_n_1;
  wire mem_reg_256_383_28_28_n_0;
  wire mem_reg_256_383_28_28_n_1;
  wire mem_reg_256_383_29_29_n_0;
  wire mem_reg_256_383_29_29_n_1;
  wire mem_reg_256_383_2_2_n_0;
  wire mem_reg_256_383_2_2_n_1;
  wire mem_reg_256_383_30_30_n_0;
  wire mem_reg_256_383_30_30_n_1;
  wire mem_reg_256_383_31_31_n_0;
  wire mem_reg_256_383_31_31_n_1;
  wire mem_reg_256_383_32_32_n_0;
  wire mem_reg_256_383_32_32_n_1;
  wire mem_reg_256_383_33_33_n_0;
  wire mem_reg_256_383_33_33_n_1;
  wire mem_reg_256_383_34_34_n_0;
  wire mem_reg_256_383_34_34_n_1;
  wire mem_reg_256_383_35_35_n_0;
  wire mem_reg_256_383_35_35_n_1;
  wire mem_reg_256_383_36_36_n_0;
  wire mem_reg_256_383_36_36_n_1;
  wire mem_reg_256_383_37_37_n_0;
  wire mem_reg_256_383_37_37_n_1;
  wire mem_reg_256_383_38_38_n_0;
  wire mem_reg_256_383_38_38_n_1;
  wire mem_reg_256_383_39_39_n_0;
  wire mem_reg_256_383_39_39_n_1;
  wire mem_reg_256_383_3_3_n_0;
  wire mem_reg_256_383_3_3_n_1;
  wire mem_reg_256_383_40_40_n_0;
  wire mem_reg_256_383_40_40_n_1;
  wire mem_reg_256_383_41_41_n_0;
  wire mem_reg_256_383_41_41_n_1;
  wire mem_reg_256_383_42_42_n_0;
  wire mem_reg_256_383_42_42_n_1;
  wire mem_reg_256_383_43_43_n_0;
  wire mem_reg_256_383_43_43_n_1;
  wire mem_reg_256_383_44_44_n_0;
  wire mem_reg_256_383_44_44_n_1;
  wire mem_reg_256_383_45_45_n_0;
  wire mem_reg_256_383_45_45_n_1;
  wire mem_reg_256_383_46_46_n_0;
  wire mem_reg_256_383_46_46_n_1;
  wire mem_reg_256_383_47_47_n_0;
  wire mem_reg_256_383_47_47_n_1;
  wire mem_reg_256_383_48_48_n_0;
  wire mem_reg_256_383_48_48_n_1;
  wire mem_reg_256_383_49_49_n_0;
  wire mem_reg_256_383_49_49_n_1;
  wire mem_reg_256_383_4_4_n_0;
  wire mem_reg_256_383_4_4_n_1;
  wire mem_reg_256_383_50_50_n_0;
  wire mem_reg_256_383_50_50_n_1;
  wire mem_reg_256_383_51_51_n_0;
  wire mem_reg_256_383_51_51_n_1;
  wire mem_reg_256_383_52_52_n_0;
  wire mem_reg_256_383_52_52_n_1;
  wire mem_reg_256_383_53_53_n_0;
  wire mem_reg_256_383_53_53_n_1;
  wire mem_reg_256_383_54_54_n_0;
  wire mem_reg_256_383_54_54_n_1;
  wire mem_reg_256_383_55_55_n_0;
  wire mem_reg_256_383_55_55_n_1;
  wire mem_reg_256_383_56_56_n_0;
  wire mem_reg_256_383_56_56_n_1;
  wire mem_reg_256_383_57_57_n_0;
  wire mem_reg_256_383_57_57_n_1;
  wire mem_reg_256_383_58_58_n_0;
  wire mem_reg_256_383_58_58_n_1;
  wire mem_reg_256_383_59_59_n_0;
  wire mem_reg_256_383_59_59_n_1;
  wire mem_reg_256_383_5_5_n_0;
  wire mem_reg_256_383_5_5_n_1;
  wire mem_reg_256_383_60_60_n_0;
  wire mem_reg_256_383_60_60_n_1;
  wire mem_reg_256_383_61_61_n_0;
  wire mem_reg_256_383_61_61_n_1;
  wire mem_reg_256_383_62_62_n_0;
  wire mem_reg_256_383_62_62_n_1;
  wire mem_reg_256_383_63_63_n_0;
  wire mem_reg_256_383_63_63_n_1;
  wire mem_reg_256_383_6_6_i_1_n_0;
  wire mem_reg_256_383_6_6_n_0;
  wire mem_reg_256_383_6_6_n_1;
  wire mem_reg_256_383_7_7_n_0;
  wire mem_reg_256_383_7_7_n_1;
  wire mem_reg_256_383_8_8_n_0;
  wire mem_reg_256_383_8_8_n_1;
  wire mem_reg_256_383_9_9_n_0;
  wire mem_reg_256_383_9_9_n_1;
  wire mem_reg_384_511_0_0_i_1_n_0;
  wire mem_reg_384_511_0_0_n_0;
  wire mem_reg_384_511_0_0_n_1;
  wire mem_reg_384_511_10_10_n_0;
  wire mem_reg_384_511_10_10_n_1;
  wire mem_reg_384_511_11_11_n_0;
  wire mem_reg_384_511_11_11_n_1;
  wire mem_reg_384_511_12_12_n_0;
  wire mem_reg_384_511_12_12_n_1;
  wire mem_reg_384_511_13_13_n_0;
  wire mem_reg_384_511_13_13_n_1;
  wire mem_reg_384_511_14_14_n_0;
  wire mem_reg_384_511_14_14_n_1;
  wire mem_reg_384_511_15_15_n_0;
  wire mem_reg_384_511_15_15_n_1;
  wire mem_reg_384_511_16_16_n_0;
  wire mem_reg_384_511_16_16_n_1;
  wire mem_reg_384_511_17_17_n_0;
  wire mem_reg_384_511_17_17_n_1;
  wire mem_reg_384_511_18_18_n_0;
  wire mem_reg_384_511_18_18_n_1;
  wire mem_reg_384_511_19_19_n_0;
  wire mem_reg_384_511_19_19_n_1;
  wire mem_reg_384_511_1_1_n_0;
  wire mem_reg_384_511_1_1_n_1;
  wire mem_reg_384_511_20_20_n_0;
  wire mem_reg_384_511_20_20_n_1;
  wire mem_reg_384_511_21_21_n_0;
  wire mem_reg_384_511_21_21_n_1;
  wire mem_reg_384_511_22_22_n_0;
  wire mem_reg_384_511_22_22_n_1;
  wire mem_reg_384_511_23_23_n_0;
  wire mem_reg_384_511_23_23_n_1;
  wire mem_reg_384_511_24_24_n_0;
  wire mem_reg_384_511_24_24_n_1;
  wire mem_reg_384_511_25_25_n_0;
  wire mem_reg_384_511_25_25_n_1;
  wire mem_reg_384_511_26_26_n_0;
  wire mem_reg_384_511_26_26_n_1;
  wire mem_reg_384_511_27_27_n_0;
  wire mem_reg_384_511_27_27_n_1;
  wire mem_reg_384_511_28_28_n_0;
  wire mem_reg_384_511_28_28_n_1;
  wire mem_reg_384_511_29_29_n_0;
  wire mem_reg_384_511_29_29_n_1;
  wire mem_reg_384_511_2_2_i_1_n_0;
  wire mem_reg_384_511_2_2_n_0;
  wire mem_reg_384_511_2_2_n_1;
  wire mem_reg_384_511_30_30_n_0;
  wire mem_reg_384_511_30_30_n_1;
  wire mem_reg_384_511_31_31_n_0;
  wire mem_reg_384_511_31_31_n_1;
  wire mem_reg_384_511_32_32_n_0;
  wire mem_reg_384_511_32_32_n_1;
  wire mem_reg_384_511_33_33_n_0;
  wire mem_reg_384_511_33_33_n_1;
  wire mem_reg_384_511_34_34_n_0;
  wire mem_reg_384_511_34_34_n_1;
  wire mem_reg_384_511_35_35_n_0;
  wire mem_reg_384_511_35_35_n_1;
  wire mem_reg_384_511_36_36_n_0;
  wire mem_reg_384_511_36_36_n_1;
  wire mem_reg_384_511_37_37_n_0;
  wire mem_reg_384_511_37_37_n_1;
  wire mem_reg_384_511_38_38_n_0;
  wire mem_reg_384_511_38_38_n_1;
  wire mem_reg_384_511_39_39_n_0;
  wire mem_reg_384_511_39_39_n_1;
  wire mem_reg_384_511_3_3_n_0;
  wire mem_reg_384_511_3_3_n_1;
  wire mem_reg_384_511_40_40_n_0;
  wire mem_reg_384_511_40_40_n_1;
  wire mem_reg_384_511_41_41_n_0;
  wire mem_reg_384_511_41_41_n_1;
  wire mem_reg_384_511_42_42_n_0;
  wire mem_reg_384_511_42_42_n_1;
  wire mem_reg_384_511_43_43_n_0;
  wire mem_reg_384_511_43_43_n_1;
  wire mem_reg_384_511_44_44_n_0;
  wire mem_reg_384_511_44_44_n_1;
  wire mem_reg_384_511_45_45_n_0;
  wire mem_reg_384_511_45_45_n_1;
  wire mem_reg_384_511_46_46_n_0;
  wire mem_reg_384_511_46_46_n_1;
  wire mem_reg_384_511_47_47_n_0;
  wire mem_reg_384_511_47_47_n_1;
  wire mem_reg_384_511_48_48_n_0;
  wire mem_reg_384_511_48_48_n_1;
  wire mem_reg_384_511_49_49_n_0;
  wire mem_reg_384_511_49_49_n_1;
  wire mem_reg_384_511_4_4_n_0;
  wire mem_reg_384_511_4_4_n_1;
  wire mem_reg_384_511_50_50_n_0;
  wire mem_reg_384_511_50_50_n_1;
  wire mem_reg_384_511_51_51_n_0;
  wire mem_reg_384_511_51_51_n_1;
  wire mem_reg_384_511_52_52_n_0;
  wire mem_reg_384_511_52_52_n_1;
  wire mem_reg_384_511_53_53_n_0;
  wire mem_reg_384_511_53_53_n_1;
  wire mem_reg_384_511_54_54_n_0;
  wire mem_reg_384_511_54_54_n_1;
  wire mem_reg_384_511_55_55_n_0;
  wire mem_reg_384_511_55_55_n_1;
  wire mem_reg_384_511_56_56_n_0;
  wire mem_reg_384_511_56_56_n_1;
  wire mem_reg_384_511_57_57_n_0;
  wire mem_reg_384_511_57_57_n_1;
  wire mem_reg_384_511_58_58_n_0;
  wire mem_reg_384_511_58_58_n_1;
  wire mem_reg_384_511_59_59_n_0;
  wire mem_reg_384_511_59_59_n_1;
  wire mem_reg_384_511_5_5_n_0;
  wire mem_reg_384_511_5_5_n_1;
  wire mem_reg_384_511_60_60_n_0;
  wire mem_reg_384_511_60_60_n_1;
  wire mem_reg_384_511_61_61_n_0;
  wire mem_reg_384_511_61_61_n_1;
  wire mem_reg_384_511_62_62_n_0;
  wire mem_reg_384_511_62_62_n_1;
  wire mem_reg_384_511_63_63_n_0;
  wire mem_reg_384_511_63_63_n_1;
  wire mem_reg_384_511_6_6_n_0;
  wire mem_reg_384_511_6_6_n_1;
  wire mem_reg_384_511_7_7_n_0;
  wire mem_reg_384_511_7_7_n_1;
  wire mem_reg_384_511_8_8_n_0;
  wire mem_reg_384_511_8_8_n_1;
  wire mem_reg_384_511_9_9_n_0;
  wire mem_reg_384_511_9_9_n_1;
  wire [7:0]pixel_in;
  wire [8:0]rd_addr;
  wire rd_enable;
  wire rst;
  wire [8:0]wr_addr;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[0]_i_1 
       (.I0(mem_reg_384_511_0_0_n_0),
        .I1(mem_reg_256_383_0_0_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_0_0_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_0_0_n_0),
        .O(col_out0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[10]_i_1 
       (.I0(mem_reg_384_511_10_10_n_0),
        .I1(mem_reg_256_383_10_10_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_10_10_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_10_10_n_0),
        .O(col_out0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[11]_i_1 
       (.I0(mem_reg_384_511_11_11_n_0),
        .I1(mem_reg_256_383_11_11_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_11_11_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_11_11_n_0),
        .O(col_out0[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[12]_i_1 
       (.I0(mem_reg_384_511_12_12_n_0),
        .I1(mem_reg_256_383_12_12_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_12_12_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_12_12_n_0),
        .O(col_out0[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[13]_i_1 
       (.I0(mem_reg_384_511_13_13_n_0),
        .I1(mem_reg_256_383_13_13_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_13_13_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_13_13_n_0),
        .O(col_out0[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[14]_i_1 
       (.I0(mem_reg_384_511_14_14_n_0),
        .I1(mem_reg_256_383_14_14_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_14_14_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_14_14_n_0),
        .O(col_out0[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[15]_i_1 
       (.I0(mem_reg_384_511_15_15_n_0),
        .I1(mem_reg_256_383_15_15_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_15_15_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_15_15_n_0),
        .O(col_out0[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[16]_i_1 
       (.I0(mem_reg_384_511_16_16_n_0),
        .I1(mem_reg_256_383_16_16_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_16_16_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_16_16_n_0),
        .O(col_out0[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[17]_i_1 
       (.I0(mem_reg_384_511_17_17_n_0),
        .I1(mem_reg_256_383_17_17_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_17_17_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_17_17_n_0),
        .O(col_out0[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[18]_i_1 
       (.I0(mem_reg_384_511_18_18_n_0),
        .I1(mem_reg_256_383_18_18_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_18_18_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_18_18_n_0),
        .O(col_out0[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[19]_i_1 
       (.I0(mem_reg_384_511_19_19_n_0),
        .I1(mem_reg_256_383_19_19_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_19_19_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_19_19_n_0),
        .O(col_out0[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[1]_i_1 
       (.I0(mem_reg_384_511_1_1_n_0),
        .I1(mem_reg_256_383_1_1_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_1_1_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_1_1_n_0),
        .O(col_out0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[20]_i_1 
       (.I0(mem_reg_384_511_20_20_n_0),
        .I1(mem_reg_256_383_20_20_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_20_20_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_20_20_n_0),
        .O(col_out0[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[21]_i_1 
       (.I0(mem_reg_384_511_21_21_n_0),
        .I1(mem_reg_256_383_21_21_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_21_21_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_21_21_n_0),
        .O(col_out0[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[22]_i_1 
       (.I0(mem_reg_384_511_22_22_n_0),
        .I1(mem_reg_256_383_22_22_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_22_22_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_22_22_n_0),
        .O(col_out0[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[23]_i_1 
       (.I0(mem_reg_384_511_23_23_n_0),
        .I1(mem_reg_256_383_23_23_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_23_23_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_23_23_n_0),
        .O(col_out0[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[24]_i_1 
       (.I0(mem_reg_384_511_24_24_n_0),
        .I1(mem_reg_256_383_24_24_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_24_24_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_24_24_n_0),
        .O(col_out0[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[25]_i_1 
       (.I0(mem_reg_384_511_25_25_n_0),
        .I1(mem_reg_256_383_25_25_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_25_25_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_25_25_n_0),
        .O(col_out0[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[26]_i_1 
       (.I0(mem_reg_384_511_26_26_n_0),
        .I1(mem_reg_256_383_26_26_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_26_26_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_26_26_n_0),
        .O(col_out0[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[27]_i_1 
       (.I0(mem_reg_384_511_27_27_n_0),
        .I1(mem_reg_256_383_27_27_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_27_27_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_27_27_n_0),
        .O(col_out0[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[28]_i_1 
       (.I0(mem_reg_384_511_28_28_n_0),
        .I1(mem_reg_256_383_28_28_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_28_28_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_28_28_n_0),
        .O(col_out0[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[29]_i_1 
       (.I0(mem_reg_384_511_29_29_n_0),
        .I1(mem_reg_256_383_29_29_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_29_29_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_29_29_n_0),
        .O(col_out0[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[2]_i_1 
       (.I0(mem_reg_384_511_2_2_n_0),
        .I1(mem_reg_256_383_2_2_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_2_2_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_2_2_n_0),
        .O(col_out0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[30]_i_1 
       (.I0(mem_reg_384_511_30_30_n_0),
        .I1(mem_reg_256_383_30_30_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_30_30_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_30_30_n_0),
        .O(col_out0[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[31]_i_1 
       (.I0(mem_reg_384_511_31_31_n_0),
        .I1(mem_reg_256_383_31_31_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_31_31_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_31_31_n_0),
        .O(col_out0[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[32]_i_1 
       (.I0(mem_reg_384_511_32_32_n_0),
        .I1(mem_reg_256_383_32_32_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_32_32_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_32_32_n_0),
        .O(col_out0[32]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[33]_i_1 
       (.I0(mem_reg_384_511_33_33_n_0),
        .I1(mem_reg_256_383_33_33_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_33_33_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_33_33_n_0),
        .O(col_out0[33]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[34]_i_1 
       (.I0(mem_reg_384_511_34_34_n_0),
        .I1(mem_reg_256_383_34_34_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_34_34_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_34_34_n_0),
        .O(col_out0[34]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[35]_i_1 
       (.I0(mem_reg_384_511_35_35_n_0),
        .I1(mem_reg_256_383_35_35_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_35_35_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_35_35_n_0),
        .O(col_out0[35]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[36]_i_1 
       (.I0(mem_reg_384_511_36_36_n_0),
        .I1(mem_reg_256_383_36_36_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_36_36_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_36_36_n_0),
        .O(col_out0[36]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[37]_i_1 
       (.I0(mem_reg_384_511_37_37_n_0),
        .I1(mem_reg_256_383_37_37_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_37_37_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_37_37_n_0),
        .O(col_out0[37]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[38]_i_1 
       (.I0(mem_reg_384_511_38_38_n_0),
        .I1(mem_reg_256_383_38_38_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_38_38_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_38_38_n_0),
        .O(col_out0[38]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[39]_i_1 
       (.I0(mem_reg_384_511_39_39_n_0),
        .I1(mem_reg_256_383_39_39_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_39_39_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_39_39_n_0),
        .O(col_out0[39]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[3]_i_1 
       (.I0(mem_reg_384_511_3_3_n_0),
        .I1(mem_reg_256_383_3_3_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_3_3_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_3_3_n_0),
        .O(col_out0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[40]_i_1 
       (.I0(mem_reg_384_511_40_40_n_0),
        .I1(mem_reg_256_383_40_40_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_40_40_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_40_40_n_0),
        .O(col_out0[40]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[41]_i_1 
       (.I0(mem_reg_384_511_41_41_n_0),
        .I1(mem_reg_256_383_41_41_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_41_41_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_41_41_n_0),
        .O(col_out0[41]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[42]_i_1 
       (.I0(mem_reg_384_511_42_42_n_0),
        .I1(mem_reg_256_383_42_42_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_42_42_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_42_42_n_0),
        .O(col_out0[42]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[43]_i_1 
       (.I0(mem_reg_384_511_43_43_n_0),
        .I1(mem_reg_256_383_43_43_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_43_43_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_43_43_n_0),
        .O(col_out0[43]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[44]_i_1 
       (.I0(mem_reg_384_511_44_44_n_0),
        .I1(mem_reg_256_383_44_44_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_44_44_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_44_44_n_0),
        .O(col_out0[44]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[45]_i_1 
       (.I0(mem_reg_384_511_45_45_n_0),
        .I1(mem_reg_256_383_45_45_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_45_45_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_45_45_n_0),
        .O(col_out0[45]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[46]_i_1 
       (.I0(mem_reg_384_511_46_46_n_0),
        .I1(mem_reg_256_383_46_46_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_46_46_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_46_46_n_0),
        .O(col_out0[46]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[47]_i_1 
       (.I0(mem_reg_384_511_47_47_n_0),
        .I1(mem_reg_256_383_47_47_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_47_47_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_47_47_n_0),
        .O(col_out0[47]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[48]_i_1 
       (.I0(mem_reg_384_511_48_48_n_0),
        .I1(mem_reg_256_383_48_48_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_48_48_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_48_48_n_0),
        .O(col_out0[48]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[49]_i_1 
       (.I0(mem_reg_384_511_49_49_n_0),
        .I1(mem_reg_256_383_49_49_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_49_49_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_49_49_n_0),
        .O(col_out0[49]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[4]_i_1 
       (.I0(mem_reg_384_511_4_4_n_0),
        .I1(mem_reg_256_383_4_4_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_4_4_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_4_4_n_0),
        .O(col_out0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[50]_i_1 
       (.I0(mem_reg_384_511_50_50_n_0),
        .I1(mem_reg_256_383_50_50_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_50_50_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_50_50_n_0),
        .O(col_out0[50]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[51]_i_1 
       (.I0(mem_reg_384_511_51_51_n_0),
        .I1(mem_reg_256_383_51_51_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_51_51_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_51_51_n_0),
        .O(col_out0[51]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[52]_i_1 
       (.I0(mem_reg_384_511_52_52_n_0),
        .I1(mem_reg_256_383_52_52_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_52_52_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_52_52_n_0),
        .O(col_out0[52]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[53]_i_1 
       (.I0(mem_reg_384_511_53_53_n_0),
        .I1(mem_reg_256_383_53_53_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_53_53_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_53_53_n_0),
        .O(col_out0[53]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[54]_i_1 
       (.I0(mem_reg_384_511_54_54_n_0),
        .I1(mem_reg_256_383_54_54_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_54_54_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_54_54_n_0),
        .O(col_out0[54]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[55]_i_1 
       (.I0(mem_reg_384_511_55_55_n_0),
        .I1(mem_reg_256_383_55_55_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_55_55_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_55_55_n_0),
        .O(col_out0[55]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[56]_i_1 
       (.I0(mem_reg_384_511_56_56_n_0),
        .I1(mem_reg_256_383_56_56_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_56_56_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_56_56_n_0),
        .O(col_out0[56]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[57]_i_1 
       (.I0(mem_reg_384_511_57_57_n_0),
        .I1(mem_reg_256_383_57_57_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_57_57_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_57_57_n_0),
        .O(col_out0[57]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[58]_i_1 
       (.I0(mem_reg_384_511_58_58_n_0),
        .I1(mem_reg_256_383_58_58_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_58_58_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_58_58_n_0),
        .O(col_out0[58]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[59]_i_1 
       (.I0(mem_reg_384_511_59_59_n_0),
        .I1(mem_reg_256_383_59_59_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_59_59_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_59_59_n_0),
        .O(col_out0[59]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[5]_i_1 
       (.I0(mem_reg_384_511_5_5_n_0),
        .I1(mem_reg_256_383_5_5_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_5_5_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_5_5_n_0),
        .O(col_out0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[60]_i_1 
       (.I0(mem_reg_384_511_60_60_n_0),
        .I1(mem_reg_256_383_60_60_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_60_60_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_60_60_n_0),
        .O(col_out0[60]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[61]_i_1 
       (.I0(mem_reg_384_511_61_61_n_0),
        .I1(mem_reg_256_383_61_61_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_61_61_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_61_61_n_0),
        .O(col_out0[61]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[62]_i_1 
       (.I0(mem_reg_384_511_62_62_n_0),
        .I1(mem_reg_256_383_62_62_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_62_62_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_62_62_n_0),
        .O(col_out0[62]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[63]_i_1 
       (.I0(mem_reg_384_511_63_63_n_0),
        .I1(mem_reg_256_383_63_63_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_63_63_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_63_63_n_0),
        .O(col_out0[63]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[6]_i_1 
       (.I0(mem_reg_384_511_6_6_n_0),
        .I1(mem_reg_256_383_6_6_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_6_6_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_6_6_n_0),
        .O(col_out0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[7]_i_1 
       (.I0(mem_reg_384_511_7_7_n_0),
        .I1(mem_reg_256_383_7_7_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_7_7_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_7_7_n_0),
        .O(col_out0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[8]_i_1 
       (.I0(mem_reg_384_511_8_8_n_0),
        .I1(mem_reg_256_383_8_8_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_8_8_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_8_8_n_0),
        .O(col_out0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \col_out[9]_i_1 
       (.I0(mem_reg_384_511_9_9_n_0),
        .I1(mem_reg_256_383_9_9_n_0),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_9_9_n_0),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_9_9_n_0),
        .O(col_out0[9]));
  FDRE \col_out_reg[0] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[0]),
        .Q(col_out[0]),
        .R(rst));
  FDRE \col_out_reg[10] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[10]),
        .Q(col_out[10]),
        .R(rst));
  FDRE \col_out_reg[11] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[11]),
        .Q(col_out[11]),
        .R(rst));
  FDRE \col_out_reg[12] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[12]),
        .Q(col_out[12]),
        .R(rst));
  FDRE \col_out_reg[13] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[13]),
        .Q(col_out[13]),
        .R(rst));
  FDRE \col_out_reg[14] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[14]),
        .Q(col_out[14]),
        .R(rst));
  FDRE \col_out_reg[15] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[15]),
        .Q(col_out[15]),
        .R(rst));
  FDRE \col_out_reg[16] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[16]),
        .Q(col_out[16]),
        .R(rst));
  FDRE \col_out_reg[17] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[17]),
        .Q(col_out[17]),
        .R(rst));
  FDRE \col_out_reg[18] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[18]),
        .Q(col_out[18]),
        .R(rst));
  FDRE \col_out_reg[19] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[19]),
        .Q(col_out[19]),
        .R(rst));
  FDRE \col_out_reg[1] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[1]),
        .Q(col_out[1]),
        .R(rst));
  FDRE \col_out_reg[20] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[20]),
        .Q(col_out[20]),
        .R(rst));
  FDRE \col_out_reg[21] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[21]),
        .Q(col_out[21]),
        .R(rst));
  FDRE \col_out_reg[22] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[22]),
        .Q(col_out[22]),
        .R(rst));
  FDRE \col_out_reg[23] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[23]),
        .Q(col_out[23]),
        .R(rst));
  FDRE \col_out_reg[24] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[24]),
        .Q(col_out[24]),
        .R(rst));
  FDRE \col_out_reg[25] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[25]),
        .Q(col_out[25]),
        .R(rst));
  FDRE \col_out_reg[26] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[26]),
        .Q(col_out[26]),
        .R(rst));
  FDRE \col_out_reg[27] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[27]),
        .Q(col_out[27]),
        .R(rst));
  FDRE \col_out_reg[28] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[28]),
        .Q(col_out[28]),
        .R(rst));
  FDRE \col_out_reg[29] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[29]),
        .Q(col_out[29]),
        .R(rst));
  FDRE \col_out_reg[2] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[2]),
        .Q(col_out[2]),
        .R(rst));
  FDRE \col_out_reg[30] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[30]),
        .Q(col_out[30]),
        .R(rst));
  FDRE \col_out_reg[31] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[31]),
        .Q(col_out[31]),
        .R(rst));
  FDRE \col_out_reg[32] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[32]),
        .Q(col_out[32]),
        .R(rst));
  FDRE \col_out_reg[33] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[33]),
        .Q(col_out[33]),
        .R(rst));
  FDRE \col_out_reg[34] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[34]),
        .Q(col_out[34]),
        .R(rst));
  FDRE \col_out_reg[35] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[35]),
        .Q(col_out[35]),
        .R(rst));
  FDRE \col_out_reg[36] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[36]),
        .Q(col_out[36]),
        .R(rst));
  FDRE \col_out_reg[37] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[37]),
        .Q(col_out[37]),
        .R(rst));
  FDRE \col_out_reg[38] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[38]),
        .Q(col_out[38]),
        .R(rst));
  FDRE \col_out_reg[39] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[39]),
        .Q(col_out[39]),
        .R(rst));
  FDRE \col_out_reg[3] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[3]),
        .Q(col_out[3]),
        .R(rst));
  FDRE \col_out_reg[40] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[40]),
        .Q(col_out[40]),
        .R(rst));
  FDRE \col_out_reg[41] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[41]),
        .Q(col_out[41]),
        .R(rst));
  FDRE \col_out_reg[42] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[42]),
        .Q(col_out[42]),
        .R(rst));
  FDRE \col_out_reg[43] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[43]),
        .Q(col_out[43]),
        .R(rst));
  FDRE \col_out_reg[44] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[44]),
        .Q(col_out[44]),
        .R(rst));
  FDRE \col_out_reg[45] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[45]),
        .Q(col_out[45]),
        .R(rst));
  FDRE \col_out_reg[46] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[46]),
        .Q(col_out[46]),
        .R(rst));
  FDRE \col_out_reg[47] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[47]),
        .Q(col_out[47]),
        .R(rst));
  FDRE \col_out_reg[48] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[48]),
        .Q(col_out[48]),
        .R(rst));
  FDRE \col_out_reg[49] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[49]),
        .Q(col_out[49]),
        .R(rst));
  FDRE \col_out_reg[4] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[4]),
        .Q(col_out[4]),
        .R(rst));
  FDRE \col_out_reg[50] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[50]),
        .Q(col_out[50]),
        .R(rst));
  FDRE \col_out_reg[51] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[51]),
        .Q(col_out[51]),
        .R(rst));
  FDRE \col_out_reg[52] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[52]),
        .Q(col_out[52]),
        .R(rst));
  FDRE \col_out_reg[53] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[53]),
        .Q(col_out[53]),
        .R(rst));
  FDRE \col_out_reg[54] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[54]),
        .Q(col_out[54]),
        .R(rst));
  FDRE \col_out_reg[55] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[55]),
        .Q(col_out[55]),
        .R(rst));
  FDRE \col_out_reg[56] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[56]),
        .Q(col_out[56]),
        .R(rst));
  FDRE \col_out_reg[57] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[57]),
        .Q(col_out[57]),
        .R(rst));
  FDRE \col_out_reg[58] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[58]),
        .Q(col_out[58]),
        .R(rst));
  FDRE \col_out_reg[59] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[59]),
        .Q(col_out[59]),
        .R(rst));
  FDRE \col_out_reg[5] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[5]),
        .Q(col_out[5]),
        .R(rst));
  FDRE \col_out_reg[60] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[60]),
        .Q(col_out[60]),
        .R(rst));
  FDRE \col_out_reg[61] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[61]),
        .Q(col_out[61]),
        .R(rst));
  FDRE \col_out_reg[62] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[62]),
        .Q(col_out[62]),
        .R(rst));
  FDRE \col_out_reg[63] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[63]),
        .Q(col_out[63]),
        .R(rst));
  FDRE \col_out_reg[6] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[6]),
        .Q(col_out[6]),
        .R(rst));
  FDRE \col_out_reg[7] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[7]),
        .Q(col_out[7]),
        .R(rst));
  FDRE \col_out_reg[8] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[8]),
        .Q(col_out[8]),
        .R(rst));
  FDRE \col_out_reg[9] 
       (.C(clk),
        .CE(rd_enable),
        .D(col_out0[9]),
        .Q(col_out[9]),
        .R(rst));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_0_0
       (.A(wr_addr[6:0]),
        .D(pixel_in[0]),
        .DPO(mem_reg_0_127_0_0_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_0_0_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    mem_reg_0_127_0_0_i_1
       (.I0(rst),
        .I1(rd_enable),
        .I2(rd_addr[7]),
        .I3(rd_addr[8]),
        .O(mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_10_10
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_10_10_i_1_n_0),
        .DPO(mem_reg_0_127_10_10_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_10_10_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_10_10_i_1
       (.I0(mem_reg_384_511_2_2_n_1),
        .I1(mem_reg_256_383_2_2_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_2_2_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_2_2_n_1),
        .O(mem_reg_0_127_10_10_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_11_11
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_11_11_i_1_n_0),
        .DPO(mem_reg_0_127_11_11_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_11_11_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_11_11_i_1
       (.I0(mem_reg_384_511_3_3_n_1),
        .I1(mem_reg_256_383_3_3_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_3_3_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_3_3_n_1),
        .O(mem_reg_0_127_11_11_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_12_12
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_12_12_i_1_n_0),
        .DPO(mem_reg_0_127_12_12_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_12_12_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_12_12_i_1
       (.I0(mem_reg_384_511_4_4_n_1),
        .I1(mem_reg_256_383_4_4_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_4_4_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_4_4_n_1),
        .O(mem_reg_0_127_12_12_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_13_13
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_13_13_i_1_n_0),
        .DPO(mem_reg_0_127_13_13_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_13_13_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_13_13_i_1
       (.I0(mem_reg_384_511_5_5_n_1),
        .I1(mem_reg_256_383_5_5_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_5_5_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_5_5_n_1),
        .O(mem_reg_0_127_13_13_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_14_14
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_14_14_i_1_n_0),
        .DPO(mem_reg_0_127_14_14_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_14_14_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_14_14_i_1
       (.I0(mem_reg_384_511_6_6_n_1),
        .I1(mem_reg_256_383_6_6_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_6_6_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_6_6_n_1),
        .O(mem_reg_0_127_14_14_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_15_15
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_15_15_i_1_n_0),
        .DPO(mem_reg_0_127_15_15_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_15_15_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_15_15_i_1
       (.I0(mem_reg_384_511_7_7_n_1),
        .I1(mem_reg_256_383_7_7_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_7_7_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_7_7_n_1),
        .O(mem_reg_0_127_15_15_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_16_16
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_16_16_i_1_n_0),
        .DPO(mem_reg_0_127_16_16_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_16_16_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_16_16_i_1
       (.I0(mem_reg_384_511_8_8_n_1),
        .I1(mem_reg_256_383_8_8_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_8_8_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_8_8_n_1),
        .O(mem_reg_0_127_16_16_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_17_17
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_17_17_i_1_n_0),
        .DPO(mem_reg_0_127_17_17_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_17_17_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_17_17_i_1
       (.I0(mem_reg_384_511_9_9_n_1),
        .I1(mem_reg_256_383_9_9_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_9_9_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_9_9_n_1),
        .O(mem_reg_0_127_17_17_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_18_18
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_18_18_i_1_n_0),
        .DPO(mem_reg_0_127_18_18_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_18_18_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_18_18_i_1
       (.I0(mem_reg_384_511_10_10_n_1),
        .I1(mem_reg_256_383_10_10_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_10_10_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_10_10_n_1),
        .O(mem_reg_0_127_18_18_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_19_19
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_19_19_i_1_n_0),
        .DPO(mem_reg_0_127_19_19_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_19_19_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_19_19_i_1
       (.I0(mem_reg_384_511_11_11_n_1),
        .I1(mem_reg_256_383_11_11_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_11_11_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_11_11_n_1),
        .O(mem_reg_0_127_19_19_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_1_1
       (.A(wr_addr[6:0]),
        .D(pixel_in[1]),
        .DPO(mem_reg_0_127_1_1_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_1_1_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_20_20
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_20_20_i_1_n_0),
        .DPO(mem_reg_0_127_20_20_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_20_20_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_20_20_i_1
       (.I0(mem_reg_384_511_12_12_n_1),
        .I1(mem_reg_256_383_12_12_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_12_12_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_12_12_n_1),
        .O(mem_reg_0_127_20_20_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_21_21
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_21_21_i_1_n_0),
        .DPO(mem_reg_0_127_21_21_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_21_21_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_21_21_i_1
       (.I0(mem_reg_384_511_13_13_n_1),
        .I1(mem_reg_256_383_13_13_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_13_13_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_13_13_n_1),
        .O(mem_reg_0_127_21_21_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_22_22
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_22_22_i_1_n_0),
        .DPO(mem_reg_0_127_22_22_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_22_22_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_22_22_i_1
       (.I0(mem_reg_384_511_14_14_n_1),
        .I1(mem_reg_256_383_14_14_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_14_14_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_14_14_n_1),
        .O(mem_reg_0_127_22_22_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_23_23
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_23_23_i_1_n_0),
        .DPO(mem_reg_0_127_23_23_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_23_23_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_23_23_i_1
       (.I0(mem_reg_384_511_15_15_n_1),
        .I1(mem_reg_256_383_15_15_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_15_15_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_15_15_n_1),
        .O(mem_reg_0_127_23_23_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_24_24
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_24_24_i_1_n_0),
        .DPO(mem_reg_0_127_24_24_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_24_24_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_24_24_i_1
       (.I0(mem_reg_384_511_16_16_n_1),
        .I1(mem_reg_256_383_16_16_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_16_16_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_16_16_n_1),
        .O(mem_reg_0_127_24_24_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_25_25
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_25_25_i_1_n_0),
        .DPO(mem_reg_0_127_25_25_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_25_25_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_25_25_i_1
       (.I0(mem_reg_384_511_17_17_n_1),
        .I1(mem_reg_256_383_17_17_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_17_17_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_17_17_n_1),
        .O(mem_reg_0_127_25_25_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_26_26
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_26_26_i_1_n_0),
        .DPO(mem_reg_0_127_26_26_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_26_26_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_26_26_i_1
       (.I0(mem_reg_384_511_18_18_n_1),
        .I1(mem_reg_256_383_18_18_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_18_18_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_18_18_n_1),
        .O(mem_reg_0_127_26_26_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_27_27
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_27_27_i_1_n_0),
        .DPO(mem_reg_0_127_27_27_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_27_27_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_27_27_i_1
       (.I0(mem_reg_384_511_19_19_n_1),
        .I1(mem_reg_256_383_19_19_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_19_19_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_19_19_n_1),
        .O(mem_reg_0_127_27_27_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_28_28
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_28_28_i_1_n_0),
        .DPO(mem_reg_0_127_28_28_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_28_28_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_28_28_i_1
       (.I0(mem_reg_384_511_20_20_n_1),
        .I1(mem_reg_256_383_20_20_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_20_20_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_20_20_n_1),
        .O(mem_reg_0_127_28_28_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_29_29
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_29_29_i_1_n_0),
        .DPO(mem_reg_0_127_29_29_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_29_29_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_29_29_i_1
       (.I0(mem_reg_384_511_21_21_n_1),
        .I1(mem_reg_256_383_21_21_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_21_21_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_21_21_n_1),
        .O(mem_reg_0_127_29_29_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_2_2
       (.A(wr_addr[6:0]),
        .D(pixel_in[2]),
        .DPO(mem_reg_0_127_2_2_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_2_2_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    mem_reg_0_127_2_2_i_1
       (.I0(rst),
        .I1(rd_enable),
        .I2(rd_addr[7]),
        .I3(rd_addr[8]),
        .O(mem_reg_0_127_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_30_30
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_30_30_i_1_n_0),
        .DPO(mem_reg_0_127_30_30_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_30_30_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_30_30_i_1
       (.I0(mem_reg_384_511_22_22_n_1),
        .I1(mem_reg_256_383_22_22_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_22_22_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_22_22_n_1),
        .O(mem_reg_0_127_30_30_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_31_31
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_31_31_i_1_n_0),
        .DPO(mem_reg_0_127_31_31_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_31_31_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_31_31_i_1
       (.I0(mem_reg_384_511_23_23_n_1),
        .I1(mem_reg_256_383_23_23_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_23_23_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_23_23_n_1),
        .O(mem_reg_0_127_31_31_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "32" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_32_32
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_32_32_i_1_n_0),
        .DPO(mem_reg_0_127_32_32_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_32_32_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_32_32_i_1
       (.I0(mem_reg_384_511_24_24_n_1),
        .I1(mem_reg_256_383_24_24_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_24_24_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_24_24_n_1),
        .O(mem_reg_0_127_32_32_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "33" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_33_33
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_33_33_i_1_n_0),
        .DPO(mem_reg_0_127_33_33_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_33_33_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_33_33_i_1
       (.I0(mem_reg_384_511_25_25_n_1),
        .I1(mem_reg_256_383_25_25_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_25_25_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_25_25_n_1),
        .O(mem_reg_0_127_33_33_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "34" *) 
  (* ram_slice_end = "34" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_34_34
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_34_34_i_1_n_0),
        .DPO(mem_reg_0_127_34_34_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_34_34_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_34_34_i_1
       (.I0(mem_reg_384_511_26_26_n_1),
        .I1(mem_reg_256_383_26_26_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_26_26_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_26_26_n_1),
        .O(mem_reg_0_127_34_34_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "35" *) 
  (* ram_slice_end = "35" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_35_35
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_35_35_i_1_n_0),
        .DPO(mem_reg_0_127_35_35_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_35_35_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_35_35_i_1
       (.I0(mem_reg_384_511_27_27_n_1),
        .I1(mem_reg_256_383_27_27_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_27_27_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_27_27_n_1),
        .O(mem_reg_0_127_35_35_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "36" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_36_36
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_36_36_i_1_n_0),
        .DPO(mem_reg_0_127_36_36_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_36_36_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_36_36_i_1
       (.I0(mem_reg_384_511_28_28_n_1),
        .I1(mem_reg_256_383_28_28_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_28_28_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_28_28_n_1),
        .O(mem_reg_0_127_36_36_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "37" *) 
  (* ram_slice_end = "37" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_37_37
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_37_37_i_1_n_0),
        .DPO(mem_reg_0_127_37_37_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_37_37_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_37_37_i_1
       (.I0(mem_reg_384_511_29_29_n_1),
        .I1(mem_reg_256_383_29_29_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_29_29_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_29_29_n_1),
        .O(mem_reg_0_127_37_37_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "38" *) 
  (* ram_slice_end = "38" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_38_38
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_38_38_i_1_n_0),
        .DPO(mem_reg_0_127_38_38_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_38_38_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_38_38_i_1
       (.I0(mem_reg_384_511_30_30_n_1),
        .I1(mem_reg_256_383_30_30_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_30_30_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_30_30_n_1),
        .O(mem_reg_0_127_38_38_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "39" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_39_39
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_39_39_i_1_n_0),
        .DPO(mem_reg_0_127_39_39_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_39_39_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_39_39_i_1
       (.I0(mem_reg_384_511_31_31_n_1),
        .I1(mem_reg_256_383_31_31_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_31_31_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_31_31_n_1),
        .O(mem_reg_0_127_39_39_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_3_3
       (.A(wr_addr[6:0]),
        .D(pixel_in[3]),
        .DPO(mem_reg_0_127_3_3_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_3_3_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "40" *) 
  (* ram_slice_end = "40" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_40_40
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_40_40_i_1_n_0),
        .DPO(mem_reg_0_127_40_40_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_40_40_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_40_40_i_1
       (.I0(mem_reg_384_511_32_32_n_1),
        .I1(mem_reg_256_383_32_32_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_32_32_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_32_32_n_1),
        .O(mem_reg_0_127_40_40_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "41" *) 
  (* ram_slice_end = "41" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_41_41
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_41_41_i_1_n_0),
        .DPO(mem_reg_0_127_41_41_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_41_41_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_41_41_i_1
       (.I0(mem_reg_384_511_33_33_n_1),
        .I1(mem_reg_256_383_33_33_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_33_33_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_33_33_n_1),
        .O(mem_reg_0_127_41_41_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "42" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_42_42
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_42_42_i_1_n_0),
        .DPO(mem_reg_0_127_42_42_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_42_42_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_42_42_i_1
       (.I0(mem_reg_384_511_34_34_n_1),
        .I1(mem_reg_256_383_34_34_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_34_34_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_34_34_n_1),
        .O(mem_reg_0_127_42_42_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "43" *) 
  (* ram_slice_end = "43" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_43_43
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_43_43_i_1_n_0),
        .DPO(mem_reg_0_127_43_43_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_43_43_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_43_43_i_1
       (.I0(mem_reg_384_511_35_35_n_1),
        .I1(mem_reg_256_383_35_35_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_35_35_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_35_35_n_1),
        .O(mem_reg_0_127_43_43_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "44" *) 
  (* ram_slice_end = "44" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_44_44
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_44_44_i_1_n_0),
        .DPO(mem_reg_0_127_44_44_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_44_44_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_44_44_i_1
       (.I0(mem_reg_384_511_36_36_n_1),
        .I1(mem_reg_256_383_36_36_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_36_36_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_36_36_n_1),
        .O(mem_reg_0_127_44_44_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "45" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_45_45
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_45_45_i_1_n_0),
        .DPO(mem_reg_0_127_45_45_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_45_45_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_45_45_i_1
       (.I0(mem_reg_384_511_37_37_n_1),
        .I1(mem_reg_256_383_37_37_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_37_37_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_37_37_n_1),
        .O(mem_reg_0_127_45_45_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "46" *) 
  (* ram_slice_end = "46" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_46_46
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_46_46_i_1_n_0),
        .DPO(mem_reg_0_127_46_46_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_46_46_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_46_46_i_1
       (.I0(mem_reg_384_511_38_38_n_1),
        .I1(mem_reg_256_383_38_38_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_38_38_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_38_38_n_1),
        .O(mem_reg_0_127_46_46_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "47" *) 
  (* ram_slice_end = "47" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_47_47
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_47_47_i_1_n_0),
        .DPO(mem_reg_0_127_47_47_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_47_47_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_47_47_i_1
       (.I0(mem_reg_384_511_39_39_n_1),
        .I1(mem_reg_256_383_39_39_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_39_39_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_39_39_n_1),
        .O(mem_reg_0_127_47_47_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "48" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_48_48
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_48_48_i_1_n_0),
        .DPO(mem_reg_0_127_48_48_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_48_48_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_48_48_i_1
       (.I0(mem_reg_384_511_40_40_n_1),
        .I1(mem_reg_256_383_40_40_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_40_40_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_40_40_n_1),
        .O(mem_reg_0_127_48_48_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "49" *) 
  (* ram_slice_end = "49" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_49_49
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_49_49_i_1_n_0),
        .DPO(mem_reg_0_127_49_49_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_49_49_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_49_49_i_1
       (.I0(mem_reg_384_511_41_41_n_1),
        .I1(mem_reg_256_383_41_41_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_41_41_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_41_41_n_1),
        .O(mem_reg_0_127_49_49_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_4_4
       (.A(wr_addr[6:0]),
        .D(pixel_in[4]),
        .DPO(mem_reg_0_127_4_4_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_4_4_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "50" *) 
  (* ram_slice_end = "50" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_50_50
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_50_50_i_1_n_0),
        .DPO(mem_reg_0_127_50_50_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_50_50_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_50_50_i_1
       (.I0(mem_reg_384_511_42_42_n_1),
        .I1(mem_reg_256_383_42_42_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_42_42_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_42_42_n_1),
        .O(mem_reg_0_127_50_50_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "51" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_51_51
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_51_51_i_1_n_0),
        .DPO(mem_reg_0_127_51_51_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_51_51_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_51_51_i_1
       (.I0(mem_reg_384_511_43_43_n_1),
        .I1(mem_reg_256_383_43_43_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_43_43_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_43_43_n_1),
        .O(mem_reg_0_127_51_51_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "52" *) 
  (* ram_slice_end = "52" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_52_52
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_52_52_i_1_n_0),
        .DPO(mem_reg_0_127_52_52_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_52_52_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_52_52_i_1
       (.I0(mem_reg_384_511_44_44_n_1),
        .I1(mem_reg_256_383_44_44_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_44_44_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_44_44_n_1),
        .O(mem_reg_0_127_52_52_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "53" *) 
  (* ram_slice_end = "53" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_53_53
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_53_53_i_1_n_0),
        .DPO(mem_reg_0_127_53_53_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_53_53_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_53_53_i_1
       (.I0(mem_reg_384_511_45_45_n_1),
        .I1(mem_reg_256_383_45_45_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_45_45_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_45_45_n_1),
        .O(mem_reg_0_127_53_53_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "54" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_54_54
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_54_54_i_1_n_0),
        .DPO(mem_reg_0_127_54_54_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_54_54_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_54_54_i_1
       (.I0(mem_reg_384_511_46_46_n_1),
        .I1(mem_reg_256_383_46_46_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_46_46_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_46_46_n_1),
        .O(mem_reg_0_127_54_54_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "55" *) 
  (* ram_slice_end = "55" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_55_55
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_55_55_i_1_n_0),
        .DPO(mem_reg_0_127_55_55_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_55_55_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_55_55_i_1
       (.I0(mem_reg_384_511_47_47_n_1),
        .I1(mem_reg_256_383_47_47_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_47_47_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_47_47_n_1),
        .O(mem_reg_0_127_55_55_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "56" *) 
  (* ram_slice_end = "56" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_56_56
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_56_56_i_1_n_0),
        .DPO(mem_reg_0_127_56_56_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_56_56_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_56_56_i_1
       (.I0(mem_reg_384_511_48_48_n_1),
        .I1(mem_reg_256_383_48_48_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_48_48_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_48_48_n_1),
        .O(mem_reg_0_127_56_56_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "57" *) 
  (* ram_slice_end = "57" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_57_57
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_57_57_i_1_n_0),
        .DPO(mem_reg_0_127_57_57_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_57_57_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_57_57_i_1
       (.I0(mem_reg_384_511_49_49_n_1),
        .I1(mem_reg_256_383_49_49_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_49_49_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_49_49_n_1),
        .O(mem_reg_0_127_57_57_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "58" *) 
  (* ram_slice_end = "58" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_58_58
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_58_58_i_1_n_0),
        .DPO(mem_reg_0_127_58_58_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_58_58_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_58_58_i_1
       (.I0(mem_reg_384_511_50_50_n_1),
        .I1(mem_reg_256_383_50_50_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_50_50_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_50_50_n_1),
        .O(mem_reg_0_127_58_58_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "59" *) 
  (* ram_slice_end = "59" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_59_59
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_59_59_i_1_n_0),
        .DPO(mem_reg_0_127_59_59_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_59_59_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_59_59_i_1
       (.I0(mem_reg_384_511_51_51_n_1),
        .I1(mem_reg_256_383_51_51_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_51_51_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_51_51_n_1),
        .O(mem_reg_0_127_59_59_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_5_5
       (.A(wr_addr[6:0]),
        .D(pixel_in[5]),
        .DPO(mem_reg_0_127_5_5_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_5_5_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "60" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_60_60
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_60_60_i_1_n_0),
        .DPO(mem_reg_0_127_60_60_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_60_60_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_60_60_i_1
       (.I0(mem_reg_384_511_52_52_n_1),
        .I1(mem_reg_256_383_52_52_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_52_52_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_52_52_n_1),
        .O(mem_reg_0_127_60_60_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "61" *) 
  (* ram_slice_end = "61" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_61_61
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_61_61_i_1_n_0),
        .DPO(mem_reg_0_127_61_61_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_61_61_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_61_61_i_1
       (.I0(mem_reg_384_511_53_53_n_1),
        .I1(mem_reg_256_383_53_53_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_53_53_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_53_53_n_1),
        .O(mem_reg_0_127_61_61_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "62" *) 
  (* ram_slice_end = "62" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_62_62
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_62_62_i_1_n_0),
        .DPO(mem_reg_0_127_62_62_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_62_62_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_62_62_i_1
       (.I0(mem_reg_384_511_54_54_n_1),
        .I1(mem_reg_256_383_54_54_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_54_54_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_54_54_n_1),
        .O(mem_reg_0_127_62_62_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "63" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_63_63
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_63_63_i_1_n_0),
        .DPO(mem_reg_0_127_63_63_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_63_63_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_63_63_i_1
       (.I0(mem_reg_384_511_55_55_n_1),
        .I1(mem_reg_256_383_55_55_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_55_55_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_55_55_n_1),
        .O(mem_reg_0_127_63_63_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_6_6
       (.A(wr_addr[6:0]),
        .D(pixel_in[6]),
        .DPO(mem_reg_0_127_6_6_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_6_6_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_7_7
       (.A(wr_addr[6:0]),
        .D(pixel_in[7]),
        .DPO(mem_reg_0_127_7_7_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_7_7_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_8_8
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_8_8_i_1_n_0),
        .DPO(mem_reg_0_127_8_8_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_8_8_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_8_8_i_1
       (.I0(mem_reg_384_511_0_0_n_1),
        .I1(mem_reg_256_383_0_0_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_0_0_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_0_0_n_1),
        .O(mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_0_127_9_9
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_9_9_i_1_n_0),
        .DPO(mem_reg_0_127_9_9_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_0_127_9_9_n_1),
        .WCLK(clk),
        .WE(mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mem_reg_0_127_9_9_i_1
       (.I0(mem_reg_384_511_1_1_n_1),
        .I1(mem_reg_256_383_1_1_n_1),
        .I2(rd_addr[8]),
        .I3(mem_reg_128_255_1_1_n_1),
        .I4(rd_addr[7]),
        .I5(mem_reg_0_127_1_1_n_1),
        .O(mem_reg_0_127_9_9_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_0_0
       (.A(wr_addr[6:0]),
        .D(pixel_in[0]),
        .DPO(mem_reg_128_255_0_0_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_0_0_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    mem_reg_128_255_0_0_i_1
       (.I0(rd_addr[8]),
        .I1(rd_addr[7]),
        .I2(rd_enable),
        .I3(rst),
        .O(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_10_10
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_10_10_i_1_n_0),
        .DPO(mem_reg_128_255_10_10_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_10_10_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_11_11
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_11_11_i_1_n_0),
        .DPO(mem_reg_128_255_11_11_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_11_11_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_12_12
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_12_12_i_1_n_0),
        .DPO(mem_reg_128_255_12_12_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_12_12_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_13_13
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_13_13_i_1_n_0),
        .DPO(mem_reg_128_255_13_13_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_13_13_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_14_14
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_14_14_i_1_n_0),
        .DPO(mem_reg_128_255_14_14_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_14_14_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_15_15
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_15_15_i_1_n_0),
        .DPO(mem_reg_128_255_15_15_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_15_15_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_16_16
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_16_16_i_1_n_0),
        .DPO(mem_reg_128_255_16_16_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_16_16_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_17_17
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_17_17_i_1_n_0),
        .DPO(mem_reg_128_255_17_17_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_17_17_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_18_18
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_18_18_i_1_n_0),
        .DPO(mem_reg_128_255_18_18_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_18_18_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_19_19
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_19_19_i_1_n_0),
        .DPO(mem_reg_128_255_19_19_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_19_19_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_1_1
       (.A(wr_addr[6:0]),
        .D(pixel_in[1]),
        .DPO(mem_reg_128_255_1_1_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_1_1_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_20_20
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_20_20_i_1_n_0),
        .DPO(mem_reg_128_255_20_20_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_20_20_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_21_21
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_21_21_i_1_n_0),
        .DPO(mem_reg_128_255_21_21_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_21_21_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_22_22
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_22_22_i_1_n_0),
        .DPO(mem_reg_128_255_22_22_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_22_22_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_23_23
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_23_23_i_1_n_0),
        .DPO(mem_reg_128_255_23_23_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_23_23_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_24_24
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_24_24_i_1_n_0),
        .DPO(mem_reg_128_255_24_24_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_24_24_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_25_25
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_25_25_i_1_n_0),
        .DPO(mem_reg_128_255_25_25_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_25_25_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_26_26
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_26_26_i_1_n_0),
        .DPO(mem_reg_128_255_26_26_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_26_26_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_27_27
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_27_27_i_1_n_0),
        .DPO(mem_reg_128_255_27_27_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_27_27_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_28_28
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_28_28_i_1_n_0),
        .DPO(mem_reg_128_255_28_28_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_28_28_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_29_29
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_29_29_i_1_n_0),
        .DPO(mem_reg_128_255_29_29_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_29_29_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_2_2
       (.A(wr_addr[6:0]),
        .D(pixel_in[2]),
        .DPO(mem_reg_128_255_2_2_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_2_2_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_30_30
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_30_30_i_1_n_0),
        .DPO(mem_reg_128_255_30_30_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_30_30_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_31_31
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_31_31_i_1_n_0),
        .DPO(mem_reg_128_255_31_31_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_31_31_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "32" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_32_32
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_32_32_i_1_n_0),
        .DPO(mem_reg_128_255_32_32_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_32_32_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "33" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_33_33
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_33_33_i_1_n_0),
        .DPO(mem_reg_128_255_33_33_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_33_33_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "34" *) 
  (* ram_slice_end = "34" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_34_34
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_34_34_i_1_n_0),
        .DPO(mem_reg_128_255_34_34_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_34_34_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "35" *) 
  (* ram_slice_end = "35" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_35_35
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_35_35_i_1_n_0),
        .DPO(mem_reg_128_255_35_35_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_35_35_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "36" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_36_36
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_36_36_i_1_n_0),
        .DPO(mem_reg_128_255_36_36_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_36_36_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "37" *) 
  (* ram_slice_end = "37" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_37_37
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_37_37_i_1_n_0),
        .DPO(mem_reg_128_255_37_37_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_37_37_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "38" *) 
  (* ram_slice_end = "38" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_38_38
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_38_38_i_1_n_0),
        .DPO(mem_reg_128_255_38_38_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_38_38_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "39" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_39_39
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_39_39_i_1_n_0),
        .DPO(mem_reg_128_255_39_39_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_39_39_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_3_3
       (.A(wr_addr[6:0]),
        .D(pixel_in[3]),
        .DPO(mem_reg_128_255_3_3_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_3_3_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "40" *) 
  (* ram_slice_end = "40" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_40_40
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_40_40_i_1_n_0),
        .DPO(mem_reg_128_255_40_40_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_40_40_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "41" *) 
  (* ram_slice_end = "41" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_41_41
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_41_41_i_1_n_0),
        .DPO(mem_reg_128_255_41_41_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_41_41_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "42" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_42_42
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_42_42_i_1_n_0),
        .DPO(mem_reg_128_255_42_42_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_42_42_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "43" *) 
  (* ram_slice_end = "43" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_43_43
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_43_43_i_1_n_0),
        .DPO(mem_reg_128_255_43_43_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_43_43_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "44" *) 
  (* ram_slice_end = "44" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_44_44
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_44_44_i_1_n_0),
        .DPO(mem_reg_128_255_44_44_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_44_44_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "45" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_45_45
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_45_45_i_1_n_0),
        .DPO(mem_reg_128_255_45_45_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_45_45_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "46" *) 
  (* ram_slice_end = "46" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_46_46
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_46_46_i_1_n_0),
        .DPO(mem_reg_128_255_46_46_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_46_46_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "47" *) 
  (* ram_slice_end = "47" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_47_47
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_47_47_i_1_n_0),
        .DPO(mem_reg_128_255_47_47_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_47_47_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "48" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_48_48
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_48_48_i_1_n_0),
        .DPO(mem_reg_128_255_48_48_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_48_48_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "49" *) 
  (* ram_slice_end = "49" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_49_49
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_49_49_i_1_n_0),
        .DPO(mem_reg_128_255_49_49_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_49_49_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_4_4
       (.A(wr_addr[6:0]),
        .D(pixel_in[4]),
        .DPO(mem_reg_128_255_4_4_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_4_4_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "50" *) 
  (* ram_slice_end = "50" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_50_50
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_50_50_i_1_n_0),
        .DPO(mem_reg_128_255_50_50_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_50_50_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "51" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_51_51
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_51_51_i_1_n_0),
        .DPO(mem_reg_128_255_51_51_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_51_51_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "52" *) 
  (* ram_slice_end = "52" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_52_52
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_52_52_i_1_n_0),
        .DPO(mem_reg_128_255_52_52_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_52_52_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "53" *) 
  (* ram_slice_end = "53" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_53_53
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_53_53_i_1_n_0),
        .DPO(mem_reg_128_255_53_53_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_53_53_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "54" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_54_54
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_54_54_i_1_n_0),
        .DPO(mem_reg_128_255_54_54_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_54_54_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "55" *) 
  (* ram_slice_end = "55" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_55_55
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_55_55_i_1_n_0),
        .DPO(mem_reg_128_255_55_55_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_55_55_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "56" *) 
  (* ram_slice_end = "56" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_56_56
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_56_56_i_1_n_0),
        .DPO(mem_reg_128_255_56_56_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_56_56_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "57" *) 
  (* ram_slice_end = "57" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_57_57
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_57_57_i_1_n_0),
        .DPO(mem_reg_128_255_57_57_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_57_57_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "58" *) 
  (* ram_slice_end = "58" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_58_58
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_58_58_i_1_n_0),
        .DPO(mem_reg_128_255_58_58_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_58_58_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "59" *) 
  (* ram_slice_end = "59" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_59_59
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_59_59_i_1_n_0),
        .DPO(mem_reg_128_255_59_59_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_59_59_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_5_5
       (.A(wr_addr[6:0]),
        .D(pixel_in[5]),
        .DPO(mem_reg_128_255_5_5_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_5_5_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "60" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_60_60
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_60_60_i_1_n_0),
        .DPO(mem_reg_128_255_60_60_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_60_60_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "61" *) 
  (* ram_slice_end = "61" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_61_61
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_61_61_i_1_n_0),
        .DPO(mem_reg_128_255_61_61_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_61_61_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "62" *) 
  (* ram_slice_end = "62" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_62_62
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_62_62_i_1_n_0),
        .DPO(mem_reg_128_255_62_62_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_62_62_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "63" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_63_63
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_63_63_i_1_n_0),
        .DPO(mem_reg_128_255_63_63_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_63_63_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_6_6
       (.A(wr_addr[6:0]),
        .D(pixel_in[6]),
        .DPO(mem_reg_128_255_6_6_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_6_6_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    mem_reg_128_255_6_6_i_1
       (.I0(rd_addr[8]),
        .I1(rd_addr[7]),
        .I2(rd_enable),
        .I3(rst),
        .O(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_7_7
       (.A(wr_addr[6:0]),
        .D(pixel_in[7]),
        .DPO(mem_reg_128_255_7_7_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_7_7_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_8_8
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_8_8_i_1_n_0),
        .DPO(mem_reg_128_255_8_8_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_8_8_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_128_255_9_9
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_9_9_i_1_n_0),
        .DPO(mem_reg_128_255_9_9_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_128_255_9_9_n_1),
        .WCLK(clk),
        .WE(mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_0_0
       (.A(wr_addr[6:0]),
        .D(pixel_in[0]),
        .DPO(mem_reg_256_383_0_0_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_0_0_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    mem_reg_256_383_0_0_i_1
       (.I0(rd_addr[7]),
        .I1(rd_addr[8]),
        .I2(rd_enable),
        .I3(rst),
        .O(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_10_10
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_10_10_i_1_n_0),
        .DPO(mem_reg_256_383_10_10_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_10_10_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_11_11
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_11_11_i_1_n_0),
        .DPO(mem_reg_256_383_11_11_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_11_11_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_12_12
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_12_12_i_1_n_0),
        .DPO(mem_reg_256_383_12_12_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_12_12_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_13_13
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_13_13_i_1_n_0),
        .DPO(mem_reg_256_383_13_13_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_13_13_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_14_14
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_14_14_i_1_n_0),
        .DPO(mem_reg_256_383_14_14_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_14_14_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_15_15
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_15_15_i_1_n_0),
        .DPO(mem_reg_256_383_15_15_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_15_15_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_16_16
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_16_16_i_1_n_0),
        .DPO(mem_reg_256_383_16_16_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_16_16_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_17_17
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_17_17_i_1_n_0),
        .DPO(mem_reg_256_383_17_17_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_17_17_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_18_18
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_18_18_i_1_n_0),
        .DPO(mem_reg_256_383_18_18_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_18_18_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_19_19
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_19_19_i_1_n_0),
        .DPO(mem_reg_256_383_19_19_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_19_19_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_1_1
       (.A(wr_addr[6:0]),
        .D(pixel_in[1]),
        .DPO(mem_reg_256_383_1_1_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_1_1_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_20_20
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_20_20_i_1_n_0),
        .DPO(mem_reg_256_383_20_20_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_20_20_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_21_21
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_21_21_i_1_n_0),
        .DPO(mem_reg_256_383_21_21_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_21_21_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_22_22
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_22_22_i_1_n_0),
        .DPO(mem_reg_256_383_22_22_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_22_22_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_23_23
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_23_23_i_1_n_0),
        .DPO(mem_reg_256_383_23_23_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_23_23_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_24_24
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_24_24_i_1_n_0),
        .DPO(mem_reg_256_383_24_24_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_24_24_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_25_25
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_25_25_i_1_n_0),
        .DPO(mem_reg_256_383_25_25_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_25_25_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_26_26
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_26_26_i_1_n_0),
        .DPO(mem_reg_256_383_26_26_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_26_26_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_27_27
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_27_27_i_1_n_0),
        .DPO(mem_reg_256_383_27_27_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_27_27_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_28_28
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_28_28_i_1_n_0),
        .DPO(mem_reg_256_383_28_28_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_28_28_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_29_29
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_29_29_i_1_n_0),
        .DPO(mem_reg_256_383_29_29_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_29_29_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_2_2
       (.A(wr_addr[6:0]),
        .D(pixel_in[2]),
        .DPO(mem_reg_256_383_2_2_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_2_2_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_30_30
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_30_30_i_1_n_0),
        .DPO(mem_reg_256_383_30_30_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_30_30_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_31_31
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_31_31_i_1_n_0),
        .DPO(mem_reg_256_383_31_31_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_31_31_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "32" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_32_32
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_32_32_i_1_n_0),
        .DPO(mem_reg_256_383_32_32_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_32_32_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "33" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_33_33
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_33_33_i_1_n_0),
        .DPO(mem_reg_256_383_33_33_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_33_33_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "34" *) 
  (* ram_slice_end = "34" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_34_34
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_34_34_i_1_n_0),
        .DPO(mem_reg_256_383_34_34_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_34_34_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "35" *) 
  (* ram_slice_end = "35" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_35_35
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_35_35_i_1_n_0),
        .DPO(mem_reg_256_383_35_35_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_35_35_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "36" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_36_36
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_36_36_i_1_n_0),
        .DPO(mem_reg_256_383_36_36_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_36_36_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "37" *) 
  (* ram_slice_end = "37" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_37_37
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_37_37_i_1_n_0),
        .DPO(mem_reg_256_383_37_37_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_37_37_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "38" *) 
  (* ram_slice_end = "38" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_38_38
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_38_38_i_1_n_0),
        .DPO(mem_reg_256_383_38_38_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_38_38_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "39" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_39_39
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_39_39_i_1_n_0),
        .DPO(mem_reg_256_383_39_39_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_39_39_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_3_3
       (.A(wr_addr[6:0]),
        .D(pixel_in[3]),
        .DPO(mem_reg_256_383_3_3_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_3_3_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "40" *) 
  (* ram_slice_end = "40" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_40_40
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_40_40_i_1_n_0),
        .DPO(mem_reg_256_383_40_40_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_40_40_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "41" *) 
  (* ram_slice_end = "41" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_41_41
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_41_41_i_1_n_0),
        .DPO(mem_reg_256_383_41_41_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_41_41_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "42" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_42_42
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_42_42_i_1_n_0),
        .DPO(mem_reg_256_383_42_42_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_42_42_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "43" *) 
  (* ram_slice_end = "43" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_43_43
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_43_43_i_1_n_0),
        .DPO(mem_reg_256_383_43_43_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_43_43_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "44" *) 
  (* ram_slice_end = "44" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_44_44
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_44_44_i_1_n_0),
        .DPO(mem_reg_256_383_44_44_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_44_44_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "45" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_45_45
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_45_45_i_1_n_0),
        .DPO(mem_reg_256_383_45_45_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_45_45_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "46" *) 
  (* ram_slice_end = "46" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_46_46
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_46_46_i_1_n_0),
        .DPO(mem_reg_256_383_46_46_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_46_46_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "47" *) 
  (* ram_slice_end = "47" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_47_47
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_47_47_i_1_n_0),
        .DPO(mem_reg_256_383_47_47_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_47_47_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "48" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_48_48
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_48_48_i_1_n_0),
        .DPO(mem_reg_256_383_48_48_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_48_48_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "49" *) 
  (* ram_slice_end = "49" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_49_49
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_49_49_i_1_n_0),
        .DPO(mem_reg_256_383_49_49_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_49_49_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_4_4
       (.A(wr_addr[6:0]),
        .D(pixel_in[4]),
        .DPO(mem_reg_256_383_4_4_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_4_4_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "50" *) 
  (* ram_slice_end = "50" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_50_50
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_50_50_i_1_n_0),
        .DPO(mem_reg_256_383_50_50_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_50_50_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "51" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_51_51
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_51_51_i_1_n_0),
        .DPO(mem_reg_256_383_51_51_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_51_51_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "52" *) 
  (* ram_slice_end = "52" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_52_52
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_52_52_i_1_n_0),
        .DPO(mem_reg_256_383_52_52_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_52_52_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "53" *) 
  (* ram_slice_end = "53" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_53_53
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_53_53_i_1_n_0),
        .DPO(mem_reg_256_383_53_53_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_53_53_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "54" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_54_54
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_54_54_i_1_n_0),
        .DPO(mem_reg_256_383_54_54_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_54_54_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "55" *) 
  (* ram_slice_end = "55" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_55_55
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_55_55_i_1_n_0),
        .DPO(mem_reg_256_383_55_55_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_55_55_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "56" *) 
  (* ram_slice_end = "56" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_56_56
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_56_56_i_1_n_0),
        .DPO(mem_reg_256_383_56_56_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_56_56_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "57" *) 
  (* ram_slice_end = "57" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_57_57
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_57_57_i_1_n_0),
        .DPO(mem_reg_256_383_57_57_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_57_57_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "58" *) 
  (* ram_slice_end = "58" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_58_58
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_58_58_i_1_n_0),
        .DPO(mem_reg_256_383_58_58_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_58_58_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "59" *) 
  (* ram_slice_end = "59" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_59_59
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_59_59_i_1_n_0),
        .DPO(mem_reg_256_383_59_59_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_59_59_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_5_5
       (.A(wr_addr[6:0]),
        .D(pixel_in[5]),
        .DPO(mem_reg_256_383_5_5_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_5_5_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "60" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_60_60
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_60_60_i_1_n_0),
        .DPO(mem_reg_256_383_60_60_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_60_60_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "61" *) 
  (* ram_slice_end = "61" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_61_61
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_61_61_i_1_n_0),
        .DPO(mem_reg_256_383_61_61_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_61_61_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "62" *) 
  (* ram_slice_end = "62" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_62_62
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_62_62_i_1_n_0),
        .DPO(mem_reg_256_383_62_62_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_62_62_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "63" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_63_63
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_63_63_i_1_n_0),
        .DPO(mem_reg_256_383_63_63_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_63_63_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_6_6
       (.A(wr_addr[6:0]),
        .D(pixel_in[6]),
        .DPO(mem_reg_256_383_6_6_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_6_6_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    mem_reg_256_383_6_6_i_1
       (.I0(rd_addr[7]),
        .I1(rd_addr[8]),
        .I2(rd_enable),
        .I3(rst),
        .O(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_7_7
       (.A(wr_addr[6:0]),
        .D(pixel_in[7]),
        .DPO(mem_reg_256_383_7_7_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_7_7_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_6_6_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_8_8
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_8_8_i_1_n_0),
        .DPO(mem_reg_256_383_8_8_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_8_8_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_256_383_9_9
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_9_9_i_1_n_0),
        .DPO(mem_reg_256_383_9_9_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_256_383_9_9_n_1),
        .WCLK(clk),
        .WE(mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_0_0
       (.A(wr_addr[6:0]),
        .D(pixel_in[0]),
        .DPO(mem_reg_384_511_0_0_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_0_0_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    mem_reg_384_511_0_0_i_1
       (.I0(rst),
        .I1(rd_enable),
        .I2(rd_addr[7]),
        .I3(rd_addr[8]),
        .O(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_10_10
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_10_10_i_1_n_0),
        .DPO(mem_reg_384_511_10_10_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_10_10_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_11_11
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_11_11_i_1_n_0),
        .DPO(mem_reg_384_511_11_11_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_11_11_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_12_12
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_12_12_i_1_n_0),
        .DPO(mem_reg_384_511_12_12_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_12_12_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_13_13
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_13_13_i_1_n_0),
        .DPO(mem_reg_384_511_13_13_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_13_13_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_14_14
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_14_14_i_1_n_0),
        .DPO(mem_reg_384_511_14_14_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_14_14_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_15_15
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_15_15_i_1_n_0),
        .DPO(mem_reg_384_511_15_15_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_15_15_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_16_16
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_16_16_i_1_n_0),
        .DPO(mem_reg_384_511_16_16_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_16_16_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_17_17
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_17_17_i_1_n_0),
        .DPO(mem_reg_384_511_17_17_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_17_17_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_18_18
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_18_18_i_1_n_0),
        .DPO(mem_reg_384_511_18_18_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_18_18_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_19_19
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_19_19_i_1_n_0),
        .DPO(mem_reg_384_511_19_19_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_19_19_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_1_1
       (.A(wr_addr[6:0]),
        .D(pixel_in[1]),
        .DPO(mem_reg_384_511_1_1_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_1_1_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_20_20
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_20_20_i_1_n_0),
        .DPO(mem_reg_384_511_20_20_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_20_20_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_21_21
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_21_21_i_1_n_0),
        .DPO(mem_reg_384_511_21_21_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_21_21_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_22_22
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_22_22_i_1_n_0),
        .DPO(mem_reg_384_511_22_22_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_22_22_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_23_23
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_23_23_i_1_n_0),
        .DPO(mem_reg_384_511_23_23_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_23_23_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_24_24
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_24_24_i_1_n_0),
        .DPO(mem_reg_384_511_24_24_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_24_24_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_25_25
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_25_25_i_1_n_0),
        .DPO(mem_reg_384_511_25_25_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_25_25_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_26_26
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_26_26_i_1_n_0),
        .DPO(mem_reg_384_511_26_26_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_26_26_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_27_27
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_27_27_i_1_n_0),
        .DPO(mem_reg_384_511_27_27_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_27_27_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_28_28
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_28_28_i_1_n_0),
        .DPO(mem_reg_384_511_28_28_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_28_28_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_29_29
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_29_29_i_1_n_0),
        .DPO(mem_reg_384_511_29_29_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_29_29_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_2_2
       (.A(wr_addr[6:0]),
        .D(pixel_in[2]),
        .DPO(mem_reg_384_511_2_2_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_2_2_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    mem_reg_384_511_2_2_i_1
       (.I0(rst),
        .I1(rd_enable),
        .I2(rd_addr[7]),
        .I3(rd_addr[8]),
        .O(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_30_30
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_30_30_i_1_n_0),
        .DPO(mem_reg_384_511_30_30_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_30_30_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_31_31
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_31_31_i_1_n_0),
        .DPO(mem_reg_384_511_31_31_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_31_31_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "32" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_32_32
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_32_32_i_1_n_0),
        .DPO(mem_reg_384_511_32_32_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_32_32_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "33" *) 
  (* ram_slice_end = "33" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_33_33
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_33_33_i_1_n_0),
        .DPO(mem_reg_384_511_33_33_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_33_33_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "34" *) 
  (* ram_slice_end = "34" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_34_34
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_34_34_i_1_n_0),
        .DPO(mem_reg_384_511_34_34_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_34_34_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "35" *) 
  (* ram_slice_end = "35" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_35_35
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_35_35_i_1_n_0),
        .DPO(mem_reg_384_511_35_35_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_35_35_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "36" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_36_36
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_36_36_i_1_n_0),
        .DPO(mem_reg_384_511_36_36_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_36_36_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "37" *) 
  (* ram_slice_end = "37" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_37_37
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_37_37_i_1_n_0),
        .DPO(mem_reg_384_511_37_37_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_37_37_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "38" *) 
  (* ram_slice_end = "38" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_38_38
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_38_38_i_1_n_0),
        .DPO(mem_reg_384_511_38_38_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_38_38_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "39" *) 
  (* ram_slice_end = "39" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_39_39
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_39_39_i_1_n_0),
        .DPO(mem_reg_384_511_39_39_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_39_39_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_3_3
       (.A(wr_addr[6:0]),
        .D(pixel_in[3]),
        .DPO(mem_reg_384_511_3_3_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_3_3_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "40" *) 
  (* ram_slice_end = "40" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_40_40
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_40_40_i_1_n_0),
        .DPO(mem_reg_384_511_40_40_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_40_40_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "41" *) 
  (* ram_slice_end = "41" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_41_41
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_41_41_i_1_n_0),
        .DPO(mem_reg_384_511_41_41_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_41_41_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "42" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_42_42
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_42_42_i_1_n_0),
        .DPO(mem_reg_384_511_42_42_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_42_42_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "43" *) 
  (* ram_slice_end = "43" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_43_43
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_43_43_i_1_n_0),
        .DPO(mem_reg_384_511_43_43_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_43_43_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "44" *) 
  (* ram_slice_end = "44" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_44_44
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_44_44_i_1_n_0),
        .DPO(mem_reg_384_511_44_44_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_44_44_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "45" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_45_45
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_45_45_i_1_n_0),
        .DPO(mem_reg_384_511_45_45_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_45_45_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "46" *) 
  (* ram_slice_end = "46" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_46_46
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_46_46_i_1_n_0),
        .DPO(mem_reg_384_511_46_46_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_46_46_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "47" *) 
  (* ram_slice_end = "47" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_47_47
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_47_47_i_1_n_0),
        .DPO(mem_reg_384_511_47_47_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_47_47_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "48" *) 
  (* ram_slice_end = "48" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_48_48
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_48_48_i_1_n_0),
        .DPO(mem_reg_384_511_48_48_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_48_48_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "49" *) 
  (* ram_slice_end = "49" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_49_49
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_49_49_i_1_n_0),
        .DPO(mem_reg_384_511_49_49_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_49_49_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_4_4
       (.A(wr_addr[6:0]),
        .D(pixel_in[4]),
        .DPO(mem_reg_384_511_4_4_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_4_4_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "50" *) 
  (* ram_slice_end = "50" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_50_50
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_50_50_i_1_n_0),
        .DPO(mem_reg_384_511_50_50_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_50_50_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "51" *) 
  (* ram_slice_end = "51" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_51_51
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_51_51_i_1_n_0),
        .DPO(mem_reg_384_511_51_51_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_51_51_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "52" *) 
  (* ram_slice_end = "52" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_52_52
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_52_52_i_1_n_0),
        .DPO(mem_reg_384_511_52_52_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_52_52_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "53" *) 
  (* ram_slice_end = "53" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_53_53
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_53_53_i_1_n_0),
        .DPO(mem_reg_384_511_53_53_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_53_53_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "54" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_54_54
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_54_54_i_1_n_0),
        .DPO(mem_reg_384_511_54_54_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_54_54_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "55" *) 
  (* ram_slice_end = "55" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_55_55
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_55_55_i_1_n_0),
        .DPO(mem_reg_384_511_55_55_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_55_55_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "56" *) 
  (* ram_slice_end = "56" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_56_56
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_56_56_i_1_n_0),
        .DPO(mem_reg_384_511_56_56_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_56_56_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "57" *) 
  (* ram_slice_end = "57" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_57_57
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_57_57_i_1_n_0),
        .DPO(mem_reg_384_511_57_57_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_57_57_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "58" *) 
  (* ram_slice_end = "58" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_58_58
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_58_58_i_1_n_0),
        .DPO(mem_reg_384_511_58_58_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_58_58_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "59" *) 
  (* ram_slice_end = "59" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_59_59
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_59_59_i_1_n_0),
        .DPO(mem_reg_384_511_59_59_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_59_59_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_5_5
       (.A(wr_addr[6:0]),
        .D(pixel_in[5]),
        .DPO(mem_reg_384_511_5_5_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_5_5_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "60" *) 
  (* ram_slice_end = "60" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_60_60
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_60_60_i_1_n_0),
        .DPO(mem_reg_384_511_60_60_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_60_60_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "61" *) 
  (* ram_slice_end = "61" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_61_61
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_61_61_i_1_n_0),
        .DPO(mem_reg_384_511_61_61_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_61_61_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "62" *) 
  (* ram_slice_end = "62" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_62_62
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_62_62_i_1_n_0),
        .DPO(mem_reg_384_511_62_62_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_62_62_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "63" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_63_63
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_63_63_i_1_n_0),
        .DPO(mem_reg_384_511_63_63_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_63_63_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_6_6
       (.A(wr_addr[6:0]),
        .D(pixel_in[6]),
        .DPO(mem_reg_384_511_6_6_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_6_6_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_7_7
       (.A(wr_addr[6:0]),
        .D(pixel_in[7]),
        .DPO(mem_reg_384_511_7_7_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_7_7_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_2_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_8_8
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_8_8_i_1_n_0),
        .DPO(mem_reg_384_511_8_8_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_8_8_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "bram_linebuf/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    mem_reg_384_511_9_9
       (.A(wr_addr[6:0]),
        .D(mem_reg_0_127_9_9_i_1_n_0),
        .DPO(mem_reg_384_511_9_9_n_0),
        .DPRA(wr_addr[6:0]),
        .SPO(mem_reg_384_511_9_9_n_1),
        .WCLK(clk),
        .WE(mem_reg_384_511_0_0_i_1_n_0));
endmodule

(* FRAC_COEFF = "15" *) (* FRAC_SCALE = "12" *) (* MAX_R = "4" *) 
(* ORIG_REF_NAME = "filter_alu" *) 
module image_filter_acc_image_filter_0_2_filter_alu
   (clk,
    rst,
    radius,
    coeff,
    coeff_scale,
    mode,
    pixel_new,
    col_from_bram,
    shift_en,
    result,
    result_valid);
  input clk;
  input rst;
  input [2:0]radius;
  input [1295:0]coeff;
  input [15:0]coeff_scale;
  input mode;
  input [7:0]pixel_new;
  input [63:0]col_from_bram;
  input shift_en;
  output [15:0]result;
  output result_valid;

  wire \<const0> ;
  wire clk;
  wire result_valid;
  wire rst;
  wire shift_en;
  wire valid_acc;
  wire valid_mul;
  wire valid_reg1;
  wire valid_rowsum;

  assign result[15] = \<const0> ;
  assign result[14] = \<const0> ;
  assign result[13] = \<const0> ;
  assign result[12] = \<const0> ;
  assign result[11] = \<const0> ;
  assign result[10] = \<const0> ;
  assign result[9] = \<const0> ;
  assign result[8] = \<const0> ;
  assign result[7] = \<const0> ;
  assign result[6] = \<const0> ;
  assign result[5] = \<const0> ;
  assign result[4] = \<const0> ;
  assign result[3] = \<const0> ;
  assign result[2] = \<const0> ;
  assign result[1] = \<const0> ;
  assign result[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    valid_acc_reg
       (.C(clk),
        .CE(1'b1),
        .D(valid_rowsum),
        .Q(valid_acc),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    valid_mul_reg
       (.C(clk),
        .CE(1'b1),
        .D(shift_en),
        .Q(valid_mul),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    valid_reg1_reg
       (.C(clk),
        .CE(1'b1),
        .D(valid_acc),
        .Q(valid_reg1),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    valid_reg2_reg
       (.C(clk),
        .CE(1'b1),
        .D(valid_reg1),
        .Q(result_valid),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    valid_rowsum_reg
       (.C(clk),
        .CE(1'b1),
        .D(valid_mul),
        .Q(valid_rowsum),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
