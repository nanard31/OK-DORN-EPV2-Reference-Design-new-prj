// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 15 12:04:28 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/TORTOISE_EP/OK-DORN-EP-Reference-Design-new-prj-V2/Synthesis/Vivado/OK-DORN-EP-Reference_Design/OK-DORN-EP-Reference_Design.gen/sources_1/ip/RAM_i_B_coef/RAM_i_B_coef_sim_netlist.v
// Design      : RAM_i_B_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_i_B_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM_i_B_coef
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
  RAM_i_B_coef_blk_mem_gen_v8_4_4 U0
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
+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
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
