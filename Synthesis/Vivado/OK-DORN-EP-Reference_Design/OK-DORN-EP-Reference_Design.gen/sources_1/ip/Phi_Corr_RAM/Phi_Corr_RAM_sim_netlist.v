// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 16 17:59:04 2022
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
u3Dqwm49JdIyBf5gcy9f24FceiZfdqi9bJ285FpJg138XJH/Zp3VErNiXkQaNrbTi4TRzfCifghn
my+eaf6LuwlVs7UYcZdO57PveVyEsHOTPOTPYMFdhpJH1AK3SxEYU4nMz0V6sVAhvjC01idNdObO
Y4LxewhOXm6nE9doMYy+7ShCU/7fchAzpbdPAszXGdjXNISmbun7GXLZSVZB8McAscPF6MQT03Lo
Ub73eRXzDpNnbf7Q2QjaV1kyqkcUbHCYdHFrzpQRjL6X0mbQV9a1Xgi84nEfU1cgZjWLfEQlrGax
nCR3vm2+SuOwWc+GSGYgvxBreztMFuGTH6SbrTMtB/Q+zrXjfi19ktNIVbUqm/EalVG362YrDHzx
HAFbaQqEzrrfTQj2QrzcsfN9lL5OUXBSnkZJQDCu73IYOPtYIn2us9LwmUrWA1KjQlC6GLcabHM1
0EODHlazvbl4XsQh6caRit0VidoDuuxX3brlZYbsiBiZMTqQnoljwKnVY6aHJtED7hE7i88/i3iU
RoLfzEaWh0R/ExNwm9bVktVbCKSxj4Tl4HGnxH0/LH6UW7Hei03Rr4/kJoR+g/T7kRZ2S/9Wa3Tk
tpcSopnEicLa8oBETdWvjPVXH92wT7SqwQ2e8tHBOAASMBagn69VUZJ29dAx8Yzd2Vt1P44XH/yO
VeqRxFrVA3CThfYOukq/FDX0T3L83o3/E2QcwVKbSZuIrr4V0GGvRrQ5prL6+DAnImHKpVFfbWL9
Tr7/LftYEmIpd0ucxv5Oi5jqJ5/k9NrscxYTAaucYTrxUyg8InV76wLU79EPEZ9fyg6CypCGI5+S
rTXXlTvNSRVXslirD/1x9dV0KsusMTUtRVPZhz6698O0YDiHb57Fb1BdK66TeRcMgE599I8w2Pj6
yGUQM5lmnBuhexwxrOc/+XQd1F2kGyXv5NT/W5xiOOxJZp6Jm77J0hbyWiMYUa9xt9abPq3waQyM
JwPtt4L5/EXxluslNpAUlRCUoKbJ9UgRKp06B2TgMTI/ABawQv84AYtl3/ZxgQTdrhPUysgPBnna
eYX+FAuRZVAE7/eeJ7PX2JaGFj4wyvGC+2lUmYBvoJNJ8cMyZnLlA72xSBhhkPXhL66y/29tumg+
vAjNdEm5JT9XLdmbspj94WsDp2gZVld/bjzshZ370OVvHXHq6JSxclhNzLDI1Q1GggOPCY8JXIYp
s96hTqhEl5683ZyKtUux0qCmMAfyMj10QrV4WF9myjKod/469Ivyu+p+pWImElFC2H+XxNpzEQuf
pprGfvQt+/Bagwskw0Cm0uXR2mS2FMy5efD9kZ9A85xPE+C2LpKIcwOB+MXnUUTrOLR+9unRyiSi
FbpzfB9tf2w5w28mu2DBX6NnvKFirmEv8SJUYrFA/1raws/Lfz1hT8qH1roysfSFnTDHVV22Nd9X
BFfa/cUJ1TLFTXPzHq9+4LkUrajLCSMRWA9jGug7uKsxjNAilTGic74ZBpsKMpE3dT7feK+wVEBp
6cYngk9OF6lUMlCYs71VyVvsELfxEO6B0wxqkGYdl2tDym/Ql2m4cziSLQ7DB9h0iQLAHciKamsS
DKyHk2OjIAWLEb+O5n3ZWOBnuhIiVoa9cpiQkmxnjNQtvxqXWxipm7Jr1InJuF1SdKQ+s22XBvb0
ZkHIa9W8JuluidC6JFQ8eu3Cy+zTrrPKZpKwBvWSFbOPbllHHEZN3QDw1NVxGCzj0UcBPMfRtaF0
WhcZZLJTpHomByeQmD6esT+aa+ftd+KLU8NDwvr+57AjgGTm15WqYttBg2pRS1RQ0vI/IXdjiprz
RrL3BPsDMMK/rqm8UV5oC0kmrXA2Y7r+FhmRea3EoFn0dOmGh1JzdO3M/Q6cfW8gZ1VxZnlJEgP+
3RN7MJbnOTrAcn/nFJD5gEO3e16W8KiecUmREIlAazXlKEg00G7Av5lX71/h6V5sYKwi3efVSWua
zAwH70IuW+iPR2T9qI8LMS0oUJsP/kSUzoTUfu8A12jm9DJcs0ggTjZyXyN7TFEacQKvkUlD84+m
nfEXRCDmR4tlk+54v/Pc87HSBGoeUamCpTkHz5pnaFZ6PHecXpUr86hBNOu49fAfi5RITuiqOX3H
mzG4Mb9I9gBh2v12kGR4cwunKkmy8htD5z5yac6/BoexaKADI2mkPwAQcCSFfQg44ChEwDnGd0MD
v/MCU37Xh6t0IojCIh6vKKMqbK2G44wCsHnRdKI5iy3XHY2C/ZUuThFFZZ6gv/lTUsbQbZQOjGeI
ZqjwD7L2vL/m7v9BGrs0chbmuGbqe0wjQRT7MWDUp/8zZOdPtLdsjEyvL/pG2lJ5fVEqWsQi6rwU
ELm0ImDfPCTO3aUxBaLUjpZpqqMykw2JgW0jAKRuUBfLOUBgoVe4SSUivcJ59NkrpJ+WoUzHj5EP
1Q3fnsZJSEQOY1cq5HbYJGnI1sF9AFEV27mbrivtRCFwDFd+GqkqD+Z44iXLnK9yMTQlB+BWJNNa
g3PESLwdBtv4YjS23rR8okXR3tseOq/Yt32EJnOt3ntZVryTaAnFCW3wZXRYAxWPrnGeH7ZcFLzO
VcABatcmkgH3GNtRpch87nu+kGvvS1vm93fnikveHqRwaj7+bSaWe0zZSqInbkCoU5uZkClk1NBa
H7lbRLnI51LL/z3G8cIiQUNXoOD3wInp5aYLGfqkHCG0Xcyhna267gTLw5D9Y3orO6S5tGcNf5yB
WwKq+9jzmMIwdSKFcmYUrF+PhAnU1W4sR7vufpmC3GBqDiE4e8Ip2oY9Q8AFTtqOML9Wdv4yxw2Y
N4scxh7MZMvsOaIKEyZ54eHRVnwmaE7CCuW+FbnGkPph+1D29q18HgMkFBUIuVkpn5dF9e651sh8
UrFKXrOLQY1dpgT8cxooacIqK6nzgyXPwTlyp7//zawgLkI8qzE9P6eVCXnjE/PSTX1dBWE6xECm
CXLPTEPWyJDnLTUN7uVjWxEGfWP9mwBmfbX3Fg3zmdDQY3url9rzcLEGxB41gSs+QEYvn70WvRbe
8yW7VPfZ3TJXpsCMNPn3C6F+OZ9fc7WyEarc7HBP4Xzh78Tzy5XEIjO/EACIX1/W8UMnmpnVskZq
amx+2neY83oWZu2kZRt3lUXRFU7CUplc1FZFprHHgFofEc1B0cpuhKKSYjVnKrK14l5PvfuhDSiw
DTnhEnZvmUJnJWnWNEFtWNOp33UaEqCBTGj9o3VlFjQ3tNf4OI4lXFab10zaTGe7QJPN0hNaHsRw
TlkDkcd6tVzJl3gPyf5/feBZMtklxeh8ZlF2roU8+ijLOdKlFXiF4sTF/VMMRc1jzAiSNG47nfKM
ojyYg8P9hxlIfxtfLO5/OGr15WSV99NjTw9E+c8O5niQAigfRC7AeGy/x9s+aje254oDpf58QAtE
lgw/cSW6FByXSJJsQmwXgnM0XPpr6STa9aYEKQeCHooMZg5YG5gaE/VlhScv1zp25DH7qf8KV6Pe
XpE1jt4XD/huTK4p3HJeyCBgPJ3O0QuxCeq6BMXEaR0ye816jXfCftiUNYV1u0WeQefzzf/SRNKe
hGtC7eFbhEfr6HU4I4hd9oSvFZoSYvaChuYPLo38N3A5ngVsbb59suAfpDrKSS7s7Hb/Td2hSxTq
m5zNtLdL2mIibzCzmjCX/C1Wg/88sZJhGQ0JX+kiQDQG736layAU7rcJk65VPc+lYvBqeSFApUm7
GB0ibS+L6ZGSe5gzCdO5/R3NKCTP5VCNgTpZHvZO4kexuJSwuPCGcfgM5sMSbU8ORZjLweAanwad
rMYVWa0ZggqC6pqzoFLcz+YQo2ZxITwZOFFsFI7QmO3KkRDQkprd4k/qLTe8u3G9ntwzbLQl9q3U
JC7zgYs2XyNy3vOteVv1EnZ1izMIP4ctOzJkmhIozA7yOELbAdTs+HWpynYirQAxgc/YEakZ/P3k
flQR/ENqDUwie0XnBto00K9IZq0BqRMkxO1b5B8znE48eccpJH/eVBK4EgFYqU7TWRtbBJC2rGtb
Lq9JGpEUdsrD/KyMbhsE/MeR7yqic2bIQ1I0G+NsDsdbtHb64xFQPjyq3JKNYjSseIrtykNwYJne
MQPEn0Iik5enrwPUKTfdw2bMG/Sc60EHJ9QAST2RyrAu+JKNSIujc2Vee8GOiRZ5Jz8djKmOuUJ+
aSleKLLpIQ2iI5JjwYwQXil4fqDczXc0l4u1g6uXBgqjsIicffu8oN3zI36jRt7manvh6Iya215m
38EcdYbMUxIxEd+Qo+71DD5M4z+45NQgQj3CgYz1Q6H5LtZkukQFsCjmjAROtqCQ8dw6EyTKPtKo
9pTLeb4oCAR3aIUW3nMCT/FrER6mp+YZ66ghyp12MNiAFa/MGbeefEsUPhO6SsASXZkrPwUWaIke
d/qyIoCcZyYh9P3BYSbDp43az4ATRzNHQJ+LFSCJ85X9SWKd3O4uLkPnzj1osGehKbjM7ljzS8Px
pesQEHmHaEKHiDHaU0tI1ScKQwNxfPZ0/D6grUxt8h9J+ohSKYtn4CntMPzZEP8ucjHZCpWwYEi/
8vQ+RydB+5c29UipO2aqkdmHIZi1ay9r3sPV6jiNMbYIJVBBBsmv5iYBL2On0E3d5h8J8VWsARgW
msvQhEjFOK6lO4XEagGw9ywtQE88WWRBql5gta85dln6Eo3/3VK/pnSPJell4on5o0SiqloZLk+R
TQ01SPfDiogsOhcyUNP0HhQemwZOmcYqID7e+HJRXBDBraoGfnJaEoaggLpbMG9iVwJ9SYR9ms2L
C5FG0VeS5zd+NDL4U4UEqsVqh7h2tr6BmIBOajjdXCu08qHg5cmbMH9g3XDLUyGpl3R8KplfcU4o
N9Ge46V6xyjDv7xwWoBMRRM48tDtl/fU5PldorM6UhHrJ/rjqUSmVbtjkXgJ690Ja83lyoKpO6h7
Y0xNXskXot46KWhl4o6E26akDPJpsYgeZ93ApLwZ8ce+Lk0dITkTRSUgTJ2RfzutykS0fDE70wYp
Le8FoOzJk6RvJ+73w298aXrSgeUaSgG8hZUxY4+RBybrNumdgLR7ru4viSzwDEg6hTn1D5hmxbxu
UZeSGp1Mu8PXXFORMtdscm+rI6gHshBh90CaNuG/5E2MAFANIAGWnZO+LORQuRtYw38FoGrqu/fx
4SKvq1Pls3UBF48eAEsJrql2W+xhOMf8+3dBrtml18tt5VpfN61CgwvcIUoVFV2cqRbzPePV8XUD
+qRLZlyz23LvF8BQr4W7jZbSpdyfmRtKrAlVvZmFKHK+Mwxo79ZuOAN0o5or49PB2V4wzEqwixed
7E/TLouN4ONPrwG4Ny3Xvk+044WAjr17qHvlggrot4E4LdCwhW1KLJwVMLj50eOXZa5W5z0aAYg6
zkpmq6tDKzKxSp5AkXr9hLefet9fERKESFSLh2JD1CzUORGrNNUCKI3qE0kme+egaZTK7Jb/mj0L
60P9C0v0YHGNN6fBWdGxtLPxvjYGLSwcoU0kHP6Ttw/FFPOMzeYsGqzzXEkDFOK7qj7MSnCMeVr6
2X4f+555IzydJI1vsB8bptoEwAZ8euzJLLhfY/743cut4HZqZ6nrYx0nx6eCeG2L7QX3q7TdgByC
YzZlUONiSEyuvzvcsTXvz01dvPFX46kZqUz194Xqmu8UN/e23Akme0RG7K3rs1LCqjhIof2L3qka
rd6xMEUS9fjC8fIVdx0k1Va+Xjxx/62SyrnrOUFAOlPBzWsJj3qBJ5tc1PHoE0ZPd2eIhWJKXK2d
bw7L4tWp5QgruztrRICWKfSC74IiZVVVGTcX6WFP+eQZWZD4buWuX7xu0vCu4J+jR42oATBxMSrf
C1Pp3KJwT5aJT2+4RdVsGFA9FBafdHv61cs2L95KeEttknOoc3s53xx101oF5Pcjkuq9x4ifzKxH
rbVPcXgHZ7aOzeWaiQgYxPDkWfQl+zXxZU06DyMQ/2iZPlym9im8+s6qJPE1mW3RqYSdCIZZjmVI
ixmmDaJwce9xM2mjOKD3LjKRtyC6zrzz0a253QqAjma5j2Mvhvmc3Gx4zAKzxQ872MymgxNuydxz
f3drShgz3JxTnL0UmRJoWp3LXO6jl70zaR2OaF2bNlMZCXuXHerRJ7oh5EWzPoR6c7PPRtWBh5Z8
qS2Esq3BXRevV8BcaCKNxxxoBJlbp6kMPx1bFLdCQ586e+mNzu+TV6LyVVeVrCGvQbqB8SFDWTXK
RtmIAB7x6B4N22ps1IXK1hduByDg1r4Bp0rHLpGXMEHmo7X1OiaCBx5QRbCRJoWTgn7B/T59/TXP
m/T/BfbIP3oiepiuoO8RRcCbwGkHIhF+oF5aKM0ec8nV6cLOKwZPejTHMOtTcm8pj6sco9JXHLiL
2gd6+ZoYGwcyN/eCYKak6RWbJ5YJqE+aW8q0GH/MuXC4NzMOykjL1RE2Vdey/bZ3B1nnEFA0qaqE
fX7Mm+wBIZIggyheV9MXB2OEdklo57MgMZZ5q480xGEv4uJ9sBQhqJALcMSrwuPAnkoVFTlqDC2O
QEs7KPmA80W2u67v5fyf4DQczfJOIAahHFXtdvBGBkaw34TTmEOhpDtAFMBAmSpbM2l21Jugentl
p7pFp+DAGHBXCovryYNJLe2byEbW+3G9o/VogdeMZzjux67mLk+9UNvv+It9upxQnDgOskvjQp3S
FO9D73z50EIrI1G62DC8BlLlAa2t+KJ2JpmsIoXIlk4i6DW1Bd9L8fu1hY391OdcHVqwMZsu+VG0
GkZ3frGhUUdfdYUFv0z5IVG4AUCdjATemIVjMmz9/VsoTdvayskNBtk+p3FZyvFBEnlFx72z+zu9
c9T8VY5ZkgfCBsxC3oNsovf9y65ujocu00HxpptlIF5YeboLb4JmlB6hh/xh0sToMTI7oVVLms7a
645PtOdCaz+ge9fw0eHMd33kw3/hAxmgyF9StmFAs/ItMOW2cCDTUnpaG1f7d5dUm/AzIW87LTmt
cHGEbPMWUrEWEGXwErL8OEEwWuDu51+fICSA+SrHqk5Ujnkn6Lv5B1jP6btiSZeAFWQzDRzVmNOb
9sUTHBIzmUfCgiNKH0TEWLX7BRw+C6NxjHn1h6VuPEn9odaaJSMZFe6NTeYSx125pZzt8fsfArte
1Z80Z6ssSQVscpCq+yx2s5uJOdkNP0EU85EOjtI3ylp8CDbgQjl8kESc2JXp6GRe24g9Z9rjJgId
ICDrQtHrAJSYUJ76aCXfaXoqtVEd2mAsyn+MaGd0Jsn6tmAJH4+GpHvfj00i8KOBPahmH38+quN+
I+LDeAKRuPht7FKeUcjcbDQ+DmLD4ZyV4LyjhE4b0FK/UYt+2G7/DedhedgbI08htUHfzqOchoMm
RG8i3bTXgVo5ZdzGV6GkJk7+S56INVolZ/8ST+fjwo91tMuBpOjY9Vd8hjrL9g8+Bz/IWDVb2pe6
rUGARg0oRR9P916rSm4xTgmE7dJT6Od0nREm1+/rsD867rnObqW0QYrzYmoxv1CSaoQ9w1Uj0XrY
QUBoF3TPOWaGpDoQdjeBEWBQy4aXFtya8G4hpHakv6VZ+NYJX5N1RjVzg2Pxq8oK11kus1i310NJ
hxfgSgVWJ34hm2uk5fNseYqzt4By2NuxD42sdFYN9qXP55D7mcCzuftjzkPKLInSEig4NyeFAaDj
PVxGaRryOnH6J7W5gqn6mmeU97Sxc3zR26chKHhqwAkkcqKLNdIdMqpi93gGPrNXnSmtGsFytYZS
cR0SJHqE43Uuf2v2WJ5ltfTcOaAzC0JT1YPOMH506l9HlQH/asykFEDJpSrV2qbt7f/Hl4/f3/ez
MjDrifwv2UI96iOcsQUeTO86s7dX16DqFs0DOHi/MRjA9tmqZ/9KpGJ33odxiwYPdSmZUFyomPbl
l499yLGKRJS4jB4aN+KUetyMVV8kPDxixnVVO+uvcyB6zBK5E7/DhYCG8N83hklLLdPHjWvXs/vm
JWlhzctjQ408qruFQMVPBnRPxViAPP6MqKiqyy/LKYduomnxp5gWVrdC+3jCakBxsktOrbgcLfpt
TmKt2AfSFD8Xkh2iqalbfS6kIFEQ3f7Ni6yBxGmKCXXrvhPS1mR2DYQNjDlXeA2XlKreoG5cVdC6
EtOfgN0TTqLWf0ppnbYDFW7t2cwRQS4ZapGQak1nbBHKHO8bRFWwI/6jiU99iBxbqKikWob1Tvql
+pr/RTrUGHxeaySAmsQRJH/K43E07qA+p7t4yNPwQCDirdr1put80RFpzDZIxoJ+zLCDPmpVKg5B
ipxDD8GPKB6ugTHUgFiVtWBWGd3QtM7+NTKCWZloO6g90W5pGBh74lAViZ2ntq2KUyqAq3y8K86X
/UC0IfB65c3z6JxsrxQwaC/cA82ECWz1bqfA278l/sMuTZCYH61e6XjbW3t7IVKjreNPYxGjXImN
mfZXWcTDgMyMtp7kSjTRPeE4vvhyuxJlzEXyLHDdR+YZXi2D5+ESdHqDS/pmOWQ5S9FyhkCJxBBp
ZO/IfIVK7qIE8g+RUScLprlqtF7aiPkOdyADcTV+UzZ74mfl0stA9EUAmYHkIdJXct9jtrfCnMz3
fw0ZojG+voXeISPMAIWHq/6Lt4XQUfj+P5JKAHQg3TCyFlwUNtQz0s8GppA5IqQ9fYlocwIXdqOw
HbeAuwkii2V8y93CrQvpL5VkvvuEhtUmFc3p7dn0UptmyKjd2t2tYbv3fSK4BilmmIto9KqBb5MU
IKM4xzK30flWMkC+ue2WnhDHkpdyHg5sMKQre9/EvdPzNna4xc9xvuaHTem7reaSFqhkwhCHqP0W
eb41pxLuCng+at+GzjmTL6EKsVYz2WV24kdtf8mVPAvgdBf+9FYasKOv9wBFlY14mTqUHYbYpiDH
8Q91f9v8fjWtdMfXPedLOee0sBnJjxwv5BvJyG7P6hUqgX/L6Lu/VfyVdk5/byErFHPykUNg7lmI
dF/FeisWrt8WofuqowtdQEGpy4ZB34GRZpR5+ezNvtlJUL/PWCsoJEQ2bfZsGFjtcUo2a5Z1AVaB
+Fm4YHJaxATwTZASOsujZN0C570aXm6OqJA7FHb4vT13w9k37I2E0tnDwijdi5rorYQj0/RIzues
J+7k67p0QIIusFewaQ+HARp9LoVmzqn9DNS7NLh0czJRuXtRHL618PrAEo50lFZYtNnTx9ti44/v
bZan4QdsEldFeQdjoWIhjRJS/RglzRLCbByNWTv+EfaZ7VqE8zcUiy32aT57SBJSzVwpJl07qv0Y
HZoLRv2XzuDUCUdZz6SYJnaM0XrJAJgfTrTqjOypULju1P9ZofZiV1Nu+SzRmmsD7U9aVwOGCUDk
DYue8/fn284e5KP/paOVHSgFZC6WnHiFJfkrJk2mY+kcYst7Bfrk3VhM5N7GZQ3oRxdmGNbjYMQj
NQcrXUu+Vvl0ItwGRG7kaAH7ahryUXB0hX2Z2k6YeNwT5il+VIRb8ApIkvInU16a87XF5xlt6yih
Rc6URI3r/mBrXhdjoR/HUGDVeHUI0C25xDGN0ZMgR2UFzSTl6R14tvraagV+x97ygZqrASsVGJWm
ymZ3nhI71zHm6B1f1+FdoJ7j9YjgcRabuJ9SlJU7GD6LMqEwbsIxKsu1Cot1pjHM+RyiJet1BW9s
3jcXokDR9Fy5NQlFzdiBNO11b4UKE399EDt6cDepR+wEcw/s80dIfIblL2Fww9xX4nQaO21lC9MD
a6qbgSyT4Sy0wgQ0PY0blLMsVdiBaxdD2vb3Hx98nAb0FIqG7o1r2cB8jd2QGxueLWKPXnieEc9y
4WxT6dojnLiBKNA4FeStxhskjuKKWb4losqE/wWJZOj8FVG22uY3QqxYUaa8N9mrAM/DRV/6iZON
5B6wc6Rl47VDLYL2TbdfWYbu7YRmDUEpXUReChY3vp1g7bdQwkGuJ7Do0lKXfKzIvchlpnQ4o/Tc
UF3ouz3uA/aGljfr7isi+x449T1YgdfEnRapgH38fIeHy0MpkYR17oV/gIKiAxsfZOy1/jhwKnB4
xM/AKbaTbFF+5qFc0Yu02cUwizkRpin3Sw//vKMlp7bwMG4fE/ZXq5bdez+YYcI/3ATpbmsroSTD
lQqhPDXX7Iw1j7PUrfK8M+Xx3JwtGuLTwbl0UpfczZ83i9dsLGs9knwUuI3v/s2qA64aHOKL00dB
eI8WucOp0F7EMxr5iXsxHWBZxGo6F0ETq9vacSt8H/So733DjfgDiqh3fPuqBdyRf0Evh2ZloOBZ
6/LGs3zEuF/pQO12+deghbYn2XxphE4w8+NOwDgTuuLvFzxP2tdTkIvYnIoNwztIg8OCbs45CXo6
RIaAZgzqZ9YSTSDyIhuLUSDNG2kk5FCYkWj8LobXQw8j5hsUllW30mVhFkfTBu5GSRMWENzW1UmN
oyaf6FubLLPEawjIlzkARxwzo8LWvM3O97+Igbd8hpzLdkoYHSt5nVlrUaprrjYM4JjFPom9UKB0
m69I2+Ar+LnaxspjDmQ7GzPMOBI0JdW2j3RJ9L6hh5CtCivw0mRuxamPes78xDTVLbXvc9W4dpfh
S5McAANGPPS526PIG9mK4Jld8IL96bzTIGkmXg6bCAlUpDc1AGFV9wZs4ghGiWaOzlON/8jqypSL
y8Y3QnIxgL2S8SzsDCr+bmvjKk1+Pp0XE62QM7Y4UVs8IVn8iQlPiPhvsu2DhPdR55cKxtnRDPWp
Hom9DBAQQqY+UsKH1mCV6AWKo46WsGzUxhFCbt+mZoQIY9tJSSTd40PGI4WFRLcJSqsMFIVKCM3b
uk1hvCMK9W8wX83q1XWzY2sLzvp0Z4qib8cuIiwSugN019BfMYF9VjX2bt10XGIFuu5/kiEtCmAL
vqjGJzISLwCuMKcAqA3nRZY/PiZmujczgN2Miitco3oE6coS2IZUw6n/zCLTLAaFvRJdfka8gG1e
HJZeMXP4m49Kl2AXsjoQNCcHDvQdZ7Yxdye0lfkTDjW0dwb/+GBkqglvAJWBBshf7mVr+wDolVyD
3qHQJGZ2475s6itabVUepSuI3Am7TOwoLwwkBGn1vTfJ78rRVqKL6AJia1l+7t46NgIunshDSZv7
oxrx1QbSkjOPf1qk3vXFk0PXYqFcRnHfbF+/EljgYnFFqip5A+r9e1lYK3w+SQg/dIwwbuGLv4Zf
jD3DlEIdyqscCzfuq9GI31B8pUFL8ciYKTuNaJOvWCBZIirCwpMXl9fLP37vfqDZEphcbB/DMx2w
BkStoP6T0WzibCd77xjq2cSTXhze2aeDYqwq1u/zQHK0E9Jcizrp74MgrTxfK1Neb/9q/DkQTQ9V
r0OBRCOHnVJ4N0Jxg9Vt6BlipnOiRj/tBHNzWYSFC4sMG6oa398MOPf6/j+UyAqy5L9+1BRSKOiL
DOzcx8a75OcFG19PUxourbMsBP4qCV8Xo3ktF142pnarQmaRpzLRcn1G4cqE2QbkMAQ3Wh//h4xW
rC3cK2LXlAv7W96Ud+qCcUXefKxWV+JsvX2xMT4//joFDhzXu8fCqV0D80Sc6H2mPvzgn5aJpG4c
ZvEcSTfyuAFgoSl0ziWoQVKDJoi2NW4tnDnFEh2MkKGxG34Zpa5Ic9wYcqI/jb96LIahWcOmErBX
Otl3IqNALNREubhb5AqvRKq9zMNCelCbnzqcijd9lZRY8hQXywCNz/J8Sd2wFQg1R0S7VZPEy1kT
4aQo79T66KNigxz1MZaDNPoLtG8bdDgrqV6rQGVbeDDuaOgcYnfh90e1ZkAG3VfGn9JkBmGWgZWw
w53XzJQRuca6/rAN1wxmDWcMYu+bC6oy1JMHnLY7bw/sG3j7bIR1C6HXrdO6uwWWJw6lax5dUqa5
/GIKWwZpWrTMhIEzm79fjj8ov3vs/Pj/B5+fuuSM52O6gNefanPoDYeXKq0D6/rg3XVr2Mbiwx4S
BZDvs0kIOse7x79b8owcavk5u2r4DxyYhiJcRO/EJFBBVbq0sUega6eujX+5EF/41jPhUgPBTckf
2gLEvnLNH5tL7zdhKc8pnorQQqreFt9vTeMkPRB++v+yYn9YD9ojrdKkCphMF2lueuZs2t1FgKq1
tEBaeH+Sn9luNPyKdDCRXhr4aYM9mvzilKb7TNHuhErR+0XE/oX2T5fpmQLuC4XSvNcd5zlpRq6U
69WZtExTNdv2ZRwVsZhcUJd9xXMUz7iSGROyb+ZRFNaLNkaMlg0EsAWB6CQktt0kesDuj1VjMAYH
c/F6ocgh2PWerZochJgkLrxDoiAG0d9IScoehZnkJGBRfzJjm5nimGuCykzdmM9rrfaaCiN7Ll+r
V1MIwYshSXRMgxm8oUQRHtNwMb9NIgTBZG1N8XtJdV9m4QBtHiqG68/p/J5r0vKQCJ7kmnCLpq/O
DTNz5f+JUMLtmaednEv8q98oKdObPhDiFUBm9GgSJ94XiqZ3pAO/FGdVRoII0QRU20qh0Kh+Mo3M
tIRliVMmUURuuD0P9cxNv44R/QC6lQH9vpQQCuefFKV/m3ARBjzcaZvj20T2LDS5vSfDsYHiex6S
NNjA9e93n8m2B2eo8aIH/Cigc8WIlwRhAFB023Fs5314lQ2RpdseBuH0er6QBlRLAd0TQyDrvSPx
h/TgDupXSAIb9Q9CE9zk8i5YYh8K/Om89EaCzChORKbAfLmhjAMuFEICN1i7+8ZOXUykQclGY/up
PNZQkHlIiPZU4wwdRr0J5a7gh/XIy3oddVylW0N2808CfFak169FwJP86B3e9IrnJmAKeeP2xxeK
lqRpFmDINX3hljgEgPILL2WBgNi7/OEx//I9U4DsjVVQY/UJsk5jLJjMRn147Y4BsurXNJ/kUw7g
3n4+z0X6i+q63esaSxX/LiEBeasVNathB9nPtUIq1NutddQSm2XA1olQY4/csTy7EuMHrnD8yKbS
LOe1CXQS8Cc21Ed4m4RmhJPc4+TZRmUr9HdHHczFLmKGHZ00LulLnRi+iTkyrcXIpOZOpUuAEFhJ
8/WA13r4aPo0Dz5XnoKmnFuOpWzu4t037oaA1TXls1gl9vaysC9NdxjEoDtl4a6gnckSMIyQCvns
NeKQcbYYNlOLUONXQzjwj7PdIu7GVy0fsS0IiVdLwD2Zr09JFU98pvs2814iK1ig/RuAwyblJv6m
YaYX+1RkPS0vTOOC9a042ELrE6SkjBrs2K3a+mS2IacUtzyyg/IburmARvpAGU795Oe/f464vV2Z
fIaMimoaMR/CjdkOr5wTEpzpyUFmMY0mSwxq+L9anAmrp2BTKk4yHRRJ2j6qHyrTDjQRqj1wY53s
qpThKxjjB8lUgzGS7/iIfo51RwoAv4l/VYBbOFj0uj4bTnQC672y1nXnGDtMMR3WTlx89jQwRGaM
2WObWzMAqCd+vbv/vQN2hmLuzRJRxuNLQOzz9UyYf2Skl4EA3ZFXQSlhL8SQEQNTwYM5e2bS3phZ
XaUm0kpBLhXkJCIr0vjYX4V8iOls8ASM0FRnbd1HyJ+DxFest9Pqop5zm+FT4XIUlsO38UqP1nuO
iwkv6oFqaInd8L+H9iW+HWokSW4boVSueX1C+Y5DjXwGywiUcHOMsx3Nj6gMReYp7fWFGyCUxT/M
RqNq9kwq0Ou7uf0tuMcOp/jGluEMYOTEAld/0wUZPsbfCZpgBOnRj8X+eLJg8uXs4p6U7CmXm2VF
VOtro7dHi9Ry81+BW8dNn9i5HJ1JHn7jmJ4YYJ9vzVBdQ3AerfvS+Tcsjf/adDc6oRYNrOEj83BE
sV4CHRb+o6py4tqU3UbOmvi8SbL2xOpAAcKJffkKY815T3amquYF7tavqxbtfJcVys6+ySORWw+x
Umte6Vouf/kq60pWq9Hum3+7MMT8m61zrADsuOtwKBlkhQlLkCIhj5W7BfW6aNeC4Isw7mHV5jMW
t2V5ZTyq6l0GyK8q1YSCnSPOyjDl6b0rMlN7IAjn+nz5vZ6dQsYinDeKaYML48EhWj4hyiOwBQFl
5esEgw1gHwCvHVCpzVj7NzLe0JwsKSLWly1nv1k9MaNxKPMhuKpK2PtFb6UaW5ebRzLsKeFTVxZw
IaW4SFUF4YoKfS9f9WMEadbJci+ZMnDCeuITZ4qobcYxBsBIFQtDI1yyvXhINWTQO1j2ilp6iosr
rX0skyieDcIAfXYtW77tKKnVwPxW5FreR5a5Q3fW3kUORHRUQ2Lrq0zfLpyuMQMgvQM04cdAX8/r
0I59oduWuRRciyI6Y6K5mRr9kH1QVyA220cpXPSEW1xjYtj+F7lSCl9AlMb3InPfUTOIf3FYgqq/
A1BVwHkSzHnRZ8FcGMC2iZzX1ds2QXkL3YqbTcC+g/Ycog6FC/0euuLpcn6I4OYoMDh1WFwKfAB9
T0Toh85Il9oXouEIM32o62epblU1oKlMXOQyYLq3lb01vw0V83ClVExBkPf9tI6f24YnW7gna54T
7zb2ZSJoc98NOs9TEgtfy7c6Gx7oQmlXT2iZs2fYQ7GC4VqUMPQNPQ+n/u5k5IpmR+VW/WyDKD/R
9zEgFURK2YpfI6qrnbUtOi40h0R+4N2RorNI2HkeZ0japKQKE4IC7SfaXXvg7YqGto4R7XYfBW1m
rXUfKmXyPXr1LtPxXvf/Zy2p7mGWMAjGl2/kwXpVbtk/K4qgLTwEa90usOBb3olvui3CN8WNJa73
ByRR6YzZpZ+oPk72G8VAvaIyuhTVk74rS7xbQJX+aRfBJLGnE+LhKblogC9dWVibRWZNdJWVE4im
x2/SBIUHOZ20oC9zRznCK7QVBFvZ5un6bsLtAgg4wWP1IKPLUltyphF+aPewz7eRSE8nLPsfK2v6
m21WiKPO6tLvqqyIy2eNSvAIDZS+tv3F6w2vtv4OOtCNBPcUzT1O69G1c4x9pDf+fhtxROP3+l9D
EBemBJg1h6rSbEH3ii1VVGDChRWpcddUfjz2Eda/AmzbCYkzxYSVI/GgfVtY5VX9kVJnzjYrc3BP
vsoyZukppMEcB7kyK8DDOu0bH2hHewXTpZNWiMtIekSYyfmR4vq054YYGvdLqzUTQdAEBJ5q7m4V
XYAb1DhuPPDIBWRCxj1VrdujOD1ZrkvISNW46CRg3x6Hdz1YQ33KM2PASrrMKwCMwhqfPWkYAVYC
c3tetbBId/pNcpQbFoimkIMvmZ86q05y9eHF3ZsodOX2Z36hgdPK54DeHL4Io27yYmRptpM6pxWQ
ExdJ2geaHXa+M5frQ6YsRgURh8O8mwnwlUwQoGVU16XS4XYnCk7jPlPUkhMSEdsfj78OHzbVMs7d
ihHKW5c4M0p+UDD7iOdGDaHoj5Yp/tzX4SFQkr/KgB+IWWC1pNyzY4g9lF0smamVn9FmGuWnCGqg
9EPh7WjA5qpp/E2X7WtyxckwhGoDksFOeS28V4gedObMY9ZDQgwnioBFR0CRtdkuJkveJaUMsuPU
LFLD1x0oOL5nV4QDPn2nyPwDKrhnuX/QQZSGysNVTTjcrW7D5B7N6MCJHCOQexxrFG7Wq9is4O2Q
+qHamqLO3gpe7Y9VlKuJjTVXxM9xogaQG6yL1a83c726YtrBwpl3TZT0YS9Z7gLgXPOV+6DeGmte
KeLjnDNNaQNXSo4gAmZxgIAoflOk4BMyzZeI8o4lbA2L8Q/0Cy3DLswIofOD0DgtYeRJKH1JCwO0
jR0RJsuuSSsPskVmEGdiLC32RjDXdO+vGFRGy2og9NBZyQKF8bX7hjXBPq7IOsMgMsOAenecafcv
ByPDDNqJI65zW8uszsWROID4qlF5F7+8fSGk0/lsv2g3S8H90azEZxvRZyvYiZ8qO/puzMoKm4NW
SZQRORwecb8M5CMv0skTXs/OYAwM6FMM5P8T+qBY7WitazzHJWGvfvGCw/MeYNL1QGuWnG9j4H6W
QpweylYZQJeXtcMQHxDfEtubbhJn9CwgV7L8VnZyu3tTjrcQbNK/eY5a205xfTYP7xiuFPspoQAg
VoiRY5Re1PlOl2MIAn0k6jwAxjwl/vTHBPwYVixOzPjAIKzG7RSJWfG6DFmgpT+C450jHGsvho3S
4VbGdMH09w0NCbmLSfpEnf3OPbKEMmHaH4J0TeHJCDr0WY4HrOZpcTAdCnDojvU8cUJeIcv8VO7O
SqvwN892+3g0qA7rmb56ERGYar2BD2fLvSFom2iaILllNQLAQu8/fpFwnBitipP0t/TbFWY8p6Zf
S5x7SfPDEj3hMS4HFyk/gPrvJvFp1lKIG1Zoujv/RK8DLW1s01V2sh7Y+vqfcAsgU142vt2uBV/a
c8vu2s/lE3wFtp1SPzrs76DGTrxQtRB+xKIBKwNHQPygPwUCaO0Y1uIdA7SpwEN3cNVikuseCm6D
tPq38UaubyzTbvYENdWlPI40MRLfexTR1uhhBceiIHp79//xlMjbcnXTd3t9tGeXafcfrhlEmXxJ
wNHO1pKj8HbaF9lUM8vv+L92lfDfsulA0SF3Q6VG+Rhwoh8wnIvgh3L/vNMC+Tn55xhZs77gB9ra
NsWBMOOR8RGnodY32GSAEtx9ZEyM6VGKaHTIlOFUcSXjs41VVZSnEbAdi3AfND/9B1VOieg5n9B3
AQnkDuDja0TrIqKP0s3trUfrV/ftp3+dbkas5vHdwqfVycEwxsFwMk7xc1jWoC2OZ5fs4yiPja29
SFfG/pGJkkRlZifqnSzpBe6rKyN0ktqCRGfKRN1BWJPtFWMocXr4GYPQqTTIvUhvYk5Dr8DYWLbX
1KTsa5NsSSCk4fDomMeIwiENL+Jup9LCf2CWPSprGqFn8nc58IJwDbrxyQivL30klJnHIo+U/iXY
o89KvICXvhP1YQ+pzChtPdHM4za6EKkgY6YX729ou5WiayKYNqpGedM+YNmyKkNsPtjgFCEVa3nP
2aEvCure/0vWWNgtWlLnjryTUd2ZSmmbPSpSg9QiwYHpy6tsL7r7ExxgaTlpVQm8/cxeO+odsYde
lDh+KhDNqGhK96yRgkFanuAFIsBLGgISydly1TnzySkaCcI4dI37jlxxzp2MFCwErjiW68RwXaEy
LWDg6HFxrgnKGymfNbFcOtGekIwY3sy/FSFBGJAi3MuxqqspXV6JO8pTbrDAP6uAh3s17BNAdS0B
lKUQN9jHiqBauh2QKN+18NExqM4Rs4Sg6LuWCBK4zHUYat6Y6q+ltpuG/IHSGJVuqNNAPIK2qYl/
pChK3z+XV5bBZmBvrkvzV7n54Goy/rezMXHwE4b6fl/DdWTo0FGeL6xl900WkLA7hqJ+PfNHwliw
05v7YSCwVN72G6gpMsD1Q9G6NEBxAkZK3u/K/MDiFG+5IB5aXe4y3XtUj2TwmgvO7jSg+3fz0cHd
Hdzgh2m7LxsCFs5usr4agQZQLKnmmHmCSKBmzGFAd4tTOMTlT6Hbv3rQ8RYnGq2yQKdLFVHDCkAx
CIb+Gdy2WOHZObt4jEBfafS2s6IwSFz5cxb70y0KoOmdk8vc2NcCP6do3TSBgupfvRHbDtwFwR47
NnYo5gsNf9Xc/RZyfo6BrlHnSjO2yaPLVzXiXjUwJnxD6wR+jizQmPzdFDRhUNLTc7sKWc3/q01Q
XfwWeEJVvljn7jTQzdzEsHKi8I/mGprYKA3EoYRYwUrRsF3j23/F7NvudVam28jTNxtQgnDquk+d
BFacWN3umKdpsJyRlpCy/q3cbhAFivGu4DpSuRg38Tl5hkdi6n60sp4q9NHzFgVr5z5ZmIFGEuey
bjS7OpxXKwB3RMsNHwtip0h78u4a/FsqFyUhki/YntFCMaYJGh1eMx8gM73HjJyIKQ3uMRUKkqLR
Z6/J93a76jss15eNuNMnej4RWRofssVJnGoc5uUUjxdq7RVGE71oPo7vjehgUtuj7NzNnozcViFc
kM06yAjw7xjh3rJllCBkyicN7fEXhNeMidHgU6F8L6EYRNyGsvi/vZySNyv1OdiXWzjubqeN2iVH
wBtT4cXPVEazwKGKRoSBNrt0jwPmYiQryRpkAZdehcb1+Lbf4NbjWNRy4XMqDHHRY6ecrMdaIV8/
AW8hKDLVgtdgEAh779TXaf8vyTwso1vNUlOi154OPJi6MI5EDsd6GccZAegh4y3NuKicV6B3M0sJ
xQi0Du4rc+pMaLmVUPgHFvxQ79xH1EDMvfohWayqWI1cpVVKKgfWgHuGS0GdN/ut0gpk/C+YrGnD
CCe1FsPfZNM4nmRuZwYyrjKd/zm49CMJ5WRTg4qe+6RV0VV4ENoowmBQFOInIpRIUkMJIh/nOeWK
acIEmn/RZvkdftIQCabXq1PJm1Ia+dibgVXUnWsiNJ+ef2bhXtq/t0Gxe5KKifLreCnBQXaPQ/+o
wgIuEJw3lo2yEAOifILjhr1aZ+Jxv/ymY8eOMOrZ+I5pWPOUU5rxz38ttG+8HpO+qLxc0GYPhe22
Vwf6wUD50xcYS5eAtxGbumpK7OHJkuEtSxitN1hzzvDKetgHRpK9jzd2QQ6l6KxAcdmWnVcPrp/F
dEfuqSSHGNJGZtYWC5NDHrwDbMJEf9RlIOoGT41CFvmjZaiSx7DxGMH64IYavXj9a+69iI+xzqFM
Rg+waMUBwCsfiFI2pCOj0vHkoim6IVZGNqUdLwiFHg7Dl7bJzDF0z1jQjCOO3jJhVjn4nOL6OiOF
1PYHw8AoESRM7Jrbw1ID7iXojBKIRAeROvJgSnyoAP5efNmPcLnos5L3tmCsxfIeoA+Yba+Tzks2
Mbd1coqMCwyRikKxKwoBXIKDArhJnFNnGUKDyrvzkYAbUYxU8PV4gbF8u4Z1IiOo8tBcDJWsh4o/
qPR5XvZTT1uSg1JMoIKmTxtz35HmG7Tl1HyCUnhpLIUmq+eFAWVmuu4uLPIQP/XtLfpmo1YAxMH9
zS12Lcnl67nrBNhMFzikIOj7x3V1IOF0K1hA+i0068HLCTu0Zg5W1MYM5yCWMsaQOINnccRWrrDf
ByiCM0FwUognEUaA/0lITUbhtpng422uCCGQoG7isPIjOn2yctRipc/7oIt5WT/DrDKIgLtt4lMP
bNMhN3tNr6dQoYNDTuQDf4uQUVLx+xYqRAGZJIwpchukW8z01w1N1IRzGl+Xzs5MS8vfkfSGpgFa
Vwy/E12TL2q1oHdydYsTNfwBOvx1KJO8H10qUo9A4T1GvZs512kSHTPM7tu7FjG3QtOJOL2dbyx3
y5lYgbsG2qWKJLMFb1rEOecjo4MAubLSxyQlJKyYIwHdeR6n+nfaucuJs2qqfy+fCM0vKD+5PPxh
RF+Uo3Tw+GVL2zjxbIC7Hy71Ze6vBz+/hSFwkK7UkQPUGX7jO3MdQcECreq9sGI4qEdlw/+n+jco
6arxPwCwOPtZqJMGqAq+uacFA70qGVVLW3vbjnb/dpgqufRNtNms5R/FlI9fUgXiW2130OB/GATI
JX55nZSv+OdUENjAXX/8Jx31hZ+6PUQNyK522FEbGab+oT2potWbmw+aAEmOQhJ0tmONlFANReN/
/OZa1w0kc1mXxJFgOTdy58tUkBirSK0yNKS4yBZwpm+1tGpvfVzBLCdqVp9L44/dsuv+rer/hjqh
6t8gP4sqvlfPxJCMYe85+DbpqhQCBo5LxcK5DHuwdsTtERKZkq21wTzv63tXrWAZIbPlQJHMRoOV
9qhvnKp4ckfp9iZqp+JcbzFAwrG3T1CuBE1eQ4OAsILeTAqbJdjGpwMPh9KA94FiEkukBc+tDzPu
FMChYYEOACP/usFwbuyk7vSqZziv4Ysc71JOtxXPkQNKum4EG2HsYKc2e/QOpHjQQZiqrDGrTZcz
BPRTPRAUMwcP4UBT0NLpB/Qyl+7Rmmh2eCrYxpgupJjCTGdbX0AcyrmgoPFJX0OnJ8wWJIuQNVhP
U2EsM4O0aRHDh+qqqzt0C48giAPQUq7RC5PZSuvIt1Bf+onr/bZHcaRWYxzU5hjI6csRI5NCI4yW
lHkiuKP+O4iMscdTVwdlmkXSiUI1PpqU0TSzdMP5TjQpgvURm03KKxlboZe9D765CMf50rdhj7m9
vANnP2kyZKb46WJcouboW+aHW9sIApQf1IC/AMg0xTKM2/HYfjprolNUXPQqvgDvdANigl+sEzht
Q5wD6NyxP9/3tM0M5J2/2kjtAkNeasZqB0IpgAzb7Udf8FyEJ8a7MqfQ6jNKEULzetCls06dCqVx
9+UsGo8e67MvJsd3UkCyXJJsywCz6jyI+S1H6JLimiqZ8jKwRqsrKhhU0iHfEJFpaxepT/2IGTs8
PM0FARKH6yX7xzWashqEkuNrj2kYLvBhFMzIfZZ1a4Mx3hHgDaQD+1Vyv7Mg3fbVneCmO1qG+7VN
DdWuRrRul+DskQFGqbrq6m5zrbaa5kRRiYW/SeHmEwyQr87SsvGWQF/mtc43EQzykKX2a+hBDUvi
o4FLQz54wjPKOpRvzi9JehE0wzGoRLCjTrL6DjDOP0I089dB3y6mjZr/o1uTD1jZmTTQ394TEgWB
UMDmPl7nIelMRSi+5lH34+ZGBWKJNjppBiFrURWXP53+EDDmYgEurCKQGu+hYIwCRWtNowtmXtsL
ra4GeDOuJEW9aNRWqGuOJWw8Locx6cViFQ466sE5hgHrLYUOzMwfmGgHUERBpPvorKkwXqJL7rVw
FUB6m4EIgudfGbVZU6gF8Tn5++nQNh7OBDlyU2StreKuyg3mlaXTk5TyajJCRou2weAV4llshM3T
91KbAXjKgXpwhHYQwSEMlRC+NW/z0aBRssgiBdFendxbLNeWMreNll/bcXB31BUGsBgYMwA4QWK6
MZFy46DC7Fj4eom1e8zyTNH/2wW7vAAfZ7GfqkB781a0pnW2qPD43L6CRcKIXn5EFyk0fFPGIHdx
m3X1OdfDhPyfTHFSqBWtiBWN6wB7lgI7NvcyPvGSQfjHt+oUkNANOrce/8jpjCeNSYzmlLBv6hzk
IZUfIqyIUA62LeTFSY5yE7jF7+zcr+SaikN7JMYXXJkQLFP2+h+hoz1tcCCEfAF7vG+rXUsKBcQe
rGynHCpJhnScSDnAwINZcYD0h7u/m53SyaRBLig+X+ON7k0YNhjxJDaSAixZgWx8Qj0OLhkLhAxN
1Srz7HAZVeZ5ZJiC62Dwx40Q954sK4BeqlUce2wXzSstSvHILJsG2Qb/+hJVqNCFbylLrzwl2RLz
y2ZRs/PHZ0k1X2JOBBj+Vt/hfkm24VUb7cbAvP5Y7icTypV0j0wwOCooHxTWxtPODaSwPpt742xn
ASHYV/6A/i0w2g5w4ZqJzYtn6ngNi5fpkHohgZi1lWHNI5OUI/tI99MACCfvu6iJbIcbnCkqumqN
MZ+JuSZ1N4T0fR0HOGw4bPQybmJN4yH8LZF0pmX7xJ70QO558Zvo/fyfWk2gVJLvuY5zlqjhGKYq
pDQ7kRv8JYom34HTioj7MGd8iFNzQ5CLXX2boZcJwXHmpSv9nKONb37PDHPJ9493HRa7d2+2nff4
ZAv7LvzkjVeIY3dOSv1UlAFymRiDjwOs4ksy5u4UDYb1FtRb5XtmImA47jFuzU6pYQH9puwOgNZH
LxcjplbQwk3vJ48LPUsRSinmIVBRq9gI0XDfYyK3JtrJw6QQl+BQOm4QiGsusTGtpirnrNBlN/mX
tp1d/JNddkqVOP1CkmAlDp52WbraEQOXkf1E8rjNgxMf32JZo0wet3Rzj95gAT4C5DqngE5rmPxr
9fRddwskBvY9MAbi42p/pzE+yHCYIwTAxexq6TL30pQe7cmcKd9bIXM1XRnag7ZhdbbIqD7IHp/L
CmHJhC1cuW/ke3Gz0cFscxh77CXh2KCc275wCZMdWalFHwunlp58lJXcXSHtFmY/HdvNvedzB52n
7PY4u20u2yAVI5ZAKFItdGP2wlgav2L6uwXFKVAyYyv0r+nT2pv1FjJOoMkvf98CkspzVS5kcsn0
jtXmOBgwlXFifZybBOQOZPqWwFJfbJsKF3WeF0sn7LblmOzIW5js6E2W3V0bqFpUbVQt1EiMH2c+
0ukc82ddbC3r96XW6749UYWrXpw1pmGVNJbL/qdLaRmX4H5Od7URlh0IpfRHg1nPu9nCOmgI9qZv
hgFYvv7WYOoRLVKUtPjnYrIE+qrWbb64SSnyrQkUCFIOd9or8jdZQ6S1Kn208l//DI/XB0PUbZUk
tN4PYybMlBOpjT3Sr6+IVahGeSLTHp+3Z5iuxoMHW02PeA4/blrtMUlr6WnKwq1klqvLZXfrlDgM
vn/Znlo/tQq8fKyB4BUTu7EXTMDj5nSwWQ7S5IFMvuQBH1VZ34u2PpZXuSejsyGWvWMiMneYrSnf
JEfONFULgroyOZ5kbulZ4MAZkXmpbF9WXEfH9IA1YMuLNgDCQ1VBGNO5ezO2p/nwS7iAmQFh4RGW
LIWbM0YumzpO23mTdi9ZYYE3W33lv+PEdiCRm/CJ0EAkhH3F7yuoOeWsOr0CYkfcZFJWjr8tQJuf
0yEJ5m6ntflRiYqSJ9Wo/SXqSXWmO1y25AfPwD+bp41fvi9LsQmLgokjzLlTTfZPtohEulWTIf/s
LhJXMloKEelif9j1x2PSyMWfgkhwwwaMz1th4afL+jQ+XqXJ5093aMXDFTaSQvhlc5EhqgB4YgVP
eYPaebILVGGxCnZDQshG9InlK/QDSPQmkbvS3BSdMnQ6A6fpN0S6wcLbpuE4rqu5lwejIHKkER3x
U/cS6uLUJ2bTvvgna0pzvDTzpK79KfWJZn6y/cfVQz5MAEqcJFs9hqIu6et/TzRr2fEWCML2Hm8n
sgyAjETxzFhpqAQ2WCPiy7XHYmCwzZ+o1B5n2rJTb2kdD1pkCIdxoyMRv/fx6aAxmuYyJHBzev8v
1Mak/RbOdBQm/kfJ9s8R7/TrAtx0DMJxSGHvjC2Yhns4aqrqhfKOUTF10FnhDxUhmL9q2mK5BLc3
lNC8elGuLnaHl/8LVJjT4UX8VghjLTAAEo4cuxcXtx7KEEoVUc3jL3BHfN4lPbxPT5mUNoHRvOJl
ZqpCC4grr3T6cy85I3VrK9KHzHcWm5YnDYm31gdYaGx6bgTNbDUUJ/JQu2RwQFBQyKlKNuqNOh50
Uz818OrQ90FqrYXsC/3nY690ej0fTJ1Wja7FMc9savfjLmWg5DgDoAEP3UoADqOa+YqlHE+b0Z0l
S01BVLc8JshLg6hB4rA/2O+wMmKWTCaasIrAL51e5JACQ/vPYcYBzVlmqj3zlqC+UYDDlpffxbcj
gnat35LNEbGEF0nG1VDHRsipyClSGSH7p5R1QJjHhi+ReM56gBWAYsD8PF6xMmjUyoJ//O9fc1Cr
Wv8LSi3YKXnNeBx5R3wse2nLmcXdy4aunrVhD8thaFb/bByOd2eR0sZKUzsRRmv7obHmtQkzfeWx
qwqLejQlUxOtzEsnJ4I2fKR5DJDYkiAnQsjJ2tLVaJmVDGiQ21v+Z3NNhFM1MBNzgUpqosbcM2uO
iDHSs2qxH9iYCaTHEa8q59IVvwI76D0OFk/ZZS7OoCIXjQPuVQAqxKWaVlLt3TA+wwE1u0EtlJvY
CTFUPxI4SoIrIaPGBKaeprCzEhrYjdqdzHUXyjbzYb9ooRYrQ3iiaxZVQBNHtIAbbj7yMfiviOh0
JCOFbuQIpBE5d6n4EpW8gm+fvL8IN5D4h1sM3p02eaIuuyll3kPXaiDAF7eRCkEk/UI+sRp/Bpmn
5Kpji6oTst7DQwbfwrh+jfBnutGjEuiu/1lLWgFr0sxDiCuhmJaNDxClNP+iTuyhTOxOvg+pGCpG
20YBYGPTXa9XyXW2VvQgY59aK5TtH9h3sBur7UgMfNVh9gMCuYMBry2sqocSfVe8Tj/MsR9WHgEM
Y6120bxv2klqgr8Lay8zRkXF65U6vz996wfJgYrcSIm/+aQWQ+3qRAHDxnZdG9bHHdtiL/MsE3Lk
iSZjgzPcR9GFrI8tAtk9l+NseQ8m5OQSp1WfZdsAAlBm6ntOWRPU0MUh+ntDOkI51og/eXZKt4IM
zxmEQ/ZtclyJjkxDfIFUNjPgJY2WOSBGSNpsCDL5S0sFWKAvwP9FniVc9ScfOByLMeotubPKjhA9
JvvG89kyN+UQ6tc3LimllxJfhl48HRKr3f3mNqEbO2qCACdDMCjBIMR9eBSD+KSGUMdZzbvV37uH
WFviihup6kpfOByX4PvFrr7EIrmzz12FSYtxKEnzPJGCqqjdMCOPD+LVgNoCDgZqGNZvGhgeB3ZG
FOcCyiLDDhaBNkf0FfvjPco+RyKnNN+Z8qaxJTuiFwFWO6sUt0Vjj4IRT2KuT18uecTFCl4pj1JN
YpW4WuQrN9F9hwDx1tEmIqqNrrfhm2qmAURclgOc6xnaXn3oHyjO6tBs+h+4y34VtCqOm/0kols5
T5vMREyKoi/1Q5FM+iNIFl/wsy05F1dTLGWHU38c1FMuMAlRK9oiMyZidA/n9anO2SVOJoB+d61p
AaH3UGLakwvMdQZ4kiSrTdSlFZHJDuHZz5aUD8g6QCjsR1NSRIeZ96PFiZN1RtWu+j972a1bDktg
E9io8IgqnFqzmz6RpI/mwHa8ZoGPIGpZ/hjezhqX4+uzLBzOgH+tQIbtQI8zr0ZddxT47lXTzbmt
N3TqGp8PQST4k7/blOFJaxviPf9hy/MjXgWUNfWzQ3qZ4zljX/0qQiOT3owVzLXqVYQ7NRRE+aUY
MuuAteD5jdjHyhEGRFGy+U6nzrSx21D/daQzmspCtBvZoj+7afaJRal40QSDlFhQk+6YfrH6YbCF
UCXH8+/RfIuA4DJpHOVVDrQjZcieSrMg2XKjxV21YGcrdo43DoDEhJ91A6YFk4n38gR0/Q1xehNP
Lub3+afkOQPeALWDGx5o37MPGORIlV5N67epb+1whU27sOyoOhGHrj1sy3+Cwp3mJ92Ah76TrvtB
Nw3UEXquGL34Tgc51srLQmrXQrMt1dti/Gd2AP2l4qzgidiiI/yvI0+FUOWm8rM7cZiUUvloCavB
eYeouxkJI8poGPdba0koKMbBr5+RY9Sm3Qq0zEG6Ycc6EPMs983Wywg4z+Vihr1Jc0yLRzRm9/oI
mBsneI/lowMep9puyL6orUV4Uc9FzIQsiq7KIkiKFk4tZgqAL1lhAOZIghtM6xQmi13109/ULXPy
b/7f5rJhxxWjtJOhj1e3DP84KLmnxSawRMYmpAaTqHJ+IKiJNAY0uGav0+S2Tbje0fAnYPCjnS/2
DfDxxEmfmTEQ383xxG0tBhIpKjo2qSdKOkh5im1WS9nobcSPU5jlZO9WX7zNc245roUsZT6kToqb
NpwEuqz4fuhwIAurP0/051jL4Y/HE23vT5KnVhcA9eolT95+TZ+1SUcfpXrb5OYlHk5OTMA4K+Vo
axv74SyJznXY/sgAnsJtFabS7WLbJ2YWwOzaMCZt8awL8/AbH1P/OvCrKVz9DGjCVIo0rMe894vf
VUciB7qUje836gGc8nSP4DAmzWCUiZ8ArwE/N1Wt33ztRQhZqEJOatRInSWd+MtS9G9IAVwMc9DN
/BFXe6fGc0NSTmZF6gUa+Sq28Ki/CotnjbWmsyKjUAr1316rHhd2elId6PLpD8lT/bWUREUUH3dy
+fNrVS3SXEpJwFmu86YuUSe2ldDaEzIfE5ra1LDLQRtJEJCYfdnHmOIL5eFw13Df01bJmwollEVD
XfIzUroFnalShhdddh5J6iJjdkzT/Bkpmq+Ke3Obfk8QGsg7np3/xet4an9WJPQ6ytHcK2tcYZ97
L8HVmNThdb/hIDpkmJgK7rGTv0PTCzNoAJ1odCH8VQB02JNwPUfGbCeDzjzN7Me2CzEg7y1NyF9K
JUrWSR05x9rYOfEHn1NaiUyRrZFllT9dSaSA6srvc9YUGRFcPBgh6yjAYVbYSfmZ26s4DmYz21Uk
jzbKIo0zbNn5BY8igC9G1+ENKfI3UfydM4hBHJzYxRuQLwSb1KbnphOdb004YALBxlO2tsvTRutj
YsM6EkLTtMTPIw+4+pNUsowEiFnonTKeHIa3sfGdqTkLDBcE7srpno8GftdZRbwVg90J
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
