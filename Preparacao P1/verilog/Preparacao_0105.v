// Arthur Signorini Miranda
// 848122

module Questao_05(
    input a, b,
    output out
);
    wire xor_ab;
    wire not_a, not_b;
    wire nor_not_a_not_b;
    wire nand_final;

    // XOR entre a e b
    assign xor_ab = a ^ b;

    // NOT de a e NOT de b
    assign not_a = ~a;
    assign not_b = ~b;

    // NOR entre NOT(a) e NOT(b)
    assign nor_not_a_not_b = ~(not_a | not_b);

    // NAND entre XOR(a, b) e NOR(NOT(a), NOT(b))
    assign nand_final = ~(xor_ab & nor_not_a_not_b);

    // Saída final
    assign out = nand_final;

endmodule

module testbench;
    reg a, b;
    wire out;

    // Instancia o módulo que implementa a expressão lógica
    expressao_logica uut (
        .a(a),
        .b(b),
        .out(out)
    );

    // Procedimento de teste
    initial begin
        // Exibe cabeçalho
        $display("a b | out");

        // Testa todas as combinações possíveis de a e b
        a = 0; b = 0; #10 $display("%b %b | %b", a, b, out);
        a = 0; b = 1; #10 $display("%b %b | %b", a, b, out);
        a = 1; b = 0; #10 $display("%b %b | %b", a, b, out);
        a = 1; b = 1; #10 $display("%b %b | %b", a, b, out);
        
        // Finaliza a simulação
        $finish;Questao_05