`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2022 11:35:19 PM
// Design Name: 
// Module Name: test2
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


module test2(
    input [0:3] a,
    input [0:3] b,
    input [0:3] c,
    input [0:3] d,   
    
    output [0:3] sum,
    output carry
    );
     
    wire [0:4] oncekiBasamaktanEldeKalan;
    assign oncekiBasamaktanEldeKalan[0]=0;
     
    genvar sayac;
    generate
        for(sayac=0;sayac<4;sayac=sayac+1)
        begin: basamakBasamakTopla
            test1 topla(a[sayac],b[sayac],c[sayac],d[sayac],oncekiBasamaktanEldeKalan[sayac],sum[sayac],oncekiBasamaktanEldeKalan[sayac+1]);
        end
    endgenerate
    assign carry=oncekiBasamaktanEldeKalan[4];
endmodule
