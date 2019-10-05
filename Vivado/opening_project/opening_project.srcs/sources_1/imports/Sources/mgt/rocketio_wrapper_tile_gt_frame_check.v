///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 1.5
//  \   \         Application : 7 Series FPGAs Transceivers Wizard  
//  /   /         Filename : rocketio_wrapper_tile_gt_frame_check.v
// /___/   /\      
// \   \  /  \ 
//  \___\/\___\ 
//
//
// Module ROCKETIO_WRAPPER_TILE_GT_FRAME_CHECK
// Generated by Xilinx 7 Series FPGAs Transceivers Wizard
// 
// 
// (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


`timescale 1ns / 1ps
`define DLY #1

//***********************************Entity Declaration************************

module ROCKETIO_WRAPPER_TILE_GT_FRAME_CHECK #
(
    // parameter to set the number of words in the BRAM
    parameter   RX_DATA_WIDTH            =  64,
    parameter   RXCTRL_WIDTH             =  2,
    parameter   WORDS_IN_BRAM            =  512,
    parameter   CHANBOND_SEQ_LEN         =  1,
    parameter   COMMA_DOUBLE             =  16'hf628,
    parameter   START_OF_PACKET_CHAR     =  64'h00000000000000fb
)                            
(
    // User Interface
    input  wire [(RX_DATA_WIDTH-1):0] RX_DATA_IN,

    output reg          RXENPCOMMADET_OUT,
    output reg          RXENMCOMMADET_OUT,

    // Error Monitoring
    output wire [7:0]   ERROR_COUNT_OUT,
    
    // Track Data
    output wire         TRACK_DATA_OUT,

    output wire RX_SLIDE,
   
    // System Interface
    input  wire         USER_CLK,
    input  wire         SYSTEM_RESET 
);


//***************************Internal Register Declarations******************** 

    reg             system_reset_r;

    reg             begin_r;
    reg             data_error_detected_r;
    reg     [8:0]   error_count_r;
    reg             error_detected_r;
    reg     [9:0]   read_counter_i;    

    reg     [79:0] rom [0:511];    

    reg     [(RX_DATA_WIDTH-1):0] rx_data_r;
    reg     [(RX_DATA_WIDTH-1):0] rx_data_r_track;

    reg             start_of_packet_detected_r;    
    reg             track_data_r;
    reg             track_data_r2;
    reg             track_data_r3;
    reg     [79:0]  rx_data_ram_r;
    reg     [(RX_DATA_WIDTH-1):0] rx_data_r2;
    reg     [(RX_DATA_WIDTH-1):0] rx_data_r3;
    reg     [(RX_DATA_WIDTH-1):0] rx_data_r4;
    reg     [(RX_DATA_WIDTH-1):0] rx_data_r5;
    reg     [(RX_DATA_WIDTH-1):0] rx_data_r6;
    reg             sel;
    reg             idle_slip_r;
    reg             slip_assert_r;
    reg             wait_state_r;
    reg             bit_align_r;
    reg     [6:0]   wait_before_slip_r;
    reg     [6:0]   wait_before_init_r;    
 

//*********************************Wire Declarations***************************

    wire    [(RX_DATA_WIDTH-1):0] bram_data_r;
    wire            error_detected_c;
    wire            next_begin_c;
    wire            next_data_error_detected_c;
    wire            next_track_data_c;
    wire            start_of_packet_detected_c;
    wire    [(RX_DATA_WIDTH-1):0]  rx_data_aligned;
    wire            rxdata_or;
    wire            count_slip_complete_c;
    wire            next_idle_slip_c;
    wire            next_slip_assert_c;
    wire            wait_state_c;
    wire            rx_data_has_start_char_c;
    wire            tied_to_ground_i;
    wire    [31:0]  tied_to_ground_vec_i;
    wire            tied_to_vcc_i;

