// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri May 13 11:43:02 2022
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
