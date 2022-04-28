// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 28 11:55:18 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Buffering_Data -prefix
//               Buffering_Data_ Buffering_Data_sim_netlist.v
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
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
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 130096)
`pragma protect data_block
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
RcygMxHYcSXctIc1bhmqD+lRwT3MrQ==
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
