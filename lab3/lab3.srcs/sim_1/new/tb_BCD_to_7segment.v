`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2018 03:55:37 PM
// Design Name: 
// Module Name: tb_BCD_to_7segment
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


module tb_BCD_to_7segment;
    reg x0;
    reg x1;
    reg x2;
    reg x3;
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    wire dp;
    wire an0;
    wire an1;
    wire an2;
    wire an3;
    
    BCD_to_7segment uut (
        .x0(x0),
        .x1(x1),
        .x2(x2),
        .x3(x3),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .dp(dp),
        .an0(an0),
        .an1(an1),
        .an2(an2),
        .an3(an3)
    );
    
    initial begin
    
        x0 = 0;
        x1 = 0;
        x2 = 0;
        x3 = 0;
        
        #50;
        
        x0 = 1;
        x1 = 0;
        x2 = 0;
        x3 = 0;
        #50;
        
        x0 = 0;
        x1 = 1;
        x2 = 0;
        x3 = 0;
        #50;
        
        x0 = 1;
        x1 = 1;
        x2 = 0;
        x3 = 0;
        #50;
        
        x0 = 0;
        x1 = 0;
        x2 = 1;
        x3 = 0;
        #50;
        
        x0 = 1;
        x1 = 0;
        x2 = 1;
        x3 = 0;
        #50;
                
        x0 = 0;
        x1 = 1;
        x2 = 1;
        x3 = 0;
        #50;
                        
        x0 = 1;
        x1 = 1;
        x2 = 1;
        x3 = 0;
        #50;
                        
        x0 = 0;
        x1 = 0;
        x2 = 0;
        x3 = 1;
        #50;
                        
        x0 = 1;
        x1 = 0;
        x2 = 0;
        x3 = 1;
        #50;
                        
        x0 = 0;
        x1 = 1;
        x2 = 0;
        x3 = 1;
        #50;
                        
        x0 = 1;
        x1 = 1;
        x2 = 0;
        x3 = 1;
        #50;
                                
        x0 = 0;
        x1 = 0;
        x2 = 1;
        x3 = 1;
        #50;
                                
        x0 = 1;
        x1 = 0;
        x2 = 1;
        x3 = 1;
        #50;
                                
        x0 = 0;
        x1 = 1;
        x2 = 1;
        x3 = 1;
        #50;
                                
        x0 = 1;
        x1 = 1;
        x2 = 1;
        x3 = 1;
        #50;

        
        end
        
endmodule