`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2022 12:37:41 PM
// Design Name: 
// Module Name: sim_1
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
module sim_1;
// Inputs
reg start;
reg clk;
reg clear;
reg [6:0] num;
// Outputs
//wire [3:0] result;
//wire [7:0] bcd;
wire ready;
wire [6:0] seg;
wire [3:0] an;
wire clk1;
// Instantiate the Unit Under Test (UUT)
//.bcd(bcd)
sqrt_Top uut (.start(start), .clk(clk), .clear(clear), .num(num), .ready(ready),.seg(seg),.an(an),.clk1(clk1));
initial begin
// Initialize Inputs
start = 0;
clk = 0;
clear = 0;
num = 64;
  end
// Wait 500 ns for global reset to finish
//#50 clock cycles
             initial
  begin 
    repeat (500) #5 clk = ~clk;
  end
// Add stimulus here
             initial fork
#2 clear = 1;
#7 clear = 0;
#12 start = 1;
#22 start = 0;
join
      
endmodule