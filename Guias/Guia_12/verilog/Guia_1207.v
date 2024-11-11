// Arthur Signorini Miranda
// 848122
module ram_8x16 (
    input wire [15:0] dados_in,
    input wire enable,
    input wire write_enable,
    input wire [2:0] addr,          // Endereço: 000 a 111 (0 a 7)
    output reg [15:0] dados_out
);
    reg [15:0] ram[7:0]; // Array para oito memórias RAM 1x16

    always @(*) begin
        if (enable) begin
            if (write_enable) begin
                ram[addr] <= dados_in; // Escreve dados na RAM selecionada
            end else begin
                dados_out <= ram[addr]; // Lê dados da RAM selecionada
            end
        end
    end
endmodule
