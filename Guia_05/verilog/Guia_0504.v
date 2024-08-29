// -------------------------
// Guia_0504.v - NAND Implementation
// Nome: Arthur Signorini Miranda
// Matrícula: 848122
// Implementação da expressão ~(~a & b) usando apenas portas NAND

module Guia_0504 (
    output s,    // Saída
    input a,     // Entrada a
    input b      // Entrada b
);
    // Definir sinais intermediários
    wire na;      // Intermediário para ~a
    wire na_and_b; // Intermediário para ~a & b

    // Implementar ~a usando portas NAND
    nand (na, a, a); // ~a = a NAND a

    // Implementar ~a & b usando portas NAND
    nand (na_and_b, na, b); // ~a & b = ~(~a & b)

    // Implementar ~(~a & b) usando portas NAND
    nand (s, na_and_b, na_and_b); // ~(~a & b) = (~a & b) NAND (~a & b)

endmodule // Guia_0504

// -------------------------
// Banco de Testes para Guia_0504
module testbench_Guia_0504;

    // Definir sinais de entrada e saída
    reg a, b;
    wire s;

    // Instanciar o módulo Guia_0504
    Guia_0504 uut (
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
