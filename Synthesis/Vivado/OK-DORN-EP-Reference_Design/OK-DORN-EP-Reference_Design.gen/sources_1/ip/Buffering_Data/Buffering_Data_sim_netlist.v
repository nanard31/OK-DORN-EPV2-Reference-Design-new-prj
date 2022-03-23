// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Mar 23 10:54:06 2022
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
