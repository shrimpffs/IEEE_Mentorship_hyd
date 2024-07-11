`timescale 1ns/1ps
module tb;

reg a,b;
wire sum,co;
ha ins1(a,b,sum,co);
initial begin
$monitor("@time %gns a=%b b=%b sum%b co=%b", $time, a,b,sum,co);
#1;
a=0;b=0;
#1;
a=0;b=1;
#1;
a=1;b=0;
#1;
a=1;b=1;
#1;
$stop;
end
endmodule