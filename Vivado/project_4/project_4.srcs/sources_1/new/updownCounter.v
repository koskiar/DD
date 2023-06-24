`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 05:17:58 PM
// Design Name: 
// Module Name: updownCounter
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
module updownCounter(
     input up_down, clear_b, CLK,
     output reg[3:0]bin);
    always @ (posedge CLK or negedge clear_b)begin
        if (clear_b < 1)begin bin = 4'b0000; end
        else if (up_down  > 0)begin bin = bin + 1;end
        else bin = bin - 1;
      end
endmodule
