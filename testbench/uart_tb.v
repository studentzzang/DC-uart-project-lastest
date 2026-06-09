`timescale 1ns/1ps

module uart_tb;

reg clk;
reg reset;
reg [7:0] data_in;
reg data_ready;

wire tx_serial;
wire rx_serial;
wire baud_tick;

wire [7:0] data_out;
wire data_valid;

assign rx_serial = tx_serial;

baud_gen BG(
    .clk(clk),
    .reset(reset),
    .baud_tick(baud_tick)
);

uart_tx TX(
    .clk(clk),
    .reset(reset),
    .baud_tick(baud_tick),
    .data_in(data_in),
    .data_ready(data_ready),
    .tx_serial(tx_serial)
);

uart_rx RX(
    .clk(clk),
    .reset(reset),
    .baud_tick(baud_tick),
    .rx_serial(rx_serial),
    .data_out(data_out),
    .data_valid(data_valid)
);

always #5 clk = ~clk;

initial
begin

clk = 0;
reset = 1;
data_ready = 0;
data_in = 8'b10101010;

#20
reset = 0;

#20
data_ready = 1;

#10
data_ready = 0;

#10000
$finish;

end

endmodule
