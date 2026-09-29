// Name    : Jayant
// Roll No : <Your Roll No>
// Q3 - NAND Gate (built using AND and NOT gates)

module and_gate (
    input a,
    input b,
    output y
);
    assign y = a & b;
endmodule

module not_gate (
    input a,
    output y
);
    assign y = ~a;
endmodule

// NAND = AND + NOT
module nand_gate (
    input a,
    input b,
    output y
);
    wire and_out;
    and_gate u1 (.a(a), .b(b), .y(and_out));
    not_gate u2 (.a(and_out), .y(y));
endmodule
