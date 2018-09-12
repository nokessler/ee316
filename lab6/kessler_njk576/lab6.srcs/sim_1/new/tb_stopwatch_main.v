`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2018 10:41:27 AM
// Design Name: 
// Module Name: tb_stopwatch_main
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


module tb_stopwatch_main;
reg clk;
reg reset;
reg start;
reg[9:0] sw;
wire[3:0] an;
wire[6:0] sseg;
wire dp;

stopwatch_main uut(
    .clk(clk),
    .reset(reset),
    .start(start),
    .sw(sw),
    .an(an),
    .sseg(sseg),
    .dp(dp)
);

initial begin

clk = 0;
sw[9:0] = 0;
reset = 0;
start = 0;

#10;

reset = 1;

#50;

reset = 0;

#10;

start = 1;

#50;

start = 0;

#400;

sw[8] = 1;

#400;

start = 1;

#50;

sw[9] = 1;
sw[8] = 0;
sw[7:4] = 4;
sw[3:0] = 2;
start = 0;

#50;

reset = 1;

#50;

reset = 0;

#400;

sw[8] = 1;

#400;

end

always
#2 clk = ~clk;

endmodule
