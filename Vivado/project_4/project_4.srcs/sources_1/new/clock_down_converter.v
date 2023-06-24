`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 06:28:44 PM
// Design Name: 
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
    input clock,  // 100 MHz clock, built in function
    input clear_b,  // Reset down-converter
    output clk1  // ~0.5 Hz clock
    //output clk200  //500 Hz clock
);
        
  // 27-bit counter
  reg[26:0] q;
  always @ (posedge clock, negedge clear_b) begin
    if (~clear_b)
        q <= 0;
    else
       q <= q+1;
  end
  // Uncomment and comment following statements as needed for
  // simulation and synthesis
   //assign clk1 = q[0];     //40 ns period (for simulation)
   //assign clk200 = q[1];      //80 ns period (for simulation)
   assign clk200 = q[16];//500 Hz(for 7-seg display)
   assign clk1 = q[26];    //~1.0 Hz (for the sequential ckt)
endmodule