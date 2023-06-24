`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2022 08:37:12 PM
// Design Name: 
// Module Name: testtb
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


module testtb;
reg x_in;
reg clock;
reg reset;
wire y_out;
Moore_sequential uut (.y_out(y_out), .A(A), .B(B), .x_in(x_in), .clock(clock), .reset(reset));
initial begin 
   x_in = 0;
   clock = 0;
   reset = 1;
   #1 reset = 0;
   #1 reset = 1;
   repeat (13)
   #5 clock = ~clock;
end
initial begin
    #7 x_in = 0; 
    #10 x_in = 1;
    #10 x_in = 1;
    #10 x_in = 0;
    #10 x_in = 0;
    #10 x_in = 1;
    #10 x_in = 0;
    #10 x_in = 1;
    #10 x_in = 0;
    #10 x_in = 0;
    #10 x_in = 1;
end
endmodule

