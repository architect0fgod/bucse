// Name    : Jayant
// Roll No : <Your Roll No>
// Q4 - BCD to Excess-3 Code Converter (CSAE Assignment 4)
//
// Inputs : a, b, c, d  (4-bit BCD, a = MSB, valid codes 0000-1001)
// Outputs: w, x, y, z (4-bit Excess-3, w = MSB)
//
// Expressions (K-map minimisation, don't cares = 1010-1111):
//   w (W) = a + b.c + b.d        = a + b(c + d)
//   x (X) = b'.c + b'.d + b.c'.d'
//   y (Y) = c.d + c'.d'          (C XNOR D)
//   z (Z) = d'

module question4 (
    input a, b, c, d,
    output w, x, y, z
);

    // Continuous assignments
    assign w = a | (b & c) | (b & d);
    assign x = (~b & c) | (~b & d) | (b & ~c & ~d);
    assign y = (c & d) | (~c & ~d);
    assign z = ~d;

endmodule