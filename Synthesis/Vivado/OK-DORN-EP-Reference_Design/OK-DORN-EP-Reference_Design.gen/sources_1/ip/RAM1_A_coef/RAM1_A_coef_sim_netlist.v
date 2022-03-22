// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 11:35:00 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM1_A_coef -prefix
//               RAM1_A_coef_ RAM1_A_coef_sim_netlist.v
// Design      : RAM1_A_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM1_A_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM1_A_coef
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
  (* C_INIT_FILE = "RAM1_A_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM1_A_coef.mif" *) 
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
  RAM1_A_coef_blk_mem_gen_v8_4_4 U0
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
JxR0l2NeRP3T
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
