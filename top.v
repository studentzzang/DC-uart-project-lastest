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
// CREATED		"Sun May 31 05:45:14 2026"

module top(
	clk,
	reset,
	data_ready,
	data_in,
	tx_serial,
	data_out
);


input wire	clk;
input wire	reset;
input wire	data_ready;
input wire	[7:0] data_in;
output wire	tx_serial;
output wire	[7:0] data_out;

wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_1;

assign	tx_serial = SYNTHESIZED_WIRE_1;




baud_gen_	b2v_inst(
	.clk(clk),
	.reset(reset),
	.baud_tick(SYNTHESIZED_WIRE_3));


tx	b2v_inst6(
	.clk(clk),
	.reset(reset),
	.baud_tick(SYNTHESIZED_WIRE_3),
	.data_ready(data_ready),
	.data_in(data_in),
	.tx_serial(SYNTHESIZED_WIRE_1));


rx	b2v_inst7(
	.clk(clk),
	.rx_serial(SYNTHESIZED_WIRE_1),
	.reset(reset),
	.baud_tick(SYNTHESIZED_WIRE_3),
	.data_out(data_out));


endmodule
