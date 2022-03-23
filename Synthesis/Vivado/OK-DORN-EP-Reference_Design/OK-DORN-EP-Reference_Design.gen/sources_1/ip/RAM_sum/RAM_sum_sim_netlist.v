// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Mar 23 11:41:35 2022
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
