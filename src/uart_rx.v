module uart_rx(
    input clk,
    input reset,
    input baud_tick,
    input rx_serial,
    output reg [7:0] data_out,
    output reg data_valid
);

parameter IDLE=0, START=1, DATA=2, STOP=3;

reg [1:0] state;
reg [2:0] bit_index;
reg [7:0] data_reg;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        state <= IDLE;
        bit_index <= 0;
        data_valid <= 0;
        data_reg <= 0;
        data_out <= 0;
    end

    else if(baud_tick)
    begin
        case(state)

        IDLE:
        begin
            data_valid <= 0;
            if(rx_serial == 0)
                state <= START;
        end

        START:
        begin
            bit_index <= 0;
            state <= DATA;
        end

        DATA:
        begin
            data_reg[bit_index] <= rx_serial;

            if(bit_index == 7)
                state <= STOP;
            else
                bit_index <= bit_index + 1;
        end

        STOP:
        begin
            data_out <= data_reg;
            data_valid <= 1;
            state <= IDLE;
        end

        endcase
    end
end

endmodule
