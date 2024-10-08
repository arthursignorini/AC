/*
Arthur Signorini Miranda - 848122
ex01
*/
module Guia_0301;
    // define data
    reg [5:0] a = 6'b1010 ; // binary
    reg [7:0] b = 8'b1101 ; // binary
    reg [5:0] c = 6'b101001 ; // binary
    reg [6:0] d = 7'b101111 ; // binary
    reg [7:0] e = 8'b110100 ; // binary

    // actions
    initial
        begin : main
            $display ("ex01");
            // Complemento de 1
            $display ("a = %6b -> C1(a) = %6b", a, ~a[5:0]);
            $display ("b = %8b -> C1(b) = %8b", b, ~b[7:0]);
            
            // Complemento de 2
            $display ("c = %6b -> C2(c) = %6b", c, (~c + 1) & 6'b111111);
            $display ("d = %7b -> C2(d) = %7b", d, (~d + 1) & 7'b1111111);
            $display ("e = %8b -> C2(e) = %8b", e, (~e + 1) & 8'b11111111);
        end // main
endmodule // ex01
