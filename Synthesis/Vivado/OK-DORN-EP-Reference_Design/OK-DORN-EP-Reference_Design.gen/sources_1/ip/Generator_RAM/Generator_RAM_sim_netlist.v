// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 16 17:59:04 2022
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
FUNiCM9xwVYndpuJEMudm8Y8puYjLChUMwKO4lUv3lPWI+Mpw9b/BVaOLGuGs4KV4bPvOiYaw6Jt
Ev7nF5D7/Ppg8qgueQSfMf6cK/8yF5QfnhJmNi6RH5DDsCzKAWf0YrX7UXIv+noxIZOjJS6WcsC8
Hr9CNcN597V22KX+4ao5mdfZ/8oh3yjX2hQ/eR/v5sxxbB5v5zyByScdDySX+9nrVTRASxxTtFLN
2WXN9Bg2zFYaHVhuXPv7k0c+hAU/2JcrwJmqb2zdbAS4i+0Jcll+4fXa323b2xBq/qiljHsznkax
AKvfrKBwtAdsMc3GCw8ybiu2btGiHjh04bEAItsej7opAii7s6i62nH+//aKs1DnMRz+MjiPtOAh
2mRCIADnmyMimSMCyIzwWbt1jssar32af6Yv4DTImmR434a8MPrieiFDlZEi5luq/bS4ANKe51/L
VujX9OQiB1SCfqK+AbqNc+BSdaEl9rAO2mQZ1D/SsuoZo1TMaURx9865zXYrIGRYe/GGvpLJCEZR
+yHDYbNKvOaVXn3AyCzDV8SUXRVOxnW3wZOQKRvOEnfQvWYJrWXchYiPsdAkj+4xhEaNVdJjwe8c
xP/KpELOP09rBaGVB672d/Sf6hRBTlI8ZpHXQXnf4jHSmZUlrNCOHSSsiFhQ9Xb57bh67gFvyASG
It6Aq1/ShOkRZzgx2P8uotnIApgI12YIlZN6Yk+dFH2gsNU3inbWzwEKDWJ9CDy04N02lh3M9zpM
oR7thiCAZPTYsH9GLy3/eIJyFPfSS73vo0koAa0QW/4+q4siV64JFPkbCuoEryoGhkjmoiB+RKCL
cka7bPn+qyYeR3dkL04qgLNP8MrMLFd6A59sxneSw18MNDy8n2wEilUAlu0Hvnsi10pdyMOva+E2
H2f8TvDuvEqwZH42+oOYJqVqHjT2RJSaUQT2qyBxpB2EjHgnhfzuxLjRnl29XoSJKLf50TDbyinr
T4pO5zYqGQl8QwBpB6uSSU0CUMnEz5A8HSIdixkCXUF6TpUEsfTCQA/Ijgq5oEElp4zqEYAj0g2M
szn3nNPoud+EexqzU3aGsBT/kYpEwT7Q8igPVQoCK9hrBJjJ99X3dnscCNBL7KM164bsIiY78ABi
/w7eUq8PuPpM8v6Vuaky02QEyMKDsanQ/QYHADTNv3gK4zRlVNh8vxkF1wm1BXc8X/s3gQatvkDW
XVWNaPPqosvK7lz9AaBITZYsGEjrOUxxJMAqX/FXTrOtH7aE6U1T4h0JSWt60YlKD161dzTRe7MY
fHeBDZa/P097jQnnEm5Lvm347uqnx2iw7ePEwWdGK+W4c2hJx2qpXepRazaDF4wZYZcnaCZG0l5L
yVJtJ0Hnep++M5mQ9tM4dBTEDe0AkmnFsq+xCkFpA5i9GCWQFepgqJq6q3qvYCKQf3tAuZPxwRuy
lvJExxt/jvMvKwV0zSMCS2VM60bD6Wn3f/V2oobajx0Ia1xGCEQbiepQPe1bqfzjl4H3KmqLaxxy
18ZH9irEFDsfOMSwbB11HFKm6EU1ifD0Xd52lz8ChtBgsuN0/r9nG5Pk1ApArA1oRXIGWZqfrKvf
1d+JcTDg/JCsD12OctaTeF8Ax1YZgkkstmzrz9IywWTmTpE8+MHSDK+jdTgDCslqroWGh9mHzHyT
qybLtcHBiFV2D76qTWTnPL2/cd52e6QN19py68o3jPAjOkkBaYn9bZsEIilfDKIvq7Vom6rEZhR+
HYyI+9Vy2AcW0UiQk9BbIylP7diPavbDj35dbSWCKaUpnUAECZ0fL/eBfAw+6tAoq6F+Sih9AulK
JU6Wzi1LN+VjQoAxPqL1MDUZRF8H2uhx2kiIH2aurmjgDwg6lwAbeSopdDkLthpwnq0eL/d0hymQ
7n5ItV41y0LPqSJT6qmXpcx+3WnQVnnP+gUXB8Wi704aJ2EAr3bXqBgjRvcFNFeHdfAhfko0BA7h
XrY0QpU3LAs/t/fqbS9nhCBo9eG2lV85RbHKzsbfanZqgKUqST2OC643vKvKoiGbSsp7GHWqv7/3
fLTtP2yccSxEaRLf9cG00jCkN2NRGHm05Haj0+EK+IUe2gx9CVJfyAcE6Tlpu/Fpm8r03fXDBrQe
YM0IgOQ1QUCHZR7wnZiuyTuAY2uF+vsjSDJFYt5jtgstzIHCl919ji8+nbR/7Cj3MHdlDyYnf53v
q3kQ1ziALHuvBZl8XqLX0T9TlxTbT1qnjBqdraylhe030LrxrUT8eIm2rTlb9QapJwhQ8D+9BzLq
9ZtjDvl/x11SnbsDGeURZHHWcImz/QfrSY3JUSlwBpNaN7iq3atyIQQZ3fAdyNyrN20KAgcKQlEk
MrIfsvHmgrMO6jFEeepmoQBS7pbmZvDgunLD+Rthmm28XYela4wNum8eE6Boc+AToo1kgNvbAmPO
92STUy61+6/3iysUwc38mbcxSP54t6ZtnfGC+yPSw59+mlOkJ9gw+rdS9crsFct93hBoOQMoTOQ1
pBLtF+r9+9j4FH4PfDED3e0PDyzNXuKMuGCav1PbAtY0E86Jktu2hu37Br9IuWcRu/F41Vr5GR9t
OAAr9znmNUm33efKuUdlxvKb+FMxCG7sqb5pCgPpdrozPURvPMgvnb+kIUSljACuRsDj/5pJ1pRT
Wsg48Lfft5tiS4msmE6EscY9E/sEixwJBphfoESC8Yc57Jl5QtaOyqKmetRi9Z45eSmDPSVURFnq
EUrQWBX2RWBH6jfXhSjW9tT3YVJClV51R5J1Yb7Fl18dMcvnU0QaB8oCypPVHSKmaGKMO/ICZJcq
Tj6Lcu0XnImZ4ZlFHXWOMxZNWMZ4BwNqiaJ0mAbF2W1orit504J8vIZsDPJLa6876N4+K0886ZMF
yOaq7EMSx4RoTQbC4oD+Z76lfTlqENxnjUjCfofI5it9lO69flGs/AjyHZUZtldFwABfF9+7zWwn
sql05FbFA5nDj3dfadyoprExoyv6iRYremUL8z7FeTDijpNEmQUG0wpAz8eT3MPHzGUlaswCptrn
ag+RIKKLcaInInazVHfng0RmKGxZwVPP4X7pPzTl1mCRMN8yaN1emRUsPI3Sfh60Z0NLOKWyzNAe
jZcLuut0q2HZnSNkegvxSKs1lpGGVkmUUlutZluPjMl5PEsCC5E2PNoxRMpZPMi/KA0Kv/GE9LGR
JVH/08qCMXVtdZZJSR4HsOk+9zaauJkMCJa5BRl2aCGjXpPecin0Iyn+nT+Z7htNIoBvjcT47Ws8
CsPfo9wJNA+nw+Z/6ZzDCoaWVng1Hf3TGGlja6BzqbkJGRAbEfjKMTmPVTNMKtoXBIagdndNGkv/
W/1XzTD5BOnDoIQaB5UMM/PlzEorkVXxPFYdWJaa0TnC98kE2f5RsA7qsaaEloG5t2EAE+O5dHhf
RTB/iwfwt28rr9x9bYqR4G1I9cYlIISW9NwoP3iSDPbbR7+0+CcSrRVI5p3pS08iPC7dTxEOHUcP
rUGeQOD6RGZJq6VBhhO71InxZgdKtjhNfhPvTJ1g7fJvNInH/3kyJqrzD8WhLJU8b/R4VCQdRsDj
5rgNba3W6D2eimEKKFnfoDaZjUBqGUCkfXEqjKf/oLrUSmTQ1OrqJ3MAxhIiGycKSBKhDRjiWn9G
IHZyrXfz3kY7YNCEwTY5uViHUka3NSOU7MKhdJUDSznGQTgmH/ds9SWwdPt/zTecXKu5giUW2Brp
tnXxE0IBT1kQhDy3vnt4+s94jR8Um08BTk13jV6JUHQAtyZguV6Mm1S+Fz2d8GXchamGXXsAvpgz
l8/e/VQuFeihRw42FXGeTNDfDDlzim4GPWZjvBvkSZNFfblRWo88w+WIfzzzAgY3cwDHaNwcB6W9
yff1K4iQFEJuRjWSfeeFafV4IFJQdCCnl0FJFaMPfNUAZK71Xll57wzdQt26A+s9rsYVnLhxwCN7
1D4YL4jWYoDpjkUpDFjDg9vGjuOaonHZFqdE/jt74asr98RF5+FA6Dt81IgCc2JpXDNcp5clQfbH
JqGYGFHPMEdeRqpFDjlrfmSn20spU3oLCHrCOif9njIXHr7T1lUJMwxnkLS4zR0UTM47zvLart5E
YHLScb87jS3jAcMko+bIn5YWDdchQE5pz1Xu56itMHGkexRT1mNobl8IQvH8/sGjTrDvPw66Vcfy
5GigMzICvuQ+7KUhK+NGWV9UqEo8O/g/9eZuoREE5LCIrcwxn8vVopG/OwwO9H63n8tSfqnc2YkJ
V0s1Y8dGG0ge4pfhAs8bRwuhj6HAPzyyYPcF7pK1572RVOS14MeB3is9zYNOGTaErpN8O+3T12fV
H4zs3X4sYo5hGpvV8fVQwdv7vJ1Fke5c3nVK2lMTh/USU1sQUBUjpbj18pERdc6mKXs2ww6wQwXF
W0sGiInWBJqheSPT9jAS4Pud1ZzzfsBojTsMU/LbwYyF9gH+NMQf+hTa7ufwnH2kz32qHJUigx0z
w7chWublL/ztYvL++lDlYv/0+TOSyfjUXZJ4qwN/dYs1Z+objJWxuV3re23fQLtdzRC9GLPj0Opf
oTJ5iqPzjSu/lEp37JYxeu4B7IfbUfgU+1khYle5BfJPg6mxAouxXxlCto3MuKr+p98g3fQsORlE
cQpo2ZeMlWfb0Z3fa9Gex8kbkOwh5GuoCbZz7ukrQutfmsV4+V1aeg0zo2MAjHxXGmP9/u4ou4Rl
5Fra4cVHt06D+Nf0qYfs6ApfESMPy8OnU69xQcRt27ZH8u34G7CfN9eD/ayUbgudu6hl6NxT5o+j
cjooz+lMmXqlAq3XA59v86VvgM6hRd8FgN1st4BP6JzW2pbnX21y5YZJu3k9K0dPbyoQg8Q0tYte
hFM211le13kqdbh77PNJ98hC7r/vSas6ViIffDbvEUG9OTaLeDzujQUT9adfGjRHHnRJr5+nUPkQ
6V/Ver12qZg4EqPvR3wxXyhFTfBrZJ8I+EMspN6lm0zLH5OUl9xz6CT7FbHQ8Q7sqz/LYrgha3BY
eYNr+fOthZH78b4880bYMUXiPFyQkCINaDyO0jiPd0PLVTrHy8V279wyEe5RHsFkMRn7WDSzGL5o
h0Mt0qaKMceG6IriJVvwPwIFMmN751hMnwh/UKU9+1469ijMjaLaqncivpr6Wg1gM+zvlaPxEn/F
gxJ5RGiVrCybrkXdjl90e3u1ERXLjm6D+fZDjGHOMV5k46p05FTiTJSUzlnw6x499+SV32xLhQ8V
Kyw6u52LSYKbN3LpYyzUdgCqf0mFhYjdJWBaqtbkuX6YB4G72OWnb/Q0NcuPWh3Yo6OgbHfUXswf
Z5FHrEluS7YoxYS432hQrt5HNOspe2nXO56n5lV3kVp5CI8MBr/uWU5w81kivX2RMApJzY24gl6J
2/ED+8+CBMWI//+OUnWbC3oAI0oQxo1s8rO3ZXWKewfrUWN+Ko+FtpXIy7cNhpWetSSyk5URcIO6
rz2UFlz/Hlpv4Rgu0RfvIrTmOuB2TlVNIsI2uOMl9WnkeXB1PI7Z4P6x8OCqo4YCCoDVApk0TEmA
U2iHzbngzeDo6G2OasaUlzlQKfwsTh0F+Dy7M7CTBI34Mk8b4FqtVebWd6G2JRD95ZY3RdAemUdb
ibQi3FbKtfBk2YjD4qo8oRKG6LN/9wCnJ4haHqP1iyrE6SfQ70Gzu7ZXYnu6+G0Hwf5grHYCFV72
paccXlZ5IRCn7mYsK5MROmHTiykaJ454FLJ/yx6qeiGlIsVxFjioFbHi3mNeVxkLGyF4ZJ+QqRgN
iUZififcNdMyRjR/Gq5Chh6LTDA71MNR3t790gWfxN/pLWJ3joUVnrBEIHugxM7CO09I6eGbd1QP
hbdMwF0lvURfGsZ8O3WsTpPh+u79B2VELEBnvpPEmuaObFi6FsQNIoPUGsA9dbHZGYg1ukoIyYsu
KONyOrEMW/cKqe8ejk8TnQ6AI3EWPRMU0a35y0/jpfiUcgdGPYVIoW7WeMDDpQAHJCaUjR1g8mVH
GW4wBhpdBuzUDYFgcWyqr0yXHJTDySlq+YXRSwhVL24bKXJWhmXn8p4Zm9y8uLyPLyJ8Pro227fg
/PsRXdYw2yba0ldr2m1UGS5NfqHNe8ncJBgY1hAIj9o3ZQ2ia7ltHzPjPwAnA0/bI8RCG24E4raI
Ycdd15hMY1LYR5wQ7zwEa9j2aB7xn5VipMyYgrw7exy3mpPv2v+kPwYwx+s0lQ401Oq/H5eJigEb
VmSAYnhevrMwGvxlEaxW8CgJCYFhEDJuZy7HYSruilmCnTsE9Icl3XOt14aXdiVtyt3nwSU5xwfv
MQJXDczs3ICzQNCK8boxYo3uoqqlvZxJRosCwRFUUDnTTpudjPLAs9B2/xBlgqw7o4vJFTPM7zFw
q3PEfyivPdtDRutTU2aE2CWFtjlds1RcJW4594pLWSEVotFVta428yRQy29pk5aiyiYRgz1bBZrF
NVt2ZAECi5cSVfPeNzb+84SuR5LTgmdaN5bViWL4USqJc50CMDjM0fwwrbWyslo5OtoS+l4iphuQ
cAI7GrbHgBWHDABT+E04iQfbTtQ8AGOQ9gbZ1m8yWdl6MITepCiICkOWzlR9TgB5N1vxEUc5V11G
KWyFJqwJ3ICp1TM3mFgY7Y9l7Crxq4k25ZT37UkAsO7ad2YMq2/W1A1glT0D6HC5FSrrFNSTLSrm
bOkNYccnWSeQE086MrwvtAWgnorj3Fdld9rUZtMhp1EMcqDivHKg4cST9OufMmQeUwdxsLWgp3d3
lsnMneT9ElzqeeL7JSR+rSIMJ37QwhByIUYhMNE6dUc5TjRQqSXIipSX5SPHIrHwY0HpFgOoqW/l
vYzQdn/jpx5j+0ysgAVnoNjZafCzQoAIF0ZPUMZTigG/KPyJ+bvTQ0fGJgmqYxAcQwjPy/V8Cnl7
1woDz/n0T9z5iTbh+VjBgu44PBOUDfJY2v6gckwEDfrHkNkeZcTIuicxXU0z4ukbFlyPUsUJNk+W
0WK+OFKVGd16lPYBOr9B3aPVzfetu/go8Anud7zhLAAHrg3duqFL2957FRbtvxcbUgqKRWeR3o/c
v8/EdUfPpLy6AtTde7igCYtoj8bP/Jcl4/bpK40sifpsZkyVFTcv1Fikap3yyGudfxGN6+2BRZ5K
JaYKzNqAfSiY+b4XDCbhDG8U2RHwq8lvvCJwWis0te2qS+GdmTN8V+hfrEVnqTbIdAETBK2Vm2q/
NiCUzdcEchgbYxQ2SWzQ2IT3FkLdS2cVuQCKgaTO72uT5+o72uqPZEddUsFGooczgk+OR23W5Z0w
pS2pvsXoIrXjPm9jm2aSAb33UdobmwhMc8gyAqG30BHzetxTnBE8xZ0LJ160JaftpewEd/mh/T0S
p4Hex+VhgysRqePCQ+y8ZmxCd6BdMbr5q2B8syrj4onsnlW0XJXWfsXCuH/5bLo3xeHb14BPI0LQ
/wX2LxVgr9XhcIMTzXR0an36VZ3ehq00991QhxHqlUEgj26mtw/KyI5zq/XC10jxLC3uAzGtcLDp
4k2pC0hI8OAKhu5IdWAfH0UqaDSP1VjvCHkRfCco2DGeZ/0ttKT9t0G602fgTc0D4TAg05ZzeVMT
vwRyoPtgXExXbPHmcevwglorp1U1rdtaetu0zZ4MmzG9plzD+AgDIAQjpTEc4YvVaPjGokMoUg50
K4LMx0JWpqBn25gTR2v/Sx3xti9VOyoWltvPLXHl0sIePeQzfSVmQaupTvLupORgONvFKZU1wjyv
VTGo8HAEIbLNGr5XJOfFRY6v0+Ua5yc9oSTtahnuP6YCRZiYdGdIZzXd7R102aVcd/CGGy82cbgY
pTSZixEhUEwFhsPqhEs0T2j3v0zH2GpcYlXq5D7NMOuLDXVHOuIe1HIXtDvHbMRbDXW7rc7hHvSk
lJ0kYYSsAThtlEEBuldI/RsI+wu5fYePrcQ3hldyV8Q8jvJ7kwQRrSEsMYS+4qSbk2bLI8Hxy8KT
MHlxnCkCJ99pnUpHGFokPaeiso6tuCi+qan42Iz+NYAcQ0c5c7Hmr8ktzJt7EM/2BC04KTLQVuDA
cmAjaM5EUKRnbQBpZhOe7nHklCSWQLQ9ep599HXxzHEg3n4m6hp7wAcsv0eiUNP4Tx1W02a4WvyN
K8yMHQOaObURU1t6SKQdlatE2Dys6mWNv4Dr4glASeQPTlSPbWuO1l2bHTAalVIwjAnO740A7/um
Gyfci0TtpZkpaBdR2AbGaO6M6IiGqHM9NcXAcJ0qpTh5mGLe4O/UR2j6WfqbPfrdD7PQXu2Uzbdo
dLt9MBqDfXpmLCYldqydcYctoPV450YFeM+vVPbx/yq3vgoS1ZousUElm2IZaS3cSkgpDmqFi03l
KDLbKtvaI9RGsRnTAX6mdW3VVlk1AoRBr3ws6vXB6H5jlGCh2vk8I5yFZZWK1Z2/ykdkR6oFT5uW
uBlv3/VTpFJZy3QqTyzIg3IbZvAxoTgBpCwfWwMWnmxMWG7OvxckYVotm+4s8mubKTICPQhS2kGC
EsP69b4V8tWQtKI8rWLpixAZkuR6KTG8p54/ejZD0CtJ0HKIFFv3PmRK8Sfch8CegDUwb8MIDdFh
17Gs/BdginG3omJDssdLzjWqQJci0eKi2P4V17duQVVrF7fPj9Myvf0LRy/Quydrl8R/tIGuk5hG
7RHofgr0iAmqv7ZZzF3qwmHpYAMB4dUZMA3M7vo9iaZaS+R2DdPuQqOnG+OLUXJE89rG9SXJiq2T
Z0zaubKnwdH8BkqusrQkNLx/7cTz95N3aHyYG4JoZ3ldQ2qU6tYVLkQ/M5iqlafr/3Fvc0+gFwD9
PleCD6akBsTkN8V4+rIFXdoG5ghP2/3DexNVp6oiyt7avnawQkhpQwS6CePz2Ustu71XXHkMYu+U
1PJiycPYu6A9EMEnNT0wfV6ygtD3nAdb/mE9OTXCAES44tP8MGnBNN1VKj/sfz391oQi1wYGllbN
vJNcFFCoBE0r73s9u9d/zUBUHXuOJEbOR92yb3HnxPtKRVOTLV5yVbNv3nJQCZNT2Os5CVeIJXLn
owPdFASK2rFkONttp7piD3kdYF+V8BgRYH8rfBygqF7orz8UASe61rO/fu/LkfMX0Q3Y5anZKHm+
UCR+J6KsrPDddUE6LLJv+BAHjb3DsP61/NAgrloCrMRNBJhsIjcxnrJQGZMX2sGqS0117DqHH/mY
0DJ50dBoOYbFrxDeBCGhsfCUxk72CuYODRJaYCz01RasfYm5/BmDX4aEnh1TT+bQSoFLUNF2WHXN
dxGJbVxbP7Xdqayu50uMNokrCHs66DBDwPKA0ppm6Q7kQ/bcgRi2xYE1DinUps7iJeWHU5vbNstz
HP/K2CVjPdzOC2/SKX05KJuBFzUbZ1H6m/iqvnEQk/JXNiS2jvT7VE59xj34oaijFJ6vyNeV9loD
Zkvd6gnb5SRUM0o1gPiph3JyhdbWwx64m6tA3ob59qDYj46ZTBy76qZJQ7bfcuiwRYU2OkCmB/YR
5QbVx4qhV06a7JADDBxyF803IQR+AvHWEAXBiQLJ2xus6IcLzVRbxgcacQyYUR3fd9QzwO+X4hTA
70lo7fUmdPwlOzetzAqnzpfAx3M+fMABd0qdHthAYKcsbXrvd+DomzvgxyjCpYOnJYpsgvqgTEA+
HkNnnWbxAXins3PIs4/fGahkAkBwrLXAPVr360iy10X1o9U5svROSvnu4Ea1wz3Bka6a7xMrUl0A
qnjM+Gf0q9wehRfn/jnLy5XrBsbbdNyVRh/rsPUm+pvFLjS1VAMr10r4kK8LUFSUwoFnkFkS01A+
R6s0BFAZfKKMWNPepIYFAK1tgUKBs1GzAdc3Q5GC81j2G1bO534w1JorQni6DelqwSqtkmneekzb
nswNjdQXKaEMJ/FbgbtUl32X5rBvP6T6nXq706+BSySTqeaKI4kX2W8Zo5r0ymnoX5KFwgp7ehUv
dYxTDnVbSVC5umhbKt99hkX3urdmRHFYl2sBReruLciRAz/oC4zTmcuNKQjINO7y4grTKnOmV/md
9Yg2IpRui4ZlZIjUN+VU+7R6tG/sm2BsxGP/HDvi6UG5CuRDIdFXC7pcGBGB8bYjqksavlARxP6f
ozwTnBoxUSLYwu9n159sefBGl7FvYqx59PUQxFPaotlWFil4t2/t2cxjQ8WciZ6lwB8i0kmgVdcb
PHzWu1gP1NNO85BE8qQxfg1fWTrlvZh0KUTAZsKm+R1rU6MKeLnrxa1tKtlJ6iarX4xx2zMQ8ARp
NDvU9Ruy+JT/pr1tswDdlzpMdsDAY83X7AMuO0f6167XC/VOuBluUSxLUywKMc6C2zHkHRIZ6VV3
EWuER6nCJ2osXXP1SxJfHlyIZbm7dRL6WstPUvp0onZzz6hKp9UFZo7dsTxSx18DLQE3qsejmLee
ZQXDfj++miIjPRW/jYM+3Uo75iTk1roHcaTwjZucDC8BlP7cYExb+dVmOEy5uvCpLfKJwecU9uM8
OD81HEKJfG4ae/99CiKFwTpULRY4SiTMm2O1CktpUzpvZ+EJ08DrLky3sbci4RUvjjPDnwuHPtrv
fVt6psSsClZs+ugKTSS3MYQoAE8fxWsG+1nL/sp9bOjwhC6HuODdmHkS3MRQxOSRlkdoOvgesGYR
34mcLz5q4ezukXCTAvxH4U4t58GkAF8ed3ZSY3bMNWtXMbD1YnXvkYNJZLsIdfiMg/iHdzVEM44W
IPtOX3aYZWUhahNoavUXckcAma1fQRVlAYaZ204uo8rdWv/OevDCjZXMALQeDuIOLfvI+Izn+3Lv
fTg4pp+RM7GWT1/Xag71cTfd7l5PKXSZgn5DScHovxuAz2cJKmyZ5Lh2uC/BtWfPCQ50njsDf+Tr
ZDRLp5z3z0w9coPPS5AVWHbxNBpgkmTuX4lowTXDlz3U8W9bhB06bshRKuLEcEOJ1nC0dzOnXOqm
Rc0CHj3d40XKvIcQl1Iw4OdkqYOxjbDKZa9PbnjnAIqDhIvtXsQwc2pP7++Ar0lWDKtKzBee1zLV
HJQlmLDKEQjG0vmYTl3MocduHPVMZHvye736wbpZ0gAfzmxS2Z02unD2NE+N/WG3ffg1d1H0kk/y
OkjsBsjiNMNc1WCC/8uc2EQbeveYZce0mh183HQteylLGFi9yL9BK0CLPBrIb2cKvUvvNiyB8hWN
Tlu0Cx9LF9wQG5VURdjfNfiws5cvtAXM3W21ZY8XROzFrX+3mY6l0CH2C8T9qQ6V72JVV7gDMvS/
4c6+18dXNNZJkW5/6Q509HDUuNK3s3Lv3yF350tfgKCsXyZhPamkJws/tqo3AlEcmF/UduDLT7Ue
I8IP0hDGbjpG7BrWT7UhfcW2hLSnDZNBcR4lEzAwJoriBx1Nwbxzr+fbZ7+PyBjOVCWUiH1R9KjA
MaPRSRStakUbXAPjYNDO8r/Vh+lYir9xAa7MVqzuqdQ6Ur/G/K/+xquxXAw+Hs7zJPoI/NPMxYEc
fk6Lo4kUFBmhf4PnHBT84+f0Rhr9DLnct+rYBc3sju6bT+7pv8Aw9Oo9S3c9dwDItShPmmtk04Gf
6nILW8tZzlemjzvJMbqjFZQ7LjIz2iaNqLugkF5CHt6UnyECkX11nH0E9XYD8KNvZAneU4u1vvR5
8xM+dGHEqLZYo1LdBf5QPMYVTxlElgNXdoykKl+eCxJ3dMqtyTDE8FltSaqo64nDEaeI1wSlh+u/
Gc8li8gPQZl+ARfvshraTTThlVXdIlFCrE1BfYlXUhaLdJ0NwAciomFcHE8c15hxO7vF2bhjWvPi
nO7fowjdNgXk6Y+Y4PIARJezzHIL7INoq2JrEBdvDEAHNWyGhNydrt+so157buiwq8W6KEtXzsMx
D1vlrADNpAzT3fWc7T70KfqWO5zpWrnNCXdeEyzdjCNU0ZotbaqEzN1Z38TA1jce8aL/fb5NZ6Em
/AKrL37Ezx16UlXCvF9cSbV5sgkgUUP2T3YpOMNDFk47yuJt3D9iraGrwfQd8W85GTkiccZwjpcE
YVwni8aiKKnfnNv3uC77iautebNJuJjgz263Hb/eIwObkSxKnMOPkmVy93Stt1z/r2UTYzVuNnVI
8uQnP76S6LludrShmmXSYYm2V027Xw0r4AntRBC7mSfqmibW7YOBPyvkka+NlNZfDCEDLJUi0ooy
3tQQv11+5/cHM/i3g++D+/YUkARTOMGMCyKIegSlnXPYG/RtgZg2qvry63ULGY0/Ek04ICTXl2pf
oBnWCOTLdZlfbvZ4xU4Ns59u12/sUubDM5X2KWL81bGJNe0li6Looa1omh0X6AHwHG6MiPz+5IgP
+9Y1NmxU7Q0qCy078QgOSkVpS2gR4f8zR4pcJIeKJjheFvQy0xp7Y3SqSG2JzOL3sRK9qWlgnC8e
qAYS5fPvLQaDtsymQzNzoazD2eMRbc0uESNlo7aHjfoNcHmAbwApHDnuMmJM3C1Qz+RJVvQ9xsN4
svFtDIEp1OXppWABchwsZdmW2TLCJT/lGhYQH7LEVVZYAFiMD+JYAu/RvPR+6JzbBTtp6ZvoMoLV
Ir2AAE0B3kEhfpUgKodvKRACW67jsCxuuP1Ax4+MbBv+nGMhEaO8qTOTf9fuyNnQg0cFHpuVPkit
ApRz0UZvrq3RSIooAzUdiecXTKmR3IzVk7O2nCfjpu9rZAFeTcOOPBp8qgDM4IUzyUI8gGCTUtTd
sNh5+Juz2u6Hvbgc9cIzDPT+D9GTFCj9nD9f/dGO6YDboyqprauBnsVCwf2Fk7gLB/JgiQmETV+z
7SgZKfBpPmRlEE0fb5TvDdBb4yRd7zfNz3j8utssvX8L6/q91qHT2gYsLcOJm4rBaZZl/V9rFH4W
ucv0v7C/ydfRCTk6ZWOu8BETQrnRJRpPqtHWLqlLwNZP4NzEfV64zmIxc5yz2792FmKWMG86H2ci
+ySlFI5K4v3hF8G2d5qSKLrAXqP23xLuh8jaChbF6BgUUCvBJNjG6ZQyp1w9te2b76EOmsh2tkDK
vapRZL4ySiXyclqgLNKoCz3Mw4GDoR1OoAlX90NqSqIgJhVG7qhthaXEMOOvCN4BvQIgAe7Y2V4u
L9p/dZx8OQbmi/GQnLObBfIdxZoKV3V9t0vYefgNzaC3Yfp4YM/mFGEFeljflREJMihsF5Ue4QgJ
vCC52mPHpzRqc/eElpJyOxX8jILiggIUn0mGiimQMtAVbJhjgkSMmXlTGbRCSD5QajeULL00S7gv
ihXc378ikv5C0q35UlFMsc14z0gpg6tRQxSiIO/9CjDq5HB/aDOuhawrxpGq9NV6Z1+Y0iVKJP3L
5ympccVUz0z5BCu2Ba3RRDMtHJC1631cmw+dNbocfS+6XXxcxsFgsf0Eyuvm+uO14NK3zpGNPeGj
hC9MRBO5U6Wr7XtWpgt+WukRqx1/6MVsPIFNQRPdT7SkxBVktx4Km0lWnkaLm5TIC/R4DHioxxdN
uJ3oHNgcteejmuFNng2CZd8OByR01dXCNPor0jqC8GPtcBzTT8C5On7xd79q8bX2jichr1UTi4OS
82DgmM5unAdJGDqVlhdk0V4PfVT2yP0IQj+yvZsSTsMnvPS222kuOPO5WT8QLd2uQjO/QYKltADQ
qZoIY8H3+kAOo6kJ8zyIso+95gZUv5WaE8QBE0O+TpKbaKHPexhu2JWudQ7w1Tk1RFCLhT1cUQxf
sTHHk+9i6KwXv1GVNqcaqKa783BSppQtRByuSOanOZAAGlmJqPGufjnADxzPA6Q8xiQs6xHxSxPB
yYWYPdrADdyN6lfSx4kZysQ6sT/G0j05orqMZHm1Z0TSRSs666UMnLvFSLINQAI5doRvR075K0Br
ekgFMg4SSsyqUqtQKmDESxRQAgeBcTnBzzDQtVv8IO4Si/P4g0WEVVs6Ve0gzo1lKOcdivmLwDqT
9GEZ+R3OI514+eY4b9/d8PitXl9GhMTcUvbJt/x7rUdf1FxSQgJzbrtj4rUZ8dWyFnDsrXTBATUC
exy/Ac7EeeIuB2lcVwFBqCUXthRTg7jVfGXxoN2pkFMUtcLPPOwBbO4jbNKpWBZQNaoOzjHOQ9Vf
QJCXU7LECE80TCvxandqEOzapl+NewB8txEk7VssN0n6mgZyU+YdFRsThR6AIu4lMNgjSSBoyXlM
7+QzA6E2iHDIO1OkRDXZ8L66zOohu5i//JkQ3pXbnw6JlmDyNs8u61KNRbd6eOgDqKYICuVIS4RZ
0GVbxLedXTLbhTVHy65a8ZCSU6PhE40Yz/W3U1DdypOrDpMqeqYcmb73npDoG1MKE6XWswuqRDje
bZ++Ace6H4+cbi4cEKfFvabDt7zGTpzR+hTR7wxPmB00R3LYHN6ksp8heWhLz4OY9D27G02DGIKQ
UuyBXcnuSep1iVfuYL/nf9/wZzHWQW7Eh6DnDDY0rCpVqBA9RcjTDQ6jAVBcCchjL670vTGeow3i
3oaAoM+AJ9qVawyYy9z4PWbX6zkRd9B/vjqFzgGgUgfWSpmvXZMAYjZj/iKQM9JY9lJziuFQ+vFB
fsd9TLK3WpC4OxH4NT88By05zUfK1EJKuAMEJ1g2cL1mM+Mlyqxzmynju81axrHhXdyKjJnl4Zc+
03VJ/YYIPI7eQhBHModNttfNjTj1J9iaKVndKoJLKI+mLrmPQC2tOV3zQLqcKvBJVHGanZlY7pR3
junzD6m1AjopzYyjssecwi/OdiThU+kyGZLvaiDO4wbbx+XSevazjAlYZSzo2sO4pGeorHd8Br4D
l9eZtiHpVPmMKfXt9cWtMQchEIjYMsL4UIE5GyBulBegYeMIfk4+A1OvGxn9Kd/g7SPTDXxiL2Zn
04WTrQsQM3OO1SNbG1pLaT8U+otk+Ma1b1K1Qr0eK/3OcRp604mhQARbrjvzlD75E8k0STxaiHEB
RCb2wXSY6kI+RLOY81wEYLDz5yw9CEwdTzgHHUGIejYD/uS0iRsnXyxdKrQywJdujTZ1yemgpBRV
EYsYAgRjzs2IVwQxHVgT2EXUEs7vPLW4xcd/GpmEWmGndpxVPsZe47yebQ8iTxEiGF5Aauzo6Dyy
BoIzp8of0f2cO3C+LcmoLQ8IWMkdpMxCBURR7rdaR6JKyTDAAnD0dubdn1uIEh9n1UFLZwPkAvqy
wNtHPUhucmfV3PtGlm0AfIoOXorq9Yb9GEr7iZsnALIZUnZu/QeBjHmxrndiRBFndZTDWKVsz2ws
63WXCUucnpu+Ot8h7VFFL5mvaV3XKQjziSt7tmY7SPOPgSva6Otlx9k0d3eY+Jc7x/dC5EZc2mhW
XEuMII6s0p22wEFtLgwegVuYBB1McjaPh3zsLMtqgnY04+9iil3IQ18Af+mHQVWzYDHPvu28OSxN
nXAWyLMdTiL57uyKH9nGXfC1CeeiPZsIPJ2T9dG9M17yrpCigWZNJ+O21xHP56GYbXS8eh3FniLx
/0NOt20sc1WZ47urzfS1w6BVOI8QwkkIzAb1bfKGDVYjyr/jYO0/XZrL2ZvZfGokW9J5RqY11ASi
XcwQiHkV+jJbhfYgWOS/xBizOZJ3iG8QG5BUEIdzsMaQaubKTEeYN0i39BgoWdzscNKebfth3uP3
hJUv2eCsNL/GmAvwmR4/+S6G/30l5xZgN9F9HJwjPPt7eATlaIbeDD1RUpivBq7UsmH5AD0MoI0s
uOn0jh5cBzvWAHYbBTB+0m/v48qqpt44dkBwpDDqQA1g69Q/VZRuB98A2pycj5NXy1/vkRq1bJzK
YKzhbVIUYEUPTobNeAIEBboegWSrtfrUb3vdJKlNyEZKnfuzDyguj+y4J/QqWj0UWA7u2qSlKB7V
gEubZVdAbrA1pS2kVmb9cKuSSD9q9BwjWQIuyLZ3DhqwqnFquhCjc4RzF6Keg9HqI8VPbUlW7Bzc
foX62ZHCMvGzHhhOw3BrgrQYmxhlOHuyII9pos5QxdXu/nALWChF5cPob+OGXjA9Pz5Yo/XdZfPB
/ddYc1ISPi3FvHJGBBf2F+Nu+e8ajN1hDUdE379gcSMqZAkGjguQTUa2iSo8LwMyad5rDazmEfqa
/7fQlU0NJbrR3imkifZdPAA9etF1BKzxpxoxYc8Snd7sx3Pn/eBrWafqFTrVD3UVixAbsxXSRihT
ArBXhFUtSsnN3Wfg30RH1A32zJ4m3/UstMgWmbmGjgciQCHuMYTYzAujfH4+BrzGqU/cKeZio4hW
y0UpWGX3Ij1QKVmvfQgm9q5t9AADsDPydhIk65Tg3ftxxtjF7PSRC0YZGZurV65P0GwoimmDSeHv
dSqglKHTTacQHief8PHneJ++oT4zSr7r1IKAfCgVGftw7baO9hTBI4qm4Jnu264/ENZkwCVYDvbd
TYF0vgzg4s09iu6fJz8tevC69RwN7I8DgnYI+kbi4zYe0yOIhtNb5Ud1r05GspK8pPtrFxx0yF8k
4hRlVP9gEjp7e4b+QQloPY8c8ShKGO73y2XRN20YzxaYG8ZEUlK0tK4wbyAOSpaWt3uAlbCX6NpM
YdB/BhiYrynXoKzLBV9HV5YHaDBfTpyK5hPLbyD6UnJcYyprv+fa50h30/dtsEikLh2S+7mMp9hQ
KoN8199xwDwlPwBNxIDVuqTv44ghT+aQ44YM+t47XPW/ZAUr6whWO2mMrqGyX1Vd03abrgvnT059
iqjCrecmKAjOuYCzA/p4Gt8/VXTflVw1QyY3V7ckSreFJz52wRg7EGQdtRh75qP1EGMpklum3tKW
Z3OIS/DQASsVe9F4+n8IgH3VhaHVOYa7eL/FgCWyPZ6LKhD3DtY8OVTRtCejdPb4fBFunOj2t4Zc
fcgUkx3MpdKNVDQv+4LO5FEVk6mls6Az/ralLLpx8aWuUe6omk1lUP3ye/sKohX2FSth3Vj7Id6e
0zcuhV+HDq0EJKBgqR/BxFXJ9kmi7BdZD59mxKhrbach2Urrz8TyTJ/m3T+V5/nx+3QlIPHIyL+K
VmnPHM4nPZocXqpQtKrszvbT6KA7Xqw4D5xNtFxPh2kjaW1x/1Cl1ecJfVHYcGarDn0hFLavYByI
MXnZBADME0quTq/PwduGIX/HVasoOktfvPPqvjkYsMbAgmMO5OiMrnU/t3C1yGBCTuENnDqZFbHh
YSl4RfUeS/2tbVXy2KaVIiZaZHJQ4O+CTDSndBGb10FLFS4xBsrvZhIWxdXGiDTA1cSA6xANG5G5
WyTD8GzCWcz3N/pW7xjbhEc9bXBGwCZdP4aR0juvvNvFlE5KDK43vU+6ow4UxpCqNFIOZNZiMvhD
6IasM3rHNv48Cc1dKfSNw5kP9nzJBIMUlVvvp9HpdJvyaLUFc0H5ZqBG3Usw1n7SVzGE+a4KW1HP
qdEmp3UIxX/Bq4THTD2U1BLjJqOdpS1QeMJkp1GYJIv+anbpAr3gBvit3Js2IJcQDzoxDb6dWIRc
0GH/8izFeyG4C0UB/G/b7Y3bFPFM4/LiSanr8HGdUK0pz0+7ndtnGVj2MqCFarRsZncAXOWebYWB
KdNd96KkJeUcHLmWoYR5DLqQuDlmqZjagUJXF1B+EBM50T1NSOJ87Ze8Q36YJR+Gaw6jZujkD+7z
wQ+5vr04nqCSstl0SOy7UI8eTl2/9+nRAFh0NFmbyLAWqHmYMIl0Bm3euO4usXIbpAN9wgVkNxk8
Doh+MxX9D23j38AqZuTPY4IF2FhImbRs67Bc4p2BLrVlBFS1xPAKTg7Y35G83+lQSOzHjieTekJf
inO45NWRyvbqkST8P04VS6kYvhaDvmJQDxZ8CeSNFOb11WmY21nVf2huQ8XA3EMlDL3aJ2QbXRHy
kgVXZHVp/ItMPuY/TspK9Ejav4Ve92FQw7FQUa7ZwGLwmsu+fMPMscz6ijK9GdYdWo+RNpAOa4a9
9hrIi9uFanib2wF4QHr8921Zx2IhNfLXcVRmfNMtl//8pwJSJ81z7Y6ypc5in47X8JsD8ll+asNk
Y46ih7Asd/ofUHlXnM9iUmVsP+7H4iL/8riOQqXCWI+rinMi54reN5MAoCZTlVgZDixtBUuptFmP
aTJ837VBt0jJrfDtl2Q7KGG/PomYWA+TLQ3gdTWfs+rbe+dTI5PXcsbXeO0lICgf9tvuG3ayC9lG
5YfOpP1EQAwZgFoHks97rx4dS+3lwxyh7W6vMNcVvouS445RujWIfQo8z2yCJ9hDBcjeHbvDpWPm
+IumZF2ye+n6fG6q+Ip/dhhTOynt0ejkYfbu3CNsuSa8hG/gUEMsfUwEiXa9a1lCADjn2bCdP3VX
XgTNKgpUEU88EZCRaE0qNsQxcYSMVdz+VMNU92lI18rZOGXYUwBmtgE7/+aCcXf3C225TMRAray8
3BKrv8PLsfcZTJxmLGviq6ps1Q4JwK++ICYW4NiwPVAFkzcTBAogyQNT1yqhGnl7UyuI3AKnyY6+
zjDJlXPEYHRstqidk0FWBo7TqAKFtKaGxVWBkwUxlL9qn6xcnUgZvvG7oCyLofHyE5Pg+XId8qrb
WFhWyNo0Ui10dyNEe4Sj2R9ySG92dVy4C7oYGONG5oQdple+LSp6UmOZJFMyJ6ETu8UXLp+iUvHE
/ZkBlMAb89iiXRXmcKxB4xPd7+Wxw54R6S37DXwrrThTSgviECc1YFBYZEf1iemxIgS7uef4gfzm
aSk0Lz9S/7Y2GC0mROtqmSEen/VheBOQWV+nPcF1IwtOM2m+l6mmFX3/ZjXmQDENHYLNzH9iV8D0
gklImjluzDPhAzLosNPoBAupyDbDOSrj8mTjdm1ZOy2stpQu/nzqPmF23dfgpNOQuWwMUfb3A5Ec
PksrfbEAuj0FUdKnBp+VWVoFbjCmds/rleHZpt8ERDSK1HaekmxG8XIaCx2T2g6WTci9lzbM5Thn
6X2jSdOePRj6fgtfPYQCoAPSL7j7Z1Xfklo7A3fe4z3ygoHNzBb+GE07q9o2DQI522zbfGz16g7l
egzT4O935pBI9dGVGAVBCRtLuNDO3zxDxq6SyED5zMVhxni/V6r7sSYGdqTcm8udK5YeaJP/4gD8
yksWWldpKl/QJHhvnhibItPddwTeTeKFQ/8QT3ey8hEk4A2xOyk8ibFgiEiSTvOZ+X/kA5Y1QlJh
J0THYh2/5NAgXIAy7dI/VgCSz0GGF8JA2RGqVX29W9fD/5G7thkxyFI3/c2bgUNnmM/q66XJxsfW
8eUhsPwRyCxAB/YxEOlOCPB6XR97XJMnvKBuZYZcXH0dZnQTYa/u9hVYhOxH/1Tr2OQqMCN+UBL3
29ESu8rJonai/VI2R2ut/2n8zj30C3y/6wX8QhcXXnxm5UglH5GBlwZWdHqwTgBR40g7LtZycYT1
R3H2NhVLsCAYYaqqLnzIU/Is4beImMB7GXY1v8HezKyn0g2kiMpoLvtrJ/hsBtqot7T5oUFaNQed
Xl54uCn6l6dXggGLQZ+YRjOFivwhzfFAZazB2kfdeYc2IiyUk0L8+2YZ0HbpAWzv/Corlef1IldS
53eXMFaY9w/deLsi5FChlWVbKNix8uYkuI0vuDckC3pOOS8+eogNnN1r92stZo089573d4MczPnW
i0QAB9qq9HlGw38MSl9K0oeSLrdxjzhqitsF/z8tB7fmV+6GI6VmJCia8SxVOQr565kChl2e8ME7
0MIrQEN5ySPhO74eY9ZQrHNF4JgDwGS3Flg1zZZcWItgyQ7rk3b3HjcCx8fUO9jH8I5EbcDEymOk
CXBkz60sn7jGBOLwO549pWnZ6gd1nCnwMAVfAuKXXji9u9G5g+VTfHyzw1FQfyu7dbFM5t9BNVne
G0lm0XZwV/LoIhbx52al/FhvrCu/7oDx6j5ddfusVb+NVHYF6p13BzlG/Q3ekx3eMv70t1PxhnRf
Uis215X6AxVF12jp0h9A4AX0qkuEFjGJtAtnlo0+m+OSw+uctvDy0XwWijbwjN8aVJkPz1/2t6Su
ngZelLyFBazHPfUvNNoW8k85HQkrlx/q+E597sdb8PDnHM/fxYhJofN6zQO5S+NPBOyVelaP9Lgg
Agz5dGHCR3z2McVmJa3Or60rfUMpdWxswKD+pxtRTW3fSQNhKdlOd3PMx3iYPdl2yXie6wIpamvG
bMo439JNogYUvj1qPG93Uo7WBp63kQ5ii7PJuJWEu987+WF59x5V/aY4gkmrQiBF2Bo1rlv7utzn
Rd5CG151cm60pE5S+ptutWW+7WlqGx58ezAQ5ASrmRME364UI2ae8gj6O4A3oaJP3RIiZ2ZgfzrH
xm7JKephZaPfA5piTIkAHUfJ4KebvWBbkUItb95FnRw/45K5rSRjseZgWFUsJSpdRiDGfd/ZIpoq
CneSzVeguMnyx7Ju5q8MGP6lts9dZ19N3Mrx0rt4D5fKKFmjpMAEIuT//XK1s8pUkQVzQigXV+NZ
cbCA0hENdVlPtzZQq8fnthJok84XQu1evghlCoaRSlpuUozTwQSBezG0/GaULE2w+6ggHnGEj5Mh
dxgHVW34GoIz5gLGDv+9YltimxNBvb7/fv63rB5XcVPRfY6iYM3ApxDidP3aJ44+q6ioJ/1bywJD
xZpSGtVHkxW0HEUt791hB5e3ZhBs5GK+VLgoOY7CUQYCUhPNtm70GmCT8S+DcI/AAOMMlVpTN6lG
TWwxkxqgNDqZPa8lwBJcbZQ0Xf3bHjNqX4ASIANWDNBwmqoPbaVh9OjUwsOvzNZP19J1U3dgMCRE
S5WjAT+/gNsFXro8ZYot9vmn+V3F9X95lCExJDov0Ceu4u5RQ+a1PvZ1e1OXEnjagxcVSkMdgt4v
dBkl5SCTB5a709KB9yF69BMPecPvUKKCayH2Sii1fSA60FbH0n2aCznUnifDNXQpCbNGxUUlVCD2
rVu2KG+z1Yg+JscIHxLnIzTm8ECXyenN4GT7SldyYUqAksg+kL/U1lxTtR2OWqs8B8nM9arFBZVL
Yj4hDaCLbJZNuDHWpX1PoDgYPpYbWHIRny+WG+4KkX0C6CNeZpQ4vcN1gTd6EXAkozmS5a5Or9DG
lGrkHYmpwbYZTLLEx4vlckEVNKxwBcI2jtlBJWXtBgeMMvubNe/S5J+yK0VWppK78ahg/zz51v0n
ry1RMfDZoEUTwbgvkiJS8V3Cq8PLf9xJUWoGDUme3XwWf8mzDLtmewtvpLbEJVDrFhjUtzw4CzIC
tawKhDsZpCBwft+e2VVcm72lguBKCx8v4n3N1XQ2jnySh0oxaasFEkHqeSSdUxf/4CeRuJ7JBMAq
Pv1G6APoobqNGt3xmSxRKNHsFDTx7yBReiayaLK2Z64ExyLaT0QyUmloYlschKbRM2geHc1QYf2L
wV37/HWMQLduen510inYLR2/q0MWFUD/pA2Z/UR23aVH6SSILlIGa1087owgZT+/9InRw6YcM79+
DB4RtNz9m/C33JqVPKgccP+51wSs7kbsXjuAMfMTkrmM+Ih16vmeDZzUtPxwWOCVDRdVnMOkuej1
jixYpKg3dFgqTmKqrnbpHAZaAr7/nLYWFa9VnBgKr9e8/igYhdKFBdqJPYcwYc43E87BFrB6JXFW
R40+JuWlWhK7CATIvPP+ZCUaGZQ/d4cV5bV9K8sDYP8+FzcENHqKp1te1sRVwC0D++9NQ0OLr87b
lriAuZtYPyUvjB08b7nlk9JCP3uSAMSH/4a+5FrOsO54NdqsY9EyJukuPgra6l8ALCD/6FXAjCIq
XK0zOuPquIIZD+UQh9EhkeB2m6IJTZ6BLZbLSAOJjB2cZ1F5U2IYQiGvfp+wZxLQ+2RAVPiyfBur
CWWfzoJBf7ZZwAGWpv61WYaWBcdlSjdFX1GNBFZfEXK2WVfJneJiulk1jLg19lIuqD0Gqa/9p6An
HqpARW3wmIYGVFCFfW3ffBa2XnF7HVngiuc8D0fn0e1mm78vo1q007HRgSRlKg2GmvOCDRFJKk8a
8X7FOBEmsfmzpKecZdA2f/UXBXoNLP2+M3+yjJsQepNs+OklxdSNZAx5gt9qsdmBx+u0BcMIhJlP
YmvU3RoYcVyK1SUfX2K5U5k0QZmXHUv88o3Oxqgh+v1thibOzUDC6g1ROIceb5NC6UqDCKp2B4aC
X+KnwOjJftewHEi3OPQUf+tJR4ptVPgt4vl0LOfrBJBqg+U+so+nomhgZBVB19IfzrEb4o6hkhup
L3t59BlyWe2fl1TL2yVWEfg09LYLRUj6qgnd5/2jDmXKKqBvn/7/ewrJ5ecm9v0g+71CM2ZZtRCF
yRFwQ12EoNe/rsKcyvTxnd8X5IvQWE6pRfpZdXyBBvepyne1WLJW3mPrpxWl2MAc+JZH2G3z6+Cb
R9Vt3EIYmRgazwGkX7SaVyTubtzTfW5ZIUwvrV8/RzWZTnoFlK5SFsV9PIcgB1oudcdq/2K0koLN
yk+je9sm1N2FFHtNsdxJFiipnJSW8JOGE+gacV5ukRDJUx0xdFSt4pIwBv2Y4ShbfnrgRD9ZF4I4
0NgeIRjFs72/8/gXQFrfw5U4PAeFtz9Uf4Kc5KuZMv2TYZZii5Z2r4wXno8H9/P81w8Pc+/6/804
d0c7hob6VdcgwfbUwp5PZsk1dznuHAmDucWkFKtgLRs5wJAJlcoBAAVWnhbSOYfb03NDsMQmePXk
KdwHsi6DdrrHAOaDZkpnk/gollGiU6VIpdSEccN6GtmhE3v/0jKJHx5FBBNNMCakrWq7QwZREg0A
E2dl3QbDasxfv3Ze7HmZHXyNhTYwOUghNGHzw/CbrL5nf0jLt7BHZoL48ocbBHcVFoEl6ICmkQ3g
KdaIZDdaqELi3fUSoCUmnOBn3yEsggM+GBg54VV89oczxXjugwPgbzUM5iUlGcWbvcHmUiAvXSql
4UPu3W9P6/nGQiyhGo08KCImytRmVxI8i/GaoSEYDiI5sCJJ3Rh+u7GVO9YshjEIHH01UdiAD5QN
WLWt7gzvDl4qs+ExC6KjY+lTq9RUkXN8gjdmzLemYiefBj5w5jWep9DiypUODqbf5iD/2hul66eV
YU4Hs180BmqG7h4WhnfoYWRy90cWMfJM2/CZDnWUgP1V2H3Npv5CZleHZ2AGdahUj5tWXrC7wIXV
3SQMAobd2F3e8SBzQ2r3R3VTRWvnW0R5gj7k5Dsp2Jm4HEqxkfPvTKWNTMxz0jH+GBY0DxuJ1lzk
5OYeDz5HvhKCWi4vz1cqF+MCe3dQHwUI0UzszSVIH4YD+KQ1u80InBP0sD9htfFjVYLs/Kt0jcq1
OmHDmkanNFQNNs0zfreK716NKabDsLQmTn2qZYSs//uqmgKKlqJvNAPbOw0/UjG45gkkKN9AQccN
cKfah1qC7AaULxOdnzpAK2BP7/Oot4XGESNzv4K+DGH0LF/Q1C3iqo+RM9mTAIPQDBuAjIWadtEh
EjVY5fsKeLi1ebzbSuNW15PGb/zGM5cmSZgdJOZzWXa4RmR4LkkkwfppK9vczBbyFDnoozy/QFgF
Xz2JJpvysazu4/RtbWT7jRi5t5uH6heMhk8Lb3VsKCCKCl4HhcOA5c5vIhe41o2juDRsVrPOeZpS
WW9Lv8JQsW6ENM0tQU0EQ7916fe7v1mSJScdZrOhgmO7oVKnEmIOh6GgYgB3Tu8uLqWz2NRIFlHP
n24ulQfBUMEImy2SqldsqeRDFMKgu7TcCMXSR7O/N/FDmXdieDcXhsGSxpamjvaKue5hcTOcQMRE
556gEh4Pd/IBdTQk0hStC/O+4nQsBY/DhF3rJ//xpPO2EoOCa1sLvwKUcUAknibvV1duuYVMW9fr
ZbL2nXj88ebFWtTSqechO+DCN4eJdYZeW6SQOGMRfuEuCr4d+5/dP9gE8I6UU2RRXiPZHVM5KZg+
1eCTzziXyK9NFP+daIkGjxZ/UilT0AVrIxxCrG56MtIYtLIPUtbtJBouzxSfyRND+P1nObQyjtbf
BK1Vs7Gq+x8J1v5TVdbS5U1XnMz7+hh3hhHN+xKZ1ALyOssl8tX7YMRyQX+K7198XgsOSQQgRlge
Q6oq5wkYniPs4NlfqEkEWPAb4hrOjTYZsv6s3ueKQOHhsvzPMYuHDkMSEMy1D66ppQ3xEaWXCq31
mTNp0uCbBjYa2V+ouf1vHBVKZ4hEP2IquPqLT6mIRO7OWj6C13MaU9Z09X/oBFiJVke0C5QUPNB1
NWgTOjyiSYMnO/0rB6UVMhleX5e0v/FTZTATNGpMbNyg3B6bZDlsyZJUEp9RQZqLEhI+u5hrVztW
0yummHg7Q9MdEy0gV2jC3rDZdPNgEVPH5tJ5MXTQHjNJWmT7oQ0wAOMn9sYBP+9g1YP5uX667ZT/
+bMmGG6z4JRm2yM8CEOBSrykmCZgXMPbmxqlWoLowZjUramO9Q6FXMkebOdi5mlRjeDITGaGcMnQ
mymXKr3FPOE7WvAE/KkXhnL/re85fYcAPLQ5crH6w4rLs3i3GpK2yhraIwgX4pWQ0z8dYVTmCnIK
lQZTpNxzWriqWfmvl4h3Qi5U9MPdL0X4AKTD6OdAbJnPeZCP6hP12SimsiEjOB1pK/j0DxAxoc5q
RkepQn8zuOxi0f55EKhvzRPPXZRLP/VPQD3auczLq3CSw6Zc/36RqDzNbzKHbyvgwo9nyB3p+d2s
gypOhUK0j6HVDsYxL6pv4TFhiwmfDy9rgeGTt0qWzW7sA/Epz2sL/EZvcalmTzg54w+VfGanm2ft
RAe5w0xyWo7xOecPcC0cadma63XgVXkLelgUyScqhIOM99s77DtbgFNkjQC21La3bRyFKrSL21bw
AhBS5X0t5K2D5bR4BPCn/34arBeIL7Qr4iwRCY+1mpHwCOFvLlRV7diBhLgAznfme40N/MRF1rAi
krkWWqhVNbvEmo/I2x6Z3Y6l7hXIPV8c4XBH4+qrmNEeLDguBx+/mJ+yR+5gu+odW0L7bOhmnKEw
p0noWaFGyca2QIwVpx4ieg+2ApQrE2/GPp8RPG32CXeT1Xqyx24N2R9A3jj9VW2gzbdxFCejl9e2
BhJXyk13EkaetXrimtl96LIqep7i7XHvR6TrGHU3F0/xYo49LAXfiG/VyTqxazOq/38drBiT5wxP
kziCmu9vhPL+tAMpHITEnbwwYH7RUZSh6DDn20XFEEUGThQyLBf0m5tBLRR4Xi/y7oKyydcG/h4j
A+JmBRPPJMchWJHAFeR3O7moO7xcQB/DqopElesN26o3y+6hEr/+v9I8CAJW8j6XKCmYAVr9VEax
g599dwUp3XmQCwrbLBarJIMCPJPk88W7kArATHQRkc/usqYOn7tcExk7575kUg0m2bsHpLjvgyAl
Zq3o3c1rRHqncbZBcmDAjWYxg4ZXmEilnvKjcyOaKFV3FyvcOm9EHi00LzS6X4iw16MK820vIQ8e
oQuUmtyZ1RZ3GTnhXBP4Eix91fZU6uAy60TVw5Q+rRyV2bICNL7h9s0obVHjmc5JMS12ksU/ZXHT
IFhVkYjz5wqaHQehR7N91+p9ejbmb2n2SlAoLAsXO3SY64+K/eV3OuFM6xHD3DZuIoKGRpi5Bcrk
w1pLiA0e9c13KZTpIL+IiVF8fKhPyGDwdZJl4nR7QF02TST+rH85xRmiHISdmZyC6qIJNGERTKmd
2+/ZO583bT0jK846sPBHeuiLEZPVRzriiwRLENSC0PyJPTJEy80zV2sDz8AjrXl9bnNutrgTrJCU
f9NmzZ1627El79JQhZgN2tE1gQ6vSxHgcqYHy0iqSgjALii5ZAL9NeYXTwZOklDl/bwrlGFXQxbG
kHn/k9ThaumYa1ZHo30I384giiNr2A5iBKRzdp8cz24X0tyXVAgPB0ofq3MtG5Y3MvHa+q93P1yg
Te8i/RKgEqPq2iu6WcgIZIgS7z8u2yAhZ5tRa020j7lI7ftypq8ChYTGsE5vRbwqgiYO2Bz820Hm
RSO33sl3QtDndwcuMUNx2FBxG4uCX+VnerV7hupNyRnTKt+UVom+5mVMQScpqKmBQMQ7jiG04HyF
Bu817ChLwu4kxXHkTSRwBGQGb7mLe0Ar7WafDl5OFWBKMYuiss7dDZan90wKYPwMnq342P827VLu
bYXQqC0Fnj5Jsb/JZ6Q6+9Cn8TRXi+mT/A/ws+WlWfumPDLo3vjx6CRS3n8R5YOdzBggAP7trvW/
TsK5Ujx/cW8oz32Gzv1TbwmFkWYJlOLNk7njnl6PDV7cb/WJCqE40uHEaeQF/26n+GOzkeEE7OvL
XHFRuHfRu1X4UYzHuhfHbIQRSAMwROIUyR3guHaqedl3g6WBEDEddKSapSvO6UApp9jQ2cGq7Toq
heLeBCi+MQy7RiZKEQsgEHD7prqGwhYjD6MeGzpqW/wUmTAopz1joQUXL9KZIc/sL1kVQ9VjSp6B
hW0UiuOm6ws3ZD+NetERr9sEB7ucgIJjuxnqRMAAYOobLVOm74OIDyXzUxokgzAU/Nygi28sAyWF
OJ1LlC2soEp5/zKvOwFiaMEK61CHXicvH8+GzHWmBGjj4Mav2TWUQQXx4/gKNsbPNSZpfyX8GsIp
JG8/RDxOol0C7H14qRs43VxUVe0YdReGKKNno5SJNjlhWomY0m3v0xuxjcebw+FExtuPKVEnqGQU
jB7vuCxJ5kJpA31Zo0NiKFqGRSxiOKAVKu+wREMO1z3NfJpWW2cpoRJR2Qb87K3hkX53NsUeY9c9
PbEoFsdi7SBVF9WM/QD5lTM6Kqjl/dNpZVaU4M0b7SZzEGI/0mPhndpbrROKjBG9WRZ258+8fD8W
283rduQsY9g+ExmxWW8C6QAAPl003U+MzmQqx/RAHWyPh8chok8au9yJaAUGmsnEB2WVfjKyPtBk
M9yodfwEKYaONJbA3JzPFMUT12NiEflU8lOsNqo/2yggwlUBm+sU2LJTmLD6kAdWz2gfNAQvBy1y
dNMqSKDW0u1DRI5c9CkbTCNhYcnkHAWsCqS08eN3KpfTCae8bH6HMWmyJXbuMrZwKJ5Lgb/Q4Jyt
aF7iAGSR8mjKjX2uxKaM6ZNmZ5l6PMpaLSrW2+3y/GEwWfXlx6XsKA4bbuqbRbuMKXf/hIWASdYH
kqCQYREkkY4jNe8R79yY5hVkt7Vhsi6eGAp64GVJK46OBLOLdLkWbsXuMnu5BGe6qKoy6dqgrBP9
fOmofTz61Ot3r4vIc+U+ScRR5A6uEe/iBcdyuhDyqAGIljb7lCagOfCTRPV7pEKb3qiJ+Rhizomx
oUwnpX3WkHNef9e3tI6udag2knmv4e3NfD7s+P3wZPgeNIGqhul3RdFeE4uoPQcVznjX8iNYczgj
6U3aw9jKlQeM4CKMBUFRCPAeYaloIaMmYnk/wrzdaFd+zcNVbypp77leJ9ETcZ3w6+XS/7iG04YB
omVCK3MgjPacoQBTnrmWFpWs+6KX8VTBjWCAlOeAysQzxS2dK4nZRPa20VnVODl/VcfJtV68v4+5
3MGFj9wnfRGiunT7vb/Aqfe3cmx0vUNoPEvkW9Cer/IX8NKlQojNmUZC7gK1Kw5qRaPKzym7OkWc
txGE8u8vyX20MSbfR14XH5ceJflFNolCXbRFUw/TGTitSaTn/V0kGo0xkHKTkRBRX0vOrggSZaTn
FmobPx/s7f9VYcCOHxXZFVZ6ShTTfI1am0dAGCbYNFP0lwQYz6JR2cx8V9e5X6IcztI9BybIUL+J
h7rUoq5kjDtzgipuJiVuiGxRGrdrI05c2WmF0M2BpNJVGFtQ9/4spllkY18d7glAgE3Rsl0XHfBx
mUZn54muRJpzSDw8uaqKVX5LnDXxgfBlj5bXqccWHaxQA88DiErNJipFHttpaAAlVpym4czMHgxG
IfRc6cdnwZllv7goCv1qCRclQOA/mOVMXqYYAi9eAsaW63G1ThSWXLQTfuDIkFnEru9UAeF+wTMR
XJfr9TR57lo7r2btJfc8hsUnOwqJlgoSeJMuS26CwQeb+koMVvxTavpfMeWEwELc1vTWujV3luxA
9JjFBdCNC6RbWApUPLOkDF50mpeXR8ueOzchoQAsrROVYfUhoapog72BmmWMBWW739VoIy2sxrCC
uwlaY4wwW7yRM0Rrwz8rvvspXOdkZ8AP/q18g9/ZB8nJvUmeuaZNd7dE9D0S+9cVxgTBAkBwf8Lq
dpATY70x2q7Rt6S1hT8+hrSvB+h1jzWlkYTxwXy9RmkVzpbISy2K3lFsMF7Sn35QU6laTZ55JcGU
y6UinUNLDvC6HG7jBMTpfAjsTKG0GFbQgf7Ng5Qz17rIQmctiSUZsXqhmjxwKqIGb4kZMBk5F6oZ
rmHsXu3Z62qT6CuOPbT5il5P2+7CU3D9habA5r6VaKLqEsBB+QoMHA5xgLqPJA+u3t8drQuqcWv5
BqRmZgeZ8MnveQiPpf7V0BP4OFFs25v+pYbBZbIFrVVeEgytyHhbv9+cRdZR+PKOlmkPbGhzf8NK
1VU46kGLs1q0fKAWwU4l4eURkPp4Uy4JKQk6fXn+FsPvJI5lMDEsBAOHjP0dHG7iTyHnfL4gLy9/
2sViHQ37B+c16tBlvYxziv9N+XKcbGDqY3qxpbxTn873mM0XCYysgZJoUuDndjiKhPApgF22PWqf
81Ex4JnXL/Db3Q2/UhussCiTKAnHivh8/cMSv/JIMULaUwRHlnSf5g8evJhwld90SnlJTJrx41Fa
b1ocN5LwimNzkzONVBqrgAUBy0zoJk/9hbwpN2oAaKal5lQLpX3Gr9EXjvb44Nn6djYysqsaWPFs
kAPw4fNZbuTek1+y/hjgeAHn2d4mFZdx0vzq38lkmihreFoh/zS1EqgxdsRuz9mtkxuKmFQFTvRk
AXIA5pMEjhyf7OYzx9jR7E71cWkDjiBvfDn+jzy5tbnhzsYBGeWuFDZVN2aJW1WuecVB6RKyB4Xl
qtAbLmgnJcJR4wxMzzTtGDo3PVNBPFHcGUSlozYYUpDyKZ843ENSEiQ9s6vuhqdR9PMcsHIHFwDC
O8mfeHqs7iTc5ro0qryALWYrl5AR/fS9vu+q2weqkPbHuG57wuBDPm9PmmWudIbj4PW0oKaGIwdH
zqoZ7YDBOZ7Y7qHIHvmpnGc1VZzp4/NyGtt4+DoW5cVQTNAYkPMH4QCPnyfsa9ib2mzMmngMCNsK
tInFlbA2cbw4tn0MLeGtq1qfa3/4w0lQLEkdoFxzegZt8D9cJ6WeWKGIsqV0FfOzipb2UIkd4oj2
swzlVzhYOC3Z80gSBVVPEorLunfxrnLOcnKumgrXuowRZ0atRmZIHiLjEmZ53Z2xNrEsBXWeOtH5
vlo+R6s7G8f+OjuRnN7U7Gx8bQSVBYDyyKyl9MXaBAz2QwpB/dYf5rTZ2EKYHW1QKdF+8DvJBnWc
yJWkemuuSoqNg5kreOcji4lF+MGUV44sFDYkD6hzsWZrJonGT9Hy/28s5FDHs+0/w2jd0Qbjh4Gr
ajEuAsryWBGuvJLGbGMEfgzCeWHs5hHFvro3dYJSn4xULXDn4/vs7r3aWRB+elgiXwNKh81QA99I
mPsfSMcmLXcWYB87glK9oaxRNBR5GnYhRk6PPvFzJTh7EjAhpmYQ896bAg04OWbsTCXl2GqClCUv
SmjhfsvmRoMqhBCc7lYbxY+7wE0hA7OgrT8EASLdfw5p60NA82U3pZhxfIx9MJ58oYytxs4EzXOb
ezeCVOQRXDiyTA95YwKhmSuf/dK8euy5vJH/KaYJJ3SDqcTxT9jaNBT5tja/1uxeSIIoJnXbgyWL
9R9rJc57r3kfjhZsEuNbfMz6tbijeRUqcD+R0AOwdCqRmVMpMPn/LnP1HHfgE0BSVXs6/4HpK1ti
KwOirFA89XFOYD/iQqz3Qzg/dXzNs/kFfB+6eadNCy6l00Xz8c83434W4gakyKlZVTDRtajk7U1r
4yQkrmAKG8uxLoth82EK4pJ4dMSXnvMxFOiEJcgxK+4Dyl8aE/jvFI0/KlEw1f7vH8oWbXa3II5s
hMZgOZhstt5z65U5hgYta/gBARvmw90yhoORt0zunDBvnrB1Rklbb0aps+qxJxkDzvSRhIM/hoyX
Bs3lx7lqTLyug3rtXY/+YHnLakvfbG1Maqf+RTMoP4gYa/IJC+M+8ypnnCilbwk+OogyKqpwKRqb
J8Og0KEvB7/UrPKjE7G892/VcdxFeu+H//DUmMtGFmyVoGvEES3K72oUI6phow+Q4Eo/vsPtVqp9
vwb+A0+wYKNgY9XeCk+a5B5XDN6xdYHcCbPWyimvyG/0m2xxHpSG+g3SN2gLSXgTkF+e+9zxiHID
wguYrTaJ4LQN5ai/qx4ZSCVpDCAg9lQqCsdvUqasVsc6oF1fqcPhuTduP4mhKlW/cEUwBlso6OCr
crwWVvuczf2OCpH9IMSnOa4KnapCaabRTGFV3Lrj06gL9eDk6cKTBSy1kP+hXBXPinDh+JvUko5i
DlfjuQ21NVOL2RLgouo349TRxnSIUduKKMA93BGQHjCazhJ+Cv/ZFUsiapx12jUZq7cJZ6AxQ0Hu
OSeMB0dXPF0Cujj1WOnLkXqABfn/lYVStPqtONAJTHLJDGfKv7DRLumL1+dBTlwSiW3zkVwGj0Lw
NzmeezveXlYXipbP1UfZaMbTplMbbk8sV2m1nFHaqKX4/xMq/OoP/CfSCRSJMQWARznNemcDtucf
zWK/lEKvf9Qqt56lt/LaXpHso4yS/8UD1lPQHL9x2FrGyfCfI2pIRobqAwcKG1iyYI69iWeMMxtM
qvTPkSa3xC+yTc5SKWc/9Lfyxdvmai2zCW7cgyXuc6InxazYv0pweltrbjuNA/u6KKWmaRNYq8qP
cqqV8G9tAyhZRApfE/tLQzQvM9DbCI5YRQAGmA3nj1MJLcYC9j552iCF8x8hOVJprHlyQJrvN0C1
CO0ompFK0hc5WENKTewWxX93afjVTH9/Ju7Q2xw+sAfZL41l7gchjxRtnJESIqJ0klBsNS9tmFzs
ezCnIq8V8e5Nr6Uk0/ow3V3KFRi+N6YAogBcGspS74XjNOjKUpObPbOPTiGBRx6BkMCMeq++LwQB
lg2pzspMWjV8fKV32z+fDGBewsIrb530PIlDbS9nRzlPVdiOCHr/Ijm3xaBA6hVAJYq1abs6wEX6
VUVpeV3esh3Tr4Q7sUSntYMbQxN48fbHey+by00iQCGfKMJ8GjIZyF0yDajPERhrJzwfCNVat6T6
ctsbAeftQ6SX2EjTHSzdBXThSvXbk1sctka4aWs1IU3ehOk9+s35kcpkvKTlcbWF1PH2tI5MeWYR
cT7DWhchhn710LqVQEHC2XH4wQvzU7DMp/GSaewoMDAxY/Gqwibo/mMkBm6ZHZpqWdi5AnxzdvFy
jwfTL6IM4GzxoyKBCByB33JYujcERkcEpBs5guogTMYNqVDvi2utA8EZN4Q5PfMZ+R/CIORF1+Ot
lFdTpx34bTXq66xGgqyFeubQlaLUXxTAjYB2zPdkUBcveOkTH++xYGs1brJXvTe02yGzSDbUfMEe
Px/ejc4d/JIni8vFfYcWthNbhHFS1VvuiXqBOEndHnwp6NyGCRHo4cG3bRHtm8GI3VL0ivqkbKTj
B2nn8+Kjca9lexwDLtGr7MkLhYdrXh1ofdJtqtOlB2+7anGoQm/75aqvlHVoo+UcjiMcTvM0UHbx
lv8Otqd2xJwUdOwyPGruOolojY/IBW6EeokG76gKEPmG1qvsMpApw8umOn4wRyj2z8Elov7p1xs7
s/UzwOpazIwvqtiUXvMKSBgsPZgzq1pHKcMW/F92IPC4c0Xy2yx5q/r7p2/A/7xM6MdWr0Rco0iT
gyCH4JFdYFvrfk+zqmENKZ93zDonusBwGVuDRGzluJ8v5CVMXMKpD+ljeFmwKuoNzow8Hgztgle6
YefqtLF4DQTknS5wBVY6p8wyzAcgg5xIExoNQ3r0tXPBrcmQMP+wF73QqIx05FhVpemBFj3HaHTz
CAVPBYvmmKLjypMNjQbSgJ+Bg2mLmbdAeD+y7NOmMiCHuOu+pn1gLRmMTyWRLaWGzpQ3oqtpi9cN
wPt+JUAGWYcvCKtOVxo2Z78cuzgsiGzpEVY0xOmDZg533Vt0pZ1wKa3I3QuWyf762yZh9gxrDEP3
lc9wXimCoqCGJZaihoGfxJwGmKiWZOzC01ann47lUR91yGEaTAoISgYpPBkDm+q9IINv9klwsI2h
JvTXS+zs3Sk6Q5aJWJbFrk2wFkOl30kwiKyYLWYRiAHKDy4c+Scer3y6z6li/Ua+3fZ38ln21L5E
klA2h5hNJ/RNfML2s6ro2/IcvSwJNBoE3gvX2Sqq9kZY/HNmO7N1ecqaub+T/fnnLeAQYPPYRyx/
W2fK5P5z3NqQFDhGsLXVjbN0tIa96cd2Oklw0/AGB7tyU7KqnNOlM6/vEWc+GBQqoZyU/6GXUiec
H/0wSU1eQsXNgJHkQkd5nC1Q4PyBuzaz2yoKRHfPebfrkvcbIvdPZ+7+JUvmfsmSU5zZH6egm1G3
zAfRCwuYeaxzBLl8vw2tQRyvVqkERx/Nny1NGVkX0sON+fltHTM/UtAfKOtVDGvHPY/AmypNHl6s
Yb/up59lscetZZRJ+j8X8iHyQjY044oAGEzkDY/77K3KRk5s+ceTtpnA5nooVb+wdEa5LvGIoJYZ
Yw0IP3fUS/CuZzkBl2T3YH38jWpvjuijcihMSSqX6KxVdY6LkPt/6woQNedCUUZgfn/IbTLzCTuN
phBSaTeUYuAY6UGScZ/DpnrmfisKn/86jCobVUN7/Aku8ovK//KM6JSjgBNwcNeRevXcgN9eqKn6
vgaRKQWinLjvowU3sys4FRJ496ZlRT/47SRpxZfmrpyJ4Kh18gv3Op+H3lig8ilFfVT8zkymEImp
SgVX6Xu1iZFTsu8qhl6BslTIQlrx2ACHgx8fPwpnkvZAlOd0LxTZTpNAnG+Y0mnb8BcruOSJF569
66sFbIWaXbn+kOZmpfd3BTO6cuZj1vzPml3z7LB5r8rky5CBZeQgSnAMoNnrymho81OofhModKQz
XXkpjYKBOCVzFpVGy0C7dDtAsQTgFumhfoFWE8jv/lbG02PMMyuC/AS5T5WBceTLk5/aLcVRuFiX
FUEPQDurARgAq4UITZLasiQXWBkmk+dS7M2OogIVPTYbPm05pxNQ2dtR6HOHJ/EskJwmNf+d6aOa
4UaS9l9j0XqIUlgcyGOoSfL++4KIlrTZoQswihAtAw1PcrlZIu8Jef9qKquBpYuQIY/bNV1YMUOi
aRiZGMtNR+hh2dATc+xazYta8W0Sgp8RoktOfsw7wae6htFf1XMzOaWim6wSRow6+ASGFIVxk48m
XPFij+PipwGjYpuhxyKav2WtUT78AVqcJZ2nn+YcXBhy/W4nidwG7Z0ziNHpErWOb4l4Yt+rAY5N
sGYvWobC4NdUSwkY5vrZyystspCGpB2Prpn6W8mds0qn76/Wkw/UbUbA1SBzzc0WvKs0tbG8E+FX
m5QmkV/UzgSaOxvsIKavK67DlfzjvnSz1AK89nvbwZybb9U0gmyXKPSyifPwEa6oEHbv1kKVUEeA
3aaDU1pqLTw9bmgDvnnc4hEK0j7wgzcAWyu1aGXa4vD/cMCipgXqkFZGDa8ESar5cTzJ8k8C2CrI
JjbspRPR91d96LUabHfY4vf5WE9dCzsHhZW17ewE+7XHRheA1ZpdmUt0mPSC651pm1XKS3T/6lnc
v4bih/MlU2n0RpWm7+5pdwY6gJZQcqEQdtP8k45V4HWVJNL5YGRUR6fSf9j91I1uHUVgbmN7/at3
7FMSw0auvlSn+Vowm4sNbjZfDwWjKWtt5BLxVgrRueo/O3qDhy2j0cXvm0O+7TAJpGhczfZyDNwH
6tLkGyfb0cV3vYT34KOXTEQo2rMC3BByoS1xt61e76rPiI+9AbaafJU/CHKruvrjD4GbYRQf6cYg
Lsb0nrnmbeHj8hi1PhsA56q78rNaJDuBjVd1efflvgy+ZpYf5Wkw610FOv6055Olh6XXS6y9tSh0
ea0w5o8wBS1lWCzy7Q1Iz7E5TH5rl5vo/nsIw9xjdRoW/2bFEM7je4NsX9DXBeP1AJU4coT4HxsK
ydfMF7Is1FzqX9MJMIunwmgE3xVzli8a51I6hgxBu26D2oIIYXmR7Mg83WfuYvsFz0XHRD/zLk1D
DOtgbGyUKKyHDCFVfPoW5rj7oa3b3eKEu4++NrVJkyVddzRTNTbtmVcpSp/Kaj+X2p3KjGJi3rXW
/8MPQJXR/4yw7Jk6308KkkYMuX6NUR6SGTK6P4omWQC41LClBOgympw+eZvOxdyLYZ2/9AcN+Eqm
6dd3p7UiyLbM8YKneTySlsYbtYLvlRQthLXSV9pK9fW50g1n8dwHCL+jp6rOtwxpf9Fz6IHRNU4P
GxzWm4fvx3nJ/sBzgPQthIo6nwV9ZMnz3PbKkCIq0v5OoU/0yoUn57AuV+Bi8H6Mb3LbhyBXVh2G
TRKTjib9k5enzJtwtTU/4Axp1xGDyhO7Z9YjDHDNfzByOTyOHzul3Tc++Xpq/QVTAdpCMpxXHF0Z
K7bE7EkMaejOfO1uQ03SIksSjr8OTdj81jVk3toqGusZQIizEI9Ht59R/8DmATCK3zSWz3qFuSnD
G9KPwWlp+KE13bQvfD/+dQJQ+H6cN30AcKHQG4ngg527VyiBSsvjMjh4kqSC6vOgokf3ZSseaAHK
btXPGrqjWYB7PfJ5q7UEnlVbWRtRsmrMVhpYj0iwwquFGm9/DCbFXe3MH7DH40AEF52u7u7E3TyH
J27OUXEIeUJmDC9/zlFoL/khdNwyT62h59BUhMaiYa6sjI21gl/uQjkZmGlrRijHiBTwqzUtxGXY
rvN1xFc+sHK1HfIGDlDZ819kaxLaVj8LoBNLGN8F4GeJrcGMl2VMgRjWMVCJFWm0/2tY75QeLMlD
+Jc6QaOy/QmuBwsmHrFyaGPxkuh8A4vFw+ZNMJlCEH1Wa2rf+zoGuQvr8iidnM49agOaz/rG1mvq
gaMlJdERR01CrZSlcZVJx4i9+WUQxYXRp1FPCA3Id5fqnIJi6MzLUBN/AZAt0z30QrMBKyp+5NLZ
WoDZng7lMwbUYNdiujbC0QYKfIyI2SkbDOxJp8tu7sK6DS6pRz4fTGg4qam2PRrmHjdtFE6rnV1E
0/YmGK0mPPK06r7zmS17uOTu2GJ0PkAVQwhx7aZGCbNlDkzwLfWGMC0DKz70XVito1+u9jZG3h7n
NmBbSeP7+WXPHJ6PFBdzif7pWpUmjkBF0f475sQlmi2KJzTY7pjomZpIfzj0Ix1TdTnga00pa2d5
9mhU03/vTe+RVrp4QQq2JVoNhQbpKtxXVaV+ajFDMGuNNNRXpW+0oq7DfyI9TgaD5iMRGTQEV9Ak
tkLxzctCT4upCbeWbp1L/sXuq0794d6U9QC7icODpDchzgYJMMnCCfP0KkjwtqtX7GBTpjFs8ed0
r6hNKuXrvJ/6Sg4zlzozFrLlD56Cu/OWWzMElAEreDhzMdravA4AH7g5V+XSjx+7foizrVsI0A0W
+0KIdL6hQ2LyuoJYXbz7YHVaGseB/Ieo1CSdHjw22vToE44k/mBUHWg1ikY7cMASTl11a4fmolTN
nY7IeK1+b6VKKvBx3f5JCAvbM2YzoilDIgHQNoXU/icxE4XW+7D3Ccy8vWlxT1OOhPNdw3iSsYuB
57fBICxY59zPQOyC+P/qZtQck8VcqzbYQc8G/3GuYkrRMxVN3ka52PnVSLpQdbMfG+99PlKfG6N/
LxCKS2t7QdUSkXvkYN3PBqeYS5uwwMwTnYYkCq/x0baSvvhf791F6mEoi2c0jVDjWiyGhZlIgxE1
9QVeR5N4nEbY5fI6vFYqR9tOFBtYo4iSWBYr54iQyDY0b2+5BEOyT1LauHzHCFDHRmRA/VwET6ZJ
rh5ATELFkhzWiLOKJJ39HTttIZVrsFTlsQYBYPWYezHLbOYJb00oyL+FL+dhCNDDJrLwacc157nS
a6nbsRlW1O9D7QIfiAh08XGB4u5Rn7BTrjKH5KWGb1g9zmYAHunX3vk6BWVY9jyKUg9jXACtxQCR
0HowI3VpZrXBJTJW+EWKNd1cWL+SivtsW1CNjHdKewyVqK1jboKx2767ssAynbX2qzm/zw34kPMm
W3bpgZZt/OyWc/XvzqMuHjtCAir46w2+GmUVuxrUMJzDh3Te3vwtocKgvHTQOMYLnSWF4l2Jn/8e
uxKq53oYbVuWUMUchU/p8irVUMY1CxurICJ22cHN1Do2ICQamtrzpz/K6+U4HjyInA6YqM5aim+S
ib5rUblXLerBK2mX5hpOU4PwJMG4ZMo3guas85d86EJ4h9BeWfLHbidG+qoBw8xvhGZY73vhkqKY
ji85UaPgP8oCFhW1DvyNcjgFtD93EQ0KMVQv1wBSLCJBhoPvAfh5kvNniQyCHaB9YBbx2jC+F39z
8b98ZRSBVn2sOGvl2LzMFWcTllr32dVwPZ0S278nHP7fWpuE13hz91Ay8XhePDI/ntZSGby+2slH
FdJDmR5q+XZNqxHapTNMdPCumiFZ142JGkspa9yF2iHetCZkGQ8jdPMMzWGUhz7hS5g5EbUtxNyq
mTnvcsN/J8U4/OLFnkIUbc2KGkCVnFbvvTysFRvt1cRUxPS9wnswvJlnKO6ubhmP6Kblc1HicErD
l4RiOCZQmOhWk3IgjvHNDdDPop9a863v+1Pn2ZAOpxhXW5ehq1wy2LIpfJSDKvsG62gWknZvD/E/
jOyD5E5WLzNeC6/a9y2MnyjuDnTP7MRkSXSFZY75ZUGJcXCULD1U4MvZpqjW+LTMom6/PPfwjMTv
cdMeqOE/FglPrNDcTUqr8T4YwzIwyDzxv/k9U82MZNBqAsvFssbstD/hQZ6sZ7YA+0aQlCxQHhMq
zq4avFNTOM64NX6jjV5C+ji0VkUdCz4slU8u44+eC4qg9LpFH6pbDNwVcGlkdIdiA8zi5cFkwEqP
kIpofIgPw7dMYzFaX4mIdUW6sDfq2jRYIRno4EaywRNwuOvqsn8XrByJ4AXjbU85WwkdnsfM4+cv
E55ZLyf6L9oQHx1LsIpDYYHIpeZTJFLWoWINJnse+9zhvGn9G/MBlkaP+pvqCBsRZ/r9Y20AlTQS
WBBFh7K7LJJuB1IO7eUpl8RoSMzWnCn9eLfcXa5YFVFKC7pe/WRD79qTqvGBhsF3p4vxQ6DeGYEA
HbUN6zybRoduqd+Ox5onrhcl9yx2F60e7dMf5FH0MDQC3rTqDgN9FUf1swc4khkBXdDBSw/Kqpu4
bnTeC0/gkW22f6w5i9lcXbMG3HQ8bZC05TljOGo2uE9+HBX21UaDcveA920O8K5fXHJWSwzSV9BN
nd09wmwyOyB3CpP1DAJQCehYfb3B+mXjSmnQ292s7WPPqJ3TA2OVEgO4rAkEnlPKqW50VlnuTClE
ZXb7w170YcULXdUhE+p4p26yqbWn41svNHgunof2qW9u7R7HaxS9RELBH2K3QbYs59084dMoQo+1
bh9EPoootg4L/xRkrgmwX75YXrnw4xWCVOF52Eino/uHKSmQymJbc/2uJrvKuvpLJm2IBh8STcZ9
tEpwai0s0wU6jLq5q6Hje5Tl4kAnrmCsS6HHhtDT3J4iBtcgDogtEKuWXdcmfiOLDF7hN9XqFmd0
rzCaKHAV9UvgbNbWHPLoSnyQZRbSMWxTSWJ/NkyDa+uhqVRwM8dU0c7+F5D1ThTk69tfFNQGcKBX
b3Q1WoXfLRyTgNWmdoFKNIzd+XMW0SDqfLW6bPrdBN55eUjYMzY34dump6EgHpSkPN8OTT12QX9o
H+VpiJBBVAXUoUHdqwpHTKh/39HomSKGBsVqNIKuVDrDOSJ3zxshsX0EPL+l91tMN3Fuiy4shhkP
xX4OayB/WCE4Wu21g0JlpHW0lFFNR4FyPOQbIonPVAybzrPTVd8Szj/u01MMWougMl7nSDWrA7Am
o7nCGRGQvYh25PSmZg32TdkhCR/xw4czeH0cmEMupxybWhFovInxDO2XmgTDrk+nNvHtQ9AH0Lmq
8+gKm1FgbUsb+17TBp6I01wJGNBiZ0cmccJtVbehFwwklE774WeaxkjuPb/6yb0H2rY3XThxsOJR
WWgvEcgNGihNsP0J0wKxTFhR/Ehotgb7hQQgZi1EJhFcq22mkxaNnHbXUK74UQsCfT72eUEr7nRC
JUNJpFunblg1SgmGfUVdsZb3Oi0Q9X5JSLwQqOECLIx3oANMtBLlWcciUSop4Eqik4+HnKzMJiuZ
CI8mEeZrAMi683HspQaJq3XMytLRWcDVerRmTk+bI9ZKoLCx5y82CIQymdS+pkOwItwLU/x2+/55
y2GdtlK2M1QPNLhO6CbPHelPUGU+aSepjiyY6u4nehYSixahg3OcYh/GTLI88SGnVQqRxEvn54+1
pVRBZHUfpR3COe2WkaifWuS/mSZIMrg2qGvudC8yMnYcPk//BOuEkyRzjSvRDxglLg0ZE9aOK26I
JLZfOzwoiujJOoRdqTqZQBOOS572D1RZjrOmtP2HSQkYMedOYmbKZ9xI0y1+rp9YQk2d8B0NohRm
E/76ZERhcShwT6tv25M3qaT7MkNMva8kQx7MXoACV0sDyCBsr8tJsGhron9pv2QvL3rj96G6TyID
ZQV7YQLKAhVodDcxy7hOHmf1UcuT6bcIxlqIQA0fvcTkM6QOEJkud2P+k2A6prPRqR/p9o1SwkBS
ukebL/YqYDxgK9NEHrZ2RSJdGncZMtZWSkki5OJXHrt+lyC/2zwGirWZI2z5MIZuFSS29ePpQT3q
0Yv+btEC6YxCX/D7pNr4xSHIr9vvOas7r/Y0dOC8MbB0npQ0fTV1RAlDHKiTxG7K1ZiBi8NDwizH
JGjGl6XF0AH8UYeZ1ANptUjnrTr0Enrx4xQYxQPf2+j29u87Z5OqIVKiBo5JmyI9pCU+zsGHHBqg
BuLoEyALaziQ0Hy5JmXMhhQA4r/Qnbrr0ZB+G7WQG/XUQ9g9UkdpX9E1DOo+C9AuELZtoQx4/7bS
S9iY/M9MrSGuv3+/LHT8gVg7LVgLzLrVpzusopsoGXSnbx3cmqx8HpsA5BsAd13vNl//SwAXIH5v
Tz0/UGbZAKS2sjAPReI3wpq/fJgfiTMi0wqWEyVYV2ZT4YHiWJc4k5CqWUl8NBHObfyvosyDlLzX
evnKlN0oOUbrhhjoS60rNInH+qkKtBwegTSqWBKUu+Vln/LpcVZeu3jvwYr80xdDPKURnXpkQXJ0
AyBUFEGPhlJCULaF265usuU43De9iIeKI2tmY4REOi+4dFf1p4L+eYYwTAnKBfVMrcC73GlObcEv
vRwJ6Lwy/C6HKuPBzOZqvTOKh6ppieQt2kuiYWbgEH1RPG90/mX1emGPS3KmrjoeSLEcuWdCy8I6
PsVO8oBi4rOwgOu/6dJdEnQ8/yhCM1K7e9rbe/IWYut9R+gWSt/v8f4EJQ50YvUCqpXqao+3zgCx
lbr4cQWZe6mNRRzRVjPsqCK58M06iwhHHsn79mrMHLfY+fKR7LO2bgsntLIxKFCB9hHlAiOk2TZZ
7Z4/oylM9+tL1zs2ItJ/REzYmrRe7BQMQiwH48fCoa5VzndugnT9eEH9sn7G8RGUzVSg2Yd57W/d
Qhh646o+80H82h875xOMaR6mgYHnLaFC9RZBD4K9Nhnj0n+dS25BvxivJ46f2pW4++Rj7PzTsB8i
d9/JB+EzObJCSAG1pv2Gd4DB6MZKX/wvGW6dQU1uGtjg1rEtKH/zHK+d9LRNwgR++XBEvZK/JVm+
r7+naqzKSCeksNylUIflD0QtUz1DsmVQWFXiCR5iY7qmyLCu+/x9zSoyOUkW/tXSEE0HhK2g+Oxg
8pDNM97tRqGZcdUR0GrvIbA87BXbb4L5fvnuI4uDyPK60exuEoj8bRrzJ+/KJGUKrxRSwz3YYUGl
agCvLgzGoY3Dqz1V8BGqHTFDDr6CMi9A45YLLck6NsmebiEQYHAYhj+2AkUe8/9lUUaiCgsLDGID
3uugLt9uGm8M1gHaw6VUO3W74IziizaN/ciFlMwFfnAdYVc5UcsWI8tZRvZtGLJ4WbQ7YpkKNso5
41nFOCWg8FDVrU3LWtV+/QOZOSzwpXM4XFzFPlNbJvpJoW9txd8LGoefEhSTrVkfwH5iC8Pu8SVE
0f7TPCyIEHbAhsyQunFNNWViy9nhe4nreweYNYagVMZW6WeYCGn7L5B5Qm9HkcjhvbhZZAKXdbHx
gj+rBULQX+CWiYCf7Ld/HsCdZXg1Xz+3UfxLcbixjZXVyFk+JRkoIUlVn1T3wceNx+NpLfFouhxx
bmGjzUrgjvdCyPFVDxoLCT+HKRcVu8ngmgVtmMw5R1bnTdHrIatLDLaqjFjtIZwd2m4ns9EAHFjQ
eDn9p6Dyj6SO6npMTG4EoM5IYXPeVlX+b8ODKTxvQN1lCacm6+lP6MQj0vt1kqdD7KRrNenXBoRt
JLe1zjX/pYSPgH2637ecf3GisMeacuqI77N3jg+bWE6y24AHWdtkwpNBZDoJ9etGee0Jl1KcEIWb
mC3GDvaVug+ViVm10ZxwaQqljx/bdEPhYOjd5QqF4Y4uliktGgB9b/ZFiNfi1ER0gQyskKUR+7c2
eR3pCos0SG1YlVJespc+Nw3bulhd68FypewMEGbtnN9lY4N6sG6906wWCAa/I7IjyKHjzj5mZ/a1
dy+nM2lxDGW+hm2/jlVtsvwcPFxUJHrrNyVI5kPdn875lUQ3WgKc9MWV99MSnC8y+9OPc1kyyYps
Qh9l6AWBPvUxCU0Fs0KPS6ij+qIhyWYMSgmLkd8GsjK1/srGM5zHQPYy9+1V9h9YwsS+h82NAXOH
kiWJNqx0PoOfkY1FeBPPd4iyOZZ30+PuBl4Sj/azk/efeT7xX0/fCOYdG9fjnBq4YDamWDkQ+hln
C5hPCkA7ihfEtbdbZiZjiwVef2QejISr3TE5E4ZXRQWLKO4O17EeswYex4mSxQwlTtdRPx6GUx2z
vzMHaJ5c3EIZorZSklLccDMB/AHGfNOzPh5wNAD1eHAPXKj3paqbbfqUtYI//KIgux5X7DDtQPmX
68v+EPqzIN+71IwGWpKBW2VYGJvlyLuSunpPQNiZ89IGZp5lv4bN0g/QURLZbaf18NEjuphqfCwe
ZnEN/ShCRKH9Udj0MBQImcrbwZ5drfAtNlUL/TZ86kqMPH5dXBM8Ede090GYoQd1q7eAf/zPKMQZ
EiSgYWBi4ZUkdfpc46riNzEkSRbp02+257+QtQo80DuGPAA9tH6sgzfzGEur2Bozd5DaI8Ap/ufY
He4Uitl2ih4qwiID6UdSry2Mgxys3fllzv+sXf4binB3wP09nUHwH1KP9NT/5hAmoTc2l0lfSD0x
THCRqB6R3XEjqy7r59dIZYVO/D9Z/O9kZSG9oz/18+d4dIR3YsBEvRGsXrJES8dBrzSf3BhVomMj
exDi0IxhVtsZAXw+oO/0IWHTT3bFAr+Y6jbi5zfR29RrIjUYp/thnejFCYEU7b1IT4ckfLr88Xpx
iOrrpcmSfeM6bfqPhY4iTc98OeDZzh6R3LvToNNJNmWWVbfnJ64NVfujM7C64wsynygiVbWCGQy2
DSOh2jKXXacLpUOIDA33np1mGpaDCuKCGLp/zYZxUrP6Ew+iWoIrdqlQ1PPbO3nW6+O0KT+gzu+Q
PrTOjnmpfrpTv5Hb/r8tNGp+jEzsZwXH5xEYurChY3QWRGGyGTwLVpAShOa1rLf6mCv/0ZdCCVkg
nHF+PS1Bdj9Is1Ov1vDkTmAGPLWrctREk6nLOEH1CNDr8pmz7ZkmqxJK3KnQye312ldwem52FHok
2d0wRki/8tiPjvqsW44d8NBggZffJ8EagcUUXlf/u+pO6zawU7dCcxUg4/WEPevadlmGxEN7FyP8
C6NvmKqwiSyUVo1lMnA2s+QbQZBFf4QTfNO8mS5NyRc6j0lL62fM1j0gWfsTW0R5SVrkLRiGtFwk
kTK0des4txe2LH0iO1at9TKE0z3ZbAF+AGQA5SUgWcBEHJkri1gx8trV5haMdlD4DD0734hmsw67
Y2uN4dYGxcxgMAG9eTZCngVHMD64KhEuRdMHS5zHO1OPGo5ziP9dDTtaDeDZQu2E+NVdXa04YVv8
zfZzA04Cv/Jp84l0qzvJG5dW5TTf87DUoNcJkPLYTEYAmn9uhMqP5Z0Mf0SDQAKPNFfZzr/W7Ce9
sIF+1U3ts8A/qaiQhGQ75aYqbeLWMeOVzjYBr7kJiV9sb+quOkUDq/axCQljo9Bft9BMMzPSGPSS
CDWpUerzeV69JiPYoxzNLbYGPUI99lu7hLcQepdulR/2OkVijYyj8hHXmvaJn+r1PWWuTA3fLPgd
dnV0ogV9JOLi6YMqVdH4UBv3YB3ky7gOqLJkSsHseNoO/umG73FzaR8PjIQh89HyFI8xvDU8DvZf
/ykT28LLwr0px7Kq2WnhAdztwMYO1FgmhWkZu+dcL1hBFj3fy0YpU1UZQnNcWrZCrAuc5acsHDRJ
ka+t/TSJoIhTx4W8OsYwPpFYALLCTs3Z32DxNGaN/71ffo22f9dGF3yLgrROxJZjql6Xxzl6tE69
EOmgsP1TeCBWW+XAgVGMv4rBLPVyCPPcW4ml/85zy/FwnqysxETyZ2Adoys8ZVpHVHZuu7Dwavrp
EN/FtgCVF0kdVHrgYh8PvmEOykvab6KrNaZnfNCzyyfib/WuvuPji7+bsGHUoAbAcbYuMMx/+bcJ
coRHERwAD19zl90tX+eMfy5LCTPCpbLhUPnj9u5rSNAivUEeV8PE7Z50+YypiN646np+Mu00OJDb
8MAE97EBe0bFjloV5O8Iu8MQD9GsxiHeCmCHehX809wZvGltjUeT8aAVQrL9aKzeJkx07HW/ruH/
hmcsPcA/6b9j+qxoSOI/QIrzAZlJP+7kAbTmo34gBtIiJPlR9lOqKvlaPx8u85Y9s2+2gv7A0oJ8
Oe3ZlfVBEvJ72viHMJsHUTeUiiHajM5uN5ibvv3GAkFA6+5xwLwTMoQVFx0L5R5eLNMx/W/1QJTj
Bn8R9BtF5zicvrwQzj0zwqwhA31po4VLZNShT8VChykGxh4toB44o2AWCpVLCePsMzM2hkJeebIE
fBxyd+Nw4gRbhRe3jkP/raH0mWZWf/CxL/l2PVDr/LkNvgXPl/LmRujn2F7a4E2Sf68NyrBvg65q
v8XZGpPjkTfwPg0k48sAogc4s7bfR9b+GkHdXQVJnfX4Nioo9/eOJlVZF5aMIShC9OrYoHMkbD8n
9l1dIedXmIilaNZM3LXfj7iseEeKD9TKO9t5by1iwnGKq0EULcM9PnJTha4NbsRIzSc96IjUQ8Le
4QELze6rE0AOgmFw27gZaWfX20GHU9NPo3D0+uRdXE0Hm6v8/cpVh3Q9KDniDZj074sg5zCBEslT
4/oxf29s1ONzbih0deT1IWB+CIRSKEyIdgRx2GZqFl6Vv5PJkFMSen/R6cUuSmol2RtIZczxKtAL
iT6h6CjNpF2munyF3WBDVd+KoEgrxcZNz7Pd6GkrDz7ecaNah5fBTETb3gAfASglQJH2/GH2rhsA
l4vcIJ9/RhtVOvmDbV6q1B+VxFU9j1+vYjnx6or0Pv55M441BuMncG/hKJGDXNpCuwpUEOR/+Lhl
4hXBF6bF5gCQ5NddrDGX2SV/9zyedw9o7CgLDWI+57EOz9+fSNF+lft5BDiTGsfbRIgVTBsHjmdB
eV2SMd/6Gly+F12ar9eNhlSKHitvZiang9X+X6eJRTHhrYbksAUcCR+fdLkwJlrJXdXYW+jhjiFv
l+TQCOVx6aLyJYxJaSD7ZTpz5/R707sajfvShz2gBeyn0ttmWZA34gzQJIXwLUGk0EJxvR9g8KM+
QhjlIZ19aoWeVk8tLr1Ph18f+Afie6n5XiLZLTRgwmTSuWxxgKU8NDkKxPED0PW8kjF4WOtlnfLO
OzpdrW5S5PUHeysspPC71sbJnozY2PN7HJcCWp/oA9PrJaL6DtM9kPbGlBNQ/ftoRqQJl5cpTbrj
YGLMGoiJiFWgcQqc8VulmbSzrZUysAbeC9WKbc3ZE/xrXAihmhRvAEUk5kKvU1w+69zJzGSAkxC1
tCaucOEYLfN6WbQOB35ABB4CXo7k81KQ+dnKfM0Oc1r37HU5iIfpRbMln4EKd6hHCqYFotoB+2bT
HQLuwdN6WiSeD3LQKHwlV5X0HxuH/l3qr6Bh4sw68FSmymn0h6R2rd70331tXs/TCZkSkXQ3IGpg
MOicX459xlSVUDC8CeHPZjt0y++12JR7BxcuYQm3fnkle0QNuWkipHP9FU7hzvPRR5VXFdSlGUh9
H9SXsUgWdKV0gPNF9TVCGMTxJbbzMy340qSTj7cLSEtn9bhdHsd1oe9R8Of0AgGpltHq3BpVHD7a
Rgx8jrV4PahJsAxlqqgv6yVF1NFJFuF3f6XZo3ytruinyuyTaBRHwQf6I9+x+FbThXbJrPitsmmK
MAqNMdI3RfBvyHhi+Ht8MkTBAPh83lu47HB3vqT7xakoqzLdXo4A+JL13eqwEW+JVBYSBvyixK1f
DS9SExmO2PhglzExHco+nddDgLn8STLDEjiAOOFTz9g3GW39L5Sv3jFIG5pq9/ULP6mt/q4kJ9ID
tTrZVgbIh2/CgFiDu0z38GLmnUAzDPQn8tYKL1txSmI+HxuQL7r/nZRi0D+OJZibvZoXQiFwYZze
gvl8c7Y3VMY5xBUHPedqedsANGfaO2KzprnQjEPZXgHAo5Fkm4MehodgrlFkVXvqTKwlmti3lsis
8/+ruJ53p5x8YVeeZP2zPFNYERZ0i2Wfy15mNyT8583FCBNZA2jVYXrZfSKWLjLtSlcgZkI51wJp
VdNa6DR8OeYpcIDXBtYxzabEnXhD5P6BwCITrXRH4VjvYzp+uVYkNP5VV1I3GaPeqeaYwVoelfGK
Z/oJh36F9N1xVgFN9NsPPmfLuVNhiobR/7ldsraL+VE16rI6JCEl/olePNhKPFaNYpFs5iQBYGYs
eaTlQDTlaOsZ+w39faeLZVI9y4su1/E4srs92DhmC8JVNruDvsJ+675HAsT4WrlTb/AGt9EA7Dxy
9oesjCbCpQ9kUd4ioue+G0bk8MZ7yUgPOji/Ec+7ywFtI98+sUSxgXp6EtX6/OQsHDVDz2cF0jp5
ar30wnsBdgJoB4JjgWNsU2Xr/IZ3drePfPQVDcgD6/HXCYKnzvvPpg5eFLgoSuXeHNmrmgm3xOPZ
ARjHcEK7EsJFY5kGAzaqHX7qrwkXH9XL1kSEUJ/zb3VHwiDrW1UvFZ7pHsW4WLWv5raz9yTnk4ZT
P0wClKiL8tEuSMDEz9ltleY94PChBJXmIe+qwpfip+oZNgJ7hvB28QHUgCjNBL2yR8nPaNAeKN4d
1/DvCq5BdRQ6wNcJdVSUjJnSSEa25sW68rTzbFQF4y5xEQAplH0icRv27yncAl7AGQIGOnuA/7WE
Yl3gHrP8S3XU7QhY7H7XdLI+Q4jk9C0xPNdjsQJOD+R425E6K9iZAkIHAiKpzpneTSnEYnRhRYzK
HfX/kJ6iJbh9FPqcrGHwVIT3iiNbwtVko42CLoxwHuBQjTkB847QUQAcJadP6nwP1TaZA7OKP4ez
WzGhlgYI9XzKccP9AwThVob+4VE5jcljn54XPEqdik8CXzRBrSalBG5+8Q6B3sK3KgpBHUQpp3Sw
w6XB7o8UcKJAHEWHpjiuXJ7Y96A3bLQqB15HCI7ROVo+AwjQ1fuuYLaMwbSCXnou0cLPcSZJeKER
7IEMVpoFOQJzKCLcYHhn7Nms0brG988bmuFbAg1asWiAoqyGDi5AhxtXDVx3EjDxmodSwjOE0jCX
p/W+PJzBiOGBpRCApyPNX99jA2DETde6ipyI3E4m1AS2nUrQwb6kRy64LCMxIPciR3FyOvSw1oEz
aqYWRUgrAW90HhIUQ6NJTXC0Ls7Ohuo7ojw9MTYx2TCvCuaXowSCNGFG0nD94QmvrCYC/SfexIjw
VJVy6+4YKyxCJBHSvLyIAwwLFJ6JRfwJ4X+Vj6zf4LcbTMlAe7eG4l4W1IoXdm8vYc171x10XBRG
ttX2yXOrpCbKrVDdVVQAfRHVqdkCfxDqmtLiVL1RKAgF0DvWgbGaDIE3y40kII04Vb3STUpv56b1
n3LMa2nkuQR8156UGfZRLZNA0IJaZxZbjpMdQKlMMnQOCO1nZwEQgRnay1ADQc5IUbOrTTGnvomw
HEICpSqBoPCpHEV0+w4HEwvVLwuzqlyi9vATrArRMuCFiLCnkh27FFCY223lyZOMhPrE9WQot+bi
y4U8KdRNU98rO53qBru4QfEdEMXhWx8qw6MvRogYRGlhU9LvaTBjdi4GHO/hj9U7jL2DC0/8iZlF
mtRR4lhr5KwBjBkmmGI0KFybCfPucykvxW/+N8vFO/3xVN0addU/VXCIzDijo13V+2Uaf3fKhQHG
Nd7z5U7h/vxh9INfkUxQ+oCYfxIUrylniAHZ5EAYoqJqwFIR5dz+q4VedOxXaBbCtTnEXwKR7dV4
dVhqUAsZL6udPIdUa75vr5cEAux4GUxplGeX+HHsJZAuKD54RK+DxT7lojf2E8kVyNKhTBrorHXq
uOSVpE62PXb4FOUosXOQRNaRbHdJG7RcFelVGMhHwzveYGR/MLXwwUVjtItzqCdPO1hZ2xJLXQYa
BPMZ3o8hb9waOi377Ppj4S2CMBHLOzoNphSXqQqrj/x2rd/t/4sfIkcJQLn6uDUFupzYumJ7ixzi
aOTQbK//wFbDPmnGdVZG/Ra10PpedgOpdcy3eGijX+Ex43mfR8HSlr1UN8Ir7Fepd7HGiZXEkrG1
s9uLcw32DLWRIUKDR7GsbTZKN/Zy8cXeJqGn20KC57Ib/HmSXCJRJNeK8+SZafuwR+4ShSbaA/iI
aOGYjpi8IR/jxNI2ayeUXd9OGAguOnIYt3tAtwSteA6RYgI8KMpFEVkbNVyylPbddYRd9LmBV5w3
cvpEeQr3MgPQcroVj90DJcfDNGxvH0x8K81aLX+uL7+wx7C51AVARtm8AUqcxZPQOeTBf746x/uO
tK2OnVuyqx/zFgCN6KsOwLi1/N4FbMxzyK3LHvPBqPVr6/kPWj3GjhyREIXA11g4wHUaXfhlsIOF
4mZTfHdeC1+Hpkhy5VdmT0ELT5qJiPWRHyEFS6B2PNCOidbYMNPkjCWmuSwGRl2W53Mw0KcZ3slh
aj44gJVs4reHMd9iAG6cWkphcFapaxnTagsiV32f35R1/8DQPLb61W2f1nOR4Ug5X2ngQZzLbwpj
0eNCuVNFVI6GR7jNrRzlfhOxP3DWME9Tc6h5UB5a70JWPFERDM2MIvt6InO5wseg6t9aqnpo6dki
+FAMhNML6cf8kU5ySi2Su3aiORKo4kcKQ/91WHI5PA6K00BJeYoUCKXaec0KgpkGD1QW6zumNckX
jazuwwDqIBIGM0SyYOUfH0iwi6H5iNQACFff2DC0ClrVVobcAUvGDncin0iGBXVHHTAkU/RCRAHj
CNByqCfe1B3eI4yGe0Q9SSNY6Xl0kTedgRmiQcqiLbI4cfZVZf10vU7oezao3qACrI5cDEOsNzrm
CQ38ySN9FFot2ntgcDVLP5oArnp6cSfFNIIQno5M81yXBdfQZHoIUXAwX/vM8HV9ge4GH5EBWW3M
CTyLpb0+qru81Nrtve0qs01oJKWOxGcl/ukUDOX5ABZXql4qzw9JxeU/GPV/dDwIHDPtyK3MXG7C
ffwMfxhNOQObjhq0Wrfbij/A8SXqg/oKNJpN0KKZcPSGPvHti+UBYeT6CfkeHLbJvigabGYLNEX3
1Wjqs7PJY7yAZIZQ9SujwmvcodMt22wjO1FdmsOWsQZVvcgtP9El0iRC9b+F/C9+vS2YYVVyhBe4
NzyvTdaX5B97OsLReUzmQm8TMfoPnEUDiQSHEuBPcqYAmPGsYketUHXVed2olXkhAVjG8SUe3rbr
JpNZeyvM1kz0J9frQRme5R0KFfUvjY3QQ46y1J6DQeUUnt9XkItgQk13rnhMpyKNG/a1BsSuolO4
bTR0OL/IVCXTy5rqRMcPthIFSl9lOjvGiHwQ06JikpISSkHG5IQ5nlh1ba06pvu4tdbL1srAy7Xe
eLW+d+/h01np3I6lfTLwe1ey15c+8qfzn1Np/sSc5m18n6qOZ5Hu7rZ3fKVqDuGUFMcexwzmnnmE
AvOv1K7PFgWoOleh5cPBw/R14dcGP/+g3kAQV0baUp8U8iDhxH8nRZ9MwxaQvh2iOIGaQVdLrEYR
u78XpKB+7iOew08moPgjXccdvFtnVrEpRtMG6SGKvlebU44c8sleOdhxz/+1G68x4KfbYZWU92Ur
QuBtE1Tj9F3vB5oSoBkOoQwI/emPdN5KOSW0u0c5gLH248IKbS6hyUQ4kyzhGRcSImCJ+Q3oli02
fzna9jfTEV5DTd08LvsLJelOoRv0So5oc/5x/sMdZNas83DJ27097jC4/nL4ULWd0EJiVVAcutdm
LKnQjGRrMPe63IWJZ8AGB1jrTRxvDZD82wiLZ7EZpEcbCVXS5d0IOB+RfGoSO22lq6GByaWgFgi0
HOoFfaXpr8yEDSpJPuaCEoWs8UyOpa4LPLz+8rfOJHnm8d/QvWv3uTIstmzLJcNnusrTsDnA0wxx
u/6HZ4THV8PJlWj8Pwtaf/ZGhDFSNY59ZTPDCpG7fIxdwa6OcNeSJlCrLLutlYzXjNjiaL/gK5vd
GZIDMiRhxurk0J6cYcyofJJ8ab9obg4b/2sDQzziYnjnSp0c0JC/5dztuthP+R0PbEjrTZ9ERwSk
COmBY0cYW6j87cvfOGTqaDAmqyQE05hKTNA2Cg/bCJ/daoNFltZ1+JGY6jedHoAVnW0/G73Wjusu
YlPQxqDZL8IFT/yYOjdwk47J5xVCK3UUtx6dEmQuTe8/TK2IkY+MYxlr/73PZv5e4czHwCkHmyq/
tmnmGdcnaREx+FDhL/h/mfcjBCXO2hVyLBTN/zGUSCDFH0U75ooRbAaaPg/pcyEQ0F/UHigObb2p
bQe833+SigeQ3V3ottacI59dXKVlWiGAOppPZQMEC1fS96MwrnFORCdULhCJhC5kYddJkA692LBV
KjVmk/GIA7U50ARvie7qW28sgwQs1HGE4AYxvAcoo4Yh/LuzsC2zXyV8I0ASXT6f9paUCyyX2QD3
WA80CnhzJWs5J0c7EQeCDyiuOdlFQM7s6enH82uWd/6Tg3cNplOWFo2Io5JsC/G3C64x6vKaRszh
Ra33B8jJHEqieys+g0hAAD6UNJ8auPJh1he77oO8erbhbL/QE8iW+bGmduZB6gXBe1ewnCzqj8OO
gDDN1IdKoPrqlvP5bdMFb4q1wMI29YHAXFHfp4gunncEqk7w0MV/IjIo3UHMj8Hr28Uy568tqYEt
uIT2I50oZnb3ORnGJ8AUNa5kf61yOm/fCyqEeWlTnikEOkW+WzwYQUm2avxsZyB9QuvRj1jJGEi7
aD8AR7MfC6Afs6rZOithYABpxp64gWwPFufKSnjjl8xxwIwPuvcMafUFbNtEOEY6RJEtrR1IojWj
Ix9rGvCTJ+QUH/qdXIykGCeZJMe5fbxviOlByKI/rT29c6GAQqXaRZL1GvwYtgGKqco7Y9bw9+4c
NiXXX1NlOnFUMq8suNpSpOKrqaFi2J9lHssY1a0eBk0DoXxQYGiRXODTl0KwgsKNCM2KpN22ykxU
f5pC0UPkd1fGzbem2+MJkR0TOM9Zl8Hb3pwN02ZtwBdo4OxzTneFNvERYiDFbxiz7PtV3kgBpywV
mkM2CypdMeOgwdDW5S7zcCnM3Tvtl1bVUUYKfjJvTLhdkRl767l71D7+Ew8lswc1nTND61rZAPZC
wYnAh7SjclIVp/eGQgGFIzKaGOoQOaNSiSilSG0T9HppKZTu4fJQ4TQadABHHNAVLiL0sgz9Khv8
uS5Rqw+u4fJGgg0Tb52ge3gv3LhPpfHXvnNBOuK6jiBh8Z+d6MsgoruFtYROs8MmxssWsCdmlENb
PD+pzg/TV2AvUfRAAaNHwJAhXJ8y8gykPdKePP6AJ9A/I3idlf8/lhmtL4Wksx971971XupJpSvD
oIeLDknQdacXkq65ZqtJktRq/Z9sllKurRpm/WYG9+llNDN1Y9VexawOJCJ7dx1mMt5hisWZgvLO
NzcX/xKlbd7w7SvkOQWob3lOcSS+ziijXgFY0ofoiHA/2fGBrpe/0jYncq1hXdbvKduSikp1MRWE
e+RbWvGRTE6l0198VZhbVl7uFPUJJK8lVlgKssPccXdAQErNj74LehzxXXdVFBER/V+FZIcj8jFC
mBH2uvB9rXJNBzSE3AphXD8ynkXRQJzfREC0Xd0dxM3YTThxFxn/SCX5abi+uM3oDUN7l7lFdEMV
7y3BhmKTQhbUPAYve5OWKV+04K4kMB+lcMsEFqpQCW+KH5nl5mUrICvFHMOw9vtd7zAQNu+MEv8i
yffn0FqABFPhN9jvaIDXpWjMmMe18SJV2/53w2K7VYj83QzlsZA21GMaDiKHA9E68riHeDMdHMlG
WEoyyCAJRLuo9+DFBLc+WTG/GFw419zRDnVYmG7UroQP7rnJP7Axo4Tc2cM+s4yqLlN0qp/69lL0
LF7a7uJR/CY1VamZ/MuQXOlOQbdXNtOipbaJlakPpxWyvq2BSk1/FPUTCwFLx9IJ1LOpfx1Xx1tk
Ly0b/b7NpIznyRgo4cMxyIh/FIbZcSJqNkjNLp1fcokdLc8CIsIVJkZprLqNNkovu3y9I8kNtG36
5lkxk7+ThuPZ6p+aI7yVVKbPyAQ6//I55r4vQAIoTCOCGCrmSiCYaoOThF/vJbIhwhvjRYXEPhsW
g6stzdngWxh/8gsulnfIXA8Eh7zcbbuagSosQLy2RjULp6mQ5G0Jh+Yn8/YUoiCM1stY7hM0nMVq
hYliYZEcNgKapCo5mVQY7bUD8/Ee/iFTXPHK6BZcMv37tXq2w9fO/k4l4gVtFskP6O9r0jGjMDTW
GLOI5HwhuyEsPs0B6Wjk61b+Pl+aEAxUwjPqzA+lugP1UXBB5LGuK6CETSGH2h3AiLo935cc032X
tF6q1wQAKX3uRFaFBWqV9FdYijMicnXfD9l26GVJLPp/Yn/4FOwCqQh5GWi5F8Ylzy5RrdpFIbnP
gkIFIcIRoFzXVbLYpdMWGh5iFCKmhNOofrszKIy4TZxUsZnhZgfcZKva38/xFKDFXnJSGmsjFhEw
7jjxE0skLW2F/WSiTxda8GUSYcQC5taQ4Xkd6uN3Cry9fmL3UklmJEEee8/ApXHzS69YiD2dKo9r
4NvRZsM4rN5l52NGR/L7qtdBuhedEKlgevUXkAOkcf0a+kMjNBNyOqL/rFXyOhFjhEehIz5PfpZK
K0wHnzCTb46foR3pEK7QOGWzcTl4FoA66Kn4RT0GEFjzsN2yqzxU5g6AoEWuS4rRtmXA22CeT1y8
1VrsZo6rphtM4B7fkEqLITIRNpQOtzZqAPJs/+vUX2EYU/bYklW8u39Oe2mHr7q1K+HRxJ6oyovy
4yTQrfczBOjV+SsfOY4FNXOMqO2qcVGzWH3ENQmaBuutXH1ky6zbvXw6xOVBEhGM0A8l31ck3mtg
UHayPCGLhsf2Kd9aWl10JaWgLZiv0NBVN4A/H7glqjcsoVsQ6Ogd/UIxsGNGQ+n0kooknRpPbyJ7
Dj9v4FU4pQWEmfdTCIVL63034Ce79tPpmKFPuEpXavcPPYErJvzFOCJI/GlK7TlbcA0Hy5+cnXrk
7jgLPFl6wpmKLMJt/m8m8PM/zPJprJUE79xCMXYIrcrRDJXuB3W9UB1jqUFeptGOZRFHOZcSLeDf
BNFYa9P+nRJ9uLbWee6FOLCd4a3w2pgTufPjOZgdxAdWLbLTTwZvPcZR3g6YiRRs2eby0l3NWcAx
3eqA9pRwm7xggWTaRd/7IfB0D4T5oq/Aux9mygxy15tndtBYfvjhpW3IJfBOSYLnd528LURN7aUy
LGZB32WKwPO0vtB/jQ78WevBuib+wSiRP2CBfLLNPH54M72v5IBEolgauvbi7F5zefBqBhS5XIoQ
fKPJ8T2XnCXK+xS9moMMjPRSL7zsyXyItq/+Z2m7doWbnmN15O1d4er7QmkZ9Y48YsXwmqati8HP
qhRdRLUdUct2oa950X1JW/s+kD/cH2CNGAzmetyxxttoofDh1H6irm1D4FmcZ7vkHRBA9v/+T4qs
QpKYItuvedjpdfeWXtTzfnlV0ubSL7NWxAs5ZIYR6SYg80hPPbRGLaGdrl0/KbR3CURRJlDmV8UM
+DGTV+sKoGDXbhmjbjcIeMPlrh4357mQv5y1wY/gWydF1HQObEFG6SI2njdsjGxPpDRDiSG4anO+
0Bt5qWgDZbH58QnZxRbI2YhJHIWazojLQ6zoWxFpZPz7rtmA/k5nsgMvQnQu8Dxw+uLF7ofP0MOd
VzUw53MkWJJA9TXbHXpaxnkWl1/nMZRAlMwnJ2r354AQZL6nzaVwxiKdjEQesfAsTRHOFUVEMyA7
Z81o1JaOQ/CEIbfOBfbxs5fFgrw+wDQjQPd4IR23mAbSlw/zyvGs9/QeF7HK8Zer4J35C/w2rqlw
LrMDdeM4FolBGJtWJt77XA4SW4+066weMZE3P/LENo/nY2R5nswgPK4TmOOCBCTSVMr4NLJReVtQ
HLwCF0EU50JTL1yBeP+2cCHRMi5LIFDtAoCyL9whbS5mNpKfYZYq0gASRt7uFx41hAQKMq/U4MyA
5vnEQ0mCkKC5q1jSfu2oDdwo+il54USXLivjyjhPWXEC88ekl5WYl7Es/p6I+4KZDYK60KRKaqDp
bhi63mMP6vjp8nAe3m1U4e1vqoAXUt/VzL/dWASq7wfRoNHJMBSWS2OFpwigG/g+LTlN7pVOZDtL
RF7EmIHCVkuqZRImj+cVFKXtQKCYVofVOVDsgWluVjAJsdvfuBlZv7LXQfs9EduYwnV4bld5YSZG
cwXSQ3VBY8rW0L4FA1bN7XecrHlWmwGe0/Af2yy9fsoQkgC8H5/uzc73i6erPmWqhVikcRRDeFio
BJXH9+n3Z5yOzZzIbgcFI7pWeK6E6jc29xdB9hq9+vrKueYGpT8lGIgnv9AEfPx1PxWS4W1e7grL
uVow3i8cu0aNgVJdxTkwrHvNSwHzYoDWBAPOyJ38F4CVgJs0lT1SQ9Qq8HxWtEbbvaCyn769kxBX
KeWO3KXPCpF5E5d5tpXCjZsVoyVQ1n726EFOvk8ZzFWIsDdIc5kuonSKGGKxohoR7LlmTRJ4nb5h
l9JII7IeT+8FHUmDNUOAQJS01EFPKIlynr9iFuS95ieYROvi/oihqdkWyJgZ+0wDb8wyudZD0MWE
UnOANV5ARP0Z50zeuxDiTiSDq+bnGsqRUbSccNJvzSDrWRJzjLJ1SsgE5g9RxQ192aI2CI/Gi6nj
w21jZTEGshoJficM7dqjuXHu2Vo5bXuwOLoPqS1Hpwr7U6tibbNBPbM2k31dQs41Gq6zfAPx4FFq
jfkuZpY/2CzZQjgPzD/ZZw+CK63eQZf169ee0d+QzH5CBpISG/9MCN+Ba487xDbqLC5ewK39RyYr
yOdS5fc3a/jHXaQuJ21Vh7ZXCw83JKHWQLWpQMbsMHk42MiU/5UgsTwZpL7j0duFzPm+n/GXyFP6
gr1fAv9AmL0AW4d2GtXrQ6hA+DeSzJj8XANSzXDPi+FifIbs0tNYym4vXq8tQAJ1adykSbKDFzoI
mguNs0Uzonk3gFmr2eOqGkAGiz3y5tZ549bUXzuaITrLsgxKoy5jC4ZkSEqdHsaxdHNwZ0Sp1cn2
X/4JyCyTqyYQ3DO1/jGwU3OLlQkbNb4gxB3NAAtyB8goSV4UT0FVRhK/IAvfdJuLPTHbW25k44/L
no+plLboe+WEFRifau19kF3w6N0LkHWGCVfl84QZ80vvruI7Ih3EwoTwbo5mKaPmtQdWvuDZsobK
aZfbz90OTkjUXNLyvSfCWDStSm2zsxakSgb1QbmhLE71KoZoq8c7qBuUSm2omOVS9EXxPk7ijULm
y9L1HjIIPLnGaXM7eHTAhqr1DrahXUa6Lb2gTSKtecjhedso1uJUmHK92NLACzAMUhNM2sOnNoCo
u84yV++2s11OFtBDma22UeGCtlhwcz7cUBtgbiimoI+BdyBjaLhHlSTG1rdcjks+tbljlNpPKEws
YvOu6AoHDY608miYD3tmzxTQO6mZVeoK6jTYfEThR4i75PXQwmpUp5q9JUhEUS9tFCJNEltBgjrL
Q5R8Uj59mQNQxY28B2IKYbg1p/9nU0aPy2tTndQF5SMV8zTQLs9X36J13Y3ScXmJoVE5CRdXsNbf
nNqPy1FmmgkRJroBOKPxUEDgF6spQkgjf7qUSujR0WPAXUbEmM0lYx9/y7nzi3ustnlNYAQAFzGa
nfpy8zGVtZArqHQ56WOm5Lekvv8nfJxICL5r3EZ0begtP/F30AmhX7N3LOWs04pnOU4NGjlTSA+d
K58Lrc4VunDKzUwsz6XLTiONW7IFVSHr+Ltxeeolf9B1zyP1f7ncHQWZtramJxwGh88occHtdkRb
56pRoNrle83CtsO5cHlMMRi3cd62ku9ZrIe9fxFrAe6R9noDnk/NrWfRYrJDTdoHHxoS4AhGLoYy
nAg682HJc7sMLZW1jsWlp/p7vd4knHv8cuxourxA2+KMFW25aycFdLq1+vFSRnn4AO7JiMpZwPnO
Qy+39wtJCaqEXQ56xlihHirzYxbhRaocKksk2R8GPQKwq+VhrwPqw3+mokSNiONrmL2KDfppiDQD
7DZrerJYQb7IKDWCqdaPuRtN+mSOJtKnzbbuZzUcwTNqGBu1Vgtiam5t+ZRWdIi/aYdJ+iIBdj1n
PSVifJfBK+8F4cINry/n+w9kd6CX3tg/wSVz6v39TCAAzKf4mOHbYuRZpj7dH+Z9VfATHDbIzjTJ
kfyBvNCr0imgc8O4O4WDrWJLUs8CFsANL4O2wS2+qlihu/K0Io717TYgC8mUiGSQzy4vcQHIEPfe
bmzdSUYXREQZH1+oaZYfPLUt8V9Ohb0IY4yq1KZhQqLtSgAploPg3mIP/cIrct0kTbtGht6N0zvE
7bxFY9cg7DpLDXVK9e2BkefTZh/jqwzl8ZHHzt8yre+PeZfSlr0sV82oyqQ1QqmlN5T4U0k96lb3
eWajFgE7Nfc2v46XMnNzb3/jOnJOUF4w6qRwsxQm6G7hjjx+8nM5Ly6f4bwFBGEs8TFQpLtWWRfc
nptc5KSCogjKlyAwml13yMaS3dnqm0XGkS/B8799Rbe3BvUSbuD9n9nm30KulIGxNbW4ItXyo1pa
dF8qCcbliMHUPa7WXT1dTc/oxyujtoIUsvSUf0teXEHMP1vT8SFxjNQEZuhiA4QbYIMknCZwdAG6
Mdp+5UW9NOm8yVAn7J7UJU36NGVW6cDkfRDFX9IXCoxys0bEjcbesptXrdTu5Vnmlp9pJHLnOWEk
U6+5XpQFqtQ2D5TtOiA3yXeuzkIOJV2KbxfAEFoSDO36gU34V9MJ+3nzRJG38Pw2oYh08U7Cb00c
01wT7hvWVd5rmCqHcax5y2XMKXXPELgrurKs3j02Zg2r0g/xTR3ZXykIiCmnMLsqSWY4roERzt9R
AAqVj9PAmWdTzFyLxOSwaewCvtajRD7lR3D0WIGlTWaS8a4JC6EOcuHb99NQ21/mWy4WJCsWoObj
JFHWXKImgYgKXkfvPaWCwDEitwc0/jUPYSPEMScGXkI3WKvJsEmQNpIapa2xVVQUpjnIcasiVyNo
rAtXt0HvxbbvUZJgr+405wPGhxpTOYv4+u1a4HpOjoNpQIoXtqaB5+vfIJRtQfMLWFUyyrXLxpog
+2mkeakRH+YYNN0ZL3OmoDRMl4ZfYVWK4tjrMLncA2DZBoZSb2FOJrS7DtpdxTfComJTbtIqumZC
PZoS+IrgNi+eF48nGwwvv5zhEXnnprsEKDCyD/v4Ni0WdfPmTNGSVbNBMrCDQfnbmnDe1Li4dhan
3rM1qYjM0/O0XLXh/7N3YJ7js6cYpLhYmsCthic/sUyAL3621MNXZh2ei7JUN0VHbE+nGs7sIVfN
VP1icLckDYj8Ch0cN9K4phkKuTeOlmiQ6fRiT0K32r0IFPKcimkqmP00qaU0abiYuRxDjfHqjciv
Zzc683m9FpNQC+C6V8XZbupVgJ5u2Wy78/XPjmfyZ0dw37xYIUqCn+2HHSdd1DMWstMDqNF8FpOa
wVP9BdH1vElUEnGoGkezOa6vya8dvrrZCC7M/P0TWGM100860n/6sHzqd8+HI4tPfHiichuc9hw+
p5FgDbAA0FH3vXMMuzE7YiHU5zv+ojjMZlEDTTuxjrkMERoQJc6outyx1r18g1wxkYzrkEeulsw4
ds9uQCLKLri/uzDoDl31714FNL2vOCrtdVFQKIFqeVhOORMQI9+URvz3FIhMnxEkoOtAPHBEJImP
wAdP2NSDRkZ0Xs/ufIX9CB6xHXM/tmSkdqJ8dotf7PSYLDN3w6+ApbFipIt6FPuPsDfh3O22TfI/
zvJd3MpEjwgjh5T4JSt9ukVFpqnu6cSUKQsNOg56oiIKfvOE4zNvPetA/AKGHH5sueooPthC5uyM
TczmgPedDxlusdC+E510GRZwJ5FSeGLkgfFHt3Eon000mMNcxWnOtYXrU9Q8CksLgjXucTYfaDts
xb7KVkj/yP9BlVgdf8Oks1V4pXeI8P7BL10e8k6/OTWz2nrFBGCpCHVLJyocN1kMpMCPC6kzTaUC
2a2/eAdVjMichTLbcaJIBCs88BfdsH4nMcbEkdzHf5dgYyjExwmxsaJt+HsXona3x73XzEd2cfC5
pHQ9Kxb4kCgOeO+BzKMEyfcuyFM9IRWWdJTBosGk3H+DOCWPuCLyi6TdmA8bbPIO50rAIRA6yPz0
9PmZGViz8ignzUMvJsc7LBq60Fx0WnuWaS/f5JKMpKNbSzX75FnSW+i5YZ6RbkEGsFIhwLpyoxg4
bmEfnVb15Uk0EfFwmHkbFMLfcYd87xbd9OTtyxTOdprU75inMNcItVZctT1HzdfZCpOQ7vZQLVGF
l/mQwae1tERyBOVpa2/eWPc5c5d6jatFXgKtSd6+HkVBHaKAqmjqdoF7I11Q2UNxSOydvI6aX0av
E6USFO1Fx6pOBD4umMY5cBhBVKBgcOdNW+gcKV10kEtw8p1hfHtdJI53VBGAk1YuX3WZt4PCA+K5
uqxrdCG2RbfnmJ6dMxgKGbQpx0jeWJEIQhRHHFDkV/9nPFvNZfcR+sTKhBSaXCQvjyHf6rokdTBE
gooaTcc8jIUPL7s42B/0mdkcDSUu2LLw3Yb6zCbxQQzc0ksvA7sAFml+lu+RJg7UYshYYn77Ee2i
XmrC2iL2qBEeWKlYoFOVoCum+D5TDdGJIUhwLX5k8RqnwG0uuTACHZhkXm3VDRRWbyWRwDNqVlfc
tNr5h2T/kwyPHdHtspc28cafRtDg+Ql09hN/rZPnM6JciKXRgitUmgkmCtLxM3rN66TaTmL4cTtZ
k7x5uL7zSTk0DTRvdwy+UbiZT9SQAwLSVOXFHqyWcCz6UNpAyE26f6D7T12bf3GSzTBCcS/ZhW6w
J0PPhahSZWVn8T9NYb3hFBcEISet+/7bEiby7AwhNcD2iSlAIDQP8qkefuFu9sGsGBESNSQ5IZDY
ICGvXWoPE6cxz825Vd6+5F5jaUMFHTZF9h8AzUW2gGc+KwrckFGprV4zlcIFv1MDewtpWORXbY/Q
th/C2QPOBtZniZq+/5dh36gyo/2LMwXkAX/mwDL1og3FLJYlw4GyufYnOXrZkw+sxIZrR/Lh30y1
8hdq9cvhCj4mhfuIGiEukJrr8/ZwpN1d10izST8QQzFkyzanVWPf95c/45LJOzzSSMbIqBXczs4h
XrMbQB+i4FJ12l4ou0XHwYItUxIQ0wKsPNndMKP5zFHa6eBPwz0cd9MxqEXrvL2O4Xwr7w3kTbIE
akF3L8HJ2/0WMtR7XBzGrW0vHFyfm9GPTPd4jNf0DuV1dPvZOikx90/GsduTByMjEZJanay+35bA
HB9/323aZ4xNJospRorYVKcMyd0gbQcPqS9BAqDuOtnMyy4Foc+XGsGks4XveaHUQ/rc13uXVuDT
q8n+SV1Z5fk2K2sxLTc3j/YyO46sKCx4VKPcGhW7i/MxlpurVyGoBcTpmh13oCZK14yuMsWABKUC
xrWBOW6/Ez0pbKJjIv0Cu0CkVhSpeaGRvw0lLlXIvRN6Z3GKRbH/x6vEk+ReiuWryWDODLFzj3J2
v7OLzYUkl/9mMZWxvUm1G+oXN2QBkRemVPBkImqXlMV/HRjO8DFhKeJhap3yQXspHay5HwJ1pnTk
czv/S3u0cTBQlewpLJZRsYG+rWJ/rYBKXZcveOsd04DaWDlpwwd/YsnI6DOK5PTmeSlrjlXyvamD
F3xjGyAZa7k9Oc4Hs2fcDjTJ5dpULF6JQTt91sm9l4wz+EK89YMdKpIAwyHTEycPx/2VYXmAA1xk
1bijBAfAHnAKNBFB+ecjdc26m93ptNtOzRUnbjmnKKUwO8fVx3nDydAyuUfqxVtpJbEVf7LXQAho
ieAmVQjBobbK5KdIIMz0EdMi+X0eWWhg2CWs1UxyzT9flnkoGQ6hQaAUv9TXB+JYMlb7OYBL8S4b
JT308+p9INE6APSkFRdeFU6SmsY+1h5zv/76ZMD6Xxd9BbCsFxGEq8aOOy8gz+Smlq/bgEp97ixO
0SkECMYJJ/zcLFK4ti4n1WJzR+OSy6SXrv620TY1BMt3zlCPSSkQu9XoD133vRUdoSHctrFWzTnC
34ykIbt8vsaA+v2RKXuNCY5L4A6XvvoJ/bKOSBe8/lmFsHFe6Jb73avhyRGYnipBjARnh2/d+vlo
Hp9nsukbGpHnT6bO0pc1gPxqymxyVoup8riXvkkL1qTP2gQjPhzXlCkGXTPAwHarbIfZFYP/dnEx
buEPY9h/AIUT/At7Q1blucgoKvCIirbwq5vRhkiQhqRuN8spvyqfrTpuGO8BcgwNTxsCYwkmvDhh
Qi5zWyhYpKiDMm95GuNlZ+2UuV2wfx8bbjMRdG66JVkOPN6jyZm5aOCNgMLRRQW+GAnjDflrCf+C
1AMni6cDBIa79od6v0bBTNz6OezMz45O1VCQbzr4JQxv8jfV8zXXig1E8+Ks9BCxji1Wz6PVJxih
LHeI9tYrF9RXbzVAA3f+5JggRJUvflvUesYf35JOCf2gJM/yDFXstw8gMCZj/5958H/QQa6QeWBN
9goTmNMqXBwcQKD6xtm/TGgb4NtkeX3VLRyp39pFV98T46MTzB1yyt/xzya2wVo5W/tvoB9WGO87
ZiR9t2/qph/wGkmYWxfoK16rfwnwAAIF14OSa1NCvOlbSMxxnnJLRjj0OkOdIA0/x58670lw8kZZ
vNvJpkoaGtIpoJc2xER5z61YWcu8NV/rCX5QdziYHQ8DlUbhyY6w017pGfjgAJJiHk61T4fnXhOo
NMFFoWd4AptIsDwk8COcoHaZ0vkYfUhZpFtWQ6jZl9ejKZJT7S81YChtoMPPQjb2xxc/HZTKp/2E
4JubGY9COhfayj0UitzLhkfnussm0zF68jTAnxaIvpX2keJMUsFOeiQpQGXA+3Rfd8uGwZDl57RH
k+4jrD8h0Jy1DXv5nfI11Av+XKZsWJerCV2L4mAQVVh0OGpYdmokU59/De2p12j9lJoXCw3o5iVX
u2NC9loUk/4uPA4jGXLCx9e83jfTk07yLYeOKwulJd04cgGE5TE9Nbt6pTj95t/qK5/glIcCr7gW
i3P55HyiklAG5N3qfbCr2PEd9IW2fumDbLqiBCeeja2W6WvQ6fNa9JlhReBPPzk6eJUapBT+WzVN
QAX/WIMJKgC2Ix6TYKhdJTr/V48zNMPLKgmG7kLPHJcY9y1k+JHWf6BeG9Ca7vSVIMozyMot6lqe
BPyiKHGLjvBEOZgTHXaWTc1LFtLcnsCnNM9naWt5px2ucQQG8imHrwb+IC6cJOVtSmTPUgSDC0+X
Y2PtCCpx57YT6sdkTXqX1GdVyAR4RhzdBioPDfrLgTzeZybOA6k2zr2iGJsfdYR7DEplNYyFguIF
PtvWPGxR6KwjEVSpt4aGa+/xKQbZvJbrAahvVGtG0bEzlHieTyuG12fYEe0Ip4+BrGAimedLvRPb
HdLwI7xqd/7c7WBAprmzCOdP7ng450Yu+KFQtmywHqy46adKUoXnt3DhdjrE21pnjwEu3C08GKAI
EWfVfpp900qOTSt4rkLSnfJy0pD4e73NQ/IifKYlZpqE44hjB6pkYOtBsuGsuQmQHACp7IDZGxzI
qB5GmABFlyYIxOO3u6yiCHq0XzAMW/FNbMoH40SV2WsA+fLJEcDmSAXTWSLCuqtnOCdb6Wn4nDjM
7B1WLBIfZc85UVjNMVkp8w/eZz0unWc+dyd4asRY+UNmeimrK4v8ax1QSbHwivXVTGrJPtLC4Nu5
XyzNxnZ2bO0lFiUXlgYnBzc4jNfaROl+3t/oTVZj0VIkc2xvKYSH990/nsjSz4TxFDwBI9kqpL/G
Be27ChSXBrocn8Kx2a9V8b/bwFARChNd75ma/Sc3pjtMC0/wkCBtP0P6lB54GJTll1XdwTrrkqLA
n3TLuLVbrlfpbZwHYRqdInrvYLtNBS0TX/3itAXIHyLor+b/kg7ktAVAif1Qf8F19JlV/Fb6F7HS
nrteYQgK+jwpoCAXe8Prc5qrvJ5oD5PpzH55EJAvKfR+ktANOp8Au20jz3ThLxhHFQNpekaAQBlA
nLz2MVtNNkT5K0IsxbjYbER1YJTuPMUmslTnVjE1t/WxYNh4hfe+FY5TShc5bRlFa1IAbljP64VJ
uQbOpUhB5eGQEnG1IBqYruX3mWK4cSFJ3Ay3vRaMr2UHCwY1QmZRYutV7c48p2nTNTwIw827IGAN
ulMpfHAHyivRjqnqtVuAsnxiUvSR3SnWZg+8hcN+HtjvpDNqcj1lIJm1U+HYO8dA1fGZY9/7eM1M
OiWf2PKRyc80dQlBjqLz0b20RKBgOs0K1RDhIamVBmZgVqa2WHrNxB4XfpVlEFbH4O0joSdTHHdp
R9gS6P6F+Xfsxn5GsFBrcmdPUn6lFZ/26e/8LqSdcYs1jF+4BRBzzSU11vLx4mPu/IfPUy7LbtbB
ZsEvrlaCa+N+s/VgZr34uzCqWSjojr97wRrbgDWVBAMA9C7aQSFlwJ/L8ltN9CQruVWjJj3m+u1d
21a3OLQJnSmTQBmCYuseJQ57WYl1brFqk78ijnvkcRfUsluNNOSqkBvY6EpDMr6fvIyfTA+zDBVL
z4S1XVU9ifmye2m4MKbweOU/ZGtpVCExvieiVjTMYAEAWwUBBxbxgya5L1i/Jn27uk9inkM2yecR
Dj7COWkCeEDwDcKYAMDchkbpiZkkreEJGNkM72jKd7JWU7eDdz2c2i751KhfsZnaRhCmbpXpfnws
LH3LTCc31Stj1MV9RNDuQ9/bC8BXK30FEq2ZptiP3eD+tm4Mb6hBkr0fMjzLwyW/1VyilOMNQa9Z
rJERYEHmGA4jXCibwyJFYWFU30NovA5ISem2lqC3XrjIK/KXKxck42rYg2hJv830XwKlFkpxDExB
Ubba2zWWDoXvXjKyklbU5/VcoVJl5/sLVdL4uyKyTMN2iPXEDeOXsBtuCXDWUkfQrCc8AYSz0I6y
dA/CVgKwjIHtN9e2DiaL8NQlKk82wyfQaTIpAB/7KJ7BN64MFLak/rCCZLOrhgC4J+idB4zYiMB8
OdUNyUHbXMOlvjoKc6i80bJT37YU8e39vBaJwpD5H6xq4PiWM5kp0/MkeVU2IT/LOffz/SgrT8Fi
lGdj8872BGMFabIxYhZjEKjb0BiwZNhUyF9Z3PEdRJLGLfPwSLWDLHe5ZQ8jsabhqSYZlb8ao/kG
YjIT8Tvz6xjupGUpJrx1n3O8R4xVkTlgLQIn2BUNBu9QnRhsQI3f+h9WJ/oRVXO1DAXdPpUQn7ux
vrkT2NPQMNE/MJy60eOSmXHusu8gLWcM5KU3at/77wIevgHbwQ9IgnUkB54H+NUdpdpStWfr4qrR
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
