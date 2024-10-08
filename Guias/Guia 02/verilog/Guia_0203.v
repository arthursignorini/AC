/*
* Arthur Signorini Miranda
* 848122
* Arquitetura de Computadores I
*/
module Guia_0203;
    // define data
    reg [7:0] b1  = 8'b01111000 ; // a.) 0.011110(2)
    reg [7:0] b2  = 8'b10100100 ; // b.) 0.101001(2)
    reg [7:0] b3  = 8'b10011000 ; // c.) 0.100110(2)
    reg [7:0] b4  = 8'b11101100 ; // d.) 1.111011(2)
    reg [7:0] b41 = 8'b00000001 ; // decimal part (1)
    reg [7:0] b5  = 8'b10010000 ; // e.) 1001 (fracionária)
    reg [7:0] b51 = 8'b00001101 ; // decimal part (1101)

    // actions
    initial begin : main
        $display("Exercicio 03");
        // a.) 0.011110(2) para base 4
        $display("a.) b =   0.%o%o%o (4)  ", b1[7:6], b1[5:4], b1[3:2]);
        // b.) 0.101001(2) para base 8
        $display("b.) b =   0.%o%o (8)    ", b2[7:5], b2[4:2]);
        // c.) 0.100110(2) para base 16
        $display("c.) b =   0.%x%x  (16)  ", b3[7:4], b3[3:0]);
        // d.) 1.111011(2) para base 8
        $display("d.) b = %o.%o%o  (8)    ", b41[7:0], b4[7:5], b4[4:2]);
        // e.) 1101.1001(2) para base 16
        $display("e.) b =  %x.%x   (16)   ", b51[7:0], b5[7:4]);
    end // main
endmodule // Guia_0203
