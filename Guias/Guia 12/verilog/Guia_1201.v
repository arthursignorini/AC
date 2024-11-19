// Arthur Signorini Miranda
// 848122
module ram_1x4 (
    input wire CLK_,
    input wire R_W_,         // Sinal de leitura/escrita (1 para escrita, 0 para leitura)
    input wire ADDR_,        // Endereço (não utilizado, pois temos apenas 1 endereço)
    input wire [3:0] data_in, // Entrada de dados (4 bits)
    output reg [3:0] data_out, // Saída de dados (4 bits)
    input wire CLR           // Sinal de reset
);

    reg [3:0] mem; // Registro de memória para armazenar 4 bits

    // Processo de escrita e leitura
    always @(posedge CLK_ or posedge CLR) begin
        if (CLR) begin
            mem <= 4'b0000; // Limpa a memória se CLR for ativado
            data_out <= 4'b0000; // Saída é zerada
        end
        else if (R_W_) begin
            // Escrita na borda de subida do clock
            mem <= data_in;
        end
    end

    always @(negedge CLK_) begin
        if (!R_W_) begin
            // Leitura na borda de descida do clock
            data_out <= mem;
        end
    end

endmodule
