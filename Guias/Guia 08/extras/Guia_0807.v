// ------------------------- 
// Nome: Nome: Arthur Signorini Miranda
// Matricula: 848122
// ------------------------- 

// ------------------------- 
//  comparador 
// ------------------------- 
module comparator ( output igual, output diferente, input [5:0] A, input [5:0] B ); 
    assign igual = (A == B);
    assign diferente = (A != B);
endmodule // comparator 

// ------------------------- 
//  Guia_0807 - Unidade Lógica 
// ------------------------- 
module LU (
    input [5:0] A,        // Operando A
    input [5:0] B,        // Operando B
    input chave,          // Seleção de saída
    output reg resultado   // Resultado da comparação
); 
    wire igual;           // Sinal de igualdade
    wire diferente;       // Sinal de desigualdade

    // Instância do comparador
    comparator comp ( igual, diferente, A, B );

    // Lógica de seleção do resultado
    always @(*) begin
        if (chave) begin
            resultado = diferente; // Se chave for 1, mostra desigualdade
        end else begin
            resultado = igual; // Se chave for 0, mostra igualdade
        end
    end

endmodule // LU

// ------------------------- 
// Teste para a Unidade Lógica 
// ------------------------- 
module Guia_0807; 
    reg [5:0] A; 
    reg [5:0] B; 
    reg chave; 
    wire resultado; 

    // Instância da LU
    LU minhaLU ( A, B, chave, resultado );

    initial begin 
        // Definindo os valores iniciais
        A = 6'b000000; 
        B = 6'b000000; 
        chave = 0; 
    end 

    // ------------------------- parte principal 
    initial begin 
        $display("Guia_0807 - Vinicius Miranda de Araujo - 812839"); 
        $display("Testando a Unidade Lógica"); 
        $display(" A    B   |  Resultado | Chave"); 
        for (integer i = 0; i < 32; i++) begin
            for (integer j = 0; j < 32; j++) begin
                A = i; 
                B = j; 
                
                // Testando igualdade
                chave = 0; 
                #10;
                $display("%b %b | %b | %b", A, B, resultado, chave);
                
                // Testando desigualdade
                chave = 1; 
                #10;
                $display("%b %b | %b | %b", A, B, resultado, chave);
            end 
        end 
        $finish; 
    end 
endmodule // Guia_0807 
