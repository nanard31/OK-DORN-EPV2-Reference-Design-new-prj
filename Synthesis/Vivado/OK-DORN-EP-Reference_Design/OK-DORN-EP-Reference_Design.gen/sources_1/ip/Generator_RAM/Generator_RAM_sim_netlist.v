// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr 22 11:33:16 2022
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
