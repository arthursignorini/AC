/* 
  Guia_0105.v 
  Arthur Signorini Miranda - 848122
*/ 
module Guia_Conversions; 
  // Define data 
  reg [7:0] octal_codes [0:4]; // Array para armazenar códigos octais convertidos para decimal
  reg [7:0] hex_codes [0:4]; // Array para armazenar códigos hexadecimais para ASCII
  
  // Actions 
  initial begin : main 
    $display("Guia_Conversions - Tests"); 

    // a.) “PUC-M.G.”
    $display("a.) 'PUC-M.G.' in hexadecimal:");
    $display("P = %h", "P"); // 80 decimal -> 50 hexadecimal
    $display("U = %h", "U"); // 85 decimal -> 55 hexadecimal
    $display("C = %h", "C"); // 67 decimal -> 43 hexadecimal
    $display("- = %h", "-"); // 45 decimal -> 2D hexadecimal
    $display("M = %h", "M"); // 77 decimal -> 4D hexadecimal
    $display(". = %h", "."); // 46 decimal -> 2E hexadecimal
    $display("G = %h", "G"); // 71 decimal -> 47 hexadecimal
    $display(". = %h", "."); // 46 decimal -> 2E hexadecimal

    // b.) “2024-02”
    $display("b.) '2024-02' in hexadecimal:");
    $display("2 = %h", "2"); // 50 decimal -> 32 hexadecimal
    $display("0 = %h", "0"); // 48 decimal -> 30 hexadecimal
    $display("4 = %h", "4"); // 52 decimal -> 34 hexadecimal
    $display("- = %h", "-"); // 45 decimal -> 2D hexadecimal
    $display("0 = %h", "0"); // 48 decimal -> 30 hexadecimal
    $display("2 = %h", "2"); // 50 decimal -> 32 hexadecimal

    // c.) “Belo Horizonte”
    $display("c.) 'Belo Horizonte' in hexadecimal:");
    $display("B = %h", "B"); // 66 decimal -> 42 hexadecimal
    $display("e = %h", "e"); // 101 decimal -> 65 hexadecimal
    $display("l = %h", "l"); // 108 decimal -> 6C hexadecimal
    $display("o = %h", "o"); // 111 decimal -> 6F hexadecimal
    $display(" = %h", " "); // 32 decimal -> 20 hexadecimal
    $display("H = %h", "H"); // 72 decimal -> 48 hexadecimal
    $display("o = %h", "o"); // 111 decimal -> 6F hexadecimal
    $display("r = %h", "r"); // 114 decimal -> 72 hexadecimal
    $display("i = %h", "i"); // 105 decimal -> 69 hexadecimal
    $display("z = %h", "z"); // 122 decimal -> 7A hexadecimal
    $display("o = %h", "o"); // 111 decimal -> 6F hexadecimal
    $display("n = %h", "n"); // 110 decimal -> 6E hexadecimal
    $display("t = %h", "t"); // 116 decimal -> 74 hexadecimal
    $display("e = %h", "e"); // 101 decimal -> 65 hexadecimal

    // d.) Octal to Hexadecimal Conversion
    octal_codes[0] = 8'o156; // 156 (8) -> 110 (10) -> 6E (16)
    octal_codes[1] = 8'o157; // 157 (8) -> 111 (10) -> 6F (16)
    octal_codes[2] = 8'o151; // 151 (8) -> 105 (10) -> 69 (16)
    octal_codes[3] = 8'o164; // 164 (8) -> 116 (10) -> 74 (16)
    octal_codes[4] = 8'o145; // 145 (8) -> 101 (10) -> 65 (16)
    $display("d.) Octal to Hexadecimal Conversion:");
    $display("156 (8) = %h", octal_codes[0]); 
    $display("157 (8) = %h", octal_codes[1]); 
    $display("151 (8) = %h", octal_codes[2]); 
    $display("164 (8) = %h", octal_codes[3]); 
    $display("145 (8) = %h", octal_codes[4]); 

    // e.) Hexadecimal to ASCII
    hex_codes[0] = 8'h4D; // 4D (16) -> 'M'
    hex_codes[1] = 8'h61; // 61 (16) -> 'a'
    hex_codes[2] = 8'h6E; // 6E (16) -> 'n'
    hex_codes[3] = 8'h68; // 68 (16) -> 'h'
    hex_codes[4] = 8'h61; // 61 (16) -> 'a'
    $display("e.) Hexadecimal to ASCII:");
    $display("4D = %s", hex_codes[0]); 
    $display("61 = %s", hex_codes[1]); 
    $display("6E = %s", hex_codes[2]); 
    $display("68 = %s", hex_codes[3]); 
    $display("61 = %s", hex_codes[4]); 

  end // main 

endmodule // Guia_Conversions
