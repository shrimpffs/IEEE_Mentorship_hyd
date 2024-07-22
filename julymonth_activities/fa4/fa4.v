module fa4 (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output reg [3:0] sum,
    output reg cout
);
    reg c1, c2, c3;

    task fa;
        input a, b, cin;
        output sum, carry;
        begin
            sum = a ^ b ^ cin;
            carry = (a & b) | (b & cin) | (cin & a);
        end
    endtask

    always @* begin
        fa(a[0], b[0], cin, sum[0], c1);
        fa(a[1], b[1], c1, sum[1], c2);
        fa(a[2], b[2], c2, sum[2], c3);
        fa(a[3], b[3], c3, sum[3], cout);
    end
endmodule