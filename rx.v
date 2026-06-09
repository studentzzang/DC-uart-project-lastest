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
// CREATED		"Mon Jun 08 20:37:52 2026"

module rx(
	rx_serial,
	clk,
	reset,
	baud_tick,
	data_out,
	rx_cnt
);


input wire	rx_serial;
input wire	clk;
input wire	reset;
input wire	baud_tick;
output wire	[7:0] data_out;
output wire	[2:0] rx_cnt;

reg	[7:0] data_out_ALTERA_SYNTHESIZED;
wire	[2:0] q;
reg	[1:0] state;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_28;





rx_fsm	b2v_inst(
	.reset(reset),
	.clock(clk),
	.rx_serial(rx_serial),
	.bit_index_is_7(SYNTHESIZED_WIRE_0),
	.baud_tick(baud_tick),
	
	.clear_bit_index(SYNTHESIZED_WIRE_6),
	.count_en(SYNTHESIZED_WIRE_30));
	defparam	b2v_inst.DATA = 2;
	defparam	b2v_inst.IDLE = 0;
	defparam	b2v_inst.START = 1;
	defparam	b2v_inst.STOP = 3;

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_1 & baud_tick & SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_7 = baud_tick & SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_31 = ;




lpm_counter_3	b2v_inst26(
	.sclr(SYNTHESIZED_WIRE_6),
	.clock(clk),
	.cnt_en(SYNTHESIZED_WIRE_7),
	.aclr(reset),
	.q(q));

assign	SYNTHESIZED_WIRE_0 = q[2] & q[1] & q[0];


lpm_decode_3	b2v_inst28(
	.data(q),
	.eq0(SYNTHESIZED_WIRE_9),
	.eq1(SYNTHESIZED_WIRE_18),
	.eq2(SYNTHESIZED_WIRE_20),
	.eq3(SYNTHESIZED_WIRE_22),
	.eq4(SYNTHESIZED_WIRE_24),
	.eq5(SYNTHESIZED_WIRE_26),
	.eq6(SYNTHESIZED_WIRE_28),
	.eq7(SYNTHESIZED_WIRE_1));


always@(posedge SYNTHESIZED_WIRE_8)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[0] <= rx_serial;
	end
end

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_9 & baud_tick & SYNTHESIZED_WIRE_30;


always@(posedge SYNTHESIZED_WIRE_11)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[1] <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_12)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[2] <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_13)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[3] <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_14)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[4] <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_15)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[5] <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_16)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[6] <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_17)
begin
	begin
	data_out_ALTERA_SYNTHESIZED[7] <= rx_serial;
	end
end

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_18 & baud_tick & SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_20 & baud_tick & SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_22 & baud_tick & SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_24 & baud_tick & SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_26 & baud_tick & SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_28 & baud_tick & SYNTHESIZED_WIRE_30;

assign	data_out = data_out_ALTERA_SYNTHESIZED;
assign	rx_cnt = q;

endmodule
