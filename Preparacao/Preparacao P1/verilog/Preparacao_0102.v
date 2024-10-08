// Arthur Signorini Miranda
// 848122

module f (output s, input x, input y);
    wire w1, w2, w3, w4, w5;

    not NOT_1 (w1, x);
    not NOT_2 (w2, y);
    and AND_1 (w3, y, w1);
    or OR_1 (w4, w2, x);
    not NOT_3 (w5, w4);
    and AND_2 (s, w3, w5);
endmodule // f

module testbench;
    reg x, y;
    wire s;

    // Instância do módulo f
    f uut (
        .s(s),
        .x(x),
        .y(y)
    );

    initial begin
        // Testes
        $monitor("x = %b, y = %b, s = %b", x, y, s);
        
        // Testa todas as combinações de x e y
        x = 0; y = 0; #10; // Espera 10 unidades de tempo
        x = 0; y = 1; #10;
        x = 1; y = 0; #10;
        x = 1; y = 1; #10;

        // Finaliza a simulação
        $finish;
    end
endmodule // testbench
