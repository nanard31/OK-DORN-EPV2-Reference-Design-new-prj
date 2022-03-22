// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 11:35:31 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM2_A_coef -prefix
//               RAM2_A_coef_ RAM2_A_coef_sim_netlist.v
// Design      : RAM2_A_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM2_A_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM2_A_coef
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
  (* C_INIT_FILE = "RAM2_A_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM2_A_coef.mif" *) 
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
  RAM2_A_coef_blk_mem_gen_v8_4_4 U0
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
igj8HnzRJP82
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
