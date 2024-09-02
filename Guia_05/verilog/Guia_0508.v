// -------------------------
// Guia_0508.v - NAND Implementation
// Arthur Signorini Miranda
// 848122
// Implementação da expressão ~(~a | ~b) usando apenas portas NAND

module Guia_0508 (
    output s,    // Saída
    input a,     // Entrada a
    input b      // Entrada b
);
    // Definir sinais intermediários
    wire na, nb; // Intermediários para ~a e ~b
    wire na_or_nb; // Intermediário para ~a | ~b

    // Implementar ~a e ~b usando portas NAND
    nand (na, a, a); // ~a = a NAND a
    nand (nb, b, b); // ~b = b NAND b

    // Implementar ~a | ~b usando portas NAND
    nand (na_or_nb, na, nb); // ~a | ~b = ~(~a NAND ~b)

    // Implementar ~(~a | ~b) usando portas NAND
    nand (s, na_or_nb, na_or_nb); // ~(~a | ~b) = (~a | ~b) NAND (~a | ~b)

endmodule // Guia_0508

// -------------------------
// Banco de Testes para Guia_0508
module testbench_Guia_0508;

    // Definir sinais de entrada e saída
    reg a, b;
    wire s;

    // Instanciar o módulo Guia_0508
    Guia_0508 uut (
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
