`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 06:30:29 PM
// Design Name: 
// Module Name: updownCounter_Top
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
module updownCounter_Top(
    input up_down, clear_b, clock,
    output [6:0] a_to_g,
    output MSB,
    output dp,
    output [3:0] an
    );
  
   wire [3:0] bin_w, bcd_w;  
   assign dp = 1;    //turn off the dot for the seven segment selected
   assign an = 4'b1110;  //turn on (by assigning 1110 to an[3:0]) the first seven segment display 
                                      //   out of four of them
   clock_down_converter m4 (clock, clear_b, clk1);
   updownCounter m1(up_down, clear_b, clk1, bin_w);
   bin2bcd m2 (bin_w, MSB, bcd_w);
   decoder m3(bcd_w, a_to_g);
endmodule
