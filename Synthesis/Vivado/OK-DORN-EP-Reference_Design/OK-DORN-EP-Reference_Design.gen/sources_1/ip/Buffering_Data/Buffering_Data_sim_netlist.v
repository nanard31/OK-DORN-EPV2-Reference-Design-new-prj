// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 28 11:55:19 2022
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
