// Arthur Signorini Miranda
// 848122

// Guia_0906.v - Pulso com marcação de 5 unidades de tempo na borda de descida do clock
`include "clock.v"

module pulse_5_time (output reg signal, input clock);
    always @ (negedge clock) begin
        signal = 1'b1;
        #5 signal = 1'b0;
    end
endmodule

module Guia_0906;
    wire clock;
    clock clk (clock);

    wire p1;
    pulse_5_time pls1 (p1, clock);

    initial begin
        $dumpfile("Guia_0906.vcd");  // Geração do arquivo .vcd
        $dumpvars(1, clock, p1);

        #480 $finish;  // Finaliza a simulação após 480 unidades de tempo
    end
endmodule
