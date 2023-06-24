`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 06:14:35 PM
// Design Name: 
// Module Name: bin2bcd
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
module bin2bcd(bin, MSB, bcd);
input [3:0] bin;
output [3:0] bcd;
output MSB;
assign MSB = bin[2] && (bin[3] || bin[1]), bcd = bin % 4'b1010;
endmodule