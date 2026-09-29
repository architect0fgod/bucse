// Name    : Jayant
// Roll No : <Your Roll No>
// Q3 - Testbench for F = A'B + AB' (XOR)

module tb_q3_circuit;

    reg a, b;
    wire f;

    q3_circuit uut (.a(a), .b(b), .f(f));

    initial begin
        $dumpfile("q3_waveform.vcd");
        $dumpvars(0, tb_q3_circuit);
    end

    initial begin
        $monitor("Time=%0t | A=%b B=%b | F=%b", $time, a, b, f);
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