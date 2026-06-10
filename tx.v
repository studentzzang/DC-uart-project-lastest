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
// CREATED		"Thu Jun 11 01:30:29 2026"

module tx(
	data_ready,
	clk,
	reset,
	baud_tick,
	data_in,
	tx_serial,
	tx_cnt,
	tx_sel
);


input wire	data_ready;
input wire	clk;
input wire	reset;
input wire	baud_tick;
input wire	[3:0] data_in;
output wire	tx_serial;
output wire	[2:0] tx_cnt;
output wire	[1:0] tx_sel;

wire	tx_bit_7;
wire	[2:0] tx_bit_cnt;
reg	[3:0] tx_reg;
wire	tx_reg_clk;
wire	[1:0] tx_sel_ALTERA_SYNTHESIZED;
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
wire	SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_2 = 1;
assign	SYNTHESIZED_WIRE_4 = 0;
assign	SYNTHESIZED_WIRE_5 = 1;




tx_fsm	b2v_inst(
	.reset(reset),
	.clock(clk),
	.baud_tick(baud_tick),
	.data_ready(data_ready),
	.tx_bit_7(tx_bit_7),
	.tx_load_data(SYNTHESIZED_WIRE_14),
	.tx_clear_bit(SYNTHESIZED_WIRE_0),
	.tx_count_en(SYNTHESIZED_WIRE_13),
	
	.tx_state_start(tx_sel_ALTERA_SYNTHESIZED[0]),
	.tx_state_data(tx_sel_ALTERA_SYNTHESIZED[1])
	);
	defparam	b2v_inst.DATA = 1;
	defparam	b2v_inst.IDLE = 2;
	defparam	b2v_inst.START = 0;
	defparam	b2v_inst.STOP = 3;


lpm_counter_3	b2v_inst1(
	.sclr(SYNTHESIZED_WIRE_0),
	.clock(clk),
	.cnt_en(SYNTHESIZED_WIRE_1),
	.aclr(reset),
	.q(tx_bit_cnt));


lpm_mux_4to1_bb	b2v_inst13(
	.data3(SYNTHESIZED_WIRE_2),
	.data2(SYNTHESIZED_WIRE_3),
	.data1(SYNTHESIZED_WIRE_4),
	.data0(SYNTHESIZED_WIRE_5),
	.sel(tx_sel_ALTERA_SYNTHESIZED),
	.result(tx_serial));





always@(posedge tx_reg_clk)
begin
	begin
	tx_reg[1] <= data_in[1];
	end
end

assign	tx_bit_7 = tx_bit_cnt[2] & tx_bit_cnt[1] & SYNTHESIZED_WIRE_6;


always@(posedge tx_reg_clk)
begin
	begin
	tx_reg[2] <= data_in[2];
	end
end


always@(posedge tx_reg_clk)
begin
	begin
	tx_reg[3] <= data_in[3];
	end
end


lpm_mux_8	b2v_inst22(
	
	.data6(tx_reg[3]),
	.data5(tx_reg[2]),
	.data4(tx_reg[1]),
	.data3(SYNTHESIZED_WIRE_7),
	.data2(tx_reg[0]),
	.data1(SYNTHESIZED_WIRE_8),
	.data0(SYNTHESIZED_WIRE_9),
	.sel(tx_bit_cnt),
	.result(SYNTHESIZED_WIRE_3));

assign	SYNTHESIZED_WIRE_10 = tx_reg[0] ^ tx_reg[1];

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_10 ^ tx_reg[3];

assign	SYNTHESIZED_WIRE_11 = tx_reg[0] ^ tx_reg[2];

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_11 ^ tx_reg[3];

assign	SYNTHESIZED_WIRE_12 = tx_reg[1] ^ tx_reg[2];

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_12 ^ tx_reg[3];

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_13 & baud_tick;

assign	tx_reg_clk = SYNTHESIZED_WIRE_14 & data_ready;

assign	SYNTHESIZED_WIRE_6 =  ~tx_bit_cnt[0];


always@(posedge tx_reg_clk)
begin
	begin
	tx_reg[0] <= data_in[0];
	end
end

assign	tx_cnt = tx_bit_cnt;
assign	tx_sel = tx_sel_ALTERA_SYNTHESIZED;

endmodule
