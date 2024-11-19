// Guia_1104.v
// Nome: Arthur Signorini Miranda
// Matrícula: 848122
// --------------
// --- FSM para reconhecer x000
// --------------
`define found 1
`define notfound 0

module guia_1104 (y, x, clk, reset);
    output y;
    input x;
    input clk;
    input reset;
    reg y;
    
    parameter // state identifiers 
        start = 3'b000,
        detect0 = 3'b001,
        detect00 = 3'b010,
        detect000 = 3'b011;

    reg [2:0] E1; // current state
    reg [2:0] E2; // next state

    // next state logic
    always @(x or E1) begin
        case (E1)
            start: E2 = (x) ? start : detect0;
            detect0: E2 = (x) ? start : detect00;
            detect00: E2 = (x) ? start : detect000;
            detect000: begin
                E2 = (x) ? start : detect000;
                y = (x) ? `notfound : `found;
            end
            default: E2 = 3'bxxx;
        endcase
    end

    // state variables update
    always @(posedge clk or negedge reset) begin
        if (!reset) E1 <= start;
        else E1 <= E2;
    end
endmodule
