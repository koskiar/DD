`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2022 08:30:40 PM
// Design Name: 
// Module Name: Moore_sequential
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

module Moore_sequential(output y_out, A, B, input x_in, clock, reset);
wire Da, Db;
assign Da = ~x_in & (A | B);        
assign Db = x_in;
assign y_out = Da; 
        D_FF  m1 (A, Da, clock, reset);
        D_FF  m2 (B, Db, clock, reset);   
endmodule
