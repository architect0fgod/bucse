// Name    : Jayant
// Roll No : <Your Roll No>
// Q3 - F = A'B + AB' (XOR) using basic gates

module not_gate (
    input a,
    output y
);
    assign y = ~a;
endmodule

module and_g2 (
    input a,
    input b,
    output y
);
    assign y = a & b;
endmodule

module or_g2 (
    input a,
    input b,
    output y
);
    assign y = a | b;
endmodule

module q3_circuit (
    input a,
    input b,
    output f
);
    wire an, bn, t1, t2;

    not_gate u1 (.a(a), .y(an));            // A'
    not_gate u2 (.a(b), .y(bn));            // B'
    and_g2  u3 (.a(an), .b(b), .y(t1));     // A'B
    and_g2  u4 (.a(a), .b(bn), .y(t2));     // AB'
    or_g2   u5 (.a(t1), .b(t2), .y(f));     // F = A'B + AB'
endmodule