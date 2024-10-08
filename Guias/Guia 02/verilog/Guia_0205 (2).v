/*
* Arthur Signorini Miranda
* 848122
* Arquitetura de Computadores I
*/
module Guia_0205;
    // Define data
    reg [7:0] a1_int = 8'b00010101; // Inteiro (101_2)
    reg [7:0] a1_frac = 8'b0011_0000; // Fracionário (0.11_2)
    
    reg [7:0] b1_int = 8'b00001010; // Inteiro (10_2)
    reg [7:0] b1_frac = 8'b0000_0110; // Fracionário (0.011_2)

    reg [7:0] a2_int = 8'b00001000; // Inteiro (1000_2)
    reg [7:0] a2_frac = 8'b0010_0000; // Fracionário (0.101_2)

    reg [7:0] b2_int = 8'b00000010; // Inteiro (10_2)
    reg [7:0] b2_frac = 8'b0001_0000; // Fracionário (0.01_2)

    reg [7:0] a3_int = 8'b0010101; // Inteiro (101_2)
    reg [7:0] a3_frac = 8'b0011_0000; // Fracionário (0.101_2)

    reg [7:0] b3_int = 8'b00001010; // Inteiro (10_2)
    reg [7:0] b3_frac = 8'b0000_1010; // Fracionário (0.101_2)

    reg [7:0] a4_int = 8'b0010111; // Inteiro (10111_2)
    reg [7:0] a4_frac = 8'b0001_0000; // Fracionário (0.01_2)

    reg [7:0] b4_int = 8'b000011; // Inteiro (11_2)
    reg [7:0] b4_frac = 8'b0001_0110; // Fracionário (0.011_2)

    reg [7:0] a5 = 8'b1101011; // (1101011_2)
    reg [7:0] b5 = 8'b01101; // (1101_2)

    reg [15:0] c1_int; // Result of addition integer part
    reg [15:0] c1_frac; // Result of addition fractional part
    reg [15:0] c2_int; // Result of subtraction integer part
    reg [15:0] c2_frac; // Result of subtraction fractional part
    reg [15:0] c3; // Result of multiplication
    reg [15:0] c4_int; // Result of division integer part
    reg [15:0] c4_frac; // Result of division fractional part
    reg [15:0] c5; // Result of modulo

    // Actions
    initial
    begin : main
        $display("Exercicio 5");
        
        // Addition
        {c1_int, c1_frac} = (a1_int << 4 | a1_frac) + (b1_int << 4 | b1_frac);
        $display("c1 = a1 + b1 = %4b.%4b", c1_int[7:0], c1_frac[7:4]); // Display the result
        
        // Subtraction
        {c2_int, c2_frac} = (a2_int << 4 | a2_frac) - (b2_int << 4 | b2_frac);
        $display("c2 = a2 - b2 = %4b.%4b", c2_int[7:0], c2_frac[7:4]); // Display the result
        
        // Multiplication
        c3 = (a3_int << 4 | a3_frac) * (b3_int << 4 | b3_frac);
        $display("c3 = a3 * b3 = %16b", c3); // Display the result
        
        // Division
        {c4_int, c4_frac} = (a4_int << 4 | a4_frac) / (b4_int << 4 | b4_frac);
        $display("c4 = a4 / b4 = %4b.%4b", c4_int[7:0], c4_frac[7:4]); // Display the result
        
        // Modulo
        c5 = a5 % b5;
        $display("c5 = a5 %% b5 = %7b", c5); // Display the result
    end // main
endmodule // Guia_0205
