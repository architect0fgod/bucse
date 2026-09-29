// Name    : Jayant
// Roll No : <Your Roll No>
// Q4 - Testbench for Absorption Law A + AB = A

module tb_q4_absorption;

    reg a, b;
    wire lhs_out, rhs_out;

    lhs u1 (.a(a), .b(b), .f(lhs_out));   // A + AB
    rhs u2 (.a(a), .f(rhs_out));          // A

    initial begin
        $dumpfile("q4_waveform.vcd");
        $dumpvars(0, tb_q4_absorption);
    end

    // monitor both sides of the law
    initial begin
        $monitor("Time=%0t | A=%b B=%b | LHS(A+AB)=%b RHS(A)=%b", $time, a, b, lhs_out, rhs_out);
    end

    // apply all 4 input combinations
    initial begin
        a = 0; b = 0; #5;
        a = 0; b = 1; #5;
        a = 1; b = 0; #5;
        a = 1; b = 1; #5;
        $finish;
    end

endmodule