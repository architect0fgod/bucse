// Name    : Jayant
// Roll No : <Your Roll No>
// Q2 - F = AB + A'B + AC using basic gates

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

module q2_circuit (
    input a,
    input b,
    input c,
    output f
);
    wire an, t1, t2, t3, t4;

    not_gate u1 (.a(a), .y(an));            // A'
    and_g2  u2 (.a(a), .b(b), .y(t1));      // AB
    and_g2  u3 (.a(an), .b(b), .y(t2));     // A'B
    and_g2  u4 (.a(a), .b(c), .y(t3));      // AC
    or_g2   u5 (.a(t1), .b(t2), .y(t4));    // AB + A'B
    or_g2   u6 (.a(t4), .b(t3), .y(f));     // F = AB + A'B + AC
endmodule