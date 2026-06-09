// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Sun May 31 05:29:31 2026"

module baud_gen_(
	clk,
	reset,
	baud_tick
);


input wire	clk;
input wire	reset;
output reg	baud_tick;

wire	[12:0] q;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_16;




assign	SYNTHESIZED_WIRE_13 =  ~reset;

assign	SYNTHESIZED_WIRE_5 =  ~q[4];

assign	SYNTHESIZED_WIRE_3 =  ~q[5];

assign	SYNTHESIZED_WIRE_2 =  ~q[6];

assign	SYNTHESIZED_WIRE_4 =  ~q[7];

assign	SYNTHESIZED_WIRE_6 =  ~q[8];

assign	SYNTHESIZED_WIRE_7 =  ~q[9];

assign	SYNTHESIZED_WIRE_8 =  ~q[10];

assign	SYNTHESIZED_WIRE_9 =  ~q[11];

assign	SYNTHESIZED_WIRE_11 =  ~q[12];

assign	SYNTHESIZED_WIRE_10 = q[3] & SYNTHESIZED_WIRE_0 & q[0] & SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_0 =  ~q[1];


always@(posedge clk or negedge SYNTHESIZED_WIRE_13)
begin
if (!SYNTHESIZED_WIRE_13)
	begin
	baud_tick <= 0;
	end
else
	begin
	baud_tick <= SYNTHESIZED_WIRE_16;
	end
end

assign	SYNTHESIZED_WIRE_1 =  ~q[2];


lpm_counter_13	b2v_lpm_counter_13(
	.sclr(SYNTHESIZED_WIRE_16),
	.clock(clk),
	.aclr(reset),
	.q(q));


endmodule
