module tb_fa4;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    // Outputs
    wire [3:0] sum;
    wire cout;

    // Instantiate the fa4 module
    fa4 dut (a, b,sum,cout);

    // Monitor changes
    initial begin
        $monitor("a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    end

    // Initialize inputs and generate test cases
    initial begin
        // Initialize Inputs
        a = 4'b0000;
        b = 4'b0000;
        cin = 0;
        #10;

        // Test case 1
        a = 4'b0001;
        b = 4'b0001;
        cin = 0;
        #10;

        // Test case 2
        a = 4'b0011;
        b = 4'b0101;
        cin = 1;
        #10;

        // Test case 3
        a = 4'b1111;
        b = 4'b0001;
        cin = 1;
        #10;

        // Test case 4
        a = 4'b1010;
        b = 4'b0101;
        cin = 0;
        #10;

        // Test case 5
        a = 4'b1111;
        b = 4'b1111;
        cin = 1;
        #10;

        $stop;
    end

endmodule
