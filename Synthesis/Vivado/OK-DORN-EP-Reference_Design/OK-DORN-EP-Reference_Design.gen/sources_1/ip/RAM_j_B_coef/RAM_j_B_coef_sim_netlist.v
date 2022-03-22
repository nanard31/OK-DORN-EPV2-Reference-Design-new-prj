// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 15 12:05:01 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/TORTOISE_EP/OK-DORN-EP-Reference-Design-new-prj-V2/Synthesis/Vivado/OK-DORN-EP-Reference_Design/OK-DORN-EP-Reference_Design.gen/sources_1/ip/RAM_j_B_coef/RAM_j_B_coef_sim_netlist.v
// Design      : RAM_j_B_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_j_B_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM_j_B_coef
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
  (* C_INIT_FILE = "RAM_j_B_coef.mem" *) 
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
  RAM_j_B_coef_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19360)
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
