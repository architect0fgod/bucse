// Name    : Jayant
// Roll No : <Your Roll No>
// Q5 - Testbench for single-NOR circuit

module tb_q5_circuit;

    reg a;
    wire y;

    q5_circuit uut (.a(a), .y(y));

    initial begin
        $dumpfile("q5_waveform.vcd");
        $dumpvars(0, tb_q5_circuit);
    end

    initial begin
        $monitor("Time=%0t | A=%b | X=%b", $time, a, y);
    end

    // apply input combinations
    initial begin
        a = 0; #5;
        a = 1; #5;
        $finish;
    end

endmodule
