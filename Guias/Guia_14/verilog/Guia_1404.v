// Arthur Signorini Miranda
// 848122

module twisted_ring_shift_register_left_6bit (
    input wire CLK,       // Sinal de relógio
    input wire LD,        // Sinal de carga inicial unitária no primeiro estágio
    output reg [5:0] Q    // Saída de 6 bits
);

    always @(posedge CLK) begin
        if (LD)
            Q <= 6'b000001;         // Carga unitária no primeiro estágio
        else
            Q <= {Q[4:0], ~Q[5]};   // Deslocamento para a esquerda com inversão do bit mais significativo
    end

endmodule
