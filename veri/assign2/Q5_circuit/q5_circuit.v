// Name    : Jayant
// Roll No : <Your Roll No>
// Q5 - NOR gate with both inputs tied to A, works as NOT gate
// X = ~(A|A) = ~A

module nor_gate (
    input a,
    input b,
    output y
);
    assign y = ~(a | b);
endmodule

module q5_circuit (
    input a,
    output y
);
    nor_gate u_nor1 (.a(a), .b(a), .y(y));
endmodule
