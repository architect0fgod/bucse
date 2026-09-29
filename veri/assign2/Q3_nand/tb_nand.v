// Name    : Jayant
// Roll No : <Your Roll No>
// Q3 - NAND Gate Testbench

module tb_nand_gate;

    reg a, b;
    wire y;

    // instantiate the NAND gate
    nand_gate uut (.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("nand_waveform.vcd");
        $dumpvars(0, tb_nand_gate);
    end

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
