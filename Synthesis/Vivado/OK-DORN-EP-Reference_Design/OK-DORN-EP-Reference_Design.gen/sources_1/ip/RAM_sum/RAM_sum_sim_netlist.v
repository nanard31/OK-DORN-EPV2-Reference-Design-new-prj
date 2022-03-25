// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:17:16 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/TORTOISE_EP/OK-DORN-EPV2-Reference-Design-new-prj/Synthesis/Vivado/OK-DORN-EP-Reference_Design/OK-DORN-EP-Reference_Design.gen/sources_1/ip/RAM_sum/RAM_sum_sim_netlist.v
// Design      : RAM_sum
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_sum,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM_sum
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0361 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "RAM_sum.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  RAM_sum_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19312)
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
