// Arthur Signorini Miranda
// 848122

// clock.v - Gerador de clock

module clock (output reg clk);
    initial begin
        clk = 1'b0;
    end

    always begin
        #12 clk = ~clk;  // Clock alterna a cada 12 unidades de tempo
    end
endmodule
