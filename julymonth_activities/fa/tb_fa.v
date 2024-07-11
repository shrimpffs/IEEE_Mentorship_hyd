`timescale 1ns/1ps
module tb;
reg a,b,cin;
wire y
fa dut(a,b,cin,sum,cy);
initial 
begin
$monitor("@time %gns a=%b, b=%b, cin=%b, sum=%b cy=%b",$time,a,b,sum,cy);
#1;
a=0;b=0;cin=0;
#1;
a=0;b=1;cin=0;
#1;
a=1;b=0;cin=1;
#1;
a=1;b=1;cin=1;
#1;
$stop;
end
endmodule