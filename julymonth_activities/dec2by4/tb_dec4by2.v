`timescale 1ns/1ps
module tb;

reg i0,i1;
wire y0,y1,y2,y3;
dec4by2 dut(i0,i1,y0,y1,y2,y3);
initial begin
$monitor("@time %gns i0=%b,i1=%b,y0=%b,y1=%b,y2=%b,y3=%b", $time, i0,i1,y0,y1,y2,y3);
i0=0;i1=0;#1;
i0=0;i1=1;#1;
i0=1;i1=0;#1;
i0=1;i1=1;#1;
$stop;
end
endmodule