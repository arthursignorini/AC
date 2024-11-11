// Arthur Signorini Miranda
// 848122

module shift_register_left_6bit (
    input wire CLK,       // Sinal de relógio
    input wire LD,        // Sinal de carga do primeiro estágio
    output reg [5:0] Q    // Saída de 6 bits
);

    always @(posedge CLK) begin
        // Carrega o valor 1 no primeiro estágio se LD estiver ativo
        if (LD)
            Q <= {Q[4:0], 1'b1}; // Deslocamento para a esquerda com entrada de '1'
        else
            Q <= {Q[4:0], 1'b0}; // Deslocamento para a esquerda com entrada de '0'
    end

endmodule
