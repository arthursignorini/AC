// Arthur Signorini Miranda
// 848122

module ring_shift_register_left_5bit (
    input wire CLK,             // Sinal de relógio
    input wire LD,              // Sinal de carga inicial
    input wire [4:0] DATA_IN,   // Dados de carga inicial de 5 bits
    output reg [4:0] Q          // Saída de 5 bits
);

    always @(posedge CLK) begin
        if (LD)
            Q <= DATA_IN;         // Carrega o valor de DATA_IN nos 5 estágios
        else
            Q <= {Q[3:0], Q[4]};  // Deslocamento circular para a esquerda
    end

endmodule
