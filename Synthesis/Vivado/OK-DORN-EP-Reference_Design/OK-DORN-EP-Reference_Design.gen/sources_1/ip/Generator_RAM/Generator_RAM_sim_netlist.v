// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May  4 12:36:26 2022
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
