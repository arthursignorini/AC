// Guia_1102.v
// Nome: Arthur Signorini Miranda
// Matrícula: 848122
// --------------
// --- Mealy FSM para 1001 sem interseção
// --------------
`define found 1
`define notfound 0

module guia_1102 (y, x, clk, reset);
    output y;
    input x;
    input clk;
    input reset;
    reg y;
    
    parameter // state identifiers 
        start = 2'b00,
        id1 = 2'b01,
        id10 = 2'b10,
        id100 = 2'b11;
    
    reg [1:0] E1; // current state
    reg [1:0] E2; // next state

    // next state logic
    always @(x or E1) begin
        y = `notfound;
        case (E1)
            start: E2 = (x) ? id1 : start;
            id1: E2 = (x) ? id1 : id10;
            id10: E2 = (x) ? id100 : start;
            id100: begin
                E2 = (x) ? id1 : start;
                y = (x) ? `notfound : `found;
            end
            default: E2 = 2'bxx; // undefined state
        endcase
    end

    // state variables update
    always @(posedge clk or negedge reset) begin
        if (!reset) E1 <= start;
        else E1 <= E2;
    end
endmodule
