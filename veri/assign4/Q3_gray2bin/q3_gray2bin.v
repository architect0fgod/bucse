// Name    : Jayant
// Roll No : <Your Roll No>
// Q3 - 4-bit Gray to Binary Code Converter (CSAE Assignment 4)
//
// Inputs : a, b, c, d  (4-bit Gray code, a = MSB)
// Outputs: w, x, y, z (4-bit Binary, w = MSB)
//
// Expressions (running XOR from the MSB):
//   w (B3) = a
//   x (B2) = a XOR b
//   y (B1) = a XOR b XOR c
//   z (B0) = a XOR b XOR c XOR d
//
// XOR = a.b' + a'.b ; XNOR = a.b + a'.b'

module question3 (
    input a, b, c, d,
    output w, x, y, z
);

    // Continuous assignments
    assign w = a;

    // x = A XOR B
    assign x = (a & ~b) | (~a & b);

    // y = A XOR B XOR C
    assign y = (a & ~b & ~c) | (~a & b & ~c) | (a & b & c) | (~a & ~b & c);

    // z = A XOR B XOR C XOR D
    assign z = (a & ~b & ~c & ~d) | (~a & b & ~c & ~d) |
               (~a & ~b & c & ~d) | (a & b & c & ~d) |
               (a & ~b & c & d) | (~a & b & c & d) |
               (~a & ~b & ~c & d) | (a & b & ~c & d);

endmodule