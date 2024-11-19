// Arthur Signorini Miranda
// 848122

module shift_register_left_6bit_load (
    input wire CLK,              // Sinal de relógio
    input wire LD,               // Sinal de carga inicial
    input wire [5:0] DATA_IN,    // Dados de carga inicial de 6 bits
    output reg [5:0] Q           // Saída de 6 bits
);

    always @(posedge CLK) begin
        if (LD)
            Q <= DATA_IN;         // Carrega o valor de DATA_IN nos 6 estágios
        else
            Q <= {Q[4:0], 1'b0};  // Deslocamento para a esquerda com entrada de '0'
    end

endmodule
