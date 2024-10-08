/*
* Arthur Signorini Miranda
* 848122
* Arquitetura de Computadores I
*/
module Guia_0201;
    // define data
    real x1 = 0 ; // decimal
    real x2 = 0 ; // decimal
    real x3 = 0 ; // decimal
    real x4 = 0 ; // decimal
    real x5 = 0 ; // decimal
    real power2 = 1.0; // power of 2
    integer y = 4 ; // counter (fraction part length - 1)
    reg [7:0] b1  = 8'b00011000; // 0.00011(2) binary (fraction part, Big Endian)
    reg [7:0] b2  = 8'b01001000; // 0.01001(2) binary (fraction part, Big Endian)
    reg [7:0] b3  = 8'b10101000; // 0.10101(2) binary (fraction part, Big Endian)
    reg [7:0] b4  = 8'b11101000; // 1.11101(2) binary (fraction part, Big Endian)
    reg [7:0] b41 = 8'b00000001; // binary (integer part = 1, Big Endian)
    reg [7:0] b5  = 8'b11001000; // 11.11001(2) binary (fraction part, Big Endian)
    reg [7:0] b51 = 8'b00000011; // binary (integer part = 3, Big Endian)

    // actions
    initial
        begin : main
            $display ( "Exercicio 01" );
            $display ( "b1 = 00.%5b", b1[7:3] );
            $display ( "b2 = 00.%5b", b2[7:3] );
            $display ( "b3 = 00.%5b", b3[7:3] );
            $display ( "b4 = %1b.%5b", b41[0], b4[7:3] );
            $display ( "b5 = %2b.%5b\n", b51[1:0], b5[7:3] );

            while ( y >= 0 )
            begin
                power2 = power2 / 2.0;
                if ( b1[y+3] == 1 ) // Adjusted index for fraction part
                begin
                    x1 = x1 + power2;
                end
                if ( b2[y+3] == 1 )
                begin
                    x2 = x2 + power2;
                end
                if ( b3[y+3] == 1 )
                begin
                    x3 = x3 + power2;
                end
                if ( b4[y+3] == 1 )
                begin
                    x4 = x4 + power2;
                end
                if ( b5[y+3] == 1 )
                begin
                    x5 = x5 + power2;
                end
                y=y-1;
            end // end while

            x4 = x4 + b41[0]; // add integer part for d.)
            x5 = x5 + b51[1:0]; // add integer part for e.)

            $display ( "x1 = %f", x1 ); // a.)
            $display ( "x2 = %f", x2 ); // b.)
            $display ( "x3 = %f", x3 ); // c.)
            $display ( "x4 = %f", x4 ); // d.)
            $display ( "x5 = %f", x5 ); // e.)
        end // main
endmodule // Guia_0201
