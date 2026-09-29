// Name    : Jayant
// Roll No : <Your Roll No>
// Q4 - Two NOR gates forming an OR gate
// A,B -> NOR -> R -> both inputs of 2nd NOR -> X
// X = ~(R|R) = ~(~(A|B)) = A|B

module nor_gate (
    input a,
    input b,
    output y
);
    assign y = ~(a | b);
endmodule

module q4_circuit (
    input a,
    input b,
    output y
);
    wire r;
    nor_gate u_nor1 (.a(a), .b(b), .y(r));
    nor_gate u_nor2 (.a(r), .b(r), .y(y));
endmodule
