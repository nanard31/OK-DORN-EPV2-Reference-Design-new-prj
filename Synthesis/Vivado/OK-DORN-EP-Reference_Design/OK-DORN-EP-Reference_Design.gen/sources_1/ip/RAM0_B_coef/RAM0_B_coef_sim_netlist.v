// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 12:25:48 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM0_B_coef -prefix
//               RAM0_B_coef_ RAM0_B_coef_sim_netlist.v
// Design      : RAM0_B_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM0_B_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM0_B_coef
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire clkb;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
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
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "RAM0_B_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM0_B_coef.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  RAM0_B_coef_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19104)
`pragma protect data_block
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
Sr/IJww4bSCM
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
