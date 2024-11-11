// Arthur Signorini Miranda
// 848122

module ram_1x8 (
    input wire [7:0] dados_in,
    input wire enable,
    input wire write_enable,
    output reg [7:0] dados_out
);
    reg [3:0] ram_lower; // Memória RAM 1x4 inferior
    reg [3:0] ram_upper; // Memória RAM 1x4 superior

    always @(*) begin
        if (enable) begin
            if (write_enable) begin
                ram_lower <= dados_in[3:0]; // Escreve os 4 bits inferiores
                ram_upper <= dados_in[7:4]; // Escreve os 4 bits superiores
            end else begin
                dados_out <= {ram_upper, ram_lower}; // Lê os dados
            end
        end
    end
endmodule
