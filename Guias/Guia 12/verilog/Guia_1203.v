// Arthur Signorini Miranda
// 848122
module ram_2x8 (
    input wire [7:0] dados_in,
    input wire enable,
    input wire write_enable,
    input wire addr,          // Endereço: 0 ou 1
    output reg [7:0] dados_out
);
    reg [7:0] ram[1:0]; // Array para duas memórias RAM 1x8

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
