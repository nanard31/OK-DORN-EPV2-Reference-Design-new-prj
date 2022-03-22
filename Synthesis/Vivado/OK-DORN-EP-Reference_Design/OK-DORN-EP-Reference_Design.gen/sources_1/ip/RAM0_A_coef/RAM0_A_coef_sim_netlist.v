// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 11:34:20 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM0_A_coef -prefix
//               RAM0_A_coef_ RAM0_A_coef_sim_netlist.v
// Design      : RAM0_A_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM0_A_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM0_A_coef
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
  (* C_INIT_FILE = "RAM0_A_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM0_A_coef.mif" *) 
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
  RAM0_A_coef_blk_mem_gen_v8_4_4 U0
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
CozdPTrVq+vk
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
