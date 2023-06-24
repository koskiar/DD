`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2022 03:28:05 PM
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


module sim; //This is the testbench
             // Inputs
reg A, B, C;
// Outputs
wire D, E;
// Instantiate the Unit Under Test (UUT)
test1 uut (A, B, C, D, E);
initial begin
// Initialize Inputs
A = 0;
B = 0;
C = 0;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus 
A = 1;
B = 0;
C = 1;
#200
A = 0;
B = 1;
C = 0;
#100
A = 1;
B = 1;
C = 1;                       
end
endmodule
