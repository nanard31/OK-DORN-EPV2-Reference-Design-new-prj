// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May  5 16:31:33 2022
// Host        : DESKTOP-BSP8Q2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/TORTOISE_EP/OK-DORN-EPV2-Reference-Design-new-prj/Synthesis/Vivado/OK-DORN-EP-Reference_Design/OK-DORN-EP-Reference_Design.gen/sources_1/ip/Phi_Corr_RAM/Phi_Corr_RAM_sim_netlist.v
// Design      : Phi_Corr_RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Phi_Corr_RAM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Phi_Corr_RAM
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [16:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [16:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [16:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [16:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [16:0]dina;
  wire [16:0]dinb;
  wire [16:0]douta;
  wire [16:0]doutb;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [16:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0777 mW" *) 
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
  (* C_INIT_FILE = "Phi_Corr_RAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "17" *) 
  (* C_READ_WIDTH_B = "17" *) 
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
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "17" *) 
  (* C_WRITE_WIDTH_B = "17" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Phi_Corr_RAM_blk_mem_gen_v8_4_4 U0
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[16:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19488)
`pragma protect data_block
/YYcz7zwGvt5gjqrv7IiKBljXDNt4wx9Ed0n96aBVAwevSe0KDZBV3w8J0Gndk/6nAAe8q1Uhhq4
3minFNwbvSLxbS6tDi07utA2QZXERqijOVJ5nt5rJFT1kHfdRAIeXTms4fTKmFOgDnnspMFnyHCZ
Sp/c7AOrPRgIGcJNWlmh0o0//Hwhu+WP9e1zJBzDPMnM4x9VDPRjWmKVt9yxiUQq3aN4B6sKOPuM
A8fvxGWYPr1U4tPQQA2CGVsjZ5H077XTw94mH6+9HDHYRHUcMPewDkKZ2NtJ/mAOBvoOctbMc7e2
1eEcZPGBrOSmpA6HwFStyjvtJ+iNdTRgWUH/nOMZShv6Rp/Rxc6Q3FMsnG/uMf6hln2ObG3zokSh
Bsk4gfHnIUaRr6R8IQdhM6XkPpysdG9HchcB72NUk5fu3S9S6nuAH5GnZwxWkARsyoCHzZWSkM6P
BKz/pyuj9QWtPV2m225EtZmfBA7WAmoz6N/KyudlupQs5y0BUTNIn/EghvGbJ8KerdcWr2WrNnM0
0wj9ANYbVSNU3JIacT1lSRrXuBCXAtOUJ5mjPV4V6IKVwrXBBax4t2ZnjyJPDUBQLKCk5DJu/4J3
mnGidpOdr1dwegEqRDN+tqTFAzoWsJc1Ikv2mOb5IJxdmOv4ISVgEtGIaXpbYdB9l6AE1mwVYV8a
WLP8K9F+ZUDGsqSTibVngzZIEdFqqkMCgFo5Y/yOVGOYg5ikxan2Oyk30oaLRPmtBJGHsVm2tiOA
fyxeGO497exF13myFVI9pwu5fU8R4YshowNcZDvTiEXAnJd3z5PzT8wuy57vh1QkTqzrH2Y2wd+/
mPS+3+bQQPak6BzhhcwkpKHYcsqz+ZSEMIhaRwkwuPwcMa2Gne5r8tOtn0n78Gx97yPSCoj/keUB
m8PJt4zslWLUpTV42FgWzJIHPrjwJL53gSr2ljdA8b3VLxoLex4G5feRwUF8NTMHg15edriTcVB1
Siwnl6dVudKNsCF6jLs9zpeXnhh0L9tAPHgptmNz1osmA9OeQf6MjfBsYLnXUse932W3qE3O+9I7
aaZ7rbVat5cs/CfJLCpKpkN525AMKRY0CG0vD5tXQEUR1tjkImJ4OulociJhA/YX3gqyAFPM8Sna
wIXHuugZuNlzkLj8fj8UNaFnO0J440CSXhX6cFATq/iMpUxJI10ksETPAA9tjL8h2D/n6WxEcRCr
EUu5D9Xn9CKSp3/mLZNbA0pWX2fBfvufvFyedATt0WkBQWKq4sb2ZsN6XT2RVsNsgpeqB1egbYGw
rvT4CuHc/viOtI1rJaf5bKdR38L46H9IIlFZMSt8M0WNpp9ZZVqGVXdLVq9Kx8vCAeJxI4pR0LcR
bdHGHQY9xs588pCaTkuYGLxeyGDaQpVtwDsJSxkVPbdIwYta19zKv5WC6W3iZ6UFwuKH3bwORaw0
ea68cYZu/SOBC7gISgAjwxWemhyCnPcCRU5wT7NZ1p513dm0ZtrGNVxd9jVBn5KLHuMPPsgpAnvh
l2/qq2lSGUncRtF3CsNXzC3iKnoY9xRQy20nNrWglOkK7OASvsTnwkYMpNXOnaq8z5CBb0YjQdEr
buqar94Nq4tkv+K6zF76V1UrWSKQqo7nsCREOHK8gTMlP9HfM+EtxKR6OkJKtdmccCv+dUZuCjVn
sABbkqZ+pGjRq8NKnV2oxXfBTy2XiOxnx/4ztSzrlaJ+6ZW/yBL+5ojXwq13mx3YlF6M7IPNOD2o
PgFn3NjxAY39H1KQiT+E5CJFIkIx6jTTmSStxOH4/l+luzmGmTZLqfXgfPtWPJMC/bGP9SqZiS4Z
0cINFWcge0VaYUxNyGzGu4iiasNpSQS0q/C7/AzzcNpFj0DkepF18pGr6KkJDsSXn1qS3iCStG5p
YbflOw+s16b4STI5Th6TnN5JsFIpbuQwoE8agLWKqJQSA8YHMn+hD4IXUa5jDnmkwCXd++TJBMnE
VbC+f/7V5jcy8wFMIBK59ue0U6VQiP9vekDs9ajqs+ucTNfAHr5m8Wh2+VjJh3rjfs7TGMZ3XHq2
PntWufVghzX48IVJBkPud9PhZdbl5pqF8Rpnuc6wuLIDXHdjqpk3bYK/V//ihJmkRMn8yOW3v3/m
s/ZLNZmUSPGBaQ1MSOvn6NQq/feiEhL5+wufU/VnKMF5sPXUNvzowutTNFKJLR7hocATI0MHORKG
LuF3Ckq/y4nPr4FpbP16xgJq04mEwynEtHzGp9NxhdqBKNILBUyb1J46/zpJVOSsSTHCc0aPfOYZ
Tn8UDU6zGj8CDU6i8542roqJvHGEKQpDFXEcjcg3t+xEH6z+iRoFdFwUEKU0LggGtjftVQYZDIDq
LB4CdwzF65C3cNvka5RhJDMvzxBlj+yE5Sa+SFPvK/3SdlqWVV8g0iPOh/6juL/D9M4jC78W2Gmx
2Fr5BpiVGZNZaqPSDeQWKaOPdiRwBqBXyluMz7CKlTtAa5jF/ZLu27Gbpv2WL7lVtLtPl74K1YQ4
7gdPdx/LjavHzRIw3BUlr5AsMJ4VuHBOk+kXS7ehZd9rxdrsshdmJ+lzDuXrLcoBxsdLA6pVCjEf
AperShjqZiV5/iQFtt8QQSLYBHyueePEaTKcRPt950x7M/pwInv9M7fsSCWDPYlZO18nhw7TYUtv
lrGKcrTewZhZPlX+25PNUVPf7RdJlGRXVpz+5LFut8ELcuk+0HRJo7HElW/X9sFuxPb/0NCDm3md
CwOlQlfunbtFMcVADMSd2op+Kbb8QCV+/Y9kT8YIe/loBr1SruPK69IMhCN4Rc0J2hFw7e1LFvyi
CkurbMvA97RkNqvuNBjeEN76H9lwL0pw3iaoXp/a3GUPEoyp3Ztd63c/XZeBr1fqJ8wqm5nf8Drp
GolfxYW5dR3fh4JFq3A5VeCWK5Iyj1wAShI4rC7CLypCNc4WOQB6q0LzExdu+jPj0A90Dae/Kr6c
CqMtQl5AmLSNkmRN4ZCd+VaERc6HTAZftAkeeQBxGmsyzeTLHRHpHwL3taVX4ig+OgkMhaG1HKu5
aN76/H29ay6WXajJndh4NSUImL21iSkfiLLEpQt8wvrKMQHzsYMGIF3VX0tVkXbBwVtmP4YGjwdS
kNK3OduxUlD2NH31sxd8YqBR4buMu0bwazn4lSfiE+Rxa+EnyyqqV565VDbML5zw+3eL17COFacU
GNdiWjJ+fMgSCFgK4vbsu8wddbAMuAT82oRCxd7Xxmqg7RpKaKslJC9/ZzkWTu6Bd/512Y4Pr5oI
y/BMJssFKIGWNHTkVygYCftlGhLK0kwoMnrULqgn4tVDDlS1Ih9B2rtXoXUvevhfLX8WfO0J0ZHh
wzpnHg3hcrwst8e5gzaBmNXbG2qjMVsO4xy1VXMSh+uoHXVfVJ2atJ96L7zAYMgIU/GFobNz/Ky1
FVHNNT+bRwoTW3TDE/+QxyATcUry6bBmJbzApYQS5R8jwpaYTsg49jwdCrTQ85qgyuU33vAeF8HV
QaUWgjmekU5b6IcuCw83OCr4Iba9T1Ci+QowEBr3TSzW7/tIyex1saNongFIt6H8fT7GaKN6L/0B
PTwGZe7EW3W8DPCYQBfX4u6ws8px1BnNIMJhE3gJqri2AULagoIuNXVVsEgk1yMJTVkrp2+M3Hrc
aDjgOCrnhq9dno5eIu+MS4pzSsiXzvO2QxPpmrF7q/sKSXRNUSlizswS2q5Ra80KvFlbuQIAlMXb
plScE+P61l+kztE6gjTrsAquUcEiQYhj4d6G0gmgwBIPHgALOHkit4LuxWGV9qsWYX5JQtKlELzu
Q4FcwCWCK9tqlLv0gBgPS4zpzqN3rzl9aWnuiLGX9a7zQavvMpbp7k6Acy6WUIilU2bM4ygAy6AR
CIikoNjTQPCeW07bu4rzotISXGJk/zJywwp8p9BnJQ1H+6oqUCw80rw11Qr8vW2xHbHvNEqCYq0o
qGwdxzVoCEjAkiRaQfB1OyehP0Abbl8A7bsF3Ob4x7TMy7D4adDHskvcJs6MQq4zy0ST/56wYkn9
wL4m8Ym2D7xBFc1/XMUUYB9Kepf0/G1W20mcmo/rMxXjj3v8VK+A3f8LGCoIOYohwdvnDOTxZNxN
LYlPkCK7RC2Z8bOvme9ns+YUKxFpLfA7PI5yYI7eGlnmBodNFIVAs5x/Rv8oGKYWBbpF2aenTSCJ
ZRmwer0h46ecrUUtgt9oiH4xxbfmZ85a4f4eAkxEOVYOJ9BGqQRdbjhMArw5UxjGKesvLCvVHDns
DB663kisZbmCpaxTyCnPleyZ3tC/gfJRJcGekLQYkkeuJbsJLIblgTd3e+yrem/NBrxBNnFsD71k
c5kii6G7QNqB8P4JqY1KBuyoBViX1C+OZVib1BIFz6SB7SDYRtW+cr2nirHGgWSsZicQrTTXba2K
LDU+nBSiEmGm2jAc/PDrPVRYDwvUyVWKKiZEOzRpfWBBntxiVQsxaQKiEoGfIvbtywUHDmaIacei
wU24OkjavUPV8sfupSoGZw+k4EXOgFdXTEgX+IXTNIFNy6u9f0B07ANisukA3vZklMcLmCNYiF+W
A7MVS5qk1yQd5QE7MjeV8rMD5hux2gPdhLLu3dwtMyt3erEU2Me43+35UyCqjJ7nvqZfavyf3S2X
d92Vf8yjZqoBv0y2lozjGVLYXoE7wUgh7eNDm/CAaLDsXM5+s13a0uyMJFPviUXdUPX2wZHIH6nP
b0KFMPNQCtVDa+sOsFN2EKH1ZvUu+xe3+s1DCC1vVV6XSZXb2yS0/bY+WHGs7WJyNxRoeC0dNQhr
dFvdVBfWx+q4Val1XOO7QpGQ5XDTA7v8RyySm4TGQjYf2ZcGSnnZNyCiuRFnzurL9iAKNCBfpgDA
Lp3S1A2ktXApT9rQxXsUSG6iK7MI59kJv+wdMufUVuqzuFzp3WLKpprspd5RBCA4Dhg/sYFlvRDN
HSR1I0fnbXhY/E2MQ/qe/U5+HoMon/nNVwQArQqzqu2QPRdw6jAdquZocWXMrmy/SPA40j94lLpO
TcfEdN64KYF4gnmIq1TTc4oOOjn+AGAS+cf65b5HiXzm2twoQcRVu1dU+qgMNxklhPuqfD3HxY95
PJLvJ6gMc5kIPmfvyGvuKhK0wL4lNxSUwCNsEQVS8LGAMGB/iW8RfpZGWD1klOPtqd4/Ox3PkVoD
q5/0Iwg7uL124iJ3j+l9LjjNL+gH49F33fZUvOQ+MToBnL9lw/TcvUlknLMmKSy3RpaAMQ7qhkrV
bnc9ufEgiedI/yL8ntwXvBH3tKRqX5/3ihbsYHgxuf8HPVnm91g340DtiAqfR1Iw0/oAIFaWQc0e
5Df9FYg/OtV5wLIaZP0WJAaRU7bTN6kSptBDzK/cHML47y1QlxlB/iXLEVQxnW6/4KvABa87oVpM
6eXWdtPchVpepqoMgeVIKTQRfqLfXS1LodAh94Ru0AarprJ2c3j+xW1N5Q/IHXzrRiTb7FakncGY
eCFHx8pWMQn24n40lpbyRvDFbgGsfB6Z5bq+prHtvBLFi/i0RnVHBibwYxR+rQFf38y3fuv6V+Jf
BW6FibdE5hkSx/XIwytWvZKcMZqET2ni7eqsODjM7sgzUZbDTOvsJr6FeKoYsmxzFZB+2OyX4qaJ
NreqglY1G0OXAQPgy2/7Wdjprh4Hfe//BIzK4Lhe83BHH3plJaDjF8uhsgsardh7azvmxSlZgW1o
z+1/VTh7dWtjnW/k8awcTq5OKu4Pl9K8kcv3lXQPxdEt84drr9gzd1CVflxSMTkWhJMow/Fxd4UI
AUmUgB+zgYyyZkUb8ue0Q9SwDHvBVZPmRCxJ2wyzV/nJsmxkEMcbnpNxyuXHMjJEfMdLqyh8ectq
y5gSthtrwUwEaMlA+xTEHZdK3CVWZ+a6n9HpGvEGV4VAYDBb5GnOFMyr+bOQQ2f4yEml4pzJkGCq
t5A4A9QSMvvLlXBYDR46aXvPChDuOAiPpzijzF99Fo4cYqck8fmeIh3r2C4jYp9muDEu8EafcNZX
CAhOKPMGsMbvxg9zO67zxe7lDDJ4obTKjZYnkExqSp+yIyAUY+hmgeLXhfH6VK24+B0CaRqAv3h1
R402+EeTc8OO3TeCLFDKjo9RfRQnPpldtDML6muICsRxgWoTam3WxHY3ToS1/ekNbFCijske8NZo
pUEA1Dt6QPwGhp1mm1TCxtDBHZh8ODP16ALHGZCxWJGYrG9Of1kRb0Dc7E5fELx/b2VN/N59fvsi
s+BVPUU/J70aG6k47YmFjS2lK1zTJkg1F+x4TqWrvHHBsRqXK4oPqP6BnekID74hIOXRNlQbSgng
tMbaXb7Yk0zO6neNcGRYLq4v4SWmP2Cm++quuVeGpRKQ7fFQ2aq/7dsIK3ol753QhKvT23kyub8g
NQRSXt8z9PzH4+KMtHhbx2G4nIvw5ZxQWk23hUGDRwgeGK0xtAHY8d+r+fdEIMALzp9jaMvcGBpF
8TUCbQ0tqb2EufS4Q79SVqDEl5Efd3fA34JXnHjAVWv+SGahBYPIvgmyG8sy6DgZxFY20s2gJ6Wz
BW0vS7o6MUqWgGpf1aUJmjdDMJ8rkEjg6sSugr/IckYRuOL6sTel8EpFA5mGC/WrRuuFBlVEaFRw
5xbYXXLBXiVewtPBpwAwelmuQ9WF5RXW9YxIRlN+8RgJ1dBoWjclPMTtCAg1WmSxzQGacQkkHU+u
qfF1gX3j9iK22Ai4ks614d2mDmqIk2Kds+o5j9f8w2nNS9T6kg6MurYVArQd7k4RaTOcpCNA73KH
loOUwRGUA/ShTz5ZdGIxaFA0BEEhzyYw+GZnELH6qwY/iPncED1sxBtIe1wJlKhdq/rhp15w6ILR
JUv3t3fFbVczhYHcy5hbbROUFakLeRcQh4gb5A1P+FVnmMHSp0HdeXFeCjKpXcbKIwGJw7Rx4PWm
3i7rNNTz0P4hODgnNUVLIazfd8UUcB27Ajp8vFNk6TzcEGIsy0VtFHVSMsrRAmnUdUFvlqEE6pyg
CXU4t8o7ciyWmEjd7Gq26QrvXG/Q9yfXVcD2zwEJfrLOYXWreHPabtOq5/ihVDRfNgMkxJDckvnB
DYVO0vNQVqHUL5MMAaD/4Hl1E5/i9rN/7wSslVA3rpCZ2s298HqLw26AoP/7bnYwV0a79WtzwUMg
GCFH3LTN2fk0WXtglP7ZedVozGR6TTlJ9h5BYuqbUanvMHTKKXfYMH0PgnK5j03ejSXNr5uprSbU
fgcIoIkK1KYczWKKcCflXimOlcIMteXcodYzPSz8p3Tq0vQG3Npns6G2er1IluYIGUz+R+9NIUaa
ThtOsAWypjiejfIytVRcVURBFMoW5bXQ1+pdM4TF4ew5zmbJYaU2imVhJ29CtahOds4FTQqYrWp/
dGQVrZu50YFtZcO3x3o3DDpUECTTbsLjyrYqGFlifH2qhN1r9w93WFF6Yz6tm+GJX2/lhpURJfhj
QFUFuGSM8CyoW+2d/U+NxSrWq9IqwTd3UrxxQdJ8XpzcuNXJqN8Gytz1uxxJhCnRN8HjlyoWx2aF
NfHoFzxiHkET5sD5/9WXoywBXUE/PIW23n6XaA8vlLMY0yin/t8LywxIUpgeh2VZIwLsl8ZLU5b7
1hq09mqSEzO9w1MB8jk/Tjl1kjZ9Eoy5DzPgYlYBXmdzW+lABhBVhGx9mIVyo/a9ZaNFwbHDcyaI
BRyT07xv+OaRYSr6e3B+l3oWfBxV2Ty7SY9ieSWPpmO0XfcTBoo+++Okjsu6LX7zcURzTZLaAW+t
VEO+TaoRVYUskCwy1Y8woiKCOySOohkflJ58dYoaH+uIeoJd470QQ8qhKj1otjqYhQPyQyAvRXaH
oxEHQt9S26US66RCZg3uM5OqtqGQmfl7u9bz9I8X3JrCn41BI1Lom1yrMMAmuIKSqRyEvgMyZSUK
l02e9GeaCKXzihM9MvrtVTseFUADYuOOjeAs4/6zTc+yybKWoM4O71qrjouRcA+yYAS88Aexdw2m
Odv0pkDSIHPovm2JOVVw0YZlzaOebGV5uEA+Vbb44twigVHntKhopUHdpZqsdAA3WWAlZI0CUKv5
UQXKwMZT9LLHjH9HXQvikPz8ria6RqhNCbFlH+KYlglu9LGDwpnvGQBlSjyH1TATcfSdr3Rce9mC
BxmcS//HmqCJLPv5YmqcQa8pe45GqMJuONIGzv2aj6l2kbWz3aetBWcWyVp6oxctTuvyzCscQNl1
JjDCnCvcUTaT/gk+La5D3gggonnsLU7ygSnuuDm60/H0Iom5yEuahWzqK8n14qATGXLqXUqkVywv
PNpsrt1lR7xNkytMsHOYOdHTGpLUUJ6UF8iDAiQSdcb5bp8HDvLDlbWu3K23edzTyQLiUGQf/7Lz
YhtLaQzoPTHFehCqzzMTnQ+qddy+Q9rebNSAAhBoTRXtR1so4UzNcnR8S7jvwNZBq2qrw5StFS/v
A3T4G/cyk8rdu+qUpWwMW5jUEMLhY369XOCE6ErA5r9x9ybZufH0BLOmxfLVKPMakw44mRyPV5Ny
PEnrwVVHuFXluxzCG/qauErOJK4FFt6/yqWsyBBJdLATABBqMayRYZd1eD+RytN0riuSA/FsxfhC
z49pe9ylwwWT5qt2g1RxqZia4joy86CFIXT4jb0CfhjGgc3ISq+29/NKD5Kuq2+xTOztp1jbdV4S
bAqwPK1u6iWep9exps3GhKFzGDWNlsVX1GME2VYSXtmo07KIx/+KE7eEb6XMaTfxcWabhNlLd+vz
fQzjSr+OyApxTICuAhx5mzyyTNe7xFDt6lkrULzEdVf2MYkH9UFEhvBa0fskZvlcCh4kOfg0aW4f
d9bCsBmDVy7GaGl/9zLIwiQ3QbIVslEa1l9zv1B9GpuGnUhWlxsTZPC+s6RMepJ81sJipRFc5J+U
d8p4E/Cy4ziqudymTZX9mg7rHRNhEbXsgl3y4mvXlWtPEO9nsuoL0lxuL6UQ7fQTKeAPAdiZHWsy
MttYFNuo+5jGjS/f4126G3GfuS3xcGd7d3Da4wK1SaC01y1pPrgSE3xmb82ReuwY4pRW/wdYnd75
njYYYH0oobNnNU1TVDDwM2Es/7SRMg4muV+x8PlXqNCh8rT1H8rwiYgQPjfJt3YsisRfnrsTatJU
DHZsU7hAUB5pCsyBWMjzFWsWZNON0VJAUwKfS3K/9Jh/qBPDZjFWoA6QWsJfRRGCcIXbWzckrzY0
IM9HLkwmqmgZGrwkwYd+Q27JL7xaXdmmzp0s6bnlKDduGYVWzyTyS10tirrypgGkcAH0VCgLaZuX
X3AFHyLaF8aFNZTer+sVkM9a7151mwpoUM9a//sAjE4z1QiZX+rQ8YabHKVXorpN9tC6FikRWESr
CfJv/2b7DSMpL29obJTVwpiTPalMyQxh2J2mbgN8XOyVqjSEfSkB7gL9iNoLAr+TJlzB1wExvQKZ
eg3mjBeL6B0Q6jOrCtmggVHgs5Rp5OdK4LHPwoieQEemyhnJpRBUvIl56qJ7sptzC1oQ5ntV2+DB
epYvWo8P7B8AYCYLMM7WZwxbLK633PMrZC0m8cfQasMG9axq397zxd46vUPt+jRiLkouzAAFX1J1
NatzSrabbAakqC+aud+RScGnLhltWhbhOXpxy0gAyl4HWlEFE1YCYPPb3NjeQimDUu0MdmafGT1j
zs2VfYgzxCs7+YJudbh8zyrbxMaC+AYJT0on7NeHL2h9TovrqX5yUJlA+WnIYFbJGwoOpp9MIzGm
9guc8zWQieMiE+tvj4jo+UZJQ8fzOsUzp3R8VdYh9JCwFU5ZOaa7dqELlm5nQJxlPa+HinGaEs0x
2xiSO3qDdF4sYZekmHi3Cvg676GYnAnMHcAWxixGrTG3okFq6PwhDyWZc0WT+bwQnkmMkybpKww3
y/4y0aNSj9OmZ2ytkFA5HewbL57WaGsPTPZ4JgiSqhu1sgoBndGuVEyYabn2jXLyTnoZ60csLJ73
DIVVFYNPsuFeOet9L91LH2mKT18tV2e1uXhPDtoDOL7yJUrXbcX58kz3g/yfhNXAJRKXd+sNmtKU
MfUCtZjXlgkqRtGrCMPozSjqip+682tvORV2J/Pjym+gbrl9Ud+EDTIRVbFuKLi6GP4xAmiuZQPg
E7ul43ckKY5JfMXgU5CD7zX6xz0iQpXafcBC1dkj2W/00IYJzd0vibGQ6EtwaXkf9Ca91Hbzz6vd
isqMLJCRxrAhNj/yhHzolZ16S4Hv6DIvUjKeBmJG3GBxlpVWLwYh8KG6X6e/fwBZajNxDssTyMBD
RYABIqWEaUZAEVIFfDr8uyz6KXPDSROMEjumxRGOcaz2gQHvPSW9iTD5LVJvxnTHM8dLLaHDRban
3Psj3rMPy6+7nnITZM5hQtSky7X4MP4qJcjs3wm/1R6h8UQvxw4UO4EXpwIZEb8hDwNJn943NN/o
owJozKooewHoJPGnVmyidYirRvHRM48lfUyN93yRB+iohmVS+Ags/+F0rEDs/LFk8cFotSq7OYlT
0ng0s07xtcG+WbQWo7gaZ6dnb/24alxKucddgXy4NbFZDeHB+IX2LlCv7NVMyKNl2mij3nj7l4Qh
8teaqG4J9j0rUwft8tFeTXF/w/a7WvUfLQk0W4qPXLjv4KxS/L6Fxgj5yzMU4+JjYN8sZRjEJ6ZS
VXLbLRqTMiz4AtHygsfQGl4YVM2OxKtpSd7SKShF1R6dwYifmi5uHLboBn7IleiXrwczg66H8M4o
PKtSLkTJPTEk2pJUKzmPNVbRjcvECwwkCDdNvC9sLGNbHn7A21rMWGBr1FFyoFhgUb1KUqb0h2sP
3MLFjki0mCEpUD9dKPotnEa55unjZOYIWCrNWrSVhyUD6j98yhA+Dg0cuIvWlMlpdALX6FNsuotH
HNSTZSYW3NABGAuItJOWkIsnnKnxlW3ShjTdQwB7oqpYEHm5Rci5Tkgafy2s04hq1I84EF6xQ/rV
ByAZBu1lJ5U5q5Wstj5CpRphPSem/Sd/c0ytGwt3XzEOATIIEDlonRCIEXYgksWUA3qckJ08s1cH
4e1iK+DIbSzaCZZ5/F0xytvN7zaf1HTF5QFy7vX0aa/FVYQOVIMZddnDlCHv/LEMLrnWKToRDLZT
a0KS2IQAJ/oAU0vi6NnCGAn9MrwuIUEalCJ6oHcxXih5N30aWddxstpinuZjfwdLqvOmlrmm2mbl
bJAQPnPRVFsVWgx23UnGAjUwPe7ahP8riEZHj5j0Xo7azAJqeYuw04J0EOPsal7+uwNmcHWMOA7y
SfOaOsClU8zFT4ApKe/DMvpKmB73gmPTzk/KNmgNYlMLJ4V7XDsYxj8KvdKO2hyj+uQMLmutgb92
0BkRCmpm1jSGe92hTu25ELE4Vqd4D+FVsOpsomjIsrX9pwxoXGwvJVCtgpLFC1mFQJoCkokhbHXR
FUKIsOACSW8ysSm9A+ozH2RnyBaLJMyo2WS5LmKXcBkbnZeFbd1gQBxZQR6kxRyESYKpZYskEwgO
tpHhuzYBnkd86J8KrZUo+dFzcQQQRRxlPw8yZ51tQ8zDg9n+vkHZLSBXvRuJn/R7/5dufoOZpGpR
tWvYYOLWn1+TkeSmVUngQhkURBmtm5MlepvhVYvi4EEJmhvM/5iK5tIwxVk7ts1vciUW5vuzbiBE
6hF1vjArQuh58rz0QQ2nEsd+d55EP0Su8VOVMlJSBHXMuhrekC5lJ0Xr0nLA73hrf1WzSCcdoJ2e
H3wPBh6p0AhvVJNO0Ar9yXPKVAw+r9L/gN904pI99Sde0qM6E8ME4vP8IL9umoYHAaLUYFzyY/Ur
0p1/W41z+dTq+ozqh/eh9TsoDR63vNflcDWlzMGG+vvNWaM6lSqXDZoNkf+AxiSd2T1Tn+rGMWWu
EkpzUvph+zeVcukutQPXbhhyvOBJz9xjqdH5xp8y0TYyhA5H2dvyEBUWXmNq+E0Prea0gZ8A8j0D
X1+BaweZsKjUlme0FxDr6eDAOLws+9JEvJaoln18i5Bv9f7+a0A0i7xFRIu594bfdmq1hMixChMW
u7bdO8XaVpQ0NO/q73E2Ef1s5wKxcASHiFxxjMK7vl8yrm4NsqCOJC44RdRDOIVplsR5zkv1zknK
qKOXbu4ab1F6sRriPQs9h1zHLmNw93xvhEFc1T+Z9ZKHaaSSETd6UsHpNHzLjx+BVd5tzmmy89YV
41jAe1oWTUGZ41V0coEN+Of1FLlhppp7UAixPFBlhU7FsHEJfu4kQyQ7k7E+/BUUzqIdm/4DLsj7
vUAQsaQdttc+fibpfvCQCwIa6LG3LvMDXEDPJjt0nsCXDt1bZ2LNISxsRrM65Aqx2Om2PRBUATRs
qBEpk6+VIb+r1ZcwhoM1ez3PXOpI8TrGTYVrNj9OrA+ZElOicCDTIrvVSXLvgXyb8540/PVRX+Ey
uitLNseC4LNrQGU8Kk4h/vgCRLMjtBfoPl0XG9fS9EEylr3ltPJ202dqPShpQ8v8I6de/Bp2sMMV
TCqRAHAkeBrv87fiCypjDvqIyV1vXTuN7wEsD4i6Q1lh4NGI39rXV6E2iZJ6tdKeswEge9MFjVn5
oOb4v1DZ6zfC7qgoMrTCZZfLd62gBV5Ro97BXeSaomuZMUwMjhm2NZ1ZQ7IG5VP7ZDmSGCLFsNlj
O/6t4Aez4oMazTdrdOzXURF07DR2eJnJWfBvDZeGPtnefMQLWjloC0S4J8uay/nIpcv1jH8x3/zl
hDyLA53aeASeT7amya2ISPdLh4tsNXGLUEySvTgx6rY7UhJMkWnL/FJlJgweYfXDEyow1aSWQKZO
rgh7EsAp4wKyGKnqWh2afaRa1bNcochZMxT8ZtRbjo1bH4JIUS9iB0ocAud0Sd2SM1AasToqa22I
QOhaPadGpkrTAhGy1uuvaefNhFmfRAl36PpoOfG+6+f3VJLutodP19WUEEe94PCh9bxP7A3jQwUv
CaQ1aazR/B244bYmqa/JAgZBnYBfrNYLMbfqeeMHkXVpkqBYkWSPHhUabB5j6j0+fT6zcSDO3k92
0+gu2DcgOJI6EwShMBuwuwx0nVsg15VsnmG0JuLrXi+iVfZilBUEO/xgJa9OEEVJEqXpOhv5BW0w
CYc30zYW7Pn0v5KFHdbTZbecVF5Th066ZVwRmkWI+gFAdCrI97L71aM9UDffLp9YZyUDYzzABISb
TtsyHT/grgyEj8YLaNPeJNhWtUbHhVtIyaRIDCwjRFx7IvjxNJ6LUDPbFtxj27bNEv8fJOb3gSW7
ET+gnU+jtj4dUDvWqG2+z8YP6m0awefQsxFxYQRNyjK24FVNW06Q7bP1ih1F9gh2ivTdenWFTmZZ
2e/Jrz8h0dgLOzNkWIwIq0P9Cqm1pYYcB6rCT2I5Rq1iAVZl95CMcpJzJAMcsKYnrcZFfF+AHAy/
Zt/cmIpV4NQ/q1A4z+Roo3BUK+CcqjqyBFEPpPmLCFWLTiJ0USY4mEFVKM2N4abgUlxdG6XRoi/N
zkS29lMISqW4kxEDZv2zMApCzn9AaN30yEW1EMI3yofUc5IZoLMdgSfkEWeayQmsorfLvgwEKLlW
Y8jUFIt9vn43ZfvfSlU5ZQ5LFjZFpFYXTCROu/H+Bv1ClJ0zF1TMjmQ4okSLhmiWhwI8PoZLrpgY
dQKJIUBP48mLsUE+azfQ7on4W3LoKcDV4DpcR0YLVWN8CG49pQX6P4Jv5npQAEg4bewp6thk5mUe
zHTdvaLxUX5uSVAYaGDFrxnsDj87F4QOTA27Dxb/Hkeb+Xe7jpcrFLEPqejs0aB3zHJp/LyrTi0m
O8FRyH9y5JoF3Y2LXgJO+MHF6RUsaupWHfFGPcPRPxtT9LobW2tBrL/oWD5aCp+cOVMOkUpcgMcD
E9nsbwa9FO3wlI00vb4I66ut1GfOPuZlgKrJ/oD0Sd4YK/7KPrKJR5nlJ+MliFVlLetrKwq54th/
3Ex7MJCvBg10dxaZbxvt36LM7ZvnAiwY1LkfV86Kqm+QX1TYL2V6GnAOs+OTBb/35shoVLdd2Tht
Jx8bfT2s57Sklx9m3q6dcHM876fya1lbziEhV8eTyQA8EaetuL6aK/IMJE8J8U7FgvLMx+TMFYLT
cPvt4DKGW0SIL4owAehTU3Qt2N3Uq1iykC3Fisa4zGy3Tyt8AVoQforBAJOXrvlHV66YPRykp/TM
2KimF8EL6OfYj4otZw8YheLvk5hY6fGwaRMVXMiHRsHyLZQ9ZMkNqEMAGSxz2sd6Gnt0rbu2/Lhl
wrCGQQq7OSS95PNwWCDFBt5sDhaA14qIOU1n8lIDfAM71F4+IVwABjYVstdJFxIeinCn392kwajW
xfRCxCV/OkrIXHG2T1vjwNmRgg8O9NS3QM1ZEwIxRj6ZOopcyCYGiWvzNvWfE1aNibFUGPw67SGw
goCvsRnMNIkWooITqW49wOGxUAL8tjhg2DBFBOwg2Wh/Z1h/ujVp5x+yIQi6YEyYOR0NpyLcSjGu
PVFK27tpAEylU5mHVLFwqe+a7MgSwS//MnIhcVDUoj2kcWO3z1/k8WGzDTUB0y+P3C2n4qCAtScp
lY0UnVoyp2kxUDJG7f93lu5ph/TtPINR9QROoDKEvbrCoq4l183hrbp+0XisALUQEfkSC8k2S9uU
9YxYVqbPH0w2JV2Ajf6PhF25pZRFncW4AvBJbTXNsYk7Z7eqHmiQVlH135sk5ULgsn7Ntw+gmHFD
6emF3mJgmol1DXt5Wyl9JV7IHQ/6lfVL/2VeFfbjmzZIjJ8VD5k6AhI9dTiwVAdD/9InFyhiPO6m
gHU+4QzQZm6rrAXI3iznuQkeNNJkhC0duxt28pSsr2DdxofYo/Z4LkGsRuUBsVTuS307NWDSPHVK
DYwa0Dwda0ZQWIychWtv07KfZUj1N6yX7h38NN0/+KL+LuV2sLfxUMf8C7XbEKtybmn3HC4FfSbS
Cjglhrw9zelPaQggBfRFL+ddl0ONm+dJdjD6d7f/SGn1v40Fh85gVqb/T8QvCPzNSp7udEhJ2rUr
uQMRBuuZ7owjGWrWzVFX/xhcbloDV7mgoMZC0GvDYwu+PKn52sEtP8HdCVZCKoQDR/GcbCkqMmYx
CQCcAvKcYWoCEM/YMV2AyXge51o0ZeUkbgoApOH5lXYgtafJ923u7dMRjBOM8W3YkwplOgMtKvB/
VVfQgfw1c2p1GbSHQc1nQNVtAXiMWdXHSZjPoC1KK7atRnEMcnKWafJ1hKxQYWlMlvY/BO7dvsB2
Xhx4WebQCxZxadWcc0l3mZdUfbioc5dYTVMc78CD8z0fMtCEUIheGSLRQ1uXaQqEqxpJbJoAIAoU
nk+mVC4/SVsFVsXnTQSqBuGydnxEqia7SynYXFz8NdBVPnyBRTHJ0KpvnbIqN7GJ96G+SQjxgg1B
9xpOhRO2mxRq+AqNQgOj+5F56V6DU50VC7r//sTDrTu/I9bztHdIxfj91OhZJABF1tbqrlm8bIcn
JhJGDUWF9kEHq87uTuA72UzCCL1+yEPUK1r5gN3+DmYHzOqcmQLxuukGP+1ppdiuJMW8pbw5Giin
OrOTBoTKeylO+gIIfqc+K8ARgulVlxSuiFrfiSccxVcQGh9dZ/5WX+mggVHWkZZH4aBSJcLJ4WcX
Kv7pBwmsP0zmAdGATmc+3ott6TvhtdihdD3tjUazdnRE0zNk4KtWxfXZU3nVwxojG3a+kBNVsF3A
Xf+WaPlVt38YR7NZDb26UOWT9qvF3sp3c3mtedEiGG4YSegxo1uDXfEjRosWyIkt83ZAbqf3+IVN
jOUx4MCR1eg8LivsYWOJQRzGUWFH30QMG7xCPn7MZywZqe/4zB4yqEb9+XKoj22B8aXdab/xvf4W
2bo9WrKAh8gfW9YbqP/RXdsZq2WVLYuQR4ijD5rXA86+xNMXFRm38hrhIlkAHvHlTkZbA0KW2/bW
UkBJMFjy93SfUxOCsKmAI9OjY3SO4YzK2+xx1Wimi/jn4WmHOibmhSJ6FFPAofnnVUpZCEjyNYmy
DcpT8oel1V8f3Pt2OfLpqUz9nx8gArtHeDMtv2SSWpZ6wv+n4ozQjI2xAsGK9XuhB9+ZEJophfBq
sT84qyZauh7kwGztf3E93tNJr3cqhnOOv3x28Z+WzaiN5yCHKzCBYtElekOYkwCrEC+bpftJFWTQ
5IDiwRtyuuiB3/InGqKpMVakZQM0h2hACjwum5B6cDm2qjsBfnzbvlJkd4nAesQTX8CmiO3+tsNK
Grg3dyVJ2Yx6ujOqeyc3LjZQsjfixiUpnSLUnN9mw7kF0vzeEymEpzfbmU2TvsVMObLs5XLBl+AN
LtL5bXFEzemwAslXXt/NLrorSwGa1au2tTaW9f6M6Js51CQhzE6hpaGZ1z7pJj/avBoq+aHNaFgC
Rr+mYfXOIln236fVsnjSYIiG1ypS0IPiscKFe0366mhgQJdLd1mg8dAqExd0AjnOM6sKYRGwNVAk
ImLRSBWuLtYErW0laLHOMPAqVWa945xe0/nOQPgELjyaOEmFKrA0+sOmIDQwnZIcLO+hezFPA7t1
V0wu781hTZVtpx7CejTMYX3JCP5nZVc70Ve2YlFcov8X5lyLaQtboX/kkjolUEkfMaoNo4LA7Ij5
eWCgr0+avigKQO34W29/Ubm06hYSXLmL0+aNTltd0QQKlpLwPiPR+9eltpQGAE1bJf6rlLNzkdzN
zxpSXaL16LL0ZwkRghyL16uNFxbF/pnvADSyCAFy77lbWTuooYlaqDDRNmGnUHRG1WWWQ0GdTx7x
mp7tlv9YKXxbo46XlV3fimnRBl9x09ygnL53VlnwqlYMLyPDvMmcfXo7nfCWUBNL3SjpsZcffrZk
CkmOlf280+nvSRdLtqggFwhyjSymxCpZ9l8ZpCWI6gc0zdkZpdd5J1VkJ6YNBY0LlKcGcuiDOSWb
ZJP1ERBPjLHiIkgB+7862GSDi4DgwmUkVyxxKM6duBOeno3U7jPs7rHVRoivmc3ZpjAOIOm485/+
/Y4CiJMahZ4mcHmvHHnZM8xB+D0iFP9EOpWA1U6rI85OQ0W3lC2lIkRQjuQzY5gWORHhb3tonyvH
gr7pafN7CbpmEprYu+HjRkVFGwPU2Jl9QzrsjbgPdeuGkp0nsYLUPSl5JcDgbZNnd0Z4KRc2uxGs
xrwHHdnE+JAFeTPrE4xP7/G3OdTei5xQF9erhH3mMcXOIvR4t9D2E09AXIMWwDp9+DLNkQc5uZCP
pMkn70N5coqD0+VElwLab7aX2RFe5RkLjatXxz9lA/q+iwsgzBQEjkyd3Mc8Wj/9wiFqzpn5npkJ
qLJFj+m3VKI50u4SfuiZhHkAOMrQ2BzgPqtB87vBndLwhmMzuW0ukuglMoGqUfg8Mw2BMC4T2pnz
RZLIIK64cDH+n6pk7dkJuuWQZ/ZBP3X2GrNFHjTwe4ZjXKvNB+BtPKwITFXNzZNqilgGGeGobiJb
TVxqh3tQ0YjH1Xo539lKEe8dPAbZmLUD1xzSm68PvK+B1LDBOm4Mx5v9e5bg8geb1iRhOpKlcLtb
ZL1L2wJn2eOf1VdhQIBCvYRWT3BPAl24AJsrzLyeluxZqHDl6PPZqbmsYh+ESKkuYeprfLKUGiRu
Gl8et3s3HrHi9+1gF+aFmALUw3OCEzygxlf08WCygcjfQtWi8OzbfCAwl5Mp72QM03N74kQe1uLe
H9jgOaNpWFE+OL/Bd7bLo4tYhDTvjqqsWytrxtiwriJFRxaQFU/Ynvzj//6EIsIMH8B9rhY8v6vM
4NbZCPb39jAEHsHhDO4Cnx3mJOamLDvWzdRJcgNXOC2IgSekgRDYoAcXOMmi/pkMni4fA4uy2f1y
IBcFo+dPgMLMNkY3lxy3z/S/ZaVMJ+Pm+WVUbJv+SXohUiSejkNPJDkaH6cyDuhG73tP+mpYqpbF
wQsLPy3p0sSzduxmd0BYMoZa0mIsXi/uo+VVsiH2QJ3EClq6wbgLdVK71EGHqWJzsfg/YMsQQfYr
nd+kDpbQwh+t+WOlYxWmeX8IAObia9J2k3mlHDZGwKiw4FYa00L5xjrpKEpoyJwquzor+tTMi6MD
rZFW3fgbX198e6jSTMJzEvm7bG99ENUXeWmBgtV4eatdoKQSkG9ap6YIhkeli/lt7FcEl8pEkT+H
NfLLSRAYDNdRaVmD/VTp4P/mUSzhDMAogUoV5nFGfZTo3lG9FePMnofT44UrNbKFv84wwKAD5Th8
C59IjXhoEmvQgNPY6OsNKHDhlqfLzVL/UIlS3LGUnmlthpEsvpyESKOjRuurBw3xuK+z6HZ3qiYE
7X7V99pLWK9V1Fk8FIUuasB0K1WIH8MCJZSNT0eSIXt+Plw05wieqBJ1PW8psquCIX89pbAJ+vIk
F9Wf1ir3m2jKm1wFP3Jfx2vCViiKN6Ob5NluaBDLxkEaUfUqvHfwRS2XqQRnjV4I+h8Di0LfnJRs
vAtd3yip3Ak/tVgufO/qv8MfA3OX1FEBieBw5TpocBf2HWNab/NDcNzhC92qrgOBfo5/UzS4m2Kj
4pUc+eIwleDLFHok9Atai+g/V1qK0Ao9+mW/h9HFu2Kp24GVumIZORQ1ECF4PiVJAiZjdP2coHt0
IxN5ydypHq4xZDFjspLnLo0fOzgB8Tj06W1l3/hHV1oVi9mz5B9ay7tQlZ80pAe5p2tOCvOhNxM9
WGpff/iHNG6rhJupvwTw5jk5P/wrdxSaGaItBIrPXS2Lr7Eh16RCHLvTxm3d8iL/0TQRkIJbClOs
+duCfbcFU2H5mqvwIWjnlpqa9VCOJyyVuNMzvNzGIg0fkqKztYGJKzCfXLR7FJzMUZ2JgjU5PIcR
Gg221y9RAueQh4G7SjdWsSo7+LUKUBP5wMAOipdnhc8LjFPa3RtMVPf5EqPCaM4LPMX/7uBgGzUy
kk8xa9pFDN7zZx/Qg3z7JowWNyJPKsacZFIUIcvnkJs3mAiU4+BJ5zV/z//1xg1YbX4bd+nSbDfz
CoO0p3WtUGC8OOQ3G9pl+w4YGP4eaMsjMNIR5SlxT06IP1oTTZgrpTi1lFzFp2T6w3bYXWHv7TKE
Knvn61KWo/8rQhWGvHIVXK9tNWi8ThdSz0OFhHkJGXbwpiv2jOuqPUEjFxA2g+AXH6SB/oCVcMuD
mTUfmxuF9mTq/ULq39ebeLXcm2fMXrccZammb9xcgJ2uwrSY/rqA+x40TNEV3k7W2yr5HAleZSLf
/uk5ij8xbk4NG2TxyQn/PrUremOn7fkZ2UaEf4YQA29x1d7nvxgU4Lovane5rk1rxFyv/tNAEgcp
UgeeeiCyCyIBDaOg/A9sVndiBrVFSgvGQuusAvkohn8NvVzWDrSRZpthEE6luthjpnZ2WEX+EDWu
+VYH29F0LNr3r4f2SLuhnukEYPK/Gs4uz4yiPhA9aefSa7HWaZraosKjzHkmQEy7NQpjy5/lRRCK
ns73QCvq9/z8xXBED5yR+r7KS68E+XXsVj7DDaTKIWfGwU456nPjSnQ1Y5qTmSvVadEn0iqp4MoQ
6DG4fhkvfwOYUQQe3Kp6ZshTSfoX0xEmldN/Re1ZOg+xCuQP0nqOfdDGqeGXJoyQaEF8NSfTFfFW
dx3ZHK+J0B6bBsnpiTcrKXYiuKEUT+onOs95ouXkce6EXlTWgfv6370PgQPHDS7cZCKj4wF5Em6d
lDQpF2K2ynZi77nIVuWI8DcrI4ibsuHi1eRwPGo8+eB5rSDGcj16w0+ZMhuLg5CR/GRbTDQys1uM
5iI3t7bu8wR9OgDuQ3X669/ltpzGUB7AOLbcwL3dE0cPele60Vzp5eMOZVpsxpU3Ygl5f17vb5Vc
liXq0BYzqD2JI8mcKNsZnKewxd4nrssTYzozTQqLan6tLXRD55IEHZ49FHemBA54/zJQCxCIzond
YY7ZZ4LpwJSGJWTS1qG0B59lIU2TmCD21Sdhk+HLZQYpL5ghRN0L1Qytf1P1XwcLHp4UADCMenLi
fd7VZdsQVQ05rg8uZJzsLfHwqjFZUWclAav+/f/9TroQFlouNFfh42ytdciUN9rBAe80kFlB3LFE
01U6JEk4s4MOOQHCVvldUPwLNp4v4bchenJjZjNqCUG7RneIDvfhe4dhWVci/phPPKfwl9dAEIpO
u/HTAX9PlSh8VAMmbMcO51Gj9/hXmjDvPthtEqaPgO9ScPR7KMIZgXIB7ndslXVQ2vcUNc4o7wJy
2ex24Ahc0LCCWeYiWPj5O+iqwtsBHEiwJLFzWlHuxtTfSFAKNm0iAfJNqsdvvduF0WYllwa7Ricd
TIsfpxek3WyetsNBGDqm9nIZqRM8eO2y1vPP2hprr7IzGeOZwauEIqlrIGBvsPUrrKjhFnymVG1S
9VC+ONCeMGeH5na2y6fuOErDD97w6t+XKVe2t4N9AGTliUdbJOLZAoAZ0xEDnZQshBMqWOov5VB/
7E5haWOyWalqf3pABoqm2sweIldePq2rm9n7rzPJeqaxaPfBroVpK9tXDidCK0lfx04X47PU5+b2
x7x2FAch7ZsMBIt/+LOIqcBjO51k1TWhzNPna5yYS7/9iXcEEl5rg7yg+H4Wwz8j13TH0vtIXYeP
b+QULhKJg/vTue4HkVyy5Ig+A5Drf08C6WatbrGi8MOHMlXmZdDs4cZE3o+6ZOKrZyFzUmJIC2IG
iDrLuiFFqR1OQo5bI9V0DAXYK3ghuzK4p4n/+Q3u82m1FVPqa8cYospAtnNPvesbbSQcAyOuQ57A
OcAuDPJO6KnYAatCZU1M42z7+6XBSTLEDgO64LmaoFgx/4lMSQsrISOI+ioJhYAJ3GUHFfs5iDbK
quTAoBFxw2aASMTewdBccycfaPi7xFJ5N74fog6nZfqsZ0sZFjiWQgv011mW+LDXLnASShJqCC5A
jdkdPzAIDxJhvOKuoJBHrI+DRTCNPfBE5e9eYxISbBjtxMhuGnBxMCnkK0I7EgSt2HNmAm5lkAYW
PXyjo2Wc37W1SA5niupJ+K1w5DlFyjubUqAQi0IIZqf/Ce5e8YJk9/tBM+sIAjmix1abmuKtCiph
KhLF325nu3SQGrySyT1yYi6q05CK3VA+8dXPQ+VIghyhTEVBGYWGzSGAmQpwbYN+IAL/YH80z1pj
sl3SXzDEvNaW6HjxQxfiHa26BlcJ+2I58hUOP1YttPcUhy/2YWE7fz9l7QKLslbbkh0+YMh8HY79
Gg0/HwSsMjBbxrlF8kz3N7K2xCIdSU7mcnoG8sTgvSmZeVuN5PIUva0EqC2WD77A5kUam3FhBDzM
2fr3OaN/EEzGlM4Ast5JnUIxiKs883HMgq8TWD18hLuBmsRX1wyPZlNUFswij5Trmt2WPvIMu5r+
IIvuvkon2ACT9rgr9Xorwcux50Yw2wTtvWn7ExZrf4ciPO9OSfvh5hNk3fHd1PxOTSxapUKqz1vO
PhL33UdPNAZbV3g36VEF/EZYeBuolUtBskKxZzEs6CjQh4dl8Vr+oeW1TuUT50DhleKslJfqTP97
t/rVn83Sx3E0HrWh7c2q8wkv82Jq0aB0cCT56LUd2445+yvowGxrmrqVSf0Yp2AysQNb1dxdSis4
P2Q+z/dfuW+0ceJmxb4dKPaU+LCbpYx40qbcIJ4Xo/hYtI5MAYJB4pT28iBtrUXnUZ/09xO0OAs0
Wef66xN9vpdf+xBAuDcTNd0fEw7TPMVPd28K8HzpTT07gFq9RrjCkaGYr4lDlt6zGLFh2QcQAXZN
1EILorD5/CS01uY8q7TCil6/y02msZpjazfQPWazYrirdetKKg7z9WpUySJs99NjxmEIZ958BTfQ
6LN1nHcSIf9CHdb5RCFBGYhSVO5wijEE8VADYZDDwL42mEmyCmXd3SsG52t5sTjPHwiVuxu8OUGo
scMd5WZt/kTAzjM1FPZdmqGDF/vMpdD6cjhNse6Xfp9wIDgruHdvwSfOBsiEW6rAMAP4I5Jq060a
B3+ve8/0V3piKi/LiS40+dPgjcb1WhdIN/7ZcGuisHb/ck+9akoRQJkqV+yeqx4jf6VV0qJisYFl
VwK2F5Wo/DOVhySgEVJq3BXdyRKVQFxO0hrnxAFN6DQoV69J7MlVSV5gwJKAcdxCTVdrsGS5Ubjr
jUbUP95/Jw+uMWrqU20jEIGOXnj8Nvm46f07vj6tXFN2VwKKnc5SJ52jcC+cUcwa8dAs0eBRmfgy
OM7n2Byq3ZMUjnE5R5XBhrelDGFLMvu91VBwwA/IQy6VLwcxGnBvcUCkXkl6gNTwNVs7IGQqlv9i
0hptCcZHxVUB0mbJQPRBLCrdjXPql0CF7eATWuVEm4xOFNEfvFPbi9JRWcPJiQ2Dy6AqRxqCP+rV
1jKJ9VuQyTRD4bFdHkMzCZNI5YIMQs9RttO+GEnFyBcjC99WvV0G/Isd39StFKG5iVqSPV1WwhrG
0Mu+T+4iO93rUXDXPUvipxB/eZUg2juxVPBeTo6KisZxXG0K7rYtKleKWquUexlEvgSy7TGy2CAC
w4SttGHYGkwsaiIkgzFMtInh4P1lcZclm3tU+pONBMzzzqucose5WEf6j7/oV27K/7J63WtWQOf2
DJ3SdQUdJTzfCbLg2TlrdpH9d/gbVRo8wTA+7p0VelUDcLIhyodLPPeKNA2zxfcMgehQAQMcuDj8
u4e5xUUw1K3cIx2NgVTCe9ilKAHsKfeI+J9ZpddHhwhPKQnhwDdTsaTrKsuvpcKsLDp5X8bZ7BcN
Dxk3I15mPpx0H3cRx7+4fSl64VWk7CwAGSLsaZDtSNf3xa8JHoy7LZxusRV8b7S4CTM44j1ET5n1
lBXsC0JtoCfgVngTeRAD+P5sxolHbFGlSttyMD9+fjRZQTf4XUhbTnaLExF3fa6ijnKu78TmUL6c
/wVDZyPeBIt79ZjfsZtuRiAljN4JBDxkvB/zLwXusi4/uPfRhAhEmWPprrLUxN6ql6rK4REgQbT4
WOzZid5yqST2EBIfqZ3F2ITpJY/+M7z7ASAIIyD6y4ChbzjF8harhd4zjMa7vFRtLS7ALej3sEBN
oDQ6JaWNSNWdnUl5Fff1PqLX4sjTGMNdjLrf9lEmGQ2784TlLQqN8QZPwRSZKrR/1yM4s9ikL3IW
e9vF00Voxb4dYSqJ3PtAzez0UTGqBd2kjvoA1iU4xdA0IGqxZ3/xx8+QbT+B6cZuqPgZL1lm48Uz
u3N3Y9z4ng+N8JOAw8Vi+iRZOMwFVNgR9lL9FZR4njC8Ld0UfSDPJMrRAsDAHZTdOnAEMUCRmbhZ
Q6Bx5/cGInDesrLdJ2bKucOeAmyus47BXRw7HF46gnNL9RRvdWAhBU4Zcl0984gGmPz1MS4EcOSG
KfI05bvy5DiK7roCaYhhWC9x2KF4GdjfmSd+FJDZwIxttfb/28JcQI6TEJsKQOzUD7zSy/T+Bjep
PxtcJoZVIwQyJjk2bdDmLTdSPSo1PrNAuCeK9KPykcylpNYQL/yFWMIaKAkXq7ML/83Pgr7i20wl
qNHI2bhnEvXcQPn5OYxf9rh07WuPgaHEyZrsO2pbCcxBX6tknySh3leYsGuIx5IKdMOZBHV9j/xC
fTTkLclUOfXRtqls5a6FgFwgKVIvnVhec3Zwx3heBdjq/iNRblKBp1BDwx4wbctsecT4dm+j7dAC
txWEiuzlMknHuzKXvpfYNfqJET8Rc70BItH/vDbozWtde+3s2U8lk01eFF4DRK6xHpT3YNDBwCc5
Iv7ya0T7Mfjg2zRY+TOwxigRgYNToajme+FJOeZgKdM9oLPIcbsvKNdZOc6/+OzK+LZAulSC0gMO
b1idCBdO/GEOWBdnXNwnBbuZgPZs0naoOPShs3H8RfwpFyhBb+ydfYSjjK+5Ao0ox33IIg9b+rZF
gABGxDJ28CUco91E0DEMYggp+S0A9XB9tQgZN8aPaQ36h2lOY9XgflMYEWTYmG6C3/Nl+ibFrQwZ
wubHuPLt4nTCuZ+iIKvLjqAqCXMQ9irY1NNin9Xz/feOSfI7T4/NF7PaAkfP2Tblmn5oqcVk8gXV
9sXurm1j0YIh2kQc4oKJWSqBLSZWlAI6xCVA8AW4U3QkAFGVy7xuEj5J9A437NFlXrYcMZR/CmkW
AH3LJFRnLevYZhhcgVwtHq9N4tss6DEZXrYF7oJj2gCk+X2U9FRidZ8Ro4H9p6nXWgl4C/o4uDpi
rJWoMYZ34+BxVSrJD20wUkgiMNhWuYRePwUQQRBqF071tjvfduDFiwNqzlCw5RZHcKm44vzYEnfl
1Bd+no+7cMsDbl2vwdF/lIGPuquFo/J4Pr444upX6kBxYG5pnMqY5a0+/PJJxQ2Woh5qjC1v11bU
vzDXqAa8gDKSylboD+9bWMGONLi7e1bZ9Am/p9YSC0Xgq+7FE82IkwBcdTSBPXPbYEWhMjCca4J+
OtFhrJoms6kzK//47pqXy8wzLDKeVCvFVhyxTPX3O/wsn7Z4Ov85Vdsp6OXSQEtr2fSQvZjF8mdO
1Is81mmGr4Z3doDKjz1jMeB6RkymsiAP1TEpYmVWyt041oDyKPJKX+hOtfm1E5TKC9WW8job6I76
+7Cwrlgy/CfcPfpO++c5qi+CgEuICTmXZBj6pt/ubXJrGzMwpRaz4Aus5j3gqGRCrCKf2NMLuHHX
kzqyPEBGYB/iRgPMVh05RetlMVA/phwHtz72t8mOlVNlKY/QS0tb+1ZDbzI3CbMVGEkjlFb1i5rQ
/SNsigYbsdXv1XXlZwF70qXK4LuC5zmvMRGE9ChVXRN6NQPsJSQRFC6YlB3DEzG1drWyQ3Bngm59
F8gUbSyybAAupA3FRWmIcUxIoTiJxqEhpMcm6+CAffA+J0RrGAhu+/mu1XGLyHby3EwIf5ixWDZM
1Lk56rvv6U/Jz/rBdKEFq2zZlM+sCZtM6U5dto4VHKMUZ+2ZPb6iOFWmXxYqZ+ZFOvkS74U05xXv
j3ALAJMyYvWVBTCyCc52e84ypfs1ojAh1FLPgszJP2u384i05izJvDsIB91Gy6WviJD4U6xN++qV
M1KVTNzlg+CRjSD2Lf71qDofhKZw535XYNvGUyjRAJWdFIziH7Gr0pMwCUbwaUS/B+C/Y95073sB
O2Mt2w/1tl3S+GeAduFqHU6jPAplLy77iB0F4j06gDYTDKAYFaRfE+T19acY8xmLEXhvcOB9F+eG
OHPzX2DfAJfcwNre/oZCUx/EgKsylXPX21ShVyA5JygGy0I2Q6MhDh5EGlzj+3JCGDJA7Wv7x3Sw
dB08pxLnAS85uEt0s8J3Jy168K3Sg532qT9wPrGctCP1hRGAiz+OlHGFxHF4s3pl+wWOoLfORVlj
iPWyILcVIKfqancaIPTMkT6qzQJ3YfJR26FQKNK7PdaFObPCB6fxVl1aoEJLmKy1KsN51xOsZW/0
cT2GCaH16+Vk3veRP7dz5ZUb+QbkutXq5uXkDL+A4V421444LXZjYDbzFfZP21Dr7fy3chfJXa94
MW6yuRuUtS2gGbM42uexbvXWidqIQcHKCj9Ch3/98FOxJLHtsBw9Hk1RZYkNGQNaVq+dV9AWAGek
Er2HzFsKZyeyT6bzBtjBePErLP+tsUUuc5oYrnzSqPeeiFDBchM62zhMxMJ9kOkhLlbckaXD5D6c
3ORS6t1eNJCE00QxcuVRdSZd39FHYNUVVDyqv3KpIaMk/VECECSVTLZTjlRyCl8ACKU6XI4liGkk
rsD+seeWYH0x3hGLrnFe2T+455PF/ayB4F57eu6ugFC5lrb4/dKTdbZf7rjlZ5z8Lr5hqN74jS0C
5kSGeDLFr3PxJgdMOxuo8NFAwkski/5TJLXVSQhOa1UHmRZM19DHJmQHUKw8tCw43p/ON7QOPwyw
kuDqQwKq+ekuur7aGthDAnvLThtjUW2qplaEprDdKjN4rEy4Y5xiVXWOLXY4xaB0Xv75a/K7+85c
YUF8fj8svkKCvNUKGBs6UTey7jRWApnfbtW0g465voTE6EptzQ16enpBhEp2gjNA23MwFCryISnt
XtMs7ifOJT9cY8ozeQlq9PeGDNRj94MZgb17FCwiEWJYlr0rb6hBBIs/pOQGeyvb+8UA
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
