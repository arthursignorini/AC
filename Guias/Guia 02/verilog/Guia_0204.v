/*
* Arthur Signorini Miranda
* 848122
* Arquitetura de Computadores I
*/
module Guia_0204;
    // define data
    reg [7:0]  b1  = 8'b00011001 ; // a.) 0,321(4) = 0.00011001(2)
    reg [11:0] b2  = 12'b000001000010 ; // b.) 0,3D2(16) = 0.0010(4)
    reg [8:0]  b3  = 9'b00011001 ; // c.) 0,751(8) = 0.00011001(2)
    reg [8:0]  b4  = 9'b111011101 ; // d.) 7,345(8) = 3.0331(4)
    reg [11:0] b5  = 12'b1111101001011110 ; // e.) F,A5E(16) = 33.2221(4)
    reg [2:0]  b41 = 3'o7 ;         // d.) parte inteira = 7(8) 
    reg [3:0]  b51 = 4'hA ;         // e.) parte inteira = 10(16) 

    // actions
    initial
        begin : main
        $display ( "Exercicio 4" );
        $display ( "b1 =  0.%8b (2)            ", b1[7:0]);
        $display ( "b2 =  0.%o%o%o%o (4)      ", b2[11:10], b2[9:8], b2[7:6], b2[5:4]);
        $display ( "b3 =  0.%9b (2)            ", b3[8:0]);
        $display ( "b4 = %o.%o%o      (4)      ", b41[2:0], b4[8:7], b4[6:5], b4[4:3]);
        $display ( "b5 = %o%o.%o%o%o%o (4) ", b51[3:2], b51[1:0], b5[11:10], b5[9:8], b5[7:6], b5[5:4], b5[3:2], b5[1:0]);
        end // main
endmodule // Guia_0204
