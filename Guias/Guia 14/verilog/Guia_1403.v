// Arthur Signorini Miranda
// 848122

module ring_shift_register_right_6bit (
    input wire CLK,       // Sinal de relógio
    input wire LD,        // Sinal de carga unitária no primeiro estágio
    output reg [5:0] Q    // Saída de 6 bits
);

    always @(posedge CLK) begin
        if (LD)
            Q <= 6'b000001;       // Carga unitária no primeiro estágio
        else
            Q <= {Q[0], Q[5:1]};  // Deslocamento circular para a direita
    end

endmodule
