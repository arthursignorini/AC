// Arthur Signorini Miranda
// 848122

// Guia_0904.v - Pulso com frequência igual a quatro vezes o gerador original
`include "clock.v"

module pulse_1_4 (output reg signal, input clock);
    reg [1:0] counter = 2'b00;

    always @ (posedge clock) begin
        counter <= counter + 1;
        if (counter == 2'b11) begin
            signal <= ~signal;
            counter <= 2'b00;
        end
    end
endmodule

module Guia_0904;
    wire clock;
    clock clk (clock);

    wire p1;
    pulse_1_4 pls1 (p1, clock);

    initial begin
        $dumpfile("Guia_0904.vcd");  // Geração do arquivo .vcd
        $dumpvars(1, clock, p1);

        #480 $finish;  // Finaliza a simulação após 480 unidades de tempo
    end
endmodule
