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
// CREATED		"Wed Jun 10 19:45:58 2026"

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

wire	[2:0] q;
reg	[1:0] state;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;
reg	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
reg	DFF_inst29;
reg	SYNTHESIZED_WIRE_47;
reg	SYNTHESIZED_WIRE_48;
reg	SYNTHESIZED_WIRE_49;
reg	DFF_inst30;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
reg	DFF_inst32;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;




assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_0 & baud_tick & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_2 & baud_tick & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_4 & baud_tick & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_6 & baud_tick & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_26 = SYNTHESIZED_WIRE_8 & baud_tick & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_10 & baud_tick & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_12 & baud_tick & SYNTHESIZED_WIRE_45;


rx_fsm	b2v_inst(
	.reset(reset),
	.clock(clk),
	.rx_serial(rx_serial),
	.bit_index_is_7(SYNTHESIZED_WIRE_14),
	.baud_tick(baud_tick),
	
	.clear_bit_index(SYNTHESIZED_WIRE_23),
	.count_en(SYNTHESIZED_WIRE_45));
	defparam	b2v_inst.DATA = 2;
	defparam	b2v_inst.IDLE = 0;
	defparam	b2v_inst.START = 1;
	defparam	b2v_inst.STOP = 3;

assign	data3 = SYNTHESIZED_WIRE_46 ^ SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_43 =  ~SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_44 =  ~SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_15 =  ~SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_42 =  ~SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_32 = DFF_inst29 ^ SYNTHESIZED_WIRE_47;

assign	SYNTHESIZED_WIRE_24 = baud_tick & SYNTHESIZED_WIRE_45;

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_48 ^ SYNTHESIZED_WIRE_49;

assign	SYNTHESIZED_WIRE_34 = DFF_inst30 ^ SYNTHESIZED_WIRE_47;

assign	SYNTHESIZED_WIRE_50 = ;



assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_46 ^ SYNTHESIZED_WIRE_49;


lpm_counter_3	b2v_inst26(
	.sclr(SYNTHESIZED_WIRE_23),
	.clock(clk),
	.cnt_en(SYNTHESIZED_WIRE_24),
	.aclr(reset),
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


always@(posedge SYNTHESIZED_WIRE_25)
begin
	begin
	DFF_inst29 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_26)
begin
	begin
	DFF_inst30 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_27)
begin
	begin
	SYNTHESIZED_WIRE_47 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_28)
begin
	begin
	DFF_inst32 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_29)
begin
	begin
	SYNTHESIZED_WIRE_48 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_30)
begin
	begin
	SYNTHESIZED_WIRE_46 <= rx_serial;
	end
end


always@(posedge SYNTHESIZED_WIRE_31)
begin
	begin
	SYNTHESIZED_WIRE_49 <= rx_serial;
	end
end

assign	SYNTHESIZED_WIRE_36 = DFF_inst32 ^ SYNTHESIZED_WIRE_48;

assign	SYNTHESIZED_WIRE_37 = SYNTHESIZED_WIRE_46 ^ SYNTHESIZED_WIRE_49;

assign	SYNTHESIZED_WIRE_38 = SYNTHESIZED_WIRE_32 ^ SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_39 = SYNTHESIZED_WIRE_34 ^ SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_41 = SYNTHESIZED_WIRE_36 ^ SYNTHESIZED_WIRE_37;


\74138 	b2v_inst5(
	.A(SYNTHESIZED_WIRE_38),
	.B(SYNTHESIZED_WIRE_39),
	.G1(SYNTHESIZED_WIRE_40),
	.C(SYNTHESIZED_WIRE_41),
	.G2AN(0),
	.G2BN(0),
	
	
	.Y2N(SYNTHESIZED_WIRE_16),
	
	.Y4N(SYNTHESIZED_WIRE_17),
	.Y5N(SYNTHESIZED_WIRE_18),
	.Y6N(SYNTHESIZED_WIRE_19)
	);

assign	SYNTHESIZED_WIRE_40 =  ~0;

assign	data4 = SYNTHESIZED_WIRE_49 ^ SYNTHESIZED_WIRE_42;

assign	data1 = SYNTHESIZED_WIRE_47 ^ SYNTHESIZED_WIRE_43;

assign	data2 = SYNTHESIZED_WIRE_48 ^ SYNTHESIZED_WIRE_44;


endmodule
