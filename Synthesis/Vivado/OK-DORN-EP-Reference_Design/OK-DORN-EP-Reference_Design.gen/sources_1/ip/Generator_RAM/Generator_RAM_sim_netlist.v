// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Mar 23 10:53:57 2022
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
