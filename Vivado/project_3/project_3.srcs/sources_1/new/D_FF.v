`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2022 08:30:40 PM
// Design Name: 
// Module Name: D_FF
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


module D_FF(Q, D, CLK, Clr);
output Q;
input D, CLK, Clr;
reg Q;
always @(posedge CLK, negedge Clr)
    if (~Clr) Q <= 1'b0; else Q <= D;
endmodule
