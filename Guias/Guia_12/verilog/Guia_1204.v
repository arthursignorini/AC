// Arthur Signorini Miranda
// 848122
module ram_4x8 (
    input wire [7:0] dados_in,
    input wire enable,
    input wire write_enable,
    input wire [1:0] addr,          // Endereço: 00, 01, 10 ou 11
    output reg [7:0] dados_out
);
    reg [7:0] ram[3:0]; // Array para quatro memórias RAM 1x8

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
