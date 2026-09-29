// Name    : Jayant
// Roll No : <Your Roll No>
// Q3 - Testbench for 4-bit Gray to Binary Code Converter

module tb_question3;

    // Inputs & Outputs
    reg p, q, r, s;
    wire w, x, y, z;

    // Instantiate design test code
    question3 uut (
        .a(p),
        .b(q),
        .c(r),
        .d(s),
        .w(w),
        .x(x),
        .y(y),
        .z(z)
    );

    // VCD Dump setup
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
    end

    // Monitor output to console
    initial begin
        $monitor("Time=%0t | Inputs: p=%b q=%b r=%b s=%b | Outputs: w=%b x=%b y=%b z=%b",
                 $time, p, q, r, s, w, x, y, z);
    end

    // Stimulus generation (all 16 Gray code combinations)
    initial begin
        p = 0; q = 0; r = 0; s = 0; #5;
        p = 0; q = 0; r = 0; s = 1; #5;
        p = 0; q = 0; r = 1; s = 1; #5;
        p = 0; q = 0; r = 1; s = 0; #5;
        p = 0; q = 1; r = 1; s = 0; #5;
        p = 0; q = 1; r = 1; s = 1; #5;
        p = 0; q = 1; r = 0; s = 1; #5;
        p = 0; q = 1; r = 0; s = 0; #5;
        p = 1; q = 1; r = 0; s = 0; #5;
        p = 1; q = 1; r = 0; s = 1; #5;
        p = 1; q = 1; r = 1; s = 1; #5;
        p = 1; q = 1; r = 1; s = 0; #5;
        p = 1; q = 0; r = 1; s = 0; #5;
        p = 1; q = 0; r = 1; s = 1; #5;
        p = 1; q = 0; r = 0; s = 1; #5;
        p = 1; q = 0; r = 0; s = 0; #5;
        $finish;
    end

endmodule