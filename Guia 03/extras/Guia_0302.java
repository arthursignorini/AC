// Arthur Signorini Miranda -848122

public class Guia_0302 {

    public static void main(String[] args) {
        // Valores binários como inteiros
        int a = 0b111001; // 321(4) em binário
        int b = 0b10110010; // B2(16) em binário
        int c = 0b101101; // 231(4) em binário
        int d = 0b001100110; // 146(8) em binário
        int e = 0b01101111; // 6F(16) em binário

        // Larguras dos bits para ajuste
        int mask6 = 0b111111; // Máscara para 6 bits
        int mask8 = 0b11111111; // Máscara para 8 bits
        int mask9 = 0b111111111; // Máscara para 9 bits
        int mask11 = 0b11111111111; // Máscara para 11 bits

        // Complemento de 1
        int a1 = (~a) & mask6;
        int b1 = (~b) & mask8;

        // Complemento de 2
        int c1 = (~c + 1) & mask6;
        int d1 = (~d + 1) & mask11;
        int e1 = (~e + 1) & mask8;

        // Exibição dos resultados
        System.out.println("a = " + String.format("%6s", Integer.toBinaryString(a)).replace(' ', '0') +
                           " -> C1(a) = " + String.format("%6s", Integer.toBinaryString(a1)).replace(' ', '0'));
        System.out.println("b = " + String.format("%8s", Integer.toBinaryString(b)).replace(' ', '0') +
                           " -> C1(b) = " + String.format("%8s", Integer.toBinaryString(b1)).replace(' ', '0'));
        System.out.println("c = " + String.format("%6s", Integer.toBinaryString(c)).replace(' ', '0') +
                           " -> C2(c) = " + String.format("%6s", Integer.toBinaryString(c1)).replace(' ', '0'));
        System.out.println("d = " + String.format("%9s", Integer.toBinaryString(d)).replace(' ', '0') +
                           " -> C2(d) = " + String.format("%11s", Integer.toBinaryString(d1)).replace(' ', '0'));
        System.out.println("e = " + String.format("%8s", Integer.toBinaryString(e)).replace(' ', '0') +
                           " -> C2(e) = " + String.format("%9s", Integer.toBinaryString(e1)).replace(' ', '0'));
    }
}
