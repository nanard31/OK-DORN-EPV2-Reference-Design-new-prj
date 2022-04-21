//------------------------------------------------------------------------
// ramtest.v
//
// This sample uses the Xilinx MIG DDR3 controller and HDL to move data
// from the PC to the DDR3 and vice-versa. Based on MIG generated example_top.v.
//
// Host Interface registers:
// WireIn 0x00
//     0 - DDR3 read enable (0=disabled, 1=enabled)
//     1 - DDR3 write enable (0=disabled, 1=enabled)
//     2 - Reset
//
// PipeIn 0x80 - DDR3 write port (U11, DDR2)
// PipeOut 0xA0 - DDR3 read port (U11, DDR2)
//
// This sample is included for reference only.  No guarantees, either
// expressed or implied, are to be drawn.
//------------------------------------------------------------------------
// tabstop 3
// Copyright (c) 2005-2016 Opal Kelly Incorporated
// $Rev$ $Date$
//------------------------------------------------------------------------
`timescale 1ns/1ps

module OctoPulse(
    input  wire [4:0]   okUH,
    output wire [2:0]   okHU,
    inout  wire [31:0]  okUHU,
    inout  wire         okAA,

    input  wire         sys_clk_p,
    input  wire         sys_clk_n,

    output wire [7:0]   led/* synthesis keep */,

    inout  wire [31:0]  ddr3_dq,
    output wire [14:0]  ddr3_addr,
    output wire [2 :0]  ddr3_ba,
    output wire [0 :0]  ddr3_ck_p,
    output wire [0 :0]  ddr3_ck_n,
    output wire [0 :0]  ddr3_cke,
    output wire         ddr3_cas_n,
    output wire         ddr3_ras_n,
    output wire         ddr3_we_n,
    output wire [0 :0]  ddr3_odt,
    output wire [3 :0]  ddr3_dm,
    inout  wire [3 :0]  ddr3_dqs_p,
    inout  wire [3 :0]  ddr3_dqs_n,
    output wire         ddr3_reset_n

    //ADC PART
    // ADCLTC2311 SPI Signals                          // ADC NOT CONNECTED FOR THE MOMENT (GENERATOR IMPLEMENTED)
    //    output  wire [7 :0]  o_ADC_SCK,              // ADC NOT CONNECTED FOR THE MOMENT (GENERATOR IMPLEMENTED)
    //    output  wire [7 :0]  o_ADC_CNV_n,            // ADC NOT CONNECTED FOR THE MOMENT (GENERATOR IMPLEMENTED)
    //    input wire   [3 :0]  i_Front_ADC_SDO,        // ADC NOT CONNECTED FOR THE MOMENT (GENERATOR IMPLEMENTED)
    //    input wire   [3 :0]  i_Back_ADC_SDO,         // ADC NOT CONNECTED FOR THE MOMENT (GENERATOR IMPLEMENTED)

    //output wire o_ADC_Conv_n_test/* synthesis keep */, 
    //output wire o_ADC_Sck_test/* synthesis keep */ //pin W7
    //output wire o_ADC_SDO_test /* synthesis keep */,

    //	input wire [15:0]  i_Data_in          ,//: in STD_LOGIC_VECTOR (15 downto 0);
    //    input wire [15:0]  i_Address          ,//: in STD_LOGIC_VECTOR (15 downto 0);
    //    input wire i_Write          ,//: in STD_LOGIC;    
    //    input wire i_trig_start     ,//: in std_logic;
    //    input wire [15:0] i_phase          //: in std_logic_vector(15 downto 0);

);

    // OK RAMTest Parameters
    localparam BLOCK_SIZE = 128; // 512 bytes / 4 bytes per word, 
    localparam FIFO_SIZE = 1023; // note that Xilinx does not allow use of the full 1024 words
    localparam BUFFER_HEADROOM = 20; // headroom for the FIFO count to account for latency

    // Capability bitfield, used to indicate features supported by this bitfile:
    // [0] - Supports passing calibration status through FrontPanel
    localparam CAPABILITY = 16'h0001;

    wire init_calib_complete;
    wire [63 :0]  chipscope_wire;
    reg           sys_rst;
    wire sys_clk_i;
    //wire clk_200MHz;
    wire [29 :0]  app_addr;
    wire [2  :0]  app_cmd;
    wire          app_en;
    wire          app_rdy;
    wire [255:0]  app_rd_data;
    wire          app_rd_data_end;
    wire          app_rd_data_valid;
    wire [255:0]  app_wdf_data;
    wire                       app_wdf_end;
    wire [31 :0]  app_wdf_mask;
    wire          app_wdf_rdy;
    wire          app_wdf_wren;

    wire          clk;
    wire          rst;

    // Front Panel

    // Target interface bus:
    wire         okClk;
    wire [112:0] okHE;
    wire [64:0]  okEH;

    wire [31:0]  ep00wire;

    wire         pipe_in_read/* synthesis keep */;
    wire [255:0] pipe_in_data/* synthesis keep */;
    wire [6:0]   pipe_in_rd_count/* synthesis keep */;
    wire [6:0]   pipe_in_wr_count/* synthesis keep */;
    wire         pipe_in_valid/* synthesis keep */;
    wire         pipe_in_full/* synthesis keep */;
    wire         pipe_in_empty/* synthesis keep */;
    reg          pipe_in_ready/* synthesis keep */;

    wire         pipe_out_write/* synthesis keep */;
    wire [255:0] pipe_out_data/* synthesis keep */;
    wire [15:0]   pipe_out_rd_count/* synthesis keep */;
    wire [12:0]   pipe_out_wr_count/* synthesis keep */;
    wire         pipe_out_full/* synthesis keep */;
    wire         pipe_out_empty/* synthesis keep */;
    reg          pipe_out_ready/* synthesis keep */;

    // Pipe Fifos
    wire         pi0_ep_write/* synthesis keep */;
    wire         po0_ep_read/* synthesis keep */;
    wire [31:0]  pi0_ep_dataout/* synthesis keep */;
    wire [31:0]  po0_ep_datain/* synthesis keep */;

    //clock 100 Mhz macromodule
    wire locked;
    //wire clk_100Mhz; 
    wire o_reading_fifo/* synthesis keep */;
    wire okClk_sync /* synthesis keep */;
    //test

    reg [15:0] byte_counter/* synthesis keep */;
    reg [31:0] time_counter/* synthesis keep */;
    reg [31:0] counter_led/* synthesis keep */;

    //debug
    wire o_start_division/* synthesis keep */;
    wire o_Phase_enable/* synthesis keep */;
    wire o_div_read/* synthesis keep */;
    wire o_Trig/* synthesis keep */;

    wire [5:0]  sum_plus;
    wire [5:0]  sum_minus;

    function [7:0] xem7310_led;
        input [7:0] a;
        integer i;
        begin
            for(i=0; i<8; i=i+1) begin: u
                xem7310_led[i] = (a[i]==1'b1) ? (1'b0) : (1'bz);
            end
        end
    endfunction

    assign led = xem7310_led({1'h1,start_led,ep00wire[3],counter_led[24],ep00wire[0],ep00wire[1],app_wdf_rdy,init_calib_complete});
    //assign led = xem7310_led({1'h0,pipe_in_wr_count});


    //MIG Infrastructure Reset
    reg [31:0] rst_cnt;
    initial rst_cnt = 32'b0;
    always @(posedge okClk) begin
        if(rst_cnt < 32'h0800_0000) begin
            rst_cnt <= rst_cnt + 1;
            sys_rst <= 1'b1;
        end
        else begin
            sys_rst <= 1'b0;
        end
    end

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // PLL
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    /*  //differencial clock buffer   
 clk_wiz_0 clock_buf(
  // Clock in ports
 .clk_in1_p(sys_clk_p),
 .clk_in1_n(sys_clk_n),
  // Clock out ports
  //.clk_400Mhz(sys_clk_i),
  .clk_200Mhz(clk_200MHz),
  .clk_200MHz_DDR3(sys_clk_i),
  .clk_100MHz(Clk_100MHz)
  // Status and control signals
  //.reset(ep00wire[2]),
  //.locked(locked) */
    //);
    reg [15:0] burst_counter/* synthesis keep */;
    reg Write_ddr3/* synthesis keep */;
    reg Read_ddr3/* synthesis keep */;
    reg flag_wait_end/* synthesis keep */;

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // MIG7
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    // MIG User Interface instantiation
    mig_7series_0 u_ddr3_256_32 (
        // Memory interface ports
        .ddr3_addr                      (ddr3_addr),
        .ddr3_ba                        (ddr3_ba),
        .ddr3_cas_n                     (ddr3_cas_n),
        .ddr3_ck_n                      (ddr3_ck_n),
        .ddr3_ck_p                      (ddr3_ck_p),
        .ddr3_cke                       (ddr3_cke),
        .ddr3_ras_n                     (ddr3_ras_n),
        .ddr3_reset_n                   (ddr3_reset_n),
        .ddr3_we_n                      (ddr3_we_n),
        .ddr3_dq                        (ddr3_dq),
        .ddr3_dqs_n                     (ddr3_dqs_n),
        .ddr3_dqs_p                     (ddr3_dqs_p),
        .init_calib_complete            (init_calib_complete),

        .ddr3_dm                        (ddr3_dm),
        .ddr3_odt                       (ddr3_odt),
        // Application interface ports
        .app_addr                       (app_addr),
        .app_cmd                        (app_cmd),
        .app_en                         (app_en),
        .app_wdf_data                   (app_wdf_data),
        .app_wdf_end                    (app_wdf_end),
        .app_wdf_wren                   (app_wdf_wren),
        .app_rd_data                    (app_rd_data),
        .app_rd_data_end                (app_rd_data_end),
        .app_rd_data_valid              (app_rd_data_valid),
        .app_rdy                        (app_rdy),
        .app_wdf_rdy                    (app_wdf_rdy),
        .app_sr_req                     (1'b0),
        .app_sr_active                  (),
        .app_ref_req                    (1'b0),
        .app_ref_ack                    (),
        .app_zq_req                     (1'b0),
        .app_zq_ack                     (),
        .ui_clk                         (clk),
        .ui_clk_sync_rst                (rst),

        .app_wdf_mask                   (app_wdf_mask),

        // System Clock Ports
        .sys_clk_p                      (sys_clk_p),
        .sys_clk_n                      (sys_clk_n),

        .sys_rst                        (sys_rst)
    );
    wire  [29:0] o_rd_byte_index/* synthesis keep */;
    wire  [29:0] o_wr_byte_index/* synthesis keep */;
    wire  [31:0] data_number/* synthesis keep */;

    wire debug_write/* synthesis keep */;
    wire debug_read/* synthesis keep */;


    // OK MIG DDR3 Testbench Instatiation
    ddr3_test ddr3_tb (
        .clk                (clk),
        .reset              (ep00wire[2] | rst),
        .reads_en           (ep00wire[0]), //pipe_out_empty & !pipe_out_full),//
        .writes_en          (ep00wire[1]), //
        .calib_done         (init_calib_complete),

        .ib_re              (pipe_in_read),
        .ib_data            (pipe_in_data),
        .ib_count           (pipe_in_rd_count),
        .ib_valid           (pipe_in_valid),
        .ib_empty           (pipe_in_empty),

        .ob_we              (pipe_out_write),
        .ob_data            (pipe_out_data),
        .ob_count           (pipe_out_wr_count),
        .ob_full            (pipe_out_full),

        .app_rdy            (app_rdy),
        .app_en             (app_en),
        .app_cmd            (app_cmd),
        .app_addr           (app_addr),

        .app_rd_data        (app_rd_data),
        .app_rd_data_end    (app_rd_data_end),
        .app_rd_data_valid  (app_rd_data_valid),

        .app_wdf_rdy        (app_wdf_rdy),
        .app_wdf_wren       (app_wdf_wren),
        .app_wdf_data       (app_wdf_data),
        .app_wdf_end        (app_wdf_end),
        .app_wdf_mask       (app_wdf_mask),


        .debug_write(debug_write),
        .debug_read(debug_read),

        .o_rd_byte_index(o_rd_byte_index), //29'd256),//
        .o_wr_byte_index(o_wr_byte_index), //29'd256),//
        .data_number(data_number)


    );

    //Block Throttle
    always @(posedge okClk) begin
        // Check for enough space in output FIFO to pipe out another block
        if(pipe_out_rd_count >= BLOCK_SIZE) begin
            pipe_out_ready <= 1'b1;
        end
        else begin
            pipe_out_ready <= 1'b0;
        end
    end

    always @(posedge okClk) begin //Clk_100MHz) begin
    // Check for enough space in input FIFO to pipe in another block
    // The count is compared against a reduced size to account for delays in
    // FIFO count updates.
        if(pipe_in_wr_count <= (FIFO_SIZE-BUFFER_HEADROOM-BLOCK_SIZE) ) begin
            pipe_in_ready <= 1'b1;
        end
        else begin
            pipe_in_ready <= 1'b0;
        end
    end


    // Instantiate the okHost and connect endpoints.
    wire [65*11-1:0]  okEHx;

    okHost okHI(
        .okUH(okUH),
        .okHU(okHU),
        .okUHU(okUHU),
        .okAA(okAA),
        .okClk(okClk),
        .okHE(okHE),
        .okEH(okEH)
    );

    //wire in RANGE "00" to "1F"
    //Wire 
    //
    //
    wire [15:0] Address_generator/* synthesis keep */;
    wire [15:0] Data_generator/* synthesis keep */;
    wire [15:0] Delay_value/* synthesis keep */;
    wire [27:0] Time_period/* synthesis keep */;
    wire o_ADC_Generator_mode/* synthesis keep */;
    wire [15:0] TrigIn40;
    wire TrigIn41;
    reg start_led;

    always@(posedge clk or posedge rst_Fifo_in)
    begin
        //if(ep00wire[2] == 1'b1)
        if(rst_Fifo_in == 1'b1)
            begin
                start_led <= 1'b0;
            end else begin
            //if(byte_counter< 16'h2710)begin
            if(TrigIn40[1] == 1'b1)begin
                start_led <= ~ start_led;
            end
        end
    end

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Front Panel
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    okWireOR # (.N(11)) wireOR (okEH, okEHx);
    okWireIn       wi00 (.okHE(okHE), .ep_addr(8'h00), .ep_dataout(ep00wire));
    okWireIn       wi01 (.okHE(okHE), .ep_addr(8'h01), .ep_dataout(Time_period));
    okWireIn       wi02 (.okHE(okHE), .ep_addr(8'h02), .ep_dataout(sum_plus));
    okWireIn       wi03 (.okHE(okHE), .ep_addr(8'h03), .ep_dataout(sum_minus));

    okWireIn       address_RAM_generator_wire  (.okHE(okHE), .ep_addr(8'h10), .ep_dataout(Address_generator));
    okWireIn       Data_RAM_generator_wire  (.okHE(okHE),  .ep_addr(8'h11), .ep_dataout(Data_generator));
    okWireIn       Delay_value_wire (.okHE(okHE),  .ep_addr(8'h12), .ep_dataout(Delay_value));

    okWireOut      wo00 (.okHE(okHE), .okEH(okEHx[ 0*65 +: 65 ]), .ep_addr(8'h20), .ep_datain({31'h00, init_calib_complete}));
    okWireOut      wo01 (.okHE(okHE), .okEH(okEHx[ 1*65 +: 65 ]), .ep_addr(8'h3e), .ep_datain(CAPABILITY));
    okWireOut      wo02 (.okHE(okHE), .okEH(okEHx[ 2*65 +: 65 ]), .ep_addr(8'h30), .ep_datain({25'h000_0000,pipe_in_wr_count}));
    okWireOut      wo03 (.okHE(okHE), .okEH(okEHx[ 4*65 +: 65 ]), .ep_addr(8'h31), .ep_datain({16'h0000,pipe_out_rd_count}));
    //okWireOut      wo04 (.okHE(okHE), .okEH(okEHx[ 5*65 +: 65 ]), .ep_addr(8'h32), .ep_datain({2'd0,o_rd_byte_index}));
    okWireOut      wo04 (.okHE(okHE), .okEH(okEHx[ 5*65 +: 65 ]), .ep_addr(8'h32), .ep_datain({data_number}));
    okWireOut      wo05 (.okHE(okHE), .okEH(okEHx[ 6*65 +: 65 ]), .ep_addr(8'h33), .ep_datain({31'd0,o_ADC_Generator_mode}));
    okWireOut      wo06 (.okHE(okHE), .okEH(okEHx[ 7*65 +: 65 ]), .ep_addr(8'h34), .ep_datain(32'd0)); //.ep_datain({2'd0,o_wr_byte_index}));
    okWireOut      wo07 (.okHE(okHE), .okEH(okEHx[ 8*65 +: 65 ]), .ep_addr(8'h35), .ep_datain(32'd0)); //.ep_datain({2'd0,o_rd_byte_index}));

    okTriggerIn      trig0 (.okHE(okHE), .ep_addr(8'h40),.ep_clk(clk),  .ep_trigger(TrigIn40)); //.ep_datain({2'd0,o_rd_byte_index}));
    //okTriggerIn      trig1 (.okHE(okHE), .ep_addr(8'h41),.ep_clk(Clk_100MHz),  .ep_trigger(TrigIn41));//.ep_datain({2'd0,o_rd_byte_index}));

    okPipeOut    po0  (.okHE(okHE), .okEH(okEHx[ 3*65 +: 65 ]), .ep_addr(8'ha0), .ep_read(po0_ep_read), .ep_datain(po0_ep_datain));

    wire o_EP_Division_Done,o_EP_ADC_Dout_RDY/* synthesis keep */;
    wire [31:0] o_EP_Capture_Filter_A /* synthesis keep */; //: out std_logic_vector(31 downto 0);
    wire [31:0] o_EP_Capture_Filter_B /* synthesis keep */; //: out std_logic_vector(31 downto 0);
    wire [31:0] o_EP_Event_Phi /* synthesis keep */; //: out std_logic_vector(31 downto 0);
    wire [31:0] o_EP_Event_Filter_A/* synthesis keep */;
    wire [31:0] o_EP_Event_Filter_B/* synthesis keep */;
    wire [31:0] o_EP_Event_Energy/* synthesis keep */;
    wire [15:0] o_EP_Event_Energy_16bits/* synthesis keep */;
    wire [79:0] o_EP_Capture_Buffered/* synthesis keep */;
    wire  o_EP_Event_Rdy/* synthesis keep */;
    wire  o_EP_Event_Rdy_flag/* synthesis keep */;
    wire [15:0] o_EP_Capture_Raw/* synthesis keep */;
    wire [255:0] BigVector/* synthesis keep */;
    reg [7:0]   Cpt_integer         /* synthesis keep */;
    reg [79:0]  EP_Capture_Data     /* synthesis keep */;

    reg [15:0]  EP_Capture_Raw      /* synthesis keep */;
    reg [31:0]  EP_Capture_Filter_A /* synthesis keep */;
    reg [31:0]  EP_Capture_Filter_B /* synthesis keep */;
    reg [7 :0]  EP_Event_Time       /* synthesis keep */;
    reg [31:0]  EP_Event_Filter_A   /* synthesis keep */;
    reg [31:0]  EP_Event_Filter_B   /* synthesis keep */;
    reg [31:0]  EP_Event_Phi        /* synthesis keep */;
    reg [31:0]  EP_Event_Energy     /* synthesis keep */;
    reg [15:0]  EP_Event_Energy_16bits     /* synthesis keep */;

    reg [7:0]  Flag_00     /* synthesis keep */;
    reg [7:0]  Flag_69     /* synthesis keep */;
    reg [15:0] Flag_0000   /* synthesis keep */  ;
    reg [15:0] Flag_0096   /* synthesis keep */  ;
    wire wr_en_fifo_in/* synthesis keep */;
    reg [15:0] event_number/* synthesis keep */;
    wire rd_rst_busy/* synthesis keep */; //means the Fifo read is in reset state
    wire wr_rst_busy/* synthesis keep */; //means the Fifo write is in reset state

    wire rst_Fifo_in/* synthesis keep */;
    wire o_Trig_out/* synthesis keep */;

    wire Peak_detected/* synthesis keep */;
    wire [15:0]Peak_Value/* synthesis keep */;

    // SPI MANAGEMENT SIGNALS
    reg   MOSI ;
    reg   CLK_SPI ;
    reg   [3:0] SS ;

    reg   [5:0]  Frequency_divider; // 0 to 63 change clock at speed divided by 128 => 100 Mhz/128 = 781 KHz
    reg   [4:0]  Step_Number ;
    reg   [3:0]  Data_counter;
    reg   [7:0] HEADER_data_SPI0;
    reg   [7:0] recorded_data_WORD_LSB;
    reg   [7:0] recorded_data_WORD_MSB;

    reg   [15:0] recorded_data_SPI0;
    reg   [15:0] recorded_data_SPI1;
    reg   [15:0] recorded_data_SPI2;
    reg   [15:0] recorded_data_SPI3;

    assign  rst_Fifo_in=ep00wire[2]; //wr_rst_busy | ep00wire[2];
    //reset is positive or negative??
    //allow to generate 256 bit frame to write into the fifo 
    // this counter allow to generate 10 Mhz ramp signal
    //always@(posedge okClk or posedge ep00wire[2])
    //always@(posedge Clk_100MHz or posedge rst_Fifo_in)
    always@(posedge okClk or posedge rst_Fifo_in)
    begin
        //if(ep00wire[2] == 1'b1)
        if(rst_Fifo_in == 1'b1)
            begin
                byte_counter <= 16'h0000;
            end else begin
            //if(byte_counter< 16'h2710)begin
            if(byte_counter< 16'h1000)begin
                byte_counter <= byte_counter + 1'b1;
            end else begin
                byte_counter <= 16'h0000;
            end
        end
    end

    reg [7:0] capture_couter/* synthesis keep */;
    reg counter_flag/* synthesis keep */;
    reg load_fifo/* synthesis keep */;
    reg o_read_Fifo_r;
    wire o_read_Fifo;

    //always@(posedge Clk_100MHz or posedge ep00wire[2])
    always@(posedge okClk or posedge ep00wire[2])
    begin
        if(ep00wire[2] == 1'b1)
            begin
                counter_led <= 32'h00000000;
            end else begin
            counter_led <= counter_led + 1'b1;
        end
    end

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // OKpipe in
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	


    (* DONT_TOUCH = "TRUE" *) fifo_w32_1024_r256_128 okPipeIn_fifo (
        .rst(ep00wire[2]),
        //.wr_clk(Clk_100MHz),
        .wr_clk(clk),
        .rd_clk(clk),
        .din(BigVector), // Bus [31 : 0]
        .wr_en(wr_en_fifo_in),
        .rd_en(pipe_in_read),
        .dout(pipe_in_data), // Bus [255 : 0]
        .full(pipe_in_full),
        .empty(pipe_in_empty),
        .valid(pipe_in_valid),
        .rd_data_count(pipe_in_rd_count), // Bus [6 : 0]
        .wr_data_count(pipe_in_wr_count),
        .wr_rst_busy(wr_rst_busy),
        .rd_rst_busy(rd_rst_busy)); // Bus [9 : 0]
    //(* DONT_TOUCH = "TRUE" *) because one input of LUT2 is not connected

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // OKpipe out
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////		

    (* DONT_TOUCH = "TRUE" *) fifo_w256_128_r32_1024 okPipeOut_fifo (
        .rst(ep00wire[2]),
        .wr_clk(clk),
        .rd_clk(okClk),
        .din(pipe_out_data), // Bus [255 : 0]
        .wr_en(pipe_out_write),
        .rd_en(po0_ep_read),
        .dout(po0_ep_datain), // Bus [31 : 0]
        .full(pipe_out_full),
        .empty(pipe_out_empty),
        .valid(),
        .rd_data_count(pipe_out_rd_count), // Bus [9 : 0]
        .wr_data_count(pipe_out_wr_count)); // Bus [6 : 0]

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Event processor interface
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    Event_Processor_Interfaces Event_Processor_Interfaces_inst(

        .i_Rst_n(rst_Fifo_in^1'b1)   , //(ep00wire[2]^1'b1)   ,//: 
        //.i_Clk(Clk_100MHz),//clk_200MHz),//divided_clk),//okClk)                ,//clk_100Mhz),//okClk)                ,//: -- 100 MHz
        .i_Clk(clk), //clk_200MHz),//divided_clk),//okClk)                ,//clk_100Mhz),//okClk)                ,//: -- 100 MHz
        .i_Clk_200MHz(clk),

        .o_read_Fifo(o_read_Fifo),


        .i_EP_Test_Mode_Enable(1'b0), //1'b0)       ,//: 


        //.o_EP_Division_Done(o_EP_Division_Done),
        //.o_EP_ADC_Dout_RDY(o_EP_ADC_Dout_RDY),
        //-------------------------------
        //-- Debug
        //-------------------------------
        .i_wire(ep00wire[3]),

        //.o_Phase_enable(o_Phase_enable),
        .o_div_read (o_div_read),


        .o_Peak_detected(Peak_detected),
        .o_Peak_Value(Peak_Value),

        //--------------------------------------------------------------------------------------------
        //-- Phase Trig
        //--------------------------------------------------------------------------------------------        

        .o_Trig_out(o_Trig_out),
        .o_ADC_Generator_mode(o_ADC_Generator_mode),

        //--------------------------------------------------------------------------------------------
        //-- UNIVERSAL GENERATOR SIGNALS
        //-------------------------------------------------------------------------------------------

        .i_Data_in(Data_generator), //: in STD_LOGIC_VECTOR (15 downto 0);  
        .i_Address(Address_generator), //: in STD_LOGIC_VECTOR (15 downto 0); 		
        .i_Write(TrigIn40[0]), //: in STD_LOGIC;                         
        .i_trig_start(TrigIn40[1]), //: in std_logic;                    
        .i_delay(Delay_value), //: in std_logic_vector(15 downto 0)  

        .wr_en_fifo_in(wr_en_fifo_in),
        .BigVector(BigVector),
        //--------------------------------------------------------------------------------------------
        //-- SUM
        //-------------------------------------------------------------------------------------------
        .i_sum_plus(sum_plus),
        .i_sum_minus(sum_minus),
        //--------------------------------------------------------------------------------------------
        //-- ADC SPI
        //--------------------------------------------------------------------------------------------
        .o_ADC_SCK            (),
        .o_ADC_CNV_n          (),
        .i_ADC_SDO_front    	(),
        .i_ADC_SDO_back      ()

    );

endmodule