// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Oct  6 11:57:30 2021
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/OK-DORN-EP-Reference-Design-origin/Synthesis/Vivado/OK-DORN-EP-Reference_Design/OK-DORN-EP-Reference_Design.gen/sources_1/ip/Generator_RAM/Generator_RAM_sim_netlist.v
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
