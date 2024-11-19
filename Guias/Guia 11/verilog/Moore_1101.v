// Moore_1101.v
// Nome: Arthur Signorini Miranda
// Matrícula: 848122
// --------------
// --- Moore FSM
// --------------
`define found 1
`define notfound 0

module moore_1101 (y, x, clk, reset);
    output y;
    input x;
    input clk;
    input reset;
    reg y;

    parameter // state identifiers
        start = 3'b000,
        id1 = 3'b001,
        id11 = 3'b011,
        id110 = 3'b010,
        id1101 = 3'b110;

    reg [2:0] E1; // current state
    reg [2:0] E2; // next state

    // next state logic
    always @(x or E1) begin
        case (E1)
            start: E2 = (x) ? id1 : start;
            id1: E2 = (x) ? id11 : start;
            id11: E2 = (x) ? id11 : id110;
            id110: E2 = (x) ? id1101 : start;
            id1101: E2 = (x) ? id11 : start;
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
        y = (E1 == id1101) ? `found : `notfound;
    end
endmodule
