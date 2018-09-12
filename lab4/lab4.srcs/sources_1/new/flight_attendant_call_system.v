`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2018 03:18:31 PM
// Design Name: 
// Module Name: flight_attendant_call_system
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


module flight_attendant_call_system(
    input wire clk,
    input wire call,
    input wire cancel,
    output reg light
    );
    
reg next_state;

always @(*) begin
    case ({call, cancel, light})
    3'b000: next_state = 1'b0;
    3'b001: next_state = 1'b1;
    3'b010: next_state = 1'b0;
    3'b011: next_state = 1'b0;
    3'b100: next_state = 1'b1;
    3'b101: next_state = 1'b1;
    3'b110: next_state = 1'b1;
    3'b111: next_state = 1'b1;
    default: next_state = 1'b0;
    endcase
end

always @(posedge clk) begin
    light <= next_state;
end
    
endmodule
