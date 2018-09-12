`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2018 03:45:04 PM
// Design Name: 
// Module Name: flight_attendant_call_system_dataflow
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


module flight_attendant_call_system_dataflow(
    input wire clk,
    input wire call,
    input wire cancel,
    output reg light
    );


wire next_state;

initial begin
light = 0;
end

assign next_state = (call || (~cancel && light));

always @(posedge clk) begin
    light <= next_state;
end

endmodule
