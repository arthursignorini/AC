
// ------------------------- 
// Nome: Nome: Arthur Signorini Miranda
// Matricula: 848122

// ------------------------- 

// ------------------------- 
//  half adder 
// ------------------------- 
module halfAdder ( output carry, output sum, input a, input b ); 
    xor XOR0 ( sum, a, b ); 
    and AND0 ( carry, a, b ); 
endmodule // halfAdder 

// ------------------------- 
//  full adder 
// ------------------------- 
module fullAdder ( output carry, output sum, input a, input b, input carryIn ); 
    wire w1, w2, w3;
    halfAdder HA0 ( w1, w2, a, b );
    halfAdder HA1 ( w3, sum, w2, carryIn );
    or OR1 ( carry, w1, w3 );
endmodule // fullAdder 

// ------------------------- 
//  Guia_0806 - Unidade Aritmética 
// ------------------------- 
module AU (
    input [5:0] A,        // Operando A
    input [5:0] B,        // Operando B
    input carryIn,        // 0 para soma, 1 para subtração
    input chave,          // Seleção de saída
    output reg [5:0] resultado, // Resultado da operação
    output reg igual,     // Sinal de igualdade
    output reg diferente  // Sinal de desigualdade
); 
    wire [5:0] B_invertido; // B invertido para subtração
    wire [5:0] soma;        // Resultado da soma/subtração
    wire [4:0] carry;       // "vai-um" para o somador

    // Complemento de 1 (inversão de B)
    assign B_invertido = (carryIn) ? ~B : B;

    // Instâncias do somador
    fullAdder FA0 ( carry[0], soma[0], A[0], B_invertido[0], carryIn ); 
    fullAdder FA1 ( carry[1], soma[1], A[1], B_invertido[1], carry[0] ); 
    fullAdder FA2 ( carry[2], soma[2], A[2], B_invertido[2], carry[1] ); 
    fullAdder FA3 ( carry[3], soma[3], A[3], B_invertido[3], carry[2] ); 
    fullAdder FA4 ( carry[4], soma[4], A[4], B_invertido[4], carry[3] ); 
    assign soma[5] = carry[4]; // A última carry é o bit de mais alta ordem

    // Cálculo da igualdade e desigualdade
    always @(*) begin
        igual = (A == B);
        diferente = (A != B);
        
        // Seleção do resultado baseado na chave
        if (chave) begin
            resultado = soma; // Se chave for 1, resultado da soma/subtração
        end else begin
            resultado = igual ? 6'b111111 : 6'b000000; // Representação 111111 para igual
        end
    end

endmodule // AU

// ------------------------- 
// Teste para a Unidade Aritmética 
// ------------------------- 
module Guia_0806; 
    reg [5:0] A; 
    reg [5:0] B; 
    reg carryIn; 
    reg chave; 
    wire [5:0] resultado; 
    wire igual; 
    wire diferente; 

    // Instância da AU
    AU minhaAU ( A, B, carryIn, chave, resultado, igual, diferente );

    initial begin 
        // Definindo os valores iniciais
        A = 6'b000000; 
        B = 6'b000000; 
        carryIn = 0; 
        chave = 1; 
    end 

    // ------------------------- parte principal 
    initial begin 
        $display("Guia_0806 - Vinicius Miranda de Araujo - 812839"); 
        $display("Testando a Unidade Aritmética"); 
        $display("  A   +   B   =  Resultado  | Igual | Diferente"); 
        for (integer i = 0; i < 32; i++) begin
            for (integer j = 0; j < 32; j++) begin
                A = i; 
                B = j; 
                carryIn = 0; // Soma
                chave = 1; 
                #10;
                $display("%b + %b = %b | %b | %b", A, B, resultado, igual, diferente);
                
                carryIn = 1; // Subtração
                #10;
                $display("%b - %b = %b | %b | %b", A, B, resultado, igual, diferente);
            end 
        end 
        $finish; 
    end 
endmodule // Guia_0806 
