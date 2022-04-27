// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 26 17:12:50 2022
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
fvzKQRBDY3jlmda5rpxFrw==
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
