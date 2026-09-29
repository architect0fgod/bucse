// Name    : Jayant
// Roll No : <Your Roll No>
// Q5 - Testbench for 3-bit Binary to Gray Code Converter

module tb_question5;

    // Inputs & Outputs
    reg p, q, r;
    wire w, x, y;

    // Instantiate design test code
    question5 uut (
        .a(p),
        .b(q),
        .c(r),
        .w(w),
        .x(x),
        .y(y)
    );

    // VCD Dump setup
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
    end

    // Monitor output to console
    initial begin
        $monitor("Time=%0t | Inputs: p=%b q=%b r=%b | Outputs: w=%b x=%b y=%b",
                 $time, p, q, r, w, x, y);
    end

    // Stimulus generation (all 8 binary input combinations)
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