// Guia_1103.v
// Nome: Arthur Signorini Miranda
// Matrícula: 848122
// --------------
// --- Moore FSM para 1001 com interseção
// --------------
`define found 1
`define notfound 0

module guia_1103 (y, x, clk, reset);
    output y;
    input x;
    input clk;
    input reset;
    reg y;
    
    parameter // state identifiers 
        start = 3'b000,
        id1 = 3'b001,
        id10 = 3'b010,
        id100 = 3'b011,
        id1001 = 3'b100;
    
    reg [2:0] E1; // current state
    reg [2:0] E2; // next state

    // next state logic
    always @(x or E1) begin
        case (E1)
            start: E2 = (x) ? id1 : start;
            id1: E2 = (x) ? id1 : id10;
            id10: E2 = (x) ? id100 : start;
            id100: E2 = (x) ? id1 : id1001;
            id1001: E2 = (x) ? id1 : start;
            default: E2 = 3'bxxx; // undefined state
        endcase
    end

    // state variables update
    always @(posedge clk or negedge reset) begin
        if (!reset) E1 <= start;
        else E1 <= E2;
    end

    // output logic
    always @(E1) begin
        y = (E1 == id1001) ? `found : `notfound;
    end
endmodule
