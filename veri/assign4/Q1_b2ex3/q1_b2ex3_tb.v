// Name    : Jayant
// Roll No : <Your Roll No>
// Q1 - Testbench for 3-bit Binary to Excess-3 Code Converter

module tb_question1;

    // Inputs & Outputs
    reg p, q, r;
    wire w, x, y, z;

    // Instantiate design test code
    question1 uut (
        .a(p),
        .b(q),
        .c(r),
        .d(w),
        .e(x),
        .f(y),
        .g(z)
    );

    // VCD Dump setup
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
    end

    // Monitor output to console
    initial begin
        $monitor("Time=%0t | Inputs: p=%b q=%b r=%b | Outputs: w=%b x=%b y=%b z=%b",
                 $time, p, q, r, w, x, y, z);
    end

    // Stimulus generation
    initial begin
        p = 0; q = 0; r = 0; #5;
        p = 0; q = 0; r = 1; #5;
        p = 0; q = 1; r = 0; #5;
        p = 0; q = 1; r = 1; #5;
        p = 1; q = 0; r = 0; #5;
        p = 1; q = 0; r = 1; #5;
        p = 1; q = 1; r = 0; #5;
        p = 1; q = 1; r = 1; #5;
        $finish;
    end

endmodule