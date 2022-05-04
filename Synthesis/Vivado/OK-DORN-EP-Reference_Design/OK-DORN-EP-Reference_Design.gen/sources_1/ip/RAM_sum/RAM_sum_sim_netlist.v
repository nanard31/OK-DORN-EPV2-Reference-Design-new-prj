// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 28 11:55:10 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM_sum -prefix
//               RAM_sum_ RAM_sum_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18880)
`pragma protect data_block
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
MyFJP0HgSOC2KB3DCQ==
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
