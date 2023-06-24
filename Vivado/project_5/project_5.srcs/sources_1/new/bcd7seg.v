`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2022 12:25:06 PM
// Design Name: 
// Module Name: bcd7seg
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
module bcd7seg(clock, bcd, seg, an);
input clock;
input [7:0] bcd;
output reg [6:0] seg;
output reg [3:0] an;
reg [1:0] step = 0;
integer digit = 4'b1111;
// Choose the slice of bcd to update
always @ (posedge clock) begin
case (step)
0: digit = bcd[3:0];
1: digit = bcd[7:4];
2: digit = 0;
3: digit = 0;
default: digit = bcd[3:0];
endcase
an = 4'b1111;
case(digit) // Pick the segment bits
0: seg = 7'b0000001;
1: seg = 7'b1001111;
2: seg = 7'b0010010;
3: seg = 7'b0000110;
4: seg = 7'b1001100;
5: seg = 7'b0100100;
6: seg = 7'b0100000;
7: seg = 7'b0001111;
8: seg = 7'b0000000;
9: seg = 7'b0000100;
default: seg = 7'b1111111;
endcase
      if (an[step]==1) an[step]=0; // Pick the digit anode to
      step = step + 1;
      end
endmodule