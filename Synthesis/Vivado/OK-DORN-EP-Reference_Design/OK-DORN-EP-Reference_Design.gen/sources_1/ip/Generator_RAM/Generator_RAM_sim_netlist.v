// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 13 11:37:26 2022
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
+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
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
