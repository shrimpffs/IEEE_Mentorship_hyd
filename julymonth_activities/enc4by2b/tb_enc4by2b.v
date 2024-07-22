`timescale 1ns/1ps
module tb;
reg i0,i1,i2,i3;
wire y0,y1;
enc4by2 dut(i0,i1,i2,i3,y0,y1);
initial begin
$monitor("@time %gns i0=%b,i1=%b,i2=%b,i3=%b,y0=%b,y1=%b", $time, i0,i1,i2,i3,y0,y1);
i0=0;i1=0;i2=0;i3=0;#1;
i0=0;i1=0;i2=0;i3=1;#1;
i0=0;i1=0;i2=1;i3=0;#1;
i0=0;i1=1;i2=0;i3=0;#1;
i0=1;i1=0;i2=0;i3=0;#1;
$stop;
end
endmodule
