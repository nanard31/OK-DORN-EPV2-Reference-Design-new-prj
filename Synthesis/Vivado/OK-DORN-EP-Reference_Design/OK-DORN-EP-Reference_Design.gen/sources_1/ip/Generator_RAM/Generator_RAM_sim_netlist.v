// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:17:16 2022
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
