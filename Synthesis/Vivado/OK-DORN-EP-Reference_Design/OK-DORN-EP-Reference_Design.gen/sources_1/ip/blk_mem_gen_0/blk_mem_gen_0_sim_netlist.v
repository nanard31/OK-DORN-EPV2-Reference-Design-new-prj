// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Mar 11 13:55:46 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ RAM_i_B_coef_sim_netlist.v
// Design      : RAM_i_B_coef
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_i_B_coef,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
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
  (* C_COMMON_CLK = "0" *) 
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
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "RAM_i_B_coef.mem" *) 
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19952)
`pragma protect data_block
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
KbY=
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
