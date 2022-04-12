// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Apr 11 11:33:35 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM_sum -prefix
//               RAM_sum_ RAM_sum_sim_netlist.v
// Design      : RAM_sum
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_sum,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM_sum
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0361 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "RAM_sum.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  RAM_sum_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18880)
`pragma protect data_block
lcRmHxHk3PHhYlK4kxobAGdrpzZOojCeEGEAfZ66HcpXvVxxocV54UxdBi448WyMaVkIKbeSBpEM
rqtn4+ljZNe3+pfrSKYTNw41lYmTh4ppUe6G+uV7eH1JOa03lTl3xDg88t8WI1kAdBUwDlyCiZM5
Is1ReH/PS/AAbPYya9/AQzVerIeNQcAZIBo1SEqfSdvxiNHf5BvRc4WB7ZTMUKB/SL7R4K6eslE0
wGSlhq9FA1JE+SxPcX2PntNiPV3yjYNH/3Jx8h/zXLIbT5PGJwnXZGk7XYMfti0ReUC5KDbZtfdK
uXh4ly3ZOu+k/S7VcYBw2b9FWy4m+xSQ0+23XgR+ga0hxZwl0lwiFCvLwPT98m14jZGtCgG0uZX2
Py6F5BUMg/LShJL27eJHYqTUoD/2pyndH3AtW+iJZTFvtqfjCKUYcnYxrowk5qUdRBXpGL5wKIKo
wGPlzLAf249qyrJraDzwlZ7Nn0Bcfa4jR16Xabo0niG5WQHpKaFGoeP446OWi4+6j77w9JqGXsqx
ZoC0eoBsSUlh28x8Y6M6TK+GiwkS7brH5KV1WIvL+IwuI3AMv0+wWTO4VenSb78r/v7PIrZSULtB
gVKqbh+M5AVYBGiTZ+H1NVQf/JmenHKKaQDx2TVoXwhxiX/EKUmFni65Xfp/vuosrltXmP+YSOY0
4iXQzvmU+e8prwQ3HbpruvXmcOWYAyvsWoEjliq7bfG8Rj9nWvF0Qpk22HYbzo39f0Mpc+9t/E40
rPYMfpPR7g6b3uNshRn84siDqFi3p2RjeSmZF10/9xQTyfjH0SNKGRtZkTZunSh2Seqw158ZNLgT
cX0fSWzSrbIh8cRBs96CMCyLE1W4z6YEf3xdfN6V2zqnlX4hfasnXqt3wPE2PWMHEzZ/ekLnQUkM
XaEwKS0wV+0IP2hpe53CueQzJag/xVlLuhf3dlCl05nhZBPrFjVWYsgb6NSmm72hCZt37bex8Ua5
2UVshAD5EOE+d2Uohj+BRyV7wWDJP8YGPNo3TIyyO2L9BdA+QJmyAgW8EoZzjkOzjUZ6CIhccQE0
U8S1nUg7r4GJha9TKDdRT2neWlzN3DYuqrxZgbyMazegEvUG3GvbAwyU3b25hKibsOCMpjOUU++p
xJnTc4gC1LySRTf2xjRbgfZxC7ein4j5F/m5jM5UNbwO0/YWfmpE2BITvXylkmbCWy7dJzkKUy/Y
4+dhQBcEfnU/SveYba7IVedN0DzS/WUjhGTJq58Y/Z0bbOBemmeEMK8J+jA54UKQ/NryqwaOki9e
trMUSMbW3iGho+k+tqh4gJ3TUTOvXKTLURlhApxSrBvgtn1sQDOgFPfu+K6xeXNGp4pMuXon+Vps
3W0AFHYwFwH9+7Efq0AWasho5LFEHQBlnONG9DXsz1ar+U931aNSzewE1tS6e25goFNUc/Oevdji
IEN9y+vk2rdY/58TExXCDgPUY+P0lkrdsGa/lA0xzrzslQOpQEOQe9iC3XfpZURVtnMgxEGAR7+7
w7Sg2vgfypwbbELrYQ9eseUK59Jz7ijguotidtzVRQE/aPGQ/nWtZvuZ6B97I7d0PGXdoqBl/66D
vGiYUIQgunTkPJKc2fASC/CLjfPVVdtYyxgd2nieQHT6wVrxy2pPC4TZzRghx30x0k3EVq7pXg4q
RAxTiD+X4fayWZZZ2Z5Gp/yjJCRlJQHfxH8ZH1s2npuQ61jvUZPZzETMgQk/gSOQw99/NLvwRaAI
QzMmC324W9+Du5sMt21m+eqeXBv5iaFrvransz9QdeW5OMIKMMU3iDncvz798jrCa1tRMEKgTEMR
FHjRqp7ieL4Bt4dccgh6+Q6WvI0haLdlj+1RMgx6SUfwz5yjAhPFtVafRuVHcD7Kcw3CnUXmmnXi
Oe3IuBUhU6uI0/diN64CPMnw4Sxhs62bxZEXp9aFHjFH9wNtCLcTe+bTVzbrF+xKFTahOsIl3WPt
4E9F78ByIE9YX3IBUJfYQgoK+UogVdjnDeKBYi7tjR+FXNqWtGZfB7/1LbwzVBDSIpTb+MhxUS9L
yTQ9VNeoB9JEyYme+Nfzkt7hW5jfdV37W2ZMnntnfEjpeRhaJZh0wYyP+rSowTcK0Pdcx7IDqkd4
YaboMPESAYw7i6wwtQOBnHBSJZQh1MHxMjakV4XHs05d2s+9iGQudMtJNAOjRpw8X+rYXpVvX4PC
u9ANlQ6/Lk2vm4thKcUo6GG3zxzeL535LfPw2kYFqx6D42IF+6b5QrSCNb5hqa4xUQyvR9FrOKMg
LZM39mdp6fUct99uZR/Kt3vNuHRK72TcZHsc8TF7hS2/F2KIgRYkKnGr+8o51AplvlczYlcbKzv/
sztfDzPrcT2HXi0gm35OEIAJtRS+W6m6oLgG5HR+xdGoXlpY9Cz5CQ/12OulmtvCNX7RgtW6o4Iz
kmEuMdfIfD1SuTFk9A5vwJYyd8bFhM+/ba/1LRKUpVskZUyFAzE6p4sbxltGdXX14Tb9I7qocjjU
WihRG/Lgnzxh1G6In4NQsFA8PCGpdEdTr+SwdeqIFEgedaUgMMRBa+JmtqBPLVmX1jlT51kjIu2C
n89xPedBxFQEthw7YiC8Ak2zsUgXKzr2/0uq202+n5c1dU6cQJXtxKIDN7v0nHRR7Ws9MPOxlYmf
+3HETHNVoewc98p1S7UXOZzrrNEFpr3rSMXX0hJYdea226Eg6VDaS5jpPxe0kvkpYAOoePsNlZjw
4wL5Pq4nNocttsv8g1Oe00X/m55vaV6rtx+5tAvgPy0Rc9Hljnw2COeKk9fvN/JC6Cu+NYy0Bb+x
xyO0MrVdY+G2eewI2SgozVDyXa48lSD1gq258UZy+0MCjsFPYv4QNTrIdtGwAJGtTMXps+BKMovn
vy6QMGTzMMNE1IGp6k6KN16ZotTvNjyGY4bNlYwE1P7vv2gYRM8mjrCDB7pAMfdMhurenhF5Bsga
yooAUWOXbMKHclcCIW+p0L+/yHHpHGYU6GuwzUXXnJkyR+paO24RsyufFBtGQjR87DxjceUPjiqF
YOV5JiwL7VXxtLQdy/IZPyiybD2g1L1iPAz+vHVTpweXYHrC/EmRp2TOy1ShUGylhWKA6UqaEpCP
7A5w4VdZlsZMLCYkDfxQU68iL26qMXXnZeD7aeIOhcMMmWm0NwhDxC8oZIoyOtIXgkO7JAzDLa5L
6001HIV9t+oNDgFOtdNeY7LhpQfjbDvyYiI/sTxuCi2uff8Z8i9OhBdXNxkFONwWOgwR6qIFnOkd
hyz+FMXduatLaq4lBDgyPApZQmpzp2DdZ7c6G58i+zL5KaVzwqiywRCjNa/0Ju2rEGbhu6A+AhOj
LaPyDROLoRlxKRP1Sz+nGaO0V3D2E9k+OVT8AqVWN02sCeUzqKH8nrCLnDmxW5kNKKAeO/9ZlF2p
FgJWEHfiBnxQMVCYgFV6l2OObfQAdUN5sTakvxdF6PulvrnGvPJtpy0boxb2VJLHEXdVTZwXebqr
+s/H8yzBj4zZQ4kKJBTP5XNt3DM75hBfsvsDKmYbU+pmQl9HR/2PRiLO3GWSU2Y+1A0fM7AeQ1yS
035ruXki1T5s9ELgBi4sv+vgzFj/gx9Ynh6frqGU58/8DAMYBMUlizBlV3uYcVqEXx8uf1Sz74Cz
SxqyRqKIc6EJCwebz2QNodpxh8bPUGPvyNtZv+NmyPNN28UxlnXTqb8UGHioF+iYuzu47E775c4A
d69/QSLCENKarhJtebh4YV+DZWgaMbMaOjXDV1EGGdhKpZxShFUhk98zmXhOKCyZOUeFltq7emBL
jqM+hvcWCnTS3L5aetwHLsv5F4ZsszpMTVg8b5qh2nY73/2RU+x+gAsOSVccjAXBQubk47qYiTwa
ahKLBgHsCr/eAczoqF0e/FjQhCNj3BrVCJ/RMWv/uf02CuG+feAMN64TQSxNow813M94TdCjdodV
PewvZLnR7HsRnBJyOJp+/zXYaTzYKBKwRh9JXfXJLeQJLSSWopaXa2q1aZqCG2BgMTAJmBI+fDwN
BDTJxxgrmjqveVh2/XA8ydR1REL+D7Uz75+WQEMAMxO+DaO9D23OId8UASf42BUjeye9q5/PaapS
7O8Bzppu1JFbpEQFubwseMR1W23sBINc25xEXdxumdCwb+uDGgYsRUQAcInt9FvT1sSUe9FG5YXA
wyUVzsdWC725Bp74o31gqFS8+ZYXuwW/CSFw12cNdkWJREc/d7gAxvKjbHzvtys08Eb0VOdHB6xi
vwdrDmrzMN854/ID00i850KieUZKQo7wZgmnrlme+rS7tthuS+ERgV/uXdfKD07bF0RJLryT02Xt
qQQDmkQji1XwIobY7wl0M6XCLwogtpy+vlHsUXxUunzCYhjIDULDrUlOecTWNlM7aAUJYDZvu8BY
rFB8HYzpph8sAw5+7sPySG7S0XFIvNM/aiswa0yRWTpvyxpiNy+hZFqDp7hOqPEyRPPZkPAWXYo5
sKsoDbkzuqCfbQE/AVcbQBjcTcx9vG87FrtjbuLUxtHp34euFO1JPdYKaPAx8jbyZpMZQGVNbNok
bC4j6+kBzjt+tihh1rrGl5y/oZ2B1D7sbh+jKMbzvmgS58Hi75OdHxdiq9qjRgqfed+j0a9tg60b
9IsKDTq4buCZpruQzG2jOdMqFLLbaFREPfcOWfD/lGETboGie8RkighvoUqNuxQw4njZXwtnf6II
j5H/WwEeY2UxOxFSHS97YYVVAtahsOkFTEBzjSdGFgXypYz1uCWtYM/1IpKF5IUtfBGUHpsJrngy
dDkQmTsZHUoLW2cpX52ZhH8J8xxflcugFZ7br0QJ13rGX/KdkLKE3q0hsMr4xHqLkjFKwB6jtwWd
FfOB+/vWE6KwYxUDm19P3LOkGI4rykRf7EkL8r0wSfT4tpImMMFzb8+3cw+S0OJgbWlds0Lz8IrQ
J7YYEsyeAEkhuoGAXVzl4NYbZjsnOr34/lHOWGmg5AFg8YyuUxJ5uWcCcUXf9bPFL55LxjqMyPH0
SK+OlkB1nFCqAhEogdfqr2lonhHvfYII7bdqBn2ziH02bxBgK+6wb4l0lHDNyrR9OzeEO51oNc8i
8dLxXQYnSHj92SMznZ6tpABTQmulzaN6ilrFAnuzTocPwV/lgeYPk7iYVqlkODDJ0xCuBzeY2yUI
Q/Na7e8MYKzGocI2ZHOz4NfgAU8XTfexw+hiAjT40gngiWrBwqzBbgcZMFUhUB/APTAFehwWi0wA
b7gOLCOUwbCjKeyQB5v3Uf0/aqWF2Ky60PQpuKPvWr1ioZSN0jHcJquHY+u0eLXNrzyOk9cziGvR
c5u48atkVoCFUzIGwVd5jvpCOAvtz3PRjPn/GSzqTPs8YQYPabqJyarF53W2GCfhxBBygh83CxmG
l0zKhBrpDkC3gnxFar++nwu55IgMnb5hWczxNhBh/JypN+OVAEv3OGHN0fgQBKfUkY2c7BWNJ2bP
xeD00QHgzNcigcPgQiBnCICGqDuPY6XXJvNO1vCvHjXfEe7A32B7PBrjUVI2o/yxel5TUQN/9cwF
lSlB//YXGvdaQFAlX2O+nTdBh5+WrA8QOlL89W/xx2N+QE/TpNdMsprMxOZoeB69tw1Xl4L44ge6
owCxGflUHpta34RXHO0NQ7lC1rok0hS1Q3N9Nr/ZAgU5jAJMQjuUBjRkeIi8JR64trmup9K8gJ2T
3l3r/UQ5x7liAci7JTurHn5N/DzKNDN0nukgRRsy2asqqJbknRyCAHaOeOn3PknKv1xDolbn9BYC
dD+wTi++9YiVso17RVWkUoGQR58fQki0OooBZQFKwhvDchaoIVBkqrLXvJkAN/KLL8tl/EpVpFjw
/NjGATKabSegBJXdepEXD4HKYy10hJtaXTV+eN4ij2cG32N4Mg3fz2KRLeoL4XWDC992Y9bOL959
fAyve7gHJ/tV+aOIQsizpbZmWqTF3av8idZ0k8oAUTIdDpbWdzEkR3dyVWS0qnCoEQbL+Gh4Ei43
CxaZFym/cXh2aQI9+mZsqubOUCrScNNfr+oibafUllyldgPrzOXS6Lwx8wAf90fQDnET6N/NvnKT
v3jfZv3B2lTR1J9KYpCEx9OanzYulN0hsz8pM+qHArXjTiFscKotzbhuTea+gxCmh546RcniUdQm
+QOuD5B1gXIqjMJYgHrd43rXfTm5DjDYya/t8QqReHiN1L+f1s9MLCExlh7dadEiOge3Wsfcr3TE
ph2zCJOTfY4eZ5bM2LIOEGF14Lx3YJPADZu/WyC8e+Zqw9liL4V8y9hIXKNbKVLjluH/YCgPQxUm
9jSRtpIxDT7L3TWhBwt3BGeChM5Io/EBXlsdlyoda4omkzWck+jEDzDhRRpuCvgpkmuy0G87QLyR
bLi1/TNxns/yLD7T3FHUT0N7DrVAvJ4ye/mrGYyz+LzllAJtJMsTg4StWeztd4uooIPwhL5k9+RF
K2PIoIXUvNo6ufGgkvpIuKYjnTndu8VVn+/LuU+IBvwCYcMZdg4C2O8UW4c++Jt5Mg/ovgY/V1eI
WEZUVeaK7h+TNWAbnvW70fYabExWFrS3699X/ZyTWk/VT9bqo1EEbO0GkhpRax6JiFfs/QQiRig/
QKCu7OKdSrGfgq4xMbf+qe9IAhg6VTCVuhcdV1DbVnIrPnY7H/LR9ea3MN6TxCMd3juInbYXT0fI
FYwpHtAkZicxKn6Up1zxQM1G5U+0GAoR0M9YZc4UEBLcwEMi9hW23i7xEP2Xb7++Pt20ek9/26V2
ZvA/YL3N4bDR4yx5F4Jf0kSoqkzjlrItS+LgeZbME2FZep6nWQMF6tiitrQSPZZ2pQmoRCJqBpA+
fggfTMpYNfWL2Tuh573YeV9yZPjCLPzIwAZc7DMzfzugzJ4mkMPa46CBXdjHeKZtPoOcRH8WvkHJ
fcHSNhKw3JQy+3yVMaF+qm5O08CKUUVii3Lw6nEC70C9EK8meoq5LT5LaCWB3XUSmfYeZhg1dqB3
5OPIy8ALDtim2tUF4F7g64vrN73xo1b0nRSRt13/liSgzh+UY9dWL+bJqyvUhlLwLA31CY/Fi7KX
9cWDq0mqt/VdLu9Gqws3NfdW9yp7K3SYF/86ygsx96gyTMSOiDKj5dmUDH4NorAX1fasRP0lTSxF
+wQQs50DzF0hsB5UBb2AFYTvfKcCfrmQmwec8ruGBPLpRTI8KxmaiCBHKxhjD1FHNtGDBnq5w3Ex
p9xCPOoXvCmeKWebjbp3VPj9dlimT+gPCTHQatmUJ5rsaJqVBuRFQJ2iWrBSmbpkPmJJoxgKqCJ9
ymX2hTXcbYOwKg/8Y9SdYd8RhRpzGGepgDnmnFfa6kZq2/YB5rd3oXpzBBpxKHsf2E7omnmttYvo
bOnxL3zk9+eL7YL4LXWQX6PBhD4PXiAwA69ZL5UTfAcnRxH+8txZOoxO/VuEHpWZxWE0oIiwXlB+
OlXXvbHqYVOUogQ+iRaHYobXvXr+C0hAl3umRbfJoXGVBcvcxb0wngeenJqedv0ZWvVA0FV22bJl
gjcSTQ8+0kGFLIpskiUME6W7g/ALl0SGdf82A197B4BBp7aYmd1Ihl/ADcqZa+GCv5k2cPd2Gy1m
VAV/nwQzyLdbO0M/GVZkXXpzL9ipMCePdnerSUM7xQjijOph/TgP6kRRkjB8Ndiy0+MFBhqMtf4v
J4BwCC5pNDZ6DXV4ZcXHflakiYpQb9cuYgNn5Cs8d13vHhr7q3uJV0bm2ZGlLWpKDuDagmTpoImq
6MC+5iclnwWT0B4pJ7z7HfU6dQZylws5oVWzf+ORQBo6nanPHfAJHYYWLr5xizgcP15mq+9yea+F
iIfXOhEfw0ko7yhL0/M2eE5+mFHxwJaRhRtLfnF9gk8OosLp8/PFdrlsYeDHk7nTM3uIX1639kP4
ETAdg7vtXkBDCnHFEeAOX8bgZP8SNdP/PwOVKxYAEQSxRyjh0kfWleICAKCpsuQ9+tM7JLCL/0D4
kuwXiXQH2FXu/BFhsOiAi6wpMxOidqNgNm/DNBKSr0O/aS14w8PBS7fmvNTxWdTOsEMxTkUgQ13K
TyGrfiJRP6QUShqWmgEDuNv8P4fLKOo52INJiN05zBOlXrUAO1eHM6d0N0Cx0hxfgFiLe/WLPW+x
6dq5EMWU7Pm64IV9+Sa3Vuqkj++ogTcq+Zencnh7j8NgfTdo04xzaaAjklcgtcz8G59wMKhQJLhI
KE2YDa2YbZUvY7yaqHim0qxD5hwlbXMebJwoLcbqzEwdEpL124iIr5LBBOa91GEcqysd2rKBnxdK
ByKQD7aCRsaDJ8+rqV5xr9QzCEFO1d+a3q3iVF8UqCTK+I19lo4HHHxLWXTHaGiE0ZWAXlhfbLOw
oOCgw+l4u5GbUfnnHNaCbbQYLMsrS5SpNatu5vp11dGoKn9Oxo0WqnVxipJygHZ4L0iR39Qn441m
gHSW4izEVE3gsxOsi41uPqh8APS11DxnfWjdjq3CfXyRTda6WO1BEnjwieXrMoyiSnPdx8hFiauX
YVJKsxCF+U747SzjVMtIKCqwOJDpaD9jM64iSXbz9xgj6qyg390n3psQr7HWeBO+bOh4W0EJm7Nx
mFt7yfL0ZcDswT5txXDWBT+tVFmrqp1U0J5twijnGbslISl9uIopR2HgmB/HQnTOIKzV3E3k57/6
y0ZW3qm5s0eop/VWqImhfd/P5w71OAgSRUHXIgBQm/D0M3L3HlGTwd0w893PbWC/IOMfVRnA9sqE
8viPZw+wyJ/lxXtx+7zKXGu7LgdAVrh89sgZvmE0VF35SfqgUEy1W1QTXbW8mp5KKSeVO/NYOSEy
1XG8B+wwFTG4i1dLj5cgxaYLxlPoJCoAuP78+4AG9huVNgWts3mPbc07k43QB8ObU6CdSCrGPvmU
wGsW7Y+6SXhZ3n//Ycee6BtzkYhDdF5qe/pbvgSWr+LDzICFXBv3Jcn5AB0Atbonxo0gttAHUvxC
6vq8LoUYBhQFep6SJASDDzy3W3P61hnA3h1ey0iWxbNS7F4/q6GduZ4I8GhLVcTtRq+kt313gVyn
qq9mASDCWWPRmsdCcvEDVvgEw5o7Fez9EjDgAfyI/GgWAkFkZsxBis3VpJIdMpwrp78Dvhk9oiod
ncBbuVP6Bx68o/jfYfmt5tz/yf8ohlKqdHMAjWNqB2INZAF5rJKmjbKfowbxmjAZppsmcEEYcB4t
IAf4n0FHyZD0opprsPKmSG0DbyvFcdemBE/LNxILwW4JnD98aoDVjHOUb9EbXHXlAnQvK3h0hYLv
lTFKpmGpLlsuVIlDWnnTr9HJFNDJm4IY9/FSFCS5xSNTcjxosyA5xZOrFUHelcn0yHg6ZFUk653O
qG7QN1GuIF3+x2k5yGHZc2vtzU3aYkqy2bM8esyTw+oHd/asdoTrASS9Z/XR18aOFXMoGzCXNpOY
PBp7U+3x8YzqLHAb6rv0vysLZBdbVpfHwGJoBsJR7IwoxFL9FB2FlGpbvBrxL5MdiXS/l72iYCvk
VZeJ6KqB1gkSGm3rgjkfhg5l+mMoHEWnOsLr7YXEGjdK+yNlnujS/pkCGccPiBptnYf2tzb2aPFr
8dCXDprODmP9AeyxmP1gIPFwS7eZI36vTwjNccQ1cqiNUhEueK32tygoaBCjrnJItnBVe9+RMg80
n1AGZABzmJo2MDnL5XIIlAFhBXLHwNnw8rimAdaa5qs7aq08q3NAxWG0jtmnFs5aBBNwUL8pv1c4
bQBf8NgL0h1Nk9IYEY9taUX+WLO27F9IrgnyDTAJwFBYPhsHgFgj3rfmR6tGuxKhJHEgnxVvVeRd
63fXiOgIjI0Q3odMAKUXUp+r1B8aE+Xq/5t+o4ezXBFGiuaZ0qhvbmsOGlpW+fk9n7kmKLDVPZxu
KUvuKZhHOvd4BnK1t7I0qYj15ie5OqGBclYQNhH0tvS/LscJU59NnPZ8mMMw8xvg43t/qRbIbAML
PLhVMDKI25naDUfRhSfUKxQ41Z9TzVEILu3WUy6lQgjmpZ9AZ3l6mF4B4Mu4I1MVPRZIufKKpvq0
LvPQmeA8fJM5qhj8lWuZQg8X9vLOe9tPrzzlWZxCQSOiFgxONNEyPEvwe8HJm7zFgXst1pb/e5tb
mq4cAVw9A+eI6f9knjM5V0g2kUjkVGGiUOP7JIDFhMzWB6q/8Pjxpd9WwlVEoLl/ZehJzZGgknYL
9/M/LQIBwW6Akw97cm21oN8qj9w/InLap4zgQ9YHJIYTy3S/YY8BLBcGBGWrAFhblTf1AqCsRbvW
Q7jMfNXLiCSJ1TAitkEktyCXRkA8V6HxolsHW2OEs3rb7W+5rUjheO1kac5hZamONhyQoqhhNALE
3HjHmK2S2ZmfLOKAWi3DDjWo9wRAoNMIHRaQMRib4eOK6BvZID/Ayr8WOIcvIRYKWOFXNQZFE01T
tjmLuCrf0Gakyb97lnsdEPU0YJ/pkL8ReDEN/NByaruEAJG1eNPDKG31BMD1OGtw47a894fBCRA8
Pi+VkLURmGgqbpumKdfE66C+7mHCLwZTACQN3FPbjvolAQsDIhCBMsLzpCJMIjdv/wX3tygQjPqy
7nD10HlXIHS29CIwa0K2QeASRaCwst1FYhsTRWmg59yUERmTPzvOKk+Ef5cjm75ZyNa9hoWgLWCa
vRMm5Dmz8QH/IIBsBMsUSr0bgN5lLQqr2kkN7y7SA7ZBd/u5iDyuwJaUHbEGv7iO3BYwAba3muDQ
2pUV/LwFzI6J7S5icn0UxNL/ob+hrv/ngdQfBLt0o+WRGzovsvdYhOzFtEXe0jSjA7cXLKfx4fYY
oEb3ZW2bxH8OC33Lv6s4xzzxrGwgqedpT251ng9b6eRtTsRwDZw0hFaMIgCHEd95nWZ7xqxSJaAG
F4nT68WwUdqx9gQnido4rVN2s/XNQHiYPoX9aGzv/qwPH77jNb8hJn4Y6QJY9RyEMF6GNLH1ztVU
y+aC7uhK5p6p6aJckAmJaSWcXkzzejUhjMo9hR6H+fc5JCENxXP8+qimDal5bLrjj6D8TwOjqIYG
umWIAeN6IOhdqQBP/Zfe23iwXvW0cMa2D9yKZLKDoxZyTDw2S4baVwaj5iMnW+uU90wiMKnZWYt9
TDdJEqGavJzIQmpmt1aNxB54a/h0yQh3fl+rYZKPIwBRJ4UBroRQyGowqRIhQw/MtqbT7nfJp0x0
/KsrScvsD/koXQvUMsN0Ft+3TVdNW0bg4F33wYMIlVYa1YbuJqm5aAhVK6RbBB4WWlSop/Ad1ton
A0kdSRHcot5ywrg9oxsfeXOAJH8uVeQLaAiprdC7sSGzli8GwXNgjKOB1hNoD1Qv0V1hKytfZAY1
vEadr5U97z0TLEKGax0n+Ajm4JEVyWGis6z8I3u0nrfwLXoWwstPeMF5JzumK7b2KPlC9MojY8jX
aiNxSMIcpOENuvVpOn7Ju7wVDDalNtRFY+H8Ae7BeZTJoKDmh8HSFH2jT8SLNfM/XpUnZrBAk5H3
3lLFFmF4uXlWyJzm+ryE00Wty2OXhycwvY3I2t5b8BGV0vT+hPcoItMzmP5RsuF+14Lz2cZ5m3Wj
sNrZ8CBBf08+TgI4gi0dY8TcgUk5QCWIv6WHEHIFuZXXfbGrH0abnQDQUpZFYjvyRxuVX5kAza3J
/vnPiUe+NoskCOcQn8osPZ7g84K7zUpSrpYw19i6880peoJI63YOt47jVh2R7N3D0636N4FVfGs1
WUSsYFdRN5ox7nLeR/El25Q0ekovtby0Si/BLHoaQVezArc4FSEooL4sVcFDq+MBK6I/QBvjbXQn
QkcRDVV9W/3BbYFDi9igE4770mi11ot2sIof+tWJPuRYUoMqWuZDZgC7ZL5EeXFMvhopBvxFbKYW
UCbiInOZrSMjJ6E9lmyheTqPzSV5VUohFvYglmW9pA/ghM0JzBRpRBsfBYdndvGMAqS9l9TVByu+
WM91YKrZInjxF4aCaMxNCXrROXBhm628nTy932klHH8pGLD3WRF1gFT9qC0tAJsoPsW+A5HMjpRm
ZAeX/9aFel0lonUKZ/ZqSn9sB6xtOnlHtir3SvAxHCqZWfKCYt1MJ9lU7x9w88cqjxLaO4lsdqSc
8q6CWTYLR4b/Gb6rNxOjiH3rESn9LBZpYCF1NvkKfIlBfRaiK5WQB4s12aZRrjI9uZLaQPS+iwiW
EE4IZk2ya50U2kSFUAagNRXiF3CZ+LP8VWSQUmMRPctXT1L1udSIP0AVob4G9tJYJ7nkvM5BWeY9
U5Xc0/c3jRfo3+KJUlv3gLfk8vkXSp78COjPlmxjWdBtzDN1ukCVk6Sr90vBoNWNzg4krqunT6gJ
FVtKT81RqB/3HMZ1VAZ1at7YBnzML1rjxlmyZqjDHrl1Q/9K88+/ryUKXdjP8cYvIEZ1869usquU
5bmH59OoGzw4slQavqUKlW45AjzJBHEFXVqmN0zbw+QDooL63Lxm8zXQzlwUaI3ny8W53+62h1D7
gHvhxgkpHiK7fGYPCbVqgi8fnU+06OOIqkovcy1zh2A8xIHjXNytHPL8Z8ype0uQ+8BNetfpu5HY
3Gj0Uf2b5lEsKKFXJ3RRU8GXS6BAmXxxApLDkESYXFYUCgwBjCWTzc0dzDuuU1x3Y5iD7WkJrUKe
+gNOTWgYPsmHXwElynPf//lXtEnwDIxc9WigYc7dSqMcNhgc3CHTsiUdIB9wr/PamWuX9icyNOH5
JkYPiD5GgHvf+vaCWTWXk7aZ4DhYMeZDA3XGqUk5+srtkYawylQD+Rhp/+tEVQsWrKZNDzRkF1oZ
PYBckIhKcbpFhq0wW9BY6Sz2TTvRXD3qOu82LZHHOlsPmfLsyTL3eEQWOOsitsJ1jr/otSij1Nz/
WMAASbMYkqKSrxo6ASPThScjHLtZ9wXnV0CWKfTNJr51BIKViF3jD+3zm0M9A41vGOeV1o0KQdnM
uMpyExc1sPbofSgiYyDfqtYK3OIrDWsXqLdNXOJqTnUdwFnXJb2kqfEp3b2MkDtQs96n/vGFHsT8
wlqzaePKjxwLWrNAN8tfwmjhjKstMdBWawAT4a5JxQhMozLYUuA7bLlW/BlmhmIxjCtXRSsubdUq
inD/2QnCQsfJvIys/HJJptB4CtNzSjQ1CM++Hl0hQ9nTNk/GD34ZQAe+0VLG7pyw+IehhyhZspmo
ZQ3b1AqZaMBUgrInUuQKmHb0loc5eHN7F1ZJeoScUhVZ38Yd14RCGJiQmVFNL2LyFajWUHpGG5wF
lb3qym9Md5n40YlWjGBbJqOQelmIPzHx/J4fvx5Qy9c1y2+1uOHnXRh7U5dNZt1zRyb8V0TZmxwy
+xluOHR7hLMYynPw4NUOXvWcZO0kacSaHEnOiAYMjsSX6mAfVXSErQ4PZf6KVN2eRC9EjlNGvBRM
4nFfmiD6eknEwW6pBxrRzXr3NgwkANPq9x+Hv+NlZGZmhkvoa1t4L0cYS5ArbJSjxzX88eszMaq3
EK4FZKpEYXfFCWg6zbfY1kxHEuHWfjJ2goC9ZfiLVQrgu+IIHkvapDNndHKLsS2P7n0fdlVrnhk3
7ROCfuOKLRBFlnRWS0u9/ZnT0NcLHFf8blyZciWGQBCUoY6FqyxKLJLe3zjjSPAN5iNkzoBOkGBf
1SFV0GkrbZKtGYGANw85Ze1YHAceCrKoRtuM4wZPARD4nGtMdAiGJTRia31R9YnUC1l6WCVooCq/
pxe9OncDLPEo3z4NBVNxWMbJEgE7AVyyvKaEufkiz383gnKAskt/TozJWPjMVLudLlGXAbxH1Jfb
DfWT8cgPGEReDM4VMXYoTGIp9dFWcQJO+zFzdjghkzpm0twE1l7vp54PtRr3mtmoWeCZSHcsJomz
0G2H7z7xs9CKIN8AlIIXFoawuB7dZD1Y47A17x7nuiT+mKBJh+v8ppZclR17VzKx1j7sJTs+1FR9
eumYZKIP6cD6om7BfI57By6Y97c08qH2OizHz1n70tSdCyXZZp7b2ztJSThbMpww9pkbhwU8hptc
qvBLC+UGr9H91YEDl788bB7ifMGw9bVc1g+aH56dHAgKWRzlF7mAG0rEQKRre8ASUK9cJaJ+IqW8
/KXHkf0HxILElWOiUdFbQTLhVZs0FEY5mRkH/xRQxE2giOxu1gANaWkZDb/IvkzafmmeAZp+KxF3
OkJocqE+WdmMZdRnejyBRmwB2K7IIvIBWsGHnUaN615P/E3BL/UsTELWght+HAl8ciyvALheEUfj
E4UGONEhO7jvCoPxKU9B91IQ4YZcqhMjLkDJw9kbGUdlXozTX11NmnmIEJbTwz5yc6srUoeQoVXz
apJxeL1fXUi0szMjGS2B58MU8NccElSRILbbmKWwLXsGVcYsHV/Ex2X1S3tZ6Awg1jul/cU6zrA9
0ui/sP30b0hwn3mTpvJDp8XnvMlgi8qxBXH+4MW5yD04xU0lnK9npkzq36HStZeFX1/UAdonNLab
VPstoct6ELymy9aAjAdVfbYCjthiP18K26/FfHw7BvYooG4h+jOEqpfkI+hJ6dp6LXN8NLXi3yCM
0rabB8KOlarWX9AYGNZtWqn5Vbv2V+lz+mTiT2Rwk7FkQ0IF0Ht/Q5pE0SwIGpGxfVQ0QfhXjXIe
QYZgcJ5LR80BzJFH7wKI/RTn39kPNAV61oZag6KFPgF/J1NrfcjSHj90DRisfywbBfzJTUEJbkWm
JtArRNuDq4X9ipohHnCQNfw0teezE1cPoH2XF0wJWHfVwYeG126lIMOpPtHZA1UX/uvxEJs46nNn
gpRk64AweiyAjJ24EZyylE13tzBKLmRU+u2+tP5y0TUbSNXi8V7LGVz+N2UinBPa1ONgLIxcGCnD
fBTHsUhe+9FeV28oqHD4T2BxpWRHDRFhFBB/j0NkSWF26zEVWXuXXpCwC5Hlt5f5Iwh9pDleaA8d
oLewwSd5tKstCHXkimNPqYgpGJ4NBske5g95oZx3BYwG6lCJlTgAspFGU8VGbB3yQlvsYlf8q+9v
D0DtP1WLRgF5LQrK3exdzfmYyHHYwU+3yHK8cuwbl7Nov2kzXTaOiSUIKT3r0T61xRJiE53BocUe
FEWMVSC5D+77shIB9h5TMDdNkgvnLuOFa6uLdk6F8+zevgCHdQYSlVlgPSnF7pnERUuFBgZi0xbX
E+GrTZgq+4Vz+64MwfoBMn1IdD2syvEhtLEbK4fNQFZBCQgRQ6NpCjPPHf2U6gnyrb9/W6ELW5AF
73wBBiFE/5lSnmFigpQheH/vkqTRghfllN7Tr8dGP7DzN4HEZ9/L4xBczjGvOsDe2dtyT4pJHSvS
qA+Pos7UWveBPQUcRAyYmXdIf146G5nyV+1EKLzoQxy0LeRHlaH7JSNqISY3pDrqys5cN94OmlFj
TtgiyholgjNcKopLyl1xZjdydBvDNodMFY4k2S2Has4am26xUTEnOjfpVXjfd9CjwdiKBoTxywJs
dsUIuEdy+ENhxbbyETIHrV6ZOJvUnpn2/2+7toZ1jA1jYv7BSjzm61FrSDcojFbAp5ZnUmuxD6Ev
gnnFnU7qKB4wo5gmxStENcWMuWQnv/xGLSzVZmiSMNe4T/bqZWnpQDfYjlbJL7PGu1a2I+U2Kf5H
VrwX3xPcGKhFsiTlGuO1uJGGKNhy5+8oYO1KG0pAVR6iJvrIZvOFmLEzWfhmuS+aLrIXr7xlioAT
pzCPgBJdpHn+rQtO9bYTNrB47we8HfrOZA0R6njC2fi/mz7L7fGEr+/giDsdsA1g4QwuRdJSyKiY
REvvOlpy+OSjxmoNNZkNcJXQzaIJwBrwNgiF2xVGAZEGt6f/pesRqPA+2qBWnuxD4+5PD3gI3Hur
kyEZFSpnWV99ncbdyGQc4hALVy13Z6ldTTlHrzlmtNOYvcYsIuR3wQ7+tWvJ4cg9aC80pIZ9Q4ik
d11AOaEtuuRv6HPybFqYUmjq6yWoU1z8YVp7JwIJ9C2wUC6uNfS5M2rXJ8mzwWWW8QtfBg3AIDHF
w15dqZmAuaXD3c6FW/PLXPxhCKdu/VwZOP4EMBUQBo2/KsYJobv6uBzDn7nOc0NsXIDPhhpxiDo0
ovWlIW+2jY0BaHMEggBUWV8cJmrqd997aBvzsBUABb8tF0umkHhn8HbXAQkm4kGhj4ipqZLYfk9i
pOlXdsUCS1VpgTAcLalyuyW5Hhz2QyVxtCR8YJdwKTn2lpEOjrX4YiOEIrqU59ir9Cl3XbwFy25Z
kzpo5R9+nyR3M2fQuxQmEYqvzopT0JZMCdQ1MGp0sKIOp/zelERRJ5SGvrgeGJvRKGFqjYVGNRGC
+//P6jjfwKFDDSyhEo5ImBGSEt8u8oj53OoZydjW/z2o8AfHRCdyVrHljt9LLMMFH7duoOaqR7wD
5KxHoHKBq+Yb4wvW1ahmr86TCheXdPNNUUvgP/GuILNl3sUGTSlbcYPEnTXaNugOzIrNivdXPtZK
UP2rq+WUcKdyZvzRzKFJC9jG3marJrWr/2lzIxDRIP2oSm1Dml6HeSpacQfnqkAsSkS0hTvBjdk1
kXj75Qwo7MIbv2DXfdrHxdw7Ys9DWaCBeS2Erid2LxJ3bukdrfiv+Ku8XnP8jxImw/aXKOReD4sk
Z9bPEpYUa4PFF4xZ+91K1NHfM+eztjCTYOPfVyUxPeNhYLGbMJwqGW0EZT410Pnt9EwX985sD9pN
ub1yxvXTT5uHHZfusZ5Py8l2nFOqSaAbuoLxUv1aHxpqQB2wNXusq9v0ARmSSIvSvyYJvsqYfJ08
KyfDsJ5KMP3ei/Zns4NnqQ6Y6iAYUlgxDvKPHIcoXqeTynmy6nJgNGWxIG4iLTlAAILu2gW1rorf
wa8mZ+HemTNe9Jfz4kHAY/OpP3XrVILsgzT/3L8EIRQZd36IaVR7/ArQrgLQSKoOUP6vETb7YuRz
MUQKSRheQ/Ia0r4FWVApOmHwcC/0g9jBz7TEAjWM/BvHpDE/wDyhtN30tN7KU7nyL0Xx1wnkU+Kg
ugrpq+drW+yJf3XLLMFeWoCYy7rwyna3aM9KGl86EbQnlXBi24htnOUWWlXyoIrn4emKupa6z6hI
IoSqvAGVPLzDVubL8S9RYQtP29thdn4QjVetIwrVr4HcBkjh6HoVcTFzHSAWgWf7QMO1zCkVehb3
0A4iWD5ENV4kGNNO+uhR7QTGSBkModp9XSwr6RUgIUH3+eVjIhNy7T23oitcWYK5Yy+Syoi7lfb0
JesLpx6TCsFuNkRy1u2UClQMORYyyoKWsZv/8aCNoWEZLMkA3JASDFZpNt/GI0gn1p56ZlttKwqb
wev1gJjm3hLbwfUyIFIthsjCuAegMv7Ro2n3u4mJ1YngFmeduwrJDD2Z/RFkovyB14GZKrqlt96/
9DElvP5uUvnIJNSwn+6F0gR15msQsSC8diKb9+gRdV0yJV1+VZ4GqkZwQYtGeLzDJMxMDWoMvrwP
f7iIhwqyERyqCSa1d8rLocywoH39j9Bfk3Nee7vDAnBtptp+V+VRT5FbFsx2Y3Qsjww4QHpQ69W8
/hhOos58YSHz4xLQqvfCn+rOR93EShf5Yw2bDReLwXpSDBLT+jGBlnNJ7KmZbhZAf1YmKC4VRCve
Is4qtVpH4AhUz5N+hbGfizMfqJTadTlVPV2+3kD2JT16P4e6fNTXZHlnC1fJHxzpluzFq07Zl0AB
zdAV/nlNGK7JFAdiZ6o+vWPh4sWZ2ZEQJ6sQ8Wm8OcuYoD9kePgBZ53oOXNIC3xQc4Mp8Zv48Cln
g80Za3PsOUWk96KYJYDZbpE1vlQPdr9I+kjCRc+TjfIeTgy3D5abKKYCMI19dGbW8bnv65H+beFn
+5UBjL+haCEDCqEcpg+L9HqXpHVth319SHGSqbZ4vL73/7lTHrZFME2jV8Fh/HBZvNw/zdXODt8G
eBQKtw1GAcE9VL1i/SIKjypmTKVfZ9hfAJeWeC5dGyJj8bgtgCJTI8jHF2bcwlaGoHfqrDUoZxNv
M8/OoC71bUbxrImcOrldWhW4/yqqi8oTlh8bGUOgxLK0ngr/pX08vEae4U9Nd9QGcVfMKKwEpD+D
C8syCPO4U21oJU+kxVQlwM1dFqjaZSLuWu4NbUqpV0tpCfJgBah0op+KbiwqSK+75YyguxILOhMm
rhL3EcNvaWLqT3PP9HswsDWFoYybaLlSvmItTLleqUZSnVFjvl/7+UxGn2m1g64SfyoNP1Dg/MOn
Fxsj2iVVfSPg6AM3q8MuY1RXRyO3HejIIHy0Tpg/NSqh8p2EVKD57Zs4+vRwsf4CehZMAe96AMQ2
be22Ctzp45+39o0Z7j772PwJC8yIMOZbSeIhREXqG4gzi+wjiPw23v5VZsud7McuVuf5M7O8dNGp
o+voa5HqaeOP2TMlmNjTa2EGJr06DbIci7l3b6Tyk/UXfviImiyqyI30sdHFo0xDOw6L65tpYabn
3V1hstEjr1DKB9AhimgDDl3m24YPmAjT84z0N7TvE9vImsC/Q+mSx6ru68aM80V+nJ5WeXXeL1+R
aseAkawoxljo3W/7tQDp/5FJwXa5zFouFYPKTXCwvAwRRRg7BLYviYH70C/NIrGdXnXWJpWYmjon
GxfpfTImtI5/orYWvDbm1MibSVbEMSBCoNRE7shpYAXG/4T5yDmsXn413QA3QJiboU+vpkfOPV6P
Fnd26MVP//8C/F60b0bJ0ykB9Uc0cxwraqi1PLsP6us1Y55wG0xDnkIbLBDK+3o1ueY23ZB/xqhn
XJZgh4DcQ+nHNgpKFxU55Iur6ZttKTRkf0+0HXJwmpbGUuA8JvDKwE5Pp6l8+b8otsPzcQDF91VR
cMqo1xmwrvEeAksnecQkNDQs+/Swu4F3U64qdyO3PneRfQI1QhxRylM6l8b1OikAc6gHiQBmYHUo
2YHnPNIO/NkH25At/wJdBQIz5Yao/NhB9UJEVrEC/+M/yc5Nn3eckVV0xqqeCESVxYeGmVbEtI90
I0eVzdw5z7CDUypje9HuXUFGyBRuubwtkELiKgTBTv81QXnBz8+5xI7WkC8mraROtszCpS1bUiCP
h21N+Z6KngIlEALWQuCOcp1QLA6WFQTrIrfLyM7M7r7KVC30Dmd9qrT4ICu+M16hhPrvbF3yiWKv
DxZdrzzmmTnpvSkDJxIEOmy1/2CqrfwCVC0SxFNMHREZz75Cj1DaLhIx7uAsCZAVdhW4fk9oAINB
0c5zCLunV9HqEVEbOzehG9eIETQ3lDncq7T8PiL+1K4xdqdU5mZxiu3jBMNkqQz3ZoCenRBrsPyZ
cuMTTumBI7ZXpQBitbzOyLP1XphZpN1x8d4PG8aetwlQBN1TlJ6gOEGa/jsdoyTZT1YhtoFmu1hF
RYVXM5UV3DzIyaNMyHieDOKBKtVSUhk56lfkZv4KqEJvWwUVF+/yxO/2tF0EsM2GbJ8YMnMpavp/
dYumUTBGqcHuk09b5Z1RhMuMN7xVKlphuSV5aaI4ccwxSRfYfJkVc8PG4LFMGZYrbzAc+NJSo5nq
+DU6pxwaa+lxCiHWhxLRtrwdjmHm0deztbcE0VAhy1D1vFxuHV0BNIF/Er3L/FWyejXw6m+pS9UB
tohiz5fNH9r7hPdQqhjXrlViFTUlIGpRXxbpez920nw/61lYccNSZHIKn1jlDwyG3zk8uR7OjTOU
oItEswZS39vqd8Jd03vHypPJ2zlWGF0uYFyPuISeHRIF/jjjbZlQrVHo1vN7K5Sxbk6c9/6PAw4o
qbtQzBsvD+T+Jzt2W6zWj9TqsdyhyiEPaxUyrXfKwbiWIp1ASz9zXalqiPkJ3B9q51su6wEllPbg
+cpaYLTWFKS8nAAwPDxaIdrnHqAV+K6Yjrs+UtObawbqMMr+lOYsi1rfLyO2gLfNXRKfmcthHPDo
zbyEYuQhjmpcdcGBRFwGRCdHYganh7ciPq/ShOM0pwEwu30bbTH9fQA0Vl04UjVwOOO2PtSClxvr
cWTQOy6W7B0i44k1Vl0gkdrOQac4db+Y6vUZogbQAFGwfPuyrARskGoK96ze0NnsIK5wMG4Skmbd
/5b/Iw6ga378o+vkOa7dnISBvQ7CBgk72LfkdXqNIbgLrP2LbS9jSWQVCBWv4ngd6bPDFBadU0qQ
QEoi1DCVKNjCgZT+y5XlK91JgJAOt7fd0YJkuD5ydfKnnj7/wIb1hVd2eeOAKAEJ/E/2T+ytroC1
G5KW5Raygq22k2OSiKOJZ8HnsC9CZivIA1jsRRmYa9Nmn8t6f0+tVbE4vuk0kdfGEeBuw14sPr+Z
C5AkCea4v09pKB7rmfAKfANsSyxErSrE1/mMorSSlh1h7eCPioZIAtA6ggmF4AwJ8kUVsTFbBWBE
HpVrIbWXjebZ+OerSUIOPrkXMO/YSRkRNvbjapYfI/a5Cld2sFNnYrOVfvPoyfuUd5tYL4ppszjA
edF75naeXLaQN5sr3T7KnfqB7+aN3r3q94wisBTc01oARbXT0m7s0cZZT5Jyy60xPM/EtBT2XBEJ
U0jcPG+2WSlDMFnqGdv0F8LIptLPI/KLKSebAZus5WO7Zwc/0EIA8QAX6KS7ETBXOANr5SWbZ1fo
cYIDqK9LBxRLsgWNem3W/9LpKf/fuGNDN0AafDYc8XwfOSKatglw54X0MEArOju7+Ov/wMIqMk+7
3GiNYMAY7YLGOp6NeAmz2Ggmpf/fUb+LRcSA0qdKizRT82Z7jop3MbCBXsiR8DLFHbUOQgYUmYPt
et1GoF14pf0T8ZUyiPpyAVqAxNcAxHdd5EaCIZM5FGzOWQD5omwayDzaNLXhws5i7CFZo7NOqh0D
eyUafITrcoIjDanmBZ4Si5J+dRfN9zC4szaQMYyDUUtB5jTD6h7sbamPQwyRIzmDEK5OeNF8reMK
XsGYOAghhIejyX3bpjiM55oQ5btPLCjaOrxthzgxICfKm0ooJi9l8Gwcm9VBvXK52fVTnBhNOr5X
qG/RDLE5w622Gl7sEX5lpJuj2OMtW9GXZAx8Fdcdeqc9ACXkJmOQ+38tVJ9YVxU/qUEW36ZOjb9E
bfd5UPYhHzugt3rZ5Z7GX7DZIGb79/GzFxGh8MPqg4sZamNs5DEji/ykpQZD62nVvomsjZgN+/yz
YHQxQG9P9LZK1KCLegAzc11jFgxEsr5Ceysgm0F93nrhcYcbC1dm6W9uLsjJw9DTJYxjZVPomrZi
IWn7vP7bjdDnuQBxxwcBpICLf88wogQmmXwv4BAqhFScBi2G/e18L1euD8+Ib8RFQtU5UNNrCfXo
qtyBUCfDc93+QfkxPE9/i/IUUDvHnyTATBkMq4UdS0QoxqNOI/vHvVINIFK6PHZnIjhu9QsITtj6
FCetdwxLL5F40j1G+lAd3oYj/45CE/FZIIAuJ1DrKQM3rmMHaaWpPvqLTzXg//I3FfTj+fLjvRIr
Miu7sCA0lFlPPjWZ2GKVMC1KiktAHlEQ1oInInZZl9q0nXneSnGbWFVwsl8ffBFKvQkyt9WDoUh+
54roCE7YIvZlbM7kPfPEuVOhmaBBwdIUCnd3bjYz8GjIfehSkKSnOyNadAqEH87PhB+Kly4kW6ic
n+TwXBzI5tKQYJ9KHcTdEeqw+ktVr0RLUAcA9GfYS+lvwVqqaskATcIz2AEvc+5U78HaiwBljaXC
am/Svd6JYvbIsMdITHkuyLx4R1aJVawnXgf/7zIPgFJ/HI2IzvLPC6BOmJzVYr4p0pllm+C2Rp5D
Ssfr06vKmoVsf/ZjY5Zt9M9Vv1+lp5skw0HbpOXP4USAP+yKqELaSMasDyo6N3zc5ZQGzUX6cDF2
JELd0q03rJ9UI1o/D3Jh/v2DF6wdPEgxP221JDPqNe6x8vO2o3VyLfoVDm/cAfRxeD5roJdXyz2O
cMc8T0zrGf0Ax6V+YECpwl9qMh3jjSY2Q2sk3rv6SZ4hnK03J/LZKLtnZpwXRK12qU1mYPysqx5v
a9Z7AO6lklIfVIm/QGjGALJxtoycPZHTuAbwwujM7HDF+5RhxAp5U7TMB+zYfZE1uv3hRwVWPX/p
46x3rUW3aVDW36DdPT/9KSZjk+pptrFExrXzKYjZ+mG1QrX8Jj7MpJraatykUOdtQWsBD+y5fIqk
xHLNVzeZIr3j4pLqzZtPh8RuOTn2+5kxOzLbmHanFYlxr2BGwU4r7RG1fvfnancQbwDmkwUSo7T9
3XHiMkYbEKjGSbWIzLxjHu06T9tOaiB7L61F3L/9al4vFAJohdZ9K9dkOxRSeckmSTWeYscTXoSa
hFIu6nF+Nhy1UPbfxPpvU68BwYhUqh+imswtbPVecY1B02/CMbpiPIXgKIPyUKJhuyoe36PDhdhd
KffKSVXdisqgdy9mWGzDRoCKyrkeBba5YH/6ehlpvEsxu/8mLw0uPYijm3vCN+d7YPg1IghOJuDk
z7B7RVAvyhvCKqmXda0zIdkaEcjNih2cq58+CRNjndt4T8dKPqurSYUsYpTpbABSTXSZ8RBkskqE
BtCVB1+KaVbbM2v9berrSNkKUMP0dmstsjG949AQPALckqyQ9Of+vcxA4pq3OtgnaC2M6ZgrpkYs
JUVTOmYLkuOuNkSmg4qlcGgO5Lt3U7ppwaaO5XGHs41Wiczgci1MKpJfc5XnQJ/nguBaE7IMJT76
loPXrA53j1EuTMBKcLyoDFBNonEht6leD8U3QJ9NQ/Xe4Ijb7YULYaJRN1ns06x8sMy8I7Kc1nET
g/ksmghQrzJ49oc+Km5iyO0sYVihG4yoii4M0lTnkpYnjI+WnYL/c8v+h87CKvbwtukp0/HO82sU
X6o4+iTWQuPVs84tPovrwNQW7Pxlgd52DAGYn4waroJ3uVp5cdnUDUduufHVeinnh+VtoqkuZGMd
gBXZ1I5GZ87yichEMTGfxVtwu7qeI4LeevJjN09V/aQ6agA1PlLpzrAzIys0Go1iJDaqCro7E1Eu
se2ogK0A3nJ2M7Mj6Vg33GUOet39HoYNGYIz1SeF6uYLMRhBGwDOmVDYjnDXGztFgITn+9nqNOK8
1ciGuqSG7LHneNy4Jn1naVMUWL5TEeTJJZGN8LMGFs3Al1xwSUVXmk+yGwWZA90Sd94QGT1rbENc
89u1qL1i5ro+Q2CSjVb/DLw5ySCT5XcOqlRnGgbUqpAP0UhirQhl0mykaoZdrsMkC8SqHF8Kh782
VRM0PWoMgpJYF8iKVdCkZ0XE8M8bacRShA0H3c3GA51BqF0Ld1ypNJeCHYADCakwjlQzaETQnCDP
KPSu/T6UoKsP6UyCbfKDp+BdOp1/ZTbYDOfatdyOFH2r1u5+V4mUGzQHpPNzRjVloXnIGMr9J92m
j0VgYVL4aO9V8Pw7d6zTfOyCdyRLCA4NKUTUQh0+K0R3a555Wu8MamYyVSFsoaQioUdpX1gXzQ1D
nPRwul0sy7iOx094lZ/nDu0rbJSutd0D+IJoI66agyFHWAknBHCZ5ZQ4A/PgyJZl6paS7fD8HiYO
wlhbAqFFCGZFZGZaH5flU24rdmeOoj1eXSo1Lvkmtcy2xHqREPEkAQFzjJGwHGe04aHLpL/82twM
ao1MJ3sW5cr7Zx4EMZ/aOWzr+C2yb7ROfyKyKBfEsFCmFfqbiUKkX8LTr2GYde4Xff7GEv+hqAui
K+hQ2i3aEzkmAaqKiU77RimxnoGtp+ZF/aClufVDOGdojC41vuaxnUgTtnZznVQn3dosCIdPiv4+
+vMQ9BCOSj3+mn7HOROuSh3ofeIKI4V57iTdGnQTxhGXZmCMWUpYPNIZ5E4BdxUVGSl9A+S2CmUi
/w8Z0RYSwsHC+ke7uE5uZCHon8xp4W9j2XoeQD/g/I+6BKDSfuJsRzniH4d6zuejUIkqCAzljvk/
ES95V1xy9+dIc/afYAPaQEIHH6XtgHUFwmAMluwfcp4yUaTVlwxwb71IXEz+XQ+vzaAMVrm6IxjX
h9HKb7ZGAXR1j3eORiUt2ZEgsh9I6FRQVNgBpJ+XjTSvDlY83vjvl7KDLCYm0VzuBvIbm5PoMUQe
FrD2MaayYQSgCeyiTnc+FQQ9268TqoF752RxAw9/iM+MStT6bNEFuxcST7qa2HVvJBDKkYzXveKR
sJrfwnipQbhU3yuzt8DB6WvmfUvBJTSliwK9IW7C1JF4f1Aj3UrYpTvvSj3EZfgZiiBmC5wFUO46
UYe//CTuxKzagjZ4WWtMWuI9LyjGIFJctd5qmX+DwWrcaRY9VveTOIi0NunDsFC0eKHfB3ZTZUnB
bHZi1fYoTXU/SJfMhejOTpSXK/Q2PmYMWFNC8F0MVf7OZMPnfC4j2037XTmSWIrYhxdStUolcykv
13SBB6kYu2aM1mnBmmilbbmwqPQXu8x/gR8bK8bpr4IeLG4BL6DdDhKc8AAiEvT0vBaIh8VJJmx0
w6Jahj8Z+peKZuisro40oVZJHltXz+okmeZ2PQcK8aIA9GxWM3YUrL57dlh0cxmR3fho0HhEiw0l
RqEfvdRCvPvQ1VjlMnT5xD/EivW9I4PxJjrjmmBzM4cl64iwT+wPdACorL79qbEYoAj2T30FRn0i
xdP0gZl0fJBs2qSxRv9T0FsesjBgWV0wZ4zocE792+10fayhMPJLMRLi6F8wG7SIxkkBcN7WtSFy
ZVsAbEuRBweUePFKrWPI8yZiosnUtdoUbVknhCmVi8SUcgJHicDXptzeH9jLbKPSPsJdD1OXV9sR
jfOYW6d33UOoEBqjPgOLhNSFpfTUO1Zhan1isL3sUlW1WamsM+O+JceUG996OcsH6q7KG+hBdx/u
63va8TXJhJ5imJZ//CrOnY/TOUJ6r625/zBbexBPQilt7kMbIVA+e2wfCWTEcQDdG+MdnsJvpPn4
S0ukI0b7smsvfnPZDg3ecUAZpXuQ9mpy8uT/DYobZLD6MoUjfZASeKN7NoFHAGNLPqaL0SC4+HRp
Ycuq18G4owQYIfrWaM+9uUOZs6Jpv4wCUE14C6Als/09nC5v12f9c9OBdTZP/QW5kWTMdhovryAx
9qhcvq5WJ3IAXlVUpkAx3ft946gErCL7yFAzbk030wHWGU5Tq2kXZYKthAXW0XEFNxczsCGa0hZB
f6gxvct/iKSwEXhqe1breaXFF9oD4UHbu8LCkd7C208FLKS6MYp2zL9fzuLbjnK7TnOFBuBtLzgc
UUlR0vZYs+2ansufuKwbUz+QStFasMvYrP4TLL2JDcO59vCvTuOK1WjYkQpRJQim85GY3usHobjL
95X6mnWyPqySRAbD2A==
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