//*********************************Main Body of Code***************************

    //_______________________  Static signal Assigments _______________________   

    assign tied_to_ground_i             = 1'b0;
    assign tied_to_ground_vec_i         = 32'h0000;
    assign tied_to_vcc_i                = 1'b1;

    //___________ synchronizing the async reset for ease of timing simulation ________
    always@(posedge USER_CLK)
       system_reset_r <= `DLY SYSTEM_RESET;    

    //______________________ Register RXDATA once to ease timing ______________   

    always @(posedge USER_CLK)
    begin
        rx_data_r  <= `DLY    RX_DATA_IN;
        rx_data_r2 <= `DLY    rx_data_r;
    end 
    //________________________________ State machine __________________________    
    
    // State registers
    always @(posedge USER_CLK)
        if(system_reset_r)
            {begin_r,track_data_r,data_error_detected_r}  <=  `DLY    3'b100;
        else
        begin
            begin_r                <=  `DLY    next_begin_c;
            track_data_r           <=  `DLY    next_track_data_c;
            data_error_detected_r  <=  `DLY    next_data_error_detected_c;
        end

    // Next state logic
    assign  next_begin_c                =   (begin_r && !start_of_packet_detected_r)
                                            || data_error_detected_r ;

    assign  next_track_data_c           =   (begin_r && start_of_packet_detected_r)
                                            || (track_data_r && !error_detected_r);
                                      
    assign  next_data_error_detected_c  =   (track_data_r && error_detected_r);                               
        
    assign  start_of_packet_detected_c  =   rx_data_has_start_char_c;

    always @(posedge USER_CLK) 
        start_of_packet_detected_r    <=   `DLY  start_of_packet_detected_c;  

    // Registering for timing
    always @(posedge USER_CLK) 
        track_data_r2    <=   `DLY  track_data_r;  

    always @(posedge USER_CLK) 
        track_data_r3    <=   `DLY  track_data_r2; 

    //______________________________ Capture incoming data ____________________    


    always @(posedge USER_CLK)
    begin
        if(system_reset_r)  
        begin
            rx_data_r4      <=  `DLY   'h0;
            rx_data_r5      <=  `DLY   'h0;
            rx_data_r6      <=  `DLY   'h0;
            rx_data_r_track <=  `DLY   'h0;
        end
        else
        begin
            rx_data_r4      <=  `DLY    rx_data_r3;
            rx_data_r5      <=  `DLY    rx_data_r4;
            rx_data_r6      <=  `DLY    rx_data_r5;
            rx_data_r_track <=  `DLY    rx_data_r6;
        end
    end

    assign rx_data_aligned = rx_data_r3;



   //______________ Code for Bit Slipping Logic for None encoding______________

    assign rxdata_or = |(rx_data_r|rx_data_r2|rx_data_r3);

    // State registers
    always @(posedge USER_CLK)
        if( (system_reset_r == 1'b1) | (wait_before_init_r[6] == 1'b0) | (rxdata_or == 1'b0) )
            {idle_slip_r,slip_assert_r,wait_state_r}  <=  `DLY    3'b100;
        else
        begin
            idle_slip_r            <=  `DLY    next_idle_slip_c;
            slip_assert_r          <=  `DLY    next_slip_assert_c;
            wait_state_r           <=  `DLY    wait_state_c;
        end

    // Next state logic
    assign  next_idle_slip_c            =   (idle_slip_r & bit_align_r) | (wait_state_r & count_slip_complete_c);

    assign  next_slip_assert_c          =   (idle_slip_r & !bit_align_r);

    assign  wait_state_c                =   (slip_assert_r) | (wait_state_r & !count_slip_complete_c);

    //_______ Counter for waiting clock cycles after RXSLIDE________
    always @(posedge USER_CLK)
    begin
        if (!wait_state_r)
           wait_before_slip_r  <= `DLY  7'b000000;
        else
           wait_before_slip_r  <= `DLY  wait_before_slip_r + 1'b1;
    end

    //_______ Counter for waiting clock cycles before starting RXSLIDE operation________
    //_______ Wait for 64 clock cycles to see if the RXDATA is already byte aligned. If not, start RXSLIDE operation
    always @(posedge USER_CLK)
    begin	    
        if( (system_reset_r == 1'b1) | (rxdata_or == 1'b0) )
	     wait_before_init_r <= `DLY    7'b0000000;
        else if (wait_before_init_r[6] == 1'b0)
             wait_before_init_r <= `DLY    wait_before_init_r + 1'b1;
    end

    assign count_slip_complete_c = wait_before_slip_r[6];

    always @(posedge USER_CLK)
    begin
        if( (system_reset_r == 1'b1) | (rxdata_or == 1'b0) )   begin
          bit_align_r <= 1'b0;
        end else begin
            if( ({rx_data_r[7:0],rx_data_r2[15:8]} == START_OF_PACKET_CHAR) || (rx_data_r[15:0]== START_OF_PACKET_CHAR) )
            begin
                bit_align_r <= 1'b1;
            end
        end
    end

    always @(posedge USER_CLK)
    begin
        if(system_reset_r)   begin
          sel <= 1'b0;
        end else begin
            if({rx_data_r[7:0],rx_data_r2[15:8]} == START_OF_PACKET_CHAR)
            begin
                sel <= 1'b1;
            end
            else if(rx_data_r[15:0]== START_OF_PACKET_CHAR)
            begin
                sel <= 1'b0;
            end
        end
    end

    always @(posedge USER_CLK)
        begin
            if(system_reset_r)    rx_data_r3 <= 'h0;
            else
            begin
                if(sel == 1'b1)
                begin
                    rx_data_r3   <=  `DLY    {rx_data_r[7:0],rx_data_r2[15:8]}; 
                end
                else 
                begin
                    rx_data_r3   <=  `DLY    rx_data_r2; 
                end
            end
        end

    assign rx_data_has_start_char_c = (rx_data_aligned == START_OF_PACKET_CHAR) ;




    //_____________________________ Assign output ports _______________________    
    assign TRACK_DATA_OUT = track_data_r;

    assign RX_SLIDE = slip_assert_r;

    // Drive the enpcommaalign port of the gt for alignment
    always @(posedge USER_CLK)
        if(system_reset_r)  RXENPCOMMADET_OUT   <=  `DLY    1'b0;
        else              RXENPCOMMADET_OUT   <=  `DLY    1'b1;

    // Drive the enmcommaalign port of the gt for alignment
    always @(posedge USER_CLK)
        if(system_reset_r)  RXENMCOMMADET_OUT   <=  `DLY    1'b0;
        else              RXENMCOMMADET_OUT   <=  `DLY    1'b1;


    //___________________________ Check incoming data for errors ______________
         
    //An error is detected when data read for the BRAM does not match the incoming data
    assign  error_detected_c    =  track_data_r3 && (rx_data_r_track != bram_data_r); 

    
    //We register the error_detected signal for use with the error counter logic
    always @(posedge USER_CLK)
        if(!track_data_r)  
            error_detected_r    <=  `DLY    1'b0;
        else
            error_detected_r    <=  `DLY    error_detected_c;  

    //We count the total number of errors we detect. By keeping a count we make it less likely that we will miss
    //errors we did not directly observe. 
    always @(posedge USER_CLK)
        if(system_reset_r)
            error_count_r       <=  `DLY    9'd0;
        else if(error_detected_r)
            error_count_r       <=  `DLY    error_count_r + 1;    
    
    //Here we connect the lower 8 bits of the count (the MSbit is used only to check when the counter reaches
    //max value) to the module output
    assign  ERROR_COUNT_OUT =   error_count_r[7:0];

    //____________________________ Counter to read from BRAM __________________________    
    always @(posedge USER_CLK)
        if(system_reset_r ||  (read_counter_i == (WORDS_IN_BRAM-1)))
        begin
            read_counter_i   <=  `DLY    10'd0;
        end
        else if (start_of_packet_detected_r && !track_data_r)
        begin
            read_counter_i   <=  `DLY    10'd0;
        end
        else
        begin
            read_counter_i  <=  `DLY    read_counter_i + 10'd1;
        end

    //________________________________ BRAM Inference Logic _____________________________    

//Array slice from dat file to compare against receive data  
generate
if(RX_DATA_WIDTH==80)
begin : datapath_80
    assign bram_data_r      = rx_data_ram_r[(RX_DATA_WIDTH-1):0];
end
else
begin : datapath_16_20_32_40_64
    assign bram_data_r      = rx_data_ram_r[(16+RX_DATA_WIDTH-1):16];
end 
endgenerate

//    initial
//    begin
//           $readmemh("../../mgt/gt_rom_init_rx.dat",rom,0,511);
//    end

    always @(posedge USER_CLK)
           rx_data_ram_r <= `DLY  rom[read_counter_i];
    
    
endmodule           

