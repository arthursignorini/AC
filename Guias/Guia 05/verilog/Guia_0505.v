// -------------------------
// Guia_0505.v - NOR Implementation
// Arthur Signorini Miranda
// 848122
// Implementação da expressão ~(a ^ b) usando apenas portas NOR (a XNOR b)

module Guia_0505 (
    output s,    // Saída
    input a,     // Entrada a
    input b      // Entrada b
);
    // Definir sinais intermediários
    wire na;      // Intermediário para ~a
    wire nb;      // Intermediário para ~b
    wire a_xor_b; // Intermediário para a ^ b

    // Implementar ~a e ~b usando portas NOR
    nor (na, a, a); // ~a = a NOR a
    nor (nb, b, b); // ~b = b NOR b

    // Implementar a ^ b usando portas NOR
    nor (a_xor_b, na, nb); // a ^ b = ~(a NOR b)

    // Implementar ~(a ^ b) usando portas NOR
    nor (s, a_xor_b, a_xor_b); // ~(a ^ b) = (a ^ b) NOR (a ^ b)

endmodule // Guia_0505

// -------------------------
// Banco de Testes para Guia_0505
module testbench_Guia_0505;

    // Definir sinais de entrada e saída
    reg a, b;
    wire s;

    // Instanciar o módulo Guia_0505
    Guia_0505 uut (
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
