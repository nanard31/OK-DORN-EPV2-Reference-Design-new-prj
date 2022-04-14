// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 13 11:42:55 2022
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
sP0ArE835PmY4neDsK/XTw==
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
