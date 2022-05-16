// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 16 17:59:12 2022
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
