// Name    : Jayant
// Roll No : <Your Roll No>
// Q2 - NOR Gate Testbench

module tb_nor_gate;

    reg a, b;
    wire y;

    // instantiate the NOR gate
    nor_gate uut (.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("nor_waveform.vcd");
        $dumpvars(0, tb_nor_gate);
    end

    // monitor output on console
    initial begin
        $monitor("Time=%0t | A=%b B=%b | Y=%b", $time, a, b, y);
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
