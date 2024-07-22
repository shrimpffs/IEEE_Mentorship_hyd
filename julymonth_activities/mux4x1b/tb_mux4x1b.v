`timescale 1ns/1ps
module tb_mux4x1b;

reg a,b,c,d,s0,s1;
wire y;

mux4x1bdut(a,b,c,d,s0,s1,y);

initial 
begin
$monitor("@time %gns a=%b, b=%b, c=%b, d=%b,s0=%b,s1=%b, y=%b",$time,a,b,c,d,s0,s1,y);

a = 0; b = 0; c = 0; d = 0; s0 = 0; s1 = 0;
    #10;
    a = 0; b = 1; c = 0; d = 0; s0 = 1; s1 = 0;
    #10;
    a = 0; b = 0; c = 1; d = 0; s0 = 0; s1 = 1;
    #10;
    a = 0; b = 0; c = 0; d = 1; s0 = 1; s1 = 1;
    #10;
    a = 1; b = 0; c = 1; d = 0; s0 = 0; s1 = 0;
    #10;
    a = 0; b = 1; c = 0; d = 1; s0 = 1; s1 = 1;
    #10;
    a = 1; b = 1; c = 1; d = 1; s0 = 0; s1 = 0;
    #10;
    a = 1; b = 1; c = 1; d = 1; s0 = 1; s1 = 0;

#10;
$stop;
end
endmodule