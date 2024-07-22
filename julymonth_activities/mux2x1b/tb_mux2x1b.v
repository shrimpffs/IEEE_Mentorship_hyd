`timescale 1ns/1ps
module tb_mux2x1;

reg a,b,s;
wire y;

mux2x1 dut(a,b,s,y);

initial 
begin
$monitor("@time %gns a=%b, b=%b, select=%b, y=%b",$time,a,b,s,y);
a=0; b=1; s=0;
#5;
s=1;
#5;
s=0;
#5;
/////
a=1; b=0; s=0;
#5;
s=1;
#5;
s=0;
#5;
$stop;
end
endmodule