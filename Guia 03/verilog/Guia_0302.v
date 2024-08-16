/*
Arthur Signorini Miranda
848122
ex02
*/
module Guia_0302;
    // define data
    reg [5:0] a = 6'b111001;   // 321(4) = 111001(2)
    reg [8:0] b = 9'b10110010; // B2(16) = 10110010(2)
    reg [5:0] c = 6'b101101;   // 231(4) = 101101(2)
    reg [10:0] d = 11'b001100110; // 146(8) = 001100110(2)
    reg [8:0] e = 9'b01101111; // 6F(16) = 01101111(2)
    
    reg [5:0] a1 = 0;
    reg [8:0] b1 = 0;
    reg [5:0] c1 = 0;
    reg [10:0] d1 = 0;
    reg [8:0] e1 = 0;
    
    // actions
    initial
        begin : main
            $display ("ex02");
            // C1 calculations
            a1 = ~a & 6'b111111;
            b1 = ~b & 9'b111111111;
            
            // C2 calculations
            c1 = (~c + 1) & 6'b111111;
            d1 = (~d + 1) & 11'b11111111111;
            e1 = (~e + 1) & 9'b111111111;
            
            // display results
            $display ("a = %6b -> C1(a) = %6b", a, a1);
            $display ("b = %8b -> C1(b) = %9b", b, b1);
            $display ("c = %6b -> C2(c) = %6b", c, c1);
            $display ("d = %9b -> C2(d) = %11b", d, d1);
            $display ("e = %8b -> C2(e) = %9b", e, e1);
        end // main
endmodule // ex02
