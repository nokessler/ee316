`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2018 10:09:06 AM
// Design Name: 
// Module Name: RCA_4bits
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


module RCA_4bits(
    input clk,
    input enable,
    input[3:0] A,
    input[3:0] B,
    input Cin,
    output[4:0] Q
    );

wire s0, s1, s2, s3, o0, o1, o2, o3;
reg[4:0] Data;

full_adder c1 (.A(A[0]), .B(B[0]), .Cin(Cin), .S(s0), .Cout(o0));
full_adder c2 (.A(A[1]), .B(B[1]), .Cin(o0), .S(s1), .Cout(o1));
full_adder c3 (.A(A[2]), .B(B[2]), .Cin(o1), .S(s2), .Cout(o2));
full_adder c4 (.A(A[3]), .B(B[3]), .Cin(o2), .S(s3), .Cout(o3));

always @(*) begin
    Data = {o3, s3, s2, s1, s0};
end

register_logic c5 (.clk(clk), .enable(enable), .Data(Data), .Q(Q));

endmodule
