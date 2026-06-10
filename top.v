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
// CREATED		"Thu Jun 11 02:08:32 2026"

module top(
	clk,
	reset,
	data_ready,
	noise,
	zero,
	data_in,
	tx_serial,
	baud_tick,
	data_out,
	rx_cnt,
	tx_cnt,
	tx_sel
);


input wire	clk;
input wire	reset;
input wire	data_ready;
input wire	noise;
input wire	zero;
input wire	[3:0] data_in;
output wire	tx_serial;
output wire	baud_tick;
output wire	[3:0] data_out;
output wire	[2:0] rx_cnt;
output wire	[2:0] tx_cnt;
output wire	[1:0] tx_sel;

wire	[3:0] data_out_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_4;

assign	tx_serial = SYNTHESIZED_WIRE_0;
assign	baud_tick = SYNTHESIZED_WIRE_4;




baud_gen_	b2v_inst(
	.clk(clk),
	.reset(reset),
	.baud_tick(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_0 ^ noise;


rx	b2v_inst3(
	.clk(clk),
	.rx_serial(SYNTHESIZED_WIRE_1),
	.reset(reset),
	.baud_tick(SYNTHESIZED_WIRE_4),
	.zero(zero),
	.data1(data_out_ALTERA_SYNTHESIZED[0]),
	.data2(data_out_ALTERA_SYNTHESIZED[1]),
	.data3(data_out_ALTERA_SYNTHESIZED[2]),
	.data4(data_out_ALTERA_SYNTHESIZED[3]),
	.rx_cnt(rx_cnt));


tx	b2v_inst5(
	.clk(clk),
	.reset(reset),
	.baud_tick(SYNTHESIZED_WIRE_4),
	.data_ready(data_ready),
	.data_in(data_in),
	.tx_serial(SYNTHESIZED_WIRE_0),
	.tx_cnt(tx_cnt),
	.tx_sel(tx_sel));

assign	data_out = data_out_ALTERA_SYNTHESIZED;

endmodule
