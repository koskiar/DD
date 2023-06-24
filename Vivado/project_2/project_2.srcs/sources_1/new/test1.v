`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module VoteCount(a,b,sel,w,x,y,z);
output w,x,y,z;
reg w,x,y,z;
input a,b;
input[3:0] sel;
always@*
case(sel)
    4'b0000: begin w=a;x=a;y=a;z=a;end
    4'b0001: begin w=a;x=b;y=a;z=b;end
    4'b0010: begin w=a;x=b;y=a;z=a;end
    4'b0011: begin w=b;x=a;y=a;z=b;end
    4'b0100: begin w=a;x=a;y=b;z=b;end
    4'b0101: begin w=b;x=a;y=a;z=a;end
    4'b0110: begin w=a;x=b;y=b;z=b;end
    4'b0111: begin w=b;x=b;y=a;z=a;end
    4'b1000: begin w=a;x=a;y=b;z=a;end
    4'b1001: begin w=a;x=b;y=b;z=b;end
    4'b1010: begin w=a;x=b;y=b;z=a;end
    4'b1011: begin w=b;x=a;y=b;z=b;end
    4'b1100: begin w=a;x=b;y=a;z=b;end
    4'b1101: begin w=b;x=a;y=b;z=a;end
    4'b1110: begin w=b;x=a;y=a;z=b;end
    4'b1111: begin w=b;x=b;y=b;z=a;end
endcase
endmodule