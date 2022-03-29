// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 29 15:18:16 2022
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
mt2PCP6V1z0xNLUBR2Da5dKxRga6atbK8ygGV2v/rwjfCEAMrft3LDq7pg0U2mJ78WBwl/J+t02n
OOHKlljGpU3MhoZ/6AFVpSKWnQwu7nTgmDNj4mqg+JjVpM7fxP8nIrFQwDpSxv3Qi/labmm5bvmb
/LqNp9u1RonvnGf8koG7CLXJF2kyq7aqMeCKa0tLS7Z/5yC1yXkGxcPru+lrcvYtHofgOIKwiXgQ
miGfj+jprzFsjlaizyG+14JBcJ4mC9OPAMg4o6//ex7mRVaxLnnHuqxVbMK9Bdymgv4WgN6hzxqi
ko0To2jfY2pZVo7YV0I/bAO9VefizvvfUsv3QMiwf6esDuXB3YEdRCqrvg8IADhe+NoJKv4DzisI
cTPU+Cjq/6rIizDZnp1XymGqFQlsBEnmcdXY3P91HZQhpcQtFI49/6JP+jZkCEjKnzSJ7UXtx1hk
LpKrG44kYiXdkIVeLkyc823iu3Nr8bPAV1sFBU1bG4GgzPHEW3gJtpAMZvIfCYfnzzEcmkRQuImO
2l4uLWb8cEboBIZdBjhb/yo8M25rcTl0CovegyMfwpIyA0cI792PaHETnbps9vv0ELdy615QBP2M
uab4VcGLQady+0FovllfA14VeOL/I29FgZ3i/NIOUWVON65tlcP0NP/jDym4r0gZuyU8iwtdJOgG
qcPlBYcXm84WGK92x4eETScAAqeDzY5tDFUpKgGX3QB/dmSYLLy8KqIOvmpDFcNlpH+3QK4w54R3
/0uH8TlPEWSzMygeCJ/i+F6IyQu7uV755nJfxuaWyP7YQY3eBBONN2pMcdiMkHX6fLis5oej85Bl
4PSjwX0h7aqTjUD55IP4pipN0nDHSk5jAbJHEFX5DlNCIFx/OjV1ajwqWXHAyrXqj0fxaiQbCR65
MheMI+Nk7J4EE37/1E+S/Mmk3qAAb27pwAo6dsqlHWNhxwZvXMxutqZ+N4QacPvdAJgtCUVxEctF
+16D2Oi8o0FMd1haofS9ndyg5joFZw9cNvG4jeeP5O2YspREYN8f85bSdiBiej7wH3EYsAm4jkAQ
hWvB0IJO9Lf707I4WNRY6T0aU+NZchTerTZp/cg69DsJH6l/aT+xdxdsQC3QmF9ALWDQozEdD6HQ
5f9Qxz2qUQqcXtYiNdy8JM6Vk7+WXTMphEFDOAlo6QYbRj+YhGbCysTUo6rK3VTeDIpK311v4H6N
4HHB6jmcULqfRc2tunHucnc0GNDWUHo2QUptvNqJ0PwnrM6yBpxeP9n4iBu72XJ2MMcAd+rODaoW
JUDV3obsyDYgSaqODci476IFU7CQ+VwGZO62f2ZD+qgcRyBbZUgcm/cs7sypqjfhG97VKEfA+JLu
MavE9Hti246SGMB1W24U8slgsq8NbDGVLu47H3iHgPDGsoL7Icm07eALDOg6aKQKyPX4+KO2RXEU
W/Y3r8GB4jakNWis6+oIQO+Y14MRzAPj/obZVSv4rk2yohar36IOv3aDpWECyKXTDuWGLUB3DX0t
Lt4BPBEzlGvdJeJtjMewomGnk5t2MmBBjk3uaeUp8zhuqFjBxACnFuU32eyOGGtdlT1PCivvfPri
iJxSeiIsurhzZwHBDaMaJmTpqsLbNXoKH7gSPLFSvIAGhooGgYYzylzLlxtzj5MoJzch2gsO4LQd
LbtUmqekh+ZRQ0eYig1s2hb78bk5AekAwHl3Uv96K50QdP6MHF2y1IikYs2xPyVV/Dv7fgMdtLor
oBLVrKp+XqhZMsupppD1nF3untJYPzrv7WwEIt3+VkGR3A6b3lzJCejZW0jR+0i8PJc6bWVxZDs1
GFqzXgH0C+33mNtq2NuF9NcKNbvC+9i8bIyWWa3lhfgpQHO/VDgD9HT41CWeEkwZJTjBRrA6CJiv
+VowsvtdSsttRyj8ik9uw0V3lqCTlkZxD9zSZU23/UwzxPRHfzxF5i3uwnM13y2lSFSEXv15xz+w
KesA0p6BovEVv+vmgVIiLVh6hxdiHLZY0SVYFFNwueCAMOti+7KW/g3Bv/eOSrsOGqXuFkTIIhIM
y+y/3fhlrPxzJAlMwVGAISWD6hv79KM0Rcj3peU0LV0Mv43OYKD3Uzh1lmi1pK6rxh9VNIsFFOr6
kEwGFuBYgnwMWBJNuBUKZ0X3B3eMSxgNFVlkNN0xwULHCcujaHAGwp9baR8enWzwDYfnuMwDaheV
BRy3f23PZ5yxvh+TyEe8BEACTn4s4DAXt/LPzAfirb+i7wgIn2PEFTLrhnoIoEXADdxanYmJ6HeX
tEEapkaEIhoBVVeX5/yNHbYvlScyQhTzqErZ5k/BlW0gHgZOmLYVqonL29xW/XONkYGaVV7mMwRN
31mD3KN4nNiL9QHICu9jvDs3UCCs/shueaJEMwhlQyQJ1BfqSZqeXOxbfA0C0e+FUaTgZi81yzeq
ZY1r5bFWT1xI22GH191obnQK/yO38x/bh5KHZRIEA3fVAfkJLTAolkB3EqRqcoytft73bLw5+X22
GuGfIu2q1sa0WBVscYPjbYJ86GV7Ngdf0hT+vvzhAVbTJ/N4gSnbCvmk9pQi32WZ5RzxGgvG3W8h
UKvtar1nYU7lMXS1Is9hph9cVTB/bvovCVTGkdDUWO+23qsmLj+F3FkAr5Gsgvl9vCVLZ3BAdHdw
nmS3ik3blsfXF/VYCFnk8SiIUIcpmzsU+Y2a5oLhINOZwujGE0g2NiGOrF1YcKJKTV+AbVMV3/Re
P/C7znBxOZVqmoR46LzRihvOaIpW5T1Zp/WfpCb6ToDf9jCnIgWnVvs61eXJ4jlDnx3R6HfTk9tC
RWP4duNp36CcbVltvqlk7bzs3byECwhqqT9+LQdDxd72OitlartTTFZJHvj0zVX/aEwR3xSHD0eE
Zjfkk3tXt9aWeL4Oiul3LuNw523GaDa2oYXAtsf/L28Gz7RzMzEN0ACsPt0jSdxPu/sPG1yvKeTL
zO0Xwd42lq7DfkskOQag2PpWIF+yxtvzeUukGfN30aswP6FjtrqYekybjnZH4iNg0jWGQTc2QBiW
t6r9p95V2owOq4VdqugQvaFcMANoN7/oWFlEiREPqJJ8mB8D00m7OBuzqpjXbCkTKjSNTxuoJZNs
9yFo/JFkoZLXkA6WfiQmAUG2G5lCHGw/MetMWt79LQG/Go7wsUs1S0uVZ2Q37sJvhc73E9VaBGZm
3odD+2HVsfMyST6B3bIRK8yq3MmuPPLfq/POlrbhs9CTF55qY9AZYf29bxCWm2N6OJKJwNGXoGYR
z0+5L/vD4u1pIAtoubfswPSaWrVmhawzcq7jlxnpUVvJVXUlV8lfYlvqYBAQCk0BYZPg9hnP9iNk
1HNF0vaasFo5WkatmUccAknDLpMPvEhtqHBtHLE9hTwo9mmMUrFLz+EqbCiHTkSa6vw33owR28Ib
6feQ+OncTtKIAs/CoTnXSSQCHtDqLUBqNIjNr2DOAgyN6bw6es4fNw6MtV8cM1McHdk1kyuJFYAp
JbGRg7LBE2SxA29KTbhVWZlAnTZOJrsHd8rHUKl8PX7sYdx/Db8MtZbr+vp7cXdf6mWZe3SNVl/i
fSlLiE6vIBX3VxKTU0qMIw8cWHzBUvGjYCZqzv7OaH11jnC2/5BAZDhhTP9l6Dv2UOpCwZY4v3AS
GPowFJGjf7Ec8ZNxuINHKEPquuy+nbJn5sibsXr960Ala9aRer6jsh8cTM71m4r0tDJ4bqS/c4P1
d7OnfcKAaF1DGv50iz2Z7jrE18J8iwj0QnrzfP68u4Pm4JIbe+rn3K6Sm/Hn4NTNBFv6fjXYIZuU
DTj1kgyhsJXuZH7MG2gkp6AjKt6uKy4NEGVgtJ62P0YnHTF6eTSBW5h1gGTviAGA9FVXTj8RwGAV
TvR1ghTfMn2arZS7jn98UUSpLv9JcfHNHCbtR9+qduNXKPWmSUc5jjyvMvOQShbKYCOpW8WxzkhC
cODTou2nx/gAxjM2bu4J5ryT1FDwBHk6cjrBljCntYF7jviJqxaaQV0FG3IJ+qTYnwcTekDAjTYr
5myqxRegWF4riO1sfcNotnd/+yk3BhkwVP5D6ITUit+iSskHNQJMRWU/qW4XQc0da5NxZqS7InAQ
LHGXPLmb9PnBuDisDJGUKil4YR6ZndzZYoUSRKpzl38EYz5jdVgNHfOTq/UcC5PS22Sot3z+3bbj
y6z1J5Q5sFhgUHQyqC6EN6Bu0aAULPd22Bx6Acfht6lwBLTK/eacMTpg0D26NxJ20nXkJNv/PlyE
dc3t1QdpJp+uaE7g6U6RA92+s7vZ20OmdHor14G60BXhDqMUw3oBCYH2NDITYrlGKjbF4D/umfgp
v0kM0rmV6h1PmZ2InUzDSiCL30u1faV4zRoC/DPze1p3ufRQGVpkRfs2eg8UXL1vfqZZnKNjTqmL
xBdSSNovONGnPjBU6FKuEHXvVr+i7qaaZ/GAZ9swdFSoTVPlFTtw1wwzJsmt7RH6tjFsLeDCL/SH
huTvBg9QX9GGeaarQtoHy9BvnZL3PMI+1J8XsqbGgopfydHahdYIdhtCBYS61eLtyzOma90yiRDZ
ssoMIs6FXoobGrQSrz2L63h0Pz3Y55WRw5S2uCQGGi5C0yRiNv9Y8CQPGlFjN3yXUkXx77yK2BLT
gos+MUMFEgOGT0oSwHkDAZWNQ/y0w0i2igIkJmLwJgMAefQ+4yyVtwzh7tA7d8y1iuEMgvDAMQlf
fHmnjYH+Jgsk+114HMlWe+yG8GpQzbFe5X9k0M7Er+LAWPRTKaoE7cY1vQcXuKVRo/Y8paDdTkHg
YhJXEnTATveewmP/UEzb7d2Hp7v5D4ue8IoHyRodVVtKQxqRDod0ngxgOscn71wE9SQK1prWMzJ9
wpDC/m86l1dwWKyE+JiBToa6d8gRWe/IHJsxwq17UoBR5lRi6m0w9JCxMfy1hZokJ3tXhgwByIkd
e0nJZCasPi35vYc7QK5ZRUv2CIzhIJ/Nmr9M47kWlgU7rVS2M0zimUE2S7cZYDin9HeP5vNpBWnj
iG+AJZF22ncZ0XMLTAQe3v61uUM9yNdmEKgdSnh+qCksjWjl3y8cwHxOjRjG/xHcMqF1fWuvBPqq
2q5UWMBxuZeF2K0TgaUaXP4YNkeqjDOdIWZZ6Ehj+HIhpeyBuTaCQvfGcSzw2hRrZSz3QK5x2sA6
l/yj760JGR3raiBRiPsMQk+ecxONYNTjQF8dC5W1eS8KWVjoeY9PMbb4M3MNwBzleJ8XaKb4rSMT
qEXyTfiAKP6lnz5gROYfZGz2C34bLQBQXG5+srkEDhJE9Iop+f2sgknCGeA1mNH73OkEoaVBKbgt
85P81AfdB56qRoxgd4lQcspQ+6spYltp6jVqV1+lI4Ke9eI8zHofH4RrTVhGAiScC++jxvGQhi2A
Ag1d6Xzd5tn39qXO0yIPH3Ipd3c8Z2IoqANz83r2V1uRGzxVdJODUo1FgeLZnDlKx6rW70/W0jRG
REl6J87dVNCcCx17nkocNF/f3AFGAHH37fK/USSoh/MVu/m8u78FFOkJTgnQgfDUuyg5Jlcg6sYz
MVkCe9zFGIYFA8S/pHZhT/7WJ6E6fxZBqMrV1EpTiOXY13FzwXJZMX+GnmcSHVS0OGc8xPS74tgL
2pjZyCCd3wWSJQGe3UDITqf3QruYLnGCwvV5+LplLlrH1znftrsoLuJmne9GqBlR/qvbx/S3QjIT
8nkcg+kriZoWSKwiKyDAoUblhpCL1ZIRrhrfB0NRTO5nwE1lMISSPx0o/0e6BKCyC8TYtPRh81NK
Uk8QzmTCIyACFspUYoQlNFymGCPTVatnauxxq0qeKqAbx8yWCcdx9JxDSuFBLPLV7+6S1/bD4sQT
6uroIDTcWqxFgm6vlJ7nJ/6RvpUdNn1WyrWUuGK51xon71j/VB8R9ymTnhVZWBgrLvtj4dEPLzvc
Tf314RQNB5bHJ2k+w9NpCFmamcINxkUaOR6SCtvkPwK3HUHCwMnBjvt/sRRyU8YZsABbqaLuz/eB
v9Zv5K9OqzLrur9mX0wLcFknNOBn/zZazwl7Az4l7sN1rIb5+YhbHNOD39BGxk9dzCytqVBiLPqi
OhXGD8kEwfmX0mPlefYMr2iM7YMpU/lunHyOpg22Whz0DTWmKmLYC5enn0Dex3XG13y4xh9cxil7
zqSKIZiaDSIqNHjK+gUn4Opq83f0C+Jdt5VkdUxdpatX5W0y9VXLQ1AXh94vzBECHFH3LaSlpIG1
6XWQPpl9zqvLmFANYxUR4qzpnskafotZHvvNwnp0LT2Bo5tL/P+CsR1GRRqy0tEnmNcS7q8IM5Za
490zFgFd2N0hTLkb1BE+6dbGpFi1+cu/C6DucIu8KGt0ZziFd9ZDQ6R3X/y8YGl/k6b0ILD7SddK
YT2vcco5dIkp64iGU+RgiqG6H0V6zqlcbjh7cT4nNADGOWa2fOvW9+cogk/7wkS3X4QOT2Abwdn7
PYlsppNgtOX0/x64V3UiGERf8U+OA0AQRCr7Q4IiMCxwXcbpP7CgIPfMiCkNL0h2zXjmQgAZiORa
MH1xkSD/vS1hDl30HXJWn1GBeDhawzxl3s79PCP6nCDhMm/uT60KKDO8eoVD6F3BwBRrtKAn7PsE
yfam0CobvDQc1H3iLuVG7pnu1er2INd39cYA3RuMzmU7QOcHRYtWH1r7RCprhfeiISiElB0DthoZ
S5hYzbrZNKlsQ2fhAYHrWSd1dFsys8yhJ4lme75ZgcCMyXvScdxqW/F8nQY/+stCydNk7RJATN6c
aK0f7p1FxIAkdKTN+sYdcuA7GYqkQSVzOYcV0YVIBEWTxqemeLpKirrQaSVJLhDOB49NV2y+jxF2
VQJ38Dr/bq4dmsoPi4LVCHB/JOPSrUAuOcuLZaLevZe7O/0eBkHvBQC5jxGBrXcoNwkN+xjVF56P
MudJEnxuImrDajRaywQkpEDrQkbdU5tBJSijaIWFNolWZTvMFfukLWbc76vIC41G3DrNGQfNP+9+
CopU53de47z3FI+UqSFK6EokhHAQH44x7Wwm9TmJ/4K3MbywZCT/oybnRzaxAN+PedTZ/IOXJmFB
vMSE1g4mAmI2HMsf3yrS53Cw++J7tflJbnvyzameJaQQ9nB6USZe6ZdVNsOKO1qDZOSCcuBj5SWc
s3QM4587cAOEl2MeXjJy7d82Gw7pshi3GdFWbz6fkz/LOOAb1lzFLVdenTr9wiX9U7V8n72y+8kS
Wg1xFjq3VogEy8k9IFgp9bJIuKjk5sZQlMKzjAIHJfiCVGyQ3rig1ZX0OUntEULzs2nACx9FEr7N
oHUPyrNrr0UlG8/XTVXEpU2GquZ/dqgI5/GzpQlsJuGdx6jfzdQ+lWWziRmSYz4M5ZBXOXsOC0ga
HOKuyz1cESmWGT2MM+C6BMup1GFKii/4Nas7gZKYB5Y10iEF/HwdVGuHwR7DMpSSeI9KWz+umI+n
hjfNOFo9lhSD8hAKNDQDjZZA4EeZFY4bhhdhQuYZ7fKn45qImwgb4FJfeIO/l+SNLZzb03HdjYkO
LnZkt+LqUtt1WewLNyy1AMSGmzBQZ6ZIl2uYVEwqPuxDacquJX+xnRurBvt5SXcKy3fHtjAbTkEr
+YlkayyQt/UlMyNrSfPOOYNiFyv332aS1J0M7F0fKlRg+P05wKRAq0DxegwR0JQ6EbQeh0w8eepN
pkKRDR2Qx8X8O9iMLytkcOcZ5Qvp9Xa8a6kiAJJIXsiFNMT9Is2UXyLiA5Igl+2mniMaC3A111EC
Zf1AEN50rDpctcYfn9YfmxCmqfNLuEla6pN0OM6IudTgcSNEhfcX3dI5sLDAyGPGKzxgy6y1qUm5
5vyBacbPrJ4Njl+z0KX59XfWRGBmnET9WbJphJrEBeMgxrXJrNQjd25x/Rf+H1aU2ODYrMks2ITj
mzqrm3dSgv1K0sDqD7IZrYRYEscgoylmw5wcAmA199iHiaxQ/brJEedxML2OSTMRNkaTZS92JBkG
aicjk7lmYa9NkbbTayQS6xDAdOPWG4v8ZaLXzg3quONiVXs2lI2JxSeMnobTfBCYpV42Dt2oIWQZ
eMovvWjRTGH4a3WtkYOtOtjFBE5fmQtKXHUzixC9V1ldvHg2FhUmHqniMwnzcoh138dfSOaRg3U5
BR97sHK5/vaUr7VI5B+JUhLorJ7rE5hsceNxSkELOEvNG6KsdtENGTAtYOgW1FWI/RcOLrp2FOUK
RXvHor6avus6gml+FOYLioY2CFu7St4ZOQSr3y+in/ZVn+K0ub/vUhN03w5SmU1Q7jSh0a7rQpW/
FklpgRQGq7JYTBLtZHl6RA9CNCaB/pBL+yfxRGmlrOVb2Wto0iUQ5KnQv6sQOE+jkIqmuc5vumSu
967eWnFZN97viSmTTWINlohpmqX1Ey5NDL6IGJB8SvIkhs1APEmHR7NEoCo79nFm8caLUIyQQtZ8
M2myAPSfWurRQdLDfKlPXrZme2TjzPBTrBZPZYD2m/631Ai4WTcck3NOtAPG8nLY6jtdybly4rZd
cvoZGOpoM53gJpJqiiaGGEt9SWBoIuvA1qbiDs+kJXNNDjPvjLJNTyrLD03Md3Gkw2TF38OgJCRi
es6SalXTOJh8rNB+9mt4sqwE4xLnjF77Xr8BbFViTy7yojf1p2k1xoD97lu1WMbCZb44566Pa0Uk
dbVLExPvNr+Iqu23vvG/NJNAX5LeYjzzWpvqMLRmuP55Lmuo/1QrTgaxTrl1WjfUAg48y8uUELAc
DUISSVfxIiWQPve7yfbLjJXNblna3bIE+Og/NbN3KvvL6OOVq4aKJVvEvjs96Ed2xsWu/1Y/aeBN
3jHGAwhxJQsPtI+yzn3FiPRCES91uazoHzuZ0lbX60zUlFK92gYI1bUrQMsfKhfLVXBFAwcUoggh
Otukbw9zcvTGoJa/0QPfCKO9zV23wil0dR3hCXZ4WrT+dHTmlw3eLKLHCAyCOCF3wx4LaJa3z4Dw
mWBzmenn1O+57uRfBtZxKI/ydyehFSMexO5DRd8bgiOA6TNHSfqe/KuG0JxxawpP4s8zYLC1fnn+
8esv50UC2O9GcFNXVElMGOAzLmuNuTS19bh3Vfy9qVUaWR/FVwRYW1KeTAWcBURI9wBZ0P9alRbd
sPcWbA2BIfVI/OE0urlvGjL0BggILKIiCVJH+cn/Cwa5Z5dS2TIPDW0/G0i6eg88YjMwnzqTYqHB
aZAWFmcd0muSRi4YsMMD9JItGFNyQVqwxl5Lp99bP0LDC7F0hbFhyk2esE896pgZSq6Mpk2Z5HpQ
aCoDXuqy+iRGlP8jWsY8W/UFffnsZUD+OVj23FVFWvqtJigX4aG1zOj0gTZ7NVkkg3Is0JOqQMI5
06H+W99MMpJ93MsBUza3FzoStSrNhuLFJn8zdsFk9g5xfnq5BUTQUp1ffBqNwmef0t0lnF3g8zT6
oTWb93cp/tL19OmXXDZxUA5mymvTo4pINvYKIAZrewbM8oKqkKa05rHDgMxsVS5fCDXaaXJPRkpd
T9MGQF8Eq3AJUkexqRHsq1brxyeY2QJwnm5L+PUGkb5cP2WNI32UIX0p85+8EoTSnGILOT+nVGKz
SKpLeMiuNOEH9q3F4MdaLt5gwUucwfbcniIxKdlIa+83LijE4iJjTJ3uvN9j1snZxB12+sAjxjY5
muAJeByxhJqV+5PVebjBUTUeAB/lckOxUd4ZHyfgr2d86QM5I7Oxnfxgj3VUhphTp7HLejPnfier
iJkyiB6Ggr2UOktHpmo94L542oY/M9D8amPLacdyxSInAtyqSQP2KD/RICLpXYfhKLn8N43KaELj
Eiu8fbdXSi1ZPZ0fZ1a984xmks+GMWX6uT5eUnOA3k2Q5k3nOXFNI+ytE97ZKbGRa2lIoMH8071w
QBQBjtTYQw2mPNZsAYoGrLnxmQbs5t0DvSXZRaQtvRLVP2qxZvD+JWdkn7Fo9zVSUM+YhcUR0DxH
yS7xzSlgluCu22XBzRS8R3ABjsy6Bk73X7/L5K6KR+t7RvxJ+CsONuO6FCxSuHA2kIVvT5KLi8QF
tQtwfWQVNn7Dw84t0Ac5kh7ruNc7lmf4l3jOBH1VX12Ls6ZU+N8Zmp3NEW0u5Nei1kbU3OvL7MNF
khAYno+8WjTj6fcmqZ69nVbSox3jThxokB7EFVWckJPbe/puGXwtc7d/DqMYT6uEoZuNBdqSrohw
gNbF2WLYXEli1kcCHyd9DvoLqO6UraOEJ9RIiu0algfCHS48//oXoau3HFdRE0K5CqqtZk6Rplz7
XtDDzjwy6chuLzyfBgUsXoqS/FmDOc7Gi/k39eHdiTHVHMuberoD8/4zjdTbloCwvzNr9U75yDZm
fD7JtfOlFZGeSzcWCeyp/atvM3C5lomPyEFmAh3Hk//dpVyZTdEIbOR1L0WUjjjvNIFq+Mxm5Gvg
GhUl5Enzxbx+VUe1BcjzXSi7jIqNPdBPbzPe4VMYAdN218UxvE8C5i9sQmj+zAoYBp0hTWDau5Al
hAht/kZbY4QCk51pv4muqCnptu1L7kYoQ2uTX5QVrWovVWDyOaPERqji0AR4kN/JeYsb9NCTTN3Z
o4EwO24BPrJqvt8gUNOH6sS19vQw2SH9C7kT5BrdZ/ePFx+PSSADTBUoL1qeuWz+ZT82mMTgEl7W
zsQYDNBEmvnPJ/nKz5ePlhpg+tVV5+g41+qvz1RbbjZUmLJlSnzd+bhfeYzhjf0afzT3RzrD6tSV
2PfObW7qNkwJ/KVMtBbi33uaTfknQA46OxQSLc2fHOBKwFig8k3aWGJA6cTJHZ+4X8SB/VR/q2Bh
Np2b+CfjLUbmQd33w8UlyO3J46AdL/TxXAB1YAFt8rxquZerFxR9lCsrkM4WBasHbbel5+EmcHB0
E4F7VfpGJ0NQMo19s2mZ/aLIV7H5/42W593Ixka4HDXPuNoKazDpmzmV00Gh9rNf9YOjj5y1mtPi
j5Oeky75ZuVP/yBBmAeY0ITml9/Tyw1Ku+N1DDt2qsE6nJ8FcP27642d5jw5r1OJN/aCyq0WHDB2
waXNNdXsMlSeFROwTZCepL4AmHr1pBUECprk4BLFgs2chf9FqN+dH0mam0ubKP4mSP+cCHRFxonA
01tdVk2IoSrKaBV3RXwiCUOYREzaSyW1G4zC6IaQ9KmZpO8Wq+yALVbV8qd6wQgm7HEVmhz3FDeE
jMrIVh7RLE2b2CyVjEgi4pH36WdejTaacsLK4jPgbj4S6T9TXOZxIgNlk+Zd9wyHE4gPlBs+mPxv
sI38ODTec+r7+vTYnQGwdXH3GtO4bEDYdw1dx8vdCvMH5z6TjEDmR/jmsbd8IUPlnpA5LWJQivnA
E14z0ZhXXLv+Dqp7onqXs4ypdg7l1loA79FkzBDUTrGHyny1KkkQmUTvKmuNq1WVDbBac1WPlfGd
uXuqYNYcKVcWcj5EbmyfLQVYGS8DV9FLhSw4xbd2ErgxsFnCoMvIpudSWcHFyXgvCmKmdZQaubql
KZTp4WbDSZbNUMULccaUXgZrBweBe9nUXK60Ov12pmPodKXDteDwcsi8saho+49rrXx4YQy3gmr7
hCbX6sFf9WcFKiTcONQ1ZHvBSEEJdwh+iFKiOo5htBMUzXlcSqCzs8wgLX4shLiPaogjRCz3D1Fp
6WUmsdL57UPTq88OqRTNUxilWRCT1w4XQrS2JCWJ9fzbCzrz/ZWADI7+r19M/txxWbbrM0uail00
eJfnfFzx7vcnlHbHh8OJcIAgEXz/TJoSG5WDxcth1RApAF+8Qg6vgg3y7J/FAMflw1ND3ixoRU0h
lHJUU++8SSU5JfAxGZrjU6jDBgL6L21tvKjRXephChuT7WPfN0jlIvpqyIuZ1b2ZfyiFp3YFniQq
7JoCp22H5wcykN4eiZzBz1gU3VOk3s6jZXvAx28QW+EftrZ5L2UxVjsX6gnX5IEhaGnLx6abN8vo
GqLw3mHpqMzhbeO/Pth+3WHg/qyfBpkUHp2uo7s8q74P83k8FFLECeWFjeMwILhUAPSX6iG8vfSE
p8sFoos2qUeupaiYhOLuEUdZDKTE5/xTPDar3r1d0tZEhxi80hYq+nEb8BmxAvDRIb0QpfRWBCUD
i9kZpDD6OXfAPDioKWktsJsoPaKGjbiZbIv6QQqFlcBBfxIkKVTtQzJKdWuQetFaxVP6IC0Uky3L
Wd9Wx8pqh6pCCU5MZvUYd8xZBHzmdsgH943vLggm3F1rqccboaYYlde4BHxC7NgtMZS33Xq0Axp3
lt5r2RcKtcK49YHVqGLJzfrsNUCSOwnZy6PYrLDng627IRsyYfKBAFvM7A8ohP/M6UYX9T+wvP7X
G7TdeQhYMtwKuL1c8cH2E1A4i91qF9/oqXLYlIJZcfeXiNn4EJ61eoCVRwyV4a0+Dlbv9Tznwjn5
JbTStU/heUkKjJTv4+prOPSzvijhpclDa8/oYBdf8WZUfxkm+aj3R8PS58jBogwF639QGgfNmDHp
gk37bOP6Ytv8PgFt+deXu/jtl3LfxN++eSgy8C995l/yZMyCla7esePEAi5tqC671/Ht1uwazNou
rqUYTjgDUU1FE/aoU9YgAejfxwPtHFIn/j2y4XfHoBGewN18JeIqihB3ITvaCG/AsKFZnjGd40Hl
+BAhyOwW3GrcK3kWnwzh1LURlXZpb6uiidP3WctUEWXSP7bZy4xv36xxOFwTkz/0+/vkCJhQawc5
bHyHVQmxr4YK8/zLulOzvHfp/O87Ns12BuFb3p1aEn2kp5NM/WOoLaNS8VVwdfKQJM34ZbFZg8TL
zzqUN2O/c23K0jhOqG2a+FjGR9zeta9KnXFYz1nW77Hb7LFvau6aeUQZjX1BOmI2YDKlobjn3sZw
mhy4lrYdG0klz2frxu/z7UlXyxvIczQ9XE6jnq1nI/13fmKrfGgyEv2tdDSJS9CFRzaQBgXkVFFQ
doMhCpOkSsVfCpNcjqKVPBnzuDAE+0dP54hJHl2HGJWidlt+5s/XC5gq2lSzOti8QPWq2E/JxcA/
DieIu2OHl4oIp2eEuHBlOks3CLxzD5UAhYB6aEbefCG5IURWkGETRtAcDdIPZrVqLGE7R8FOur2Q
LlhGWwJa8y99JJbNZHLhv4OncbqbaXFH3rWVw2EzNZcqZdROfVx1uAeJCUAYzszTm+LyWBr3lBOX
tugwuRZEiEUr19XmPsGNMiTOf8ReNusx7/QCs9FvqTpHe8CRXIC2jcrFqOYZJmtMce6mIKtckbgr
Cqa0zpp1zvqpOkP4fZezrJKzy+il4fk3lqjt4CnzfgmBDkLvGUXsLTa+qCe7B4RJgiyRuveLf4jr
f196O7zKZ1OrbyBDJ0WhD8mtKFsEaZsD/sYun1v3lmqnJ/JJD9bNrqJtQTgnx4fMFKsVjnO9AqnU
F1PQ1Cd7X+pP7Nu5kG76/JtI4fe6vKcCB18JgD+kc5LcKUHCwd8QKJ6Fjlh20CDS8ngwCHlpWZUv
V7T83iRXSm/kcBvFLPlQi0zKhBs/g+PvHVEdl62WOrEiNaJvKAVZDu/5FSFr1oioY8LEzOYBifGQ
QIxO1F5RIv+MjddsAUh/jOUUrsHUomOVoQkiGSfSUxvv41U4NTDxKfhSdDdjhm/OmjfUsReEpyq+
uKrQvPbNEZ0RQvG5Zvqhx+PqM/fOID2Fx+kzcZvRCQhb+uGp4nHasL02Xm4TsMfbKl9gs8pVhTOL
SrSIiJIZI015fHK8EFeuGP715GM/0jtlW3NCci/DlXzJ8Y35ThAfh9JgT5Kbib7a+rqi4HY3XwD8
bWwjoB0cBuFLfmvhZs1wkUZfUuY5JJ+uShRAPP789Vmyd3DinkN5W6UF3vQZ4cXBpywZ54Tur5u6
bXErY0C1qVcc6BHZpRuxI03zIpFHQoIQ3rJ3qnRkjrtpSE+xrxvzsbFiX5cdzLxPEs23saHtbyX2
DiRWfJaAIXN1f0rlUwT6pAD8/I+73Oq+ezqDh+7NzmdToT7RZhVeQnQC4vmb1U1malNtgQ0HPTLK
38AZ/G+LlTY8SLR7fZw99JgtZ++a/oGMByJOyHi89/emHKNGJUWOHhTXYCxpBigSEMiubxv9szu5
N4emXIybhr2mAfKuPHpbedNa/dpy+rrRk7bzFS0HBXIxmMfYgRtkOIl/S9MH3aujvIlSLwZzrcMR
qsH+UQ78r/BmbNbiq99jHEgtO+oFv9wvMwdD13sbzly1xfuVOpHdxLNTOZAxRT3rq5GZgs/UGsr3
4x7qOZRNbK6OCiCI+7I8ZAhXa6YA5s5eVsXW8/gRpqtW0NNVcsK7FXfyTromR+YsC4k25Ip+s/8G
K3uVD1HB3vh9/sgXb2wru6aU5Es2Tp1l00AZ0LResnHn+zuWK8n0Ns0tKZRc4EnfaiQ+qhv3t11K
SS8iM1qwd9//AXclfXbBaQmhlSEh/KNpnVMi+PS8nhjYyUpvjnqNcICjSmLiDpZ/ND4wDVFtTScO
RdL14FcMyym5TWYY+efoARjvaGIeUCxItKj61IWhveY8O+Q7BjbJHQr5rUZmT1IETQ/sKFRmreRo
HZtv3tvQnWwLd0C6idYof17oY8+VPHiE5d/SOzbxbnsr1L1hN+1Uv6eDdXY0K6cjMrhZdXMg76T/
E7h+1Nk/X1C9PZ9adH+SVdTFmMOKcuhuQUeiFqezFiSAswYt/T15kx4Z+VfhdSS5fnrqodTi06BK
zNAC++pOAJsJjH0x1h8vbU+HLV01fo32m8rcjiDlcUuEjBVL7Hy0M7TMJOB1FCeTA1cUNIjoW8kQ
cDcJG6lvxn51/6DKqKG8/vDMG0m730MDt3IvYncUVTO+E0tNTEbtEUG9XFBht7aKRn7qygOxCDtk
1FbZoOKPBvm15wUFgn0qWZ4QIVduAovNPV8hqpByeQLiLojCxruNjhqYo6Wo6wnmss7ewvMMK1ZN
mfxKCF/JmqGisJzjISysIynBbW57S2EpFaDEY+rJyVbf9QqYbmq/iFnpzAN2Tt7fMZ3UPTXEKiyM
zYKj+jIGVCgxp1UqacM4GkIa6Sqoy4myU7eHANU49SdyZ2g4s+jxpXrvCNKYEZu1i+f1iVNB6e71
58Q0OXl3lo8q0J6gVs7mFRuUhPmE2NMJN0r7MmCQf2/+jpXzzGPHzeBRCt6GTy33GC7TyJGLsU+A
aJqycUwkHaAtQ4xxlwMZLjmLp2WR8LCQ+aTLEcxJBHp5DFUE/M45HRJOnLaAEGS5wT3I+RDKh1sW
aKYuTZY+YqkK9fxF9vUuNbBmBpUmAG8dy5Uk5LoFVWw3xjxFbdYGCe2NYS5+2IIBlOlVhJonhWU5
tjANU/dl2/tM/32i+9fMVONw4izTcyh3XfTraayZhIC7dKDMTRzpHeizH50kZIDArRpAhuflgveZ
onPTYs92xH9dZNocph/jswyeEAFHB7wuUYe36V3O0fi6gLDoGWIB//z7g74T/mdxWDP7RB3f6ZYB
VNP1yI7v8f1iBaMDo/B7QdkGoHnC4HOCITU8MCJsESIi/gb40i8BY7wp+KXE0kq//JHn9kN/sKXa
AteQCK67wjHy9TU/sS9cqUYn1KxUf+99mzGsE29HX04u2vCUk6WcpdRxBZWNkkHyWzNK/wctj66z
IYPyMxI0Ot8HbRm/0huRpJZXQ26KfZVW1uReFX5Dn52EzMKDdCFX29J05HxpnffoT4FHGCxy5HuU
/TnjGw7drKCSWnNh/jRxQtsW6U0Tf4oUNobgdvP5fqZXW4O+HbhTRskdvJ7pPNIXrs4y1mB9rieD
lap3y8C9pv9gwkUGV12yoX45FBueitjkyH8Yhax5V2/ZzaLIHjHc5LVhkoFLGN/YvBXs2lCO7YE3
zlqjEvtuRHdps9rxaPKa0Opun3wh0aafFD+cMAmWgQtmNfXiHOJfBPku9nSr75OatSP46k3lhCqr
2YmwyMSROzDklVAWEKON5YPs2JsmADt87+B0xDL8958XT546FzfNMc2naKJKwAxhTdm2BJf25CkP
8D7DXJJpG7vKhDawqwEY8fEYQ43+Vue+7coBlqnO1mZdZtuU+uLVInMhMjFSzNOqbvaQhtf1M6tB
OECxOLY0voRDOvATPzWbnbrEs/dmZmyTkDHZEhF+vM22vWYvGS49YHG9muwnAtFFV8+0FVRbXjja
2B13lVXqsw6vBWn05bUBb3rIHRrD+JtE8XMe/hVx/RO7aFWHSEyP0oTUd+qd+HkfRznpeGKnVeJO
tm/Fu39wSTwcMnWX6rxVj/k4+MJFXWFH91q3GWjGyQBgzLxiQ2vpzLAkJK3XEqjr5yvZzhfD1GZf
Hq8OvMcy5uUTHnqpsANtwR+k7M9Fp5jWoc5Ed3+U4dP8dpT2ge8S3sP5aZzJOFRKxu79xJkp7hBj
Zi0bK7cjIL4ooWND3UJGZHhDnEmZJI4pEikCbPgHROSV9I9tXpfBrJD9y8SO/0f8n4Vly3wrAnr/
YfqvCSAsGq2pdBiu6ef5Xuk8/L29z4DF/xqjMPI6dzDyLKREmoRSfPt5eE3nUwO+EXNfsNAre+aq
BPs6DvXrjgcMNii9Bgi3VoFLzNoXHcJ2m0jDHnN5HtPKZirn4Sp//AEGhRfqidx4Obct1AG7O8S2
y4TIDb6AKvoY/vI/RRQBGZzsMpzztxtdJamN6c+NxIIw+QS/9qmdTYM0qczG72z17pGUvSa4wi8O
ZPj6flChXWSxVkKsvtVtgVDufGIZDJQQ8cin833qEv4k8rRl88lmEvJKHUyaMA41EqlA/GARl1jx
Y3kubRxwdIAX5Wn+zQ2218msPjcAg603sk3yQ0NnxvePzXv0kchpFxcv+HDsoGWHSDqufWib2Bbj
Pmm7hE8YWEqTYvopHbct93ZcFMdEM6Jt8euyoG8lOBktgRVo402IFIG6FnzTHMcN7GyhsfNKaSwl
V41OtEskanQGuM0ACYIVtnWESrwRVfuZLMmE/BILcgWsQsxjYgbV0TexfSvULOJXf2savX6DUOb/
gtyHDUK1T4SzXL+jSAAbk0lJ0tZOgcxh+Hv5gsrbw7BmAlmw/SsvvYzTPijyOAw+P/gMNdnGNerq
QqLaD0/Q6Rms+CejQVa0jxL73y9t+b4Qr7fjrzGERrp0s6U267Vea5NFVzLJLV46mtMVjE+J1WGP
oCwvUbLeG231xcwIOeG8U4k9KYQZ6LfHeS+l5w/6i38bYyQjwqwHTNl8CO6Uagh5YQ58Y3F8ZJmF
Z8arAGwEB89BqG5BO6vt/ucDeeAS1Kvu/l5MIuTIVZwZ3FRisZ0V6ZvasZl7QyPIs6qJfetNrTDo
waCVHqhfudBxJ/I8Jr6WGe39qVvksa0WTmakBage1s468I/mmHXMQZYZHDcMwm0PQFkhN5wK2MOV
La7XlbGbIUK7PwaAXYcmLwd2JpRXOI/BvXe9YNf83snI45Pn89yABWON2cCIWrRPdy8rz0AjLAB2
hqm0YzHmgGFyTqOtSZommK8TyG/V9zftOqo8f7KHWAWUM5T+qiBNXE+rMlkncrJQf/zSTySHU4/f
CzQ/3vtVkSBDypXzH+xbYhepW79JzC6U81nwguisuW2emSpuzxywKTBv2EF6FzgYqbYBOYSTYmyW
fBcl9iflvuWxA/AQ+vdDW+ZbBnV44FpeOiTwuI1GcpXOtXS5iR4vuHGogFqz7ivnhs9R7/fgcexB
vJ53BVkj15PHh3vwxGMao7Axr2fynmEqbCPmC9VViPeTAk8d40bzqhF4yIYinuIymeobP7ubL4Dj
Vau+cB+ZNyeP2W1suP8Cvexhj0S7Ctq47SAtKkZ0M8l8koggSv8GIxFqBAwtwFtolxkehOUtNO3t
2a6DkjIZbz1uM8A78J0Hcs6tMlGaHHlTD7bto2BC2ArRFUnf0rIGprqUpcQ5/YmiXYEkVkJmIoL8
IGwSY5smIsoaEt2gzJfcoA4SCM+Km5OlUVf2sPCealrd6KfS8osNdzQDK2qVsqmZPBVcsFfp/Yak
XKhUbdTllPGfWKRx7DpcBw/iaRaXlKSWw2fmw66AvH7xEQ5Ww/C8ch3S9JOjRMfllkoq1/W1D4q8
lDrtTBVvj3I/mq5B/C7Xpnb+MPGUZLAfO6mukm9cLJ2wIuXwqDpG6bnGoYbBgNwbDWxfhu9lAumf
AHyxm53Hwg/Om8LwW4qe9vybN/KBWZKkBobwY6nO4o9BcWb0UekZuIkhGENx5YFboQ0HeBWFFTFe
5jQ+UIHiCO0P8Ug2SRAzx9ub3LiPPKYdUPBEVS7A1bm8nWAHP2ORDrwvV8/KQJSXrGONp+Jab7dZ
U0lOOH83j61aJxCOonveAzHuMHNAQSMICAmfgqZtAAonratqMeRewgJQUdn8V9KdGX4Qws2x9WlD
8dzs+l/ksjwsFR9c5HSFAhA1vzi4FlvJCl/MnNjgvVQfbtF3qkfnWQA3rw7FcpSMjhdNtDRGb/ao
BMjSkxPkncQuuirHw4oScVdaPOA1+0G4JAgfBixQS12nHx0MKBycIY+3Zua15pNsSGok2Lc+ErOQ
rw0dYvth5wc/2JZVBu0HTkMh9G8QK7Yb62L8JdcfbW4lA0WQfbvp60tlRpcIOs1vSykU1cMGr2bN
vsSqw3bibMuiP+1VoggdgYSUyDiMshD79dD85K2ZDEEvjk+McVGUMHwcH03JN7vkbPkNUjZBCJli
qP6dMiKYmmtw84jeg+nLYzzkkHWerYBfByDSQ4jJrUwYMk+lrfnodIt1hMJj0SXhyAzZj/UFUral
UGgyt8/wsEE8NtUn/bqm6AXle3c4aQ5txRwJY4KVjPYDABtpziC6b8FjwFLgqntWYlW6TF6JSwwk
MOhgHBG+mfHIW+F8+YRIBW5xb/8AHKuZwZSxoxA1TPK0X3xqY0zf21Kxr1dM6arYJjgPsX6bddBl
TsnS0rgNJekLIu25oY8BIixS/w0sgwCoEqRNsIjJmN/Qk1ZmjcWrZc7P9acqezG5r3Z3ThVBuqNY
F5K1T7BrNufyHbSfgqjLhQnHy7TVzoFIgKgE3Z8wiLm1avAyUHINEAx4wywKFtYSBlVzI/oB6rv6
gxWVW1vcgJK/UTmgWCMqefKPJbaChCJ+5tg/g2eM+wj1plJjGg7kjjDepUI5J9P+QRKVdWr5y0Yw
TeDhlGffxyiAaZlQF/lX70yQsbCwl8H+xfMrDVHPRg68j34rIyhiB2BpSYnU2JkyiffgIQ9aHKGT
ZY3I5CcqtEYY3BZ7edqDPwj8ATgWMIDYN6zTWWy6JAhIYaJ8Y3DhlOgWm2yryLredLfSLL2OQeM3
Ne0mD3K8warkCjWf2tXXjMiQ4kJafFCI9ScLL34BkpcR9/c4lhwA+wTQmAZGdHBdQwthH+DdfN14
WfcrQSMR2409Nu9oDGOoDr8dTwku/H+aB1XbTojIbdkvtTv1wRnjuDLGVQza0f24nhfa/fbQZMqG
8oy6urbgYP5OceHr7KyurQANSJOTbJoF8lMb9491OiHVNStuY3Zx0gHz0GUqINii3GMKKo4/StUj
KZOP8WU8RZ6MS0cLsxO6Lcdohv78gW+xOIrW23/HnnzTyBsGb7c/4oIAlduezHnbmDIN+dn4Po1y
HeaafFQrQEyPckzVRJ1LuXFO1/IweALapYpkqPmCtZnenZ/Rm1dO+eZdZLNUhhvGT7ocEg39B3QF
f91ZyStqgL8Wr2lhRpR74ldKGpF4eCL4BTSaULF3cacD19f3jd5AhWJCAwBF0AHys8adDn3ceeAY
X5TYriBssZiMTVn/U3pias+IFzPFFnM7nzaplhv9w+YlCMNlxe1Cj17UKgEZTjwa3uFUzAMHkD9R
nE9VKxyJfW5DZIgLfnjOf2kXME4zVci5Zqqj2VwHvPnU8QuobWcwjBTnUSmBMhqBdVFYILLKYYjQ
XpXNTPsfaX+whVhXKUx0yRw89aOHxnVxue1vvNkIezw3j1IEPeJtjJ4gopSoPNb2rRVszvWfnHFH
rQb6wc9Iqp8W3EM1dGBkk8ukmzeCKYq6k13RTc5LRZX3wd2ppfJcHxeNijegDmYmE5vv6BWq3Ted
EKsewW9gtuCUAqgFdtYpqn0G8d1p6MYVUY266Qfh1MBn1C76+xdHH0gj/ErrU1MxQJDDKLGnriRL
TvN/QacDsxBONIqhy08Y6NhgcnuqADREMDF/dUIX3uHHnIJjTvUVWnlwpSM428epTwiHli90DiNs
DDkSgvGjaIzcKkiJgjqcE91l1NlfdoUJ6gf0eVtA4AXRswhy1mfqPxzJ5E6Rd5b4U1IhAgnqCHqc
44AVqy8OCNZRfwCen+LbkeYmqyQva8lalT9uORU9t0KhV6H6WA+qglEEwwzTF0mxNmG90BD/J5L4
hrgsR6LPxjmIA3f09jDSCvW6PIzuEINNXHZF31Vzs5/X9Bn+0QOJ5LD0cCMFDCDvNlH0O4TW+V3y
keYvRHqdNTJUE1EG01N1KQjPeWLRceM0BgMIQfViCWyUqzUJpgE8lqUMkSCXBTT25l2TlIRliMlM
m1c7jgNtiJd4qktOB4eWT2Gbf+1oH82I8sQ0iziCMKK+se8eBbemPQajOhPxOnvH/LVJ74+0w4Fe
fQNUUaGzSYpf4FTgiehzSUbZIH3sYSoxaJq7Br4eE90ksj7n2/rIVpba9IYp1LIbrf5QARcJcjDg
tVqL4ZsFdRjA+sms/YUA+ZoMDTTwM8hfmPHOgEQ+A1qvmF3XlfP6l8WduziP2XH/MFXUZYbhakOs
ZEETLX0B0hxcROzdWVqPohgJrNMjA4PtK1Beud6BlmQW2Ck63tRJHqJaWCMchJaDSi7mOFbGIrJY
ytarTBtZA/SFJ2C05YoU13D+r4JGtlSMHGhxaVn8BueVriZh5+1wqnj45P7112p1E2zLKkB4NwcG
n5F6dVWfFgwM1mFsqD36eRAUx5cOzm0h6/Zwn2kL1JqGl/1/5A48DzRLey3MVerQ0kxedakrwZQu
WFUKnSpIqUJqsgUmvm66qvKNcvQFT3JQPCwopoGs+Wv84y0UD3xORQGL2NNdi6LCplJkyNaHzchO
d2FYTuLSyrrmqDv7VxvZDPlrEWoPE45xLvpGuj+BYBGWQEbgKMrR5Z7ovm6I8CHAlIrLlPr9QYND
QkVhqeBMcXNzH04FUrL8by6pSLChgLmHCT4Ik22BMHKwE3I62rz2cG+AjjClrEfJvrAxcfLqF2AX
G3+jPROcpcz/Z8vmZfP5BLo/jquHFI6CzPZzhCR6jgPw3ahb2/kvddI/zuBKSfRyRYxzWF2a8WPl
PK3G+Y6iTcB7e+MMl5Y+KJt285vY2JzmNw31HsJ0p6E5mIH/gq69SZqOmD2kOOYtv5PKFBbp7/JF
OY1snhowwucEnGD30iL6MyLYf2JL3J5oU6RzjFjsOaR1V3LPkUoOlDzxHeIes0Jx6caasdS6b8kj
olh4slsGewNKFrsUWi1ZM9LPTJP95AVxSzAMPdxgHRXjYRvYF6zZPzMXu1Z5mIT5ZF8/ulGNWT6V
P7yzr5swkUt4hf/fyhB9bPIsy9mOsFv8ZU6qryRYR9Wl6YGKsyobpR2Ndls8N+O2M/qH6puhdsvm
DWwlcPB42xCcznnShP2YjkK/FYYtqWg4KhPFNV7kxJAoKvnUV//0VvAJD+dL9lAJykQy9fYROLsr
45SVqxploNZ7t7pCfYL4R3gzbT5asj8JSHAwsIWfOpLvm+1pErsbbOtZpA0Ts7uDfy5jVkgmMaHk
8alLTnlyy7OsR74val2euW8gajPH8mmERSrCuIBUoQGDv2MynSn+KsCScenKOLizy44JdjH83Z5b
4VJ36e96Ec0Iwjwod6KZzww4rfc5WL8gHAacbD+f9sGaWP5juOWqPjjn5Ot9/nyAbKsT4DOuJSm3
W5+1ajcZMuIFYf+HkfS7e6uGgilZ9E+1KNQGA7pitsPixaCPwLUeqpcasSMQbBwnl3h03PKXI0ea
7w9cfmpCtbYIB1shNQMc313ibkV7WgKhfDnbNtWRdFnzL8/P0cs7LIPl2I0zuPATuXobK/qnBDf5
bWqvAkofZwx2+lgBv3tNb9pI0DuBBN65SQEhMCyzi2raa2P6dq9WsktqMtzCscJeougNFQBy7MxF
LB6zfGcuLc2pKWLvMIYVb0iMxZyDB7h47XqIrdILJ/PdjDyAKc2WIKAWFGhfGLNLOnVvKdK4v+3U
XXTGv3+68t1+53fZyFkHrSpUOaCzhkOVQmJgIoUtg2zGcwvQ2O8mdBZf4W7DgRxzYLLoz9K9vw6I
Fn2Lov9eNRKvwCxYgTylLqIbBe6KhHyDQ3EINY7kp0pCmf0xiCPbRaCRimZsRxqV4EoLSRQW2lcW
rBxsWAEKBrJz3jt7cYcZFXmaxFeReobkVc/TdiQpdv6HN+S/gsXZZZU5F5Qzv/ZrfhkkUrLEZgvo
5Xb6RllkAujNN1ky+fHrmM2ZoBLxkRWxyQo8uy/wWGbyhra5ji5ouixUInRTsR0JOfGmEqCrIbr6
5Msjz4cZ5WzjBd9t06KKB4i0EwO8WHSIRDz/0B3OgjKqEDvT9lVvdTVX9RvaJXfiqC2a6L18Zmjf
6mM+LPYuKsProGHzcMvr1Dl8wZMxyYM0nrgbc82UNSHY1JGRo2wfmFIfOPfALUrhtCBI3CMcPQsw
l569VW27n1BtagQWfdtLiGNLUt3vPXls9EfxqknMvjO3T4so6DhUGJfUlNMAggQeQbNq0Gayw5rq
cNYTxzXFS2FC2lNVhzKYvCb/u9Lsl+YlxTfLLMaBXh56zcc8fGNpTgeGMAhq49I5OUSLHKgAsuC2
KMSq3NaczCAJz+GZ4nhPdG653Zt8bOGvqlzHL4L+DXfyq9QXE6eSI2HJ8O+UFsCemGspaWagNJ+h
fOFiqrF7UYG5lh0WeflmSlpOXkegwBnjRMfb0+xehKN9wq0Wt/2j+wBvFiTIzWR6BN5C53fPnUKb
iecbWHGIL4fFml/dOEpXyc1tNvfIG8cz/Jf1KJyvcdzRFMKasK8DyVLnUG1hSCQijLX7Y/2KU6BJ
jrqrmoPWye5cKIwmXkwh8oL1C2UAZfGQlpEY8npyeRofK6om7a9N7ORnRqOBxOMy7ckSqlWoqxOv
SeZG8fo6h5U6aQWHunZWhofJMHIPM/uGittg0JiA7cp3EA8kjLSZHYtP00hKtFnMeFlcNJrFV+xd
hKIvaLLbDLTofvgca8CELtJXyHYlkWiZiA2ydvAC0/dzvCdFMiS82amzYr5mdkXYPA8KGitqfq2F
MRhIAq+kCY35iz+CiDXEHcX1yHe6F4xef2Zt4nw+muQf2lEpqCQlMpI5+taB1Gul4cbffuefGzqf
aWJEv1em+Amjej8SH3RQfzLrBoPFa/kz/zZZzmZXctgl0cj3SK00K7LYDw8FQTu9wfEVLRljYcHL
wiXb+1rU2GEJyAGlbtq/P0YbOotgeap1OCaZP5c6P6pfjRJQbd5dDZSrMfAmlVEt+CDWMzodgiLR
e7vyo+kFv5ygj+SGyeKn4lV0AXwYWVkRNBhazwPq/jGgG5Nsg5rt+/DTyEInMmyVBWX7KPEnl7Kb
Cf/KIDei8twwyuxTfh9T2KaZoungdGbgaKqa6gxAclTXrmAKblglJMYVahhUBHcBBV6xfsQYpuln
G96IaY9UJDaiFs5L3HNtLuA+kTT7tKbmmMjTFL5NM355qKib0EqQnSwNTSHis7bzeSBvbQ1coFLM
AkFrogW37NcxjW01lDBgxNvXWMtKZIfi093nx4KnBThvPW4PEwNifONLjAqeU0ToZRxUU6XFPlAy
HDjkshu7YuaShLwfyxYVW0fMwb2DRB/dGqu06l9DsueDCOOAsTM1wckOUGX8DtqklR1EITyJZgQb
9MQsnHAD9hgadR8uGSYaQAxdPMGDepcwC3D8zRUalrwBJXUElAiTKpnYvo92yPIWR8ESE7x+MzYn
sM56cmj+5hvCX2lq7Xup5KrPF0oqzELUGeYV0tVKYYrJvZr15rKKEb6lbfyp+hOwhd0/afKv67CW
52T7lwJeAIYv/cNuOT2irM5HTSo1r3lL2Q0R04JHrdOjkhH2HeGTWni6qLLfVuwEJpc1CyE9kESd
UR8SpXN2qLO1suIZTGij20EktWmWHq5AZhANY7+QheRzH2OzustUQ9jZ9B0P/u5AVyTacVhKNcti
2KmGgEjuAs9GXNuLQPepZ/ufIehXva9hT4pAiGTcFPCUMzbjCEuivOz5H4Ydna2mawJPB3pTWm7l
/hl7dKJqmBjH0NsrH0dGQTq5Y0mA/RkN6kvJH4MJjoFvx6b2oMKqDc6iTLhWER+iJUoOMa2EKoQN
i0H9soS7S1P2Md9XtVzv97+1BOdg+Zh7yhphsfKsIvstDKkIYf5li/N9+gRUsT/bIvlJQGavHHJ6
lZXW2z8aaV1zgEkoGkjjAvxOPxyEHMFXrmcJRdvUskZMY6XkN7lQLH/2ujzO0LhsDVV/DburjPX3
2ntZIR+WbeaWUQVOiyb4uob8e+vvP3RU5Iin0PwnDXn//3342gSPB5yAbAIdkYblfJPnzNAWQHIk
cGDt/n236AWNXrqMbU5W//n+lDLXKnEmwteoLMgIVJYFVwaQ5wg/wihLJ0kmBpCIzwpFTfQdgf60
droVtbKWwg7n1VHxK27yJmX2I+gwNw6oZmgpunAZengsTJcOpGhMluNcfJVheM9akHzFtgtv7t1o
JE6rp3Y9poe9bIMEQ02mzdrjDQ+rxAas6oElAG99A722AyiamOGhIrVV2m4iwxzc4LgcMoQ2FZyN
7IxMj3XRVZoXlg5L8OBsyV2Ohr6QOLfigZeK4xi/mQnr/1XdDgoTKQ2BgSnr/tLUQsZvsLq4byTk
h1helxPll1flyB2wxHN2WbbN4K7TlmY2O2yeYN/F5InpzuD+BBdE/+VxB90rBgTGTs7ZrGatfQlu
mS146clMaQbgYRxotNrZXZXhM9Ow0H3Z1tk3N7WI7J6rhy00XxujKEquhtGfz2JDia1MKAT23MF3
mZazZ400aiAFKRcB7qCtxhG9aSUuVRFh8kyMiP7M8d/zT3zqM6cGFVDIImz04Lnr1iiO91gdUN5I
/AZJAkGLqY0RUkmDc48+DimInpdctfYTbE8zUocyxpSYUrqh2ANTkBh/9nl8x25uYZ+WHelVaZYt
IrKo8Pkl1PS2SMK1rIRKRtVRZ4LtJ2/1Nv6dggU2AHuoPc2KceGWQGcHFkWgZjbMgUVFS8EbftnQ
bd3nqoB7bUybSBIstK2QF8SzQ4Pf0FP0Mf21iyMEOjkmRuK6HgTUBVK5FYQjNvd1yyr1Jrjkarmz
XChlQWq6Vrdgq5aStrg+/TVmym6ic2w9WXuRaRZo9Og0wCZJ/RW8syjrUR8Sy8S9+t9p/Gen/rP8
rpTbZPxmPXsxMtWibTdCJculLKe6l/qfwXbdVt7pXiGCAxwXR3P4Jyg0a0GPkrw9ENVL/PpMnQvO
aA5D/N2IbsC/8ZabWjOW91kuwrRl47mwjacbhoEgAE74VyDg/vQ4j+z+s34MTp3rteguX1qKOT+X
jiarG+/EagFM5dw1KSPKKZ14LzpuKzqqV1TxiHSCbfjuj3Bwh0X51jCm1zZDrJR0+pn/JG3ea0XA
cVSsvTVh+YS9ZzJfelNgG/Kjf7gdPKfM392iK/xQMTiZdnJs9qg+A0reXs2fLUrdmFlEfey5Aoya
7493DCS+KttHAxPbhKO6Z0XH4aSqaRrDIgIGAuvGB22Zi7ew1J7aUEz9SJkrYdmfVgMJIOjF7LaM
OTfLlFNMJFfAAMMUrEDgMZqIlQZuqmSJxkHdB75vaATSlVhht/DSwTLu07lXxCpFypjC+v6pX4Dr
Q1BIRiqg0wudNJ88hUE9TBirfU9lm24U0FDp1lUkO390bWBfNCBADNo6RjUAiDLoadSeuVZo4d4b
g5ObbIYgGfyxhnkK5nar50nQCVL+Rbh5rsRNm1mSBE7uSmBWs6cNdw17CsyZ9AZ4Q8dK1i7zam1f
R9/3Ticz6tCYJqPE9DyDzUmxXdIGhlUEjVWG6bMDXVKa/WbzKMePFRTKkOF0vx1I+a+CZM+2Pxir
aTgFRGV54DAvUJAdpYSRlm9jSiirqGWiSOhuVEmooIJCc71h+i1b/vLUJMQGbkLexLMcUez3szyk
OA9cfKSPCxQD1w0Kke/0Ipf4LRtvO/92XGrNzhC6xYsfMWHPSdro18NZY1GKmNIAnUxrnK/zqH40
AMzFiGGGyfnYPEZ85U2Fu+WL11hQA776RlQFFobqb+YfyfDFa1KaY7GYKsh/IQh51qayqvQCsPc1
qFcAjDKgdUYHkiSFtKQqndknbptHmi2zJDdSSqXBlMMk+Ntxr0V2EGwJdEwrFRtSj9hTYzMjOnos
ivMlHlF/qCjUn41ANeOdDVSlCJAMzlbPm/QVWwAAKAqy77NNGUcZeyRKVBQ1LjkQPzweKOzvWXC3
7zJ9E3TnQVLMfsHRrWxNFAo1fckU/gZfWZ5l80SBNfNg24Ni35Iags2FAa0c+AWzuTHMHDDGuAJ6
0lnUrAelUuyUWVeTukkfs1RqlRmAqMmjrtn5tnj9Odjg36AxBvqToGBIiUFh51QfWf8QIW3DN1mQ
Eeeh2zY9DFVKCrOS1yFJI077zWpt2cGgSgKt2fyWPgdRCw2WMSTEU0px5OBYyY7kzGGzUzK6F3Nq
FxYhPjJX5ZrPC0Un/fKRYwhvcgxpp6bf918BTjI2RvsVj+T4yYpVlycvq67M1eqq4n8fCK0oVaTV
2bQcNwGt3HkEZpQ/pYloQfna5e0XNfga85Yb0NYiARl6MAjI9pHXgqGYOvz/SZKiN3Kj3d2xR6h2
wgplaxUq/UaXqHKKAxdVQl4XKP/fhkhfQYENXesXlugu9w86Rza8EYoCFxyRUrhHEgkUSn+QAJkH
6eMJP+romuSZRw06sgg2o13YUq31JeAdCBZbNcEvLEmACihxnror+E/qNMNcbTth8xR9MJUueaJN
+IFjqx1YXV0yr5Oan5msE3pGRb2MjMcp6iNP1xe7sfXVObpskpLhaR2TS2gg+FxewS5gvp73lEle
/WWf2qe842BvPi2Ye+rHrX/xADHUMq2UMSLgpKP820gXheX7uZd9WdR313F1Tn8LVLGv6UGa4FBg
j+fBtamrLVukUtTdTqWcEChpdzK3OgcTPz4ludQnAM+Gap2+fSGFi/FWsdYGO8f8mr6gD5ok3JpH
E3WQUFKWrtQOKngGck2zEv2P3YJwQCY5xp+zxzVRiXI5+YqVf99TI+M2Eh07PxafthTS6bURm1K7
ZP/CLduumMrqYm6emBz6guu+/8cn9IdOS6uOyO9hhUnH3/WxXT+WilrUsaHfyo5ek0kbeT/JkZQX
WOeeFEu7tIPXvoUTObKWsSnuJFlm7tCSm98n8zyZ89xuoQS4+QYE9YLY28LOcH3eI437hUdVT7ss
BiWbw91rmfKbiXnAZbFa72kK0bN4cEHjIWBzaesCZzr3JGOHQhSkafe0CUTIKvlByeMa3xOIGdIh
1kLop8HYi8iLD8VjAlcp9cuchVt1IBeczEQAKB17Bz+WO7HgL36QAXvvrkyXrzvny9qQJzhTetfs
SXiioyinlBPeVbH6VqUX66yRNbox3w0YEuXU4Oh2wDK94/7W9c+pPXWzkqq7D6snAi+kLlLKXKwG
SF5Iqnye/yN0iy4Yr8StNzP1E4NtIJC3vS1En2Q75f/xpJ7IIYa8gBTjTAt8XqlmydEE8U7ZTYNt
UmQ6onn3MF5+F1uxvSVhb/vX0BJQYsCkbBiHRwAnLp6gCmuGJDrt4r92owBkUzcMJvr4HVRDahe1
1H/E5YVHF7S2AhdGCcXCEwk/bwxE0zkrxgCUD+FK52QuXdyAQxE+rHt0Q/Y1DqwHUDpDL64XGu3s
ywrkR5rEskepTBvpL64+S7kWinD/EhgehI06U0IXflM7LkmPAdoQTi5JtZkTfqua9crZhBALRZ7A
XfJWdokd7nJHk59L7hj429jD5k7+r7FovdEGRg35CUEN5M0mgQUk1Y4V2TOKTRclbbBu8dVJSw6n
qxqRQ7fzPGOtlEf9RZ5Ef/mm3YRB+Z+vmlqaYsJWE3RwhvuVRVcCMdqgl2LaMU+9Ps4vLklAa1PV
eSXx9KSJGfc7SkTgF6VgMHh8X9eDxE2o9BJLeba0zCQPhAOTImGb6BMYUukR8wRH6uTNsJ9PUurf
arNID4is15lHsVoirK/Y3Mje2OgL55jmbTnYtFZC3J7qiZZQsrDuU2xt4ETZmY1h4EfzFd3LVFTy
SZ3oqIjFP3DxJlo5YbDQFI4e3v1FRaYhoBxz7h8cAqiUJkIJ4bDs7qW1+IctyJW0byb4f7iIX/tr
wPCKcA6XjnCnkMCMVJgGF+o8dM41sgRgTm0oQ9C3JX0/BC2pMZugEbQIwU3tsqmDQzax8xmChl5u
n5laBYpyis08GbMxcN3BMShajAIpsC56IaiYGUO5FgxT6sqgSY3FPo8KNnzfbJAX85ufQaBxKw6g
da4SR8NUoZ0kektI3/n/2jPv0Sacvt6KDKqtZjbIMrkp9iHbpEIk+zX/ixI2bdTumTiodxK38r+2
WRI8jHL6pioO6Q8O8+HIxhcwKCqhW16aD1PdFeZEI+4rjLPM1NG8FCXgPBV2wU/YnPEK25qUV1Xf
m+HGldi3zSOWrdYgiXsExjg82g9Hswd4CVOGBuNd9g2w44BEWYAlowvta5yC3Tef8SsWE+FFmYs8
RzR80gvfZtpu4BR6eF6j1BjpQhVKUp5U8De0gAe9esDb8fQF0a+X5jbUs3yxlksb87Vxq3S7CffE
+5ikjzzArwRScmakjVSyGP1VyIoexf/8flf68f9NkLoRXawc3fBUAphoBmRFe8iahPUtL1/Pc32Y
phaTK7iAunyo2HFH9WBNo92W431Oma9S+OnhCobQHWIodmJTzJqmCELzFXWTVuWQ81Tg0NSbxr3a
+7IJR9OnkRToitKyuxhjZM6o2S0yeFomlIvouzr7l47MLdP4VcF7I5oMuPELKO7T1uAlhWcje/uI
W9XjQZlec08F2CGgCugwYmyS373uvZsvzg5jdk2QxmUdrv5pBACQdPdtSbr7CRlBaTUlDKeDmyat
HwsbNk8oXKXk9w+mEoNNtDWW++uO86u1uMXiO7H0yhz0yUfpxlXcxG1+wDVwfXT258qhDDXvwE3a
QcWNHn57hYcUrySsz4wCJ/zebX2ot3EFP22OJ+T1X/2KhVkx9a9WoCr05KmcuQ0Aa3LIvjapqa3y
84hOcIMHySMqviSJXDBjxGNDnz7n3ovyHFi5RTOioj3yvBU2ZnCKgsDfxdvDuTWxhL9u8i5VY/lD
x3aBPQaocdF+fxI6hy1muHIddXCgnCKzBMQfc584zPIfeTXoRkDJ2kXbC8tQMmvWis0+dw5EXc0f
72SRg8FLvHXKdW/Id7FQrTkehRlKQ2pu5Ay2Pux4sJG58cbMTbfzgzKWyiOcFc+/SiUazeKFCBm0
zoDP2XkSyelHWBO6sjMOblr5TrihNnMsIVq+Q+9DaxxfwW40etAst+eBXYEhJtrxiYALcnHVHsgh
f+Bk2Kv2PoqnnUQ5BzsyFA2QXwiJSwAZ6c/7Tyz0W+IJDQvwtmeeMtTWPrKIg5/ITBGdw5Y1F0/6
dtbp+uKWqK+jdE/wJfNqAHNBF/E1XMkjHDpAPtfjDthv25LQ5QEkGzchVG/jF/s+ByNwgQLqlrgX
OqyLfzJeTstsij36U3BuOytT2vu0vMaI2MurpuF9qWoJfaPAkk05DmeDUgfHbf2VDJ5EfV0P+ofB
pe2obAmBQ5Hykttelna1WVflUgxwybFuD51t5akrGsd6VLlW61HN3dZ6hDI5SAJ/4n3b56aPEUQ9
7Pn+Ad0AeIRUdDSAHPEAyBO0dtBFwZG74EAfSAvLCJYcKnM6pombnylMiK4hCSBGMTgy+IsJaFzG
NiUlabU8C7Dzvs1KqQyON8XHsS/TAO1Bgiweqbg1iV57zcV5oopEaWikTSgTxP4uqlij34vmKnDp
Nc5Xt5WN7Jw4mghM0ILD1PjJd2jGm99/6C6Px32uGcB0Aq+tC0bel0g4JiRCS5TWpJCVXAKj3nb3
BVqOwmxf05dr/wAMUm36TTozj/MwypVySm3WXI530JAu9zoTG0lyJQGZkzTkRVXm54R7gZJzJtpZ
TOfwiamPAjfJ0U7Rd7zro/uYpEXOyvPG0nEQEqzGgHUmcVqTB7L1MXhtpNdFO+IEoDUic21REqSh
mZpwyhs6+vRAxQl0MpEXsXMvQUpn94UWG+bIcWAMX39S2rHEYd4Y1NKex+JkDMygTJui0JUGWFfc
2pS7VJIfMBc6wWBMZHQjnNJJ1Oq2LX55UrYz9CG5cJPYX8UhuYsVq550uwOQvQwymc1MzugMDveA
0haewDYBJa6R6KgugdhtXqMg0gKYDMNNoX2VKkasxQae82scxer7KKLlw9PO+ZQIZq+JFXs6kPdW
IDL2I6FRmck+1ZM+lijud2D+Np1nItpUK7ejPJOSY7tDzAWqnc1h3MWtzcYuA7JoKeYk2AzHnR1n
oZphMoQIpKl47xgEJI6+ET1qu4+JamHd9hXctSkB8PhG/Vt+gD42F+og74wpXnBpJwgiuXExw8Nh
l6c8Va7u6ezNQM4iNQpRXzztmaOE+JFgPLJ0Gu7UAleThsAS/7RUTXIRrYgsUqXN49INUAaFNf4w
cUpHwZ/1T7JgDi4188/Xr43+L+1Q2/sDiYsgcAAZsXPiefwXMhXsxbj4TSFssxbcIcwUXc2pF5Mx
rkXfKSjGZ0VPlk3KgZqHR2PdUWE+IVuleOL6ihdNGFryzMZ+M0300GwCoNrMc0SoRBuinlqV3Q1G
4kixXfb1Os9rwTcrA/Yl0ng+KdVyph46JQn54Xcfj6weHfALWan/gI3D7XxFHf7y6R2xx+XcBoru
ldSjFUHWGfBII+FRxs0QdLoG8NfpHYP3sdVbPI2K1O0l3lgcnIZE+V3CEnN0AcyocgWH5QeQi3H8
IcVrucKGy87LhdZ0O9cOOjPRC6DRhggJNCCqSYQzoEzVwp0DndLGy3aHAeZmGD506G21efyVwiC2
0TgRIxRid7YVHzo4176+8OtSz7Vghyom0Gh3+PIgdpQmfz7YRwb/0P/6Hxdnw3L9PESQkUchJkHE
g8anqw6kKptBEqOQMSd+lAcL91SjzhTH693IjG4tMWN97gDzQdWpIE/50dxmfCEFHx8KiwW9XPX8
MEYtQ+2fH/n5UcIqXnEny3g8iNAmz+CHud3/i7egzctZrcpIGMj2Bk0Bh1mv0kGbNy7bf0OoPZpy
TP76jh5NSEDBcm1Kp7SdVjtjo8a6T13jz/IlNKrTstDqX4ZNesiCc+xBm4HIonUVizBcdPNG3c3y
mtFcJhV/SucSDT2HVrDsQGvpTGzw8eZurDNc8xYy+bo2DfZrT6bx6gDzP+1l8MpiBkKqsWupKYDB
0pSX4pGAoBoE1E34vcr+G9K4B6EvE6km26yZrJ9W8F2XOwIdjP47QkHGED75bRs1jBs6o2SwvTBh
Rtjdn6Nz7533mvdUlue5qTVLVllO+A1uBX9jjD3DtyI6uyP1fxh5HPjdfPV0T8nFcihTSk+iArBn
zNFAnwTR5ycf+7ThbE8XmTuTX/BNeD0bzlfs8hBSAQxD+ARH3Pb1jujpC/S/d7fOXiuA0UZgqiyu
etjbKK5ADnzXJJzaszxoSkztxx31lgdHBJxIsGmLGdQ2WjsXs4GO5mjS3bZwDNJbSQQXRaZGx5+X
eowuJEgucQ5TMIgZjYAod6kfDYnvdLP4o3k4ijnwsfqai1qCaBXPCYTSsgtop3yoe6HX5YsO6qbh
XFUpbj3dGiRnWJabHda+DH6zriZCBliNHZ2KBGA6TqYqVihutXrWEg6v0xspj/ej7/ySp6WsqSTG
R3rKwy8t5W9bEK+wZw+SbfVfQXxrEcHB3owi3SRSvHh9fiBYfh1KQfHhCOndB0yVhtmHRg6+06ov
RF4Lvs5LciI/pQQbpCjDRLyNWf47k9QXlBsfsq/e08MUtYF64Gk48ijF4PA5bmaouhiULCaywQng
OE92JCKlkgyMazq3j9cCQE1lXa6cVCboOxfBCyP+U+X8lTKHqf6J4W8k9x0XZolZz1zU4uHn0fg5
3rqDXQWb/RA32YE83epJtEQ9ylo+7j4Dcqwhu+CgPVKBOYnGqgJ5g7X7zLG3hrsWtrENeI96nnOw
tXIPV6tf+MN58ehK3IRYspPNJtpBCHj4NLVekF12B9nV5tpMeZg+NDKQp4ZxBzhcKTgsBKufqgEL
oZAD5lWCBUaHuGn+IykiKEbCftXIZGGMtyoReNV6M7YbkC7z3BU8BHDZ8agY7Yc+eFlY4WHC9eB7
f6DXPoNEvzqaVDb5lpXY/awrtPdnIFhiNdlIIIc4pazV6u9gKuwH8XMYtPidqLR4gLumx5rXTmSV
oRKX/kCEsLn2/7v47QEUctHyqfso6uzYD3Q7qXXdqpfk6CNFneC4e3joiIdX5T57uo0ovbcFdjW8
sFdtYpnhNUFNr1OFPnDaj6YxS4KX5TGL9AMLnUVjfaRHykCG4yi43IAqO5zz7C4z7LghCFPnXYPQ
6vHhMKckaj6LsfYzHC0InztszepuE3FvMDe7fh0hVK41w8fA2eO+ECjb/YlV5tTAtHWQupNfcE5F
9xBeKzLO3riBCd4fo807IHynaxEBZ2PStsnAJbzEQDhn0ClJc4WdVX23RXTcNHNJ/5OhkmFfxeMK
y5ZViftdZ1FhgZFjIpp2LPJGlp/+PpofgqYLgj6Jdtdl8TIpDttJxKRyVOrznFi94vp6AUnmWOzm
Mt8RIcX/tnFkd5vX4qig4N49ej40qGOJTr+qLHtHB43e/S18c9qK45G3jTcbP7mR5gSGTCn1AGGC
dey1cYXijoI92mp1/I5mc+khnTmqFPqcCTd7k+tA5/brJ0qit8VFX44mLfqrHirIXX1nHt8ps8I8
wss4IwultkurPCarz0nK3PWd9u6QjYKuXeswnweTk4NFsHs53VrrkiOUfGD5a8BQC9ZTYKUClGCe
/axvrcTT6gw09U0GiQwPGTCQdEbpeHGzjIES8IKR+GAIY15jUXZawcWtJLmK6XWnvx2GxkGObWQb
BdO5Cq/RQOdtp1owXBgtMGCFBNdO2K/uJsXlMAALzUM/U7xRjZWiCr+cYu4BnYVWd3ELrzr8WSm8
Ryz+jRGC/RsjCZ6roUw0PdFtH8Sf4eWKRc6VkFC4KF9gwA14sQWnsJVUDqFi3nEQYm1CzrM0en3g
oYD9aIBLcF4uDUrjhLke6f80WtE23q87xlhI69XBaOyQUmU/vAPVKbmWFhtkGejmvGMtic877Pr9
oztwZ1gxAIZ+K+7MK4UTf9bmuGQlhlEX8b2sWl2+SFsIzWiRzqtkg2EAOXVrq60Ox5UX8vtbPCsD
98v/rDcUD53zGfRnv6TWioNf4Cs/6A4sKgk+ZRGWg5ueQ4GyxM1HJCk9OMQf4b9B5xl4EV7aECUB
RJheHMTE0req2mwEeT0WMbPYVXNF5vr8b9L2y9S+cgrCx3dCNKvonRnQ4ssLnyxBoGRMbrAERiKP
jOZ+Z+EsDF6ThmFsYkNIYvQguPXiRr1T0UBwWLIRqiJhYrHraPOl2p76fXTB4nrIHfnbMiuicbMH
1di3kc/DvnyjmFYhtqLdMy6Ci02ALo0jkt00CF+7SmSGi7yC6Hm4o2Jgpq4afngD1LCqF3xn7BhG
wevBMBY88D1QoYkZjot0H1Y+qsQbxxBvOVAHe45kDY0v6UARKPbQJOI6juoXAcyhUQFKe215A6bK
VpMoA778ybBbb0Ef3s8ZIG5DNrn5xXr42Tx5+8MuS/MZ9xNgahditgpSVzmX9+95+tYKFeL/hOR1
P2r0BJgiRUI4IXKjd5OtbZTMdOxwTxqnPAb/GSbUxa9n1Ufhclz1Cp55yr7V7NOU5eq3AGnC51n0
K6T+3gwX6UdBOQsjRU3doYGlo5strkNhfwiZA2WNEjm8F8gJk5nLu4xZnYoex1+Nyd4Z4BFWiBjZ
YFBzvFjwDpKMmX0JZcyt/CFRbKdEOJMCMJKacjAd3jW0hF1pKfnio4GZ/XwZPHDyETd7Pf+Ob8bp
05brZ1kIkQV5+/81ifvEfX/zcphMYqT9ZyN805jweMnQ/vYYa33IznrdRI+iFOVEyOwR4yeqe5GN
VxeFljJa1S7tFy8sGSO7KRmxlxKAHA4r9z5jOzWg5q+HA/kSmGCWOT1lvvpVFWVRceQqKHPxxgft
/l+dC5HwdBsY/SgZUIzPjipIfWZe7tYo7d1aEomuzs1MwJPM01KKZx6/EttrkJTq6EDxMigaEakZ
7ysDVBhtArI/XJpOAHKUgS7KZMkLUDQKTliWzuMwYhBiOVVp2kNw8m3Uckcf6JTFnEJwRg5QFYta
0zuWJY4eytv+G4xt3IMeT/I8po0+wXPiG9bku322/y2pEXEeqSD9qEXp30yLiO6rs+AN0pPIF7sp
vbWo8JgleYRZFDcq5m3YE1LvAz9RU8eeq6Eq5B8tRQXKrUDP9cL3Sy2n0sUT7NR66juTlnDTaElh
EGZNuMasWaN7Y6vY6PSEDCYrn2HMJEIygKJRxJY4DVOJyKIT+BOr0tvgJPZsCik8CSK3TtyjMa1b
rk57SscyOMnDW5OYJTDpm5eJkNiIiPaq+KFa4Xi+zilZRrGwtdk63/bVvjp0Mx8ucq6gwdOnQCro
ufnK8ifS4ZaTBuJ98/622Am8ssfkjvB8p5W3GebOxR0H7sDPzDYkHuzg5MqDKQlwDxyZcVp2UTva
bVPh44RXb23r/KtXyRxwsnS72mjbO76GUfPINis7phjkuqPCV6HyTtKa8L4P+Zi+Z3uWK7chLmXX
oAvYCv3wGHoSDelSgB+AElZ+8u6WDMykjKt520ttbCk2KkaYk7KCrExkZTHyDuIndgju9XZHDdOf
PioQjC96/1dqDOIRk43jQhR9RCO4DaKL1a5fGjan52um7UMojRU6NhZ7I9vR/iav9z8ZLW9xjfcI
GVOK2bXE1GsnUfDHfOw2Sf+DUkBDLixo+887Lyb2OCosSxkT/Cs54GxDaAR4f+x+SfRzc177GDM4
OGuuGKdV9U3Np9RRJ8MANwa4cjGAK6hwsg++3EuDAUlD2XDdnApI73AbDk254nX+viJnJiYll/v3
a37/ZRkeNNo/bIDU3re9qZBMxJ0RMJ01ibFwjKy70CHRVHDI1Z2wjB5Djf7iWQKm4JwHupZ+ju2E
HuRfauOozu+ZKMSBZgFRtV4aLxe48sHAoFihOa/TF9zSeWZNMs+eAIeELhWjwyPJtjvfODuIJJ1I
GEn/0Q+L/ZAfIL3yCDLnuWSbI4bfGEabJOUePYNtOiHdqGJ2eCVGuwezLpYUHr57v78jxXmPBwFD
klwmDvAlKB3krta12JxwS0bDNIe1jykzZ++NuUghThEGd8TBQjvyywWkhPLTvuJJ2DuHQLsNFX3g
/4M3szLba2SFHTnn6X5xl9c7K96nb/VscvS1K+2PrNrA5/YqqhTCHj92lcJ3I8LhuU+8cP2dUhk+
axpqdJ8ZZf3D8vcCywQxYD1yfysqWJR0eImSDNkF70/Dvjo1ee+LmKvIEY3s1vr3ATwk3nz57wiL
WdkkwhbOHSLoGinyE6yjZemafGq56IQIF9vqqWaqMhv0Cn7ciaIl5lGcKom8WXD+cYzp2wkY+5PP
jS8AHHoYpu/3jlB2tSAb/sdtTi2pvIBB17rTarJiio02Fm9UBprziFm9kxwQ97GmRNPdIVgwwXA2
XL0LdgmG+lB9oJ1CVyoWBRgq9TFImPcORe8UR35yXpd/vBKG/Y/aH+VbTF+U3HdeKy6iWhSHB9Kr
qgWJ7KvnshyRznagn/jkw2LeugcavJlIFMGwpYnlMwRcThQB28KGlTTj+k6gXpxG9EYr9pBjPghI
pZSkzsb+PaZAlVWLfRVVbJHdcUPeZS+f1TFwcBnJcnlrZxxg5qUg3OgyC/jBM+rGLzwBvVVzhx0Z
V+AYreHUjr1mgnL2GuKH1VBwRXbgD/lZ84bWEp+430J0Lvw39bXErqRhCLugkWoeJfaFePZNyvG7
9H2CoQSRhjDqvF8n99EUD2D/bDqnmjRuj53ME3Bt89WCAbyrWHDfEmf8tELP4y9YxN/94f+G2vEP
y65FT3yGe6Tmyh8Yyc9EnyBFvijtUSdVr6F/CtP7hgDVE0Q6eyqQ0r9Ayfd4y7KtI+BOG+FikqLh
mjzw0jXKgz4xtg6lVKN4bRPZZDuFxHkl/eYpRF5TY46NZvs2Ynegs1gdg1mxS4PRtjfOB8YDvNuw
ahUdyrEIa+D8nIFjkn+QKam2AFI7b6RUV8DeYXkX88lAVwNB9tP2WKxXyqqYHMcEwMzHiiSUcRd4
09jf+HZ+2/3cRFijHdMPL7CE/7FsCDDXYj2LwcTyULP+rwvhEC/C5TJsGAZe0XBZs+DiZZjReh04
5iGhjKq6hKqPvtOFeQJY1hK5Jm1URHtz/+ZVdxY8BnCa15FM4C5vvIkIvP9L1P79dwGaNx5MoEMW
KpANHvCgtWzVpWspx3Ud4xgBilK71HZq9tz1SeJbtvLXiX4MQyKXpADbzjPGuBcslJwVCTJi9+bf
PslLqA2x5qhnJid1FFxU+WVVx/GwPngdRwQDTjk9U8sYWF9jBoVO4Dr+JvqGgM7r2OTCpXrxT1Eo
kZV8TF/kQp5U5kqwSUf04BSwxiO7Xg1euJSUKvbFgRLBstDe1PMMlqq5yu/IWgjTzIFAIzKL587Z
6E1CnsLYC7F5lGqwSzh3zWZIshrKSExELtfiob3haFvAWTtu1N6bYLDAb9ySBnl/XpGVZA+sf3Pd
1pG1kEvhkQ4FBC8d0t7K4awlBz6GQsRB5bvCmJ7QvfAhVAWRjK0cXLEOtHLWiq7W3Blys377aMVr
t+5wCrXKOPPsXtKk5/A8JG5Qs2ZgceImeCCBdlDNHZ9fWBFr2nhrrA+fudrMwbJNUmPjHCA6t+16
ePfWtxxDFKn8upNsv7j9s+BuooeTqO5+qKnF/Rlq/5dJisNril6hq8nlnMcfI2rWMQA1P8cHBYqM
23sUEYaNl5iDjRUU3FOo+nV27HE90gJmweGz64Iy5i1GcBnHV++XsfeV9TDA7ocdPie7y2TiaiY1
3usygmbE7NuW+E8L/9NpF8bOPxk3NEuajkTl1RfAeI2ComhnJct+l2NsTTpSUfjhUdqHiDF2KGRR
Omw60fbZ9VPBj65kO3GtMlmAJM6DLDJBT5xLuhWqPth3whb2IFa4uTQQ0QmP0PYnn3a4/K/yKlNA
MyzOk614xPImnKm/xjBLR9Af0nZnftRpTeYNtDBN/Euma3ksO1LZ42UuS4FHwXs3e9cjFaO9Uq4z
v4L0lWsYF/LVJsTQcOGRpYrs1rJ3HZ4mu0vXnfNYvn1ld1WYjz+RxSovzsiqZv1G+xhZXEeaDJ41
FuidTY+ORs765BZuGhCV5K46i49W6rffv7ZLHAIzN7WQP7C7+72hFxnegiVmf2LcG1AzIcrIR0vZ
mFESmEdUrpwAbOK3J/3TP5ojFP7Y9gK3MLLBTbQoCl3cUrspngNxit+L8vyPrfVW0Wf3JoPuu1jr
qrfZLo+sKwo4QxcQQPyhJNDCkDyoQByqm8AXcFQBe5hbTegTiz6a2ki2rN+a+zz6Kh6SRssVttd+
Do4hngmLd7fk2bV/F+GruwpFl7OGMbJ71WzpioWy+O2tMEK7Nao/bf1zEo2aIlbsgwm5Y7epsELq
XnEu4Q39nqN5ylC3bZP7UxUJEKJ1mKYZKk4dE1hAR2+tyEhXeOfWoI2l8lkMHq8m3E0WBwTnsByY
rjw4fDXDzt/qFXMeTlET+arRiPL+Yl96l1dbk4hno/MxyvtfQMS9x4ylTzHBivTg3m2LUjXqsdlR
GWTuYkBdxRgbOJ9MuN4tfxqwwresBUk8REjCSzC3gEvUk1yL+IXh+IiRzcWoe5h8nx+YNipWyOPT
s0t+2MxbvLyTycEfDGEOPswO/jYV01pGPFtqtoM3xNlIbKFPDM1StZ/Oa5yFGk41Dq7rhcI+gS6R
IlZZDGo75Y5D+el/SZy5ohVFLH4rScXsY3hLexegcv6CTU+wjagWDbL4sct7pmNkxVaO4ihnJsP2
KANEGAX7s8qyB34DtA9imRoAdHmaYt80uxgRHKF29fafydMacMtk+Y9/YVghbjO+gBEPfVTeP7ca
WbDHMsjNTPxRDtEquCIWw5p5ueIigr16rU+DGhTCnetpHRX485mDYj7qH18JjXrnBrA1igAVH3OP
8KtLOx9dcz4FDVsubee2OgqCbNLLup4WiTXymc4VyQp57WpPZLlZUvfkqb/zLPRJ6WxX2ILqnin6
+oruVNa5ZQmBEvQgIApXreUU6eJhTWdh/oZaNaysfaeMXk4i3trmzP/uNrbLfbywljR34re7tUdz
VS5JCAe9NhrWiBvq7/XHxUdqliLNG6DRKnATBwYSWuBAx82qrhkuv6ggDcsfHnCIqFASFJvFnmxJ
Oh95IxqTifpik4uxN0IOJ17yC2jeR/jQkpv6l3kfSlDyLGYEIy9AiKILwmSZErzAsVr+Y6o9iy5h
28Jnkc1bBhlcnDH2irOIT3qWW87OmLF36DkKUcSM8L164h6ccBG2QsjBEhUs7MFqhica9IwS+1pQ
oUgL0hLeys2DEZOtDLjw9S/DrsfHR12ZErkQbNibbgPZcp3jgzRAru+FvMcSFwIwwYcy3K6K0+qv
dv4clY+X9XJHrP1AJvNtseJX3eqcUiyIzJAbW+RloD55ExYKc27chPHFV85rfNTi2ZUdodouO5WU
oaDjP/jrEvPKj1VNs+iMu9SJaQ8Qrn6nowKvCYEo/vRJxARwOLJreC3u8Qo6nkZo6GCnjqMEp23H
8ixjrExXFiNPykr8DGSOCdrbTslAd482Vf9tdYQUe14i3ZGeu1TpARJTduPjKW6mPAjYxleHRZac
jt8GNvmfP01Y0ohwWAZR5eW1m+It7ATZBG28mtYd+Julm7aB8BNWGiNIUKI/kiDLOYSdjamMD9wN
9JN8FPgM/wsxYhCdUkzoA9oj2nugxOhGWxNgBSjm/vptIVJa9/uAKDxvcxuLUGny0m4GhbW2bRXq
ZYUfimglpcES2MC7hiYh4lJ6K3uxCJMWlAU3aySSoER2jP9YFSYEh4Abkz7DQLjP9xX6hd7ikzTO
lfmJs8qyzAiF7L2rUlblUa3036xeIbvG78PEDdHu1KXpx7otwOfGug4CZldfR6tHRdxvqHyw930L
z15/2whs/uDi28nv6cigMNqNuROtVI+d8Soo1NpCFAJ7ebC1/jSKC5QMvzmft+czH4g0BlNEnNXd
YFoLKJg/uRs8CJSDFC832xvJw11uaWOUYaoTG7LU7UAY8ed/wnLjelJA4qpm9w81VWvghbXqaNMO
5qG674e47Sf6o9wuvw+qUnPTc2pKPubU84Xb8Q1IZ1hkjx5183W9adYUikCPMlt4xbnhwVok3dLA
Gay7ehFq0DRBPCcfOiUmwQWDtHfsymAmFOz7B8uST6L6F5Uk66B/tx5Z5Tu8tPtBnqadOnW8BhgB
/sEebXzBZ/5aiL/MIusI5VCEc3/j81TqkYQV6tJJ0nXdAVGLwxB5TId3D9Ea+m6OAFVk7PJVmnQv
Snkwyio4gpzKuJHiZ/lKdzJUNRFbuCp4DWqipi+JnO26GipvrdKR7Eye/1d3CCFHo7zl9D0n3MhN
v8VygJbKQB8qEPRZD5wyfMtgY1CP9IHkKtAaNfmjHp/3cnWNKB0mnWN9kV0WHxDIq6wQ/EWoa/pP
d8hxul0EgOTw4rcHHsVpGMUjbk9XS9eRpPHHELbufkXk+jKo9KBELBI8iKz6cSr7h/0NAw+Qfvg+
2rDFZz3s4l+AhKsJj9IXMCUNPIa/BConfDgGQAGMmw8B8KP1g6Jh8BM6hukkBSOkPItppt49hND3
x25v/Y6JWo1WHTEYv/2rDEpOc+vQeYy9x9tshbrHzqgiHAxPltLkKsJUGhxoxw6sI0LGYpNu1Ft1
TN68c6/156NlyxIdhkUt/4ACjH9zoz92bA2z/1bYWbcDLRFQ5A/5rI4OuzCKm9ULvb+O3i/Gaa8q
8fXzwgbErPmsxB/rekYYSfH8cF3L6G+rKy1IVB7jhtt044QbH1jOeW95u7z96uHHPXCzt33hJfz5
jiWFs0oK+8+XSLbP6i2srbq/BUM6H1C9waZ94oTLwu5/DrgBTW6p/5hTu4eGcGWIVhN6VYVUDEX8
2EHyAXitaYQDd+BWk1T9wabf7zUVy5FrZcBT1paq+NdfDPnt294m32Kh9CDxJ5MNKi0Bz/Wcxq2x
7oDP1sCfjCPm1COd5lHf6h1gYSKYFav6X7edgZDbrLEozYhnyjGH+31U4k0biLHO8W31hfMR9U0v
r9gvxyiQQtoZyOiZUNS/sJJWVP51Yd7nvQxdU1vBBP3GP9AQVMWqAbjczyfsRwzY+Q1PX8ElrIWK
PSqkNGAkB9JCiFCd1yn87hj/UGxGm9DwVRqMcjtkFCcMHbzdp/OHNVkoTTL7+FUaZTzRmOdrEOz3
7+eP3wIiGnOsCv6EFCRvOKOChd/O3YR+3PMdeKR/jGXoc+8F65J3iCGsXJQ0H6UYzmvSywscM3HK
qlcbX/gEMv+WVt5HH9ERNUzVPL1xKmZKILyzDETEx+KHc3mAB5wxHtKSm2zgOHE3xPojVUuIYs6S
eNvWL4B5R8sxWimqGp0meQxN1+4VRxKgMl+EtBxnwbFuN3qKuiQ8VQupTR+/8P0D807jaxajUmVP
RhPCpZxOI50iRaGf/ieuKDiOuH3xjA3iWtgxOpLLA0j1u7KxYSG2eBAg7GSFJHwRqU2AKAclRH7V
mecmhwD2KB/bqpaEALsZWxqLXyNNAj9ehkIIfe5rC26jw2tOBHAq7JnrddAZ85hDHVAq969xKVZ9
hUiw+PuPzu5xPe+hILvcH8vRaYZSBLMgOR1U1ph6TX+jA5bNP03HmZhXUwKfAjogg60+mPGxDURZ
+PGfVBL8lWwJchRcpU4kN1AfujPPJMHhyPPoKWkyoSkY9Bui+f2ZFNdwPk+htNo4oaSNFR5NJVHN
kfgNqM45mqm3rePk19zgYAxVzPecr7feE29W2C7KsxzAdWURYe0UywD6HRXyY2O5mbS0DgdM0Z9a
x2urs8AgQ1Hzq9LVLjQpbuhOXfMAdDBOk/JLRCrsOc/f3JvtFHxWzByLc0773TO67Ea8YLPc3srs
cKK4HH+6811qqVdaEIaZKyWyKXGz2QyG4+e8m9nm7O+0tW+YQG+DdjfREsxKwyWgYjYNitXjZnKc
lwYtE17lBlbQbRKdx6zp8zxGfuNkNW78nV0JJekH6phFjmD+D/3n9ZvGWkEs0O8llCkFmeHlJ9SN
YtneuVAsEWdzfaV//oHQD6bZorkFv+BJw7WU9FUdXPa+XWZn/50KlSwzscBweNNQhWrTFEftDKWe
x8krKwBKX3mWDWbZFxYxwEsao5igsWqcKx7D765RUYIVlCjZv4rMxVC2OyaVdwa0OuSG0YH2Wnma
q5G148rzNsnHIxCp07IRNLGiwD9PhHPBhci73CTuVvM1Y1utlshuRHn56Lv6ulNh2R07QFj0qkIl
kJQzB5I1SjmS22rxEEt9CGsbIG0Soz4S31iPepW5AEy/IdMtT8Ti1Gbocot9rgRQQXmjI+WtImYC
cExjxi2eS0is8yt5X3ilxX83BCS0UYFqAiZTxpGUau1HyCgSv4XFotTa9xlg+wt7UnY6v8qoH9Wp
4quyVnSIACnYllpOkEnpz+EKE2s4oHrcnnVPHgpELAKlFW5PzlGaTJ8J368r81b0T7m5QOLxCW6c
nqE9/GN7TOd9caHxmpQ3g0CoMCqnKYtsoifCQdrLu8U4CM46gKmXPHX/Nla0OZJaEaU3uszcXR8V
ekd1ITBaKTQolv93YqqDr3FnapDzjPGonkoJwy3RO8M+eyQyTKdrWjAGuJcQXyTPZqW8vJBH5faa
cE9DjgTZOZIfJNptrxqR0mS5LVwIB2/78pzAYLgvgfny67i91fcMBrOwKlLxwVOly2rpCDvrBThs
TBcnlhZdsdCb/Lj74HQ8lvmXQHsEKb5+8BJFHbQe4Il7sKtdmQfIHvMOg6ssyfG41zM8lY1poqu8
U1fVfS3WzvCpIZFvN7g6GCK2fXVNudMuT+uDkzQGoUi0W1asGujqeKZoZcwVVtxOGcgG1KmwTI6p
B1jzsgtMtFiR/q8j8XQqvvINvEjFgizNNoSX/h5rGhfeM6NBLdM6hftqW+YmOoyNtmXGAUQzsSjb
ZvOdIV+Wvnq9rFh1nycnGKzrlk2V4whD+7I8lAqRzvWlcMT1VbJOzVxlvdx67K/ybvnEsraHL4bE
gtfuccShwX+KR0V9xCWI+bvaVVIsQz0ZNGrfpnua2TZjkJyGdUjjva6eb11u2v8eIlUMINdBgSNO
i1XNd/6muN7rghvwNSQjQHgEWvSB20+idZJbvWg8tvlgqvgB/ALs4ue7ltBfpy8wB5DPbYY9TLgK
wYHS9hR8eyzDgD5CtLOx45Yl2aAct72tnffJeJobD83k+F3u+ex6qfb75M7iJLEdX8Cq/V+YPe8/
1WANe/h4gYpFa06SDl9bu+pSTg8ThG8T2Oo3/Em6kvjWZMf5kBzbGNtBUljn26hUB79FdLXze8kX
U0cpeV1PZ6sp8l+BOUWNF2FzwwA8ftPtAJOAdUYMtgIi7kuGKipZDmJkuC9nFxVztboa/ABkjk8w
R2dEc34gW4TwWJg1wR1BkwIVpF6inxbvTW9op6VknTQyrwmO3erH2RfGl0Mxbekln65cYnHAIWHq
PBl1/Fud6KwQtGHVVaFxwuZ8w1DnN2GNb7GPo75GinA6uGTJy6si/vAxy1GzzXHhYCiOzuEoLrr9
5PlSKcg4Mqf31wlJHXWSydeacFIeQ3Scy3RU7FOEmnDo6IWUu9k4LFvfgKKP6IQqtEMpID8Zxnbz
AeI2Wr1HKzCVwWLrQyhXM76L+8EcnKv+MhRw00og3S4J2cL/f38Qtsy09FSrsXgol+XESIDd02Hb
MfMih0L+Djg9RTyXINibMlHRuB+Utch0y4zSbWJBKnobOLp/gyJhdtc9Bsr1CWoo45etHqPrR4xS
jeqiyvd0ge6CTCwlFWwoVCHR7INiPJbLq/8LhqIm1kMIZPWq4EzVtlMIl1HOQ4a0L7yhLlEkI9sq
5e4M6MkcqoyOzg5CrjPfinsEkoEmhSHTqShWC2/hUjFPlCX/QGszoWKzg31ev0FYinzfk372+ko5
B2fUSnPlPF7KIvmXJxgZfVKp6d8H6xhA/p8CmrHhZtdUttKGsZC4ZQ1QMEaqeB4eXGTfHTzfrxFX
NbdLpsJH4cEK6oZ7HxJiJd9eNOEFDBnPiKqBfipsqJ/9YObRk0kJDM1hVMf148hgpd6QvZT9O2hV
z82kCQJgn+tHkYxRpazPkeYKliFfpSoIlO0cR23BSSCZssEHlZBl2cPjPTysyIXgRVA+xgykLqzY
cMOSl9pH8AQ+ouqjRdW+yVTUn5S8inGA9w5oFAlojKqCnB719HrkPpwG0GUlVWJl/olF3uy5oS3g
uTzJDgo6zjk97Kubtz3xlppYQV9N9J0U8QwaPF4XCe2eJWPWF9tFA+O3KWBS6zW0z9mHn0ZJfuge
G5NrCK7S27dPEJ2BFLYhmo/gjt38rQXP3lAWD9b11r6ZjRRc8Fn3+tdjMc+OZmbw1WlRr39//J2B
HVlfKK3OW4RcCnwPpdm3qbLTTSMgH+Q8ka8N6YmCNF7kiiuQx9emkap4uhyNI5uN5StdDVAbtfff
59h3gm4mpUsmRip5vmNKZsznQHWYMzWgtVHeOSta5/MC4PJSnxy9m5d1eKZbfAgzeWf1T5B7LxdA
hOxlChE5lFSpV6SA0ZAbbKN//OKCsparR43mVe0rYllHO3ndtAqDAWFUCs/PjqGJcVfEN9qCxG60
ww1UizcZIvHqNlGSVTfWPQwCzs+CILSwcjgRymRwuIuL7bm0grpdRZelaaRtvZli8lmOpJZKM4b4
KmT7caOytYfMPc54WmizCAmnTXRk2DexIDXbmzFm4WrHfbf5777SK545stY9fGD0/cPlXjeo+eve
vyW09+WxFVrU3/0zKA+SIlOjwUgTKuq34jGVdA5hBD1Suk4iliH9y/0kwzVJbu/FU/iIJKm7GRLc
2VWjAN2tg5kVbuGW7rVueUXhqduburj78V/l8W2Bjt9rUZF4SjAK1/O2RqFrAwLHGLclTl8/e5Vx
7hkltpDGXaD0UpaLU1hL/KgBHhXzpfZWlbXHn6nfiTSt+L3VHwz3GIFJ0W2FvaemUjbECEKTmmFT
wO1MurPAsF8TdR4wnJjLgcTQYCo7yTbHF3naNxNGvmbxpcyaQ3jagz3uet71QmjBSa8Xf44T9Fx5
ihy3EY7hmjxIZqf9/UxDfKdmKp18laj6gD5p3Ek3FCP8YjT5xMk4qzamVW1G65+16icRwHkfYfY2
nItNUio69KEw8m10+9ISp1b93Hbh64GYWjp+lvCXzro2ybVpbcxq3THV2+xxtocf6Hff+yrHkZdD
2rTPp62bCO4x2/xSuhdH5WVASUCKToua9uJipD/PnGxTmUbOW4biW335W7DJ0/FX2UIXGSmf0tx9
y9g1GApfABL8t/pdNCq7Dqa2hdwLGBvz06EWo4ir1FTOafQtCAwUI9/DtkI+FhDcXB6kZruwx7vU
kHmRvhRNQVQpIEnwjfkE7NiqfOOqLBg715DHmnvoaZFgk3uTsm2MnACk5/zFKiD0xFbWn56NK9pC
dBxZhreR/wFbOt1ghavUnOBDaKrPfMjBqgRJtJAyiSbxd6esgrofAVlfO+3nDaExIVW51ls1x64D
KVZVnJVJk1uXt7EBH+cVDPaYa055ebjgK7FGzY8woX8e/wpfrcsEwyTgPEjzNjB/nWkKw1MVCvnc
5EdPid7NIx6cvjO6tCXHNMbn5WqVUX3o5Ka4MpQKYRKkvWr642hRhN5CJyaNaIBMuusO6yWEh+tO
DkvuwpgklIAT/3jPgJAJkDFbAi/1eKoMgpPNAWhCFSTuZV56H9N2m4HtaxBd5fEwx46ccfhX07ro
ekjSwIzMBRHLzk8NQTW8QEHcQGVUOgS0qgsPwOmg8CxamQ3X3eVe/eBksHo6QBdZvwJq9IXS23Mn
Es5rbi5tVP0TyXyWAwVtyuzJ6l6c9B5jo+tK1b0EwOzVxL2YGz3cPGBc2sH5USuOqMK79NvhwFpW
cOXw0s5DPPNP94j/meM6hK6v8Ck7HG6t/E5DKmpsuKL9p83pbZaT68FAChWnRjv+6OfdpoZSaara
obdVNd6KJA+prLkTTBeDEGB/2107ee+4ILIXEFVYgjPtgUVsMzBeK8h6BKSMJqYIzNmHxZFy4cZL
hJwYvvY1DuhcxmqQEuLj0jueS1LiRQE51+WkJYKcHdqSgG2yuGKrfBd/iA11OfgJ8+NjAeEyG78w
c39kNMkxao2yfs4XPJmQZi0nlGCvnIkMoH7MU+6A7Zv8A2vf9fh7L5Qg7eZZtFRK0MLj7cdAmI/4
d5WwrvivC9hM1SyOu+7XQKVWMkFzBXNRo7FqIG5eDFBqyssjh5bW7v2jvrZqhLNHtOdsuGzqgXXN
SxRZH5f4A08QVVJeTRJZoUimb+/iTGAaGMLoedMHiBWkcQJyd/RT9HJ3v40xxHW+seq1tYg5RZcV
HE4VO9thsn6xFpYjeOxK7EQ5k7IGeTnPueJHxPH5qWH1pLmE17KKiRJap9ancMg+3lW2xxmWAS8A
kn+3cRQ0dkqU7QAg1XoNKrmdEQ2CqupBB1VfeO3kfkcuCiNsHk1nTTWYbGzbTgg6wRcLTsGplVnr
iaVY9vmnPyVvk0LgYLTuMovMnnT9M/RtpUV6egz3uqj4iSJx2Z/uFoF8R1Uxq2XWsx7Gnk9GGeT2
5dM3r015qjBmrsZyL1twoo4fd0eXw9BEOUNvv3xRFY+o5QVMOkFiBk2dC05fOohEKMk2npeWYn0c
VtcQ8l7GvoMCwR+Gh7rpYw/I/B5h93gVS4tcDdONvYa0FLIKva6h9IkW6uZzuLMxDYU4i2c4sREP
GSYcnsO5VHZw7oRZJMV+FP8aryPwCjcLUS360aLAspTSSsV5zDwUCAqV1qulXLm+3KPOa2OXPtj8
5KgTXNhk6wXy3t0boj0xZBmMezSOM7Qi+gQbIPfPa8ws+P7U4jViiV5PKUuEI9pDXjsyYTI/Wzz/
36Q/D6rRHYOdRRv+JppHEIIM2rMHdDYJDt2Ymc6dpYivouZ+enhA12RbupDpHtzOE0rRThh3FlrD
KV+6XAnqlQB5XbOXwEwHHHfVBRV4WXTDc241P+W6w1b9b8Ibqpn/K2T+dpAs4qLuwXTBI2e9SHff
+tU+ACcavCKMHRB00Z7jEuDTXt1p9kETvujisVW+5csCAUp107fjHu6LXe3re9MX3OOrNxPMI2ns
m3cGzDWhANVh9zuu8kJxCTTFiPvNilGBImh8CLbtC91/ewfwpEV175js/NGvGQVnYjhEed69/Zhp
MDk6z1X5at3JkbR8Ke6qt/ELy6zIVta4V/qv9KaBe8RAfE1R1Debpm4YYbkio/xktumfvstC01tK
dcx2mT5Ohr9WsY7I2dTnQ/SKl+Dp0vfP1EpNYVboMXHMUN8aBvMY7+BOOCC7cTo8fqc3oY+zU55N
UdbrbCTCSDNG6CPo9pmNG6+ytbcd2sAnBTvBnxEKGep+1HBFjDIfDlsQ0BxVdsSzEIfKiRCfSvaT
G1odsao56UUgMUq5nDhOKwYbNLd5Jpl+s+onJoRJ1zOEVm1NfinxkydehF1sm5F/i0FHn4vYhrfm
RRc3BSI6P40otM695NEk1e1T/S9SpS0rc1ptIfHdMdQ8YTmAQpodh/xXkO0pcFon41M7PWP6Do+z
wkzBO//UC3E0quUU3J1rrJe7QQ62FmMDWBuCimeURvUsih512LkF39Pb7ceo1jVr1JLm8ZX7LOIY
+7RRLNJln/InttaxIcQsNiKckmJ1khFRBO8H+JGfqAkRDLFw0FkE2CsMtpMJINVB5xbpLAL0Ceco
1FNtudUotPctcFAgixkbWVQb1dyQEV+EA1vtRXXgi2VkMInBZbG+kV6PdG9KonUf4qroaxOWgNT4
rmtdUKfcOXtKPzop52AUEdpyAsMUPmN6mAUGujl0LrhHdUVni1A8bIBePKGwNgXwbM6kmymoLruv
/VQ8Dmgj65IkdYD5lqzOvltaTGw3Pc78GbepOqihGZj0FEvj7JCwQeoOiGNdGiQYrEG8Ae5AfNU+
gp5zhGfYhMjdTr9Qj77waN3hORjRUMlAEcnQqYffGWRfDrtQ5Nixn6vgz2OKWYSBUpvF1OAkhhJk
L+u7Xqw6TRbWtgKRB6MH1zFR5zqNwyNCSBugRqVipqZppFI1xn+2HiWCyR60KZ2EjXZ/hv+lNYPd
h5vdU/5mI0ezQ/0mJUv11+iwHnWrJn1DmCVYRyUUzAivPgCeziXMkmFeZD89OXUcPWl0PZ2G5Ayx
axKnZOpV9CHWz0i9S8NyWY1Lli1f1zKcGrFiRxb2T01WY7BNu9lrOHGB7kNKMNlMnrfKkpE+Yf5O
bz5geL/Em6HvqiikKfzcoHLt3UG28rgbYX6zR0gVQ+Y0rXezMAcwHDp0zUFrRgtSxsCzE381+SIp
TxTG1XvjJ1QOPEJOoGt6BJIubtLD8Qd3qqOR17K66VM0agwZWh3g95twEFmKpz15x1meGUQsW8DJ
u+6uTkhgNGlplPHAA2MK9WFpHUIw3ShojZsmQCgwfbJpbaWdR1MYQJUctLW8fq5h9mQOC+0NG0iX
V2vqMGaDES1bUJ6w+HkKOsJasLt7TNZwYwyhU1Ks4ubT4T1lcyw0suPr98HMvVatma5YL/u4in1F
Op/gzZ8rm/rWevlrTHgoVRWu9pqXQlaufTXAr6uwz7siXQtCjRV3IqmWdeD8HluWTaGDTVSpVBuA
S6rHz5P3Lx1x23WjQOEfVjQfSEdpmoLWwZlBISAlimg007+oKlqMqS3j9/VtXMkdRpDrAC/oRexo
MQg6Mn8vZj95j2QR0a1N0zM5ln0RqS1NOHrbdOsoXILR35Fhe9tAlhq80nywE8YzPChhm8D2UuHU
TG5ETmRqcu0sSRfIztG5V/wngLPCoj7wGIYYZDIRDdg91QnM3omhDH9YntC38oTINVsw5Z4ql8Jf
xujENPYH0DSDvkB/de86Q0hO280IA/eMr0xf8C3EnPmADvzOX4pmzuOexdtncS7323sxDpbqjw02
7z+aM4xP29Sq8JsBnYVY4dmy0/QY9wq+oGKRKQ9VrJ6uiWBe9yz3jOdIol1FxMiFyMptF8LbsoxV
rAtzuW+vspX+irRSwi3U7zXdxUE4LKMTd3VTZgWqi0FoZSwFKgsr0sgv/pAYniK9ivv/1U4ZW2n5
ZnuIcOyI252a97J4QtdReelWZpXR0dlBS2UifIBo76hzeacw6YySFNyzBH2XJHAcr+oxAgtI8S/+
z+eDp8EM2vRh6CLRr+bzhk5C1kqJ5ydkDzlNGDpyey92ip8vyTKXAZV5hoZB86MKbPV+juEub/23
Q1ljT1UdO3oOmyfm/z1+YhxvQ02r8v3uVusBzlU/5WxvKRN+Vx7YwvxBXGPm4gNeUGc9j5IVC4bq
EKtoNTuzUifMj4A1R+rPnpQ1GKCbdCIrjk0z1AX9LwLC1A28B2HtVyyqqyGZXHUZ9NvLbT32j61v
C6iig0xmImSfq7N+9HZIAL+SmCYRhZcraTOlMNoTrw/MrbXcwZ/RKTzTXTN/6L+nVCw1TY4J29MI
Tkb7WNqXIwutDND/9HvU15Xg+VOa1wNpqTdLsIlbEybZN48C4meAK3OW9PFnxfNi9saG2VfGbpoE
E8h5Y5TkZxNAzclLtRto7u6vrsSYObFMEHtUHncSrb3IzUkMq1MefzgvnsCQWYJSHpXK18YktfAD
X7I9NNTbwbMR8RwLtbNVhO+au26jazmg/mRgfg06eQHKMXAQTj0JBSwaldAPpEbNwWZZIpv2BNVv
XBqHpNChv4hkF1Bs/D8ZCWlptHEHewY0jeZfsRk6KSIezsERl7xkdVODVWjL0k1zwnOSgSJpQY9S
gWuSMBl8RBnDKyLgWKq5ttkVlK9ZnkQ2043lj638evubSsrs2RQt/+BwEY6hU3FLkr6Ld9E9DTbi
cNDVUSl8kSoJJNCSkzBxuqM/zGmOLiLCOR6V6q0QmEQYJ3AvbR4mEVKfxeV1fENvMZFiN44BRPcp
suLFcHiOfDEO5KogJibzPg4MkO6FNeg/QA/N4r3D60sq8V12YoAZjYtn5fW8Y48DSx+Og4cbal5U
6oYxZNfvdw9SDgh0FDSNL4SCnjxI8dEq6IJOYgqpWiiWJxk0MIVV9RNp0wMfAQAwTzTyVP9THHoJ
tyacQ2+9yUxUhLdfyesR76BPxaKWEWbowm/diihH0jIpcEA6YuJci+aagxF8ANkSUNjjcTAtKYHd
J6SUZwgMhXcd0JvAFPSXgh3EADu2S/t82Son4U5QZ3P6g+I8gXoYDFZSudWCLx9uteh+Yt+9pbcU
VA6AcgfP+ZQec0TRKDepMgtCZqihCZz2SB3cjpOLLrOYq9KRZo85kS3/5aknIIfdp23M3epLoiqe
eGwSZEMuPGgwwtZQB8/vs51GiSUazAwI/NQ0AvDMyDjTzQam/ZeFa5+MRTC/pJrhBcvbOgkv4NmR
Wjqf0YGQ+f41RHZfjQ/wA7eOg9bAtA+31oLQ4lIPVr7f8F4RXgXOVzyz91l1GXp1ns0HkFaFIoOj
PQ1yPd4kC5aJy5Fn3MPIhQOobWmtY8Y+oFsGcTJz+DKNJJbU1YrCP7XTpRxduzEkLp6BG75mu+cC
5NtAq2QkltebQk9K/Jf/OaqdAXrsHmBENHONMOEAL6OFKaLIQ0zOUG5xohb/6EpUZFUkSAbaZnHF
PteTn/NnX0AGWF7yXdRMEtU0wrJDWl5gTbYsxjVs5fpIqqZLCASCC5UNVWHQ0wit6qbKbCZjlyTt
8DaQZJlKEYR3sB5fRghg+XGTGIVrTVicXJKGbASLkBCfNRQc6OCfE2l10P6ociNJ1OYqRUEE2XQ7
bxvZdkTQdR35DcEwhMvUXCZ1xcOaFuV1rTNOOd2rPKU6gt2+0NuHHnMp1MfMjsr/MrD6v5nLouLb
6eg0cBTqe7OzkCDMSxZGx1zeV7EBD6rmSE1i684OIv2Zh0/yZci/6GqjwpHzZDxy4N0XE7ffq2YG
lXoUDh5s4f6v7P3bEV5v0hIGNQMS11bBIXhMTUhLzMgY268CrCQd0uUXX1WA6M12lI8Bfc8i4nu/
XXzV0Uc5DZ/xi6QuQCaJvHQY0jJWv6JzJEITrvvEyiEai9AtDT9bVWalB/Uf9mFnVdSf7Q4U18bY
oZUKLXzOMUutAneo7tjiSrSB0s5A8KBFo0xLpETpASw+RfACQPYvy288ABaNeGULaIAf+0kWm8/g
0ALcCObJAGjlShm29Pki/V8zsLLHEBNKXCoBB2vbJuHWivlP1EPjytI62t+Lzc//rownpXSd2Ao6
DgC3guOHZpgwG9hgqhua1onXCyQdzr7lYo97/HMa6TQVL5sX9LK5WZrwqPUuiXIREdcv8/REyInj
PtG6ZCWfuYkmrwBi9RCcB387mHptIrbFWkelVBf1g969xDK2tv5GN07giiWHvqayyEIJADyNkffE
gxfyydGzm1zHHmBW+30DYx+IeE5eLjonTzqHfcu57D98Qh73c5+KbNc6/C04GE2p/Uld/tK0IOfz
8rqvgLWtc+RtoMCWhBhtz9+5NjzNe2lh8XHxSd0ym8v+2EYUQHGuV31qjqIiWb9uhHs0czuF1T6B
nqA7hjjyUXTMimOGCyTgUlg7vrppJMpxnSoLASFIoJor6ELEO6ciiJBbuyqmP6beoMi6vxLXhor6
bvLL1tzrlFoiOqbPtDQG8goPKgTnppZfanqOpyBt4TFyFzxjonbIPPnY/GqBhMmVIua6T3POda9b
r7O2hJLRdxVavNLjX6nnpdNr8EHFNrl/cx/1ib3Ekj9m0JrpcmI2o3O+6ZBzPkuw3b5UhdH+EZbB
CbY1wHlHIjjKgqfLuLY4RoFKIPjx7oQKGHs7sf4xUD9LIoNKSJqKTH8/d5DzPhUsYiWhkhAqe5QU
eJbcQufArlgOLzT9Ue39OQdY3fIUh/TbBzdUdU0OvInyR6TEd0PyOqY8DBV1lRj/JnZn4UTiBgiV
pq6zT1d4gWKSOECAqx+sslR93TA7pyGx7GA5V7oMO0kF4KaPfN0XyCXcYqn7boNRvotCACzM/nKp
YkCMXZVQj7vI2kl6ZWUYmQgw72x7z44rnyXM5g6YHcFUaqdhDTKLuwRsvWidi8l0ww+qh58/EdH3
vOx9GK76h5t1xeehhCrFVae7MUX/yHjc3zQ1Vvn0k0dAcNoJT8PY9ieoBkrTPc2RGSj8Luh5efYV
66er5fHOg1cPQJpN1x9FC3EX1ZCz+r9w9t92fXdiwbhB6kprT2BZ6aC33SqVGt6Rl73OKeVGX7xe
3z/BSfL68KL2/mcQeN2Ok0lCsUMhOY/hZwZFJzFdN7fJE+NOQgQWevVXyodEMMOGK47qlESIt/JQ
9XdPqdOeGvLwI/Y2ZfiMEkW+xN51ARJSR3RoROQHpUnVto96SMRzqPZZVlk49V6aZwZtwCtKY1gt
1a97V21bQ8fbrEKXUpTkIKp965B0HJMEFyWWmc96vL2ft/PtXfEJnCbP3vTf0n6XbRYB2OLPf74n
1fgFcmhmf46fs71uffGd1hU+5qkMTFUmU2/GZYxHTYKKFKlf6hqp239JPu7ntQcNPypNLGu/t/00
Hj0QsSpmJHUlbKt2k6bG+WbtlCB+/ld8640IRaDRTLrU5ERNrHZRjN4460gDOYWlfoMsu9zpDIn0
PP6UaTGjyOQYPAv+eSUPKTIHqEgDrloFAhSJQSCWzYMVWKhQgXLXQ06Zt09p27LylaXF7QPcYhQx
s6tY6aU+WoCSDFsQRdKMNLgb4lrYJl4i0nmN4ZG01L00LRXyiRCC5eFTi4PkS1/0slBgT7hsuTvT
Xi4vU23ABTjyyWKVJPhVkfOyKdYbVbmzdRxv0K/t/sdjp+DnLgLr2gyz28tB2ZMaFwsagJ545sb2
PqAZk3B7A6ujqnOygUNvtHPKLtSq3O5yOQsHXJf0w/iu45ZzpJxpwN940AbXLMV4RrUJRO/IwwUJ
7o0w2EfIXJQuj3eR1PS7B7lROE0BE02Km3Jr+cA2adLk4/S3jmo3WuAszDxTecQ0qTAFo+2KF47U
8P1F4VxPrQzsltD1QKMwnGneG/x7UsvtPY3CV3khF4/sCoU16/zKFEprYF2zsnSpaD/Hxs1ZGg4u
wcWt5iWFSoFaz+GOnZ0TbzpNMrXRomR9idR1G3tPm5GPoBg9CiiRW0lS6EJT/mkr71Wj3YOZYwnm
KlhY+2sezL10FgToBj5C16s2DaXZBx9vApUlws1mUSWRKv01cQ+12wyrxV319TTZ4hcZwMQKCleJ
VxfHs7cjNbTH+kZGMLCtimakCtqa6y7J5foZ/GF5EqZaeg5jX9zXjmghSy+BF8isSOj3mCfSAZZv
fNAFeSMRYs69ITPCshGldAhIw5NjwdEvtgYlNtGYTGXd594lqA7uKaIaMW5iiawcCAX+4EAAoZRp
iEC2Cci++n9Yxw46o2DVAu3S/TQQeGgm5NwQbum/7aNNYMwy5CK2HG1CY21CLBH23n7Hs7cb0xPC
pFP0XtVO+fKesSy/7SEXivF1o72+OO92VF/oHGKP9g1IaTPMzYC08RiwR0/hFb127iTsfkH9FiIY
qCqIhxCbbvOFFOhSzv9Ail6X6PDTOfIdjLek4ZqWUYNGCRvjB6Rrx8ez+wkZyT1fCVUX+4LvJBi1
y39RgFxuWedVmcryoIHi/9RdHZXIsO6C/1tzJaO++gYTlefbC6YO4bn1r6mQhbqmoi0gl4oGfFQU
lFpYYktiY9mb77xNqN+XCE28+SVYpuD4hRv2hiit4ThnVUZoanhbXA/AVinJNw+KSqRKH8Z2SApe
3ui1sj6k1ctNIeeOF6BO0RHoobIlk4FiW6LaSWClkfqHXLhUK4ov1qV5gmWEV+s+Gj1FIDxejRN0
IZH42x1pmAdBEEdjftousim2WwUBXdlF2XGP/EjpC7wXfW2W3uoSf6ToFvKhfzanraW5eREZSH7f
nbNk5Jw3NJh3aUt/iWFgHnL2sfEdWcsfMYdkfGqQY3wewA670n2Szp6v5md/n/LOI0PsKbVpFqq7
K3rDbGuF6839UsKp560qqeb7UGlykGsczDovjEnkCfOt9JdAbYrSXLCzDwE03c28G36Z/xNAE8H3
wpp0Srd+VZMdDNnJ2djytI0sWImzYv7TNY+NWby9rXHnSpBNwQkis+A/FiEe9PI/tsIPFzb3NMwo
uOGqY6kBp2/Z9uqvck+GotkPgGZe4bHzKQKQL/WKQtnFXvSfbIcJXQWz4FItfv4LrypkV7YSHxhl
TX/Zbvp6ly212FbDPIAgpsczCq3eCQREK4sLb2M6ZvyxAgarOf15Y5Oixy1NUG5weQeqWmIsF7C4
tpWjvIsdHl1pKCtNtwXCh3s9Kbu+sxjtrbBXOea7/6YcYOCKfof3m6FNE8ztxeQv0J3+oNBqo7+A
CTtJqiyM+Z8IjBPVBFyQ2GQGQk8jV8j/tZAJo1e9eU6JtzBvBmsuZYCaBjXuWEc+hvkjNcY+oMMG
XInHxm1QxjONoTBySqXFK1xaNt254/nxhttkHFfJILqI4j9CO+m/ERzr4XRXu828vDem60lsvnFM
0ew0s9MwpdRpBUGjgwY/IclpJY93Kwr7VS07cHTxcChW04R5VKsjEQtNVmjP7IGxqe5M//o0iWje
PFnjN2LJZ0+SYA4uOR8ybVM7qi+J3FedmK3Y5gMOuzB6APnUB13KwB8ngf3z9+tA51kBofHYeR7l
zspCyLU4jRm6bgDDlPke5+4GMLwtYPXE/VVy3pcyajKBARgghhParmdFFi6OMF1JkztzalqrAqMK
b0Ye1S2k7Kc5bZYvlP6ieBLgNBqr5VrQVByG8izSe77m6eMm7xeT60xifV5M+jrpzDNSjIkqEs6C
niclFdK5aQ7IcV9iuK+nKeUMvpfTkKYXubIBPEoJfHvCZfLWqR8Ln9yBv4tkOGct6wVxIgWKyJkU
MYj0KnVN1YuFYesspOdJZFI2YDV+DGHRMprh1pr2bvMVWxsOnG5IKZy09iZYwwYkrZwhL5yFCZfJ
gG5bRe4HTo6eSti4eykccSY33zspGhje5+6V3depp5bz/4aBk5LN8sz1XuuzULft1yLS4KSL5Icf
yMcwpXRn42MhWTSTKKADRsP+a5hTj0Uotu1k2FXn1yjiwoBRHk6T9XN4k2pPkxX+VwkgLYOkj6aV
Z2nIrLI9Qq/BsSz1mf7MgDD3r5Xe7cEYypSdhU6jKLvEkrnjJ6OcuhT68f4oQZm158EAJmuPMJYj
J4G9jEriOYOTwriMMOR9tJ7dEYDyPQX0OWETV+Edy2kPtjIZDAY6QNK3MeOqRvcrw7nf91xkOUi9
Trvv/DpQt9nJxqfoKNLfkV/E00U6bpdwb5l56XJX+3pllYlstmsJrGek21aM99p1O6RfmtrVeGdX
gxfQDaDzLfHkU5EFH5EN6QISGrWfQeGGSeTj9ydny2N1veUJwXoLctb4PZwVePwkuOFAVNFMPjp4
OgGfoea+xDdgJq2zpfzSILSnRFKEDsjdzlhps5rmLGPVvSMnWyc0LkjnNEw5hLSKBTYPmk3rEZgb
qD7Q1RbtiMznRoqXgd5L8GtTXSlA6kfl2cnYv2JLWO7AZmAxZ3v7bN4HO1nq6I+7jX9sk3JHVJ71
9dxRoVoYnJieOEc7waD37MXIHsDIxegtdxKYEAUsU2TgO91Q54MdFt+ZIXAfP7k/TAUMfuxcOhE4
0U+DypMqm9+YUZEqNsD2FYhV1pvJ9AhWKyJgkulFvPmWjcpt1dyZ56CoR9IqTRCuuKw81t/SldQp
n7zhBsTFbd2B7NjKlcNC0UqiyNzoaR7Z/2cl5m4AyrDBlxNvTnOJmQH/T/PV4KsoTnFwH7kpAPjJ
dg6LfUIjLy4dKvNbOP4mReoolMrambS5sfTNoAtyb/Z5S65aeHLzRQAhBHowwIIJBz50V6HW/3+x
mHmBPw4NRy/+qVMem8vWlc1IyjpxQG8xog9Sl3IFKos9N5QIe9jMddHiP7WKBpT/U80TknLu/TxV
2ggofEhkFh7Dda8VoaQbwAiP35eUU/n/EBLOEuJ84PRFsdbz9f0UBL/f6A1e7xNrLFlhvyiRhbKD
w1br7qSFzcv7STDouPK7UH97CurPETxCk56MDvZ2Nf5uAfTwB6Fel2Y/SWchn6BL2x80SWs+b0VK
KTVwaIadbyYacL89aZIVKoRJr1HdtS30qWHAHRbOARPdhX1jHBEmWdTfbdfcwhWTQ1K5DwG9I8DZ
FQW3KnobAJZBpYd/7IqOMuJNz8Oru6XoXpcz4+mEF1FbxBw4PLc9uxuNo6ksYHGGHj2T3wGE7Myh
INENgVGO4p81xp1vUr9oq2hoHF+GEJmrIt+bPYxPBexS+p62jUe+jAedI/s81GeZw5p/tKPTgEov
ZRG9F5W8oRBNwfF2bOy7BZDqDHzodiHAmB9uKDjS5ycE551VaQWbgsTwGJ3q87Mtqw6g9TNi4yz/
tmRnL4NUFZtvmylQiYOhKDS8he/q2edk6ugkWwImJ+SBJrzGrR7eaEGV7gXCk++j2FSlwdjEsSlH
bL2CqsSGhsTuuyyktJOeJXwus7dUQCiuVaAXZc5zW/TmOYLPwK5I/sFnOC9hKzZ3HhjSVqCEfssT
VkET5840u2VjaAnqMxuJyRgV1xW/7O3IqWaWzODhxCTto97zY5I123nYe1y+5Vhsgp/MpxV7KPd3
eMx7Xo0AqpzICgIOrYqSq1kVhzgdZgeF/rNF51pJszsUONL/re0h/e3MztbzwNTJy/pTvIQ+GtPN
UYGcliyaWyIy+GuibfSk7S7gSHaZR0WQ7rpAEWNeS1ypCAEgcgq7C1nlnxvSlQRhkSDnftRoM7GK
xwIEah8GaEg+etyz1BUf1SKHyTjzViKYWDNWyTaV7MzNb88omwRSRgyjyBtA7aI8IfqthkjdR7Ci
RtJiGhcmu7LsZ34TgqVCd1KstomeRfvhjAty7ZVmVyhMg2ULn7gzL6xk3A0t/0mzattXgbnypj7I
U3soXTDiX8uw6tg12AaXIpypVhXuW2DM/HYw77b/p5Bk72gT4KtTPfT1LCH/B1EF0/u0tlwFXrlO
SGFbhCJQ+XnNONSC2XBcuMNm8UFeeeQCNpqlhNQiPWJompsNAnVFvFOpkP3l3mtw1+goEWMDIhTZ
a5sSJeY1Vc85lf3AfDdhUjr5KBlLuCVpb5QnoDgM2dh96UWCrsfWGvBEFMKxL95jIyRPlDIrWHOe
/OWLV+0xqiOLZgrLbJhlLfbocJgQRfSgb/jS3O/cAhZRplq8/nEIb9CpLyRBK2jhqOf/QJhp60dX
m4wMHe7Qc9y0nu8vT0oWxqC/EJEWthG7xJP3xOjEYDeSLQmlYWHpxVIZHVPeHind362ddeFqOZJ1
jreSB4aOg9yIE9Rvd/cXdlFbchL9Qo64tALfPHuTlQ6qtzbSTyD2XLxb1kmt4ooSxJlRMH+NQ/uH
gSUYrHwKY0GqTmZAgUcsXD/+RMJNf604jKAq+yvwpp5P3+bIQW1jaZnB3A7kXv3JgsnTfY/XXItv
K5WPAqnfh1QYtdI6UBVR/A0oVbEs5hc6QO5Mlor7g2jzVzcbzWCVDOYlDPM8+CI7RL41F8GuFqXH
y7lnZpiu6sKMRC1aXYr/S6Ps8dN7Q3O7Hr3LW2UVTVibfanImqv9hhVLpsRU8s087Nkh68v8EHHr
qT2tTdN4XHLfOm+qfBTX8whysoBlzQupl++gFzQdYeg8W3kDyxQPmEgQ4016jQoih2/CA3vQaelv
5exPJu0K6yeiYavMuUbo6zj+ArQqaG28X6WbAVztxCWZBeXh8Hqff1TtqyyJH4qVMneCQfEZSfPP
Ic9JEQC1VesPjnqP2p0/OsphlQcd5aIM1l33C+kwmaqMS6YkW/RTe7jahuDF2qnAqsKfKLsCNNI9
vndFQmDJJi5JDBB0v4a8XIFsgBNmKUQgcLP9UKKr93fJQZLXxJkZKTpKpFaO0SWr6PEXrj9GVo72
qzigV+hd/XS5XbyWUGr+cUr4hYNWiLfiCeK1ClKk3Cqa4JpTAL2GekKAaQVCnqHi7i1b8zK2AICl
wpM5gar+V/Z5Ek6wZvGEqOgPTg1L/GS7IEpoN9QDuS6LBcKwY2r4r1M2HlT5/tPblMRTUDGcXXGA
Mrm4hCg5zvQe2sbyt4lEKA0pVkMOac9T8RWNkfa3Y2Y7CXLp/JgmuTG3SnwHkSaZuZy43zZvtc+W
roDJwE43RV8dSk/eGMOMJ1WXjlqAVRHPjhA78sMsz1zxbUmhVUmzPV2Gy+x7MnMP3ZpI/+EYRjjk
DA32YB8CSK4Y5KF5k4vzQzZ/EqYERSKacBbd0wWIcTGCbf4hW1mjSd8aRzU+YjR5m1bg0c8vMom5
LedgKHynYXlsg1F+uTwkKq4E7hUHyy9pxbtt+XyNuus0VNH+8fzkHSL4gMWb9oAXee/kaFLe5tJf
q95diAwFQsEWYDsgC1WEpxfa/fiTGmsAeDcv/NCD0iWecSrM1w8mveRm5kNQeaCBa+poS2Zjnzzv
p4WfX4HkYLFMN2+yn9CaUFh/tZE6+E1MZJ9wqHl18+8aXUkYl07rLKsLJ4hZJM8MzGOAH9dxIoxV
bqtMY1pksyNxqf6+site2Z+hffbz1p/DL7J4PzUGYHM9E81yo3sbzAJGpnFBQNDHi2kfAFrRDnni
5t2LrdMb4jlL+nFw/BnJuRioG5ewcGr3WhPWGGA6EqDU8iPBEd2VgAAfUaGCRv75vL9h54D0+u5l
MoUGIbc0ZDwQz/UATZfGeR6AkdGlpeWL8IaRsE2wvnVM3TdXQVxFE4ykTABSuVgNu2kf8ZHkJIg+
NBNpA5hHu97F6+LtcoTY6RIe8OQCJOx3YSXDJ7gNpthVUUa/IGyHO70pKuf583X2+0yzY9qKqCvn
eKEfr7BBtihOAO1xvqjYsmyiRdnIifbm4bkAozKqcB5exlYh3sjJ8+uEvp8FiNB7+HtYWabw7zTm
XGDcHU0v+VSJdTxqDg8oMCJiKFE6QorHPoIQ3J/6ylspwBFYvWieYz83wiZdUa7cc6jP6J0yaaDy
XEyk1BP/n9gOJOLiBOBFKiS8OMbsB7OAvUHcB7zMKQDg6XzgnMRZlU+unnSuEBSoOPqmwgVofrof
7Pfh8rxq9X98siCp4U5N7a7BDhQDTqYSOQHgnNn4ipl+2K4wgELrI5r8s5BWi8BiabjTN7uhsrXF
LnSBYttIMtR2PG9vyNUHuplEGVUmd6PMW2T9vhHuZa9fxquFRFWzvINHN6yoUbIUCIHKMNtmWgCD
u2kQBQyD6oSM1b3QId+fuJuFnqTA5VAEjmu2D6zgJ0POcA00fWoEwLpJnrIjdQShG7tQHSyex6Ro
ZUwe6bIRHuUbEzQQNfH9PhuqI3eM6+uQt1spXnJy+hv29Ps3oZu1RRuADGIF48szblKmHX+TTAmB
8J9+EfcX8ixUlpR4b+pbFkyIzMdsO58L/Prjw9w9zyJtuVtug9WKtfWDBcjhSzGM02ly/rlL+pkX
3VH7bELk/oZkBbRAvqjGLGENvm4PFmH+oINcpW9fzaMx0bYD2r3WZeMb3t/ZqRg2Zq14AHI57KdT
IlLQUCp1/AJhm1DorrWF2wEZHIDo03GMLVmsQ3FO+q+fvnzar5zc5UmpMVwPPzdlmZUTNnE+roZv
Z716GMr80MVpvYTxgup/Ekv5YKzrujNHf/elSXDt9uxRsBGTZMJQFqS+7/UtR8pBjmjrRLYn2HFa
2kO9QRfYHGqRghjSE1vI2tLur7w1iRWDnkbtLHJiLAKB4mbmPzdgPobR+jGHLqzFg4Gjo4Vutc6L
LpxqcBBqi3+U2CVvzatQwj2AAbDWikcW89iV5Qwm5v/K9jOBfPE9ZDaRv3rbsfV4dcO7PpV16cLp
TcaACidqc84VPbgpf/KkH9ByGmQv8qhHjURfXdfte8aerbwWcZBM7ip8DnPYHDafNrVymmHccO6X
nbOtGPq4VdlDDPafxYEGpkmkRcjMFlv0ehwevm55HKjajQGjN9MLBrc1e5DOQqYkU/ZdLZWD1Erx
ld1EGJt/Gx3SvHf73igapoID8e+ArqIwkbmpxN4Djp8N/uuaEh5b2gtt6F4GG6y84bHxkMppX9Ib
xwcx9USpVzP3Hv0TaKfxWNDGFjWN3ktQbAtToyZdAP+Jf/yWMgn7FWOWa3ETucjaFhH1ocbBGqCi
AxoSRjD4PC6eXRizZaCKvCZq6E/29OyjjY6M1C6OlrDMmLyGP4V3M/H6tnrSpXdUVA6Q7yYSSO2j
3NB0GnuLlPdeUGcnV8b81d3WI8vLRaeqeMy7Wvvji14DYp4GhyL/YVjaNAUrzVh3b5tA7r9AvSoD
1q6TkLRRXjI2GUoVvvY+CvZYWNPsfmLTNLqshEXlA6/YpnSGqLUcR0RL0viYuqQ7RZjnfQkZp8eF
TQlFRfckcJDXTcs6RhUA86AcDWqUL2edqNihUUyuxWvwn547p7soZpLcoVxrvh8aHtGP5JJsOv1C
x7uQ+yrFHysb74ap8+TGs0GG5rYITPRhVolh5mfqH0HILV6wehH8xbIHK8OTLxVMgBuC9aGfFo9h
iN7f7KYCHJ1frhvxi7l1YPYpo4W+iAemEKJbqd9CurHjuRQ7d8smKBHZs6PSpJoJ/kkmGN4FZRcg
SjMe7oZq8d4qZ2EyJTC0P9fZ3ayCt/+fWJyIvO8I/CZ8kA4rOnQfkalENBd/JvbAHH/jSqyiLHuj
/oBrgbzzpoUMQHTi8apcRRp+YiU7+/34od+QlZB056bqj+jn+9DLw5Rc4MerLs4TGfowTjybxkbV
AHdyEe9u4mRR6qYvDfAzAo1OcI1txWvPbBD+lweyjgw3UIVuTHg9YODY2pM6P1Bslq4ooFbCi8ga
y3S1Y8HZ+y++Ga5+9/6E+cukARN6Zeh1MQxrtKLlHJQYf5LjgXWd/hH7Yj3CGEy5qlbhvqGpSOkh
hlhTGv214ZupyKqHhjsA5MDlOQigntpeaJEkn2p132e7PJf0CE2gnUl09T0HQ2brHgPyBgtYgVln
pKRgh2Db8Y/Cs9N5ZunOByD3N0LL7li6VX6z4huFkc82LKJ9y/fPkkznXr97V7si/AzbOrsQNzu7
XqSYOb8nZ5YxZc/pCxyc8jhZrVG/QTG2q5fWZVZ5WhbasQd0JZnHKHGMaHYoacYrSWskn2WGhl8N
POUOIqosQ3+H04W/yID+/5jrPG0e0sySfkT5vp0Y10/fR+NBYaAF9TpCdcgfkltsnFF0q/012NZO
kK9jZB6dOq99McZ1RthtWDmt33VSAyJfiBbfGOR7jDmGw/+DhPfKMS5b6k845c6O9m6dg+qD9W1T
Kt7qIvwVX2ynHw7ZOEJB9ROB4W3cwzCs5Kffov0c0F+hFlCLAZgtnrIhzUtpsAyUNv8t2+g6dPmu
W2I6cw90ewXAd3Ew/Vgh0BQhl366n49GRWSJIDVjGyrIpVr21luG23qRy9HyGrq+n8e9PfdH9BZo
1rKtYKjyxRaS0LNfAvLAWo5gSFN2bhGR8BQBMpOZF/bBqc4zPz6Tsz6GNwSFVi3v9aVSvW4e8vsC
PJrjefB4VlPwhq2lVJJm7V6FrrxgIOvp2v28lcO0d0d/j2w6WQ3xoefnIaCAY98i5C9zA5BdjfrH
L4xrbRhjMh92HUy/S82nNi4onVkoc8uiDuwg8JGYTjxIHL3yw+lHZaWASBHa9E4gQVfLKv7FP/v0
AHRNOudMlo7l1PFEyd8fB/K+neSYXxywoGeqOPwy3vVbmfgnYfsQUB2U8kkezvD90zMxrvdzhs7H
wkXjYGEUspV/Si54RG1uoV8hJVI+dmxst+bjDPAfT58k9w6F/SjrzUm2cHwgABEyPZSM6sWQZYtE
L0DUeCbWBiz4xhFTvRT1dOTimMfkTJDPArT+Fvpm/XJPhI3oWoyEPRVKrDFpK9su1TK4RPEuO0Hb
U84NlysKkYcg3O4mCzweTTp+6nU38HkpvjWP/KgAlGdQZYAsOxDKvfvOFdQzSO/8lJbB43XJ3kF7
3sDnHOd7NDsc2ScwzkkgDou1dJlLs/31XJ73Jd+Ri5/AtjiWJnue21+Hf8tS6wqENZGkfITf8OCm
1aRLKd5qT2raHEqV4/t42swz5+M6YNggcbFkkXfo0CcHN+A1CrPQv/qMJ85dytYkAryKeEGwn9Bc
e25wd6Hv6FP5FqtS3Sq4L5I0tDYkqhawtoeKPnQ5OIp1q7cflSWrWOU6ANLcT/3bEyLqbEZHT7HV
6naT6vsOOCGvLQHTJRXnTmD9xpwRAO63g04spot1SsEKUKXNteAFfE4wlcr+5PrKyu1SUht/q6KE
b2521ABGMpVSn9Ho4aV0aFKKA5VTYJjpO4EbptzOPtUqA2sbmvqSZqm4LUwyWzJS8vLOzSFxQMsi
QmGv1E7dJdwnAlUmBXWbvZGf6EduHwhLIDU1FS1As/UU9yZJXqp205oH6k9hj4pTT6hRAnaYyvwb
BQ3yLdwiOS8XcvQ3TO4v7MtRVrVUUXgjlpfV5ivnhzGn9igk2eKoC3Ea5rHawSObdfsd4Q4kfLUj
GBAib6OBgRkUvZxpecWi7MJcgfFUKurUfJry9MMz6NtyDz88DA1L8YO7HxFmgUKSwCKC6PYqAjoN
0pwCyNeQ/aP87WHfIS+RnrDEFpxNKKeBgRKby3QrIY2v7Y3nea+HQo3RQp5rT9wkyN5FMRnmeGaF
nh586VYfDYefKuTKYQmaZBYGkQICVSjjJUCOEve8NH8XZAOHIAVqxgY2rp0M0XJCCxWDlplw9mwK
xPn8MIaEA4HZqlDIg8k/UGNLXq1lSJkfPrEe1a5QaMxKaZtvaGq/WSmIvDbE/qWHFBfDX/F1weZ2
43WpQngBuB1wVpoLCATdMLv//2pWTmCzscbW6mtMREvRszLV3m8M0q4abGIPoULiyH5II0VrXdJ0
KREdWpTb4Kj8xXMMioiML7YRv7JLUHZ+JQwNRdrkSdiqsnwLQ2kJCPWyD3KaeqipslgavdaQDn3X
4TCP8KS4SjzuKlpsjHV7lL2sOO5HqzGgsVVtIbqxP86AhQCGKMWORw7B1i3g2VSYFCGdy+BwcSfs
noczqxhL1LDeRc7RyqXIWL5LcpvH5zAxtMbaQTdSVwlN90rfEOffmEiyA8kexZSilAltxqmxu684
OOlwOZJcOY72SCn/sH+VZk9ZOsJ931LV1fTYe9+9Shlc8kESUzUvw4wAf0pLY4JAMA87p7GvcTvs
GdDcR85vvpuMaD2uYdsaeP6RbUL1HqhJOmE8VFw4v9tytxT4pdd3WMK2cr99AUI7GuA64IU667me
0+BQWLQlddovzQlvOcKmQOytRa5yYGCY6ZC+yLMCF+nVxE0GNtsy1vyMG6qZIKMmERfuH9YmcTwJ
v9gRE+K+m/Ad7QwJauF/y88I+A8R9DgW4LwZAHdymimomuOz0YQUR76RYPYwHFpoVIy39xfdy6mc
//gZTWcMMT4I7LGXqJkm1dUTILzQU2IBYFamJOBmyA9hfndULBUp3H1lCm2CKJtQC0+5E9f6odp0
9CD1yCLZy5KTHBRFgxRH6Mw177mF8w3IM+RTlDAniSOMeQDy60ZGeiLVN0kp0kfBdi0N7iQW7nvL
PTdnQ9BK21OEkn6hr5ilUpZRSZZRznpdsPzea3acGah5U6CAap7lvhJPqznK8KafMNFSW2umIza9
k7Qooxw0PVt7hZCsV5sQ2EKQxWvWSdal6aDVs/IGsJvLtEzNg94V9Xd02giXbaHIo4XmYs1DymY8
bbbv6aYsdLIWS+d5YGB5z/JZnZjHfwY7naDRHBIM04MD/kF/06cnFFchsUkeGGBdcct+bzyHPVNv
qcA67dHj+MsVxPLyPp5Hywt57nV7hqTU12cVQslTN1qTU/wbNbtAGTUc4hWcSAt6czOwvtNMMWq6
W+QPb3oKlW2LaSZh6gYCg5toDiOO9eDtUSbezOXxyVvbiooyipchPdCdlfdi0hxNuacwPcfs7xSS
emG3aD1nmzs+V9ecvdf7f9anl4PVTwVKNCti9KVo36K19vuyM79JwIPT+shK7aVTSBV123dT6+KI
25XVmkGcsnKhz/oNl52/YlZVsA1O3ME1NMGBoMyKNMbjYJOG04EBfD5BBS+36h2j3wli2fTI6Fqm
vd8zACmGP51AejvFEnFj1KJDGVoy8ketAkoUlKqJTNBIkA/pVbVVu5WuOhY529DaSCNg4jnxYCD9
DZecEL0BSuStsY4e/JEy670C4VfqvomYpyQVsAc2JkT2srI2k6997HIVpzgOFb2sjFUfBhw/nq3b
73lhPEbEJrI3QckBrJC0arwpw19/dyQ34478SLErnlXKJxSjzrbDx0INIBZG97GVXzLbassqDz3E
UjIqUtXdAgHD4LoVJKeeU45jBJrNFOy5U/J+msxvEZ5hKxwYE507JHMmu07Yx687pFnhaF5JyqIZ
7AGXws1BnbRMpzCJ9JmWECiEuEbYgz7+Us3dGnfmLvMYtA3Mch/3TkJXYngow6SknCkuDZEoC/YE
ud4QimRZ1YP+phHYeW5GTOzC+aKnh1qH7xCYUFpYYLF8DAvqZsWJVF0uPItRfyP9J0gOy9rS7Zj/
5B9URADJSJ//YPWHMCEESBjWRK3P9lhpgWBLWfQCcnUlrQlMPl0E9HHxSNqJsuvl6L34WY4faQGt
ZW1hDEmzyXrgwtbD14Q8Cg4CBFBHWa3Sl+dH2k/bgwcJ0+xINvdDqmfAD3OS0vdYBLdhWxOvf89J
XJlm/p29ypEq3sNUbIt5Iuf5uFOBJCCF+6Q/XWUi9aznl1j5mYszfEawZpPVfscBX23O1dwH+A9i
AYMq17VdEG52PhuT4oioc/WkiRiB0X1dC3qqFYA8ttasyK5xDNAPEVaU7C7C+NV5c6i0FwbhJzq3
WHvhliOIDzts8S3SvhVtd7XfJWi7gQcm/CGit0X+jChO03pWYk9b72GIhGeH5z+cqEg7bGmr3KMQ
hMLPybirwcutXwBWO1CQGJ8L2gqD6zEEPknPpGtGb4xbpEPBfAap62APJ8IJ+nT53TxMSHWmj3Mz
FDubzDGZzyatzs573i7aiaDCumWSrTVvNrzc7X1gmSZq798Ewns9tMEvzm7MJTQN4Wieh4vUB4V0
GxzBCOIWoxOPY5TZ9owrb8p3ZkNqNi2lKOqZmrnwqz8hZNvx7UTg9ONFx3dSGjxInJtoYdnHGJKy
BGaOBybea3ln2f5RmExgvYJaZrnMx4jOftoBA63R4RTnv2Ohq/1rlKiwIS74lK7mbUVU6NuWnoM+
UDX3GMcU8Xd0gpHPkI7claaQ71AMFqn4u6WjQaJ2NrsVWj0ZL6aiqMFbYvPg+b42kPwB24lzjED2
3mOUkuHk9sjIauEt5oq/s5IzSt8zjiMl9tJG+dbL55fLu3Kc2Rkmd0eFeh9fDbADsF4hWOJ868Nw
qA1Na4CpAxl31gG1fri07V6Szw3X0P11ch2XamOGU81iBif+XJG7oynPxXlF881X+oFrhbMTlZ+m
TMi7NMewOZrJdrsphJs1t6VjvoTMvWYs7nrkw1ZXwCYZHDYbEWG4l8a+WFvDHL1Nh7i52U4reTWh
iBl2hZbMQEGUQ4skcd2IHolTZMfDpc7T3RH27+7ACWkCNlvcHzMiQ4M/yMx6d5R+5NvOk8FTG7er
Ye9bCaKa97mwYxZ+4OYvB45/p5nL6ugCo6WILJ+lieP8e6qj7ToNvgCvYgh4RwEqxZJSXmgs/QER
mlwq3dgGUVuCaO6ActAkByCttvFA3rZ/KYGnSPjHMWEw/IzD1/qJ4kuNAZPVwoEwPG8/DEDSGUD3
7dfgDxZXgZ4/gV8BLfDuP42Tjge84J0Ucopa71FIWAVPFOeJaTSzt0kw5eVJ/RTGr9QRF2a4p8Dl
R5zEEqGI4gNotL+EADakKtcwSMNeNQSjeBZOjJnD+4G4Yv05b29jDP9v4JiGbJavAcN9GvyYiW6I
jK4vMXbRrtFTT7bP1vGZ0hLt5oifEidwiHUIxlH1Gtn+e+bZurQrDrwT1F9dcN5koBWAMMYgjSai
RBu7a+ksXllqMFbRE+kwxh/Gg13wTkgZqlZ7vZGy7EfudTG1Iwi0ac8+si6qHiVeTVm97XCKCD4L
PmiGOko+stf6Wc6p6T2PlUf/A5+7kj6BfST5UDX3IMd2xS/GqFDr9hdAOHvVYS7zAZ1QZY5w5N50
77lZx+ovfLBo4Nx9SuXgxZjSS7kbvarOjICjE8twFl1YURmgRnpP8KZ2fC5fr2YsLWLfYnOO90YB
PHBFTekjzSSnWlZeni+Bqvfp/LBDDIAyTpF9aJ7s1FkEEadx4Be8nDTIyAR39Il3jiQ43fUnyG5A
gijy2/Mh3lW9B/UJlc2cHfDa8uG3id12XrQmtelvhpqxEwiAh/WoH93Jyg0iYppHBzz2FzO+ZVeU
EiwLJVFVMoLhscwyFA1Z7XuaejrqAF5uONSBlal5bM0QxE8k285aj8FXyYMJGnlpRM2Q75VfyQCc
nTgkU3hobtGJskq/sRfAjKK6V7aoXIhAkxbqhQUaXdRRJI66j9SjKHLRFuHEzEvinvEErevc34RS
DSC0yrlkx5YF5+HJkjGrRoXZ73fZUfbcV0+hKBjOSPsnXphi7qvLkSVgdxcUzkCC/Pn7gF7kf48C
QZRy4/cqBEdpvXDRioraY/7ept8qqZ25nBhLRC6+dKaGU82d44B3ZE3UWw95escYzw274Zf8jCxM
pFojv0QkO2F1Qr1gFLXSgXm/57gsJ16s65nny/1zkSkY/VyxVr+XKzp1EFUhxHljgtQ51KxF7+ju
zWRgor9jUHPjn1lwz0MC7YIYYAijtGs9tzKY492ZAfy4yOhmT/2+qpHpqFz6SuXxSSGetZDTxfxj
rLREecQRZFbkiu66f2H649tQYtMRsnGssUEh/2e0mvWM867C+WPEZxG5lUVU/BfTj9synPu6Laf0
LbTW6YJ0J3i9MohtbSqkygfBNRxmeizXBhDr+VLKnf8zFhrqedoRbyCt4I+kdudiuUQER6aqcB8L
l69/1eK2F1MGNAGzHGRJ0GqfOXx3S7JKd410guLUu2tBo/J93UyPLPNpvQwZnL5HNl+H5Gm8SnNP
u2zR61pN/4p9mFCx95haQNBXaMqbyWxo0LkXGzH6PQGpijZZBHqoNdJlZ2UzbwCgVMkM0OyTqm2D
pB8Osy9tlzwQmDACC4KAJgbIcYTzns6WJQClOB7o2WPEZ8tbWlpwW7aluPDQOJa+rJy2GKaU7+mh
G/ubrMiZkgUB+OWvVbSWxjZTwd8Vk9etZwTbGaHEJoK/gc8PeWmkBGdW9lZyGoRh0ES4AzCmky7b
FIM8j/MTTZz5DVFpoy204lthWb5xUegblXvZOA6bNhwsFKObGWprOg8q67665Ge4GiiHAj6fDMCr
Xbzcwz0ux2x4WHGuldqEuLexDcXU2m2ct7cigLngLAXgPzswtMhzDtTrxmRnXSrK7qWMHJhTNtIN
K2RngNHkKFwvubGU+bG4tNoynkrQkqsBehAhI+D9KRV28ZRMMPyL/VFdGTUNGE7QGGy6bpbzH7ji
eDvpTE6x8F1bRUlIRRI+A2DmR/SlDdslGagi3+CoH4Wh63P5uZq//EICrhlG17C0m6tHdA9Zw4I0
Q7YGnQlG5WdaaQbvkOGADqeYCV5cc0ntrvmH4xOWo/HJ0zI3BSKuV2w+GjeBcpy2OO/dbf/zeNUt
nfwvwHWXhPbtCz9DGv1A+jz0/j76O1sr9LdzRrn8E0XWFz743yB98jHWrB+nNyPEU7D6lb2WRGxN
fXYZrO1Wl5AtNs0xih/AEi1DAtomqdZdIy2d3bGXe01SJLjpTt4MdJD9EYXjIB6HuFY7RfH/Oo6i
H9Lt9I5iF+eQsBUKSAkaQKgIY5e2zYYNhxjOLYe5hgBFtdFHcY/Z9OQfEQ5wbgz+lfOORxq4SSyL
884xH9+cGx7pO5ycT80vBuLBOSSXdDDhNCQSr1I0GS6/BeHLPpC2OZKT1e9ATkwduPhpGPr7jIeb
JerMIkrsEfNdnR9wAIOJtOJx+9dRyYGHQ1smhU7ufdDEuac/Ax1plps0Zy0Sfjnlfiunfp+l0S8U
20MDLBClvNi5HTaWPR+1f1PQopCrxHGFpHIXA4wcA8ZAolBbIf83woW53L2LTNhCgO0HjGzHGaRo
JfSAv2nlHeZeBZgaDWnU01sI2N+CNN84kjd1GWo/6n3dv9L7jtgD62flhllKxBmQM6DanFBLbcv0
3BqX/oBvIs182UyPxkeAZy0eq9l5BT0/Ru5YCDu/64fe2HMf9x5/Z4RbVCfBxET/fAounLktt06P
6Cn1lq6DX48Pl5YMzQsmofI2SnqXKiA09r5iCXFIuA+o5PjxXNzeCOCKwogtxDrLQzW3iGP8WI17
VCMS/IyY0JzvLLLBqwbdOWsuOFI+tQlPEO/Rg6ADB4wvPKa7gZkn5QzvYSkBHiYIVVCR1T+C7sJ8
wtdA0XqMt+BOduxU9IllusyOM97xBR++khXSpdWrHtym0vy5U5RvEhOGmx6VR3armEzpJxBLlrF0
5GDJuC8K93AM0Aca39CNVFEhPmtbJykJhxx5C9dScUqg5P+6BTBUuX2c2opNqmFpqGn3y1Wl7/fF
LYwweYx97LPOZue6/Vv2X2pGI1XFt4JqgyOMgR+LRuaS9jeMkYptnj41bWW7Mqr2bxSy1Q0CYOaO
1RNsods3JATaBYWGjYw81Msdj73AkDpAq9ojUCSjrzCpXTz7AcAntvXQnqJHk2vOU5MhxdJl5tAy
S+CumTXe8KBwWGsVU/tFxOSX4PK/7MxHAvSboTVd5hNKr/KydNJjCVYsZReesT+ozH69J1Da4On0
msWl937CvH8VWSVe4/nyvqJVgoTNCL5eSFLySaSGIKXfNqULj5dZO4aofOrwGqWpiM6QHRAkwPtM
K/VoJYKM9uYntaJyRUR3/gtMHk08f0dgIzOUcHVUUV70cS8FosYX2X4s3nGXDZzFkXw5mLUOU9EP
IcBkaKkbA9sXiuiMwU4Ag7mE/C4vB4Tbw8tXDzAutjt2VHwmc2OKULTia7vZ5QhXI25mUANVurZP
rgLfo2UxCNnjR+wkPQg+cjvemxSSruqbI7+dlLfop25aKj5b6vFXGBwRA1G1U7N+ph9tcHS0iZma
uPp2fQka9+qPbrjwSuklHcCMLV59wHVU6IgCrk2W3e2Z9zk8uy+ptQm9TzXLaFbEfDuu2K0vfdJ4
tXwLPjGVXz9IRfi5Ltcn1iRPRsnkujVdwJ/KAbEsda5yODdWxsBM7W2fqOEqZ0pFQdJrTJKBgePh
JOE6iigS9VTO1XaZXo5AAM5DtrxdyW8ktY/EMzunPsrQR9gdRIQrse+BXFJDNTrCkAfpg0vyBJeL
deOhJX8YnU5IDK2GNwrbs8e6Jic/aHHoR1Lv2c9Gt4WTaw9qlT1vetam7/W3UDR8iaYgBV9Kx5gn
Rem3Zj9xWkOy7FjxZhLlZaseluhGpjpdIXYsKPfPwAs3XofxfzUxn+KLvJC6xON5E+8vKBRbwjYK
7G0i2TJGXtHFwV26Ix3Vd0P5GKRnYbZ16XomYYmInh9AGLFWtezRIezbn7R1u6kxts921B8TRLZn
PHRFkeWZcVYEpyE0VF0/Hy7o7GIrLpTBCyd63x+6l1ttua87N5vwW9SxrMOO0W1kMxbBpQ2+h9ih
PSmlxSeVr2MFOJuteVsm2oWrKIojFDWVaBWRRTjedeVv/xHMCqERFA6LQvyLSkozrz+b+j5wYWG/
yBxMDqAubvpl4NmCeVrObSCw0YsYPEQAtK/O9tpUk9XVQ3wcKv9WQi0zPZDAAQyOwoxUsEw0uSkx
PBcQZ+vOFURETjMpqlMGUhAv56+IJOaPnlLiET02IbgMKBw8jbJTSXznDHh8MVxzKCZb98+1gNII
La02hHwa7Ft2IAn/1nMGhQUxHvfqmNSuJHMLOSLlJbeIiQg1xFGf7ySwxVXru7xURHPKfpw+aw+z
GFn3fqlsEgy7jNZcUqWEbaww2JybZCzd17E0acfbOLrn6kAuM7NtJbw+jCyTD16c5QqvFwfVfODl
QcJuUdTdMTYpfb5tjJyZhAsdkwH1wgYrhabhbMgvgDpq0tEU8o4Smxnoqz6pyKTEiRren7BQh7xv
TiclguZNGInX2S/kXzRAZlgNpAZ4AwpzyahQqCDnByge35p7/G7QI78jhVBEBCi8MdHx+OGr390z
RnjvyVCKhxeojCq4ZHqgqdg5VgmUZIZVKsKqBuq6oxUPGf7C1a/0h+0lJOCcxO+1xPtZ4z8IS1/i
qCGNe+hWWG13wDHoY3h8WKH44P23Ym02FHlym9jCMHG4qrtqcGhipSxOoK/8PmJ7TibdtKaFnV2t
313G069ar31uNYTw31YVHqsz6JQoyzFAnOguwTCF+XPcXlu53gorYD0NjoeerHPnwmuYqaPxzkDU
we7CeWtpjLBVPaPYpmeGrvJxzSl7w5DJWSbPL/LOVABb0MrNIWxAoLjD3RapGso+0nr0ZfHwQQg6
qDeeQG+ituHleFMoiCa6hc3FyytV4fSINGAE95HPkjul52AMljMVezsAZb2Z4py9qURO37D7dq0j
xGsvI9wsIvHKdyLnvvgLbOZxRkMagDXK+0MyzT+WpEuMuHW6SrLJ5OQvJFrp+Kp/cORUmoTiOf/1
B1yNb4rvy8ccmD+C/EZwh5+47tZLmS0HC/iEq0Yum0ekY+R0qNFGHX8V241ML5E1vE1Bl3O0/vQA
Uw6wN9cctwABPO0v8HJgPdczxWsmtYaRblacrt6tTXnlm0JCaQgCV7vxBUgdLvHpysZprByfRBNF
wADmlbX9WMhy5qkyfwiq7vuFD5oRX+vC9igD3nZy7v4j3PmwKVR10vjPHaej9NDMBlsA1tv0zgg3
tGGfkhjV8On+iE0en3nAyN87ltO6mdkLwWf711WLWLvEZA2fAHnjE4tIanJlt2+FBy/4+iyRb5J+
j/hr4ExM8ZG2EZOEVksLTOFNIDtB/aA3qVEvi1QRFNBlVllQ8jUmRB41uvJwiv8+GdW9zaIUmgoo
vb/s1XZzyD+1zVOkHthBa+0zWgrQThUVKkS5Xflyw3rH2RCtldvL3lxMv5TvUS1qZ54n/iFY/gRN
p2fhAu17Eo3StViewu2W4kT6qCa+//jt622vGh20cNR1YnGmXKPDul0CfCZhEDD/7vOdtumW+3Hq
954ZO4quoWh4WX8sOJHDuuCMck0WLS8wsHjB7nHkdRqcT6X9nBXxQGD25Frrad0rVqqT+B40cM8J
YoZ0PIgOC97OoO0nUzpjR0YQw1nF7E72HOmkxlQx3POLSRUck54d8EUngluXilX1HBHPH4IY95U+
18oEFzowR1wE7iDoBUWMSmOvNM09ptL9jt1u2hMO4js7SWhPwOnk9FU88zW9XAVZe3Sfa8xNu88b
gD6X3O6mt+KrB/nTwF3R31DH0LqnistisiMh3SfX3Rua/Rx5pXBW45JwYAZ+2I2Is3B3IHWI5ykH
V/h3TvV5ELelM95UKgfH8A4osV/hEaJUcKkoUbF+F3+igpV1yBKXa9Wkm/XrVIFsHh69PEc2MfB2
PHyhdnyppuoGrt9Lan3pXdsMxku2nAOYGg/pOaWp0ySDIajX9v1uaA+kIPQunCCyB6x2ayx9+f29
Bh6kHtk49dI9sNm5E+nFyBjMBQwXk4g3Aw7JIylXrPevy2+r1GsZA+Cz9R7xe87dTdOrftNvGmZD
bFGSZivo82FY8V8HELCmh9J6afMo21TNNogas//aBQrcCO6znXvoUzeNGeKbQTwp+minhO7O3Wg9
Owf9Sx85efNjAWo6crdUc5zv7ftZZvJZik30Ap+MiADG0qIn8C66KJpNoUpeuYREsV7zSBYdUhHX
V9cMiT8a337KfniYXdIhCVtcbCoQ8LPKJFBVDUrV7BjhMJGXUmJNc36H/1egmh307mEG5kcQsz4D
HfrsldURVkNPNRDtZeAWl1lZwJHakHo+wWzS5IPhH5rPm87aRX1rehVomEoEkqADXG9of3MyM/2Q
aMfyK2HD5f8kWnPzx+h0Imw4c9iqbzmRzr5Pu0lbGvhUN8Ai4lsBuK/R++rRTb+8r6+rYSTfb3mS
sPSbGQroh0Z9NHcUxBBDoyFXhZnzrgdtVh5UrWm6gA/Tb/Go4xtIyYfuJqEcXEPGWlOZjHiU4D+/
SIccEjNYYsitWyEpMU39PUAeZjTBZS0FPfM97/wty1eS7Y7p6xXvVnN5GDjC+9I+N+ZV6gMmxXz/
wuDOSwsIreKCRbGSB4zv/w6j6fbO6/DLeWrFIQtEBT4nqMlnEzVB6m47nkzHgivjHJTYix/o+8ei
as/Q22fVU3h26EZwyGukDt1GM3wIXgQbSsjU4CmkLLu0AY0BrzKFNrVjrUvffgc9D+6sggoqb/mv
84hOtY6SEOKkVXVWzUmnA2Zjh6kq3s3w3AvdD861p8cBddBTxJ7GmdMlYdIF/VIj2THp/+jsCRmO
npXCjBQmZdpSLpdAGSF28KUCkDAP+MrEtWQ2fUL2Km4z/Y3BWWTp3Xca1Kj6FXOGoSOH46jZIztt
OhBeQeSyiyTns6I4uwaO/S1VEJca1XXDrIpAwQE9inyPn9rwrrYAd4SlKL8hN9rCFWmCgFmTwXvi
2n2+UzG4dZq9TU0L8HJCVhLWYPY9QQtVJlEhLZps+PfEmG/7bWOXQRQ5ehE/XsDAShIJK/SNHzIx
WhNz8Qx07KOjdbzCiVJ8FZYzKJ4EjCIBxdi1M937D5T2M6kT252GoJ/yjs35xY1eicnSlIocHO5j
NzlHIvGy9iP1YMyJU8To83AVSJ45AZbovx9zB49TGBXuOUe7jg55cOvzNPqeVIFcVaAbI2n/LXsb
Waey5+eh/HMe7ZJFT01FcZJBADCP68hVWNZjJCbdBy5EyJ/nliO2Y28+hhv+xOEHgTaSvb2xXSW6
0F5PKNi6LHCipisWSxKy3g2WUgZ25JMY8+J2FO0fUOwoT+1rKEYtfT+J09yTfz96kUJ89bGEO1+2
Y5ZtPPO7DTElv0nQbHtCr8rnB+13+UR2kFpUprHMAevJc0PXEmKIJqP6iAZveb2E0oEKOGFBk1ce
B1J0Egnad4j8ikOob7xFOxwlg7QcTiLYicgNDCPrMvdBCPv7H2wDq8x2RptkRXI/cryp189hGzIB
J9BUb0vM3xlODMkisHiwH+olT1rSVBeiIkdyxUPdGeoLnsBETglx75L4tHFEaH/z+mB1DIIvlNxd
NNasUDtOE2dqtxijxs0UqCMNwJDGqz/rlv4DMtMFpkx+pE9kigN2h0wVnXaNN3gtjCf8IEHx5yPR
EjarLi91/4bMaSBpWqP3isA9FMun3uNQWECwBXyj4fMBMANlMf0ypCmZnPmokggCnzNpsh/RovHs
L6CcFCDQach0DitEbl5eDZIYbhIOa2SfoiXWEdc4qaszJd+G/Vs29M3f07OoaTGXEVRGmT3rfzZX
YKzyFF20bMEJGKC3LXcOxr8YlDpTOxKWZ1uHky44NJkE3AAjfh+ItgPUL7zwfc8Exc0u7Zf/KOlt
Sd+CrFdgF5zatmDUtPYgGuPt2tHVGyLkNY3bATJ/A1bMXrX0PgZN33IICIkCbTqN/N7+Cmo4Yw0o
SLAnkEFay5gnBmf6gQm74BvrDJ7HiZkVsRG89sZJ+F01PxLXuwQngYc2aJwvS4LrSWyVT8Zzey8M
inTAqrr3Kk43+qlpXiFHxXDsASPEvE6LbLk6Afwm+YAlfhfe5AIN1GGNd3c7IK+taumZY9HxaO0r
GBjGqZUg4p0wj59w+sdqGcDFHI/2JCRNtum011RlnwhFejYbV6bXhHO0tX0nvBRitA6QjRr4mCwp
+JVG+PSgn1Zo611KZTYHu1VhsSyTySJkqV/+BlJfopC5RKdHb6UOT7HXElcZTnZcmHOcU7ADFuZf
IzyfKyOfbBkbiZYvRX2u09RtFLS+QuxqDKid6FKbg+6a12BlAUqSHgCGWRoIe5eEu1QgXXIMzYBo
51N/SCgc6O+ZX87AbzmcFu9QMKy1U/SNS7FtvJ4UhrfAgKssdvrl4tvxNqvk2y83AvAKrslteG/4
1CmOFAPA7QLcRvvcu28cr9bSz5IVaEPtMA5U+MG9RO1w30SxmsxBVqJHbX+R+rIW1AWyR+BaPAmq
NWxjKNpammCM7U/WSYIcLCrGYC5pvIgyyGn0+Y1UnhzZyNR8mH1iJt2K6uDwfUgXw6tzblJq79/m
A/rOySIpUHpkpO5FS2rwNK+HXI49wIqovF4TulJgag9unfZbz8F1jQ6ImiCbABUIfg28cCnRnY5Q
YcbjTBZW61qYrXdkPCMf+IU2zd+nwhzZCHvlrp9kk+MY2d4X0pAsjnmTLMC338TKMYFrxpARjruB
qO9eUoFdpKo4H3/wVkeg4cvRu/UI/xV/yQY19MHA2og0IkAkvpB2uTiIYpCPLrCBWqjuKNat0DSA
L+njk5yHw6iSSXgOLAYbgEoM93SinzrImO+m117wH9UpDKpNQYrH1RMrAY5o4Vkhp9oFjyT+fg/1
AXxyulhCiTRdQmbSmI3Dh1Oes2F5gv0+gfrIZ5P0nAITSKdx/neyhhfhltjPSqZH2jEzHP/5QHZp
nSdEL0NkyJldcl0qlTBaJgCoyXZ91aWgFPozyC6N6fCUr6mGz0fZi7cRYqMkw/VkUBsAz6C7Qq+S
v+ORio5uRd1Dk1CrDXXqSs3WUUpsz6zR9sMbqBZ9dOl9P7JWwAZ/mqPMoKN8vCHt8wdLUC/fIVnp
iCOEAoJtqYPsjMEcobTZ7cT7lk5BhehjGBDbzSyODnuGKmrUZnnQCILFF+6eVwq/BwJqCuBs/Gmg
xQZyUDFZdJMn//Ts0vrxvrepORPdvpXbS8noK+O6VyjaXmkoNQXxSBW8+Sf+W/axjnVtAd8aGg2w
NNmTG45FdBNuVcbe7gX3Yu1wJq9/91fDnrwzCHcgQoR+x20z8Ww37mKydrTthq1gTCFFXGmiur5d
bkHgFvJ7zVt6YTo4sxFPRSM8XlwgdviTbNOqthY5NKVVtCSmwqk2wBokY9dY6+XI1Qpu2+Zll3QZ
2qFBBsGl1uM6Im2RQhhXaf5k7zXOrBUA9SV4j70ogTbaNjmdHu9Uvlppd4YLKomI8V0n0EHTqaiU
jSs/R5a4PO+yaXM4Fnt/dBADT68yqI5FKKGW0fJ1ToRp5xv4pZe8w34dJgR1p/pfRzQLzvzvREvp
ZcLrgo/rmXOM/RiYlbbUDeweL5SETS46dYfPs+9nYn1dc+feDKgian+ucaOazgnh7uhSU3Ibu2TI
MDKTk7SRmEyqV9cw6FYtu6v60OeJ8VRV2zAsGG8cE8Oy8B9DZGxJIdkTO9bo0NeITOQsTqvc8ihW
oyHYeuHD62UUv++Aw4b2xoQD1xFLwcw8IusGm0sVBzDYUYXcVyZyLePto595fNGQWTdi+tyiMD8I
LmDcYlY7SC1J7yq/WY4D/Rcc8bLDD8OBxmFTsAkf/gCAf639FcRl3uNBK7tDhOvkJS4p8J9nleX8
8sBEGw+Qz4cG9PiHoxF6ieM7e+JBnnfX9vmmrqTQRG6t309DfMttqR/DjXeSEYpc3i40fq7Lqdjl
f9eUtzBKCuCNnFxzd4VnFLgcHi2LtuP8ZL3qvZ8Kr2cAItSSAGv6hRhXAvXfMiy0IdKaQjCvsU4p
eqI2eBGSJ3o9EHObMYtgtuMu0a06w3tq94vYhd1K5AgMb/vVmJ6hHw5HEcCp30h8HtBIycmVYJr6
gBuQyYxjcip3nXNAe0uWdBZw2bvAR/AAJhP/StD1+eeKvacMIMqjE4Ux1ITIY2XzhALdZvk7Oi8i
zskpH4s7/kK08SvyPhtWccuCX9fmQenAD2x5mjyAF/kortrmep8hMYZhA+RnTUMJ4ansmlnkVfjL
/YECdjzw6q0plFsgpl4cSCH0fFjLz7ppACEYDQdPMdvB+NPlSalGgsUYBEE8SY60OnTG4CSMDbRJ
NWA45Kugyf6VlqETiAl3tTXsgSwMeyQDhMcdzo0FCc+FB1iZcW2e+zOEvHr1N9ZUJfu8RYqDQOs+
cu0aLMRHnI7mqOEIuwDcinDmvptEvF56XLkCMNBz+SKe1ao8zozj5PjeoBCzktGyTMnpEG8uYPOW
l+Vjve9fCGVF+Ja3PoxDlcK6TPoJXncy3JLVEUb0Gb+4R89ZzeByi5Cvtyr+fez7gX7wbgsh/PMX
lWxMTD5L3Nx1Fr8K4+fszOXGB73jLCFKK8RFSqRDEFBt5Y+9P0lWiJzrOYZvAt6QwtNtv70mhouf
YtkpRBwCdopclUrpyLRRpnGYwfK0O0QDwuCFWA3hE7RJ336+Bp8gbvJyBNhKDkcQRpjWlBibgQHe
UOzqRO5wLAk5chVziytUrO2fEXsZrLmUFSJagiEOcYWnxGC0uwGI5uZTxizM6tvVQMXJ425XOFdO
4pJJVa3jqUp3EzDAg4C+gGamqIdKBm5V8sup2gatQBBXyEBz17PJPk/qXF6XtDoBLCMm5UzpJncc
I16aFnRrLWTC9N+bxgETnsnz8EtHIpLe6gzz3LalOLXGmO7B/qdR6soMAqPbpC/LP61Io/iLqnMB
wFb5KB4dipt/Q+Y+7BaaFYr60UzDSmZK/6tSRa39BAW9qaW03DRZrw46PdcA7FxAcMvB/PBMnBJt
aJWzqdc50RE5evNt92HRvXmnt3J689zMVzOsO9GJEl54MIzauIa5T2SNEdWQ4ieYRdgxXGmvVGwj
OUXZYXT9l6zoQdhv2GCemTCd3Fhj6RfyAhW/hrmV6XmIOw9R44eVCBOj9OMOrp2y04K5JAjUTO7B
mUUfN1n/7ZPyAdTThkSYfTm2OTPW387utOcr1LCXXwpszQylyF1fgAdKBbWGTijkX8OkXtrIm2Dz
Wzzmezxu3UvvwQuRNcfeFNu7UEUY6sQVN+Nn4Xnh3BbJ4hlOI6pqBJ2WEwkHzKYYR8bIl3SxnIYP
9X7v3IrXoZkeVIWIkhJ7cTmIvZuCd17KKOEZoMaDgBabCXSC1gZZe+58hI/m0OOpFGBmdXGgPCvg
y4tUcLe3mtiLNp4sMFB18gkVahlGM/w9ROSJl8BcRoXmX8Y+j4N743VoA2Id7dbr15FfcHZ+eL+c
3jdHGYzUBNwLmxCvrvMVJ0zNFAS0rPrL+RRhIBcyNNkLsUE7xjh/fcN82n3XFKe3qn7TmOohR95r
RY1Fh/yfkaNdGuUyV3JePDvQPP2vaAU5Qxc5Uirm25sGp+kqm7jt5bIyPPQQHdXzE8kwRVD3FWr/
c4o2HbPNUFQwh20PGFzTYLmyv1/H64GZvs0FtYKELQwHke8U4usfpITX+kxoi6xL2WVaLhQWKv+m
i/wIZZfXOLH1sb+eiE03Z2JbUwfpTbj7UFdiX0q1BocK2qTk5lt6URcnw2Q6i/uhvIzKgjXpeK0V
Xn7vOlJGFCoapLhMOWPUV9Q0+dx8xOaJ4HFJwxlWfkDL452zFVCWQdt7Tmpa02DcOeltTTgaSvyd
s8pOSJKmo3QYK0pNVIMmMiTvS/P51ZdkgP93Nzhu4IgTkejVcWUa4W2TEcnVJ1rgy5URYxtgrn5b
2zoCY7n/Lut/Xla04Gy/Zs/tXNbUn6AeP2y2qmNi8+WxnogHJX5tj9TT6q3Qau7m667RyyS/Y5Ep
othPXg8j6KF2MeFma5GRhW/WosnXHldS36cPHkd0FlOKN70HK7LwuISSjL6Se24PKsIrOLD9Tcyc
+xrEfUB5IbWsDivT0xugNUAU+IJrAtMA9nYDRw+2XWivf1J9xKMKsSPdr/c13WZB59j3FrUPaaVJ
T/w4ZY3vGMxgfagXoif9OKZprCXOlvU/nglzWwRPh8xeBB0Q+L4Vm46t5Xl7kqpYY0Paw+clm4ys
CgLiT0A+4AYSXHjHgX6Gl3+D1tSC3nHn1aDr4f/4UncT3Ix+18lmTYKo8C57LU+aRLSIqZl3cLJM
jpsVz8HGzKTJGu7B3cx3BuGb7ywQH9r8wOK8d2NaDTsj81tUTkN6Ufas8oyU+H5Iur+Z/p8k0Hw1
wI+rlaotwwNm1vYpIbKalChwHNmxadpmPlemtrWTOfY0lIEGgdcNPDNGHoYNjBtqAOdwEC5Z1lV8
bYO2k7rWbm7akkdGrdxs9oudF6SJYRqniKL8YCLnK/vDGbcqtTlN61pgMwISgy0V6DAMaoyRXzZp
I1X193iHEZXvbk77E0kz22us5CrNfcDeHFm0TUcC3Upv0Bg769SdQ1q8Rx8NyVNX0YPtRsSvWL1k
gS7BMVXr/ya2je37Fsa9cl42FLQKNTfv8YQrK6DDvxZWiRigOuvkIASJD4mZSKPMGAAcy3g3pbJ0
Imy/bYruXV1LRJOT1Qr9hVZGgYZpeucIJd8nd0Plz7hCozBPJYFy3II6Z8nsuQuZCPQhBALnbc0L
gAP+fW4bL2SImNVD8OdylH5cPNoZsSqq0zuSxBLDIt9xUr+VpLbSEY2pIlD48AZFhLQFnRxbR93n
GduQvW4vv8LugkY+v0GpyjgDzvyXji1qiaZunwutCcShwX+num6Q72qJH0Dq9DApmOJ5p72ufNs1
XXZyYk9yBVhn0HUOXS1c/NspYq+bLoARQrZqunKasNvm4D7QpG3bPWPb0vceiyzHvUf1GnYpC92M
trGR1J+pUL8VFeaeBfiXEAunQiPbCypizOXwZ/e48UtLCrcWhU2YxzOQQ+112dfl5lPg7dPvq4+I
uXTalJfsDElnIEXn9m+CbgHZ1RuDsQUebFxdTbtLbF9F2NwZhRncDD4eMz1d4HkcR1Xt9Ds7qV2l
s3dePXTgZLVNxUtfY9Jdr83zvqFrBNm/U2og+iFltrdDuUC5EVoKPFr/XONa7m4Aah8LjkguRDuO
sV7SaS7PeGZNB0qBELfDC+/4Nl6mqRP1hnK76okayBi7U/LSlYU7oq0UhfW7adT5jXoGbJODjbvp
i+nEu/qmGSjZ/U+Fp0blqvy/ZchLpXxVkLQ61PQXwVDIuulRlHy4UxAnrZJNHywdJJG9OjN61LR/
uxY+raR5yYLGeO9cDNF+iJhyu8aynqlwazOb90Q0CGTAI40g7WF/qoDbghVwQ9zFwDZzO31UmuzD
mfi4FMtwPaGg7e4cgkTiDvZydDaqcWsWYa/3wI9hsYdq78/YFUI6a6n5UZ9CjiDd8cZUt1S1Pl7y
OmOIQud3Hz1T6hY4tf6Pjao2xcnC95juG7y0LZzSIauKvN3r3qMQB05e3qntVsRMKFI9HOPHQVSA
2Woj++abgWvv0V8WoDUPv/XvqvNHBrA/VxX2gc0bUTy4VYwVhl2mUqMMow5aPYcGEP+tjuJMpeUF
vd6QqCWikkSqjeblkBidAK56/AGuoQ1kEwceMSSgVohHKZYhJxlU8+SJr4dwK/KzQWGmWURwoZ7q
i9gyID1Wa+aNBjjHVqqbUP6vVIl9ynh94nA/+8BouDOVIRhz3pjfYzx98mmvlMAnumgrcNRRt4/A
AwREvPGZtXi1yGO1iuygPx6/a7VTHydO75lpl4j0+EmqdNKS1WUKNyxKuDeWbg2hC1LrloqFW9gu
0NaY7InpY8mOR+Tc764Zb74hf1aD8PjnocKaoRX3hWs6qijC2VSvAvjR8W33qJfxdd/i77eT5309
Q9sShGeoNbkWrd5QJrtlFgInqKwysDffTaPUbVqOXCH9c47pMh1+M7DdIJfGYFL72aAZGjs5IylD
eAQotUU04phsCK4VXyY6ENGgmQoQ1jbj1h+IS5+4qLIJbJH56i8J8NMvSRK5he+PASCebOpGheRp
LbuKMEQV7KfEQLBiQTnlax2vAoav2YIDo33T5ntX/4tveGJhThrMsgvbEVU86D96sgUCFJ0NJthw
bbZB4mkELHUqp3LPxLZ0S6adKpHcr7zftS9cbfbMhc7gY1VsMiZcw/N0eCqifkr6BHd5Ms47I4OV
63StGU++bPpjoHM2JUdgFe3BsNRWsAnB5L6Uqhuq5iHrfTHqGAmEi/1vJXuQp5cE7NdVQOZ9cGII
/KXKbSR+akbYeeDKYrmLdeqeM/m2HXjiJJ94feTlIZSH9OPclyqk1ymNhOvOvBRkmPuNpNCvR/Gj
3OmdiNmjstTTYuB+tql0u0unmH5mqfZZ94zbHFaqylstWxfjdWCRKhYSmvBicIZ6yqtQLkKWCRIk
BO1ipCquY/y5NwYQx7eyouzQxM8E607jf8y9YpqO2kdleZeJRDXvYiT5PL0o8lCtQRNyTHsqELg3
l36YlaappWfnhEATn6FLCDgI9AdkAZovstih8S12XByHDntEKY5PU+L0qrtJuiVe3CfPNogbwRKJ
LAtVN7nX82Dt5MzX0dysIIHDhNcJdhmlVbHJn89apc3mw4r9JjL4PH4Q12bFQPuYL5Lig++ZMG7g
9ekcaWumzMjcHhevElojp7Q23feyczbkvGbKu2qnJCCpc3MhvpfuoN0/cOSVAKW70rpSmXMPRt6f
xIEvoL6XMsDKDfYHudi2Sm9rYBqDT5gPtls1f0fsWPRVbNQHjD5yRPZRgodFwbgVpLlxmeJfFXEx
Jc1VHqdOFlUAr0NC5v2qOrjzKEpkopWGpzM6oFlu0GuDVtVUxjA5ZheHdKTtVOr9qlArdXtmP4LB
fIekch2Ar0jfG/tKMm9owIijk+avTK/EmyoJFlhc9px8jMgTkFkj9Eu4yJOEaOC76t/AyYLgCvXf
fDFfTs2BsYcHW0kjiPh5LnPqMHIREYxnsGTgP1xamzZ6pNbKRO5w+/GI6zl+Izg5mQtRgVR9ykJX
eCul+/PRAdBA9UlGLfmzptNgVwJ20iVDDtgoXWyjVkHV7qkduzNKpxizbYlamj+HsUrWeWAjR2OG
ndbbhcyw06Uhoj7oHVBQsX2Sa7FdRXz41RsCxhHU7/FniNTZuvxB3tKa4VYEA2WVP9bJW6JXTB4r
xQZLQsPEP/vSjoGqY/LkaHLA5RwCbIGmlUV2WCX7CNGXUm4L3I64/kb4GOqCPkFMro8a11moEwH/
1i+roTSuP95vv4BFw7M9Zy89x4i7hh5uIVIcn2Ll48HoNJGqtzT/HqY8Vygc3/R50rsOjrsQ/l0c
qRWRpgUM4yy+ONipy1aD84rlY0w75T+nBQgh65p1Y8oawBrwtJTmNE53RWGbjf7Q6VXLFdx7X+9P
bv62oSOMezFtTQTaprYgXf4LTbmMNheYks5n0Y2zKNJptUgwG8MpNdiYUR/ukFchwM+sPHGmRpOv
ZVGbZg9z9nQUBK4tUarBdQZtmBtiCLoaDWsBBkXHe3QacmW9bRAgVhTtimK0VOAnvNgp7VfZTc7a
lyQwAKqhe468sbePIATPpDxd2eCl4iFnU6gVaHjgVLUGhws9hT5HMwz+9F6xfqy7Tuz0jEYHj2Gi
1dA/K789G7Ktn15opDk6xDE0TQaB/Uy/IV4xibWg/e5O+fup+SAedlzRtL7fviNWLIXM2LaTsF97
RBZPDiKyY3UV6c5IXjv2pTfB6Pq+h6YjTk8DqEyrdPfRhLUnTrgCvN6U+MpM4UXXzrBpdfoDlhIL
v7Xr0ZTrcc4kZuAJ33wbRTXidP4pggmuAdb4qpLGjH4q/mSSs63qJt25U5fPtCgxFLw6AQnOdo8o
YTh4aelZO1N2xdGWKPFxi7hpn6wm8L1yu+rbi+YlIIAnG/Qn9zJtwpiFO70SnAWrhciouUEaY0gu
ZqtVop6xtDxVsLTJ1b/VedPT8rzJFXtpieN7vfWucaKLqFnhE1St6xlVBF90brrMpy9IqQlvZQJc
nAJGtGQ2qtH6fyrrpUjLifyZrE3PMoEd1DZp1hVoeWREWL2nF1/c6eyCbj+/0UGpA/52DMWEyAL8
kSp/abHS/ClfEhyLuF3CScD0MCz0JjHgt9Dh1EZMJGkGWRcKzVUQX10z7Eqk9RJa4pKcBdNIxHnD
FmYg6EubxP+pL6XrFySb7jhfbMK2cxtEsqijQ7cbTC8sADz8EfmihjIlIFQ3LpD5UBcASo289p/y
2S38wE+CitEkbRKs8xrOzIcCY305qUIwZ0Kis44xiMX1rkg+sG4d61r4fgGLDqSG+ga0coY8LMsu
ABkPTId1G+gyo0ZyddI04O/jj5o3dU39gRbcGrEbK56clOb5jB4HZqwPWqlZAXOs3uHGX09TTM42
Rl3vqXJJB79ahd6TeTTWLPhaxZ9UCmIZNMPwqK6uUdkNtAkbWUGEPcg30Ai+xS6kruQCgITfsmnC
hrJIqZJ7axb1FJArCJsSijHkah9/5I/R+bB69zgSOfwGq++g2tBIB5WY/YNIQRyYyoWqs0aLRrp8
DgsmYfwcsKuEoJ3TU3qPmP7ZYn4CUhW4FOCkukRTquLx9a01XwY8vlRPGqxzchxQEowhV5wUhi8x
7x8VmbG+Rq1B4eKg1nLdXbsTnyxE4ak+GZ5++7LhhQcWtnYJEV/Vdd8HFcoLX3B7aaW/r3Iq5MmJ
o+uP9+YqMhXFWOzKTmmkiVEgXVGHNEvT6kisd3bBKdj4zXanbbVrW1x+ReHSAepDK2BILtyxbNb+
5FlueB4qLYWKwx9QIKmFln1K7OGkXatBHrzb0n6XDteVwNXJogtBDqnrS9ZG97YV0jrfl05mVDkJ
V9PWH2WJIW2GvfvjDo4GDZTGPUp5Bmvo1H9j9OM1bOhUhyETgeNHSMxHtdm545VrL9V87MKd1ceP
Id/6ox9Js+VqKdpgG2mGbPJhcOyHi3lRRBDmzRh3CfkeGDseNHiogFlEnLubhJHaXFS58/Mab0YU
xX8Gr/MAwkznDZdyrNyUHfQ0JIGC6ESZxi8sty2wruaQBzO2+dqSwHyECe9mkJyadPM9eLcBrQ1W
fZnecfgeITTgVfEQGqEGbs1fSs68LJJxCsAlTMoxyvPpVl3Kou7ooMiPddkoBd47BJbcUKPpJlaq
HGp4pSDFBCHA5r9W5pvSXSoJvXAE0DC9LY0J3qdM5Vl00donsezKuyK54AbrOyJ2lPRk/qMFIjyQ
cW0xalK834elMdytuqjkdN5u4H6y7cYYgYWtO9Ew/N+30WQgUPBVYq1Iyjav5RvEZcWWn+PxpScA
I3cljCPmSf9LQ9AnvlcTF7pH9q2DcIAEyQ7NXXpBCY3dzjydRQiuZlH+uIhG99Wc1/LlO7c0R3hi
OGskhYWsonpfSxRnvppt1AvcSYXxdalpApr4icC+76K5hCt6MwFl6hYL7Psnu/0jTISVyshM3FKf
DHC+Eh+PHV2/dKybgpoK5Up4fHpjDUaNAL13MedjtzVctbLUHBSNXjL3Q7DaydkbQLV/4FRPsHgr
3TA8wiWcf9VpjoARoTuRvPcUee02K1POUQh4Vzbc3V1rXAyLJOBPRC93/nFH+9UIIQpcdROvPuAU
Ld9Ax6HcYS09saf7Jwxu7W5gmVfA7Ck07QdcrL39+V5u6cZ//N9gNYV0TyxY2rksdQ2pAvhbvdZy
t+ZuecCIj34mB0rFuZAfILp7Eqo7oyLcLDzdLmvfShWtsOrADZ++unHIEbNIRrU/nagjrDYAjNOY
8VgxbhD5cOfXIPXS35AsS4TwcSeu8f45I3QP42YOv3BUbA1bpG4e39f/hDRkGuxBaQsmfAYsZpY+
TcE1oGtGjxccPp4MP3GO4vPYp45wI/jTLFkIujowyZdbJ1W0lw9KbTPejyQUJwQmDbHR7kWaKVtn
YkE/DSS5kdbDXJGogmqRkivcPHpqhfk66RIytG4VPg0k2IbLU46MfUWVOnlJBiPSA9dxUe4sv43F
JKlfjw4bYenbos8VFkYDZMWeU9jW8M/OEj9O0Vxl/DnfldGZYLl8ejYKXaf71c4+7WsnM/QnP4T9
8KkzcB9Y4qd5Mic8jE52fSl5KEbYyDz+y658pT0lIwh3KWyrdbpxiYosZRzdEeBS5de8g3ynDwjM
Z1FTAeWejhWweyfMYUL0RtCG/0dVlrC0ZFe04XlJjhMPq4PWgPNjpVqIjLaCl/vGf5S90V4jqOJW
DXYiqmAKNTpHtNbrUqmmhojHnbmUd+w4qPROte65P3S7ztoMzkH8Qv+9Qrl3ohMx3nH8/ntP7wnS
vOnK9/dK6vSincE6laFoNiamW3EbbWqCJ7GKlWGwusDSpdowjv7KPtjrJQ1d1h4pCl0N1QcSOX62
cjPaHgw3yGHUUdvQZFGfdiM5lLST23X+yMh3iRNVCt6FdBl5f92vzOMiPD+/U9zHhHB1qqRBIGz1
p5Y0N2DsD8eWPhyd1Hr2B2JdYjkNpYM0fiQTOsTGr/XK6CvvnF0l9d7Sd7D7hJO76Jl4gT1FO54H
0OFBHN2DCBXonzMM38JlXUQuYPtaCUSUFeqbnerD1zq+rHpi/2Zdc84RRUiTnvMTTA9Q7cGdMF7H
LG1FBv/jxkctf2M/+j/Yzsnv+OP9Ock4K+alXDJe6400Im4e+RkA2u5vKNRkcwW1P4ncnDWEmMxK
0OCWsLpVozLB+Aw74OgArYL5M8D2XlNi4IE2GK/yJ13/TYiepqdlYEgUB4KGCFeh1ZS9mj+TeC8q
geFENAJOc8mY2ypucC83OqpGKCWy9K0l5X9rGcLpgFOw97ieK+qq4Y6iT8N9OO1f+fQqXyq7wjX9
KRkhLHunrzQPKIhkeKBFBF6MKf64m1PLBJBGSZL3TTiJgznIw+oVjAGAjXGTuwDdZXM7GLN4mO3M
VnL1jCL1gS6ity5PiALsNbGOTHTmhJvwp/AWLerdhlnaMFXAaKmyTyD8F0zuF4dlhLwuMlsPqGXX
RYgnv8wERAFQ5mPDwWWr/pMLkVyB525TDMG1rR4qMHCvabZRauAnbLx3H1B0N/25YnUk1CfjZJPS
pTqh6hF4nINBYFcOP2V40j1mmqzOB04x2EHgMp0vxJ4cL7oeuIzm29gSyzWmma1H8hcUHRVcITsO
+QNV+tVQuGjOqT8SGucMDeEu7PAil1z5Fx5bdEoYCIH0zWqPid9LC7buu1dEvSXwjGguIW3bKBbi
BYe72RvZKQMdPFmKQQnKgJLsjq502amzlPECWpJwBVozrlOggU+75oRFAtH/G/MDs1BA0kDR/8fU
DbwE0C7LhRKp+9VWSKPjLgkKPjt0dgqiJWyx9yWDduU0FjFxS803ZUj4nMEKzBoH6HXKa8DJTu6R
YUxltEqm8W+KF+8p4K/jFVWnt7FTfhHZ4ukOkZk3FQHNmVgJ71u7N5u0mXVySHsg/SuwssijYj+M
QypGk65KSzlS34ZzFWjSBawi7s75begEfgSLBJ+DZbKS6J1lLcCbqLKCPfLC/Ih01s4EaucxRAQ3
LjBhj2R/FX1kWiFGlb8RSFRw6+20iP9T4o0SpHUDAV/2lb5Omqr5UK8vQctiKSVaaiwWM1rlgwUr
lXjFIZNes5pkeEqMKjQ88qo/Jn8gRK56iV7FIk6ORPA7u/4hsPqngis3C+aNzLj1fwdM8VuA64co
0pWdcdf8y7MqRoQ4kDowCiw5O6Nq8Ykg8/f+RFrNh82Rm4fYCAHzolPFo8hXtb9a7rQl8VuwHi6l
ISDS2CsEYk9ivX5luMPrMBexxxnXvDbGZpNIGTxgCbF8dydj0mxuLtmPZvPf/Kk2eFeH7J7vkFgA
ojnOgU1WaZf3ta5dufI8Cp5vczw61UFK53fmtxaM6QqM3S8yJ8PfbSeh6s+zL4mtZQZ8347tL2Xw
UXANhbzACPBiT7zqDcXUV/jz4A0K8YeNE0qkBsBlJDu+DOHIjPW/fOCrNnRKeA6sYAzbf1UnqGLL
2HRoMOPQj8RjCd0gVe+NlktczIcuIBFEgfNB/mVqiZMqvKjtoHb0Jxs+8Bvd1XEvQt1ZhdcRF11b
lqqggptzpbEn1M8nhCYSyVzDzKiLVjHEpS0Mp9E++WUhlHV2Pixl9i0phhG7iKR+k3a7oZ+DLMMW
LArr9G6zHkZlKWTUD3ELwE5G1zsrqBNCgs8oUF8qP4HB3DXmZ/aN1nMfHBgVs/Sz3O7+sXzodF2S
fpYLu3G+0YlW86K12ZaFRuliX5/uhemLFQglJjUSbkfIyP/xIlpOxmyDZwSsckXi5AEGLYzoqkq8
793qEJomzNsxCFOCLIW9pE4pgbue+XXTMtkTevKcKThQN5L5Knq0VOyHHLNWefLWpMNn7wEivOan
jssS47fZtBYFgK8me5Pc+DTFpKaEDhkPNnx420aAl8E5SPtyzHceMLFXX03TbYw8VSF6+v9BXBGC
85OOQofWxOlYDRvrkkPgU0uijT7+0Tl6w3GPogZxOOPnVWSkiu/HJ7VgqKBYisVlh/6Ooe3F99Yz
wXkYB9L5MhFhAlD/rlLtVQC+Wy79oR3qFWDoQqE3MrS3ct2A9mYJtFowzm9y42cewYWknQzhIFRP
AMeE8SZC+xwqgo9fumKY7GJbSTSFc0gDqnXrilCsUxn8Y4RNkEWzPmqfluoHNsYkTn6Z3R8YnfzA
9GeqLaUD1lYeWkqcDDb95vIr+ZNRdHo5/A8TSbaV00ByKGWt34tZc/pMh9NqGeXwvevE0GO0GM5Y
8VPP+TJlFQNIdtMRHKd2bPBUNRSLGeRzOYeBv+q6m1hZCrrXhxx/UskSTdjaKLbO3SClIl8Wrt4c
LI9rISGx4ddlUPfuexvxmE1kTtaJbZKciMe3tplTal0Sn+ajkgIPPWYRTBfTByzeK5FZ0OjGvaTV
z3IpIDERAYurClUJcxmoTbNxngWgFDe9gvsHAK7S5h04yiPQsJpXsHWN1CAX5qm6FvGvEQzl4NU1
NxgZpJRZui867dK7Mf1UnjUrncZowK51gyqsZVYyfgTrfHucEQTjTWl4+1L6elkmWKs4nMaAe3kI
QnlUdHTzwzLRzmMpgnSY5bKPwiWpSSYbwY9UL7ikcS4KjB/q+f8eKGYJYoWDv5ILqzH3obuBzOPP
vNHGefmTEzUbtR02S287jKubhs+ef2EYsRo2FlmfX3rVppebm3La9HMgFg3eBaK0Y+oAl6sBU7zj
IJdGX1n5KoVC+46MOtnamQMX+1fpB/ebgLSj8C4mBFUfmNR/P//drFDe7jb9JnL/ev0d+OzczK0E
q1DMoQvSXsCsLfbOMZtBcH7t7sJ2HdO3MU2Z/BAqjEUCYz+91q9/gcNp4B8OT5n8j01PpaJCBwOs
C09slsd8NvG+w3L4rh70XsvbF+ZYH+xRhFXnQEt5pcHvY8Ko+KXR6zRMmMvTpxRcHsPG1QoF2WVj
/rL5WE/5wKN7Q8z+nZUdtkz28EHOR46OZ3eqhbJkaZLTtaGVFB80uTdon5x0moefF3Nn+uWIcYNW
P1N/vV+NZHzW9y6MX1PvqARLw2/YXQpJXC1Cxs1pBqBZQAeYcVMx0GDI9guNFcIiFQJqs5aT9yCH
y+OTJGJ6Iqh5RyrX3PQQ0YGzEEvwufL79NyMOSSJo0Ci6b2z8imLAqs9kGNxGdtCq+3UKYxOFvrD
6CCVlGvhmtVoxrTaiZx9w0FmiPxKcbHNQmcoV7YdZx9km74BMuIr5dkDqlFrMvnYt49KMDuy8K60
NsyXljEiHNH009NhalAXHMDPS1VVI4nGrSyMiFqQ78QWjuD8v4NKcXK/zbMHwYq7OTkf5KHMiU27
b7ZDutx9Ii5ObCk6PJlhgk1k8k4BEhaMGHQkwbhizara2XiTfHVczyYlypGAuoBHu6cOq3rXk2XN
RhSBwcwg9mbckwmTYyzxFz5j+ZdW38Qfmnc3gZMcsPE+jrvUbaWYu8RLlDb8f3L31fUZ7e9GFcpB
rOF9/GIa7aeHrEOebToBLMMzKPTe7JMlNODl9OSLgiQPhw960nmmVHU+63IvciQVoDoX7KS0fRct
z0Ag4FUpJ8w/Wy4r++wSPO0prA8/l1mjeIpZPHDwIWnnrfAxvIlBfVBT8R/eTv9q6rh5pKTqf0oj
qmo7oglfuiRTtyMre2tg1Hnl741cB6Oa/1wjS8eGnxI/KyFvMDHzuNb+EszaxPPfR0v2XAwIL2Xv
3P7sN29GO5It5Evoo/wzSxLCa3+C7YLslnPuYukMpVlpxi2EQPqBb0k3buksJQfkdo/2IJxdQMtk
QyGG1JLEN0UsUSlgP32pi2cXzNwYQS7lpaOMkmVw7tK51Vw/xjkQGv9iQnyBLNu6LMjhNJujui//
VWjFadH4fpRrcniRDKF1Si7CQKFeL990dWVFBJlictLVSrvyS8yCABShZq2NXDdU3VeH29oA6z/g
KC6VQdggiS7b4yZwmpP42aNas+mUtbmD79u5j7K7aWWz+Hw1SltecCmtNKq0e7yQYFKyYXcWu029
YJEKz0HSEL73yPmlSLfmJdTfvqwl3at70d6VkVnU++G6RNIcu17xgGxeHfXIOho/oNLr02lp1j69
Z0MFvZPcsfJ1MEaALhtV7CzkWBrTon9+945tikQEsWaCmJMdhELwfdJOFEELD7BjF8hVDrGbo9vB
HQsldyLscAwpS+vNWb0RQoPCo231vzwbfUGF82GC/6PiVZdiVOzMPY4YSSEAVNu46M/dUn1nTOsp
evb7rTodis9opgNqCZ9sOfTjJ5gfsV+86hzBV6UbS+KFt3ewYiCaAB+1xKf6g3u7OElOsLfOHvaZ
abjTLXbUs5GF5rDey5chRYmxdWfMEFLei1Istv/40jCXLnw222NWYM9vintQloi3HxdA6iLszgQb
UPApMGLQZgc/t+dDFeF7wcPUeT/ozBMbCTgsA01zBHK2l0awfHB484KrxB8Tr4owPwWOfDauvaWD
KAJu/DL0O5K5vbqfwHQazPod4JUVcY9eJwA2hQafmM5Ekqcf35E3iIRPBr4N0ZZk/SToYDmen2Wl
UaXhTz3RvhYHVuncIkTbqMFtOSIBFZ1c6Mf5KRNopa73AxDO49QrpsQvG0qr6KjRpVuKDt25hrAl
Sj38w3fiwALx5Pj0wRPhDQipKvXKONtZcY6x8TdlofKM5vhZHi8wQpoT3Gm/8X8Lodu0Qj/hUFdC
fQiBUAa/4eIZ75b4bsdznQ+mAgW5W9HuL2uJQcEWi/9QII7VsooEZZLStUjUelBgRzRy7TQGWq1j
Yfo0pxfsVWTKCQPuRNMYCkJ3yfzJnoDVTaJ+UXnn1ZA2XFvs8jFeUi1v2EdAu8aqcoo0PEwL/2mH
X8Jvkdsi7G2tgx2U7kdQSDaMtGree+TkEc+XGrOo37qLxemsO43iUA3c9GhhCXzQe0Axs8mysbY/
iS9y4wlZgVuifKHZuSFcrR3ksoPsOUnn7nalei2NTeUWcEAFvSTHWZ8lyJvosGwr1NMY3BOKD4rQ
8uEY8BeOpyD5wSniX25+PrKHkq26kLrsSwJkzvC1JnEoMX6KbA0370gzHII3XeJOnd/8XOZzpW4u
yVdJm9Dyj1omzWm6GPXAbbUJbjvx+AO3N9BFIkMK5CZCFp1vBxC9sNUZd4QrDc0Yfu1IE57AKD+u
YJNKo2Zn0Fbmf2d4LJ83VzFmK6+/X5op2JsCRH0qRIfFCNAyT5SLUyPrSBS2yfaZe9PpYdWhJ3LK
q+7niI8WUYWmpaLJUpWNqFqAC3eMCerqe6l59systEfd1RpwQTEvKZC2rDbH1mKiOgozwy++1E87
8kRXU0cGYCUJWOCIvFj8b+dfhKlAMUlr8Pchs4gfkqQtsphDPCCGbEP5b3FaGa6WyyW9QMYR5so/
tOHgFum1NrYlDgYz4UBLbPnga00biS0XH96vUPPSgl1dCfQNJHGMwYCC+poBFmksxBhiijugora5
oiaRh3aDJCWrzGjmCG+4q412J8T27E8zyq7npt/4hv1IsoIg8boS6v895aS9KMEr9YGdUSs8Vxso
128lEybrT95pwRHzELvGPe0bPCqdk8KseXTGCW65hCBw1qyyxaxBFtmUEJBEMbxT1FDAl42NP88+
yC40kRFTGd0tyEXjvObM38zO4YwbPRk1Cl9mMaWSDJNs86b3ZoooRpBJbAUYcck1dtfLKSKFFCe1
kgd53PhfUSTtxqDd21Jo2zCdw9Msdu/BCiaTLGt7ZIWPkLq5QXvSN+h/EC5jID4v8eAZbzCpbm9p
PSxtb/jsbbJbu1WeUXiUiA6Ajc8OCDDg3+94/IYw1cAfCg38qnzE1KFdBSCaS/xwIZ32ZN2ETuDJ
IpvHD6DWKS20SHkxTRFlUpu7Q9NjSo2M8pdl4xSMvyjBGCwBHE69qHUFPDqcSwjNlCHzcgfAghy3
HaKc70blka2buiGcyMVfnCamRcTj8ob6SC/cZ1y6RbD5bqFsTULzNh6pJXrihh2iPNKehKzV4/oa
W3K4JvLMGV+5XZwHW6lWHJ0dncztP5TwSE/gzsZq+0PpoHJFeG8BXiVD7KbWlOItOd3OeF/kQG5u
yML6Ibb3aPZR2t5/ayjzlvwUYTJ3OCi6WqEMJ1ZzLXWNruJMHa1jywo4+dNaAtSMLnazgkY1p2St
52p39yXx5a7r6i+lC/kWroQsDpTotYEYGTpbyPwOOdiZPdNjRnjIhMinUvIf4xw2oclro3pnpD1m
AuIy4e6565OEfAJakE8ftv/aU5AK1GW8eQhxjQYfGdfMBv4ikfm/YesT2Z885gPrM6c4LDXMCAlF
eHwA2wW6kSwtuy8BI0P7hnQvtbWLSErQ94t2NZoaZtSEZfwoiTaO4zc0anpsBCc5eRUTmLIWCstS
PpNQR8nRQhhcGOI1/Vbc4bVsh90+uNRG/jBYtm8njdHLIOmf7xtxbbHxYWI+XanN1qVaxunXA1z+
m619PdqggWAoDScdzBr4dwI0FMIHPj0FVaZSu6bHA03AFrMPhSY8cAOTxMT0E1yDZEmUD08yhoZu
NgazlBTtmeb75Aw85xDUYvRLKYqi39ymJAQwFYghp01sL8FAyvR/X5jx+ELQ59Kp1eDlTWWre1DH
YcYb5637HS9JpE3UkuGgcY7CELHTAED4/rfZ7YAhgmEAsDraPRWn1B5D42k1s9sqb4TInf2Afix6
wOZ4UAznK8CP96zUf7EjwHjLM51jVBf15tvAdSkSyqlPutuRF5iuPoJLfw0XY8bU/OGo91xIjFEG
oVcgqVghkH3U7wPbtZM0hRL1fxR5Zg4lckBcVzdDxtSmcNdlSj1okykn6R7RNtex57IWXQ/8Q7kV
y6nnKlzOF+p73ModvqohSQ561xaOmEGCDKjcn7xMg2s34bkq61BZiG/kT79n1/6ryA0epeaHuHfj
wrkxwMGhwK2Czesz7tx2p5KGhZLqHiiGKLITU0f8pb4wyR+cu1XdJ3XEuwmSwZKLNrgVFlK8Esey
5b89AKZtleqxSn298TpwqSNQKC/QnjtxUkLZWpdVeHjLboI1eLKh5XtbFrVTtAW6vpPWT3ERjOQQ
uXB3HySwrVor0g3ubKCHJFy0AmEjSWwHk7+j34AnDNi4BKfAk0APq2s/cFkbXjif1N4pc/kItw/x
S7OLi70wU9IviNDA0lbk6NMRwOw9/IAiR2n7Ygg4wyKxPCJxHBYZ/1Bg6sS+d++81WnlOiHagVR3
GWlXDZlZVIn7E40S83+3vccwop24JMkAgAJtVyQcyhUpYy294oSbBt4RbAYOnasynXcvtMLTa+yG
Gwo87MlMl6Tgy+zgP8T5o89rX3J9NzH87hIgu8OtE0MQ+GDpBgVUXnXiFZld7mD2EZ+KDdmU5ZOB
sPMwR/Jxj1cJjMI+1r/szewbr3rbnXT4KEGUsfqI7nM6e2FNTH0OSXYxjG6xSIBud6kKVTws2NQf
ZtaHAbHTYY/Q1qsuarImxPjGOlUU8P0g53pgMY9gyNo1m5V+hQspZ1dRs6LB1dVkFTWbvlS9IiYs
gKOl6wCvk52AhCg3D8G/ZsnjQtnMNQZk7lwQ20ATVMJkaL35vq9oHaXvAL2nvzQyvfkLf3Sn2PFR
lfFVQhhvREEcxrBjBLCeb2YovlNOBI6zcvZI7ioLXNOUpK5KRIr/+7gDydQkiGc6CKisyvAMKEn9
m1gIOOP1G1xBnZ5sv5ty/p9bFgiidoPauW5iI8uqastWS7gIIWoGrwTESk9kVH8HgU0vNyxp2iUs
nva1J0S+zYwZmnqMF8bzo+m118AobGVZ+fS3t/u4dDsUBeDox+5Dt5lV+W0wyjxYvSLJJE/1gCQz
hm8r4cY+6SIX2wTSA0E/A/UK1DqHEAlZrJ0HNDNbtyYD592WgWP/WvrgNiVJL/yMoT2TPAUdtSv9
dS7ENj3LI02VQ5Kdvc/ncODAhkRok/mX+fdpTYK9nPnyBW3gdfekMyI7A/3aHo3ImN3wTWpcDRQd
6IFHLAh/9CbMJfuxXSkLaiU0rIVryYSaeuPNGht6keuzVTmYZh7vtJ/jaJZjWEGRAB8A/Mn3ce4l
sSHW4STCgR/A4K4Bh2WL7lGdeajNMU3xC2b6Q+i978uOT1WZmHTmwSm32XRZR9+RRJ+600qZJc2o
PkUytLOFstsOkGkxlmp/JMwM99ZyyIzNPCYnBi4ZzUCRYoS3lw5qqcHO2wlxiCzqqk9t6IopneIw
dw5NWrBLKUy0EXtPgcRXaTSXBPB9tsyvXzVFbof2sNyD7EKTR7QGNd0Q1x2FNv30ZrClqSsTSymn
TSAlb5UNdm8lKXqgC7QsDlJecw3n7UofCjHmC/R/RJTrmEkV3jRQjeUdil5cnsVSer6b/6MZUtOp
J0uMwVr8qmwdE/XgliCJSszhV83jVSS9UazvfxE4tsf28BvY2+bjhoj6tOHQ3B6xL99Pg8eejAFk
u4/Vq2PwmnrXZvY7sFO4PUb2VHcRv5jRmHpahoogsFHyyv9hAZcCtcgxc7kpNOZcYhO5StfkeHNZ
/2rqmgEo9lPht8vinyfGO+Rw/MC47Qx+5U8T5ZfQ1pVkzyLswGiecOAJKjiks5md3Jaw1jCA+Pi9
YUUi+8yymwJHhpkgKiqpAsaCP00fT1nzk6piGd4etnvQuMCEpbM+WEDcG7p3+6XkX+W4PeZz9Gd/
dlwfKgu1PCdtpIhwbh2M0qu5Ij2NRkVqGxJEd2mf58EEYPmfMkFHGLdAdZyH+0tOkuanw6h/gJvz
TIbIDtNooKMsWixMa9ce80auyozy0oIM6YteOuI4AoyqwSkimIQz/7M2jMy6yaZ2nCg3neLd0Zwh
51Tx7C0T7V9mXDJwu/Q7/5f7/JuxN2QzAvNFijvkrOd+YrjKZfvLnhfWVMxq/L1TDs3eG1U4qhq6
kYsCwcYtTWqnY29aCXBZc/NZTCMOonSfmJrVrRaZd7B9CTyz6h2l8ffdK+IruvwFupBeWOd9N+qw
isXd4v51HPDGyc55FzgcPdgwjzPGJsbOc1EMM8IJhm0hVUO9EZqNRKtE/eqlf0GJZuFfg8fcuBf5
4qWYknQDI1Dx9PgP3OkeolE/IY4qE3lyptQBxojuFWx84QG2kALb44tkVM5BuyVCITehGUXI8jg8
1iqFfsoyTJN9gFQhsX6ACqGvmd9fPB9edOzxC5zz27YTyMn/IZ0aZbZG6HpuIUhFGmCnonZAcDjr
2IfFQhndneodIwCclyeLRhheuZcvHgF34ZOJMjhZFEk5TPLBOZQ549Ht046PhaW8Cvs5E8i1wMIT
BNH1OvDnT5mbc2CrhFyL4pSIGzlNRpxq5/pLUkCM4XrXKolQ/EZBgQBjTBJEdZz6H2N2TsR1ZCID
4721VpXQEI9rOFrpVjU5WX5pU0Nv3jKwp6zS3hX7EgxMHZ5l7qIH/pnPTGewQsFwFkU3vFPKUp69
CU/Vsa+peRcN8T0AfoFWRrzDH5ldixQW632UiqIQI1SloswV21tnZEMI46/4QrNrr8cSe0xiSC43
LS6AZxhOOp/gGpEKtltjGO9EC2WzB7LnSWCpDWnUMZHnOZIyihGVu4Ej9FLmqc5DcBiyUJ0iEJsc
wqN4KJKJXOptg3bcbVNuJkiSYcvd1iOI901vDZcYjD6+vJhrCHwKc77yKj0C6U5bHgOhwnlQe39V
N/ShzMWfhCv9dE12Ysfx7jeNCh9MSpo9WGZIXeNTKtQPUZuEWoY4ghy5ndIAiTdRN+WRio/d/S1j
Gw2NNsICoVOVzu1Lc6iKpZhFs8LmyUFLUdG6tjGfryq/bTg3gMkgSmD7keaFnPv2R5UbzvGA4wk3
xdzWN2DAuU2/xOuxCcDhtFTrq85r49Oq0b6I+nClhKC4IGGfGntk4DQBtm+Ar8rRUDUQiW8ONsV3
r2rPkVOmTcuSdSL2jEHKTjWCnRuC9f83CPPkN/zBJabRle260hTt3pbSaxQMWtO5zJWoGajS/OqN
zBC/HB49KMWWL+EqctCvFB/42OHpJEj88BggsddA91uIYf3kgvwrcSTfva9v+6xVwP/e1AMjOI9k
3Sv5brvIOiL455j4HID67J2PC9pfIxaa49w+hF3Y97ksHTxiRIcEUGUcgMwqoOyyvDeVZM2OjZVn
sAHjz33GUMqYD7X+rEjNwMETNgLJYZZIoqkivIXpzRme5sNInAUhsKayYZ9EMbcSXZ7H+pbpRbD/
Y/n9TdbvgrI9dOeXx8jPxYx707BGF4JWStg85WIzeAkGfFhz/ZitfGFkRymY5WG4+KTLpGc4Y4Ko
5idOO2rEfmXpEJZZYjBnFKhM8JYRLQNo8LyG0LaGZmpaG7I552pzglnRAmoxkQLxfKerQG9dAFpl
e/3ur+aWk3vTpluw9VDAmlTE1kDkQ9lJ+G8ekuxKdcDmCIO9LfyowD/7M4TFqAo/HKeGF08q60WM
+8UpzsqKzC+WBNvmucyPDtvQCXWYpE771gElaAJO8vbXfFlpeiGvlWs51LSrlOwRB2fuDk4C+x3j
zyJqLmGNJVb9Tmr41xcsfrjZO+s3xkdf/E0pG46NoD4WxYQPMPv4xcDNQKF+sa6PPrW/6ivaQGcM
nlJ6ZkLlxDARhiF6zHLxxSmi023Obt2lQerUe/1gzs+pcgZFFy95cwMiyTknr/LLkGgn5HOC1c8S
SLdHZJ9Dq09ePqIY1g1NJCyDQs8rlgJmydQkfwKi1n8t72+Cb39l6qkIwpfFGmy8dxw6JxOm2/A2
Q3STnaamivSFjf2ATwu7fTdCcXM/ajJUgeN0R+1VQlVc2hAw2fwakUm5KaJR5kufpuLZtRNuCOgP
CUIDpkVIHSxKmKMJkwaLmiPxlpTi2iw97PGDyIWVO99iDlsRqm9+YHwl+jA4rMdwlDAlWLtNZziu
DUNENz61aWH+0KWAPjPS06pKrXtCSPe8ELtj5PtgNbP8htIL9U4m9BRboz8BzJIFckH3wROnYL2K
w6NN5CzjdQ34XQ7kOe/HRdwARLBIoXyfw32F1ujBEXj2rMD8wXzCi/M3+rLpA2vleHglVO4GpCl4
ODtm7KLrJOVJ8IW3mrDVXA3npkg7jAvhxY26FMEoat/Xl0HUaLozX5LQI/Dh7QUDga7YkAj7C10Q
+aafTwTtVx3byrKcBOkgjbeDPtHqQ153TNHlb4ELgXd/+imoKKOKXXl+28Bbyc1z9qt7zxULHZ9n
1kt5p004X/DDSrjy3DcVpgiX1907X1e7Q6UE3HRs+Sg3QvgmUQu7NMjfFWUJYXy5kZLOnAkczJPD
1SV9/qbGZ/SnniphuVO8PRZLDLm2oiHinEejyrdYXm5o1uLJUBs7Z04byPHMuqVh2U+cS6a7Wipn
4lqa+Nzy2pwuIM0cQTxW7XUXBW3I3GfpjmJfa9VBz0xM/4QxL0Mr3J/RzmYACjyZ4ol1bo4LqzrZ
0Sx37z1fmDEoOuVkD3TNU3EkODeu2xvseROa70MG7jTPWsq2CPZ49Yi8NpprXzqVGM1IAYY51l8C
oUROhkvyBzDWTv1n/z2TFCWRe49qSw+IK0//1T9oHrsEHiO2kFCreqYk3AUVZaDkTJEAc9sXyuTl
XbYDY3WimeDu9Xjv4GPTD2f4v9cOy/nnAwZrnDyF8CioYqbb4Bs4j4VxQGgGXCQW5JH1XQQDunqL
TAh3f2uHujCmVaI6hzwa7uASlXvtdhDhVf8bNqWkcN6EQJRt7Q6UXIo7AwABfGjBIveSFik4pHjB
G6oI28GMtX5p145L7qogfiZ1jaqnnE+aeJnBr/DNcrr3UYZKQzXWySEteV/2Qe+cxIYFwg+sVVqI
fJky96NsaV4xKtjGlrTTGXM073DZiieFxAiNY9mMTKMuovgHanjQI9SH9yOIbo3lD7CSNVavZ2UE
sGVKBHawZD4afIA+B6Bok++U6qs2i0s9SPWf1IqMxokDJChVombJag9ryC6bxwoHPrc4CFKZqGmL
Xhl1dHQitMsylQH057HC6PY1QNoPMYsPqxsL6Nbe68HAfvwVROErr+u4PGhuJeJEVk0nhwu2sGdU
m16fHpn+tqjRb4PowZ0ILul8fQhNIvCfZHr0O8G2YVLMRKPDz/8L9rQkJ4hxsLCiIOg5K52TqAdK
TvUPMph4NQ5e2zjzBkq9bdq9IQnNJu15AOhDvlhiNe9IiI8rtZRpxIb1PYzQ5JgBfeZAQ47uMhw7
393IUwwx+bsakUri7ZGXMD0UNzTQnrZn7NlKuPGYht1G612B+DmsI1UFCyCk0rX/4f8FsBfUWhgR
yMhTtUf2yDCVxovz7GL7ePMIA/qxWiYyL3woRY0Qo4M9/q1f3qlbteGo4VAlr12C3grUVwF3yk+s
i9lX20d+pkDecFXIXoBq4BY+3/Tw9NDFwWpJVTWq/fheu1P+sO+oTTaLOy1zdfamzyhinRCrZleH
ROzTlk6rddxSFimmnd6LF9Jj+XOdDXvxzq2vH7g1i9mG+TGaVEWjwV2zZnjB39Z1a3PQsajoZ5Im
RXMGdE5fnMoatH5attG646wau3WBUT+D8TY/I/oaxLWRHT+sOK5SSBt5kdZSfY6LWSNLuoJfcIL5
6zSUeXKDpqnDFKaEg6zimjQpbmBLKU78uG/7cpeFRV1sgxL4Mypu411bcxREBkqBhgaITpVC25HX
lR+A4Sp0DnzQ1OMLtZ59tJe/kA+MhdufJrxFWtvEmUVcw1DvN0YzCJI/JkcP0bn9060Sbj8kK5px
HBfvROvUxKvGQgClxKn6Q0eJUB9B7VsiycItdZWHK59VVcyUOMPYW3TSsmpZ3dq4MGw26QhrtcKe
qTfKES/8mx0jNB2VAeDQBUaLZBGBTjtBm8OwlWQkwp2a57Dqt5Wf4/Ww++qBB+RJx21ug3saUFuj
Chm5EDshPD2uzDl3jWy4W78/QNqxQYhS+n6+FKlX7KU8TvWFrlfVm4W0EIYuVatCqNBH7pQfLX4F
CPPcj3PeMb6np9lKots48vFF31ijPZpGAzh+e1ukOIzmESMIWzs5BX8abVYoW/Mev4jNvYEq/eqx
9/5NbgjOwdHXb1oc1nySOrMHrjymbrVA4an7tWcII8/ctlgTPz+93+/sdt1UWkvQVFMWKW0JHbcU
VU8IABwNj6F+H+S1eFm0cMkGT6ZwCR9pr6YpOvhLXB0Vo/8sN3x+1Ia3FSXEKAUlcG1ORoghe/lU
6ngPqjdjFRRoDHLO8Sx1RlPDdhGmdzXOoGhdstQu+to0hshfVdyNGv90AuQEZwiQUX6Wqrrt7LuM
cbZ9y0QcnCfQax3MPew2rNabG4EUhx/ViItpUEUGTem3auXvtyz/sEu7ECfgXDekYbgeHDdsxRD/
ykw84CuLQ0zgsYqsDV9FWYfm5F8nNdYhqumNpxxk/mrH24ynslh6HORQk7yaCIL+3j1NMPScWgb8
K107brpB/MVpfOebd9DaYLMZreed3dEd/DqCdIctMBWOozmvzOD/DdbZYh1fUuhjMVrPyEJp3x0r
9YRW91zTL5UC57OsUrd9NjPpUl+PKOCm/o2GdzaWOpfpz38u6G2xqbBrzbXOvQSNL2d3YcuaMjo9
2KqODJ1nRziLOvRXOHw5ZiEXynluSAkuMHuu7uBb8rslkafKx2IwL5vyLUh3/Gp9a2r+fDK/1N5e
HW34FxZl9EyeybREIujiXY+7JNQI0dRLSHPSx13BbE/hyfqUbWKoRv3LhlPK/2ZZrvEfT0yDrTaa
9N8XWOdxhjE9/jrESGjThD7tOzYNwrkihf3SgfhTX28rXfgDDEzFP9R7G+eYPI0xGanjFhw8BdyZ
Usy6wjdrQZ7mE0y5It0xUJM13b/VpWXUmTCMeNvDDAh9cJXEcCBswxByiAx7P64Yr6E95lT0dx4W
OvHDJhAAuWCOXXYoyoXJz9a9KvuDR3SWBFPFkDepgjiX2lr4kOHEXhpx7zsrUEZqrRASXWNtMNNi
Sq6tRfPF5WJX/G4Bs5y+K7KLAS6s8vCJMPrXcc1QcSHztR+pZ9X+UcmT92/qt1BYl2BR0gSETFQt
XOeTUraU8UOTH4baGJLFyCMJciw/wo2PGrSTzR3H27AJX4q6udZu5OM6d7aWdP2VLgTWi0jHfD96
lj0TkrA/OJhsrh7Thtfa23ZmSDGAMA+Bk0V/2bQd4okVltcJ7qnvxT98F1liu/oZpVgjMLrU+G/w
BxF8PuFOs4RcVJnpwmew6YElmyJkk+67ES2Au2B/5q61Q5+7a7MHJe4gJvM9rerquWBXOOV3mtxI
t9/NElz+2A4tYYZWth+ZgQ+utZKt2XDtekMD0IkdO59hQ0qvfqXcjKaA5IZp6DNw2INY3w14+duE
W6vUgne4z385UpJ/P4fsZ/rRHEFsBbQPoLQlO3V7vKSKnsrcGS4OUfT3UTyakTVBPcGlV9yhO+7d
Jzl+HeNwFW0jm0c6rpKll2EOmH+i/d9PlQa+XR8OFBbf9A4J+HtIkrbYQYZHI3EQ0EuIwIUc+4aV
+8BtbXzLUYKNcglIacbM+h3ezphiAnGkWoH3e1KY5CzOXUwQHWqIIlnW3ahjXEejqISFbog2AdSi
6WGjhXJvffGHvpo5gqvuJznFxXsDcbJAFK50IChRfbFZty7jfbosOxm/xGhvgGhUKdtAhC1N5sP8
8gHZ4L7AMwY++gd0tWw3REsVrFYFRzvDlvjAlZj5FWdLt7O+kvy7qbD0HLtzEwSCpgPneTPc242I
o4Fz2kXpPiNOGkvGBBNcWDdbkgxUdCrqlOgD9TlTc3NaxzHG7OtJYut1TmYUwlc2c2LWTAOmH5MW
runeQRo92VVENondzAGVOFN2lpyvBrhcVZ7P2rBcxjeeg7KRie1Y8ijhfaNQEtLIvMWlNr6ZsfOC
scv1e8X07eH5JsN/ViOMyv5vAALxLYqqIsFZgg9IgKv47QhmejDOAQSunorO/0gbHNayA8ZZhb09
pYt1r/46/3YsCCSUTSDTFnpX9AD4/0UJuCmJabgGhBkdM43mtvcY1gLXOmI8FuyP42yfPLFTgYAQ
Zu+JgpYelkYZ1QK69vD+a4W11oZzlUQCFk1JYquGUWNsmN5CNKO6MT1COYWVfzHH+F8VZ8ut4HjF
Uk9LQ6jHba6QDX+Td30J6yTaTuEMM1ckx/4W2cm13y4cy7J7P5r6bRAntZSs0fMq4PfRVnAEPiUY
vmFPl7wNP5M1pdzZVWHFsB9QpK1vTiUjNqPK6gKnGvQYI+QFf6EqFwS5bCoEgtk5VRl4bpq9pxaK
m/r3eiF2LzESZu0KgGTGoiX/cUpwd4hWfZEeBn169NaGAKuTU754dqsWyjZzM7a4I9LjxsU5xE2p
mLuSeyPhzh8Vj0VNAuDj0bkdVTjE5LsXcFzLxWLGRQWD1bF5p4m08Ha2B0ARqx05ikJKnHVWJ+LC
y9fGPY6k7KNglm3yv2WIXBBm6iFAApJ7I3ZGyRHcvSzPG4VdPPgYWxgU6Jldf0qQBZ/P4KH3ss8k
nN0Le0IWkZMs3nIwqoLjfPShDEmbXirKb/Wjb5FTntEQNu5HU1FfjOahdlGqutf4mj01o8yjZ57J
ymE3YGrw8lbNdZRSZ10iD6TxdWIeTeMUAbVEIIQZmrVFpic8b/Nvq+TKerVAOqQFZ/pRp2zEfup8
cgn/w3fzcL5mVw5ftafYbiLCHAsOQu40xfXBf1y4ASui10xLwxbTa0UDCx+B/R+tZlN7hQFCkw/x
xm5M3IRrc6re0KCPyl/v/P+/Tx+6VNg1LqMtkv+FtYm0Iq1CRWANjBgomM0ZigW3K8gBuYJ06dtg
52F4r5UWW41dKxsUElV5hSG4Q7YNKaAEBwSM5Dxb/Hyj5ALB5mMl/zBsrHDIqEaehPBlPgvz6lIi
iKRFlhimrPdVGrq+rAoB8/0/bJOyvCVUZq+UZ+KlMAYp04QvHvbu/B3qe3t7MID8GJjb/y0ZKwJw
gJ58JAF6S++6vQXrNMDVcXMMKT/jBU2CQ7PSS2IMFXkByP+Mp+QVzZueMxnGxW6KWTAJDky2WUR8
mznI467uDljVdN41Bx7U+6ugidv0J4EgGiXQZrp77gBS2Wk5OE5mK8f5RHm70uogbtExWIia909M
wibuQUNdYG2ztwJlMwvfuuA7FhqS+elrgze+J4BKRX63hp8gKTpseGPRiZvVYgQhrxmQucfoblWs
tecSzEBR/lgSM9B52e8krH867af2aB/Yu9KWjd2sg4PkbqxJG7SkMn0UCdKP+IKy60TyaO+fg5M2
sUil++Th/s4NNv0h0TcmZsVbHSpvcs6dN2K2WBhN5lwNs8zpUbe5vZh2/hLz9v4xMNFLjp/01r4K
klQ24PCtGlv2/S7j63kNarqWx79Klee1Vz+HJ6F/Gg7jct1CuS97hYNnAqhEBKh0odRlhjJvnMOB
YsUTqcM1GEQuMw8SIyVSQNkvH4UllQ+CApSptu/W5fqQGwQ+MF6b1ocDZxCCl48XlUd5YlE34Btv
ALandH2gu7h4YF8Jvucpn0pm7Az2ybFN3OgrGovjZfHhpi7nWzmVlrNJtj0OOKcUHUM1YIqWDtnp
yCphoN9PXsA1VirQe3rFp6LQ8y0RKvebWHnKeRk2xvk/i9e/qehleQTjhVx/3yykKG659T82DXzj
c8gShdRQiOH1//OwWnF3nnjOh6M8JCg6RAianrTHaDOCUDZWxgXSyg7eDZacor8d5F9pIi9Ne89H
wFM5rTtYKJKFEM0Mhtwpb/sNi/yAOlJj8CCKiqP7QcR5uOSnWlPW7r7X2FcFc48wAn09PIgOKyWF
cTMjB8KhyCRqWhyqnsDI6ut95aAa9Hh74jPUIQUGJGIumKE5LGnsu6DbPO1SYFQ6yIMz7Hd+T+lU
WtLQ8M+TY51it22hHDgBIoDdzZYo/eJTeHz0XBc/JpATB6NPwpiUJN5M+CVFborTXbIMkSpbi1iu
4qVMTAL67b/jCgprsH1hG8edMlb2EHk2GF9IMGNGpDwr5imEjo3ZUeME+2uzyJ6sAqA6/8RuCtUe
W0X0hhwltkzUSz3MdCSSK0Dfg3c5SeFfqPUFHpqgWpAYxK2mnRdqa1uZZaog7HLtBuTcvcMtg4TQ
wSyGpgMFIVy65DI1nqKrLrK9PoH9DjtREv0XJgledTUJFAVBLa8oTGwwYCko4qeGDBmsKn12YlY6
ZShO7YB/DE7og4N5I1l2Fn7+7gi4wQ9aeoqhbPRVMLCpzOx3AjbVAbNyZ0bl7KgbSh629FFjMuvL
vYhs31lclyQoNYBzcdLA2XvgEPr8WBYrx7mdDWJP86ROETJuHwNGsB3fOsbg4h1lKPRZ25uoISJ1
1RC3xss44fJfRO0/TEnqtA0anpW62dcq5JAZKNFRZ6AfZKEIzMpCLJ6BA6OGNqVMob8IJA3o5X/n
QWYtnCIigmSKSO9dNlxk5CqskMuIsE6Kml6YQVo7YNx3XxxgvmysmTyuvAf2m40Vc5gNw7wHTNcr
bv4NWlBEeyH0kIk/exfB3Nm4KTo+3Hu4NHdDUQiMw7a/8TQ3vehs/V7iwjLP3/xAWjCzTRaEcBW1
A758Tr+jRb3nM+IOFkzf9N+iRSD3vlK0Q0gkcPygeQsx4yi22HK3qofxiPoaR5Ie9sp02PE4VFqA
+lAjL8Evvo0awUFbLjHAMlv5Tc25TJ4QVKi6AjCJtq9gnA7fXosJxDVh/MyQWQDEBq7zCn/GuTT2
TZJKW2pNzArO7CTGGVIkoHQ7ePJ3QaNfCL8SyLy295i7wRfbjtEKjw8BVu2Pegy/PXKG4taJ9uZf
rfTiSu217x0E+nRFcwXgMWb37CqGI6m2EqKPR/NBtI7NnoxpesCdTn8T4G1hQamHSgsXM9563io+
47s3RFh3YML3BgMm9IJWDaQlr7oIA3/0zKzSesKeQWNnMq1LoakPrpRQOj/YsXEl7DznLhWthevo
q+qgDFP1MtjRowtCwqJyfdsw8Z279BJISBoBUGaPAPiIVzhgpOmleUBPhQe39IY/z1QKH7Fn5eHU
XURqNFQ0+JoWx+e1CNKD+o6tnIsYCv8fZL7IFN2QtZg0RScEsfgInWm7gvKvXiblLn/2nX3yi7r2
xsJbVdhc0QQSwTumEYFrZl4KyfH84XveX2SGlb0loicmPay0+Wf78uKIT0k1QiL8uKMCkpmLZ6+5
r1NoTPEjqlJo1z/171PJHsxD3e8NLGKOFc/nQbkTVhOk4/K0r73NQ9iaEQaGjNUIVWMKOzWft3v9
OG7iBhKfXsW6ffCBGSZnOxe1owQgtXzWx2NB8YipS+LaQFDE//1AEdFYOEhTwTeid3NbNHNPEJbQ
9U1a9PZ1FZ1tdJ7wKBcN1x38WawVA088vilBhXWhS82zH5lm/++PhGHBvC0jQKDxcriwOe5/d1eR
gjmzvwZgp9cOtTJN++wuk1pxf2SbADaLTb5Wuf56khji/svOC4pffNyrvxGMK33BBTqZr5b95vOg
AX85gjs/vLCE5IQDpZWsUVgfuGNqsCLZAEUJF7lgPAPe4c8Ebi2MKFl7oQ7K1GG1BBD7r+NOxRCO
bXo8yrw+wq9ACFP7y4nPClwcXZAu4phOmmA+yPcUZPhiFYokfMGuJX3ha2UKdm7+3tg/dAp/gQKN
PKwC94192sUhuclucwvU+9K/zfkNKxY5z/uSloHKBYgUsGYDnY9ebjCQ+Hv1OPwQ2cjcQDRlfild
Jl/GgW4ITuIlBLAxMevmfJQVaaEjPjnbEs4KVZxnml7tbeJ2jqnuVyIegsCsGLnbRfB5DgoVp1Gf
6nUpjJtGwGRHJ0sqFrc++LtmuxwuCnRgoL8ex3v0Wy88WMQ5o4M+hefk/3vwCz0frn9r6OCH5sQR
CMboTz2NwYOG1wZQSzzd8lLRYtS0QAr9Xz3fSGgTHj7jwYkBjCztuHsBilYmb2k55YyHaJlkcs/k
Nhgh8g/RGxTbDuflHhXsfu61s+gfu3ju5ACZwpp1HxPCY+p5q1pF3Vhigxop6ZG5lKC+tENkgx9F
BMOd2XzL9zFRyPVDz2TudJoFnIj3hBORnmbhcGsn0lh/EWcGHYZNjGEC1W2NGMUnOj77wQlDKNRz
SVq2XmhWWAq8NtjWDplvoF2xUDGxDELDrrjBnEiKOQLgkaq0+o8n9xMwEgtCB1XwlPghODKVepBI
dyXXnaay0KlqwsyeCMzPP+CEzFyrMNBTxZTlQlCj95lhy3W45PpM/uKna/HnXPyGVNDPBkFysZFU
t9W+QkpDZw93FYTM5dJSRFVxFtzA5wyxRQInDkkHQe0l30/iO39eUukZ+r95TiayfI2iYhU74LGk
3Rp1nF8YUotMOJWU4JTz+ezl3yAtMeoSjCDiAD4vnq3t8naWo8VYl08FSJ/JCCUmpE67hagHLr7z
kghKENNgFoOQtkyJ+qi0GuVzx29lEZ6AkzALPSWTSu6LpuJ+lXtR3SQdPoHjq0DogJjOgWf2cJ5t
c2cQGrB+LEbJMv8Dc+itHUQA69EottdDd8KRU0rCzGj7o4Y0fvPuHMhuAXYJIVNY2TtULM5OmYmH
1eQgQGM/JOLNBnpc/U8DwQ9NhDuXa7ceVpUx88w32BW+TpzXFlY8sgEUVpw0w3bztkfNApwwTKkr
zb0RCbdJZ5/BikXZvsr3VMtf2mI9Uku4h7rpBazpiJVAESfdHhcHJz257yussdv03CNIYyiY8Er3
U9ovL/UgNOqLsv1zfAEYXKeTbcwHjkw4Aq3KA7blkIqaVR1FKkQbTZPKTB+jhKSHy7675ECHBeUN
0pTuotVOATDFY+CDZhlQ2k/Q/iF8BBYdinQCIhSCWIz0T5+ZfJA3+MGXOZttbpYAq5z0HHbCxXgG
9KvkW5rSWfqefCqOKcm3vk99JBNOXuocwitO4xCg6HA5lvZDZGk6SGlxzEpZrtuPux+ZYh2+ibso
kSldMNLyYl50Xei///M7ScWs7WnJwuVqLal80bfAy9hjJcEnZEA4lj8E3SV/4PpCM7vh9ml7fZdZ
vG1eNsrIIMAQLxaR8YRB3ekxgJnC53rPPVpmZEO65ib8Qdt87i2dY2Dbw92/B0HT1zY4d9BP53lM
hGihoEuObv4un+TEE+9/fO6yKOYAqT4f3Va61GZL5TjZBNLZ/Z3jX0TBW6OYr3t0Ad1uLvHPFnNZ
fpu2NJCJAviiYV+Q2TOOu8YJdvR2w/3GS0K/XncRK6TMP16OIBEeiRAvsDDDOzRtp9B3I//ebKt6
brrZ8AdQkRoK35DtsagPj6yKSZzIaq5CW2+41e/8uwOD8hnV7K1l5W+WGUN+Ro3TXK9OQu++H1F/
PoBcH7I6AyToxx1KWbda9RvzIdobUtXmZtviX8ztT1mSRAbDo1oAbB92oDbEl5svuOLhbZtLwpto
W9tMSQbernD74XbUE/WpoZM75S9JWGYSl1rnMjxseI4uNS25x/2RGt32EZB2TjyNFMbEVyHUR/mV
1ZGwTYA/4Nplvr5bzrPJud8coCad9VzI981eRGjVCPUBrNxgtSuyEFlQDolIHTxUXaErogTAbevc
WqqwjUQQX/B7O16s7LsoXRfJ4YEIgVh8mnsbIsG+YcvhtCzQTekvlQT0wtEPDkg/pYlivfAiKUnZ
r694Fq3OIjlVDn5asIT5asKToRawvUlnA4tfkAbmAPLOQQtSfERZr3IcGwiuxGVXSlKXfxm/xo9W
iOkjuAr5Au9+u8FQh8HWDftWgMbUHtMhhabhBQL0+fGGrrciN68iU+gEy+Lw55OfHwHn8ZmCffDs
iYq/LhTZuPKDv7j7IyhxcRaAMoCF4MpEEiXCI3RGyMLNP11MVoZZ1Dvf3i2IeQDRFPLwxOJU2cUk
BqAeqOBNvjuoAH9SzCBc7Pe+DJr8Bi/TESKLOEpzm967NDM0haDTfZ9SDdfo6YO+NqBL81RyZC6N
PEFAtIN1aXwTRz3w+IzvdURAPETZD2NDgYk1DAU2Foo4ewFJa8B/f6P/KWtg05b5sZeSTGz58pBH
4SrESr1ZCWdNJgmZMGq4ffT94xc9MsznXoWrLxLAWQTDVBSLXTFf+GEZf/+eUsj9PMwphK6GRet1
vyFFuvnOOWc2AlyMGLSxpM3oC/sfr2R3b4I+QBW8RfLhvb5X0lIT4+lEcVhRrCxJsCdY7ZCE7gF5
jwjDrrALr6ELv+7SLFi6VV1B9cWHxa+jr0dPfZtDfVe4GahMGBEkfY1u3+r9pZ3ISQ8sD22af8oz
xpYfu4xW6NREVAeD8DQSF8PnzJ5M5Z9XggLjS6fOP2sd3SYBYIQWMfm0saKJM67sH7+RokFrMl+l
ATFWWkJPPZ1w7D+fPt/X/bZp6LmtlGSxNUwewKPy0TTTLdGVg4nIeGc46C3LM68RmvEmYgu/Bagc
HcXIr2d0JD5wNExYHFTVbYvkw88UzJaRJy1Sf1WrePGTD4iwxr+syzo1lj+In8NvcPoprin82iQB
hXzWpch9GKAVBjjLUTFd1ejf1Z31+OcRP7ykjCLzYrHy74XhaeIdiTV9gSY02Y4Qtl+9Mw+3mRSk
VMfZFQnVVAU4+ZCKL4Ru/IH1AI+TbpuzR7xeT4mco7eunFETZMbr2Htcz30bnKNk8btWCW1fyoJ0
J5X8WIyMg2Q0vTxtl3WnZlFDcOdsBHnH3Sntluykbgttdhiw2GOVG17UZC7iRSMSEmg4Iw8+6Ce7
Lh0laD3r0WIArPpgB/PDu6XJxvJZe9d05UJzlm/L6Du9NAzKHKlfJLWBRUwkSlYmpLg3bNhfpHCj
b/hw7uTAETcHp3Hox6i1+7lRiWyCXzsqkvLhRHj6zkEEZ8so3oVev4M/NY+vQgTM4c0761AZlkxg
wgQcpiutF7dhEfr1PJ2BHbUbYgmKkS5AO6K1R/Snz4KPQSDFm+P3c7bk7ZaY5fRD6WVAlWKx2EBJ
43+3wSnWkq0yrXpWF061Goxp6cwkLuoUoMpFFDA4VwN7aQLrXqE/AsbkOo+9P4or1gFirrzyHRix
hDs8cPY3PSKygf4ghxwc1ZyPkzJXVU6cRVyUnJ6e7FTFG6XlcFwHLE4d4LwaxdEOW9oVdmpZCNyQ
fNnIWGfbvQ1Wx9EAGNM9FFZyFwvN97RCZSP1oUi6GZVyiZq46NERkvKMmN+qkqWyXy8CIZ2Kyf79
CerZGXLujrBj7Ef0B2GdTFKHJSKnlaObO4vE0YWB+Sq2bbwMi7zS0cE1DkFGhzj+zcB5KPkziJeg
cTdTrRGRkZ8Pbjv/t8VlcixWILAVPMdsv4m0isdGopugyFXXrrlZquMg+AUHlPku034gDAhVyhIn
MW0vI877+VhFW0u1wrzS40ksPHJSAgSvqFG+3KrV/5DoCfX0Ft4DIBnbJIxcUEFRFiVQfoX7KvUM
AOVzzgxSNifs5LwWO8r9WeSA+L9c35pFpKqIScYmjfjGvhVcOIqzU3UTXfCJ2hRt/JeWHX2uR3g9
2R4GEo1OIAgm1XoUvQy3FRfgDcz10IXiTHhVuYHSuph/fSvHy2pdupqxt+Nevw0Zegwa8HiyzhEQ
NpLf3ys/oBi31cK+odGTMDLYywaSPIITIGIlMjabKaGTHUHqiGVjK11SOZAONutdxO3nyOJGhcmt
yoW14dieY/YruSgxDn7Sq84Pnl7NkB946uC4LBK/QdO3SP1DlP/Ehp9nuIiTfNP4hIHZVjyXVXAu
S44WlLoYGYGeCR5o8Fr+9jU+uHckABVjfCGco1kOEaBfS6vyc3X2zqEc+rZ46N+ms3jaB7z6Trlt
B+PwaWhuVvQG+WZT34mbvCDyzEnoZy1r495MnJeFClwp8TfSjtxNasPsP899TseX5O4TQKBXa1q9
IW3P7q3zZ4gl0VwNEE5xZ01VnbOb9F3xKZ2JH8nXWC2w2YNoWmsmjPp9C9y/QMb9Wca/h1G4qo0g
3Ey61WpTHTKzzObRVWSnV5pGmPJxUsfTghBhzRJrkQNc6+Yio01QxUlcgAuQCpNjXnwOyK8POzps
kzOEDavzx6/tdsuvikYhnIlCV7TCvetrj7qW8CGEC1ZyS6z3e0DrYLj9meCzL/KvMJo48Puabf3T
fs6MUpkdZXiNMLi3qwpBR/RzV4kRfIbHJ4Y231E7TNCEWx1+bJWPZEvNK/nUvk7F7HmCoYUzeKgO
vKS+0FL0szANNiyDvvNJy6dzz0/y9jFMgHqHYPa0t9nX9Nj4LPL/TKjfPvRe5jMJwQMEFoueDog9
IbRKqeTp0W5poy3ZJEq5JsRj8MBKXgCcI56HRa0yiA+iLHNi4AkBMybgDzj84CWR5F1/TeXxTocB
/Mf9PQp29NOnJt/O6NF+wCgWoFugidPKrX1tDZDaLvKrTrNxzSR7V3vfMqDfU/6JqyDCeBpq0EB+
ijpRrIgTgLhGTcsdEzhC6uPOVfeX41y/8GYJkhw5ZwBbM4R4eiuO4bK1j3nnoBMXzfZLWIfkYjmM
WESf7S5ecSlbo4bDOlJax1SzFJXhYWmBwUMWm3qfSW5ArQPIzCusiKbKqxeLzasGU7XHrVh/L6eO
VMd4Ep8G0ZqemdkExuWMd68iluWgvyhYDm1uG6Khd/e7/7bPPE0cw1Hjy0Z1gDhKE3ycukp9tCYi
OFID55Ir/J8CD+d+/emzwQkZPOSsWvOgEVYeoNBGspvFHiC2xshvgHvUTI13rfdJbaPUmg7rQs54
8BZHFSfi4wtxd995RRs6t+Wnx4thdF+6eP//4FXIbS7FpwpKk0pHUNMSUTYa6Gxup1Ts3n0Qh5DH
Eezolq1t+etS7GXolnpx4NTCYt15KfZtrbJvUqSQh6rPzifBSMT6dG6quH/18JzRPQqwkB5Qcpzv
Jbym+GmqU6K7jnWjpwDK516IvQXWlfwUR6V9Vd2Cije/JlHltgb0f42tDBGMKZ9goR+KThrhasAa
617kltN4wZInhqKAtCtowCyBy2s3ct5mYxREV45aFbphxVEQVbXD7j1RsZAHDNP+CRNpU6JVhP/m
23xR1TTg2OihGZWOb3w3zSFpZrltdSzzomXGvVHgPQCUKkH2GW6SUqKmDynQn3+sWtbzkwKO8hqs
m1spCPNr+fGpnUcpGQdHOLcRgaI0S8FSVd71tntkR3q/zewMj3yMgnqOXrGYKhiCfkmsF3R9Q2Pl
FMgWb4B65IVrc7BXiU4omXFhybk296HFpAyBZjS1WoDLKgE/9AlL/yY85gQzWIxWFg7hj63M9YED
eyEqF5FQPrB57kqlKHGioAiRkirZwPayx0WWU9dxgUGSheZTKBPSgCHKGQD8bjiHL9f0/R1L2UbO
ARNAs8c9Nbyrm8T3Ade0+3BpRf+27OD8D8l555n2cu4vXARPnqUFeyVeGJ/lIahNIMZBhruHG6iA
lwAoAHg7VqA5laJMbY9dzWO7+QlWw6+PHNBdYQCHZ/j8igxWIAyMgqeGICCsA0Uz285/p/m5rANx
BmTG3ru2d4R0TeJx69JFUvdQRyF+iL+Kss1eBM8KNI2zIE2Nm3bj34o/2ZKpV/u0rdfnz0zM6S8+
GBk7H/4CAEqR+nJdMyGk3RVtSJmJHD+E6fFlxjF7n76dxGJ7v8i5RBriljmzclQ7FVzKnftk2fgR
aqGjyyCznkMhRKIAcxLUxq1VTv5w0pfus9RCKGWWzJnBx6Q+A1i18ELKL5Xzyi+jIJHxi51YOPxs
docMb6ZXxxO3uCTquqJdaeEq+R3jFWr6VvLWjbdAAFJqHbNqluGrbY1BS2SXosuDjLQZVWj3d4PO
B/bq7b07wW9b2YCn/WG4Woo2nG20d/4BTVbRnBQUWrg7PXKorpVVkpI61Xx8LfuVWM/c54kk/nye
A60j23eb7ZYoRwApokpYBkdfpPdtbtElFvz1gjz9i0fPQv85AEezJ9Iqm+UmVIalMme6QryTnSjd
BxNS/M73nryb4pXLwFENhgJTo0a9Za8dxTtEkKIUPCqCtcxiLga6B4uY+ZAALGxdISDmfDPWKlOG
NW+XmF9QP4ZvOobbHWdCUPuvAR6BP2FpseXA902Mtpi7Prunx1m2L5Tvg0IyqCJzINhu26ddeGMh
zYNTVi9Vh249oXD/q0G7+SJCpjmt4XVPNfKgL6C8i40BrItT1Ham5VFt7i/dGiVsJmNoxx4sy3Dz
Hc727PXaLYMHrGFq79Sewcv5NRBAfhxWY3eZ+GFMmaeuJ+6XcMeaIO/bU3ANOzaU6hhcMYU0mISK
UY81S9KaynuDe5Hisn0bi37U+kvFdbUyci3/UVyLnqVpCnhIYvfSG/Rgcmf9JxTnQ1s/y0/fU+sd
Rsfz222SIpQpJ4Wt4+0TElChHU97dtF5R4h5PPBoxvs/vGds/HhTCEdGiB8UKNFr8iZmAdISq6/R
GUUOkvJZVrENB7/tyxgc+tDfIUInFCFbkC9SS40EvEt8vui7DxnnntjW03vNWYyI2jXeWNMXgPYd
C12WkUcEOik7/EkPfD5mF5i9T+xf8ARvwZPvoqu0zpv7psIALBaDVs0iyWDe9REh2z3DXVarldMQ
WLElmPPyH7T+veJpYUxg7QXuVorDpu1POQ94HZyFC6JP56W/L1kt5kXAeuB1fXQAxXD5YzpDXdVu
aj/V+f/c3iU+80Ma6o4AJWSMkpplnVEHHYK8Eq+o7OpbnjdENWtTFUcdCB2Wuzlcwz8E9aJPxs3N
OVQOTLN0zJv+XXpAJIMmSk+71/48jWdDTotZReaIOp9SautTwUr+UlacK+9liotwosmZbA+X+HdH
CefU2rNH1qUwR2r1oMHSjCa/52rocsmYleolytRrAgnaGC7NHLz+hg2+BKvr5aZF+SqKkDlKrmEG
b24uPyl4SBiP+lZFYclBFke7KiES9rThWo1bYQKlTy/wUDYQhcWUAvY9ntzdKoC29dBmybvL2S7c
y1fprt8gGZLqu0SdM215p0pgdu3BrKh47/zj5D7hOzUqTVBorL6gln/7TM/EQQ+6SszLGbdzruwx
wY678rT5TQl9l95SQp0EznrtoqzZUJMq6caeyejKH6ZCu0fcoMYOcg9J3+lJWfBGhmfLME9E+pug
ORiS4q3cAkIJYOyF93ysR3g/uXCtZCM0c7/DOHf3CwSJR8Spt1ZZwFM17lB9VLtTn7N1h455e2qW
bmleXCC4ODhKFwRy5++6POCn9Cm2uBF/VCe7R3TWxXz/f5HJ2LfC+UivNoki5HwzE7bKXMPojZpz
BErWwKiueFG+2AnnKzdBG+jZSmz0YJrIUOw5DMfSOAPQEVgFMMGUAPO2bmKBjvLQq/7Z6aZN99aT
aUPCMddMEU6n6Y/KPknF0Gs1vwee+2cW0miMgVqN/iK5CH1OKWMqAJGshQwsZjzfqBRoQLz/5Fba
mO5H1QhCyqNQYZfgBf2ptHfyrr9ugT0F8etfQZUmS1Q3MSNMBRR0Avsy76glKDkld1vr1WtlA9UV
vtXnbHcMTzPjauqBh2v3N9Jze1rIifeRYA9iF/iGf2lmu3CK1BWK9fqjC3ONjVxh8moELaaW3Ra0
i41gJi1BZUAnEt/9F2YoK3NhouTL5+RQuwZmvrsECmHESiFk7zFd7iRxWhQbgr+pzTeFDu44Lw8S
aDHZVFJv1K/5eKZVZimOi62U39gu51pfCVmdmyrNV50qcLOnpbFIJub3uFA11Up+C6DK2M78v7rl
wqi1538OU1QwEDsaRVs3Qt69FHhgk44eY8zwHsWdIefMmCHDT2EJY7H+zT2lAvZ2/wBjC964C/vt
pnaf8yhWAv36zskx5TPaVpuPgWvY3CThCdanpikgF/++hSZsRQ6Tuzd7nQqc5FyBJKJFooMAhvWX
6gt2g2UIBgLH3KrvYBXv8ej0PBgxXdUXxthgfk6Gua6hJF/G/FUtF6KRzuHEHihdJ/FLn0VNjQ4I
HJ4/Ts9yDGA6SPBALhZPWvTayNNzlbTWCt3rgnqHKP1EWaNNroD9XyEnjO6w/GKkFk6c0RJus/0+
PlHqIUnWswRtkQmLdirH5aQzxxczPg5MeF2PMpmYMlWTlFfMOh+g1T0VUcGryZpTNrGOKRVl+nj4
WUXHYiOpmeMBHG1VGYoMg+aqwxRAyO9vtavYs+QvMlTtyFN8ii1YSQ9QV1qMmEPMmc8nBCZC+9eG
js58C6bjDLZw2wo291ZZvhWJYLtFz2kNCGX7tzv6jFBImWZS8dzoErHrNHuCVe5QIVcu/ncO7BPD
1PeceQPloMQcIYxAc4XDTt+K16W7+w05raRB9T8JHffmwtt1tRyq4JexiDwwpODV/SF61CwjsnNz
mrXJ5VTw8AFMkxZs84C1LSVUoACQbemOwwC7epn++vwqBBTcY1Vu9ZCCwXe7IDYdkNN0G/PVeGDf
4vRsag44w831VU20gLCr85fcxIDlgiqilJyj8Lws3Hs0kmUo3a0lvAU/5f8toAucr4FeEkR7sC4a
chp14fGXIpjsIdmgDST2Lw1jQaZ9HesIzNvPrDQKur1MBEqv2PUSaxv5vj366ThIBO8/4JqjZ3j2
y8+u+SBzstZ6nKwuDdZzCzJSzaZQUIYYWc7jm4kdSADl4spl9d0RjdRtvpXa1i1tr2qbLUYKBHI/
XspCPXryek5s2Ldd5Z0Jx37u7edhjVDrS+kr6/MQU5NnqvsNDBIvaXszQG05+uAlX4aVu9aTd/qg
1LU3xoZeMr/GSxfIUv47rat2NSXASwx7OK2t5ngvuivsiaGppP1/pCEn3HBrh34VYBZfRwdcnrSy
MpZhdk2EemsLdr3PzF6Y4EoUNPoM/LZ5AINInKE3pDiWOVHvnAjzMvvcbmHtRgZtzgYuzmH4yA4Y
PIDDamSaRnIxpFP5eani/B3DHc+FwBiuBkUkUnX6ujgch7M4B+am/jmKsb/t2jzDQirBz3O0FU1w
1DhzptHnFc21nALVC4sso6kZW3n3D/giq96fBsjPrpfDUypHAO1m6DLkuck8Vlm5GjXOt4nGSTw0
kiLxQL+NWiFPQyL+6pVGiT4ppPb6A27fi9l49Sqscr/8PozkCrPE+Gh/cho1aV4dEjDQmW3W12YD
9qRjmtaO9LX4NUolMuy3OHWieDUEnEIH1F3EhAVJG31/cVO6XLSkjINkponmSYAmMuLTPsjKz/t2
C3oy+WTlUti0Jt5HV2BIhiiHE0CsbE0iEuvdyv8+U9oE978Sc6tELUzb2HHD6gw/C2TUgipRFnp9
3XWHknON5Me4o9BYC3QaxqOHrCMZdbySDe1bDYM99tEg7wIi843j+fz6hd+mLBD69lI6aeFOvPrn
Ilh6SCQCR0DiG0bTvDNrucLazueNdV8Xq+3Ll84qFQRvjcQDQQDXDB+CyvXtXCdIIji0+lmdzfgR
+rJIlQlSTKXAxJjkm0u+x14ACN7+x+LkLARpFvnb4I5CXoKabl/r2J1juDZIKhUizJ8iefFdqNxS
srwn4zLIcaZnN35KN4sqBr70iHF6GFY/K/CvdKRGY9RbRjw93KI0MCuj0GyZL/TPBqPYlxt1tMI2
Sdmm9m7vh++BsGn0y5jfcMvdN8KfdWxqxfHXMWM5QFovBMfJA8NTJqr1raVrUefYjNm1RkwWYov4
kig6fG7Yb+h+fhztHbcfhd0JTM1FsGtL/WiyGKJoOGFCK41a1hdVnoA4L63LFAYYb3s8J4jO/7zE
cfU4gqfQd+z4OPfFTB2RuAyuRICUMePV7A8aFoUng7PFc9JtJSeem+i8qWD1xRuE5lBRneuYtdm3
QgQyPOM6TnqryZhUWEWkOeIP+PoQMcqiwPIJNtyIXiGZFFI3n8QYpRVrI61qO1J9UpMatngXM0FS
xgolBP3AZpqKMGvtCO+58H3msF1Ti0FDvhSmezeZD1XY+PzeZXfIp2q4gA1ua+MOsCif+x3BjaH8
hqAp+4f2erpLcy/ImzS75hM6PNc/yeOTjXucONlh6jFfLpNbkKdW+cxNBbOIrlwcZA5W3R+MHx/B
ydspZLcyy6qgEa+MpNvRWetSxAvxLTghP2nHemOOSmxI85jYmO8kCgCR0VSoVV0TFC9XQydIk9aE
yfUFhCvqKEw2KY0XV8Oo4dpmjcDu8v7eXqsmbr9cJ9PK3NbzWL52EJsi5R0I5+ibfkl43d0zgETJ
4N2QdNlbN3peqoKiP1JSWQ4woPUkxmbwXT4/AFOx2XTd5HbfMGBzKmTAjT09K5/qfTGHQgSyXPFd
77dxLnrBu/RVpHqGxCJQxpa4kLkBFLRjqLHtLkv8qixSPtdzPkznv4zt2AzNVUckxdZyZeg967k5
99O3ksh1AWqF8dB1LP65lbMroEWp5h37hGImFoGH/C8SIWumFRLXi4GaOO48kBa2iuBk7puyhWxN
GY2I5ViWjldeLWRHpp5UMdO0teXCxmucduLKQavhhVT4LkRxXhJ50f/sYpPFzD5RBBcGnEAyG6zH
6BSEJ87pa1/iGju1PnQHjFReDl40rPpRK5sJmeiOpw6A6SvyYMivKX5Z5QBZa2Q3optomVBkSCuW
tSCozIQSf07mgMMNqbE/WU7LdfKtCzqdgNAyJLnOPRSKT/23v56uiDNd9jtp8ZAu5sGRZZV8yQZH
1nD+X/Lil4kXm7qvQZIq3E4DKJBtYJHWvTvfwnTNyWeo/GYtVMrWmXQNDIFOyMQWMXdVqKR1wmb0
pxYxoqogLSJHw1O9STHhxTqKl2JVxDj35kz82maoskSNBr8lljmlS9tzdsOnTEXXYvQD8ZsAY09s
jw3RZUMTAV7Dbiarpn4Fxe3K92J8Ev1fmQaOzOUyAqHsxMaxrRSdbbbVq+ZMFpKPIoBBnuL7n/yZ
yvQvICozUijf9fdb1JLgC3KPXN0i9Wy5pUXu2oilUTOWJuJvPpcKkAp0SUb8VOa1gQkICSBb+GIJ
9SAA5ySib8w8AYx9owaWy0Rb5uQfeFjjRVtLe91XZa0N4ZP8RiapZR67/855qBVlABQqoMDtwrFG
aqzd3wvgVgQWQ3Hz9hsYn4Vh3z8avlkCJBDXUXwyY2/BR0l4cQdapVHA3qvqqmyCD/bd1pVl/KJE
KvJPAY2YZor3n1WaNZRPTWTloQzoHSV90eV0Qlvdx/y8wBj+60O66g0XRx/GWMxKBPCjd8f8yg3S
3lVK1L7tAkikqK/3oQNcsmZNm87127bsP8lmcxkaTExNMXHwc1KiS0z9g0g6ILA6pWJTpCAHLVz+
mxrEenlGygWmiCdpN8MmaNIPzEtoQP2+Ik+UtQn4jl06GGinvFJrZBIxih/qU5vtrwYqyRRk5cq5
wfL8Z8qRwiIISOiICy8jTMh7ohol7gGmt9b7RzKejPVbxG991X0jXDZlRG5J2Em/e/Gg1kuikwPn
iT0Y1SN72rwk44jj44XAehYZX2leZZ64rkyP+aTb2SQA8TH4I/cTOO3VZLzgKk+0D9Bi64o4E8Gt
7pFucfz22hAHDG42pBUyc2DjwmIAz7B9/m9dTJtn4gMUcQsD47Dw3Sb7aYGPKBLB4Mqz/U50TFH4
/LZd1ldtudjVDBa5AOnhN3/zx/Q4JsaMWrS0IaLtW/9I2dLV29MDLKV6H5RflKDW1RnT6x6lahwo
FDBfo6ca5cNL2sCi+WZlPXbCmXxs8EY3n46UMkj29pMap8BvsxiNlzaEv0znGK3gLJOhu3R/LyhC
4KNZQWOJXLL0qfGqjDFinYI1/ZX2zl6Hi2YzzBpGlOByzZDuhDBJS7D5TACXh4dcMVhMlPlb8rJs
N2zjar3DtxTqE66MKp8qUN9vsJJ3NAC+eA+vOMzlQfjNeOpbpVCciDB7Pt4dPXtU8jMIRjoHXOmu
lGXoGgzJ98PsX40Pf5BPutz2AJIXiGCaEVqbPBzh9LIvvIBF2MPw/ouVqbv6958nd0seI2Gs6G55
pEpQq3e3J6ieRNu3SyT727MpVFWf55/ZS1d1rNT7koYNXGb6zlQfAEsYUICDcZvBjfVHsv9wNm76
vhjO2wpUjRStBYFnYH/L+jKe4RpEM86B+7HD7xb21vc2/5WJH/otYdzYFGjIF94sblSgLoJdRaYJ
5Fx4i1Weq+2YKhm6EtHMnkQKNANCK/HIWggo7vtAZxIzugexun/xtz8qMp5f8IIoh2cNeS1qIk36
Ev0eXqglH38JiNXPq1FjLAKhoKQpb2TCl+HYaNjAfUHQ8unRdDloWh3ub+p/J+KXPOQWT0QJj3Y3
tcG4ke9GaKbp5oLcY1X0dZbjDfkU1iKdGZbBaTz1R7uf+I6cfSskpAIof/E+v9rE4/Avu0wF0ha9
S5ilssv9mgcYJT2w0pW6AAFREfQT5YflJb7nslLma0p52EwEZ5SEFvXb/pGSMgQL24865SJoqBgC
0JPWPtMl4YS4PAnsCzv2+a3TkW2J2ZjQTIZ/EDiu00OP6dPSZiekvhjhIE0UwHFVADWfNURmYK26
LshQe6bM6Nrp/jLXsMdAJMlB1JD3aXS1rD75ev5qarYGyU+G0C6yB0eKVcWyWfcIEfQcOG/dj5ns
PcjAP9XBTHv0QH+kcjZk+zl/TOO6Ks3z+6tC1YFYFu0yPxgDBKxp6zJVsla9Y0e0EfbDPgCEoSea
H7qCIGX3EMhhNuj+TZy7/kOb65TH9wtFhGbVxWU26H3bNjrodL8zX3M0iwKE5nKT81QxRE32cYft
8X4w1SW3q9wCjWrvUlucWRWqPCw9ez9r0QASDjUkBXLe/ixWhECDTqxLYbeGmfklekSPvhUTONdz
sS58F6U7PsqLP3P/bBJEn9BL/c+/Tca2Dl28ieJ+d78z6+wGPf08qfBLF/YIJYyiBkWf1usGguZb
4q1FfpFYueOU/bUdViIHqAngJNvVJcwpqUUQJT0TwayF7udabtgLDQ4b52m9skYWjk3ZDJ1XQfc7
cbwB4l9brt5hV3vYcpoXPtKiA2rW90pw3AMIFpOrQIytRpTTm6sAmDqkFfCtkZO4pIB6fnP0w9/D
m1MSdqnxdQ9v4dJoOiqAr1A8TFlpO8UcSuCia7fJtb5K3XfjoYnli/chOuQCt6X1rMQQV94cb8Tw
RXHQSP94igLges+weyaGiw3nwFcoKXtmueEb2DEhuhex8XGnO64F81eFqkCCeJwJqwdD2xn3QnO1
I+7jPddgmcLaV2/U2F+cCOjofDEndxQI7OSs6kWppZBUBEZnwGNBAM3Lw9XaumJmYCV3DkmyDAPA
nAd4l4WQ0wVAgrfZHahoggOiXd7DVZ7MgRwqmnavBrY97MXHVZSuEYvLNh+k10/sG20GW0c787z2
tmGtxlUYvd2kRL3FQIa8LjXVUnILMsAqiRz0qZBit2db1mi2mmwKZr9gQIoIh4qMmKweU10ltLWX
G67lvSixVO2VWBDvg/BndYCMhgm/WRrCB34+jXk+dqj7japY9QXCqpr4NEfed9SHvQNZzkQFliEx
YZk8PAPPxFz/9854b2rNZW9/AKvTDkGFFnuw56cLQXmVGJbGIFQzSdY+kqfaUzxyKGRsIZeTyDOZ
hh379rBjYAy5lo7A2AwCJRywfvRIeiF/JEInz5w/FUboFIgYL6OWy2Jm7eDB6Y9hmoZvq70KXfp9
iN8/h6zf7bvoBPaKV62cuMxLgmAKeiIEiNmLGFr2Dy7Tiwf8aN0yZY3s6f/WAWVq16K3Rc4r2JME
R4L6HnCgSyV1rW+3vRpi48puKbR/SWEUTeZzRZOqBHd1RSEUrP74hSpAYc5IEVf4yd4n6zofu4fP
81pwhIzzDwhsK9tqOgUiic6jarGrTjRzcsFK/sqFh0CAvvh+nbl6C3qd/PoyTlafQYc15tZOxiNz
mgTTeNDYFmgOkFIlMLdftnaffpY8NumYPXz/82StNzJSaQOgQKYJ1b5UsCuhzSCgDJmi9ZzVdNAV
RWZJn8Q37m+xIFYryIhF7B0csmnkeHbS0H+MclxkAfzjAnFLv9LyLKSVHM+ECcB/SkNGl0oNK17S
9NpeTFtIirE8weh1+pMwdgtpntnmxYh+aHBkDba9WxUm4oDVQE5zo9w9jkG8b9rUEV9SwhZAmmJc
WLmbDWo84/ZtcQZJOszUL6RaDSxin9tpQzH9bJGpl+AHI8EA3o5Ml5pMz2+h53AXJcb5Hpev6aoK
1Vsba+5heqd5XNYmnLO+c1boZzz0i5vmbKwJa1B5BsDEU+0BLWKwvkYh+G6PPnbkNvXJlMQJSFSj
L5T8YtULD76UyKG735Sufseuay/rTOTFvs2/rYNEroSShptcNd4PYvfJqvkEVd5zroZQnfMwNnpJ
tOUiASUAi84KOgmJkOLIiU2pesNJBEg/YNDW8BDiBsjUBIzJxKDMivKtKuGm0s2ivjccTJphPBRe
nGlgSXho7851vvmwDqSkiZh7/59S4Eb0lZdfqGU5m5ygTyiV0nQRwLAzTU8kJuHNdjrwmtABZ7uc
jdqFUednttlJfWCzQvysw68SYNtHDxqt0LP2nDGXTZoOO46J8SUHGgrPKNhx2d6zhX3J2K30ynmI
dt0FrJs+3eR83fGmav3Cf/C8jEgSNgX9BAH1+9UHziwdjEVf4RAW3NrIwObafxkC0OrJ+HXsCOnQ
gzh8SCQJn4IH4IRtzxI9d06v57Quo7MQXIPoSMbvrvn2z8s8LUefdScBpo5T68+nzCVEk0ZaGzGw
/URRJXNKUpZTzxYrwULOYR0+nR9diYmqqwDFB2bh6jgPV0EbLaJhsdJQhmGHForRDUNcHvt/uah7
beylLfPJoSTuRomt1vUq49zHYgxbien9DlgkUufyccv54XlzkItyRxcWgMqPtA1tUWduaNUiXlpJ
TB5FAHPpJHm8j7Mj80Y4sZQkGDQRpisAJpqsoCPKRXVXQO1qitG+zwJzZAlvk9PLLbi0Q3IlhMNm
EbCq5BZUec06+XNEy0n5nGY6FiWOhrLKCPplMvTtyehF+zmuuDc2jubPCwMczn6qWRPEyi0rzdmF
J6zArwKDvwX8TnM93NM1vQWvL2HQP3CjstHKru1TlvDvtkTkttCp00qzChMNBLQnYGheVZMmNth8
0QZq90nNT+dn0VAWnqDO4s5cdwCYohcAMcEmHg2CEH+ULYB63mO3KG7ZW1y0YaHw9J1e2Xcz+1Fq
Dy1QggpI4BbRLRNLpwRMn/RwZbnxtZmn0VimVpjQ6tkMwu4jN0wW/K/Uabh/7Cx21mWHZn5voWDu
a7L2+o64BGO4DO/mePUaSuMe/VNrU2eVL2BHYgCcod8ef5yk24Zb58Y1q4z44xYMhXmMH/ediHE3
FZlh9VkkaaHCNtZjPvkgqL65E8R+PdG4wsSMSKTcFfSulnvRPvI2q6nMtc0k3iipx4ZsLGZpYO5a
TgefphDwDHT3jc+FcHV1pAXOEq578J7v8EhqWTwaNdhc33Bi3DQo64AGIPwi5hJo9pt3eUvdUD0J
+r5qR08Z8mVS0fyqjJNqxfAqY7N1lcx1TY2Ht98v4LoO2EBgdfh4XrRUYz+k3i+wcj8o0jgJdYR7
KpIu9cypWR5IPE6c7Go0q8qQjHV06nNS0rUgKG7mp17oeA6rBQH8ZgtieVdmxORe4alejJvmjCyP
obsRJBUNAtz45YcBXLYsGZcf8BDZzD3L9LP1cH6eePfn1eMM6oGTHBmmw7BPBMcOLuLxezoa3iXv
equNlJvENicevklH5mo709R6uHv5mHhtGr52vyonhZqIctVUNLbCZBtVIf0QVF7OMmHUub94Kveh
S9xSk95mrHFTSBJppCjFaB2a6M6yeF/ExBqhiIXMRqGIZp9Hi8ZPKWr7LuhmTac0PokzKgvhXV0A
qbmJVgaFyLzglkFl26Zkp3eHKEAc13wKo44noUQpXSYkxEywj+CoFZA2jxnZtNs5eSst56du0Ufo
YYnzJOJb85N11d9NtFSN+2CXYzNq6s4oFpvdE7JgleENBSiefFoC+ICZYTJrGXsL7Uj8an3Qord0
x5IDzsy2kj1BwaHdHPLtJBjCyg4IKSJMpAw8gG5GogD9loPP0BKamlcd9gRVivAQ8lbJF1lgFiXi
9GDv5aX2l/W6BBxZi0KRM07kS9xVLPYNyuffTKspzdUrcy15BNdFbU8SyO0FJQAEbIIA57JY2AIV
Mn9ve/aPA/0U1y7+gnZy4rgF7nQqGjQQm9uaJ0utj5ii3b32El2fS+rLcxCvc1ha8E8BZInG8qa9
giSbdmOBf3ziCGrn0UHmNPJyuBVdhHXHcWzoq4osc1NgOmnV28J3HEZq0KOzASYlqMy/UU7QBOir
IJoHtCAEaIU3CesbaoB0NKzkSObrNFl1p7pLqTH62tEZDQcPfXg+HbiZvyKhMIlaAFe0QpPiSi4K
+fyTiCLAshjhMBLJkywXuuo7qu1jK4Mcp+DrGYuJ43PMfvfs+xz3nE7q6/uWz8zsRLYNYOe1u/Rz
T+J8xC0rtBH75N0U+t0JAb8r38M49blbVNNY7TZmt+XcUdVwmJPCis8Bi5oLj76+KKLCrJOStaYX
zOt5iKbncnUDFVFhPFCZM3dTtq3BFw1/W6iZcEvtWa/a7Ih7019uy86r/3osSiDGyCU6v46fPWz8
FnosMh11e4/PS85ubjpHPgo+XaHwZ4SM/NgyHmaA5H0Kr4eUmN0t9Dx14UBfXkYzuFZ/JEsk8xBf
jSe3fkB8dVENk4/U9k79pw2chA3CNbfAYfRcnJYsx/F5Vb537e+lylxzy13H2ql/ZmfIysoAYLwG
/NtWbjtuwLlo6MPIX7YAqIIVSYU+BAgx7kNIcYsn0AxikipQLh8dWa7YsdquhEmE/HJqOy9XitMG
c1sktSWttPRse5hE4ZZr5wZM0sftCas8wsmgcgyI0QsBySbEqACH1e98PMe+TMZh6+oIN3HzmuMH
5VLay1W16gDHs84PGXCJHaXkN2OoZ8qgjqGvRjZ+H98RGNNjzfR9dmxrb7EhwGcvNCRvEUBJQB2Z
5MKHiKPXcdhiqXwyD1wvxoCmsfMyk6IwioElGO2sBOjvUZCkmuAslakEUjRAgsq8wzirvQ86qTEJ
sQp+ltELq6Cw7814eg69ICh4DZHO6O8c6T4fGzaFWpecRzOlTUqqcscuFlr5HGl0GQ5uxh6pTwCG
FpgnSthz/EdSvLbM3nFHsu4w1MnBfQFh7A3SGP+R/MsdNc0AxITAzBlUiW/IvKdZTFgcVqPJH3JE
Slt/axM/kRdUOtRMI/DMEybCHc7nDrHHAuoDahn+k5KPsuXIbAAFBmcz/BHZ0x1ToXa2FWNenMOV
eMLQhXa97J+sITbL0+M2vVDE2v2n/J3EkE/LJeDhI3XqlXIhX/gA+oqZ68zBZrGmKc5aVLLJyVaA
Mp0IHnSHIRHCko9IMu8VnQlq8rFJHMDj7fU5akaqLsgOUHq926dxSd3M2R72NfE5wUTcJi7AltX7
x0iyFSmq2O9fnGqM8yt93QEJvxuviLhZzFUzEVM7gDGlUgyi4xVsRNHNdhXFaLepvvoMOR4KYOBD
eUEHxgMQIC/RvzY/lbDLX1ATsDkXUlJW575cNI6S5L7pQOLHhOZ0PuMQQAbbv4e+Vb2dHsPupVmm
RHOHXjQFmqO39akBFyX7zAd21QjllLRBhU8BM9qiE7aqynQkHmwH5kpjUTdrc6d750enzf0loHka
Cc7sh+hKDvWKdCKD9w0LpN+iZUISaC80n/0vwzFsoKBLd7zA+dsKuGvuafLnEwMUYuMOczGOjDAy
RhfhzVE2klQ0Z7+3gKbJD9sSyGisB7IM9Pvvz391JcYikyjZODINskqvJSxFeGvYRF3Uz7wTMnb9
90lHuMgdJuIsMFrbvwV4vvM5BMU3aWzxzQWf2lf0LSV505AMlyZQXubLBQ3ctUbx15ndg3nZeluD
VOWJ6dtZUwXu6aSKWW8NX1Lp0ZFrwxzinXplFg3luZMH+SEQ6TQkHJPV419bQsjq9IHVIEpZrJZH
Jw4LpS3Q5AbH+ecHDA4ofq4QD82viGc1BTXZcfCzuFWzsu1plYOr4lch99BWNdOENhm4P5y6o2Bf
POoq8OhbMo7NZ1FZIHWS/uPfo9iqZDKlMnE5nw2gAO/7G74mErpoLx1+uBUpvsSvy5pKKbPbvspf
qamZUojaAMGsAOrn/3gSaqNmwevKaBqVBaWVpu7uefgIQXBHOLBTSigcH+04T7BZ2w8d8cq5/Dj4
YoalHewXg6pYaJc6D1wfy6JDw3O/W/7PFfx8/+2qlOXdCzER7nUqaZiJxDn/++QoWiaJNRd6N7Hd
2Jgbf+UP6f2timw+5PBfWRj9DOBgRPiF9fkY80zOFc1pnNdLPvuDj+vCvr5G5LKnYqRUyAuH0m7X
lINZKqcKof6EgrXIkx+Np00x2p/UMUbfKYjTQngz5rPDYnIC6QPKnBIL/u6n4QTvgXtJ8HCUoN1B
DbEekdPnaqq/x7gG6LejUVFsW+8Ui2vETM6Mdcv606TFJkhC8XJ8F69qTblzXu0lcZRZMJIclTs8
vWGOfY2lZb4YLbij3ljXiTkf7IUc/SKy5i303HjZ40Z8s36q/JE56dQ88A6wyZmLa+Oy35wkGQ3n
GsHjFJ2GH2EvVJlHzChmJ9PNsUhCgjd5KwbqbMMlLeYg+OSR1ok8Y8SIr8oHETr6smofwu2oI8yR
LSTHZT0oMz+mojFyJ+KGyF38qfYto/6BQOOA9jVWdDuepMmVPxkIRp1HlAYdCP7Y5MVj3GKHJyXz
Sr3ttMPHlm3RpIWP0ucnZhuOSKujM//Zmz6yavwW3ynfzNkpSp+tO0441oHHF8Prm6VF+5mzOJGn
ABH9GxbIoaYp3TR/mxDjNYs7RB/e13D7y0dn9eqtluHzZ1i4zn8FLgSRCBkxsGo0exWC8K9utifs
X6ZSGlE8wkZCr24C/fpkaf4TfRiSnSdthvWT0d2oXF5m+4stbVBLCzv3tNTh31AXfO2pnq7okVNm
eXb58YtLU7Rcl1iRJU/bHj4T++wtu7OgCmyULe/rAu/txfA6EOTsKvK0q8qkeGkpKT+aDzVTD4TP
US7w2ceqW6pRmO1qp3eypKMHT2d4IP6LE/EuyKXCJ+1C8qbjDfdRuPenmhASU4te/oKLAeRbT8kJ
WlBaGdx962EDQQDwYUHf4l5chgCsCgQnXz3oo8Qv44ETbPPtlpodMyzFhOY0AwmBOOnJ7CKvkfkk
ZJYf0c9+RXmJIuZtx5YD05Ys3VdrAptH46N4f8+DVNiQ/ay+sHNoftVN7+n1c3zZ7TVhJe0evN7O
OM7z8Lvj79WO5JCqn4QlUAvRwnv2p+KIkW2o15ikw54gOa2WjtD9ktj1IP7spu4+uAMipluB/s8V
nyrLimoTrLdbdOJ0tqCPai95SzHo4yn/g9ZxnEExlTHWReiZG0MDLqIDm0yPeqCDvaUkUu7rRoXW
+TT5vAPTiULFBcSpAJ/tnUqtTOha+CJiNfqYAYLd6OThQmhtBlJpZvneXzGOxLRsd+bhJjbC941u
P6qPrL5V60mh3KNabPIUQRAsgDefo32YR8FANDt+VMDcb7k/OzTIO15t5fK6TfRfR1o7L3+fyYSU
dQDMK3c3Tqcj+qf3WxqdxHmkB9AsU4DpecMJM1mbhGpNY2do4wKK1qkH9TdET4Ek0yZ4YKFcxAhH
vygbkBEc1qckQrLXiuykV1ylM0KUxd5BEDKmHIqPHz24wumaDu/ja7K2ovYIbnVXSwZdj1HLfAcq
ZWXBID3HQqhs12C3QYpzxWgcvH+Tn37oxg0MK76npSPuENRLuz1k+uH48pmSTX0tNZt2BPz+Jeto
6kv9FCWTtOQs7soT6x+OyrVkS+kEJwsWprMPShb2CCHQzrJCSY6cylsCscEWlUCPIUZk2wl2M1cC
FZ0n7ROmwxZC8CYDacUcCwoToIEGwEsmNTxZQOtQd2qJscBXF0A50D9cla2wtnI9G8Lsm7VAHSDv
KX186eR0y5TfmRXkSV4jolQSkqRoqhC9MOH2WBC++PiwViCVi/dx6Mu99ATu7UgLk0WCdUobNof9
r4WbkmuAJPcpK+ms9bPc0MD3oaBEO1axTZuiRbQ4xoFgDFs8UXHBAhCkSoM+m2NyQvVIfsK9a+7D
LKb9+n4otKmnoy4L5Ee2bdhhNiIrindP/if7GJbz4+UhbgHs4TCRvBONtnf0MrHCXVA8kjfj8IWv
71JVh+qJ1LnJgzAUywftoutAn32SXxR5NmEUIXvMjPCgVmKd6HQ3K7GRtDJU5xVINMVGkx/rP6Vd
IhPpXBh8Vh15WyoJn9Gy1ZxYfTiGgxbkRIwsUtThDuOuSBKZGXG/7nj4sHmAO/5C+lNIOSFBc2hS
ZLic8hU0/6pzDg9cVHlR0mwFuDAn9TbFTnx1BnMolhe8q0XQyVqu2EG1S5Em5J+YBj4rjntFpqdU
RJN0HbVds3q0oIh2chwKAXI+EqQfnmMfpXOGyMCymO7U8MtMI09hcHNAEliK9mBTg2zbizgjIaeS
ZTGia6ZG5/qP7Au42dykMXbb8QANOGIsdKFlxb34pfc4NLoy7MS//es/MZhRsgVWwQErVt5c5W1S
A3M+uNJz4bOMy12ivCpCQOCFPQuBSynAE03oXmqKqy++Yl1PTTTip6ZJRhbJtO06sZVbAlZ+o1vf
q5EeirZAsK3Pky4Qx4iyXuYQ9O8yfCNGwxgE1uArTCWkSZgAVHEtYplI2HUWIMLHg2RI2PgQy1HE
rvro9oS1e3HlmUnfI+HINWLQFsDvUHC9PUeKiHWUHqDuyiDvit8bo5SfgoiIURKcsCOihuPO6Lgn
h27RLhQvAHePUPjqHx3iBDeCLNRL3hzWq+m+SbrM3Wb7iLUTlvxIMpUrST7e9r6KNLC6k4Qpof0R
XCkje3uqLiNuvyrWJIyFTyXEhawHt5jvttOWfC+AhI/0C49uwUz4aVSXnPPtVDXlxRE5y7dA6KJp
JnH9oei4WPoszwv8fpkIiE8dO4MswJAp/xXnYls6EbaNFn8j8DO/bvwtqY9gWu9Wd4gtFL44Wu5O
2s5pvORZs0x1X5vqYlxd2jvZqZAKqNHP7xtemeEsrmrqp0PVScCGzIZ+m6KYGzkmk9/BokDtrB3i
WUunHoHWciV02rRMRv3IvU7skOmICJ9PQgdwXMjbWHGxTY0IZcifNgytIfhYlfvvfcolz2HjJ3vO
0VsM1Caxk41RmgHj4KHYwZswxoncZhWrXQWRTKqdgyCh74d7krudrg3Ohs9AIpK/ElCEjpItuk2C
3+c7O3gSo+zxZg+RqfE1PN3lvAQyWGhMI2zEn/KJDgAPHICymVyuhoTDNs6uQRe0ewgfSBzUVZrm
so8T5vpw3uGPCL6DiG9KZ2hCEiUgY1/KdR/OXcBrsIRV1riZTIjpiQqYPB5L8BpCY/rTpXU+tBjF
/NZGSPotLMh5SA2PYiL7LrydS2P62SLPZdL03qx0HR1+2s9WyNnUeRXztL7BoebQ9oA6WdQ1ucMj
qJzRJyAbJCFB0lCypUJy0ySpYmxOTmlaFTjNDzOGO3vnfbykXfDCGNALXmXSjdWyb7A0uwgqkHNc
CI9SLNB3j4q+k+PdaO37F/XC18DLgHDqXRAhyLSj5YWkymb+NYgQMKPx/eLb+BBg3Sz2kvLHjBzc
cxJ2jxQSYRCHDdCJpV13sVl4EOMAIGFibGA1+Gr68IAXcuVRk219tlNVxjgJZeWN16QjMCXssjYX
e6ntMMq9l/B6TvQ4M180lo7AoTBQWejIAAzT/SV4Aolj23XSNZAhL9fKGjjZ1PFKluzksHuk3vjv
ZLRFdJa+pMh1eac3cUXe00iNVXZLwMkVRa/RqByKbKqt/hHaWKfiWcgro3gRiZXr/cneMSvdPvAQ
/enPGf28u+CX7QhysMsQ16o8c5qrez9dywbQ8ZAPMKEoYRe+ZdUnVWJYDJ8sPdriC4eLfG1T52ZX
nCJMZ2/3YgImmK0oxORk0HpxkAH5vUcdLx2AoUkUrnLej5GzscJvGPlFCxdhzgzuMmfihHNgjd7y
VRSGDnJILh2LE/plYNYwdg2BXo52zunp0ek1lLgHCLQSAgQYTGLGNwFDNUX+5+hSHo3+IUXC/lln
ascaBeA95vwb+/ufDlVnKPoXyXQd/OtXTIHeRGHH+G8aR8CtrU18I7RL/vQLLT+I4KSfyaMrqNeh
f/hqjDkvrg3DxszXZ7nVEqLo53LKm/aXVMzuJIsNBAVdvcIamURdj5o9iyS8s8KqeEjOwLLY4HMu
yAWT0fQ2h68ACdo3YqF6r3BlIOIS87PEq4ayUHl7DMWzcs7FFm33mYGkxM3aGRmJT6w+g46cGQl5
7uzse+tTmkm7fFovSdwLbBiuHM/8nwH3ppMntETl2HPV+kI2SvyCslzlrAjsGgDDIj4oo2vr2OAy
Rt0VK0qHRS+Ah2muZDwI0CZwxpMt9TODQEGwsm4dJC9lb8A2V/Llhovj4dgw4Qx82VsbCiNLFFWw
Gp8iGfqLZKNTEclKBK1EXCOzioJdylJm6UNUH6kyRNX0yuK82+91At5cze5rtQLh7LAc1qKesYrT
qs1gEfbCAmaIOOyo4nB1+WBy/TJRS/0QC6zu2loo8YU+rd7pA/s/VTWeE5+Q0xPS/ouX1CeLEOTD
YImEuVdHhrqACudI4LWOCJx/T1/XKlRk7cSCcLMNxCzK+LFon+jThbz/DPDDccgP1duAggEVS4va
HObh0Z1MVa493vy/6CfdwKzw4KF6xI7E9W+R80ccpo5E8IkZ7C34AecEft1a4iLj0Y9Ww0sMVV+w
o8PBcoA3ATENizGg1jotuISSS4Rul8C6nlRPj5NDFUPrVJy894EjLMyyCRjNkfBu7izbpKrrbcqK
6kqemk78S2kjoywm3Ty8ohwyViEbjyNblpRjakVoCMbAGyRrXXMHA3XV4Gf5UqeayFxgOs9IRWLv
q/Gx5Ogev+ukMX/zx+Q9c5gt/xQ63IESOAvHPnhJv7ZEXlAEPOEDmvF7ulJu7dbmPCtIWFN+JTPB
xP+w+CHM5rTgKv6QbK1Rkm0Xjll6xcIFp3rxCqYSBpvEp9K+jUuMXTSh3pW5CXYZnK34ByV1M6P1
Itz59qPL+rxLko/tg07X7f7kP1h5xbM43WJUF5ltGZZtFOlOj3oKYMfGEj76ben+GG0yM09s65Sh
TFP0IgFnlTf3NT6sVJ4fpgOE3NQ/USJ+ijJCFiDSk4DcCRDKSEORVYFxXviAzTZiBwefnU6qq/Er
/qJ7XOG6xN/R1qtg4CgYFwc5egmKHq3EnlTXh9IJOWgtszXLRvXE7W0eQL9BSiCk0AU/73jGhRaU
GqgHNE/3TgQi3al08rAvGjZgR4YEaez8aCoe8VQh7/JPDTXlHFl4djyUawBJ9SOZ+w6SdhoKuNYA
TfAfRQ1CnL2RvRMSgrKfaLQrN4oaRFpVJF/V1MIkw9FRCH7r6xQuprJDUdMLRVbFV3ZE1RqmvdH/
x23MFqOCWgXhYDId9DE5dSCmE+VPzRK21jUOg9v2gc9MXX3q9gwp539NvIg8uw/PYY0oTADDBSWo
t1KK7jSRxg4Xs+H0uWYj8WejNzf/ZW18z/vbIT9LH5V2zGa0k3sP6YBfOi8gbzX/tkcyC4gh6/vM
cleiCqfsUiKeKo9AJSIOhDrsNEqDblb7uk2DlWBlJ0wcWXV1o9pdLiYyRcUGhZrZAZNaEcm9dkWB
9dsOG+yDSMyIVGoTHVtkr2SzDyndSLIx8AtZ37mNnWp0NeiNluJuhUS0Yfq2IlEZQlCatFNVr5bp
d7cRrADiXBbNC4Ueomd6ldGADMpn3Jep3A9w73QHD7T7hXtifocsVtHI0YcRk6d8KJfJSMCkhKtu
UH9+1OPfnIQ8BcnWMRF59kfsZ5DuN8t5S/RPvdWuAf21kYT/Rg0n2uQQ7nom81UXoc0hIiJSbkL2
eStpO0Adom2aTFL6inNpHy670/LcQ5/x4Uq5enXZbBvjcSTArklFjcoYuLoVxyk5SrwtSSC6tSGM
ylkztziSne+kicjlWl6EKu9b3Smcm75SkYSsXvM5ey+7xO+jOG9xR2ANoYD3ZQ4qIvgn25FsUlvq
3gE+ZxuxGgD1xRPOt6jMgYso5uRlQNucoaZeTx33aG41vfpsinZRmuoHio4pHd8qvKXENyCpWDzj
U8Iftoc6k7Q2pLiMlwBnKNgfEbh4at2IHbVdwa7TPIeJASKulkyyJD9ywJ8PT5CYeH4OpH7MncRk
Uk/36l9C8ppd1LRxbp6iSaCNloax1DEu4fH+gkmPTuPlOli6YGWUJE6xoITCFtQ1WoiCdrZhiC3Q
vNMAcwaISG+e076JDf0xzYdRqBLUM9Ly3TTv4gJloqwFkEl7cY5hZxFzWpv0RfC9iLHpnZViHlZI
bzMCZbh5tI4MAE9YWM47HdJZE74TqUCRa6Y+4C2DpqyDx2uixjE8ePT9Ed/ckVgNp3NDOMHGZCFt
qugZHLPFCgAAyjzKtcG4bW+BO11yCNGZTVKAVbBmivi0PPaacgStjLa3V6rvH7OrMrfBFr+EBsNj
vvBcWlsJfq8L7BksMwdz+2+nEB9vEyaaylR6wuvExQwzei65PqSCPFVlf7UkLwUQgMtIXbqYDawA
mkkyAFiH1DTpk9sW3rKn8v2XRjy303QvlQzt/su471bEnEOaKb/mE2N5bD/m8mrHN9NbEmhR4zJ5
OF2PRv2koe+E3+ZDR3J8ZgOsyQOMSxYqmP8wHO4Sk9uDU4t08VUHlOTwczceixsEhWOnT5iAkp7H
0exaQTjE/ftuBijAWZ/9xemJVF2rOwVeR9N2/yMuIpv07KL1SZTN3sud/SuJzUH4v88Z0Zvre6WG
Jmgrkqg4rBnKMwYRlnLUXT7GziUdIAUeA9zICKhlT7UltI3AayCD0USsH0H8Yp57baTB0F6Iso6e
s9bF82lcDaluduPKGmktCxx1WMOjygZhc3+YNmEoui3P31/WNcuY/tGLAhhArBzDBx6fystJfWdP
908HamGN9Vh8Hhw34OXYq7eVXCUOB+9lCcV5sBRvoBd0XxENR49d+nuZg1t4aOPkM8iV7KhfwmxG
Qt9pRaLbPUGnJDV7imiZicGKi4PtYvCAC1zz6yNsilyWMXpEMyxitGb26ckXJDsOhdt+Jygo8bq6
LD28eSAMj6wx9FmpOFbYP5zSXx/7JF8mI9Vz25J0udSvKlQnN4aYqJyLUg7HPCEivDl9qLUNpCHC
Z6ZfvwkrsQ7L5CsitDup54CB1lmZbjIUIrNcXrRx9Tn41J6K4AR4IBSSgAtQTrJwHjFj5jG909UB
NndFIzwC+5MskQFVEqQ+96phI9veQnq0dFIUlB0KGxazKjsZtkV7Hj8KCno1AJ2+dZ+6v9dC468z
ckGqPCnuvJzoqx5Wr+Embekp7vwLOMhsum+v8TPe418/gbxBh6tpQ8H3lqxwmlB9xQWgA5G+zHF/
HEL92y2xzNTOIJXiQkMuwXenzYX4Any5+uu0FTcgRtE+q/tAFz96ToyiyclB6vvI2eEE4of2tayA
KkgLcRgHyPpDf3+Ie5JfDPZSHnTyDnhDKvpdRuysma8rsl/FPZcb7/yXYEkJp7GwbrBV1PWS+4JR
7Yy8SwQMfCjFKO3sz+v1lyjvMVzcEWKvpiekzgt8mmGnBD2puZwZpfx89T07Q8KcVuvapyc8+aS1
SSaYIgPqYxNU1EM/rxthdAAqKHmsD2KbLn+U2GfewZZasxRjMfdyIc893vHIIMVR6pnmdPoYajbJ
O5od0XsSbK81Ns4id5vky5r4nvTMXnLXYlk/HCS2mckSSMrFbsYeS6dWa13/0snrVhBtP+BgllG5
mle6vCvUjrw04sPgsUEUxtV3jmJ6A+HDjEj//Tqr95nfFImGZbqogCrYEQp+ztN6XS5eBm3E3hwi
6K1M2Rkqi9Yn7tM7deeE2FVRsSbw9+UFr/YsrGwf+G2Lb35vocplZb3lnvWJdW1pPsEtuPvFSL5f
k/CMJYd5jEqid9Uuv63o7LZEBWmCY9nbhGT1ZoYI5QTVV65MgxrXi3gtWXJlPh8WSfMuioK/hLr/
YASKZ+S1dw1pCMXBoWNpmssa9m8oEixM2pSxMuuIVS8vP9JJjenZSXm2/m04IwvMjMkWUGZzh51g
W58Z4H8YQ1cwO6MOwnpnMA4ca7JSkhFdE5O5JdZ+me+RKkOzwak4dZ7Fb3L8Fxgb8qNWmhhFMcwY
bej+X3+xIlxtVIkt5ZHqg24CgEr51d3luv63CnUYzWMHZc6ABfc9CVqnqu1gkpAMNpCDvno21Dpq
zAPPG1Avazugg7gHXBbvfiUIUDZatww3gqOjEGrRDMg9yAWd6RnDCuG/YDOUIaGCJWO62OrTaX5J
LEDy58IXmwrqsjKIkdwGYtk2jZSq2rKvji7vbf3jZb82OXKdHbPKS0yWlkbYJX4cpEGv7WrZtm/g
35s4ca3NXVeuaeQw37CfxigtTrryC7djwVCUb8CvuTRo5Mh/KDnjM0RQM2uKSVQrVqqyjTj+059K
1U7B1J1G6rK75rPVx2tHgAAHdJiQJyZu5p2UewsKprhml8+rM/+861hjCly9yPVnNrq96av22lCU
wi4xqaNweTrqUa2ZAPEd7Yac1OES/iJNbAFzNo1xpsgYkQrRwfEcJ3WZhYvmsS9u0ighBWrKPI/n
+jRdxYh7L9KPDupg13sf+IrG4Utbuze+3gXAcAcJ/cmTGdjy7hZSnLwffTZe0iee/pxAzOoeNpqT
zGHc4WX0sP2V89XrT79qCj8J+ReIKRFaNTyTEw9RsMx6Af04saZVpN3JINbusHSKZ1WXKuhbY+L6
HUVsrmW3R0MUIvAvSUsb/DWuGqLUajSnyP/wgaVRDiAfhoiKepCZ/HDNHwhuBYF/4AZMgFKTK453
VorgZU9NSA2cnyCBuRxQHSYiGtA3L19zoFb3JZByXT1pbnRD8lvrlUVuaKUZmoQNpqjgqOjMOW9j
Qn1K1zivigT2psUOLNmqGU2QWyDWbif4KECBcl9G3Du70VDVtAO2Gv+zaOFBsYvoTNSpw7wExSF9
/DMuwmg5fZvvo5yeoLvIvXU/fdZAACVIWQv1AiP+L68UHGwZgXmZU6rUlXkejY+cvtsIVmX7mxic
3BFv4ScwTM5AE/S+hKXQ1RxInYLH+JvrKJb0rPi3pyY/la7TjhoH15x/4DCkXt9dY4AUzoAxjMEa
R7varbgNxF9/sC+GkMk71kNrJqW+G9uVdTI29vnXYTfohh0I3l9OKBLRwNSNJbijSN+qXCdjyQn+
Rt+YuQ8w2KjjLEDxEFrvGyZHrH8SH+4IGmO03/IhfBq6Iw3Btvrnpy1NP6unMwMlV3tngpNZmRzC
Gn/zVKDgsrtchuuoBVa9hnhaw7ZGjA9ccrnR3ctRtGnn1HsUn+kJGk9BgxLZ6qoIOXLz+WHtgDnf
dmRir0jKme4pyEmqAc3HaYmlPw7VX2IS8csVXQ3OYXdW7NfcsrZfj2eSUdVSHxl2Y9d4Z/15LdE0
9fj6UdwiyHVMt5lgvSFI2YNQGHL794505XtNoYAVz0B00B73bXSrq1AxP65yJpqgZENwQqN0U2Fc
hyzPA3wZyFbBRD6WWfF6vqQgG/Nnlp6wO/wrm/V1aJlceW0J7J91j1HS27a0AlSa5QYi/1c3RnvG
uPF68ctW+mzC22FYzlVazKEQ7zpLmu92GEdj0BBdxBnQbQD5tn3fpDe0QVQ6F+7VyV1eh4O0GmL7
vG5u3qGnE7P9Sz7p4Y1SWSpRlVFsRDQLLXBQ765gmMyd0xzNyhdq7PYHe3D0dRbWbStlZxd0ZqRq
sKfpFIB7jNCNmZf9PecS1PRknQkvk3OmdiQPjYS1hrwTrR2kHv/NqaoZoi/g0c5q45z6lLXfSKcF
FDVGa1M2+EIvWv0e+r077EGHxS+b68CBVrCfYlFYRq4D4v9nsYdVRY8sdVJOkhpibM+5wVuLlPDw
AeIIoYRwDhMIfNig88wfJi4yZ0F9nkRbYMP3kOSja+bP5AJG9jOtKRkKU69fqJgBkKA1HLq1GapO
M0vFdkFr4Ex0h8JVjD3njv94AIAwkbIf1MlVLCoBT4Pp795Kr+8arOm8OBD+8IFz7Nt7L9ra2GXW
XlIhlCNR7yjyJPPrd/enmRwkYwzXNs60fPHhSYmXekkzYgaQ1yN7DsFc8FyldO5PCvyPg9TPjmP6
jqgcRslveT5TkuNeyn+xEQ9h/cxnMBZenGV/VrSJAmbZydZZL99+NlFQrmCYl50vfIwtoe+shHkK
l2QqYkuHV5k7uTBCdXYHwx8Fim5Gl2+MsLdkKNH/Us6fQ84oIWW/cdAP7v7XoaJELC0YqzPey67p
OoeZVnFV09gSJvBEdX27dTifwgdXYL3ckDQjTK2ERhA3RkQKr3KUqucdC9XS3QH20VlSE6sr8XG/
ybtclaZ2faWhSmIXkgZoisA3jPPix/vff5NSv80Als7LHFF7HtkpLQeiq4jucwu9v8hqj1Na3+/R
lW9+AnCTR9EVDNZfRipJwRf8eK0RjqAK6c0OJip7l8pa1wAf0XmUppLEA1hufzUkpitaKEqZX/Ki
zXN+LF4u9UeJ49dL54ja1XY2HU3QIFsP4RSh7x0VlE1V3DNwXa/izWRJm1CNDIS2FArvMKD/DuPJ
VAzDCKZpm9xqx4oUa1Mndr1oJxwl6HEoVJpF5P3+iMCykdKXkju4irnq3Xg9fYDU88VDAyKEPMu7
j0yGMOx3LXlZsR6wzhE/dQ9HDUybkCTY04e+kRR15Mpz0iw5AP+6QIxq6y8YsBvt1XFR8Qacbwc9
CdOb9/xmIk/3n9iv0uxem1LRfHKkr/KDrnOG6FfD/WytU0mLipJekOb5Mys39qzIYm3GfvS1NJ+1
PBRIlOV4VXk4sz0OhNIv4GT99Ji2PZCkHmxzZDNb/UIQYDUD6j1uX4n8RyRnmGxDa7rOkbjVn0Hh
YAI0hNbxoXzIWyDtei4x5RGrr4U4HzOW7ft+iz+Z/1OMmrXkh3xN/0EYZJpU1V9jXSKCElTOpEP8
hPYy/IW7WoisdRlLT5N0I2x6Verfx05aDedrbcYq5TtWhBiocVDyLi+qDVmcBwLCZ1owQjA67Ze0
7XSWXN58sAmYRHoHchJyh5Kf2M063S3ULIC0yeMQseSeP7lLE+PyqiW2DhJFzTqgEECImLqdpvOi
4APJAf9So+tdKNWJjgfpRPFUeGnMOfX9y3qlLgnj1nUqTnrNZZjyfb9XFOJVDRQQiRedchjfKlJ5
5yGA/pOE+KV7LOjcg7TcxaXqLYFGXD54a/pyOT19zY5orpiN0D6suI0ffUhcRiG+qNQ3Wg1sb7uz
kb0T85ML4eilJXH3d1xPBGf/6ySvCy6/n94JfOBOQUD7aoml0Gkbt2tyvA++stZR2lqlW2Cr2Wqh
UtiP50QleLQkjufV8ls1TFHN5Ei/O+pypy6kEWZD1+0j5lu58XGXhyJcwpYA5kerVyVS5Lc3bIUF
zsLFL2GoIQBP6DwKVI0RtMsE9eyxangSVykPxe5UpvLL2RJQC8+g3/Dsiu8zRrO45je1sEF+wMjI
ikUqxVhLff5tnyX2SRrC6DoiepzWJGcMMsLsaN8Vob8JqN6UX45fwP/WA5hdbB14mhfuW15ETGcW
NjKSChUd2+MRNLqsWV6VxUNsIJq/LUj2UynQcTVJc9myz2/KFNcSRkvQIe26sP8Dqs4sIokgnazN
qFjA7uKGZk4W5GuxCU+Gwi1DyAZWVAa+zJTp3XneR7vCzoUCAp0dJl250TA43QY7gasg16rSIcbc
7MiOgnlXKoeOSqo9O1NTwIeaKrSjU8pM2FK5cYrUGjT/qqSN88ZzaUYOQMiIxsN+tPo396q41KQK
5YSfVW2IpIlIwvR1UQ/kx5rtcobTRiKVsjwd9cJQMqhXB6msgiVScRPpAg9tp9ibJ/bVci1IikWE
A3NLCWx+GHvW+SK+BZPuOOuaeXrkNIKCGN7JHJGaI4GxLYFiCdnvq/3fQPpbJvsWk6tQbPnpv9f1
Ngr4YXJgeUmJxbUdDCU14bSKL/MwZZsOziMCkbLopF1tbFuz1LCIiGHW7uaaHRtpRL6PMAg3kTZP
EL9ougpLYS5tjdmbp1utbdOvGP5zrNuedBI+zGRZC3SOGtF8eer1gPPPeZyjtLtMTIEqlXN1xNrn
oOqix0ziNbbRiUCI6NX0TmdRpRuPIt1EJD5xyUWW63nq0byuBLiBoxDQeO9rcryXtBj2xx24hSgb
gMzX2fXGsYVJHEQnWE/XuM3Q5UcpcqS0b36mWuB2gVutC3xVcU9uJzz+beRTjz+nYRGyrYQKIF9q
xcdQHX2o+DN0x2hdkCMYR7iRNrr6fS5FsCRMeddJQMtH7BYU6Sw5fr7gEK8Esr50C8bZNKkbB6Ms
WJAFic7y7gTgaN449u117gpib4c8cYeI0dHoTLKYuo079S+ILnYGWofOf1QLjfAXLV6MdrbrX7NY
prUGx2swshtKlp4o1MnnDpA9hwj2JmVYCyM2VFnok9B396wNVLrpbtUBwZqnbG9cgGuLStgR//qA
equM347NgsM481UqkOMe3vjMvZVay85sNRSFMcOZfp16N+rc1N69bmnD8lqPk+BrOlXatjoAEndI
zb5MJketxQi7yOlNb+eOhxe3YJrA2Av6e7H7L0KZB3HRwfRONqStIuiA1drdOtVe2X4fQX35RXSb
58nnO0jcnGo52+vPTyq1lGo8xa63ONGTUS+u9TcxDKwF4e8DCRD3rLvWPiddNa2ZtdVDhzYVEuH5
fFnQ803gTVbyKKY2GcQMpzGZsslR6RXxQfyDWOcKqkC/TK8lrrpqKS0GpZS61VhjAongzlzWi9ml
CO1tJccke+0Nb2ZCyiPQx4EVBeLMmLiQjZpujc/0bzT7ClXMO9oMyj5+2gzSOFDUPzRG/S9yRxPl
YzjCx1PGwYhRhY8RM+9h+IEjVAkgNbRWcdrzQncg9Hbu+dRtKswghZTo/C0KvqWOUDb0Yb0ZquTX
VD1aK5er7Xb158OZ+RyobjtTQBh7/ipf8aMkxeBt0DaTItQfcw1De+P6JybK7pIiN/wgzzCIUNqE
LNo6E7mgPoUpHJSjvUn3p3iFcwuYsmvkyU22GlVRHAQ5JEDYshA8e57BzNPxtSWOR9ttQDAm5O/J
799z1HqKaducmzdSxDXT/TAnSXS5ks2jTE7FaIsy6M+hoKuTcCPTocuSQfoeImf8aRIFkekEJm0U
6+rUBiZHYBbhaNgA8pnr7O1Q/e6iLa7ZsRtRUbVmc/hf2zGhNPcLnk/tNnipQEEKQX/3b6zPaXgD
YxGeTmzG2QlhLNyaQuem2BAXR4i8kDLEmrseC9rO/TpNi4CA4nVapq+svr1t5rLAfVDmxX0pEKEF
84nHfJI89TlwRGhJhgLC7Vuua5UQgkUIdl7luKyDzDd8YplLJN9wuYyrPAVAjvvnG9TFVkWGcAw5
6RUd/Cyq+2La3O93FJEV7Zwu+4XTr2rIuOa6B5W5MXebwGJZlZpsZF7FPBJy3Z9qvicbMn0bfuIg
X2R+mg1DC0aWdkcQSFs6OgfqzTarBcOHSjz6VfDHHpiEHY0uLKRAVj80tsmokI2Zk7YIPmfcl5I1
3WYo7YEAmJoAZI6k4N0Py2dFN60PnepLPLO0ftELyB24mtM0DYS18bK0W77nCNAlGIGljtI01fKe
x+EnU7CHiYTp0U2WLqzB/xKFNLPzyeeNvg7Xp/4JxTdhnEq9MdHyj1OjqDRLnBCzQOGD4QZU2DDX
56Fd9h760KQq5zKtiGjGiZyQZZQCNoCFSvZvEL2nSCDYQCVbeePBMXZ56W4UjzisDVGghXsAAWJ2
4dN81r4C/8PpHuPgCR065l0Thxh48nNV8Yporsx7TtMJXsMcHwXk77BHKssaz/bmXatwg9gKv/e8
xLQi9QPjXf0Yl2xzU683Jlh5VF7mEwn77o5RDaNoaJEAbNXhcmyKYY0rEnle+NBNLDXRAvWr5uAl
C0b+6hWP9zxi9mvcnYi+kkf5HXYVgUh/FX4CnKxt+Al0g6H/chqXW1IgDKLekCm3QHqHp4+EsuTq
LsgYVxM0fWQhlU4vjiN1oI/wMVAzZI61CW1YfileKhRk97D8jQbTehzZQK+HDmnhVfAGQVU5HMxi
RsT8Ik/o2gQTvI04SsID5SY8dpgdlotEGdzp/Xurg+A/XCSlzKVOa/VgqEG3GYYCZejmuSUkR4xe
0BuKgtM/wDD/Y2RYKwd4ntGxV1ZzWy4d0JV7sonz+LFDI4SihGMUxl6azdiZlU/dXMMJ2MGfbqYM
if1/Ja45Jmk7E+Rf6Yr78cDpEUFGmxawPUDXFb/rX1I/6yIfw2TPSMFToHjxny2ndPK8bt3909mZ
cs97dGsUJer/puIsWe/2Io2gvBW2rmLc6HYXsu+Nk12VTcYTyapHaH6NCcwVD2mgKwrW8jafShmk
YkSS74LPR+tNwsfv9QOKeGCxCXYNnwlTXow4VWI5rhMSj+C3py6/IARAnHdZzc5oZiLCp7svedh0
n/qsKn53qKjxu9EM7f8m+cvv1zDYI+7Dbe5ZZ8F6u3MdKlsxmkgAoJtSexeiaNdtJCVLAU9F2OVW
Ct4WvcfNr2HYUba/MGpP4QuQwB9SoRp0Va9Yf5opjKgm5wVcGL4zZuDXN95KJqLqr3JlOYNDFVwd
suAjeKGkh+ghTqt3csBwHDyPSWJVq1uCL4f/SUP+KbzCVKW7lzNtbOMW6CDtrcTKyWQyJdsRa9RV
NAZsRbTRpJMZY0lE89VUTE3D8jFiwn9Pik+NIgmdztfVANBAKusbKANVL8Z604d5gCacVb06mYqI
sLR9DciN8O3jFqkONfqdc/l1qMbiea2aaZL9+ef2glN+7LByqtk4Hwb79tq/RwBeL+UDK97WQglh
EeF6CvkB/n7fG+3uFRdpBavA91w7BcanCIubwTLOmNBnN39lrV4SN+s1n+f584h+pl8qCpTX0Mkn
E3B3Zy9OcmgYiBVoNpKBmtUaSn3pfsGpESDJ+Uwlt5Ncp6WGSbYtduJyP7yT2cpSHHtmmate0Lre
KYmebCymE8XsztZRrdpQzGFG/gkT49l5ymE3Af80eL83O4R7nRIw9ctZzj2ktumTXz6xpEEjNiMJ
u51cW14gVfdlE6KbunyGbZHUJgJzroF8JREkmfnYMd2CwTKcx5y/4AdWJdXZoB4KE1nzEjbyzd9J
tAUHlqPG/h/eEHnxbd9GYmeNwNnBJ0AeCZRPsThnjhOvujKo2uR6dI4hMhfPl3c5qfnLlCmgiwkt
NvmFzCAGYX7Wrok2Pm+1gKnB1NIgN/v0jsRywz0/BS8k5wlDHYQpFriR/2MlkWrrCaoMTD1c8dbd
CiA9EU4M7mUQ/SUomVAG/OSoqww9l2o7DbtM1ttsg1X9JHoxEX+rvQAaiCV0kZutMFOjBq8ImtFj
szPqkDDX7waxISc0PpOnHNj82iRjmEWNzMsOpB8SzJruNqmE0kN7NoOIQ5fAGlIentZ/mG10Iuwq
bLxN+8/KjBGBfntHLDdZ5LFwc2WxjR+xxp5thXLzXXAkSOxTnbhUyZVFP0Wrsbkg7gUd9iOQKLjk
CsJAWL2DvYwxyTv1steXkbg9xyQDiEYWdDcsVOsn5mZk/bsUhblGu8oOEoS9QonN41tcdUOuVyEB
jbYm68Bl6CyjlWHLkls9fFJq36w1PuMLejarnxdpJKmrfU+1yQ10hCYTvwUWdpU739Ye+QM8XdBJ
/F7LeuP3iAdKebPIJF6Wikjpvh8BH6IknOGdRHK1st+E2ubpBtWzn7KWMhDlkwni+s0q1sliAHDc
ShkeQ85dEiJTKNWtg/kKhcddkn175sT2sWjh/VcnoNUeGLru82b0N9UMIK+5Q388yFey3jsXg922
S3qHK3HVI90zKwRbAUEAjwPaoq5WzWwTXLL3T7UdZLnlVJMhWnEJj57RZRHuFk9cbrTnGzp83IKK
pIABa8FyldyRkTM0qXjbKIkHOuUXnWo2gE5zJJpM3i7SciCJPNT9g+aI+sW+pIgM+8ljVScvtmUy
W9MNHrkSZinimYxcLpvHiz1s589ZQDX/v7uGwEMRBLSCHjbT0ZtmUDpedMO4zyJGZIFdwCD7SNBm
gHR3ncBNxiUh5jCKJxbhJhtnY+3czsoie7LlboFSHRG1IN9ZC8fYtChUQbjWLWIuWdT1+MzieaUT
8nQzjDUCnlNv9VoQhyHln5rUoSsEbRo+6+/hJtiQjKqsUjNGoW3ClAUR5dzwLjgQwL2B6wjHgyFr
WF0f8XbAnfsDLraqYBUzU8/6E0ngav+zFTPGaOtq9KLD+OU87TOnk0j64flu2ap6PDOPlSthBq90
bclfjIEq5g5xnbG/X58x4XR/l5RELeIVoMtidYH6/xTb+nluM1A+7GKCSny+oE+1dncpPuHdJSW2
m4WQVCRX3lWAgIlGTENcfk5aGQa4R2uBDoXSz9EXClFjeAfRcBiR4LBqUE3n658Wlx6+NCvSQ58p
SbvPvI49mF3VTBSjYcOw5ggVXBhJQFL9TYQJnAM8vmvcAsxDGFZ3JZ5vhIH1v701ImmiclEpYYYk
4EBnxX81YbWUUFOenvQpgULQdUTRmeQO34PKnDRh10M8EiQkKFkMW0rZqxU2yoj4PfZ8HF6SstjC
rkJIcmphCIF6PY5I9d9xtCuswhy1hmDq2AnRYcFk/1sih7raOW62pRkobYs+tyanFra5sHZihKMY
x6wBdbtPf4jBtxopyu+dl7aeGLuKkI0K/wypLKDJuoKEtVsjD2N2sV0kB8rmpGTj4EGwQZlKY84y
x9B7KUotWmMVs1Ui8Dzu71e8Y4k4UfWsPdRfyKnCpff7YPn+/5zr+0sYeMZR5/TaQnb1WJ9mMcgK
kMgOuwQ60IZ1ZHSeiI+8KbYZZvbPSJJD8Fe1j6P/bnmiilsDBkDboZ3YP7AdgtYh1rJbHWK+Wn99
IEW/L+/IujEXhSg5h4IRnQcFTMRGwRvG6AjKqAFXzKyUbOPqjST7aAY/dumJpDdaEaM78GQmqhBa
7NQaY4U9/RPWmbKUQ1P2056fw53MgLmFI5XC9H/Sr2yV1Si840YC7HLM+Mu3KcX2HsOjbypODRJU
v54FOLAdtHvL3vQ1ZtO7SvSjLk0JkZzgAEzQP+khanB+Z25rimjqOl6YryygZW3efx9aeF4XOPN/
MuNtycxB7mXWLxmB2SwDrAKmTyiQMwgdbyq9d18BF9d2bdhcHESmx2sFWePe3or0W4Vzxr3fakv3
93oQiQNSIm4DbgTfd2q+WLKM+SpWPh7l2D/gZryXz0Ns6vn0JY1GDVjDJYCT7CehUC/QBeuK1gVP
DGZ68GfvJfUFBZQlI9I5slds4LuMm2T6fGl37nv/3and+tQaP0msNwuMtJsSO7ydyJQtOgXRXyDp
3qnI7kWbTrGEMsSsBu+wmR1AZ1bBuQJzYttLPxv2PGWQ4O5J6zF6Wllr5PV8UNu7YxP8RqixoiPA
ECUTBS/SwYueJKxDGmwb80BCFtOTRgG9xifsiA4sK/Ijc1OxdtKBuOdV9/grj+7VkpcWgM6+99kC
ROuJLou/ANoOJYnUwKbgPv9JD7quR8PSZ71lYgTrK4TVcS6NgjZnfL14R937PQHDjsOyueDe8z0m
E6VDq/syWZ6B4DGX3wOSS3lDt3odIIuwnlUnfqvcTIDoJr9FzK3LeQTFwCk+k5t0t4cPAVwRJtE9
6Vk8JKPPyHkrO1mEL29W5zV26IrLOhfCwnFy06k/IsSZj5fROM3aeaN/gEyhk9lq1+kyJCqovmGP
55hU7D2btXQKl//5zOoxI+0Hdgolomiv2UW9jNeVlDYdtKYwkYjZ3TrwCt05lE5au8nSycn/0rVQ
N7sPQ80EenLt06q/oA82BM4snZwkT/0bHZ1O2fwsOUvYhjMAByYpmpaMgYTWUDUH0NqWzXDsudSy
nKEUpbNZcle2GUBS2BYtFshagiqj1I+fZxxZNWiH412Ygpyw/6QKspLvzQC6lhVv2O8BHKaDcMRM
jITvQwy7hm1Lq6lJdr//3Z8p0CfNG7iXmr8nyfp79lnKZ7zaohsy6fiZ0WQusf5xkyjTRh0LJKyw
kysicy1zD8888MYbxUxAJ5ioq6zXTSR0rTCgq16v/6JPm/okgc8iXV41hpJgZHgxaJZiNKmHZIm1
yrB/i6qpun/Q+HjYvf/BqkUG0HDzerBA6iLUflLTyka6BcnsVPV5yly55RSOoMaArW4FNA3OPA7+
zeDrZOuBnAdvBw7dBT2wxP+ZYB3HcklOEF6K+2tp2EkJCt8plxOIA0+bA+LA6pJKRQp7XST2XrHj
KnaEk1YdX4IoJYD9SEbWZDWqNzHix2lDkWrouzx0bQs4BnUk2a7+IfrnIzVgGTi7XXU7KiC4e8+n
wV7y6z17HztVxM6sVdLy4uJW4rtt46yu+J3chy+CgkDVHsPHffJd9NjblqOnenT4eXLBt544lOoM
jICS8IJ5et8irGvmnXJmP0YoUa9n8Maha5Lp2HDPpgDS7QnqNHaOY/LowuBUOTebApF3N5K3KYEX
MRf+0hG8VRgKBnOY1Afdsd9D66Eg1IMVTBfP60I+Eljnajs4LPz5r5TSMk4kRGO13wLmxaLMPU4S
blSTAprji10ko8XLu+FNJkzFHve1tNcmQAbIS1owlxz6SU+uFmS0JbISykVEPCae7kG5tVTvNeve
2LB7sB+7ZiksiUcd1ikTTtZa9aJEd8KGaNBMgOdst9tLic+7ON5iHlbD15opajac/Ritlz40dZ+F
VsclxeBvj7Iq+CHPDmRsW629rd6d49BZnoiefOIQzhnv54cs3KQJVSaUV0yQEWphaXvweyqWcX4g
g11XGI0UxSnn28M6THxpPw45VsKwK2iiLV/NJMYawIYAurKxo5R2+iXrRWkzaYTIWsHSnezApH4E
HZIAZ6TwElLze0+xaBXXtGlIROboupaCIqCDNDwIEGrfwHRtPRSXWEefLZMsa0vKoJ9P6NFS1L/6
qbX3kgXfDkUanm8MUzLb6/T+VcYx06DBndXBZDGKcE+mNvjVCMSTfIHnlvEzjsfAl/NhQYbzwXlB
Cz7FeMbCGL9Ye3YjjdC6eFA2vnaKTWwQViwX9flBYJAEHwrlhdJxRv8a6RZoY6LjkQeDAyoyHLMo
aHqXDsXR1YhLK8nscpQV2i/kVxcSZ2GPceWwnWjspDrXxFylg7AcfIIuXS6Cpdhlc4LSl6d/uB8h
0eV24/ntfs7+kOv7ddmPxrEQnV3Jz8koGpsB0rHpQiOYvrzsLQuky5Ss9ujPWrzYLSo1B3vbWS+P
X2IoVBsacGj/dLosx6CF6gc/1Xg/ygsW7bP8I7ECjnaAgH5REsgLWQmkofGMGOacOWPA45+gBENg
z8saPJKGxr8KewQolq1FOSEVBfE62DE/wM1+4u9nz6NnGReHfnbK0Cn8IPBIa33Svf9HL3rbPIw9
TLSWSCQQQBM9CKO4niPXgUxeCCtE6mhYC1WRBfI9DIEQ4L/NR0ylyIBrpk6lP3eGg4owGyANUcz/
EsuaaB7dlDvB3vqe84z737K+ufchw/sUBrmtpgvoYjNNN42gNDOfmzIrrj/apJJ0IOYPIjiqmY6i
n0UkYE72iUF9SIq+ob30nYXD2rtVW33wuscTlT16MJxiHrWvEoqggnwzc0k6f4mnsZL5Quly1gXv
71j/Z/He7DDnG2vv1W3lYUU3cNEBx3LazD1VJ7Qr3/kFAm6KOcwrMT88rjRL+Um6A5Y9sUtFfgSD
o0dn68SVJhgIS/ZntkWsnF1//QRX+nwjzgouAGgmjocE2hKG5B6pVKDLZwqsYNmxWYXSy9wr5Y8D
ABP8DBZQ/mtABAvz4zHV6bH+IBSaQhq3lRFCuNTqOmyrz92o0oHuBiPcsn49ah9CwewS6J/H0e4e
S5g1vmxiAiN41fSi+QoH89Zxg62Pau8y4SweFPlbfFTaO/HZOgv26ypEz6ykGT4cp4KBChFIouAc
EIIdNIeVxWqOgsSniCujj5Ar0qlQC8xbqqdPB7FUjpyraE6MPLfASPqp9GR1hBDFCoWMnJf5LuNx
kbPECKhklqcvAKhc5yhSai/FQkuZIzyZLAxK28vchjzXbJa/7rgowH2xST8HWAhJsRqFo1TsytKD
o+7kynwzTykld+tZkblcyoFKzXObpdJm+fPaM8sMPtKy8gLrTJNbokggwsdDKF2MFOfkgjZdmy78
irOnOI4GDSyPAu4cYv+vHuPcDylGUZ5G0ipaI+QbxureIBVwj+3gH1zDUGW7PZBB5+ekDVud8+/L
gYg/9wFOMyPPosyqCJeJ16b+K+xwlrfkFrLQ/rzFPN23Qm+/Hh/5ea9qt9GdpRqB3cE9KCv3UR0Q
iy9ikaMb9fAs8ow96fyLYTe6MQXGDMPou1NNeY86CH37EbbMK48PKrPMudFAd1+JqaJVDHwrtniU
p5+uVr+tSmlAwvZexWs9d61r96UZYFYCkNprKlJwG4hw3KpZeomV5jzzZpvEeMh3AGWngG4+YFXg
64mjVzvEZvMN2/FjYXZeJEW08LeIYQqoKDkrRiD0kvfkXAsTd1ZrV3rf1t46aPpz1sj5qoio31YT
2O1fbvlk0FjEN3qtBZA/Mlidsn0HQIVeEdKMBQJ1NCccoXGJLAc/2OzYePVkAp4eQESjtlUtkPO0
2hg/ARLBGTbJ8Qg9q/WYZZeRGCVWUl2LNn5tBo7FZMPD+LlW3BOqXY/jEcG7kL2ZOHhUGCD5qL/4
yd2Ptrcd28qpKxhgbmLF2OpNJ4Ryq7d+iJ5J6jWEiuzCwflUbHOmi1JHiFYmKTPPfsQvm9+RUoOr
8j3+kWwLKTOr4FAPf/w6n8KnY954awdLKEpT5KNs+96PkMFH30EOxwPKfUvycamQgyvfdrlBB7yD
8+mFarIlQziyxIfhvcrkHD661yoVZDuNMZe6OZnEz3puS2Z0UJrZbBmKgcw0HcZ5Z9UTFBBKnuXa
WnMWumgXF3RmGb2AaanWCoJ0mGlZ6n9dxPFjdWj0FEV2AM7CaqQGUuJYsNH3B1mkxz6n79WYfxSv
hjne8J7NUvLVJuYvDMYz2Uy5yktEYUJnc0cBM1exQcTa1SotnoW/BDUVuMaO54Bze5JHzMobYX3c
cep7SgmOFZ2ZwSxE9PIEOD2kt1+NxOUsvh3n/pTmGd2k6QJgpCiY7I2pzLtJkvRaDseRl4fC8EHC
DfgVrACqipVjU5VOTDM7SwzZsK2TMZYW/ljCDo3Vhw114I3nayFd35GvYqh491i6UYSBgeiozzt3
QmlYTUtIdIkWtkdH3T74G2+mZkfFBZPS5+66+gpJ81+AyeCD+9rtzlwj26b55NkMUlrXIpm+mc5n
mOWZ9qMCNt0xhtgJaiSsUS5IMLd/SiGfReP0cE42+0jewA1NQyun7hoVizAZTDAaEJXhJUVBLCVm
WwUetFKIJbctwt8XS+IA3eep3QGBKUNLdeUiSTSUgge4MDWhWaCGnlTfR7ngqS99U2dF7pdoDEay
X/W1PQUeeepoTnspjjjvUyNcfRw4/XMgWp4pLeZBkzp7pNHcvdotoc+CZneOqumNaIPeHz49hS2V
XdTjd0mYU3Flkype412Zm3zjUkMbmTfWRo6KbfUFmDROcKR0nVWhOPNxoxSSJ5MoSn1CPSrZvO0w
L3SAYoZw6KVMzFJTSyBNaVhfuU/3AGVt4AESiButOS+HJVdyDp2VQKrYHSjIPk/2GSRBTMAbOE8y
RpijvJGMw4vylLZ6Tulp1fiLjx8SdhiLZbclkwCPkwclR92o1l7s7hmCKY/AFIsbiQEmiyq5At4A
j+HqWXEioSsoGq8H3+TVAaBx9147DECwcDrv5X6yGkt/HaFgHg1Be4XBirR8avXnPTRH5E/ZeNQZ
me9T2XeKAFAz6YIusvIp1lQAZIMs6kOTE93TLYR7PXMM3H3HfLfJjniE2prVB7eZT33bRq3dk9uP
jOfPGkQeYY7t030vOTh9Ma/PrsK2+54NBNjPd6n3k1qWr/OqyC3bAf2vB522Nd+CQW5qiXFx93EY
iOHmfon988oOhWfvNzKzc6EgOCMxbQJ0Cd7x2OVbHBJDSXkuc0do/2b1aP8YhZrTn6rVn1qXE/Sm
7cwpbuhf40pgrOy2JUxacdQQS8UhZ+1Wpwdm6fm58iCJjJ0BEDB4AwA/8r+JpcjqTnxKoQtWmIcd
JCmTGs1x3y7+l+WPCGT1fN8SMEbNY883OygvHphItgCFv/jTFdtXrQQ0IhTUELE5iObuC5jRcCMZ
eBZTfxMqLU9+jk3I21wosxqMzxaUdldcFIez5hmG9JoWWmxJm4OUdk1LvgB3eG9g9xqDNAn6+Eo6
usZudY5EX9OD6RXN5vA541FC+uZaAVY+KovcjRVf1im30bAUeIF80XJyIJZQzHf34qGCgRbalYuZ
I8v6V8sy2B8P7CvRBwbEJyzLxjcjsMMgbBSTbCRsa4a6JQ4o7TK0JOoAiRkhhTlleMa3z3XCL8aY
hIdGt6QIfzMKTxcABZ89NgMSeazHzyZrZq3WZEE8PUeH7m+l8pHqXOT4cy5Tz/yWZxCqrBceHRIj
szGpQYHUsulxEUhYUsCzk3OcXej4jvT1tL1CZ/JE3DSqWEhgIe6iqVYrAT/iR7BxCI2b0DpL41/M
0CGoXDKaHRYJatl+jIQNIr/VyGRxRwy8Low9UOBXj0vFlPTpYFx2QQxKTF6WhImeLRfFRh3r+Pse
TsUApxqqEx2+yN+JZW35YQCal8NTlCAKUYr6A2R4tUEeF+A49h9J4r/NSoiUHFlAHLGJpUsmEKOc
91AGRUnFRr1W6sq3ZedyNTHh3DpdOzOZXiPjCMnF2tNOhL4W/6oS8e/Jehtyoa7o0bnLk8bfC7f/
ALrtsvp8ofb+PFRybwA+Tw27I0GkzU0k590ietEq1u3dM9gC8nmKP8r9Pcejm5XY0KTH7si12byA
RsC0wHIgvyvt5cd6Aj0kIYVb8k03A/MFqvUD0Rd4uieAl2UlpN+11FgjEfijBbUW1SUSDsQKko6+
MCeS/X1naNmMLiS2+5bfoisYRAx8bSIeFD2pizmHbRgPGvnsouBZvNgkAs2wZrdoNnW1i9asDAYa
qZSqEtkDo/QAboCqI7h1b1Vp6FcwQxanEKp6tSoByVfN1MIs9NheyJN6q0iv5S9SyNdH+15XUVxi
bXJuL0C0csBJK3xaMmX7c+sqAJR21UvvVq8WexMFvEMIx1bqfJtafDIU26rVtBwCSWOA0F6nJx5g
+KLMPInUy2XUtNfVBU0O17KL362NGW42vyM34fX30+zw4gPPeSA7NpZQbCK8fii+d86XgtgsP2Wd
R8eMIV4lwkZFmCYWdV+1gIpjXLxhJ8edhckCZ93dY8B9wc/eC8tl5NbeLZZQAQydGQS4jKrpMpps
renEDrDDXWcerrW1eJ79tqmtHW89kTjNa27RO3ZdLDypRTQVMgMK0UDg2vBTaqkpVl7JTlKAdkqL
Ei5wwPO7tEPAcHWvMoXmuh7nDFy+40EkYt/6OGE4zkxhVKR4jilS7Kd2Qr6nIplf41z9HD6K3zs+
1kOh4X7RefqGFxXf1zt44rnvpbeWoo6uEUXn3GD+Ru1+cGAytCVeUEU/1lyYoS5Cy6f3tIPKiMKZ
pLLxE6hCLzG+nr2fQbXA9lJ6K9bIB9YWhUWowDKIpr5n91YM6nw5wFQDgRg1gitqnFXe2ZQ9givH
W9jlKRnmJlNPnmz9d3fNn2H2mM40LSmMrtQZPZAJ7Apf2BqYSl1xaIaD69fr6sxEsFyLDJ/BUJ/R
b7qmG0li0Wp0RnnuO5unGEFwiE4OiHiP2bUoSmav2MWcfZc3WPXUJ4aeeSCElAcgKaqf5NMmMNcI
dFJwV+pKzrvdDkFGalp7c0ILA/rNhyNWlL0fK83kdZFWu0i1WNSQ5jzqfirk1mB++JNAG+b5iKIS
ek+wtbbEJA7lwU2v68sqIvKJ57wdw20A99srwpITTTa7PhEEk80iLhq2E66yOI44wdjrccTFNb46
NjEAeQjKxCHC86bSyRprkTUYB6itcSikpNCSD5+XluGyDLv5h1TmJWQffbziZO5JuvP5GQYBxtsO
aRmrUOXS2DuCWCpumO124Kxjh40YGTbi0wNq3jho58tWnbJyrbvlDLDhLNYHwT3YuEsrThuLtZvx
pm7KXwr8pRbsZsqVnxl7Aoh5oT9KUhI0ih9910uNt1xAlJJv8nhv+AWVH2M6r6jvxXk2mr0zmoIP
TeSefRH1XFXxjQwE0PaYvlzYbEazIDviY1J4PxiPraJPsWVpVNXAOTFLKeo8xDQP/BafLi62Ue+5
od+bH05O+rwmXMM4aKn+uGl1kPJDHAAAY7lx9Vs1Qyk8z4FoQjtEBcgFSrrX4hcdzRT0pWrbOHua
N9XSkKXY2z9kpTzg7xu799zzZ/GfmILytv9P+4K8+KBbKXyP2gs2KutVMnqkGO7DhuEzUFC+clHi
wTDi+ypMz+b/9T3HMsfkDWyZsm6UscqvhM26P3jXbuLrTL3mHYs00d8ibAXihvSvNs+L7fmJvBlO
3Ouoeg05RYbAHWrmA0zEjWBO0iA6iYGr8TSxB9cCsH5UHZ9eB4nBF3Z/o/gusXD3RRBX2LrfxQE/
PK4iPb/+hoXS8tPnZGHid9xBFDRLlq947aehYgXaTlTPq9wtDl0OajC1NSiy11eqrKH0H4Sdb2Sz
c7TDUhXnIUbxjx5Ta6QFcYpphMyOOcLvLyTfMFNkFPsQ9MX6xwo/8/2EkYcQ4ZBvPvU18NQVCNAg
jI6U0sHD3MbGV2SRiw+KGjLnVOmp4w0X0k/9bfHFH7PgtqoYFzWCaDdbL7+x5eOxBRtXTGjrb9zC
zkIx8Q4K86PH9CB7i7CgH/mnkJHmfGPfCEdDCNn9R4TJo2QI1k17TxBAku49DcVoLdME9upMZlqR
PYTZaBFW321bAyfixso5AYXZhGRHhuGzq1yknRFwRuGdqRNIgdcWQycbutJjvvRNOXC3t/NW7knY
YxVVpiAMWhmqPjGNZaMWN292IleQ7eakFz8O80MQqFWG0dMvKLb/5YFv1Gu5xF1vLk3i9m9A0eL8
FfO9T+gNAKHNoZ4aINzAI6YiMeV2PJy+MEr8BUrxyITnjwa9jv23ixhMcmAbz/GxCSxM6GvfPeck
emeM+tUgRUBCWeozxLeYTIcsJEdwxrxyA9jG798RVicR8ncF6FwSd7p85RRKlLnlwoe4R8fooDQU
jlu6J41SrNnuOGobIfHQLds7u2yVhO9XSjZRzFz1paRnTl0xfGFHpoD0c3hDT38SEw+J8TQGJ7ae
5kxSx0JVrNzqDb7rV5JgHdXtpnH2F68NVR8gEKoxrEuii0N5GuxQtuRjMBIJbDN38kWPES0rhanX
fvWXNNngghcnyupC/0xqhhKEC0CdOUCi104wDXAWIknmByQoz0pfprG2QRE85e1/iPRGLG2dh0Vg
LfzSddV8UUH2mcXOutX0+UKxp+0/bgf74DPHJPf4j3/lASsT9sO/WKoPbXTqNVYiJhwp5TgTpksU
OLD9s5mFfFHqtT+WMaAMPWttK2LDhVR9oHzxqudGOpjIOZ8PTEQ+EI7JkSTAU7tN/sJOsrC5bwN+
sWOext4490dNTzpF2RgQSSDpcVz2MZdCmvT2Rxe7SflPCpwwZ++lFixVRlvw22NFuzWx0J1hy/fW
10xH2VF36s2chiR9N9+gDPJ0wjZmaGwi7ujeNwUTXbHwcgfnnSt2ow4hT3AKAbwV9zYwpe2EjjWV
2IvnFpJrRurW1Rq6nG3VO0j8cZ+l6F7hlvGdftSJcxdRlP/4oRfL4/oG1klKHe37MHozbZll4XoP
0WTuHEjXph7fipOdhvX7KS7L8XjOb3q5PYtaZj+KTdhmowA8bgOHKCM/XFBcpe4rVucrYuzFRlc1
DSQ3jwcTknZGnA197XIcvcjvktlbR3oUe7IzsFESnxLi1QIqwQIIo/3l8T4dvAI8B77dZhwNCrti
vO5jpPHNo2RwluCXM6YI/IAXFdRL+A/PK+dfTRPIzTjBon4c1u2uChwNHTnfpRFkZJNC0JD/eSqZ
0TC/q0gGUs9nfOWtPUYlx9FeQZDsN4YbSGDtRyJkC4yUhY8rZceO9nPjN73vJbeT7k3tDON3j3cy
7pvQYcRrjewAJREW2MO1J6+fXUndRqGZsNF1NCWisrAXGiyNJTO/D5OuJ4fXtwV78s4AD2CZD8AN
FbMUtBPmY0u3ENIzffYFLTM05wIyXw6aKRgqLkdc/mu45UAERKiOwTrnbSdGD2vS0HmR/BnGm8g4
rc2LmXiC2RSh6I9SNsM6c9AX/C7ah1WrtA8jGxNjnwpKaMfFc+slBaXKjBo0ifrwXuOOdgPACqfE
zNwVkdGaj0/ElTSXP+cOuWgd0pndl7eqoSD7vyqtpCpFuQKUaBVkjjztokG8t2IUv0Z2er4X7E0d
I3OOVzxpEJ6H5iLq2rbntXaOEhi0PvvPWepGK+l+NOWUIJeyF2ICBiuqst9d4iH3MZ2nhLQL3Xvo
HgqwC5+VNqtBsHqt9GUqhw2ZRxrd23nLrtVIdSDPM+Xm3z7B0RO3XxzQZyEAE8qfii71+JqkGSys
tpprjlczMqThMnhEWODcyzzhm8SIgoY3ykd4QMKbo0yBB1nMI9mDeHrvrfrKexwYOy7OTtPkYDpm
DDF0sBAcrlzSKfqJeSnfLJURqWFrFveWUf9Mi/BRyTMwjnKeH80rd/RCo1m2PL6YGYzkIkPDRr9P
WioaK5+D9yalYDhEmVnCjZKnSFA2/8logMuusrMsS0bX6CRra98+aFIq5XBeBnnb0MvblmvDbhAw
gxJIJFvNq+9ZimN/acbI9bH3ckq4m92IHfqd1hKBpIz+F6FBTt/9GfLQkOmfXqdlK8Hzku4Z/V5P
iEqMV7UQEm6pO86f3tRqo1rxPPqM+wjgtZwo4tGx/iK1BUC1VDkhg22Y6hKLq7xrOsJik2T6H9Xd
9FZycsTNRey0uyThvirGrpI9sTlVxwOS8rZtowOq3E4ZNncogSSWIxhaiouUimixAF/poTTK7Azl
cTR34kB9iqZ/2VdRLmbBHBYGUog6Ng8Og2pCoC4dSLIQyQfKpMh5vltYr97h5oJY+xhq7BDyJz5+
hk+UAnd0OH7fB5jL73zb6ohrlwbwOQshAjads84TztUfrPqitdEf5dCfXaEmYu8LCSJmWEgpiv8J
qfUeUnR/7fbv7CEwBXladnOwmcWAf2M7X9wvzxUMyYAgYqzpmEHfsbsTVNfVMnrLVakEUp6gFGWC
4EU8LVEs10dKG4jWz72epXt0cR/pDP15N6SD8OmoGqLNIo4vl0kN3RqdU5j6OSd7t4DYl1/Vtu6F
O8vUIc067V2lvPSzSL01dFi/+wMBohFJc4iwoYXpRK0pjQ2cBqZA9rvg2zTLQha1iMzR0TBsVrZw
g4rhM5UL1SlbHiX082RCz+r3hNCJzDYZ09NwYCaMEPvufhf8bYhNcviP5TiBf/9EpZXqSnctqYVv
g8pHx8KCSYDYmraf0lUdc/38S6MHqAe+lGH5OU4gOsPZBItMFiBcB/gAZuClfLgagEx3oLEqOAEC
9J4R8RyftHzv//QBFBRG0Yjhzz34hkdb6Te0Cb3vW0FyKkQ3WaNqB6M9YdGsWNs3tVoCVeON0rZv
V18SIn7SGBf0A8WcV40V0uvntZ9PRkOqFro1rijnvS41am1lQcK0kWYH/HHmnuj3eorllW5rIuGc
rHA2NaNNPf45PJunhVsEHVqmFFfIpszZyXFjdLC1Kx/oKJgmV2qgL3FH3kzbh/rcsjGvDyTFCRaa
qbYo7Fkuz/jNTS/BL3GH6k7hkQuGRNSh1US8Lsry2xBl+kMUB5+sFLg0ElsON6dBTjbYOtXhZVFa
Anl7aSHZ+XIhZn1VBchDYG2/vGGUcPL3avt1mofp7l+lxu2cfqyWfGSfeBTXWNVqhZF3TNzOm2ce
X04p4zZ6CJH4Rw2oPpesdig9xlxPzWQ/T5/R2ItqHGGlLan61F//08YzuJSLAzeeSDhH1ZNCCfpy
nK1c+lgpEzgtqhu2IVoT8Lyp/c05jjR+VAXwvbDVVSgKUec0/39dzaUWQvm54tcUPKBa+Nu+2+rO
QtapW7WjClFV7MQtQFAJHOiekgXQOy2aaxYGlnoyPvxZK+42fs++zs9Jcodgn8qg4aMmv3c+AV0n
VGdo+fdkVqLhvJHRX4OLq+XqJuwKcaFJRVBp5xIh1AaQCrTSrMRbRYkUj4HOS+QyFyLnUMzxib6I
u3pp1yRVvBVICHEK+h9DLfbnQKYWvEvcp2sbvzEpQPL1iQ51FwF3oQMYnT/vwHczv3ADgJLfX+j6
gqVHGFip6DDNDGaD5S1hM2CZA5uCxNnB9IKqG6hPXnF/p94kUIi86wcV8UvVOBksqndCRBa/YZyq
2GGMqRnCr2QDfhdNTPd2Hvgt/KixBU5NL1LpttxJhf7ars6fGnB3JOPaKRncO/JUVe/an5aYQlE0
ShKQKuC4V6LWXp1qY0opJo7KTRhhlrPGmgSyi8RoGiIm4J/UV7gSqCsDEm32L9OVn5cAgcwGQQd8
XmurvlXZ+lD5qN9nV+WpIRNMbdpOSYWUS+rYGp60f22H4jK0kNnVzNmqffS7s++7/rqR7rk/twui
wwgGJmxb6SFubJihQbHihirzN5RR0keEvLvLYF1XEX/a0cUL2QJmxha++khFcn0OUq28aWpF9c+V
aSXWapPb63YZjLiwosPKOjA/KpRrr/kxXE+JqqjprX+NcmWCUOaO4iDBzDcZX7ZnfVmmcvq3u8vq
8UaQPcX/JjeMa4+tro3+dvBf7EbUi0yA7qnL5i1uBiverzaYxx5SVWrHpmTTk0DXFygwKwr2cold
JP2BPAxzv0PZvJ2jZkrIot3rv+w7DNmNaY1rNqFeETrnE45+IQu/pyMJeH+WhnLGzkT0X7IZBTwu
0iWoLVvAyyRfeGwkl3LYjB2NHrByoEUrLKmyHMyi3j026tmMxrayNTpaqnK7dnHGT6uPKYhwiRCO
DbjHbYwjyRCrX3AJVPo1VNIrf8+fWOhuq79Q+iy/4Hgj9kebrz0IrJOTRfUrJbDYIPbrH2wV4C4p
jipxna8zyeJ9wHYUYWNLFx8vnRdQCQ7tpY1YNiAfVwb+1x/p2dPq4wmcph4r8HkJL+VWPTESM8lB
PeHzJsFQR6lbunj85ab2BMpKBCAovwj/ieitq7iEucFVinl0duQWvGdsHWEwgLjCX4xtmMXHLeWx
JQaCqL3dTaS6MF5FE+l5OPYOdzvGL7qKfcei5kaRfLzbcER9okad1Lr+iEfohppTg37k4687P9G3
BrV1qit84NWRZTYtLvmhE6eAlgIP/MQyy+cWgXdq0SiMVnpuzHtxo6Ed+VeJvgzTAiE7PXuQA+Ed
6GUwnEvDLqoXr2Vw9yY1NrcKx1061oeNGZZlqytEe7cO/4AuNBQPlEu9Xhvo/10d3bnPCdJlTcz9
0knnQwJy3CGL4PvKRv/EWlcJVHoZBtUBDpEpB/7KxBTCYjhdLL9JbOvCHJGur9XfjlYmg/PALudb
4hRl/hMD0QgQN7ydBgZOSv0frxpBDTMBnJm/lBaLphiZQPt2AxUq42AV18oBdpAEQ6qoYGmr83/c
Vf2Polp2rjLubDlEZnoOnVG5P6eTGPwCuLkublHPMaenoKQFm/XZRBl2/ZMMN47GhVYQ4bOwtwKV
VC32tkfyXI5EUSRKREvsbvlLwjUl7ponLgdEJYAtJTjunp6kGOWlCJXjsAcWdGHnEsPnc9Q/WagA
+vkMnkQ64H6zvMhx7YnPqQgAoz86yyU3XVxdywXH5UBR5SWAbVUHx+Q/mk6DuX21b6Gt5/sf+Fj7
/Pw+2VAuDSL6kQRuUtEKw2PQVuEcEgkJfWFTG0TOXbtmupAJaZnXo0d+WC+T/ngyCnjvElvVTYpI
igo/gPjW6jhV1BASbLjvEwBVjtuqkyivy1BpN2jVz8zlKv2t64TI46YCVvFH6ZSlP9Pv8iKRxOOv
N4v0I1nSSszzVt+d9Z0XQpLIV8pCRmoYdtcqGciLx9Vxtd8t8pB0I/Eu4FNFGdg5XUCVmTJDwa+j
nGpmaRxa59WE9q6kIvbifp5/u5Fgl/doYJNRIwg8zdwqV5oW9NK04eipMyPmGnIGxxMgDsEz2n76
iEQWy0saqz3kQfc10l2YVASeaepkhiAnXE0A1yys4ncHnyNZ/LBdyQXz6T91s0IesED9OOFJZ26x
nMp4mbQ5KZmnAIInle/n9GhVpy0c2NXel7AqqdQMNcv+RzrIxAQvhz53bt9F4OXkL87idkJ/GIxf
/kUak6FJR7pqqrzhPwVxPmKerg2FGvuoYuzKuCVpve2HUUOwrmRFgddhrwsTfCmvpYyo0hfksFK0
F8JnceCTO7gjIA/a0b30Bwf7clOSqOi8RF5VJuxyxZvINC7UK+AJIMf15gomWljg/gTkuHEOQfbq
lt8sMU7SAcH5RzXFfoQABB/DJN6FWNC7qrjKzLZ8sQBupKhmEGkdSX2vCi1GGyEFc8moaKxVVYnP
moXFcQ42D+xc4gPYa8HqEREZx51A/zwsVeXIJkeQmATu5nDUkj0F4Qlbg5pS8Bd/vRsJiy9iQLiq
iBn25NqzC38d42PWy+MWQFwdfOVnH9+9dNamBOPkrnjOM8fx2X3xgG2X7tjavFD0qWtwSYudyHg+
br1rOj28Cbu3jQxvxmd/yz4H8dfHibfCOXeahuAu/dnn+eYrCNaI7SjAyY1uSZFNcGCBlMEWFWOc
Yy4+G4NzskR4184gbeCQz4XxxoUYIt0pNzwq1aqgkD7qc3ZPPE6zBA/FILnE4bgQoxk8/qDfQbip
RtHb0EFJdMrzjR1iT5dks7akoUYIqiGDzunx0aijzdwTOA/ummPlYlQ+zcDUl1wqS/t3OPlo6WEC
o9F3FJeqElLTmqK/kC5YTmCQjAlKTtFwkfJiFhunOIkhgOKh7a1V0HVC5PoB+wQ/FyWpIGvUCLSZ
Qe7CEgLm8YjMJ8Qnt74rZmxJpDAlQs3bOVRgg5CCFQb7qer0oc6oNKmqsjYNmA9xb3sBJg2BOkfx
u5YooV+Lv9CnEvpDQXtZdQZDyIq5n5ZBh4HdkZdk/yRywoY7twRoU7wWyrLopr9yw3zsZ0OD63GQ
/ox88HOSPHIXbFw6gxsUU4KccH6wY2OLwd+7vNAhau1SHwzeOl5j2VqWE2hV+mMbERA8TD25+kCt
Hw0oUzOWjzx3QDpTfmFY0tiTro+XVx0pdGEeHjkvPivbT/npSdAMwP7mgjGHfNihZ119GdnguZVa
WkHunFIpANMmtypg/WXktGPw4ljr1sGyWREPgwn6Ctj4MBNFBlDF2LIVyemPsIa8V/UGyUj1fxSB
AHieF/3qB/KJwymXV4U9n6ilLW1x1Xy1D6OkashN5ezsPGfmhlW0lgut98MnXZMysJbNC+O71Pf/
/M+ZV+KkVgB/66Ld3Ttdsdjco7deNC6YekLsEinjOLyJOCNC00vC0553O5sDUdiIkNLXPsjapkmV
+MuOgjovgvrbILX9VNia/QB4JJGKKUCo9WDUomlj0PjKqqleItJm9SAjBjjFix+lrG70x1IZMvHG
dQvj79lPbjwAVPhiGE5ozqu+CuWKwxemgHrEuawA6pAPYsM8lzqMTDXdx1GrSQclT6zgJpYY6Szz
23hdZKxPwAokwtYU0nrYTWdWquczf9P1eXw/us7XU5HfSAU9ShTkObHAK7oOGkcSi/uobsXbiPJG
Zb3I8hglbPt/mnoq+4EnTDsG4uyFFnajnERbnxBhxX5EnfBVTy0GvLYEr9NH7gXc2tyRgaQfNkLO
pOYE82ar+mJG3R66HdCV8DwL55JD4eEZsr4RYI5x1/U+jSuZT7rwwXDS7cFPc2YdIQ3id6UbQawl
ljus69HdbMALhkAu8j24Kb5Pi5TXMhqH28RMiCSGrfNlXujS4vwqtbYqJZaU60SWYFER/0UPu2/Y
bzq0YfsvjS7nKKRsUZdfC/e/r2/YsYkBaxZrXSVfwwzPZXfiLBm1PzkWmAh3Zzaf1JVNOngz57/h
504vFHl/gUCpEgXskWrcNQ9+mr7PnB5Tz0abxns8ksLQ9Xk/TgAwLbFHehdie0vLKhPcB9M5dCgl
syb2kKPkrv2ftPNaO5+GvOb3DAtgE9fQS3mpUKD1twYWekwXMSrIM82frJd6a8b+0EP74iM+0DWc
tMwiP2kCXLfKBh6LQN4ek7jBcAY+VRr9fR9YQTh76IjOUF4U4LqIM8Djz+tfo2NQYTn/Gkg6ymA/
DS2vJKNaZnOdMrOtYDfn8hvYWLabVbSMdg2MHhmPy6CnOCKIRcKV3kOrRiuXD92siW/7H2Kz+fxL
fzZvzEyAq1QC1rTvTVpoEOx51Hu8W/rYj77Eb/Vd1TrueVfY9kNbM6JIu1pNJCFLuNh6/7VE0o5l
Pqp6F9ONe0FmuEYGMln7eDn+hQx32NQUYjR1UFDyFEQ2TOEn8hnwsV+0aF5wXei55jgYwgFNnx+G
eQjfY3M/2eK7G0EDE6h0UiMBbK316CZkS2l2rRyCRpnGnrCnoAW16x2jx9hJXSF9aFwB4T+gw4gS
zTz9dOjic62952mxrXqzYqNCgFyQwkduYoSdqxpwodYArv+8MgLDEpXTWOOFbGgvRhmKqryCn1dQ
+ahmSC3nl5OIUZ05n4lZ+mPi8inAqP6KG+R3Gns3gbCCqzWCQ4fmbaayFNVpf8E6ELxsqmwKoanR
f5qwq568Wg40AVpg+d5LcFD0lcxEfw20mzvGzrdj231WVTvpTvEQIO0Un06R2nHyHpR6V4PEbRfp
A4FiIv9f77RNZrqIZ2XpRTp1hYUAg4XrcnPDzdVSfQzKAI5TzgBOS1Bn9PlUHqK+Aa+ZkK30JuRS
t4iY7thE883rop6NRv41TPH0/Fk7t6HT+m61HDGsQdsZTGJQtytTGSSDuN3k5DfmIC9/YmuhFYpP
+kbLCEbLrZ1/rm695EjQEuj5xj/11Eg98W5Fwr4zum/3JpPdkGvGsi5c2ncwIAUfXbEt2hNDsNki
5LQyoriuNIGgWtEqHothAYxVz8VuOAv4aXlo0e09a20kgn6g8wzKOBte/i3wWoQ8B6/FFZ02ak13
h9wFcYyRqKUOe/IGPuTU+HrKuZMem9K6YGd5G5j8fOuOkhw8uVCqxozOqTrSaulUy0NDxEt6w7oB
QIJ3ayKdMpJVZJpL8cukqigS91tPCE3/IyVwvL0KI3sHCSa0qbLNqpGkw9uasGRXc3Fm9Lj2WaPG
TeDiqOXZLuTbCPf5RVFLbV1Qu9niTd4RU6yB6YyDdddULeyFHYXq7iTPOBs0jkYsRgw5ynkwjdsp
Naqtz78JTsVrSN5sD8RAgzs5GXkMmA5YBJ7tNxADjx9L7nQoeEhLdMd2IlV/2x7J1SG+EWMVir2S
VSy9AiartUuHm3/78dY37GJqR4D4gfJLtEt+xcb80rMtNlZ+Kunrr3y2o5KAhfJ8UgA+0GlMN2O2
2Sck3+deVhB8rEs++ZpG8V4pJ4s4QuP+CSx1ddOlJV8qaOlIRNcy3nBW4yDHUMwCPPGePJXzcDUD
oBcUhz10DiqPap4ndEDHCDSTSAb1U7F+5HS/zoikHBMcTtrb7Wj9JgLzUUdtpbQM7Vbmd5sn/yoJ
vkbcTThobgVjVSHSb1K4MBDNiIlXW0NLDN8h4t2uzutMOaCQfPjZ8bqcdHnJkXqiUNg8tqqk9Prx
Zr9H/wBcVp0USpIbJZx9b+Y0Us3hN9rXKebzmk11uEuvvuO/DpDgaRFcu78Us+MzYlM8Of9ylIyK
XVe7xofDxAuK/KddFmGe3tge8N/mN60K6iW7VbIYoDd9U2ONui6b9TTOHt3ZESc4HdQYCeXp2jnU
kl2Tx4al1xYRkQ+todym16mv2i5xOLjW98B6+2icXqptDM1+U4rF4PpX+jspmfTI5FARz+VbV4tJ
Ok8AE2rvYQxvKc54QTNLIoLcANzznk4DI7E+CocbU84QzBrS3z6jnAEtYl+LHGORmntMhRs62E7p
yzO/P6nB95Wc7iLzW+Z6sllHh8eQNVrE6JU7oHLJv04tef0uzZkc8s/p0KAehoHQRtqR5XUZdi7O
s7d84neDKhYpY3Me35l2rr59luPXrFpuGMWilaNx6tYbJsua2lq88sN92ArBMQdDS4FSiKmSKHKt
fOQIBD+o3A8ie3Gwo5lj7BxySn0E1+fD1+vkiOi/raClPHv89JqcQ2O23cMs2V74FHtw4iFHU4d7
F+YtxpPDoVZhvy5r3FOapp9xXQDVlPP7/dI/DFdlbAQqp/gVfFmdBIWFRLf4gxTPLRTZDAyoZKMZ
mOm0G0mQzELL1PDyZ510q0C74PZ5e3C1PQ6TmDTRCi5djCWYYLH/W6cGksVWK7e0SjV7SB/gvDVA
QSVznTt7SY4ml3rVcq8njepXiEsATKUdiu2zeC4++5yX/wx49K+Wp62cAtTsOd3KGu3qCHkU81Hy
61My+z2n0Ve5aGHT09UIzw/zimH9VXKuH9Xepha2U58qCkaSJgkf7y9CqcTJUFIo/vfLamWZr6Xg
QyvGAfDOlUmDwQYGMBYbiJcnj/le5aoIcxA8MMdYuew3tv1USPm/WgUGFAL0vV9GKrGt24qaip+c
PQTzRWuIiAlESmMUjUfNx2SdEtdfnH5KYtunjlUK8VpG93PP2XyUmq9oPQpdwfmrYboX6R4d6KXS
PuihnVRNd5lFCuLIt6dXyo95xi3ft+kmk87FL+JOMSp7MQymNm3/a9swI7lGUtKrNg8g37xx4k9V
tbrcRTuuR+pvGwegPhd0f635wa10tj/jJaObxbvZ+w9xNAL+rPI8qrGHKU33xg6uzel2XLQghDG+
vEvAzlDZmF9seEnN6nHvuiij7Xg6bne55P4gFVEjWpfCHxF/GACZ15mvx9+8vSaFQmz5SG8oIQq5
dtQRBG2dWhUnsUa6Fpga252xlvN1dQ4CneOsgSd7+dOouS8XOturuczHUVJ7/by43VYAl5plN6W0
I7ABSnRru1IXH99sY0sDfIQWOsykgP/xi6XWWc2R88QFTd2+FgJw5sr+HFtqsn9yakk7Gb4FNdSm
cluGcNCj4xsC5lGI1luJH90+9o4lihwsJSnLTcmoBVKJHmBEpYbDWh0z1YJgHXBfCRuFp+FnyrQ7
M1mWKLvpeKs7zKbdD42SFLpbgSqWCbwDCN3C8M3IWn++RW9eABrWpP/yn2hFAAfqeTkX5LNldP9i
r5uJKYl2//EagrNPwba8I3qn7v1gVYY6Yje1ipWSHbcPHg9SpcSmmqRCQU7eviOMjzSxwYT1neyw
vL14sYUwJ4X7rgltbRBuZ9Aqt2xIBiSjZt450JmJpe1+knTv1zwUa6J1kOPOEzIFqp7G7BDky0pv
L+nyB7Obuu0hhIsh24adO+vMYw6BV0lNEGld8ixTcX3J3vTy7LcEJLhODJvc0a4iJ7NvANt6cKig
Rl/QslVPlHaA8S/+jmMLYPnvl2Wdf8y0UaCXKpp+11Sw/WT5LmKl8M830JfROfB+Gpr8nz5euECJ
xFqZp0uEsmuxZPlGGyvDog1f1IxslzKU80dHs1UuzSS0tMRqeOnyi/NegUlpsN0dXgDDxYPqdf8s
h2MRGEeUJ0GqfXsQVOvz5Pr3vbtm7WEvv687v/wodUEkp0p1QLhJvzvgDUS5Rpe5M6aa6ccVnThN
YlzjkwxX45vlarLK6lxgh0Uko7Pi/NrDXLwY9ajlBcB194I+4OtkpCULoKyWcLXfsa6pqGXNRv4U
LI0NgUGI2H6UEt/1nesAz9cOsymd8TmURPKOEuVzvjUnH+7zycth8eEdxsPFnT+oXWIHo2/E3rzR
D/9wPVCIvf1UQwbsRpkLJDNaEhq9UZ3yaO8EfMPasexfgx9yLe/c6CphvinRE17OQ4l0wOCjC+Dl
MrjdSSgrG6TRYF30QSQSdDoiACH8ov4QqtWxJwQmyb1d8mA0J0cyQWncX4/xsMRO8rgNMB6yQZne
stLltfVQab+TBp/IXOIvS+t82lqZi0epCzjWNQvoyAvK884VOOtePE4wR7Wu2teTQBIBp9WM2PLN
JEn/mdFF68BPkoVo9V/OB9e7xIECJMRxeGuVBB8WZGy6tyeSoTg7Ei5m9k+6lrTf3HLddMrhO0dn
KKJZolC3lYTZAlY6Q71gO+Abchc8AFLQ1NHrSIXAhvSSd2QEg4e+ugZhVGR5f77yOzO5FnEdaJu3
ayAZMa4fIyBRGCQSGkx1yAwkcYBVqGEdf5FStjmF9cu6bdaXA5huviO1abbx1mB3GBKZ0XfB8oI7
JaX4mCdVbGqJrf1DwctCav857JFlDNbf5q42oyT7CtTS7H54bFGpUayyW/RIIlMnJiyMPFFuzKvn
J/hEW5tHa8/7JY7c7u26meXhUNlFeRPHc7mH7giMFgNK8CD6aj+cZvdGPqT6xXdqIfq6FvdA9oFY
9UqMXAgVtlXzs63N/b2wFtDjZhnabhS7wJNi+vNGEIooBVi8kdxHEi8OUSNF6479PXjIzVNLs33P
4qjR829lI1ZOQwjdC+UMn7OIxJd1SCeQxlOtDX1v1M8qNLt/QQQv7KZ73IhrwGm984QT5IT3LKIk
WozaqUuacQgH/Ka+KPjKsQrezwcmAb0tlSF5SoWh07b/xNblJ6x+kNfCl+eorZLKfqJ+cLByHjbT
CacN0dCgoysPHFSuW+ItrFATPQRfAcz0Deq90udRahkmb3lZy51rdUNS6BLxK5aBDE4jqhvQLr1u
01POfTks92SORb8eupSHVovpoNkq2VAte+PEWvLlU18q/5W3ybZ9lhCnbiLe6iK5C9QCqRogKSkA
mBhjF2H3h1QPvCCQr2nfWFPhoCaeRrUvWSB+yOqyzOTcz+Di+fQm3UE00UqZMRlGh1/521O8875l
62AgH0EWdvky6kx+nwsBeWkW+Rt7u0A8gl/3dOLmoAwg8IHQDCybGpF4f8qvzIkdOoUQKyKaBB0W
cfl8Zy1v6U3O+8uuSXSNY5wy1nwHgnQ5IAemRVTfVROtzBMz6ZU8GrtSS6AZtPg1JyLdAXiqTjRP
gr3tf9Mx13334PhrZa5t0iH5GY9zSthc7Z6k1NAof12f+nlNzXdc4q0iGIsujfG7qX50odN2EyAK
PdoEaV9NxeGbuUhh0lbihSU2TMujqbVJmGoxt2HYTKg2k8AsozRcyACfpJ/8e0ZBbkeBSBsY9KSj
zxHICeL+tlVJInGwFqrq0txnkzp4j9PBdV6W/fs2t85CSxvmgVtDOOM7EZ8kJVmIIAp0g7mdiBau
K7wWELgrnTV5VDB6a4Nj/wWG1tmPzN7tsiYNn5It4nnqhpwHMi1E1BBk4fhWBi+MXxMLjEBKhSWF
i5LAS0MU77rWt67BPJRKy6Y+DrF9bKzK3Wabtkvq6h0l/oBrYLPoefjYcuCZscEWkhNF1WZTY/V7
RmAkaINk+6PYMSGk7EHg5IOxvgbLkVLi+FSeEsniMlIseW0FUxJyOxzqGAusJZbax39hTgEJdSDN
fXo4bm+8qWAOQATe/E/CYG4h1hA0MdpSKNdldSbEewkwBI+uv8kKBtS0sHUkDSGFKc9XegAziBd/
3SHS+XflOlIIGhcXkYdsqB/rx8R0djRLeVzBWhaCRX8jnRUGgzYwI8S+jsfMWNnGdVT7b+glGoR3
21xi23itpMldAejxaUCiSObYptztnhIeyRP90/pR0aUhaotJ5g2RbjwOVW0UtK4T54k392nMgC+k
TtAHyYBVOf+TOO4e2Lh30DCeuQWZBPeneLrT7ydf8+a6o/UG/NJUS2ktWSAXg1DSyI+gMo7MpPHT
wozhvc6Zei4EmoJuW7oOoD4ykIP11HwhrBqx9WOQiVo0MyAYfJ1BngjXS3luEgFK089xaDs+2Tpo
+m1S8WvBOCuSLqjn5+e4RcpEyofmbkG8W0TqkluldcOTvQ/+6TfycMI31gSx0mSTVSBzT/YiilPZ
x3wzb/TwtVyGGqxVpeULmxR302U/9jMg0tm4lniRlw9GpUkvHHJ6RP8S9qPoOu7HZZAgIzAkTwgI
+81ipHEYyTrg+TWlE3N3NFoPPB677vhp1YCHfQjy1Oorb6SoSrrdYrywS2AJJGsjVcxezT6FbnA3
Zgf/NBNVxmga3jnyePmGuz/KuTfikYidbDCytc9iAzC4TAzMDMIh0TP0JXJizQptVBA6JKtA7ni3
GtXy5vKu2yRG7/IALWVCYt734uSGVzuleMKzdr/heg8uo9g3BQYHUDd3WSEOxeyfPiqGcfrG7c4b
WMgLMKE6H1let3o3VTeDvNK7IUUFmWcZpsn92Z32TBI8zSkObrbEZUfdHp+gmw+3GT/t2DItMmTL
hfYA2QF+Y1oKyQI64iBF0gd7+O4W/9lJPJBs+2CqScgq4PAytx+eBUBz3cOXVQ5i8NiKNsi79sUa
W5pl1G0nho32lfRohz3x2oMclYNVpEvfowmwnwUf0zCdy3WGE0cJ2om17NZsmRNoiP0+vAr8n1xz
3fVmU8XlPy/FwRjmRIXfX6i0plyBMrKc9w8ahDs2aicf7N/NUmLguNQ75MqzlcFqGqDjoN13xnBO
f6mY0afif3gJCrWqTa5DfcrLQpsCpcsc+aP1ELXsrDTKUsqOxnuLGpWh0Jh1vG/gCHW3TSCRpIb4
4Mbnz4uCFKmNDpaLAhidHFFc/4iDWAKpx3rsJMy/CsxI6rQcfjeyIr8ec9BNtdJZcR4QbLjYXZI1
DIxn/y2TMf6zwDflhI3S0af+D5p/G+GYZTHGRxyKPRozJgLBV48C+nJ1gGPKy96LCligcfparyj4
t3QYMGxAkvD2RoQxX3F/MlvD9vn4V9iok3CQc4AtEQsvq3TuHr1PT8ncB6geDF/c/pQh4G5m3EJM
s7/NnD04hP5rtj76seGLTEYRN+5b55kZsHsXUF1HxN9vlBvBXsrc4RargB1pPaHSMt4udA5PeWL5
Pk/CtO6OBnGRWDqc10KPgitJtQA4MweverTHT26p5Xl1iVixwMWUIIZMOYDSgHuxeze9HH7KjVMf
80GN3NOniW1Rm5VLbnLlA3iNgzcQHncdIqOLhwWkT3vSsuQpr4yEbH1n256yp/5jiZiFfjavYc+D
7dm9p6d8gJC3Vtm5S6+kzeLQL8sV1rZiFr6vj7gCsG3B3j9Xlw2MeXY6+WQyYsh7h0xvuqjcbdaB
8TSXoBgWoUO1a490YQqfYD76yJlft0w0H/vLzKOjcD7+ZtzSoVuAUZ6li974MBaHVOxfG54EtKbL
CTN/yA3A7XSIt/mT6G3ZUmfL8zL/CNromdGDr8zeRBcPLuA64g35kZaAv7S66qiS84hM0MBN88KL
SPM/nSIfOs6Dr6KFVVCDFm9HVBl/PgvBA3d9nhOtsWSns26TAk84iIkY2xmtFVF3I1iXviG7DfP4
1JsY5tLr56nHNMrxRU/PS/JlabDgqWWhv+JfeGxqYKbk4dKWhVCwsKksBYcYQhC2EXDAWBFbHDg3
wB206poO6H/YzzJjijCJjUe1SwpdQD7h0ZhLseOP8vCWpOnmVumuieKYgChdDEo1rBYEtZOaldY4
fEYDlhTJEFeJh2cNTYZRZmvIMngDSB04nWbU81plMLUb4hrMHruHUuscOyR4q05fY83+YNVsXOOY
tblbA6xzMqVB5eJklrBoqbOXbtasvk3+n3XAvIg4eXHeQZGAanVHMwyKaV+wvrbabZJdP1OtKl/p
ye7SKwr+RX839TLndf8Sw/yvlcdxk61tiTRda+dDEcvTnfhLuOP0v7mXXUyqGF9qCTM7rlb22EE9
VBb0nzE6JhnySp82/pzrcmQPp2OIV8xm+x009NEOo2LcV7pY6vqyyoQmJuU7cQHyTpcSOzIQBpxm
AeqC3xgQN31dpcQ/TXJH5Nmimkp611S9F89CPB/cicS2fTV2I5U4SXGSYj4jtQH7ej2PnlJyQ+Zf
h6od7VM4vWDeloyxZaVDHjTDUPD67X3bsQtrWimGd3kcYEgWB1soMiEb4CkDmbYXpsmLu1sb+TqA
hTUXWP4WevJ+YLs0h3tqbjeW2BKgpM6P9ZfHkjMryKECauWxn4ZNLT9s088nqJZSaRGI11L1ajlt
fvb4+2YYGWgZXFurtrEscWql/CWedE/Kb+jxaFQ5+VzcI5riUa03mKnRj3kIbX1zQ1AZXvwk/m3F
/dGCTqAIA1cgI/G0yMk0sHKYNBlCjOqjb1fBbqUB+RFOYP/AA6gDqQ+cORhLq6asTlrez7+SI2eQ
2nNurnLaKOKgFTQk/n6pMchVx/h3utidVJcOoKSG2n0AlHNjMX2/XAfdNcMyK2im8BjQLp9ST26Q
qSrtcOVABaIa6SXsyTi7j2rbfP/caLFcNXhuz2cnHJTQyxqb9zGsGz+0TFk4hxLi9vQfgIU86Z+4
KlSgS96W3KRXm2jUi2+v+OqH9O3iLnFarWZuTIFD5dOeEfagByfPR26awuYRm8zvjzTxsgVooQKA
sVXFBoTIt3qUVMYvYor0ZCV8YXQxwbXaWss9mEXR3+81DW4pFGvE+R1qegFclI3544lgd4y3XZLZ
qq/1KGAutb1sv9p/KuNdY5GyxgaVNCZxojBsG6RFhApoLqGPGE79nHhjoKRn5wRHgK4DPiHWid81
LYvQQUChvngoNK3xQYWcAnRyzGM3vH1HRD5/PpcsNGM064Bj46NzkoW1huzQ1AP3qkBbYY1Ijubs
qMYncDBnaVKhlGNM5C3EHKz2qmAwt+75WQivCFVBoJNM1rKLLTPLgbdpAFVFyo5e9i9oNfIgpRwe
1MdCfNxIonJMC+AjUlnT9jtbwGzYpcGyjbLgL3a8iclECPH4r6PSCxLzgGP9Xg2gXqpw1hT51lQD
TH73IrRaVRnww+tp9Yv9uP3edXWaNq5XeDyZziEEKQk0YZ1QKoIKNq5L+2Py6giBeIj3/bM/Rsnp
AZKd9lY/yCtgzhPDd/SNrhvXCTTDZqBMVEZUEGZDNJdaxsBsLZzMePIygWq7B4IU0/klcVCrAwKb
HlCZfkuiPb1PCXbhqhIfHmhUsSyABecAsmf6mXQMslQbo4lyW5JXpfWVLgR8SbyxX1hrKhZz99LY
IwizrkVSYRXEgtdLqm090DWH02IEw5/OlGZdR56H+Q1nfhscDx6oxUXFEY7Gq3E+w5M7E4n/liLM
sgEiEr9w4yqtbmcYzzAzQn+1IQCeXrOB4/vXgBXFhGHGe7XzvI2X391Y6PaxIsSuToWrVlPirOnO
KqhQ9HsG3WpXECENNNJURa1BEtJFojML3JYatSQn2obh+Ji59cDbcNnQ3bvVbfrR/gUoDaC+6gKL
ZeSpz+pXtCTE04jKNmJfpLb5bqiUswTOVMZij43AdJ7A4uBmp57WbTbr03NOOtP8l2glOr5fViDo
2eGjyyWojLoVsUiVL17WH1pycxqX8WG4MdDDvWJqA40Db+DcGkFonSN+WoA6IV59BWpQhPO37C8q
CFQyTAhAWEtVyZTwiYxQlCdqaKQh1NsCqfXIKhlU2o/wcNIQ62Pi8AW7mY27ENVJj2Lozw7tw/j8
InPl33czGt2FTACrS2ewU1iln4/z+C3p5X1RNUaN3zkAk7dx5Dmk/V9HxkChusjyxmFTCH5fzouy
udNEQrzg7IbFnSa7jViXqp3caxcVfThQTPKqgI7LNUYosE+wTdpUoZdE/ReBcswW1XqM59+usnn5
Djxxdlz6hx3+W//vDek8GkNtfzr39GRhR+qufxs5TydOCgWkLQhSOB2u5yG8ICIqa7vu+xPrpohs
NCykp6iUgA70TKGvyuSAxdN78yWuEXAoxrBYM0Jh2AnFnIw110EvXY4p/3rHnPHZK+Qxl26YMFIo
6bNopypm6f1sXHm1o5p5GUKtYEzjLPhdXYAAySuMofYraxndjvxU5k5e2s8uuFtxT1Zb1CPOEQbD
ic6LSOAZTmC46+xDCJ0a41LnIC/8Y2C4xbgDtUuPeG/SC1n16j1q+6oW3Zf1nAPXHI39wNJZ4ZhS
2bCIJFPNCWOfJ0aBge44r7NcobUlG4ymOwOV/4wQ4/ZtoznzDZBvYxeHogSLlrAKhq5MBJ+K2l+t
qgttGAxHzr8XF+Bk1FWz8IkMm/83A6Hoh1S2xiftC/a1j8GgjAafcAdI0W06GlxjNFTyRlPz4Hzg
Zip0mo79i2GxRd+BR4N3Dcfw3IlBl2GkM71XlECzG/a2UIYJSnOv1EWrlpcr13mfL7Sg0xoOj667
3YTdthc7sa1OOYsj/Wxf/nIxw3VBbhKV7A7zzS5FwxeH9tmK6zaXuHLIynOAbJxyRksxHL4U1X0h
cGpHs6Ol4wJ7g/EKjFKg/qgoVa7M+mEcNFlc4FSFwKuggAh/jzrEc9yGyhz9Ey6kPNyIkPo3PnDn
TU13K/AQJwx3yWywpAXKjnBzGspSXlTWpbAiAU+jdcZydyUAhRLwlQAXJ7J5R1jpAaW0sZQ/c/ed
9ibaEcyXo0EXeRSUVKC64NlEcQUeHo1GFGglKpA7kQl/FVRXwdO87CaB58rRFVrTl53Z+byS8QJK
FGov8m5btK3HwOuYAhpDZwOURxZ9meOuYJWUdtEA3IG8oWFHEVnfBFbMJzSE9KuCRD3j1VgAl83E
CgNJe/6NX6MT+ml7tqhU0QmQQdtJmdwHcJ1LQrMtKHL24OTZwooSl2ltUb70YnvoQcr6W3ZdIhPW
gI89sJ5TaQWUOZIN8c3WtJDqH1dtbH0sXBw2vME9DBoqDcQzgQYBrfyUxvQesv6pQw4RHY45EdEW
DxTY5OKrxDgAb743bFjMJv2B92178q1JVJfeg1azVF96vNguWYSc5Tq3Q7k2TwGhTblpL1sX2bH7
DNpK/v/SQ8/qkZSl4dzIn2K9V44Oxh+u06sfLoW0fSVouSr7H7Mvpu9sXMhGE9/7GDegqSBzCx1n
NTfMhaRglYSOpixSCupl3+I3swwCOPMxsh9sdZB8YXIpDR4KuoeSVwXuLDvd6IVRcHQcINaMzw0x
pQgymVlAuGU5RYBRHaBj5DPjcwwDWo8KkozM2bddC0hEqcvf/aR8nxVwR7XHZ1mwz9WxgMf0eVb8
eNKZmFUXKcHhaaJTfw+8CmKVc6GWxgApWqMa8eRGaMAlrcGGjifGvMpkGviLJ8qnxnUAU6yHGKJW
Ozy1YT3VbKhhI7I0G4Uv25olrnLeptNzRuSbQaxxjTEaS5mjWRITdsS9TLcOEd5ViqNC3A7kQC7j
5JfsQN6F+n6IlRjhYKXnnWLc3PyxEU5QXClxpC1HPhWpyJmKmL0P2KJ4xAAcesJt2sP+oHhWewnf
+rse1Q0AEFP/DFfOYF97LaBM3uSezsA5MuPQFNUfp4jKqNhkCgPERvS497G9DltacUUtjFafgZ5/
F5wOxfnZ9ZyO1fQhNvtpVGJUS1on2pdb//7y1a/0o3MoSWRzgGaFLhAbpoJM+tow9N2D3ThD5TcA
50ouqH0arWlFAKH320nZ97xmk3hcU5lBBT2BevLMaJc8YBHfAhjYXEsLfx3u7Ky/XRViEDCij24j
EdVZRAoPEpW7fbcSvwQbEossUZ1r87X5BHiP3qfI1+kE7R0VOzAnHVp7x+Lg1dAfxQNhklSYF16T
GVPFJBfi+W7Pk4mESdLeFKsrq2AR0t5R/IzO0QXTwEPtV1qEK2e7oX53laPz+kCoUZsbi0+EFmhA
5sV5qaTWcK0kyv1lfzC7L40/S1JGh5ksydqF0tpxXD1xaHqxY0F0D142T4R+mGddMfwEkbj3UnJG
EuVMEunLFwSuQFNjyAHyKeK2vyUcy08iaEZD+Gdo8LX89jE09Sb5b05BwzORJ9GD3t1nP4RDYlau
v1qC/Jyr0/CodBPchFEjJmjpp09K4v2si1kq7qPbmSqiY705Hqr/3YHhFXa0EgIRRu+pNgyCePPj
HZ6J/5gV2S9BYj7XGj+rrtf1Fo6+/i52PZ69286g7ZQ+qFy0sGmPurR2GMCsVU6DFS/XBdQ8YAgR
zK4lEyZfhCuUhVkPGgz9PzoBzjtxmVz1E1ITl386Y9LLb3z/niPhHGdvuu6mbKNRfRZjQk5zatUU
PFiaR446ThguBpBAOHf0ObB+5b4817dOjztEoZnTPraEo7oMaBanpvzd5dXlKcPwXdf3C2qAK9aw
7kjqdROWXehsKzX+xTOE5ZhoPKqg/lNkf6INK5MqXj5LvBlcYzrEpXp+Ol0vIDRohGzZtfs3I4/a
do2DjFR5mCJFt1nDaYBMVN0YOArPvp6EcoxPCEHvkhUj/jWkyXJp/udO/OkYxtyW4/IGq25QhIJH
4eKeq9S1gVSK1hDO5yDsmDrfZzoryCVDO/oMFIc595nkm2W4DIvw/KcduyCCo7eB/hVnFu/M15EQ
A8acDIIUOG+917lH/eexti4ar9UQQCvAfSxprImNWTeo0xtvdal9CgDlvmBvRbssd/UyDQjmdVcf
fjlhKEfY4HDSxZCnGZGZH1gkdphaZ3kkPnP1XBDALXVPEKKfUB4o4NMS0XAVA6d2njbthZu98an7
UTtOMQNFvHDqFpWmlNBFvGYiOBiY2vVAK6MLUr5FkEFafDJMB88Fp38WWxdRjZbMtuqJpglCIxzz
IG1JYRuExt6n1vZLHiuNVyyF/t7nmi4rnhm/3aklSCgWhvRCPOBCY+GzLFmHk9fJdlF/JsL903rA
rvPDo/h+yjRQLoeBcOBiXXma2zjpzP3voz+Q3ihdYLvvc5sRjzSvlY6Da6Evd658E4fYPXoaEEtB
arX+HEJlN1GtQput1Rdd3cJ0sBXQKVPWbRQLO3Eq+B77H7g2Q3Qo6cI5sgMXwWAymyX61cv2kNBf
Asysi3JTdZpQvS9N5LQE12OHSbV2X/196oAc9+u29J3OIYe/6isXF8nBRvVQh150ztFzVhBu91ad
yWh8pMmrqGRplgg6UJoSc/AUBuJy8ofRjCxf04n+qYG14G0I1AGMl3BHsjmL+nf1g8ngOQt8LMar
bG2HelDtyR6yEWXRo/k87CeDL6hZ+Cm5jwe8gfNS5mbYHAB6OX+JeDyhHgCV3NG0AGAIWGF1w9Nq
qQnUY+c+erH2nYg0lxSX0b3RCTL/EgsMMa7Mytzi2AQGmgNAeGSn9nM////2vDXa1iVcXT+UiSHb
voVV63fVSm6319DX9S80s8PAILpqyFYSUpHqIPic8wGay7t6YMdtBC4sH9Msq+QGulpVUuR83Q5E
OfjSb85YwN0Og0bjHTTepQFN9Ly42IMQ9rrJPTc4Pj5Vl3ZdWcxQg5eU5Lc1608wHSGnkVmOFPeo
B/wcrjrMmxGG1GlWvkiuc9x3XEwb/Uizmy5/AgqKopmHie5Gvh6UyPF4JUSIDyMxk9hP9mG5zye0
/px58srFuMYR6z3CNBykJjfGQOpgDq1AwVdRpzt0Dorfmxa78KGG59wmRGQIa4LbxvOKFuX5tYIE
2/reo3P5bJ6MPBsrTJH65TswFvaIMDaEhYY8u0xTniC6sLFYpVh9fqOI9sTwiNubj+kNhSbDrgjK
/hz0rkh3DFLMpaeQaWPIJJyPZdlh37dkIUvp2HGACXl5lTJZgiNLW2pDZSG2uTcMkWvvYwfLrr9p
Hzf54YtsmLti8qwGunw+JDEAvU4qE7h5+htt5GQAVbZHW0+PngaoKo2ejbkDKbSfp131JeAChTqO
LEZYRasa5MRDUasazL4KoGR/eM97OBQW6jHpz9qU+6nZXR/vYyr87ikNAf9NdyCdxAcg68QbUVJk
ltZk9XzXkOdjBzijJKPJd5KXBUhtn6TBY2p+mGU2ahOvv2KezcEz09ogUU/PxQjoSfYnEEof83MD
Ssast3HBMfIsYV0nN1Wy+yVppkScoZo5JBN6+VexAm1Pje5Zfv8qpMjKvRi2zV+QKWsIdfV6Cqwg
T+0ntM+Hhr2K9bpz2VepQTCB4ccHlNc55Q4vvj7HNfxIJ/Szmn5chyebgTpbwogm0FxrBFmW5h5v
45KZYEtzIe4Ao8unvjZL8rB8m+Ggr9QvnWjSXZ1Sgo6SURpXSrZJZpKkVBq+Jr1+GDPdT9KO+Bjw
NDs3yrQ40Rnx2G7Bcr9tQcwa5iaPTsC8RMG13Gu8OElyk+z5uIDQfJ9uxJkOPNghOcuL9uIP2U/Q
S6jm7Yqb47eppTamV6JAbejK38JyWvtDavD1pmyUfZnpeIUuwlym5FR4FJtfgzYHXZTk1OuAEgKW
LR/gOx2pLn0CG/h15niq8qUIZKHC8bodahw/hg2FbZiYU1OXYlX8qEJDVpxAAnnEQurDS0amOk+L
+FP6ql2JZnVMyBAwAumAB3HZc7iXWUz1/DA5kFZr93tniyMgTOK4UYrFLRxAqFyXH661cA9PUwBC
fQKY0DwrbnoLKk+8zPiOLgt45JlfnMVKYYFFvFCApM+roaHfXG8tsAWD7jIowxK/ywqLc30w/itV
tqC4RlNSu0dwVvuYd+yKbBsr/DcKH5HhWLRjE7YkGmaHucPwLtsC0Lv1pJlXV0qj3fcxuJ0oQMvp
t+Aoo5misqYKx9/XI/BxzjYxO2RnmZZ0acY9llWfc4pmQ4IxrktPQu6vu3DfFWaHbQJaD2VNbL3L
LcaeeMMFN6j4UaMWIh53t0YtwiC09dfN3pu7ddg7rXzlU9EgXlHsNqOFE4mQm29YeAyNxmTekA5Z
XccxazK12POhnf+YpIoa80fUBoE8TpDD++/vHB7syBNCz76QSdizPeSSuThojD9J1U8fT2bdfb5+
mSvCX1IK0fNcH6vQtBP0AJ0V07fUL7CMY+kHzPN+e1QpifhUsAsuqkgzu4GfPJKm3DELZaHUt1OZ
wVq8dYRNYSnUkbLg0a/fvEaav+CH1nFQlKwi0oXaOn8opr9kd1iyuhuwdvZQs2BKUfbOcHifdZDy
2Byju/yVGD/dMsPp//1NVzP2G99pLSL4w0N7XnAEJQik+fy438mU/GxY558EMEx75mVV3sBTEWt8
nEs1lKxyQagILlnZc8JqFaP6tdeS9pP1YYLyiMmx38xcn2zUu77OSNaxRzSEGkVe6vAd57pokYkK
7DZRjyFbMuPcuWslC7ouYIQOX4s0i2fXM8zf7j4cSxC88c8/cagx5fFYjaGFHQLkqRwDY944gmKw
K5WhQZ4eetHudWLXsqk+04NhhKigTLd/WaFPPKBowNGyY/GxlrItj8TVzdfKICuZG1Y2ouqznr8Q
dp03KPSY/4CsKP5h9mGt3X/q1Fwi7i7az1ePeIscyjeCQv9HdyFSchaVAqFhyksg/D36ehHVS3dS
/6ty7VgwTq8JdUOYxoljkd8K5ps+dy5quyLjIkiz4ap5ALyVQ34OKxqQfNLT2gX7KS6vsrfLxxrF
6raDtputeb4YBwpDOtyxcWF7NUpzclfyYDUzBfbCN2OQ4Krcw5a2MO6nGrrOCNhKK8PP/pG2L8Xi
bGxNucEYH4OmZ3A+qPM+dw0Z1yGoYOWOpRdALcMw47p42AHyiZvrbFaq6RO/QExqQNDCs61eEwLs
0eafjxH83/SFpWVW9kO5PCUbCNUj2nCWAczWF0jDu/F5XxZ0kKeEYKwxpxP0OXLyCfqnDFZND0Gj
JZOXXMn02g/5kFg7xEqsxY5sxp7PeXLqwf6/6dvJ9CsxLILUwp/vxzkaf9zUB8zGZ0VhOM2dLAaA
iw6GsjTkQUqugLI+BsoCHElFk5mHvoNOp/ZnWTTneOi4i0O3/AxKtgq+Twg3QSAcb8fUujoazja3
/hSTkXv2vRKIf4wat45SrOJNc9vwfcBtdmbOnQmEFvcGpQB/KrFtRJNm18nmYhxPy29byrRMs1TV
kHCBKQkWBhXbBF9jykTbb1d1WGnTtR9r6tFfgHJsLtbJXh57wn1lumrPaoTpe27JfaVFHS5ZuLEZ
1XxSkpHEce4vyy54dexxPjSZQGxGCq1lhLBXUlda80r+JMk7iQbbFnuYAcSSkc7gwZ7lsaRUQBFz
oOxK6lq3SwfJshlDoY46B4peEuoNwx1Gfv5X2N0zDfvhdmA8dEXw8rCv8s390w2AhBV9Z5ZtkTEe
Va9xCoxrDpKqNoS5/PcipU6Cjo0UTtdZHoveggXHTtoNiMF3Ng+eFEkiI0D24TvU2MShZBv4j8nA
aci7bctbk9S87FKJbrdIVcWcy4QiO9dwz+2aZw3ewqzDTgtSSf5PrwupzyNEjH/sOt6q6c311O1n
Jb47YxhJvihJhKc1Bf6cpeL9puRBTnjeQUURFerkexHixINnZ79/W6OD7g08sQv7jGmIJJMOxIjR
ZB7IIJnw5hgYQ6Xp2Zga8Kf4YyP0+9+h32WHzyB9n1RYbAY+cFijN8XqIu7zwfJIPWqSeJC3RRqe
72VpPtewzX3QJk0tjEVOLPGUqdyJs1l28vRWo3lxmzSJTwBCO3w1hGp5ymgSRWhRHE5nV9fbfNzN
uJJpsSU21EBJwjIKpVoEeWpdchOhbqDcZtPNBADo0BRm4mk1BIZ1ocVA//fm1WNg+w+ZHFLfayi2
Ucxp9cFZbHlCjqviXiroYS9+JVMKsF7oME3CwP4/h583HHcdA9ydEav0kUh7us+2zdtJRVRkfOjU
UA3ux/4VFpFDRvgwEFz8/sg9VBdwL+SpNWOtSkotUjwCUrShdiPIddyjnRqD3ilnY2g37k5vkDCV
5LUz3z6eW/j2RcwbLnBSMzjh/p/lsSxXac8JbSgJpG1ikI6VFSeM2Z4K5np8L9uQ35fnAM4udG27
lcEzgsFGgRaENpPUmU4nhKDwjxcF1Z7D5PGHTyKrR84DPUGhsoCPXQYw5dn11QIMxsbEjRIMCfXP
GKZfL+UpOA2dmUjofeTFSeZ5/vMjiu//kwDyDRecmkAfRV388uIy620pijvLAeSpTjS1fIraJg+m
iISHfsGFgvw2IjTLukHNyc4hoDhKnxJ0jHafcsAKUgwWiS3auVqnXmZ/Rm9B6BsqA3NhhEYQfRS3
5xNmiM7uNiLEIQi9Q8Ptzp7o7J/KRMMOyjsswDvg+ARZPEyObZYo15JXdH3CHB/Ufk028H5pO7j4
AVOTryr+OwEdN6IgiGWGxpjka9O1HMWSp8reHEH1O+3rPghaV2GSVJGEclIvZjGVJYxfit6ATdoC
aYKNXovdBWSWuPAraDGumv8coE+VubT/E36HQ9wwpQSzMl9kHfTro8v8wxogsv3Yqzx/qWw64n8a
AfTYIXxLx3WoVyIsHyMQuEwPTFpWfxymmf4AoEsyMa+sglx/lIWlI0vnpfyykusttm4tVn4+Oy6m
/CoHPW7VHwHkLKAWACAlc+WFNRMb2Zyju2nDsGtF77/6sDBIb773acEhf8qXyXJ1h42+cGPiZFxO
7O+GlDJ1AiQ7XyIXSBrgKUdmwZ9cOFhPRSHPnBWqd46V11lsoQE0kTmbCr+r0v/Fud2yffGWfmlt
gApd/3SMyPIuTUJIeN9s6eI1xle7+jfrNIRt5KXe0LJKKGr2PumECer0KjWjoHE64qg+lPtTGuiW
176eVgnhHT4C14/xaCSZwrpx90CUL/NysMZZcclmpCKT2d5wi0Ij5FyjXuPdVCRREC9SYkHXxdA8
EXlu7sXx/0mZMuhiVG/GykWLxeZduFqFjfk3b3jWUPTKIQ7JRkmg+ZmxdOyy9uKNDzeVMTFGiNDE
6p20x5Cph9W0Vwuo3vMMn3+p7Rd9fQrDTFfkQHEKe9Fh/6XQE7Grll2ICW4bCD2+5XTXMH8Ly1Kz
WLgE3mf60hz3WCIhylNWtPm5ZMK72+IQNc0sjJcdhcN/Ck+vgNEbjReOsUeP+cpGdkPF26uOTg3n
D11khFkczxTMTcDYmbQev4dmtCIc4U7OVe2wHNezqVQX6C7ILHOekYm9AWYj82w995TV0fleY1KS
MSxhnPP2FJtv3RXOjYvFoi/0QZ8WtbW78Ckg7Mq5l9EIo63s6mHClipZKWz0c/3TmO/ST+vsec55
6OZjc9sn5yTFguWnZMjnItg62OJ/RL90btc7XW13cAsU5PjFwO/SIo84KjubVWUs0Bf7EQOq78KD
8AuAkrudk2mKscU3mHbrQiGB+wKNK5gTYuO6ztkqlpD4MVnBFQ9OAP37aBx9X/jfIkqDfmBJg1Ts
TFkSYm8BrohvAsyQzc7JQToi+dhsrlWLmrE1SHOqIPdU9ZMQpyjnGVvQz5HO6ScTrg4TlZ7/EPi6
/2mpn57oRlvquG1GFBqb+DhgcaBfpHUpwLF5h+VvVEz9g+NDUJ0PzygcEA37U2zEPNcYQ3WC9brq
8rXng4y1U1w8i5dmpjshltQr97NXfX0HtqkyA8XLa6odXcMM/EeZSdAQkvFKKtxV18SQWO7Pnhux
pR78PueyHSTJgA0v0U9MX5fYUyUD/npuTolXh2u4FeFs53d08OuI7qFHIexUoRYAXEIxTaD3WYyX
YyYn4Dg/ZMMb/uU1RXm7vfhUgZzCQ6GfMiTVNUB23bjT/BalIfkLvC471C1zVyNW3GAviRAJr9yY
YHCbtOeMnl4H1Opm8fWA+6/TqQVke+nxfps3KITv3F8WZaoIHN/wyKDJ/aXIw9hDHYw/DxFgSWll
ik40NbPp3bRuXnBY4kHHMxt1zBZwoRY+B/GQbItC8xYaNDlhQ/lkZ9VGZpUiwIYck+WuP3pb5dEm
IRp3R1nfqo+i+dQggTFwCHdTSN2qjmvlyNdRGgXRe/eoc8N4Uvw7YF0HEimC6hWk+DVZYH22yWk7
eyMfy79Cos3mT6h3UiHAxqW7XMlNVdtHaSvzi+uDx5Nbn2oGV64h4e8kJFaOeWn74KFfjscSY0tQ
1Gbbyw/HD3mNvv9a+xLvCf71gDsvRRt/hC49krR4B0ko2bZ4Iqn5qlV6M7lFSeiMTz1cPjyUDUqQ
xguxCzJHOq/rqFwc5yswdFV4w4aFNh2r8z9qHNOAMQJgPrTq7C5s/Fk6bKNzeRGqwV/l0RDuMt3m
Uf9LKtwmAI7OpdCQY2xRsp54sVPnLIaoUS3J2cjnRX8iDz7vANA11sfSZSTQuls3VK0vT39ueWvP
KBe0UDVOXh2mASIqtnADRQBaBqtWvYJWmR275QOgE3HNr/Gf6DBv1z67zZDzQxXL09avEjgWCUOX
Ei7WQHn4RVABsrfm36VqKze7igY1e01pGkNUTLqvm07HW+3wYVAu93DXjndTpEcpHBu97Y9Fkm4R
6M3Rv+7jCb8LWhre0eIFEopesLCYJc8BplH09sWRi9qbmrdoyo3piHjqLJlqIrAZq78PCA7Y3yL6
rlnYvKInLvYXH8USfv7OpkFsNxIVYPxQS3a15tLiJwJL9gIPIR+RLPJ+GS/8ElFVImGKvY9FkrgW
O3gFtGpd9NtOtAPxhnURXpsucPaLXp7xUstKuzV/rGhGpe1MnzRJKexBMMCEe9ohWw9eqFuHKZr8
oPJ+acFl2oEL3GrgSPyJDj1MrxDbcKKteJ3luJPey720s7Q0jwihVaqGiTgPDctK0CY/LFEbGpX4
ACw2dSxF4ZiVnnYr3uSDhHTS0vnO96MqwFF4Bc9lwxiclj/3VdohgE5ox3VzqtYMAwIJIwbGZEiI
LhyTII9BKoIx9Fvyp9NBVUuA0w6YEaM206a1dZpHvo0oHFWRSqj2k3ZoPlO166A5hkEYrd/nqD+f
lD+FyRfuEB1lL4KTMhWzMXAqHe0QI8iNL6E61mDmLrrjDHnUkmr99b7NV6eY81bdT1fvzXtc+WiJ
/KNbevChA1sXa3koTzXbckBznwEKiDK5EXXL8cxTD+vzvQy+lIZclbYrd1beJDW3/QxDXP1k49/5
WnY5sXUso5eXa4by/nIRR7zJa69NIlIBSyPS1J8MbLZuxAeLU4xFARxPc4kRMBXO+vdvGedVww9J
aZMOxyiE82CjVsY2tQylW/xaHa3tjIUcx4BL/jRURpeZOX3WTDHZl+TOtLAhBbu4zZQcjacApXPU
NuCmPq5O/M4vglC3SyaC6vFQLAjTpCp7keYPM5AfRVfK1kZDLKHlXo4TSiFu0ThcN/yGkiMUx+K3
7omQBzYW3v0DFyw6QJgFdzfAgVAYnw/7bCpWvB9UjTsR49TinPEPlKBWXtBLtnFZ6m41IuYBBdcf
+yMqTFWhzYfFujtsWGM24/ENa7BomC5N8eU81OlNLsYrV1wmIg83m9z0C++YbpnGgacM/h23fESm
p96fdt2cXafnE46iPMcxk/rOHh7Jj2T2H4jSBuGvUEKrxNVZpHlqxul3u+F8ZlDvQVbz63+sUfVS
I6LiiHaZUA3Rtbn/Tl/JsgG3RbIjE7p0daDIFuDkY3UfLyS0QFcfZB60Pka+9/TUCTDkGa1LmP2W
mNLXIs4fSwVXB7wxvTe0NtTUSkmr7MJfh6FzHYNw6mFSBRQLYIxZo9P2jBFCegcSjPpuWDVFnQc5
QvoMz8Ao4vhN8ZDNW5W7SdYUH42c3Dp8VEDYmDiOdo/DY4qhen9AZ4bPM98VDLom+5Jjv8vQeATN
z6qKs8FuaWnDnXSNTekSM//BSgZRL+mdfJqc+uVyhtGa84vlVILSx9TpTffOhPCi6W8urMveKCWt
nGeB/PZLD7Xkomb/xH4SWLjO1twf2Ny1my1aUVIP64sY4RZ7QEb8dj+BJZY6Eu4uKIs5XQf/pNwS
nl4X6RJCA5b6cnfPA9Iwd/gYbENYCAkbH4M5o2bsoiowdylrRfHjTJGpebORmzVpgf6SnTlGVkAc
k/fldO+zFMslYeYrLqzGq27kNG8/0QnK08BWtX4X+tKFdbuiNSUvnThL7RoFgrXzuEgXm4MeBdg6
rjmc3tlhSh1YFYTWzLFah4QFB+GscjZY3v3QNdakV+GyLLffHXVfd9nxlzowzBiwCEPQn/fACjS8
qcQVzViXeWLypE8iabheIqcN8SbTdDvXPTb802416XSeHBdVJg7tKC3J+tgx/gDvkfO1x0Ju32HG
NDPzwKhIbu12tWdD7pA+44J7i0d4NLUWyQ9eNg8XzI7uAYxAiTV92dIzxv7v4FUMfHHU7FZW1ut4
HSm0i7x1OaxblYv/0KbeCr+ATWljURLbwDf+/KUhqDh81WF6AWXes6xPJuPKSzbJXggxdnw+BX7G
ODLzR7G5BI0ERt0NFwAtWnC6fK9VGJ80xVRb2Elzpf1K24qZOx1S98hfIqhIdOsVJoj07RSTW5jC
HeJI/q2BeDWOOAIsnXZskI2Kijt589Hz7zmoa8CLrQ6FD6lj7Lt1qMi3blzdd7bZLjbYniP0kllq
uB1iKQ2hNZ/liMgaWuNo96ToLvd1mkepKhiJPcf38tu3knMiXtcLA7LnnOW+vzllxwJN0LX5N9KC
6Q92CNI93ETb4oEZHbaEyn8Q0RDf/npvd6zEjNuQEFUs9MnKQslPJwEhvmUa8WuCv7OgpyDyCvmu
pdx/8ADjnak72N38YnAO3doKXE9kDVLjyNkVD4zWr0gpGGRKE8+sSZ/frII0T+9/4nKsbKTGpo0x
67TUZnTXM+AJMoEZzLBE7oSuCAaft4m/R/pbGz7Ge1rODiZg7trNuchzdbkAjiu6Cz7wHR/kM4+F
vv6mo2XBcYPOSNR2Qbk42YMiYWazub02IwYYb4LzG7aXPB18LCGJl5nxzx1xA6dNFoOPZOGeI2Du
AfHrwsCBh/Bs44OdDryAFDEWIgYjGdrxsLagk8mqDPdwuHP3SwVELSRsLEJ64p5z7XyKwAvi1eca
PQ7YEkk1F+3Pyacq9madg1MUpQKVMx94A6jerKTLqIFX+xQmznYXHEEsCyV5SEaAN2tgz5eopyai
IP88A5IPkBm7FkVLWUHSCNYOwvh+eX+ti81MSUSkAeF8FzKMOer2/Pahu+tlOf8Jo74UIQjPHTIr
vD1gE4m4u4e7xb5KZtNNnKV1GIfVDvNIrNh4+2FSr6i/NL2Iq/OZiUw9+0y3BwEXbhe4ux+5jaQg
ypCnieT1zLE2B8Uz4c9Ajsh5n4thOVs1YdbQvgZW9eCHn1bxvYKVAHdi8LBnE9u5BFgt3Re+fItV
33w3pJzwqOxN6lswox4zNYccWGFtmYO9c7rCaLDksdsPaQ5ExotdXwvozcC+rdq9jKu+sNfEf0Uk
c2EU+bveXY9gLMwPKz2HP8hun7RgDoen0k64vMXMfKXMaLCTayE79umil9RmW+iVW8btjIV4PJ1y
vwTcRYC37KNElE0oJyU6jZRG355jC7llyHzmAMtuL5Ayj10o4HGJ5nlVUUfmxVJO00Z3EYmxPnuX
J6LX29MPWSNmSQO+KU2ZZrGK4rALvmOcRGkejGHSbcd64el+E0zwYL5ifPF7bYn6wdOKKuRI63zE
5CdoyhRAIw4CAQjC4nt1OkD2BKfpsbHnPzQ4S+P/c669TJPpSR3lo0UlfUmnE0/qVG2qcAxHXoos
drDToaHVL4ow2geKsvHuqkFU+eVRwiGDddPXFGVQ2b17Ak8l/G2sWg/zngVSzDBc6IcXCYGbPCFm
pkxNpsWXRCMsR0PsSuDLfzc36N6Qz8vJ0BH2CkQRlx7mcGkmfgvB4xOxPR2BsQc=
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
