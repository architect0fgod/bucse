// Name    : Jayant
// Roll No : <Your Roll No>
// Q1 - F = (A+B)C using NAND gates only

module nand_2 (
    input a,
    input b,
    output y
);
    assign y = ~(a & b);
endmodule

module q1_circuit (
    input a,
    input b,
    input c,
    output f
);
    wire g1, g2, g3, g4;

    // NAND as NOT: inputs tied together
    nand_2 u1 (.a(a), .b(a), .y(g1));   // g1 = A'
    nand_2 u2 (.a(b), .b(b), .y(g2));   // g2 = B'

    // OR from NAND: NAND(A', B') = A + B
    nand_2 u3 (.a(g1), .b(g2), .y(g3)); // g3 = A + B

    // AND from NAND: NAND then invert
    nand_2 u4 (.a(g3), .b(c), .y(g4));  // g4 = ((A+B)C)'
    nand_2 u5 (.a(g4), .b(g4), .y(f));  // f  = (A+B)C
endmodule