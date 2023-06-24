`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2022 12:18:34 PM
// Design Name: n
// Module Name: clock_down_converter
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
module clock_down_converter(
    input clock,  // 50 MHz clock, built in function
    input clear,  // Reset down-converter
    output clk1,  // ~1.5 Hz clock
    output clk200 // ~1500 Hz clock
);
        
  // 27-bit counter
  reg[26:0] q;
  always @ (posedge clock, posedge clear) begin
    if (clear)
       q <= 0;
    else
       q <= q+1;
  end
  // Uncomment and comment following statements as needed for
  // simulation and synthesis
   assign clk1 = q[0];     //40 ns period (for simulation)
   assign clk200 = q[1];      //80 ns period (for simulation)
   //assign clk200 = q[16];//1500 Hz(for 7-seg display)
   //assign clk1 = q[26];    //~1.5 Hz (for the sequential ckt)
endmodule
