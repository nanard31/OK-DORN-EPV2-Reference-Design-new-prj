// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr 22 11:33:24 2022
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
