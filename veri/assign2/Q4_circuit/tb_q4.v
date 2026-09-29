// Name    : Jayant
// Roll No : <Your Roll No>
// Q4 - Testbench for two-NOR circuit

module tb_q4_circuit;

    reg a, b;
    wire y;

    q4_circuit uut (.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("q4_waveform.vcd");
        $dumpvars(0, tb_q4_circuit);
    end

    initial begin
        $monitor("Time=%0t | A=%b B=%b | X=%b", $time, a, b, y);
    end

    // apply all input combinations
    initial begin
        a = 0; b = 0; #5;
        a = 0; b = 1; #5;
        a = 1; b = 0; #5;
        a = 1; b = 1; #5;
        $finish;
    end

endmodule
