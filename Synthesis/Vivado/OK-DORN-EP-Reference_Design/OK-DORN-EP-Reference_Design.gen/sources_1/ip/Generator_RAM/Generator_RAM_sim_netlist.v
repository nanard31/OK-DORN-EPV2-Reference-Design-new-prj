// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 29 15:18:09 2022
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
