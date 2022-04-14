// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 13 11:37:32 2022
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
