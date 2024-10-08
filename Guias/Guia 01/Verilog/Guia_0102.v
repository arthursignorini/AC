/* 
Guia_0102.v 
Arthur Signorini Miranda - 848122 
*/ 
module Guia_0102; 
// define data 
integer a, b, c, d, e;                  
// decimal 
reg [7:0] te; // binary (bits - little endian) 
// actions 
initial 
begin : main 
    $display("Guia_0102 - Tests"); 

    // Teste para 10101(2) - 5 bits
    te = 8'b00010101; // 10101 em binário com 8 bits
    a = te[4:0]; // usa apenas os 5 bits relevantes
    $display("10101(2) = %b (binary)", te[4:0]); // exibe apenas os 5 bits relevantes
    $display("Decimal: %d", a); 

    // Teste para 11011(2) - 5 bits
    te = 8'b00011011; // 11011 em binário com 8 bits
    b = te[4:0]; // usa apenas os 5 bits relevantes
    $display("11011(2) = %b (binary)", te[4:0]); // exibe apenas os 5 bits relevantes
    $display("Decimal: %d", b); 

    // Teste para 10010(2) - 5 bits
    te = 8'b0010010; // 10010 em binário com 8 bits
    c = te[4:0]; // usa apenas os 5 bits relevantes
    $display("10010(2) = %b (binary)", te[4:0]); // exibe apenas os 5 bits relevantes
    $display("Decimal: %d", c); 

    // Teste para 101011(2) - 6 bits
    te = 8'b00101011; // 101011 em binário com 8 bits
    d = te[5:0]; // usa apenas os 6 bits relevantes
    $display("101011(2) = %b (binary)", te[5:0]); // exibe apenas os 6 bits relevantes
    $display("Decimal: %d", d); 

    // Teste para 110111(2) - 6 bits
    te = 8'b00110111; // 110111 em binário com 8 bits
    e = te[5:0]; // usa apenas os 6 bits relevantes
    $display("110111(2) = %b (binary)", te[5:0]); // exibe apenas os 6 bits relevantes
    $display("Decimal: %d", e); 
end // main 
endmodule // Guia_0102
