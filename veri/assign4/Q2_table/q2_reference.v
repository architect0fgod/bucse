// Name    : Jayant
// Roll No : <Your Roll No>
// Q2 - Table of Binary / BCD / Excess-3 / Gray codes for digits 0-9
//
// This question is a theory question - the table is constructed in
// q2_codes_table.txt. No Verilog code is required.
//
// For completeness, this small module converts a 4-bit binary input
// (0..9) into all four codes using continuous assignments, purely as
// a reference implementation.

module q2_code_table (
    input       [3:0] bcd,    // 0..9
    output      [3:0] binary, // same as BCD for one digit
    output      [3:0] ex3,    // BCD + 3
    output      [3:0] gray    // binary to gray
);
    assign binary = bcd;

    // Excess-3 = BCD + 3
    assign ex3 = bcd + 4'd3;

    // Binary-to-Gray: G3=B3, G2=B3^B2, G1=B2^B1, G0=B1^B0
    assign gray[3] = bcd[3];
    assign gray[2] = bcd[3] ^ bcd[2];
    assign gray[1] = bcd[2] ^ bcd[1];
    assign gray[0] = bcd[1] ^ bcd[0];
endmodule