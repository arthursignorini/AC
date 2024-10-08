// Arthur Signorini Miranda 
// 848122

module mux(input a, input b, input chave, output saida);
    assign saida = chave ? b : a;  // Se chave=0, saída = a; se chave=1, saída = b
endmodule

module circuito(input a, input b, input c, output saida_final);
    wire not_a, not_b, not_c;
    wire mux1_out, mux2_out;
    
    // Inversores
    assign not_a = ~a;
    assign not_b = ~b;
    assign not_c = ~c;
    
    // MUX 1: MUX(b, a, c)
    mux mux1(b, a, c, mux1_out);
    
    // MUX 2: MUX(~a, ~b, c)
    mux mux2(not_a, not_b, c, mux2_out);
    
    // MUX final: MUX(mux1_out, mux2_out, ~c)
    mux mux3(mux1_out, mux2_out, not_c, saida_final);
    
endmodule

module testbench();
    reg a, b, c;
    wire saida_final;
    
    // Instancia o circuito
    circuito uut(.a(a), .b(b), .c(c), .saida_final(saida_final));
    
    // Teste com diferentes combinações de A, B e C
    initial begin
        $display("A B C | Saida");
        $monitor("%b %b %b | %b", a, b, c, saida_final);
        
        // Teste todas as combinações de A, B e C
        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;
        
        $finish;
    end
endmodule
