`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2018 12:05:29 PM
// Design Name: 
// Module Name: Mux_structural
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


module Mux_structural(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output d
    );
    
    wire s0_not, s1_not;
    wire d0, d1, d2, d3;
    
    not n0 (s0_not, s0);
    not n1 (s1_not, s1);
    
    and g0 (d0, i0, s1_not, s0_not);
    and g1 (d1, i1, s1_not, s0);
    and g2 (d2, i2, s1, s0_not);
    and g3 (d3, i3, s1, s0);
    or g4 (d, d0, d1, d2, d3);

endmodule
