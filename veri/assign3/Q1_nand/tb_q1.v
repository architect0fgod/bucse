// Name    : Jayant
// Roll No : <Your Roll No>
// Q1 - Testbench for F = (A+B)C

module tb_q1_circuit;

    reg a, b, c;
    wire f;

    q1_circuit uut (.a(a), .b(b), .c(c), .f(f));

    initial begin
        $dumpfile("q1_waveform.vcd");
        $dumpvars(0, tb_q1_circuit);
    end

    initial begin
        $monitor("Time=%0t | A=%b B=%b C=%b | F=%b", $time, a, b, c, f);
    end

    // apply all 8 input combinations
    initial begin
        a = 0; b = 0; c = 0; #5;
        a = 0; b = 0; c = 1; #5;
        a = 0; b = 1; c = 0; #5;
        a = 0; b = 1; c = 1; #5;
        a = 1; b = 0; c = 0; #5;
        a = 1; b = 0; c = 1; #5;
        a = 1; b = 1; c = 0; #5;
        a = 1; b = 1; c = 1; #5;
        $finish;
    end

endmodule