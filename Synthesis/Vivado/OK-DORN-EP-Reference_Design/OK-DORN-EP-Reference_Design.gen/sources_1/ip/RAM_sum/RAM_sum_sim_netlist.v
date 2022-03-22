// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar 21 12:19:11 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/TORTOISE_EP/OK-DORN-EP-Reference-Design-new-prj-V2/Synthesis/Vivado/OK-DORN-EP-Reference_Design/OK-DORN-EP-Reference_Design.gen/sources_1/ip/RAM_sum/RAM_sum_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19232)
`pragma protect data_block
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
6ij8bmP3IQ/r5WmwAU1uY8RPZ/Tb5pU=
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
