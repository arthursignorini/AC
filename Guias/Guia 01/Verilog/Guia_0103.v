/* 
Guia_0103.v 
Arthur Signorini Miranda - 848122 
*/ 
module Guia_0103; 
// define data 
integer   x; // decimal 
reg [7:0] b;  // binary 

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

// actions 
initial 
begin : main 
    // Test case 1: 61 (decimal)
    x = 61;
    b = x; 
    $display ("61 (10) = %b (2) = %o (8) = %x (16) = %X (16) = %d (4)", b, b, b, b, decimal_to_base4(x));

    // Test case 2: 53 (decimal)
    x = 53;
    b = x; 
    $display ("53 (10) = %b (2) = %o (8) = %x (16) = %X (16) = %d (4)", b, b, b, b, decimal_to_base4(x));

    // Test case 3: 77 (decimal)
    x = 77;
    b = x; 
    $display ("77 (10) = %b (2) = %o (8) = %x (16) = %X (16) = %d (4)", b, b, b, b, decimal_to_base4(x));

    // Test case 4: 153 (decimal)
    x = 153;
    b = x; 
    $display ("153 (10) = %b (2) = %o (8) = %x (16) = %X (16) = %d (4)", b, b, b, b, decimal_to_base4(x));

    // Test case 5: 753 (decimal)
    x = 753;
    b = x; 
    $display ("753 (10) = %b (2) = %o (8) = %x (16) = %X (16) = %d (4)", b, b, b, b, decimal_to_base4(x));
end // main 
endmodule // Guia_0103
