// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:17:15 2022
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19024)
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
