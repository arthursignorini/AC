/*
Guia_0101.v
Arthur Signorini Miranda - 848122
*/
module Guia_0101;
// define data
integer a = 26;   // decimal
integer b = 53;
integer c = 713;
integer d = 213;
integer e = 365;

reg [9:0] bin_a = 0;  // binary (bits - little endian)
reg [9:0] bin_b = 0;
reg [9:0] bin_c = 0;
reg [9:0] bin_d = 0;
reg [9:0] bin_e = 0;

// actions
initial
begin : main
    $display("Guia_0101 - Tests");

    $display("a = %d", a);
    $display("bin_a = %10b", bin_a);
    bin_a = a;
    $display("bin_a = %10b", bin_a);

    $display("\n"); // Linha em branco

    $display("b = %d", b);
    $display("bin_b = %10b", bin_b);
    bin_b = b;
    $display("bin_b = %10b", bin_b);

    $display("\n"); // Linha em branco

    $display("c = %d", c);
    $display("bin_c = %10b", bin_c);
    bin_c = c;
    $display("bin_c = %10b", bin_c);

    $display("\n"); // Linha em branco

    $display("d = %d", d);
    $display("bin_d = %10b", bin_d);
    bin_d = d;
    $display("bin_d = %10b", bin_d);

    $display("\n"); // Linha em branco

    $display("e = %d", e);
    $display("bin_e = %10b", bin_e);
    bin_e = e;
    $display("bin_e = %10b", bin_e);
end // main
endmodule // Guia_0101
