// -------------------------
// Guia_0507.v - NOR Implementation
// Arthur Signorini Miranda
// 848122
// Implementação da expressão ~a ^ ~b usando apenas portas NOR

module Guia_0507 (
    output s,    // Saída
    input a,     // Entrada a
    input b      // Entrada b
);
    // Definir sinais intermediários
    wire na, nb; // Intermediários para ~a e ~b
    wire na_xor_nb; // Intermediário para ~a ^ ~b

    // Implementar ~a e ~b usando portas NOR
    nor (na, a, a); // ~a = a NOR a
    nor (nb, b, b); // ~b = b NOR b

    // Implementar ~a ^ ~b usando portas NOR
    nor (na_xor_nb, na, nb); // ~a ^ ~b = ~(~a NOR ~b)
    nor (s, na_xor_nb, na_xor_nb); // ~a ^ ~b = (~a ^ ~b) NOR (~a ^ ~b)

endmodule // Guia_0507

// -------------------------
// Banco de Testes para Guia_0507
module testbench_Guia_0507;

    // Definir sinais de entrada e saída
    reg a, b;
    wire s;

    // Instanciar o módulo Guia_0507
    Guia_0507 uut (
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
