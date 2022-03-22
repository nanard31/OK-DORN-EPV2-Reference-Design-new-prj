// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 12:27:40 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM2_B_coef -prefix
//               RAM2_B_coef_ RAM2_B_coef_sim_netlist.v
// Design      : RAM2_B_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM2_B_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM2_B_coef
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
  (* C_INIT_FILE = "RAM2_B_coef.mem" *) 
  (* C_INIT_FILE_NAME = "RAM2_B_coef.mif" *) 
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
  RAM2_B_coef_blk_mem_gen_v8_4_4 U0
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
MxfJKZqkujfq
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
