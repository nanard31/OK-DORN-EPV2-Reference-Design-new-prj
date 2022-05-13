// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May 10 11:36:30 2022
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
