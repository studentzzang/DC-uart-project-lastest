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
// CREATED		"Wed Jun 10 16:15:28 2026"

module rx(
	rx_serial,
	clk,
	reset,
	baud_tick,
	0,
	data1,
	data2,
	data3,
	data4,
	rx_cnt
);


input wire	rx_serial;
input wire	clk;
input wire	reset;
input wire	baud_tick;
input wire	0;
output wire	data1;
output wire	data2;
output wire	data3;
output wire	data4;
output wire	[2:0] rx_cnt;

reg	data_out0;
reg	data_out1;
reg	data_out2;
reg	data_out3;
reg	data_out4;
reg	data_out6;
wire	gdfx_temp0;
wire	[2:0] q;
reg	[1:0] state;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;
reg	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;




assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_0 & baud_tick & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_41 = SYNTHESIZED_WIRE_2 & baud_tick & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_4 & baud_tick & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_6 & baud_tick & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_24 = SYNTHESIZED_WIRE_8 & baud_tick & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_10 & baud_tick & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_26 = SYNTHESIZED_WIRE_12 & baud_tick & SYNTHESIZED_WIRE_38;


rx_fsm	b2v_inst(
	.reset(gdfx_temp0),
	.clock(gdfx_temp0),
	.rx_serial(gdfx_temp0),
	.bit_index_is_7(SYNTHESIZED_WIRE_14),
	.baud_tick(baud_tick),
	
	.clear_bit_index(gdfx_temp0),
	.count_en(SYNTHESIZED_WIRE_38));
	defparam	b2v_inst.DATA = 2;
	defparam	b2v_inst.IDLE = 0;
	defparam	b2v_inst.START = 1;
	defparam	b2v_inst.STOP = 3;


xor4_0	b2v_inst1(
	.IN3(data_out4),
	.IN4(data_out6),
	.IN2(data_out2),
	.IN1(data_out0),
	.OUT1(SYNTHESIZED_WIRE_31));

assign	data3 = SYNTHESIZED_WIRE_39 ^ SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_36 =  ~SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_37 =  ~SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_15 =  ~SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_35 =  ~SYNTHESIZED_WIRE_19;

assign	gdfx_temp0 = baud_tick & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_40 = ;




lpm_counter_3	b2v_inst26(
	.sclr(gdfx_temp0),
	.clock(gdfx_temp0),
	.cnt_en(gdfx_temp0),
	.aclr(gdfx_temp0),
	
	.q(q));

assign	SYNTHESIZED_WIRE_14 = q[2] & q[1] & q[0];


lpm_decode_3	b2v_inst28(
	.data(q),
	.eq0(SYNTHESIZED_WIRE_6),
	.eq1(SYNTHESIZED_WIRE_8),
	.eq2(SYNTHESIZED_WIRE_10),
	.eq3(SYNTHESIZED_WIRE_12),
	.eq4(SYNTHESIZED_WIRE_0),
	.eq5(SYNTHESIZED_WIRE_2),
	.eq6(SYNTHESIZED_WIRE_4)
	);


always@(posedge SYNTHESIZED_WIRE_23)
begin
	begin
	data_out0 <= gdfx_temp0;
	end
end


xor4_1	b2v_inst3(
	.IN3(SYNTHESIZED_WIRE_39),
	.IN4(data_out6),
	.IN2(data_out2),
	.IN1(data_out1),
	.OUT1(SYNTHESIZED_WIRE_32));


always@(posedge SYNTHESIZED_WIRE_24)
begin
	begin
	data_out1 <= gdfx_temp0;
	end
end


always@(posedge SYNTHESIZED_WIRE_25)
begin
	begin
	data_out2 <= gdfx_temp0;
	end
end


always@(posedge SYNTHESIZED_WIRE_26 or negedge SYNTHESIZED_WIRE_41)
begin
if (!SYNTHESIZED_WIRE_41)
	begin
	data_out3 <= 1;
	end
else
	begin
	data_out3 <= gdfx_temp0;
	end
end


always@(posedge SYNTHESIZED_WIRE_28)
begin
	begin
	data_out4 <= gdfx_temp0;
	end
end


always@(posedge SYNTHESIZED_WIRE_41)
begin
	begin
	SYNTHESIZED_WIRE_39 <= gdfx_temp0;
	end
end


always@(posedge SYNTHESIZED_WIRE_30)
begin
	begin
	data_out6 <= gdfx_temp0;
	end
end


xor4_2	b2v_inst4(
	.IN3(SYNTHESIZED_WIRE_39),
	.IN4(data_out6),
	.IN2(data_out4),
	.IN1(data_out3),
	.OUT1(SYNTHESIZED_WIRE_34));


\74138 	b2v_inst5(
	.A(SYNTHESIZED_WIRE_31),
	.B(SYNTHESIZED_WIRE_32),
	.G1(SYNTHESIZED_WIRE_33),
	.C(SYNTHESIZED_WIRE_34),
	.G2AN(0),
	.G2BN(0),
	
	
	
	.Y3N(SYNTHESIZED_WIRE_16),
	
	.Y5N(SYNTHESIZED_WIRE_17),
	.Y6N(SYNTHESIZED_WIRE_18),
	.Y7N(SYNTHESIZED_WIRE_19));

assign	SYNTHESIZED_WIRE_33 =  ~0;

assign	data4 = data_out6 ^ SYNTHESIZED_WIRE_35;

assign	data1 = data_out2 ^ SYNTHESIZED_WIRE_36;

assign	data2 = data_out4 ^ SYNTHESIZED_WIRE_37;

assign	gdfx_temp0 = rx_serial;
assign	gdfx_temp0 = reset;
assign	gdfx_temp0 = clk;

endmodule

module xor4_0(IN3,IN4,IN2,IN1,OUT1);
/* synthesis black_box */

input IN3;
input IN4;
input IN2;
input IN1;
output OUT1;

endmodule

module xor4_1(IN3,IN4,IN2,IN1,OUT1);
/* synthesis black_box */

input IN3;
input IN4;
input IN2;
input IN1;
output OUT1;

endmodule

module xor4_2(IN3,IN4,IN2,IN1,OUT1);
/* synthesis black_box */

input IN3;
input IN4;
input IN2;
input IN1;
output OUT1;

endmodule
