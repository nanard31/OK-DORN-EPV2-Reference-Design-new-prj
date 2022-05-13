// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May  4 12:36:35 2022
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
