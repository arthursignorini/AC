/*
Guia_0104.v
Arthur Signorini Miranda - 848122
*/

module Guia_0104_a;
  // define data
  reg [7:0] b = 8'b10100; // binary value of 10100₂ (5 bits, will be zero-padded to 8 bits)
  integer x;
  
  // actions
  initial
  begin : main
    x = b; // convert binary to decimal
    $display ("Guia_0104_a - Tests");
    $display;
    $display ("b (binary) = %8b", b);
    $display ("x (decimal) = %d", x);
    $display;
  end // main
endmodule // Guia_0104_a

module Guia_0104_b;
  // define data
  reg [7:0] b = 8'b11010; // binary value of 11010₂ (5 bits, will be zero-padded to 8 bits)
  integer x;
  
  // actions
  initial
  begin : main
    x = b; // convert binary to decimal
    $display ("Guia_0104_b - Tests");
    $display;
    $display ("b (binary) = %8b", b);
    $display ("x (decimal) = %d", x);
    $display ("x in base 8 = %o", x); // Base 8 display
    $display;
  end // main
endmodule // Guia_0104_b

module Guia_0104_c;
  // define data
  reg [7:0] b = 8'b100111; // binary value of 100111₂ (6 bits, will be zero-padded to 8 bits)
  integer x;
  
  // actions
  initial
  begin : main
    x = b; // convert binary to decimal
    $display ("Guia_0104_c - Tests");
    $display;
    $display ("b (binary) = %8b", b);
    $display ("x (decimal) = %d", x);
    $display ("x in base 16 = %x", x); // Base 16 display
    $display;
  end // main
endmodule // Guia_0104_c

module Guia_0104_d;
  // define data
  reg [7:0] b = 8'b100101; // binary value of 100101₂ (6 bits, will be zero-padded to 8 bits)
  integer x;
  
  // actions
  initial
  begin : main
    x = b; // convert binary to decimal
    $display ("Guia_0104_d - Tests");
    $display;
    $display ("b (binary) = %8b", b);
    $display ("x (decimal) = %d", x);
    $display ("x in base 8 = %o", x); // Base 8 display
    $display;
  end // main
endmodule // Guia_0104_d

module Guia_0104_e;
  // define data
  reg [7:0] b = 8'b101101; // binary value of 101101₂ (6 bits, will be zero-padded to 8 bits)
  integer x;
  
  // actions
  initial
  begin : main
    x = b; // convert binary to decimal
    $display ("Guia_0104_e - Tests");
    $display;
    $display ("b (binary) = %8b", b);
    $display ("x (decimal) = %d", x);
    $display ("x in base 4 = %d", decimal_to_base4(x)); // Convert and display in base 4
    $display;
  end // main

  // Function to convert decimal to base 4
function [15:0] decimal_to_base4;
    input [31:0] decimal;
    integer base4;
    integer place;
    begin
        base4 = 0;
        place = 1;
        while (decimal > 0) begin
            base4 = base4 + (decimal % 4) * place;
            decimal = decimal / 4;
            place = place * 10;
        end
        decimal_to_base4 = base4;
    end
endfunction


endmodule // Guia_0104_e
