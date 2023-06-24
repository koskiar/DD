`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module sim; 
reg[3:0] sel;
reg a,b;

wire w,x,y,z;

VoteCount uut (.a(a),.b(b),.sel(sel),.w(w),.x(x),.y(y),.z(z));

initial begin
    a=0;b=1;sel=4'b0000;
    #20 sel=4'b0001;
    #20 sel=4'b0010;
    #20 sel=4'b0011;
    #20 sel=4'b0100;
    #20 sel=4'b0101;
    #20 sel=4'b0110;
    #20 sel=4'b0111;
    #20 sel=4'b1000;
    #20 sel=4'b1001;
    #20 sel=4'b1010;
    #20 sel=4'b1011;
    #20 sel=4'b1100;
    #20 sel=4'b1101;
    #20 sel=4'b1110;
    #20 sel=4'b1111;
    #40;
end
initial begin
		 $monitor("t=%3d,a=%1b,b=%1b,w=%1b,x=%1b,y=%1b,z=%1b,sel=%4b",$time,a,b,w,x,y,z,sel);
		 end
endmodule
