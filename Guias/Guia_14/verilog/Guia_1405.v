// Arthur Signorini Miranda
// 848122

module parallel_to_serial_6bit (
    input wire CLK,             // Sinal de relógio
    input wire LD,              // Sinal de carga para entrada paralela
    input wire [5:0] DATA_IN,   // Dados paralelos de entrada (6 bits)
    output reg SERIAL_OUT       // Saída serial
);

    reg [5:0] shift_reg;        // Registrador de deslocamento para armazenar os bits de entrada
    reg [2:0] counter;          // Contador de 3 bits para controlar a posição do bit

    always @(posedge CLK) begin
        if (LD) begin
            shift_reg <= DATA_IN;  // Carrega os dados paralelos no registrador de deslocamento
            counter <= 3'b000;     // Reseta o contador para começar do primeiro bit
        end else if (counter < 6) begin
            SERIAL_OUT <= shift_reg[counter];  // Envia o bit atual para a saída serial
            counter <= counter + 1;            // Incrementa o contador para o próximo bit
        end
    end

endmodule
