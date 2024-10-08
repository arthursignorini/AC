/*
* Arthur Signorini Miranda
* 848122
* Arquitetura de Computadores I
*/
module Guia_0202;
    // define data
    real x1  = 0.375;    // decimal
    real x2  = 2.125;    // decimal
    real x3  = 3.625;    // decimal
    real x4  = 5.03125;  // decimal
    real x5  = 6.75;     // decimal
    integer y1 = 7;      // counter
    integer y2 = 7;      // counter
    integer y3 = 7;      // counter
    integer y4 = 7;      // counter
    integer y5 = 7;      // counter
    reg [7:0] b1 = 0;    // binary
    reg [7:0] b2 = 0;    // binary
    reg [7:0] b3 = 0;    // binary
    reg [7:0] b4 = 0;    // binary
    reg [7:0] b5 = 0;    // binary
    integer int_part;    // parte inteira
    real frac_part;      // parte fracionária
    reg [7:0] int_bin;   // parte inteira em binário

    // Função para converter a parte inteira para binário
    function [7:0] int_to_bin;
        input integer num;
        integer i;
        begin
            int_to_bin = 0;
            i = 0;
            while (num > 0) begin
                int_to_bin[i] = num % 2;
                num = num / 2;
                i = i + 1;
            end
        end
    endfunction

    // actions
    initial begin : main
        $display("Exercicio 02");
        $display("x1 = %f", x1);
        $display("x2 = %f", x2);
        $display("x3 = %f", x3);
        $display("x4 = %f", x4);
        $display("x5 = %f\n", x5);

        // Conversão de x1 (0.375)
        int_part = $floor(x1); 
        frac_part = x1 - int_part;
        int_bin = int_to_bin(int_part);
        while (frac_part > 0 && y1 >= 0) begin
            frac_part = frac_part * 2.0;
            if (frac_part >= 1.0) begin
                b1[y1] = 1;
                frac_part = frac_part - 1.0;
            end else begin
                b1[y1] = 0;
            end
            y1 = y1 - 1;
        end

        // Conversão de x2 (2.125)
        int_part = $floor(x2); 
        frac_part = x2 - int_part;
        int_bin = int_to_bin(int_part);
        while (frac_part > 0 && y2 >= 0) begin
            frac_part = frac_part * 2.0;
            if (frac_part >= 1.0) begin
                b2[y2] = 1;
                frac_part = frac_part - 1.0;
            end else begin
                b2[y2] = 0;
            end
            y2 = y2 - 1;
        end

        // Conversão de x3 (3.625)
        int_part = $floor(x3); 
        frac_part = x3 - int_part;
        int_bin = int_to_bin(int_part);
        while (frac_part > 0 && y3 >= 0) begin
            frac_part = frac_part * 2.0;
            if (frac_part >= 1.0) begin
                b3[y3] = 1;
                frac_part = frac_part - 1.0;
            end else begin
                b3[y3] = 0;
            end
            y3 = y3 - 1;
        end

        // Conversão de x4 (5.03125)
        int_part = $floor(x4); 
        frac_part = x4 - int_part;
        int_bin = int_to_bin(int_part);
        while (frac_part > 0 && y4 >= 0) begin
            frac_part = frac_part * 2.0;
            if (frac_part >= 1.0) begin
                b4[y4] = 1;
                frac_part = frac_part - 1.0;
            end else begin
                b4[y4] = 0;
            end
            y4 = y4 - 1;
        end

        // Conversão de x5 (6.75)
        int_part = $floor(x5); 
        frac_part = x5 - int_part;
        int_bin = int_to_bin(int_part);
        while (frac_part > 0 && y5 >= 0) begin
            frac_part = frac_part * 2.0;
            if (frac_part >= 1.0) begin
                b5[y5] = 1;
                frac_part = frac_part - 1.0;
            end else begin
                b5[y5] = 0;
            end
            y5 = y5 - 1;
        end

        // Exibindo resultados
        $display("b1 = %b.%8b", int_to_bin($floor(x1)), b1);
        $display("b2 = %b.%8b", int_to_bin($floor(x2)), b2);
        $display("b3 = %b.%8b", int_to_bin($floor(x3)), b3);
        $display("b4 = %b.%8b", int_to_bin($floor(x4)), b4);
        $display("b5 = %b.%8b", int_to_bin($floor(x5)), b5);
    end // main
endmodule // Guia_0202
