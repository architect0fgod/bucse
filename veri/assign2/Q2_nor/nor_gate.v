// Name    : Jayant
// Roll No : <Your Roll No>
// Q2 - NOR Gate

module nor_gate (
    input a,
    input b,
    output y
);
    // NOR = OR followed by NOT
    assign y = ~(a | b);
endmodule
