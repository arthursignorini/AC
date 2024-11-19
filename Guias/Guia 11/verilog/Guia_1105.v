// Guia_1105.v
// Nome: Arthur Signorini Miranda
// Matrícula: 848122
// --------------
// --- FSM para reconhecer 010 ou 101
// --------------
`define found 1
`define notfound 0

module guia_1105 (y, x, clk, reset);
    output y;
    input x;
    input clk;
    input reset;
    reg y;

    parameter // state identifiers 
        start = 2'b00,
        detect1 = 2'b01,
        detect10 = 2'b10,
        detect010 = 2'b11;

    reg [1:0] E1; // current state
    reg [1:0] E2; // next state

    // next state logic
    always @(x or E1) begin
        case (E1)
            start: E2 = (x) ? detect1 : start;
            detect1: E2 = (x) ? start : detect10;
            detect10: E2 = (x) ? detect1 : detect010;
            detect010: begin
                E2 = (x) ? start : detect010;
                y = (x) ? `found : `notfound;
            end
            default: E2 = 2'bxx;
        endcase
    end

    // state variables update
    always @(posedge clk or negedge reset) begin
        if (!reset) E1 <= start;
        else E1 <= E2;
    end
endmodule
