// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 28 11:55:12 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/TORTOISE_EP/OK-DORN-EPV2-Reference-Design-new-prj/Synthesis/Vivado/OK-DORN-EP-Reference_Design/OK-DORN-EP-Reference_Design.gen/sources_1/ip/Generator_RAM/Generator_RAM_sim_netlist.v
// Design      : Generator_RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Generator_RAM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Generator_RAM
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
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
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.142799 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_INIT_FILE = "Generator_RAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
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
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Generator_RAM_blk_mem_gen_v8_4_4 U0
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
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 46512)
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
