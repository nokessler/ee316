`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2018 02:33:47 PM
// Design Name: 
// Module Name: BCD_to_7segment
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


module BCD_to_7segment(
    input x0,
    input x1,
    input x2,
    input x3,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output dp,
    output an0,
    output an1,
    output an2,
    output an3
    );
    
    wire x0_not, x1_not, x2_not, x3_not;
    wire a0, a1, b0, b1, d0, d1, d2, e0, f0, f1, f2, g0, g1, an00, an01, high;
        
    not n0 (x0_not, x0);
    not n1 (x1_not, x1);
    not n2 (x2_not, x2);
    not n3 (x3_not, x3);
    
    and h0 (a0, x2, x1_not, x0_not);
    and h1 (a1, x3_not, x2_not, x1_not, x0);
    or h3 (a, a0, a1);
    and h4 (b0, x2, x1_not, x0);
    and h5 (b1, x2, x1, x0_not);
    or h6 (b, b0, b1);
    and h7 (c, x2_not, x1, x0_not);
    and h8 (d0, x2, x1_not, x0_not);
    and h9 (d1, x2, x1, x0);
    and h10 (d2, x3_not, x2_not, x1_not, x0);
    or h11 (d, d2, d1, d0);
    and h12 (e0, x2, x1_not);
    or h13 (e, e0, x0);
    and h14 (f0, x1, x0);
    and h15 (f1, x2_not, x1, x0_not);
    and h16 (f2, x3_not, x2_not, x0);
    or h17 (f, f0, f1, f2);
    and h18 (g0, x3_not, x2_not, x1_not);
    and h19 (g1, x2, x1, x0);
    or h20 (g, g0, g1);
    and h21 (an00, x3, x2);
    and h22 (an01, x3, x1);
    or h23 (an0, an00, an01);
    or h24 (dp, x0, x0_not);
    or h25 (an1, x0, x0_not);
    or h26 (an2, x0, x0_not);
    or h27 (an3, x0, x0_not);
    
endmodule
