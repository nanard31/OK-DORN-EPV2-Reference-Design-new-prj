// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 26 17:15:22 2022
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
