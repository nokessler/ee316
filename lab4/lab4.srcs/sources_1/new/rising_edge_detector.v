`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2018 04:16:51 PM
// Design Name: 
// Module Name: rising_edge_detector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rising_edge_detector(
    input clk,
    input signal,
    input reset,
    output reg outedge
    );

wire slow_clk;
reg[1:0] state;
reg[1:0] next_state;

clk_div cl(clk, reset, slow_clk);

always @(*) begin
    case(state)
        2'b00: begin
            outedge = 1'b0;
            if (~signal) next_state = 2'b00;
            else next_state = 2'b01;
            end
        2'b01: begin
            outedge = 1'b1;
            next_state = 2'b10;
            end
        2'b10: begin
            outedge = 1'b0;
            if (~signal) next_state = 2'b00;
            else next_state = 2'b10;
            end
        default: begin
            next_state = 2'b00;
            outedge = 1'b0;
            end
    endcase
end

always @(posedge slow_clk) begin
    if (reset) state <= 2'b00;
    else state <= next_state;
end

endmodule
