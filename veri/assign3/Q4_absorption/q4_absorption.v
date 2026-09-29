// Name    : Jayant
// Roll No : <Your Roll No>
// Q4 - Absorption Law verification: A + AB = A

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

// Left side of the law: A + AB
module lhs (
    input a,
    input b,
    output f
);
    wire ab;
    and_g2 u1 (.a(a), .b(b), .y(ab));   // AB
    or_g2  u2 (.a(a), .b(ab), .y(f));   // A + AB
endmodule

// Right side of the law: A
module rhs (
    input a,
    output f
);
    assign f = a;   // just pass A through
endmodule