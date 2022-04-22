// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr 22 11:32:40 2022
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
Q4Nw/Ppm1+iJoZPcqNIprA==
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
