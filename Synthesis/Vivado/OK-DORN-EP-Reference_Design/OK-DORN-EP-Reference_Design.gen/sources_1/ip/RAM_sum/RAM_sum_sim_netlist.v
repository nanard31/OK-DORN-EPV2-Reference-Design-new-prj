// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 28 11:55:11 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19168)
`pragma protect data_block
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
kGa7zXarQ4s/0pm4h/NKcQ==
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
