`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2022 06:23:22 PM
// Design Name: 
// Module Name: decoder
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
module decoder(
    input [3:0] bcd,
    output reg [6:0] a_to_g
    );
   always @ (bcd) begin
     case (bcd)
          0: a_to_g = 7'b0000001;
          1: a_to_g = 7'b1001111;
          2: a_to_g = 7'b0010010;
          3: a_to_g = 7'b0000110; //CA, CB, CC, CD, CE, CF, CG from left to right of the bit pattern
          4: a_to_g = 7'b1001100;
          5: a_to_g = 7'b0100100;
          6: a_to_g = 7'b0100000;
          7: a_to_g = 7'b0001111;
          8: a_to_g = 7'b0000000;
          9: a_to_g = 7'b0000100;
        'hA: a_to_g = 7'b0001000;
        'hB: a_to_g = 7'b1100000;
        'hC: a_to_g = 7'b0110001;
        'hD: a_to_g = 7'b1000010;
        'hE: a_to_g = 7'b0110000;
        'hF: a_to_g = 7'b0111000;
    default: a_to_g = 7'b0000001;  // 0
    endcase
   end
endmodule
