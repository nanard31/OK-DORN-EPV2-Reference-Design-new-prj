// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Mar 11 13:55:46 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM_j_coef -prefix
//               RAM_j_coef_ RAM_i_B_coef_sim_netlist.v
// Design      : RAM_i_B_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_i_B_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM_j_coef
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
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
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
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
  (* C_INIT_FILE = "RAM_i_B_coef.mem" *) 
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
  RAM_j_coef_blk_mem_gen_v8_4_4 U0
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
        .ena(ena),
        .enb(enb),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19920)
`pragma protect data_block
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
s6+bFwHZ8sLhKAHSNykyywQj/81ShehBSIyw
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
