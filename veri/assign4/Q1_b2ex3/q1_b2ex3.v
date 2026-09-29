// Name    : Jayant
// Roll No : <Your Roll No>
// Q1 - 3-bit Binary to Excess-3 Code Converter (CSAE Assignment 4)
//
// Inputs : a, b, c  (3-bit binary, a = MSB)
// Outputs: d, e, f, g (4-bit Excess-3, d = MSB)
//
// Expressions (from K-map):
//   d (E3) = a.b + a.c        = a(b + c)
//   e (E2) = a'.b + a'.c + a.b'.c'
//   f (E1) = b.c + b'.c'      (B1 XNOR B0)
//   g (E0) = c'

module question1 (
    input a, b, c,
    output d, e, f, g
);

    // Continuous assignments
    assign d = (a & b) | (a & c);
    assign g = ~c;
    assign e = (~a & b) | (~a & c) | (a & ~b & ~c);
    assign f = (b & c) | (~b & ~c);

endmodule