// Name    : Jayant
// Roll No : <Your Roll No>
// Q5 - 3-bit Binary to Gray Code Converter (CSAE Assignment 4)
//
// Inputs : a, b, c  (3-bit binary, a = MSB)
// Outputs: w, x, y (3-bit Gray, w = MSB)
//
// Expressions (Binary-to-Gray rule):
//   w (G2) = a
//   x (G1) = a XOR b
//   y (G0) = b XOR c
//
// XOR = a.b' + a'.b

module question5 (
    input a, b, c,
    output w, x, y
);

    // Continuous assignments
    assign w = a;
    assign x = (a & ~b) | (~a & b);
    assign y = (b & ~c) | (~b & c);

endmodule