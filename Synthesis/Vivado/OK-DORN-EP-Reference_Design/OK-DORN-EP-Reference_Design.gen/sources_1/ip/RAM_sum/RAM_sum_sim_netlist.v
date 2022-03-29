// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 29 15:18:08 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/TORTOISE_EP/OK-DORN-EPV2-Reference-Design-new-prj/Synthesis/Vivado/OK-DORN-EP-Reference_Design/OK-DORN-EP-Reference_Design.gen/sources_1/ip/RAM_sum/RAM_sum_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
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
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
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
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19312)
`pragma protect data_block
2rfiJkWR2ZFgJxMkfsDxEvNUk8a/VyDq9ka0LYyv7kPCQnZf7qyUz4v9W0RPSGDgPUrGM72U0K/U
l/8ctULozWvqZvPCV/8XqOtvvdw60+6uxBRNVfbmh9yyadHnk19HmiDHMT/wnpKkA1KMqAbrQh8W
vQc7mIP8qgSlBcpM8iPuFHe+lb+ewFbVqToaAB9Ygmksgpd+En4MYj5afT54KG2gWo+8caCquF5h
qhzOD6bWkpOAowvSOG20jLVDpzQfltLuHBQM6o2VViXs7VK7amXver7nLGzo2UAMDNVwAtvrdNvB
j9fKjhYBcWRQgkSXBY9ExZomPp1D6EaVGrShROwmJCev3HCh0VtyEaT1VWbCuCay6ovGA+1w4lty
5Kpjd5FNqp6YZsglGhfPkeHNHi6WUWdqgOwDOUxRFXyqSOqZY7Tnd7b7gFOo1GzfFYOJc45zwOZn
53rDlGzOqAEte8QfHltRM3gO+bYCoNXIkwU7sN/1NRTLEK47InuUpJfCjEDYKBIKMH6+vEpFruzl
KrSY2ROFgZI1EHbQjASkFGQVxNgTNR+I7HSuq+CYsizY9KFhvR+UyahWZHKC+BRmfgnKqlbR1MH2
uFvEV0hoaxksC8D9Be3q0oMSqs7TTkbf8iWQqu8j+1kQ480KnWFC4UIQ1d2DqnznuVSFFa9/6/mO
8tU89eGj9KS4myLiQ1OvUsl+2ZS9vi9znad4vyKzAQfTeaxRoSJy067S7HlOmqOuU5vJ19Tf8MSD
4G18mdTofli7UfbtX77dByAu/B4nrZmIAsrERjDh1Cp9FHlPJJ4FI2ZJpdHKVg89IDEtmZrZXbN+
0N43IqjECEdtO8rGexAVz137v3fS05rTdIn8juil+3ZUUhR6kpH4qLaYuleU2i3CALmhreiqzPDK
8PcJxUMEfSSppPRxUJNjyT+zdfUSwtWTi86sTsNFEnlpOcQn4IlwKQrPccqkzSyHdsnWWAY8j14I
IHtN8ZZYkZdcb3wRUOoBeHd/jPGwVK/OyGNb3m8yYgp/Lw5H33uxqWvi+6PL5hhuYOYdRns752su
BT/eRxnNmPL4a3AHO3WnJEZQfIT4+D6YcqLnBDf67soWDDeUFA3x+ZNy0/jUd5dOJe9VZj0T70zY
26piAyiDKpM17KcFKcpUDbmXdUE1cFmbnXIABl0+FP8Ps1m5s9t7JxkEHltrS8VrQvKU2b8B4mBJ
1TYNo0Iil5BFGDvoGmOOHCoOTQwKKbTqxtyIXVesQLDlf8BlA1CxnE/l27CpOoOnSAUGX27bBzxi
hH2f4l1N1tmibf0PFowR2IXoyiC0Xsr/FT88CPcPOgfDMRG4YCizYjR/NMUgVTU0KjIXD4RtjoJn
qGmc2xv0yNffRCoyaRrdPQgljBxxN46xvOPeMk6mgL4L/dUHQ3GoO9qPvoiRDfuNoranDKVlAJ2t
+6o782opIoWtL8OFy6/P/BPrqIyPsQchgR5BFprBIiC7LuDAHjdusrKuTUsRKnQdpEMj9UkfP+zZ
UjAm+LRpNHYIK5mbiz3FfDSJ0L7YBVECo14kVYBDYOMM3iBRjvLydMdHo8VJ7maYsBv3z4WN8MGA
4OFYC/Z7ZJ8u5S25/j76QrVEQfDWoLJFlUj/x1KRprvS9G4XGPeKXfn6nQbkNWGuH+E4uEN8MrEr
pJbQTGtdOriEXGZ6nnT3VzAy/0ZGxz1Cn0QmccFaJVbaMSBj4001PuPDuCkiNclBR+3raITLOM3n
t3GLhEEZtKr2/9DXgLTTGzKuojORKS08VmzgkFwrXZJSgyTgJon0+sHeLCaDqSXftxDc1qfFr6r8
ZdC/PTTe2qanPkdXgHthJcmLUw+9m68mjtFOJa5807jbUGzzQbuGLXnNOrX1nniXzIbBKCZulY/L
IU+otrly0r3XoPQKGnjmNj3RDDFI/29ZClSKnIwaQEMc58EYkBIhWFMTlraNXeik+8+wjYVdPV1B
joSVVdqn7kHbCw/HB25eT3463ZmG7sCiSziXSe1PRmPl7U6uoQnZGHc6wf0/zzBlhCxpn/cwHCSV
J21ps16tXPuYIBtGrrZtewzlGT+gEvgLw5MzX0g3/kWKE4jwFORpjqWyS291l3YGlefybd0TxSHU
MPyHlYxl7oXX2NZl97G4uopfZfJUScGkF13/kL4J6UG3gG+1OudgFTBmrBobNI624pQszrREBMyK
j0/cHYLTNj5AwKPdDa1h9/2NU048LCz3yRDbG48Kp6Gfje0yeAS93dnmsu0gjQM2HscAofkCzqUR
uiwHtu/3Nm2LC+4D7VUFKj5t3iHLuIF8eL80/7QiB8r9+A7GZWAkHZAOAWvepda7gW5Jrj2SAXEH
C6wrZeJ9sp8HgCRcvwFWkXQm6o2/zAPzEOibAMSYJbyav2o7aYuIZQa0jIUR+yy4LYtU31irl34T
KFbowD8a7riLnWxJF5FiYrKxNXYB8Y82yKyd3hHlckVEeJdiUrrx2vMNPrcR1G8yFTC2lu6RLn/M
vtf9LdgXzwQ698skKHBtq7In4s4QPh0ByzdnFRiSPHlRaK3VH8mHHVU8iN8azv6KBAkd8uclsq94
rqfZiB0slW6Lxu6LIXskwL0VdsC2lsc6CtsjhvrmMNOermN7RF4o06bktRXnblqELEN44fUfrnTM
WXfNCLi5bsu2IckMOILerBmxP0iJaurLNOXgQ+f/UhxUuoD/F2h2IftebT5vgw2jJKKGPJ1vTfY7
9ZdF8gSACrYHWHjH4BkGqzPu41mg16pc2JVebkZ+l3N5liVjk4cYSScWVfRlTC1T5wLV8uC4oOx1
w2EMxO2oJIVlyhtIbz0keTkj+54buE/4IGIaeNVkQ5TFFumnF28+JPpS3c7xEC1WeTAhIgfALuQ6
enGL0+Ox1fdAojC+rjoQKj1v2G1vA8DE4VNNygiw1f9JiN8jEipaevaliNWBt2jkXrsPI88zHVB/
ovXyly7ajJE3YQ5hcZjFlagbOslY5M50YwYzHWH8lswGfkkC1D3bVv4RFKI6+dX4hgIiE+rB6vNb
mNEoZy+Ug+zanQjKBxj1BqFUdfx1dTnFP27wx/Ho69K5NLkx8vWC+H/gHQfFJTgtdGlhqDVf4wOB
0kZK/GJHhx1lh6Y6e+MjPRdma/MrkSkqjdkmwhip0aqUdZ7GXiBwl+DsIx7u2eCoE7Q3bFChR9oe
HauKs83kn5lV2zOMDrWfe5YTsN4S1ketWeIrqibard+yscVa/w5hIuAL2CBb3YJeIgr2iLhB24W1
OBiDpnnYmUSQhVMfKv6+7g/i+emS6ZJAom0DZ0UhclmQhtnsP0YQZtr1cg4mOFW093EQK8GI4HHy
hBqbULrP58+l3QPOtM0i+5SsG8dDg6AlXzyJ0SlOoM4+9s00RRdL9dzaxNHQOqG4VhwXJFhtAMJ8
okUMjIzRB0Yvl+TpsrrY+dwU4Rxd2L0IAnsQa5h07+41U/ZFYCUpI7U6gu4uN8t0lPUas2SB9RSj
HTDd0SR8iEkyQ/Mu5kuCRWPh6CQtrYlJVccmuAaeJzxvmzKHkU4D+q1VS7BwmxRJ3QQcH0FX5zNs
EoMQILScYmHaLpl4Wnawcxz3z32Cuo7n5Y9d+UC0EI8PI0wTp3UgYEu+woR5kF/ynwtSXFZIFGD5
YRV4632Tu+PZ6ano23FMMPB+JZyD5ZnbohFSHr+NwJCCfp62gFGALOjBJDgwPdQez7XE0AWM0a2z
85MCt2xiJwkQneQjYeACaSbcs6JlRGP1NVxKdDxSOJIvKWu233aQFMsBb29UpO940cso/2F7db1P
NT85oUS+pZuVSxROGrnUdIEe50l4s+HTqlLjzkoXKfncYPZ2JQmRWO9cUmmgt09JxRLmAbehNiwr
mWgyRrViJB16XU1qnsjg343K57xsE0saLN94RKXsYU8W3kVDozGLhJ4gmO5SIcogNwZGL5uNKksu
Skf2eEmPSoMWJpsGRbq/ixcCLw937J3cGDBmUrifhYYmthP5lQFL1qKsRo5t2vewfE+TdnDQKlxg
VTDdtP4Ak4ExUtIMzVsg0aU5HKyD8nYzSajsFyJ6dl++89n1e3hF33ku/lfab9c/wYOzzwNoqb9M
nKxkXvxxRUXNLwLK9xklZGvq9dAxFsr24EycITCaOKAdOJ/1u+bcne6639/p7bo28hKAx2gp1mum
+0SkYHPIzqFa/79shKCGeWhJ6ZamBR9LJAcewMc3iuXOVoGJEq95QHFMidsHb0r5qDUxHOtvsrBC
DMBmz8TPAcbKAL+9sIXGadKqcLoqmqEbX/JcgVHj013wOQZEkFq5I0o7bOjpy6CNjrTTFYDqGePP
+w0euraXqZMGXANX6y7nBkvxHGowDIUhalQwTVKNMoRCoGf3FwdUf2JGPl8pdwVs3b3o/DBWWh8D
dzRsCEbXfs3L8i2O1fp1qdR4Zedx/2ac4YKC8fa56eDaGpthlpLhBzUSzbyPTkfvRg6JyvbJstDb
x7qFaA8mG2Z4Himrmi+UevM4zu4I6YRi0umqF4jYiyWN3ERq4uN41JniQyrT6nKl4UEzPZphifB6
5k4xJnpb8a9vm2c7vbJGyd7IhRFFpB1z5+eM+G/CQZ+8cqUED8WMQxU6E93vnQkg0jRfZ6d4SdNy
BXCYGhImVFvcie5EUnIa3Z9HXbw5aJvpu2uraghd/jTwck2TI5/GF0Mi4DuOVQSvw0UZp8ftWZ0R
FmBRaP+KSYaArp/dIXXlzfCvY32A7uIeWDGK1+2GttNaN+2gTVOdmbVXuEagDksTyXCdvSjjlP1K
KnMUm0+XNHsqAm1Y0MsLy2ED/Do7DGAdZKzGWNyfHgDasoaFCToRBXI0vnXrHIw4y8xd5RG26lKD
gCbyoovYqNGgAL2t4JsMkj4ZQKl/gq5GcgSQM4KRsfk69kDM9qzB3IhHg9ZL8O2kYtShRzIlevos
eVd1BV1+7FWIqhzGNVJ7WnaFGXCnewl76xf6lcU/3tfg3KvmHImo0gLT2qvI6dASnN/H0Mfctz7z
B6zHpNrrfm5mv9YtTUKN+zSXl02JQ+1/HhIAUd2HTtqgHyoGwjKprwFS8rx7ZhhW+B+Kbd+wws6W
/hzs3PXsO4HEOxMTQmJxdprSmdKF83asr8SwOEFr/ZB4XcrwkSlWF1aWofAh8geRMZtHt8KVf+Rh
OzF16JhWiCMAiUOHceXiW+d86ARIDgmdMZMH8mitVwXPnKm2i4MqYfEXuc+E7xFYr3fVBK6AXh71
zgNepx5LkijJJnHu/8melc84EAua5CsnR7xjKXezL2/scDh/hY5/KQ2GYSqu6nB8YWNcL2UhF1fy
q9C9sBR7mLA6wkvq7N7gk/f1jBOCF+PsCnExa+GfCCwMazS6/7GjyznOxjYli2Z4cizOsdG2ZI72
xAJrhe3Pi1QnU3szpY96aOPIizLaB4PYNaXt8/OC33BaWzws/fKQBxy7DiZPS2hyxfmIIS+21oND
R3s0Rt+5HsAL92KBUxfIwu4Aee2rq7iPsDjOYSJFUdrySRFFJlJBGbQKn+Et457RBBMvLFCJTwEa
fjZ9IlWqGzzUB4HAow+GlBODt+WDg1rfQKozIg3zNW/oN77x/vIN7vNSjP2aRpJx4LarJpCHmmzd
YypUzdKOjan3NY7A3DI2gDKP8QVn+c0IxdK14WNTejRZ9MRQBkuEkhjkWdnMVyj6TBV0kOmIQfFa
Qvtcwb5Fd2nFv0TVlZb65E/zgUcqaXpuqMIK6tQXgVBCiWLCN/27SRPYR4oHQ4CsNlb1PpyfYbxW
KXHa9I62bMCb7PRHuuUjj2xSmDq4w15FcmDoOllZRDsTRHimlKxSPf/qa5xgltxPACdyBGzQ6PcD
tLsUYzDSjbpOIP+xRPAAoH9b2WLLioRBqw0+qlG3wZG2Q09rW4fhuG8/kkqq61hO0IPnZ1G2hXs7
Mw48/72E2hUnNJskqiG5tiIK70J5r5RX4UiHbJW/b1pASRGXQn1SwUiP0Sz7Dx4rYF2ACMz7Ugtb
2reDowu7LVi5PEmsJd0bgd3PpoBuj/t7Dqj/AXsn8xmGarhvarCKG7TIQwvewW5v18bvTKJ5jT4C
aVIrpBkF8UFhuI2PHrRRxNyk24pC/MbFYN5vN+KsK8VhjAbBmggGFUw4pfu7dhbpBiXXAsRpbyLt
hg8z9SK9/rqbdsqQql1Sxwqzt7skSu9VBbOxWtj56/dI6JczG+DIrYCVzBJ6oiyUXqM09F7f+Dwf
k6YVfvlVFaOkwS+y71GND++pFUCPW8rAhGm+kM0xNW9LDMcO7l1CURVV2GTpYvuM5bYKvv49Rtga
FcJWbZs7eGG3j+OwwOyfCfa1N2+2agOvjyu2EKc7wbNDAvP+W+a/3QHBcBx5zzORQN2smbHIgABV
Vp8n+rUHKG3BVsF4oVfY67mwH+XWE0KJ8Bt2ZMXdbkh7pzFGRY/h1BwCxfTS3bk9X4XqI5uVjl20
ArZ4PTsp4Vn/0DRRq9hjeNra127Uz1XCIjF8q/g+Sz4EmFRn51YLBLnFryAUMZUTRKlSTWxoNCfz
uyFcLXT1jHPSZnimNmS+eDSDx1VM30qJSVgeGTW+MRCXnfc4+/7vljpx3eAFfwv9BF1Udv8Jb3Qi
l5Z90JH31neVUxpN4YyicaYKRJJcm0EwvvLpDoua9ABZ9ozsojfijKVns5x073mZtNPLm1W+z4HT
DEviFgBojLWwtW+hk0tpYv5CAeKkfx2rkrsc2n4o46YIX7IFFM+EXBs0sQooihULW5ZFnRWSUXII
QxKjXw4bShVOj24MY9kUVGUdA7OjQgQTKgC0uis4/Gz4K8Tu2E6bqquoka12g2s14UfJMDQkXeDC
RZCvb1t6JpxrTJiWS0A4yifH8rd7WuLHUVTbh23JANA/PkB/ocX8gFDjggLobkUlRh520OdrVnCr
ERJZct8lr+YQVQHTL252lf866RKpKmALvBkw9cukAi4z6ydEmXwMAJeZFSXRFQD4Ot0EFeUP1ClP
E/ULxujBeCKdivUa5vf0XCxVbYeV2NgCDWy75yZiM8RFT4uImZRRnHECiM+l07CxqS25UKbu86NS
cyIcIThJdaNBzPpYomh4D3L9ubiUWk/aeIXqYbXWjPkQLRgNGfAq/IUDljl/htl8r2G4tXuf6jQ4
vqnQ40NKKFbl6vxCIgTi8P57DISIQxfnVQV2LSGN9zgzUZzL2zPbqy7hIKNK6Z5SKNNsr1peYFKX
s4FwPDBm90JTFKzJi2oalxyYsSulvKFCDhjbJ2u/9I8AQ+Y3af4pBQGy2/ctrkriNLgVhXB0xyVU
g9MvgZ/DokmGo99DoG1jXC67Tb56ae7XC78OIFRLPbRzNVfAAW749BOwuUKoluuFZYRVbOXgK8a+
PbI+PP16I2N7l7Rqt9tWy99FbtgVZL/+eBbhHjJ+ahdFRoRzIwkRu25A2LIRDIC1uZcVTbTJTkPl
X3h87ZMZIESxDQodmgKscpW9UeNaiqfUGXnQUSyvCLlci2YK3Bg2u0xFfP0sM/jjLJojlwCaebAX
gNil+yJlHncvpcwwM5o8aS6hSdk3jSaCzTr6WMNcr54ht8VZtKz5e0fogLd5uBO+i6vs71vbzd03
bbSOYrbnYGfow36zSt7fYUVBKNGguREy4LPoy3jyrVoQfkimSJfc3GMKtNqGIdA+PQR+bv2/WzBr
HomcSPIjwyeUqC7jRkK2ZoCo5XTr4hNRJuoQy3i5X9G3beUTZJZpqmyhN5asNBSUPkbqYWp6L+9x
Y7PeN9v9aBaS8VPD/1m+ATBj1oihoV2jb60tW0qRTLK3XXheRAmK/xKhiGaUe8Xolk8MTzEDdgvT
h1P45kZleq+lRPDaYvdNtxe3YYrkK0jGnsHarD85bPmizrtWdzmveaywTg77oSH3DbMmokTW06cg
CLHzUG6OCwKb/sTQAoXUOvi5UUbmLQmq+8Cmw7oQ/mNZ2Bq6bu7G/2tgtxEMzwOs5lxYMrRCdEYX
hUEPC1XHNHfYvgpI292hUSdUEbmS+ekIM89mbvvcx/HjAa50fQ5bBFG4dRCe+5RJo9DBNvf0WAx6
MpMuso06//yHJ7q8fpH3Q6wYKhTigdojF145ctXNsEOaupMTOtNsEEmVf7taUBd/sSzspus1qvF9
0fI966OoOYST8VcujPVCv2boAtXYBFDC5hPJpYd/94os3qOEKeUfBLgiNZ3W5JviXBwZnYqB8M11
FAyr3JIVqiSYqowEQyU+sfJNwlt4Ydb4/eCW96dgB9hj7JvztV62NKrRwiBM68ulMNnUYFKBGhhI
BmBTlWYlolyfRVWAKeNWdkWoBAIiw1cv4lGk+vDFQhmljPhR4uUMk4mkcQ437hYwv/annzzc7FUK
mW5sBO8U+NPfsosjgU7O5xOzgjgPB2hL2+5KgXsTa8+abJAputEZdg9qT3ET5hX7bN2DLzDEqIvV
YovQ3hYxlFVQakQHZLyWQLuO3gjb3Kjss9YzSeGnNMJwZ874mkZPHcqQlmnhLcjHr5vlAWFQO7LA
k+xM1o1DWBzK7dmTcP7Ai3l6J/FhvwunsNNBDy3S6wrmR97OQMjuWzF4i4XEQo+lDwuesraed3mn
9w8eYUitxvR1WsBNHmGbU4gTuphqaSwSMArN4eZLzUhnCyKyO3R5r/5lKEOwXJpaS2eoNTYRsRws
BXWBjDVMxYs54A1xx8V2wYwJK2a2/xHI2ZDdhHJgTWY3WPPU4w9V229VNkz/iseRfVlylNV6opl0
Hz1y/6yZYeM1LChufvCasoYA+XLzfSxN2fC8riBMsfKhEU89AYXlCWm5wfiN4guD4sMsHc7zrArU
ecuJA7jarSNL5CZWKWsuJLtSc7+kZQ1p8dmicWKU125wLR/SlvOIQdm819cBJNf0IB22T+p7BY45
XiwI9hIRPijxREwddGmBGzKWApYPnL8+jFuSeZEqcg/EnIHCTN2VLRDPYDXi3Sj9ZgXRpgT88Z6F
ugsSQct7x4OQyOAeMcF/umAgdwkSi34aSh0fg3J144IlF7DDlUcOOJG/kDAnXAh+8GLZh35SiAhV
XVkzfgQxKKGO2I2Ch+Tgl3bU3UUqGnjcU7S2OFQLVAPCW4dIQKHebIHtMNGtGa7feL4eA+pBQcsC
wc7BJvid3mdkFofg98213UC2kkSwoedu0/+Fxa3RnG1qi5fuOyUWwej/wKrbe5EuGuBzfk/E8gXq
jI9VLf80Vrjd9mhnJujfeLJoaslk66gupS8Y68bA4e5p3QlqXbGsVPHM0jKiV6g8ZFZ0HLb+J9MA
FZDxjSJTMKMb+nrlYYR4BQixJtor/u1MldP25tmNXLVWdU2q684HbpHA5RjZFuKteWGdHzcZFoPx
o08M0MUI6QvokhwK0q2rRb+Gp6o7CTDa9uk9wm5Cucv5Z28FZis/KbpmuS3W+jqe9HU+W4mgZcdF
+YRw9or7IgaD3B8pk+1P6k/4HGgK7KiBTnwbIIVodW/7A09NRr6yfw2tIl9ToCCGmEN1XdAz2wgW
jLb6hrmvXXGhmgyKgC2R6HWFhx0EqvJozyPY+VDeBodvDjjwAF+ey1zl2sA124HHGfwWR2YZRkfz
orlMh+JPm4jLW4IulZ8x8Xt4sGkHiMsI3PFoh6rDXqkgmF8ZKLevTrOa3bXGKzR2LUCVSRcND2aP
KwbT45uw/sAVwgrYAJn+gUDRvUuDSkAv7MPsCNSqE25PMYSullJCkqHjX3x7cSZeRRiCb1uUhzBc
VnT/R8xLOO/t5p5Zh41jDo7adhP6Vl6WdzW+VnF7+YxQy/lZtaSzXai59S00VdwRNyOtYM3zPUoc
2us1TgFQ1ZOHiZ9bJcu56bUMmoR9ilCfXTmnWIY43AdP+9knNIBDwACnG19XuMZwDNLDBkjBLjIF
f1onEFCY60fiuzJmZsS9Ly8Pjdyf6kVuIwx/dTAmOLhBahwlyfnlTXJ62QepnJq5eHMWVvzxsCwd
vsA68BTntwvC6sEzNox6QmQWoMZtRc9HoblTbkGU02r9bP9VMjyRyZn+/o3dwnEoHVwd3CpSIoi5
LiawiQhCMvq4S/4jpuGhHQKxEzIqX9LsFmEsSF/bcPYmzTHAIz5eexNJIdPSqKSKhzsdskPEF4Ho
eZQqrt9h5oKSeFQOyOzKyWZ04CbK4CN5zOnk4vZiVl7rBI5CvEoB2vzViPm8kw/hGjgo/HfvjOOD
IcPRXwc6U2vDTJw0KOvAIEH8SH2rFk1odDk0mNpPJV0gHnvMf7m0itHsQPCMz+Oq2K4VWyTsFoRi
ZlDeGd0A9kIOG3I6KVxsvf55K2ekmtypV3S0ZiQeDyARYC43QW1wWO6MiAQ3Vx2R0FiC319sYERf
AaTWOpbxjFw+56xmaATIHwEJI6evJfMcHqWut2G0mYZeJSfIHI3/F5lKbBvw5oWimi6gpUsphxxU
AFT+LtINL/UWWlfrf/vaPyL2PLILgcNRkwq7BZXlwaKDU1uibtUZsSKO5K2r4+L/MD/mGj+4K9mg
14QHyWRB/Ka1w3R60zN0Vv0uxsY2n9banTEKqQOwnc9E4rWxiFofvuykHt2Otr4fKDUS2XQ6oeT2
2fgWbb2VvT8gCpvmaweqSgsWGpIJF14yHNkvZ8x7Lrif4ZgVD6qOhYrWo94lju5pVLE9pBXJI6Ew
UEDs/KOCsskh7veyWFehaIrudXDtFmYrqXS9a2urN0ELIWp+N3FbQoUZKNx+TIpo+fSdCml8BGql
CfpbCCPHbdAQ/XX6TB0fKuTjijvrt0/x+z9tb1+uHt8r6h3HVpE1iCIo7QwoMaoGPRdy7wp/XV4D
yM4Q80hGvEgu0s+13AiIo8JABJ1ApZQynOGqelrWhqKh4BpMlVnXEk6GV4lD7EfZ1TG6jm42NoWq
OpSymeVe09vAkk221bW9j8ydQGQgkNhh6wzPDMtw0FvQm+EScQpWw8xmjil4Xw89muvAhewKSmMJ
Z9LSlfFuWWWZDUw62T7nICYGhCJ/pSe29L3D0kxexaSqxWnrfzf0F4P6M4oZQ8JaTdfIiCcNKaC1
TR2wcbkH/Zl/neim5GMi5Z6BqVDKao13m8B6Lo9HFU3LGLW9jc8Cp4BKv6Xoz8eio0HGRgm6O6bz
u6ioFGB/zQdSPod9qJwtrcFYJD9RGaxEp7GTtAbC8iBXQt31qzx2yKe42sOst4p6l+O0JrxMWWFx
ceh5Le4m26IX4vvAlYe110yYrp3uSj6BXSnRnx3dr4EGMpGUztBi5+mM99DR2JYF5bCpKhdnCIAI
qorKIZpCZjZwWEvy+T2zTJHroBoHWTc1PzuBhiXLhNoTh+/Ym/XSOUW1AzRepwCtt7Gut1s5TK64
54vmhj4Dfd077eJmRazlJ+MD7oS5GAMj0yUcVfFs2mZ1kGQ9lHs7qEsDaQg6+m8LU990inCeUZkj
yccITu849bw8ivofvYlTBXJo4uf3XxIaz2gy5AXbn3YaLJ3PDILLxiyvNA41tNJyLSBRuXL35RCs
/fOz0v1Ku7Q1c0YFoflmezEj5o7qAv2nvBGyh/i3IsUR3TX0hIkFDeVtRyYSi9mrLwi1pGHo+U1c
gX57u29JWA94HA+69Ep1OF7q++uclYv95YDqpcUAe03wFLP67x35/c8AHXow+6mHEP+5k7uKLgSI
D6tK67r8vGxqT65UPteJb+5Vnw4yqgQbdzGRBmMsK+BDIMPX2QNK7U7fn2FlxQRICwHDwt3Dwpah
bO0VhAJ+m0zruvOIY1Is31tSa2gyQ5JajG7q0wJUvGwqxV0lwr4r/FzZGWgb6ecJB/bDDprqpXAZ
bpvoIpH1VoU3J/qAdedHNltZo2cEcKGfmG0/PwrJa1n5ly08lByJyihqhnH5yYonkXJytfNEFfvE
23YirbYnrosRhYbJ6pdoG4o+nC6hTJmOsRNVpkJBXSkLC4TViT6xqiNfGOypJkTmLA53FVRJmcrz
Q6rG5edJd7WQiz/qWYlNjDVr6dN58t6O8IiPVyVojtsrcfYLG0++UEGiM120JYSSOqFsM+usNZj7
Fg7FFmfhFzt1bEbWDEDr3cmJhpZB2GNdfmrwAqPQdHwVu+xlMEcG9d7YJwafD0Z4IiOUBwKrQXcQ
spR0jYrX74PVZPs09a9Izx4xjVCGnBGVZR/NXGvvyZ5sOKrSSM9F7NSySosBZZDuZdEO/Hx1h2we
XlemDEl5mnwGrdn6ZzDT7fF4oAkOgnzRqtPTKkWR6YcXoPO4e0Iuv49lrToUT6M+Z6Nns2tAEtQk
SYyR5qwUHGANrIhRBSV9R0GIXkyXcGR+2IdpwSdEWhbksx/71MLyQvM7bubPQHHAbxERxh/BG8zs
fL/eVVOCAqvlErFgprGEitWaDSszGe5xpgBwS1CIlUVZagi8PzXShFmnlAnzUYBvYDZ1HgF1wOh7
bX3FIRFAXBxzucsA0WzvQm8s83gSCLmGlTuF9MXA/z20NKS6FwdRx1Q5LSFOa/qyox3he0qhLgQJ
Rz0JzgjrOEbeYiNSjka7u9zlQNdupdCBTjmi5XwTuFgrwkT6g4L8mH/RaqB19421PUPtZExZ9v3s
EFjcjaYXGW5aGH/xd74nu3EAeO26rjJqQpMnO9Z3Hhndm6KX3scQVCjufNphLV+m8ztYh9lduyz2
9HJLpDaGOtoCgNLxnVkBH/mGbAwJaeF0h5z/1YnPBRB0yiOE65xUquvJr9Dax2sSdCrSKachC8/b
Eefwuo+b+gfG+Z4QfI2XfcvKqqS/e4YigNEhfnSRTdFwjKAcM6G7y0rJuO0jBZQZalmDGswHNrF1
Nizm6FMEbh61C/QyGU+JPAqg/V73JXN+poy/jTr7E3f2om2szyk2xMmwIJ+OIUSDxzAFtJA87JpV
IbyoeMG6WybuttnCvLzE+96DAArCDvZrt/72Kq0HM61p/T9dNBYkHmLcwyQhSl8b0pX6mK5UlfVB
DdCm5IuHRyj1cnetQFmf4xHr6HjMX6mvVlFmD+YTFU9L2Xl6MCrLp8VC21rfc2tNEjeszO/2ajwJ
UnU5VFSq/xcpV5RD7fwAlHCh+GH7xbmn4nZ/X+YfkB+FJQvqL42u56wTU+47kba/sqUh3pnJUxyn
lWVwlVbNFuvVB8jyN+NtoXy9k2YO9lumeFKCwkwecHy42pdxzNSnUavswHzsZJ2IeFhnm6mNRrxP
gCJQIN3rALC2PBfmPQJNm9hjQi0v0ChHqjgpvkXMx65ms60hf/oMm/qR3qECBecdZ19ILbo6njIK
SoxmUdb8WumnLSSX3X+VVZwv9bNY31FroxVlvwibnwmaY0doEop4tal4CpLT/27X6QQm3+RQ9Wpf
/oNIDJk1KnnsoKkStxsNtTzecJiBX/otbGk+Ab5ALFgYN7ooJ7bFi1MPXluUVRX89pgvpQir4wRX
2zBEE3sI/lk8Xn/amxgYM+UsbInn5A11PYePryP+9s2REMJcCyXF3ASRkmcN+zyoZOSBy35jy/0V
mxafldm9fvlhFdVFoTPYdMQ/ijn8+dA6cV9lOHPYKQMzMXh7DnCvfOxM7sFI/6sTugDPEbbiKCdx
ZJDScotT6dhw+9/BfbsyxWeQyj6k1Pl7pyI/RM5mdOh1d3Jggn/Rigx+Xg8IdALISbyIA6EUya+n
/EVAyoSR023ekER6LpnUYddQjS0JDt3++dCman0L+25yIwg4Ep3Ri2qSXQN7nfb8h/GJVMBBo1UH
rJ4RG8u9teKErzL3atthPAiEVlPPr6Q6Vxlow2eXQbjMSl/4TzXGIPHJROen002F052NwsHzY282
u8qjBxrWNNHPOOotevBIlq38mmNAGiB6zinAl0EELwnmP29YLU4QqM00KWWoYnvzkGRPv6g0pq9P
JgZJxBm+vFbNZrDGQYzSVg+me1hlwas9PknREI8U+IcBrdR9HRIa63R20XBs7Wu4BWPu/jJT0ra5
2OMcvvkyq20lIr1rXJuAO3jykHODMemIWxXmexsMaz5UhWL/tOpGFYCydMwaLjILNaRH4fOQPCg+
TTTe3bnlL81vLkqBbSW+Esa/tSXVOviVDptlxJgkgNcITHWX2BpS47xeTUILMOG4j4sf6eLLcR+N
Fe9Vosk6fDqdU62dE9loTRzm3P6J/0d/ML6m6PMw+8EqQR46sgI2AEYC+fkfLWWTT6dOsaw0w6o5
hIrPBzFzq3KM685PlWcVPNEyU+5kaV7jOCR52LStNeFiC2oUdRrxpm+Y8djHY57+MGWoYDHGvbOW
N0rSyuzRfoUjH7cNqI7e0RJxX5DNT2wb6zjvmpJw+giHOKTbePVyJhuFI12pL+PWFFJfuUHnnohl
Gray2QJUuC7RW7c+AdEsDDRRQdRQn8gLxMBdhnict+Kku00xoIpjqjXg3oFxbEL0m8Q2lJGikeRD
rWhym4FMXK4bpuhSzznkG+pqlzH3tv9A3p9dbROMY4G+LLhZNsycAFTT/F67CzW/94SJZVHMTHn3
cA3A60KdOJhUZQKikKE3vuaepVbG9Fk/2orGjQDOTdOaJOJFsDvYkeSLf1WC0vNHNwjGChih6esq
wT3AjfTMnD5ZAxMV3+sQZb3+ZReUYrzFBkV2BuhX7VsSp9MWuz4WqBwpGxY462C2teM9CJgNEFKG
/G3+kTuEUNbYqhkkcdTDQD3xK8IM6DgxR62mPrzsZLvJT/zSRdUpaEctxGnIyuzx3bZcb2+b003/
aK2kZ5vJCmpN7wthnP4XRShGuAakYnr2Sg8bDXSZ3I5IvpbAwf4zH7pi+tsKZ6B5R3+z2nMXla09
reuyHSmCJLQZ+LHzeEZH8qIdi3VzK4hIH46bOF12rDu5Sz7no0KM+ubDDAqWq4DFfaPXKqYxENJQ
m9gR5eu/wBYdtmAIsNuKyPjHrYtaGQp0neA/DhMfwBsTZ483dhtTwSn2xnmBV42f0blxqmIgWnWd
FSv9+V7kCztHF1EyXJT0ADPfNiCtDHifnvWI1H2VbfRzPo2Fh1BW6XPT84GnnDggZJIe88OJ6XZe
KYipkk1nEHbI/gG0+IDY1TZcfm0wssoCp9aUfL7xTy2/6pi4o4Mn06N216RVvpplLj11buMpVoAm
ShZnysDYiKnizWgH0frnbWNVHrDVDsomqpDXhDMCAdTkhTJreWNCETF7iucfttEiFVpICoM6+/DC
jWGKEvJMgSabrOnfWyA0PRwwoDR4vRSY1Hz5UcxZTSWFJYSJhm75U94ZTyjDNggYB1t/aSfe2zIv
uPh+S9v4LureArcNYxtgFLa+7eeJUxjoSRKoIyktpda0VUVs0ZsrF0UwV4DyEvbT8aKYGvT/nkyG
cok3YqlVtvuYQJfD5Ns09VOERznXPXpSGFB3JZRRA0/yZ96Kyo4p8WYvlABcZpV6I+czPHBNgMQn
7m17Fk2MKtQhU41kYhGC27YBWRlPHb1W97ox+/07RjK4Zkws9j99mUXCieB/3n8Mi+WRmPyp6WLI
acik8rERoPyhGr9RHwuZ13tc6PY6GJiUIxtBXxf0rjnxnh6N1yF2SuQ23CInCuIlGoalAILCdiql
ZdqnOf1doBe7r6pXUicM/2DuuRtGIPJ/6iCQTXDB7NiFITP0dEJmPuMb61p1PozDAyaxgSh9PVi5
PQv3ujz9czvZpCJxn3pYaJ+Sqr0PuYXZ6KGnUjQRazOpkBU0xlfhD5EOn6oOLb/hx0JYjVSV7ZrG
kEnk0KaWK11v7T8r89Z6YTQ4V6kFG/N5z2Bnz2rFahG96hDe44A0uqpjhZWPyEdnm5gxzKjF/JBP
dputFxBxwhFjHk37c/1kG0A1lSJSU0Etis7Vp9LFO9pKzzRNUeUfSN8j1TiEh3WwPpgNH0EWU9hB
tymSORUqC6meZrp1vpAIpNCtZddvArSTat6V7a1P0c2HSirjJzIQ6h4Xs3eZslq00ttxYHxko5vu
S20I3lQcfdOiYrGMRJYaRRLx2vrpbJ7fBKwHBOoCEyU5wSYEajplleXX678ktoj8GDxgnChVeQ5s
5sw3ASQL7O+0bI9OTR4NDgo/HgmCVPBqcPl8wQMcBxobX6J+JRj5tesI6tG06vCkx+rVyYWfDXhd
rRZfKiQCEppgkF70KhckyzYAprddMAig1FnPq8BL+p6zM802KzwmzNVBvLP3xImZsF1IKraCaAD0
EbBQD5LVkMJ9aJ+bapse9mECQSaf4saCijyYatmrLi7KPZcRsnNpSO3dalCLzGfC/i6r2Vr0c1Ol
6QaljF4DLGyP2Zv213IVYNxv/2qNdQkwCb0IFn7wBdZ2puJR9RsVLqcs/+vYG9UPIkEf9OwLQLvE
YTBfKuUsbEvRFD91iPReJHoEID4Xhvhbj/mqfW8JO4CrnVopJ7N9fI/RA6hdqpZlzH4XEw9hQay9
CxIxW9v0FwF3/2aqnFiz7eAr1ugAhAjZIY6Na0hDNmD/zD+YonX4z1yI0pHroJzcZbC2aiSx9Lub
p5c0UbEss8nqzU2+9MFNBhqyLPfD/V6OXXWuC8AFAKoWxj7OV3A3rsF8gWPtxuh5uOQvntcoZ+TG
FIZsUqoND2NTfYzpIOE123QBBo2xsGQIcF0HQ74/adg25ONmu60zQj0vLVhfjb47c9JEeo6QGP3z
Z/M66heehCYlZHfwlq/bM/PF0GMKX3KRsyHxIG+iIWADQhXxNUR0GthOEObAQO/nhkbnQKp9nNFY
jRYod4reVr/tc9rd8hMZU5ij2sKC6hiQ9TqRwCeeA9cXNQRfJO7cA7i2GkCvKSRU3s3UtwtMlKPk
KaoqetczPm34qoSOah+Ttquc2PIU65M4p7Xk9rMf8GIA9LawuzhIAoFX5iPGsoAez7MruUQNKzFu
gXKniFA0HYT5d8yVcfktMMFiY5IeTgpuDtOsla7sqUIjtTY2g5MkcjByk6mZw9OZb0+Xn/5vRPzy
1EEj9+amQJT0gRKW4Y0f7DZgSj4OOgLdk/9oAfKIhvNDCOJNcwZS7p4ED+EQ90x3ETBoDcoIfgTb
L3lGNpWucC1JetXB9L/x3XEDA3pdjBroXAZSCzVczNZnmrtYbM19DarXpKTki1Dvj1JC0TA+t1WI
/UQCBn2KrYHcEZpz+htnDUreb6dyUIByOm01IBQNHLs0eJE2dmhHyWCXgnZPRrdaAXZOZcUP5ETs
SmmkUG3mFSw0xF5Ww5led0gOU2qBpWQKBqktwOLsvileMMJw2IE1qcXJu8lal9GBNTh4vs2RiAgI
QEjC0Z0lVlYyAYXehoy9MJVgDzCyY5tpAIucn02xzvHKkSqBRcHxKqkuecEgesprSNlKq2hhyPTs
AVgClWyGV6WaAjahn/kGjbpSL6PRwk5oyUpwfc9IPaAGhcND1zeM0LYBkRDnMUcsgHI8yZsJf9As
dSvookpc+2Rk1ZN6CjM9396weUSDMC1lPpd4lAFSMc6DAPVir0z2QWXYtHRf6yl6wC2ZxwVOaoXn
f7B3CGFKVs8++iU0Di3DDr6lJSfWwJLTWr2xjfkd7Qp2k9goJHpxpHfeAPNXVHml6k4zUA2kTmis
Evclq5ajpa5uuMylTfXzv1JyYnrYNflRs8lUDCezj5RKuHqGvO12wPT42CbearPPK/u0HGaEBZKU
evYfyhxXpkfL5vCd/cRUxg+JIq1CjitZQghwM0qNcmBC+gSJh2kbf2YYxLC59aY2+4N0o1ALogCu
n1T17F5VEVTtkoMqUG7OJB5/QfPDviK5vIRCBYKuQQrifstTcgwedzVlX4ki7zs+kmexk7Wiz1QP
nNP1BjK0vIaNm8NI1T2hbVHtunqZJPJt6hpJYlKn2f/RnYkMs0kpayLlwDwrnJkLrXmDohaT9NXK
Id8tgk8GlMhBv128jUhvShGhO0edWJ2GMIdIlZRukZ1fxGJzsA236NNrW9Nuqua62F26uwkvrgUZ
jpy7aql18Tmiu73W60SpfJ77WPetL5/aq8t1ygMl+JiVszYJBo/Vp2bQZALwai0u1khMs/y+ll8S
Ky+2lzeKLVQa6/eGfxsEeEqaZUt2d2FoOjySP/4y/gynMTmGNIGz5TAfFBZXLj5HxwYrAvDFTMLh
6IyxkOFfOCSsSqi+oo/KbylBnXcpbRXOMehaMNyjYN/lpoaRD1iKV1T+svDS+Q3KfRYUI4Rf0aHf
XkuRBObGPBrF956Fr6MKHG7CWZPLafpG57lYiy4jHBLA7LJidrvXs5mSWJhRMHl4hpryaCGYGRe0
cHSWj0FaDGZEKwbKnASZQ/ya21oCvR9p6w42Iwz8ZjoSAG3qM3xEPG8gg2vNkGoEzrdXwq2VwtzP
bZrwARagIUKIgkZ+s5x64SMhs/ct4iSbRlUatSzjUfzJtO69NHQVHdPO4c0Ze3sAUPyIMgXZ0B8c
IExKKmPo2SoqiG4N/Rs/iEM59OC1ZORIWHkkdp9LAEYsKXhaxpVYPYN5OYlLqiK+5JNPe3CHwi7P
jhl87L4zqy2tAKgBx+WY4Hqro8STzJ/8UXrxKP/EuaLxN7ajveXa8nbO/nGzM8CkmohqAtSPX05Q
Pq8N2Uf3OeC3duNuorfirBtZBUcMH7P4B4dgP3hNRqQmiuht3SURYHZGm+QHV51AsUyRnyQRGF6z
bqttQ2Dvd9sRGNGVDSsvdzWN54Ld95R2F46vnOEnDD3k+45zUuWKSQ+y5S1v3AtHeWUNIgB96r+U
Gw79a0EWJF0t3hD72/wwMHa+V0GbMs53mkmVbc5SFgpgVatGeJebjiNFS4wl0evCBPzxswiHcDrw
aasHxUL5ZFqq5fXrYRobBnXkf8bsz/QdBjLH00wCm8BrGXFnlwWGHpvQuuL7RkwpTZ3Kvr+fx8xD
MlSCCcvwewR3YwfaUwtiufEPqEDDwVIsvMfWM7y1eTsE6OlRSRmZvnfvIS34a3BwS9j6VolW/WNU
b1ShS7IAJhTIxJEh7ZPhFncwHh8S/UQ+SfMyOgvrYM/7zBUo0t1s7LCG69rvHCEiLicQy9bskYfy
3vwH5an6cN7IVgmZoBgWPXBVfusLLIDtNe0Y/qixQFZp2cpyBF3/CvI8ejW5nlG1CgYnHM3tqPtR
7rHrdUv4ff3VBniln2B/7Sqbii0n+oZCh7z1pqBF2pGP4SJqtxTA4U9jcu9oWP+F1F+/axio5l9v
PJRWZDCpwmwiZn8as/YRwEmbLmDmoYuQBW/wroV7VBfFWZ7PVVZEnG/mSuRvRgWD453Cgb/B+Yts
fnVlwkZjdR2Bw9I4qGjaV1q0ih+Lg7W4OMj4rdyCqSSkrHxZzj/rVJ7DjXJUEP4zLYF6i7YFgdOJ
TfincZslmFZ6elWs4OPvem7sBXBvnXazhaRmG+1CfIkbk3qpySzke2MJXyDDxu28FDjTERS2lekD
6ggCjnJcOLpJmOzcxo+N59A9WlzUmlQA7bF9nzPRoVLZAwvxKlwOAkQsoLFuDR1aKVyGYSXLOJUR
1c0miTXkc/SumAO2F1IsTzFezbPs5A8aY8amL+pwmfrIi7soWo+FNw2jXvy88g0J89RwVO0Ytk2b
GJ3+uiO9ggWHNv0+dcW/gN7oASADDTOR4KWAuFlEz0w4ZhQZVQutmEc9lRZdiZqYuBhQlFUiWaLe
oKoPY82A6iNVEXcZ1u2WNBXcSVmmyfWUNaOyYmzYeE71nzxHD9YdDkJyzkwGyWwAYVYvN/9g6jVs
LNq/DMANguwEtgutgFztDWxImEYK1w+9mL1dXjP6DgUtVUBPNcpSHysjjsLGoZFfjpR7krF1OgiB
LFsZmgxPSwThAaa14qlgi4nVGSVZeRPt/sbeGs3gyW2swP7m67ytYW9s3wN0LKM5v/AcbB2XAMFk
DsSSIlDjCB6ZogdKXcrcbNq2w6p51W9d0ryfql5WGN23DBNsjFrpGkMmSOkJ5PInujOpzNOixzyk
aSsTf2T4yc0S+EBegEdv1ETTfzLpaa8bO0in7EpjYdNEdi3WJxbnSy5y3mtGYf9f+NhQ2LdH7N44
uvd/PBIw4dVoiuQrLHXUYJGCOn2D/AKY4mjQxsXFcopeUoOMrrHHEwTXY63bX8btsKFoHb+2dL0/
FsEGBV2DIzvJuXio7yQelldubQJJ9MkSAStGW93AJdh+zC+0I3N2GDiMC+1TEXDl32DFlfDw2bL+
0HSabubSEaXsLcANMhaXK7y3Bcgr6Qd8Bb4A+d+svx+p1xYc6b2mSDtzvPNe5tSNphzqVfGFqSu8
pAbfpN2t8UZOxlrF4Ck0whPNOn8r+hwPl+7nr+S4mC7YIN7WnHn8A8rrosXwBMN9gCET95/Dn0av
8ZwAzHFgPt3bECSWoJltjzG4B5/8t9Pa0/N6Hwje8hxQpmnr3chPlEUAxr1V7WbeHi2ypeBNm8H8
+hod1lWO7Exwkrg+4EoWaxsCEbeel+MxO3WqaXOSKlsVcTri9FO2iSqnfRPw9k7n/PZKlpMaAJPD
P4lAeFyQa1X0cUY1nPEA0gOfex+Kt21NAZUmPxKFijkglsJpB/xE0u4E7onZZw9A7BNm4OCGNxgB
tm8ap/SbNs/ret8AnicLtBM6eEyXT5Pk1xR82lni6bm1CqXT+HmwPhwPCTdkkVSklrmcLYyvOxLC
urmaFK/iSEyC5pOsG5i1bJ0NKOxaBMPJg8q6QiR9Spz0DHJoquKJvS8icDikNE/3jj3Ljpo33OSb
d+F2eo8sUM3+B4pE8P3aWUf64fp3YM8lDnhKZ0b9opqDefDkMJ/dZ0sNVPzGNNpscBOBeliflj3N
TSCTX6jEidegzi9AB8QW4hrZcMX6vaVEkcDLnAQsl8PSP3GSsYj4UoNpklAZahfCui053j2K8xo7
8pQwLyeOOxKOSAaRABVMH38XEX25RZse+pNBTpSAum4zdW4N2LUkrGXRYHBoVqrejjZb67z6lTgU
M7sinndsrPE8od+Os8xLsSpRGHa6RjtZKHkr51fGDk804le0CTpmSY000qeq3d9J+f1REiZPlOKb
b5gjc30RlaQrSriJnlXIwTXx719TgecafzBSEAlLoDA7m51ZxDz/l7W5ttUxbDh6ZBCGZSxkk9sT
5g4Gei/OAVU0R+IAEE6SHndEpcVkNzIKYy+itx2UjrnRBrGn4WVlng1FEZ8kXkEWb/bQaPtjRtsy
esGqV9Au004eD3EB/551kzcrIqatVF8eq4txCjUkDlFrvsbgncHmAJRPd8dFWS9KRhAarPwp7Ysc
D7Tt0ywk008d4+rsU1Y9YJNJMzUP6gGBfRlCsPmRebfw1DeLuRKR4BhOy+dJ421TXa/CZP+ReyFP
mSp+OpUp1AWFNexNtUIrUm97WGARcyb40/sAGLPs3xN5BsMijny/LVRA4jLPPXQR5qWf/DglT6x+
ulA3llZ69Gzk1c3QCKlX/exSS2joToTwk8z8ZLX5EHwbm2kqq6xcSlnv2+pBz86JrYefEgHLYPbD
ZTlSe62HoyIkyzEKEoo9LZVk2T9+YrIjCsvcMTTexR13Q6YzBShSocIFPlWv8HGmVLq/61kqeM8m
LKATiqnYg/Zm+I6ondeCyQO3Kmt7b4EMZ2jN0SjmYLD3tEHop4E6/NFsg6he0CvIN0ybSuBD2vcV
jDBXyr/GZS1a5cFEnh4+LtPNHpTmJd1tu4coE6ZD4DCWBTxTnE5AKTc6eNN2ygFk+Tck3SLuPFDN
ZNU42F3hXd9SLbipWlMQC/Tsc1Ij0l44naFDZK5JkiKDGWAJ/uwWtoJXgZnOLKwJgt16Pj1pMIBA
jpRORAIF7u5bqZnMZApZIk44U9jetu1fplkbIRjyWvMfOmIbKqZVwPXFtHVQuDIIGakxsztuMyOk
1T5XMNXOLU3VgXeFNIYphBEEt0AombwKo7U1dFhijEe7dELSbBF5/xQmOxW53Fq7Cxr+Ua09PqZv
6piOTret9rkc1x9uKRQG9PgY9+M2pdV23MhkVVRerWuTN25VNHyPDkCBmou4iFHfxIhMzqkWFhrA
8//2QvWT/U+yyRK8DAH4soD6/Kn1sgdWo0mJKBJ6S0Qol8wqR0XM2PdCoqxKonzv5AY+oquiqoZ7
FQyKHRCPb5KNDrj4XnAmE4LZi0pfyGuKAFEaCJKAucps5iKYzcx8gQ+Tjf/20PT48VeUlcf27BOk
bWUfimfpbMrqGdLCkhuowiTe3H4+ik39ZfYExVgrMICmRC7P+jgMFnG38nTEIkQKuFJb9ZplpcoV
vfRBGmaafzbYkN5AMm2hYUHiI+2Z6RqSRRTJPyZLS0pqNi1BQ7STXYfAqi1AXDqR1aY7u7qrl8cj
X2ny850MdKvoHDPFdsjm1XAwCPahchjVlbfNVdZ69j7jLCx9QO/h5oPrES19gsKGOq8zGYWV+xyo
bMhT0vyYl1/KdKJ1ZUiEz0XNeTWd6qqjbDLR0iZ37QZz0I2rU9yljf23jLwjAbdG0UUhX+qqANaz
aL4iU/jnlsCKIDaTl4Xaw/HUr639HLIzZXXony53cottaSNAITg0/xdzRApwKDDYwxVanczR3rO8
+RwPruXWrTtwJIAripYjB8eISCMKkwtLbqKrGeUwemYCxpfOfWqOuApzBDs3eSc5E10KA8pJUiFz
bwlFYsX3UcvaUooSoW7kFfyW8pU+Vci1pTtpZRNi6sJmYqWrnPwHGxS4PACFPVKhcEDfBvMrixGS
UijoM0K6owcihtR8gRnr5ElC0cfPly7TxRaRvDZe/FGaW5HqGwT4lL/PE4EEiYDo8f51ksmHAdHZ
+okRknOvJ+cA0UHtbOpGKO5uQF8JF/uC2ONCtUS6zzjr7TMZ2vXzPBHM3xT3QcvOV/sVMMq6Qn32
KDaqu4ePmQZJ1yyH+/IdsuY3RwES3yRatuBt+jUpZ651LxBYLwVE0KRvk7L6NZxG2xq7Yssgu02y
lc8QV2v4yK76q7Tr1VhCjtX2Hfe9rRuGg+o5uEpt4mWF0TbBdkT4Morl636d2KuvEJ1N+NQ6Balm
67FQqO6jRLEN6A1IptDiCf7uRkBQLugZrjmtOOn00pmWIKTkIRwZKtGVJ8z9U3bq0XVx2s3BpyXY
k11TYSat0A0tGP0cJrosmvv7ELcoH/yUEXJ/n0pKVdUeObGBz8SQG54CWAtrbZAHES4aokiStTsJ
ZI0TvFRwbrYlWk4COwr2XoY8AzavR29h97LS9WIApzTGxIKyjVLfZ9tEOyrgUpGIuMa+TbSTrPgG
U3K3p4Of36QMWyWGneMQDk4s3VyUyPOzKu8sWWximlyWS50g6HWPr1OILR7at3NDAPfW271iaiBp
JvtzRD5WAbqH6hmrkYXsB0tDMJQGsdze9zkJZqnwT0gm+slDz7y92QwsjSMeOovNhJk4giIcc+c7
emvWYpdsFHscrEDya782uQgACa/SxebZkKPbAw83qqV0cVsNJazrs2S2FQEoP650iU8w/k9SdvpX
BBrWP9MYE7lt508YtWPsH6gV0o9oFoz9Y07P2RGzQBINthkx6JNPvDia8ntxUZj9rdA+ZA4y94gy
+mZ9H1DUm7r3zQgMQrnUrhjAgTDAZn9Hje9oXcqltOn2TwkpmCFVBgDcjL/mKxO6H3EQdIcK4R05
Z2eVpdi9iZLZd4wb0dDdiZaEtyHFjsaHrI/g4m2u59I44iodRhLCVXhS9H3StfZdxUd4LUj/2ra0
yG3jjwwMPiBwRshLuLeeFWEYg3iFI/5oFeuiOr8iYJLSa+S5tp6fPXfdQkLyah7F1T8HI4j2kop8
5qRrITQb2Ctp0LJuzwGefFnXLOnnYTHPpVtKJe1C0ywggBJGI1C1aY5ZAAUs+4O/LTcd8+UWvuvn
TVHb14alJs5CQiJi8Upv1eNG5LwEEbtkFydnfnbkOUl5dnlj4OVQx6CFbBAJgObj2bAL9KrjQugJ
7zu3yaHgiO1zM+V2GApgP7at5UzmSY1EB1W+HO6aB7xO/PGdjhJlh5HnbjuKfn4VsQEwPwdmVB2/
IQKsAKVjjMAYzniojfp82vWWN3IzUc51qFDrollyqEp9dYdQIH5gyH5cAtCUuS92gK9c8eRhC8lp
rmIEMT+btHAN78jfxT27H/6xVvm1TEkmLhuHN1igqHitIWnL8iwNMx1fgFIZ/w5EGWcAvAxapwUk
RD9t8Xz2RFfvE+eq87iC0tagRoj6AL4rbXU4eIznTBkKjMBtV+9TXTIVbOW6CgFd08F1WVS0fKRL
UnLv+8gZrGosCdM212DscHlVnMWXEAEdSGTqGe3nePXApyt8xoGhYa9ZnI+1zeVDrai2qflrtyZJ
z4KW7/0SV1UBe7vHLZMUtMi5DsVypSmNa3mrDc7b4uynzOb3OagWiNteBkbQWhRWzwjaEGaNwFeL
Zf1E0AhI+kWJFUAaW16He6rmNHM6HiwHT58/qQ7ZDOssR3sVcOmNc6Dpjk3EOCOimqQTWx3Zh9dS
UlQfG++TVPeK97L3QubxQIFPxr6rWo6WqBDF5KMruXoGzrArz7lV1a7QTdap7rVcBJGsB6Pdha59
aXi7M6TEAHK/0Bl3jJF6x8M87cU1jE6Nazs0ghSQvpJ3A5y1RXlX32xFFuXodbKdMSiqM+H0C2J6
RqedWd+pvJOk7jHg3NUydjvQlzKajJYbDFjumPCdbu4ayy9qI2y4jN6o0ogfHTKHvztHxfkFjlhk
yOqIdZyWXdTzzjaWrSd1l2HsiV+N3dosnFkW3GvdfkfAQMrr0KoENrhiQ22o+wdH3LSsd9V9n54D
zi2UE+/PMBe7nJRCbaGxsdk89yfbGogfPVn4meDxhk/EO9i8f7FcNluBqh100SwYdaNUBqXY6MgA
dG7/wpmXnnqKrMJ64JIABIMde22HHQseI6vl0ZIPwqVMC6QgLZCOX/bXTGzp/Nt4E7vPTpRggESr
e7EUF1Vp86IuRreBZhgptWIAZloLK9Q2bjDw+Sn9MxzAjZIfyfPfhYJwa+kE89KFCKzLdgdZkcyQ
K2OQeOvbKC7vk7HYyLnivkz/wd/8Fe5/J4Zy3BtiWs0Q8TNjXtGo167FU8KeH+6GFlb91VXBJgOh
XzjIQU6WvdLyAKsMuoXD91oabzXTJ3lNKHeXlQiQ3Q+ppyMxl7OZQW4imAbDEqQOTf3L4U+iB9Dh
L8n3DOswuc1UnMCrZadNjc6vsedWRHgultZUXNi42CORV5jkbfvwR75sUMX/6iCEckmnOkmXeNAH
6o35bUsAVGgMnm3u9PViybmF5m1Yhtl+zVKKbSY57XSWQXJj1RScfzGZzB2HZefR02RsVkZQKU+y
7IILYRcv74CBf34uaXz/eT6Ri541QPoiZ6qtWBMC/1Js8AWtvLqonTQIa5tDGK0mJ0KJ+hKsnkOn
y9t7zpUIlIJUdZYSe7RBuJb3scJ+aUTPb0M+EwBIeXWzByo80d/725rpGpL8EgnszH4iIpAd68b0
dYF9BB/75ErCIA7kgCASPlnPSUJwU81O64BFjOr3RdTZ3T+y+kok3BGSAUfH9GLvxxktnVz8koTA
ouyh7Vi+w8FiT9kFUHh/bvhHL/Njp9m1lUQswDJ0C5S4WlGi3l3/M81oUEnp2pdv2S8Dy36k6VtW
3NATF4Z0Ynvml9SQYF8fGc0TTh4T6t2no5YFIA4VjCBn1p1dePc4oa3Y3wZcwP0eCY4cfvsBXTbF
E2pF/crXVDZvfNw/+EN6wE2bLWi2k5mqO9i90Ao2qCgPxkGRQNA3cAXRkfj6HikjufiglNXEZuts
wnNexa3xviTAR6GACrZ7KiWRVKVO3GqfaXGih8YP5yHYCctFz1WMXzLBdFjwf9AazIlhxWXlsYQq
fT1IPQ2eMTvYj2T0bA9AjFQRAbrisfASlrJqXAEdoDRqz6+zKOinhJjRLZoiYA==
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
