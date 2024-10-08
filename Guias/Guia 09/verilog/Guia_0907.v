// Arthur Signorini Miranda
// 848122

// Guia_0907.v - Pulso com marcação de 8 unidades de tempo no nível alto do clock
`include "clock.v"

module pulse_8_time (output reg signal, input clock);
    always @ (clock) begin
        if (clock == 1'b1) begin
            signal = 1'b1;
            #8 signal = 1'b0;
        end
    end
endmodule

module Guia_0907;
    wire clock;
    clock clk (clock);

    wire p1;
    pulse_8_time pls1 (p1, clock);

    initial begin
        $dumpfile("Guia_0907.vcd");  // Geração do arquivo .vcd
        $dumpvars(1, clock, p1);

        #480 $finish;  // Finaliza a simulação após 480 unidades de tempo
    end
endmodule
