// Arthur Signorini Miranda
// 848122
module ram_4x16 (
    input wire [15:0] dados_in,
    input wire enable,
    input wire write_enable,
    input wire [1:0] addr,          // Endereço: 00, 01, 10, 11
    output reg [15:0] dados_out
);
    reg [7:0] ram0[3:0]; // Primeira RAM 4x8
    reg [7:0] ram1[3:0]; // Segunda RAM 4x8

    always @(*) begin
        if (enable) begin
            if (write_enable) begin
                ram0[addr] <= dados_in[7:0]; // Escreve os 8 bits menos significativos
                ram1[addr] <= dados_in[15:8]; // Escreve os 8 bits mais significativos
            end else begin
                dados_out <= {ram1[addr], ram0[addr]}; // Lê os dados e concatena
            end
        end
    end
endmodule
