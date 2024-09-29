// Arthur Signorini Miranda
// 848122

// Guia_0905.v - Pulso com marcação de 4 unidades de tempo na borda de subida do clock
`include "clock.v"

module pulse_4_time (output reg signal, input clock);
    always @ (posedge clock) begin
        signal = 1'b1;
        #4 signal = 1'b0;
    end
endmodule

module Guia_0905;
    wire clock;
    clock clk (clock);

    wire p1;
    pulse_4_time pls1 (p1, clock);

    initial begin
        $dumpfile("Guia_0905.vcd");  // Geração do arquivo .vcd
        $dumpvars(1, clock, p1);

        #480 $finish;  // Finaliza a simulação após 480 unidades de tempo
    end
endmodule
