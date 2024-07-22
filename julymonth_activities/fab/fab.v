module fab(
input A,B,Cin; 
output S,Cout);
always @(A or B or Cin) 
begin 
S = A ^ B ^ Cin; 
Cout = A&B | (A^B) & Cin;
end
endmodule