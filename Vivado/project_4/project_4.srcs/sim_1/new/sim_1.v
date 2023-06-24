`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 07:24:25 PM
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
reg up_down, clear_b, clock;
// Outputs
wire [6:0] a_to_g;
wire MSB;
wire dp;
wire [3:0] an;
updownCounter_Top uut (
up_down, clear_b, clock, a_to_g, MSB, dp, an);
        initial begin
           clock =0;
           repeat (100)
             #5 clock = ~clock; //50 clock cycles
        end
        initial fork
          clear_b = 1;
          up_down = 1;
          #2 clear_b = 0;
          #4 clear_b = 1;
          #200 up_down = 0;
        join
endmodule
