// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Apr 12 10:44:26 2022
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
