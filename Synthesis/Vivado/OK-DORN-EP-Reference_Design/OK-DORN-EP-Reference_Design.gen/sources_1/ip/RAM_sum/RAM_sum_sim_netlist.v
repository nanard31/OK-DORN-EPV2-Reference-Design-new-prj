// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 16 17:59:03 2022
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
