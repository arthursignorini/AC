// -------------------------
// Guia_0503.v - NOR Implementation
// Nome: Arthur Signorini Miranda
// Matrícula: 848122

// Implementação da expressão ~(~a | b) usando apenas portas NOR

module Guia_0503 (
    output s,    // Saída
    input a,     // Entrada a
    input b      // Entrada b
);
    // Definir sinais intermediários
    wire na;      // Intermediário para ~a
    wire na_or_b; // Intermediário para ~a | b

    // Implementar ~a usando portas NOR
    nor (na, a, a); // ~a = a NOR a

    // Implementar ~a | b usando portas NOR
    nor (na_or_b, na, b); // ~a | b = ~a NOR b

    // Implementar ~(~a | b) usando portas NOR
    nor (s, na_or_b, na_or_b); // ~(~a | b) = (~a | b) NOR (~a | b)

endmodule // Guia_0503

// -------------------------
// Banco de Testes para Guia_0503
module testbench_Guia_0503;

    // Definir sinais de entrada e saída
    reg a, b;
    wire s;

    // Instanciar o módulo Guia_0503
    Guia_0503 uut (
        .s(s),
        .a(a),
        .b(b)
    );

    // Procedimento inicial
    initial begin
        // Inicializar entradas
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10;

        // Encerrar simulação
        $finish;
    end

    // Monitorar saídas
    initial begin
        $monitor("Tempo = %0t, a = %b, b = %b, s = %b", $time, a, b, s);
    end

endmodule
