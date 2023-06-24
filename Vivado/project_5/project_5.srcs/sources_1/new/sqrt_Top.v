`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2022 12:25:06 PM
// Design Name: 
// Module Name: sqrt_Top
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
module sqrt_Top(start, clk, clear, num, ready, seg, an, clk1);
 input start, clk, clear;
 input [6:0] num;  
 output ready, clk1;
 //output [7:0] bcd;
 output [6:0] seg;
 output [3:0] an;
 
 wire finish, load_data,incr_delta, find_next_sq, clk1, clk200;
 wire [3:0] result;
 wire [7:0] bcd;
  
 sqrt_controller m1(start, finish, clk1, clear, ready, load_data, incr_delta, find_next_sq);
 sqrt_data_path m2(num, load_data, incr_delta, find_next_sq, clear, clk, finish, result);
 bin2bcd m3 (result, bcd);
 bcd7seg m4 (clk200, bcd, seg, an);
 clock_down_converter m5(clk, clear, clk1, clk200);
    
endmodule