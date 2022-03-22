// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 12:26:43 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM1_B_coef -prefix
//               RAM1_B_coef_ RAM1_B_coef_sim_netlist.v
// Design      : RAM1_B_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM1_B_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM1_B_coef
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
  (* C_INIT_FILE = "RAM1_B_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM1_B_coef.mif" *) 
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
  RAM1_B_coef_blk_mem_gen_v8_4_4 U0
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
Sf9FFa80Wdh8
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
