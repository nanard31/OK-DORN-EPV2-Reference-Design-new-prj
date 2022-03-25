// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:17:23 2022
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
