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
ODzFoKIqxrcIOIut2Q==
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
