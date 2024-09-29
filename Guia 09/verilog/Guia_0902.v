// Arthur Signorini Miranda
// 848122

// Guia_0902.v - Geradores de pulso com períodos diferentes
`include "clock.v"

module pulse1 (output reg signal, input clock);
    always @ (posedge clock) begin
        signal = 1'b1;
        #4 signal = 1'b0;
        #4 signal = 1'b1;
        #4 signal = 1'b0;
        #4 signal = 1'b1;
        #4 signal = 1'b0;
    end
endmodule

module pulse2 (output reg signal, input clock);
    always @ (posedge clock) begin
        signal = 1'b1;
        #5 signal = 1'b0;
    end
endmodule

module pulse3 (output reg signal, input clock);
    always @ (negedge clock) begin
        signal = 1'b1;
        #15 signal = 1'b0;
        #15 signal = 1'b1;
    end
endmodule

module pulse4 (output reg signal, input clock);
    always @ (negedge clock) begin
        signal = 1'b1;
        #20 signal = 1'b0;
        #20 signal = 1'b1;
        #20 signal = 1'b0;
    end
endmodule

module Guia_0902;
    wire clock;
    clock clk (clock);

    wire p1, p2, p3, p4;

    pulse1 pls1 (p1, clock);
    pulse2 pls2 (p2, clock);
    pulse3 pls3 (p3, clock);
    pulse4 pls4 (p4, clock);

    initial begin
        $dumpfile("Guia_0902.vcd");  // Geração do arquivo .vcd
        $dumpvars(1, clock, p1, p2, p3, p4);

        #480 $finish;  // Finaliza a simulação após 480 unidades de tempo
    end
endmodule
