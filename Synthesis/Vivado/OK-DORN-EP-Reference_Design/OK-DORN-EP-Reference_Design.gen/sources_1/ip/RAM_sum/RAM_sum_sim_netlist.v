// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 13 11:42:55 2022
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
mPvuTK20f/3B2TYnNw==
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
