// Mealy_1101.v
// Nome: Arthur Signorini Miranda
// Matrícula: 848122
// --------------
// --- Mealy FSM
// --------------
`define found 1
`define notfound 0

module mealy_1101 (y, x, clk, reset);
    output y;
    input x;
    input clk;
    input reset;
    reg y;
    
    parameter // state identifiers 
        start = 2'b00,
        id1 = 2'b01,
        id11 = 2'b11,
        id110 = 2'b10;
    
    reg [1:0] E1; // current state
    reg [1:0] E2; // next state

    // next state logic
    always @(x or E1) begin
        y = `notfound;
        case (E1)
            start: E2 = (x) ? id1 : start;
            id1: E2 = (x) ? id11 : start;
            id11: E2 = (x) ? id11 : id110;
            id110: begin
                E2 = (x) ? id1 : start;
                y = (x) ? `found : `notfound;
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
