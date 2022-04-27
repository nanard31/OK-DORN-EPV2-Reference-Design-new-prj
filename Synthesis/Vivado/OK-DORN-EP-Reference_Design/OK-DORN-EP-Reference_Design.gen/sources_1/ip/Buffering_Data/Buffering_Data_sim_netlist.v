// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 26 17:15:29 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/TORTOISE_EP/OK-DORN-EPV2-Reference-Design-new-prj/Synthesis/Vivado/OK-DORN-EP-Reference_Design/OK-DORN-EP-Reference_Design.gen/sources_1/ip/Buffering_Data/Buffering_Data_sim_netlist.v
// Design      : Buffering_Data
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Buffering_Data,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Buffering_Data
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count,
    wr_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [79:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [79:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [6:0]rd_data_count;
  output [6:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [79:0]din;
  wire [79:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [6:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire [6:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [6:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "7" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "80" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "80" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "125" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "124" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "7" *) 
  (* C_RD_DEPTH = "128" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "7" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "7" *) 
  (* C_WR_DEPTH = "128" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "7" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  Buffering_Data_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[6:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module Buffering_Data_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module Buffering_Data_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module Buffering_Data_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module Buffering_Data_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module Buffering_Data_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module Buffering_Data_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 130976)
`pragma protect data_block
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
`pragma protect end_protected
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
