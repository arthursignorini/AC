// Arthur Signorini Miranda - 848122

public class Guia_0301 {
    public static void main(String[] args) {
        // Definir os valores binários
        int a = 0b1010;    // 6 bits
        int b = 0b1101;    // 8 bits
        int c = 0b101001;  // 6 bits
        int d = 0b101111;  // 7 bits
        int e = 0b110100;  // 8 bits
        
        // Complemento de 1
        System.out.printf("a = %6s -> C1(a) = %6s%n", toBinaryString(a, 6), toBinaryString(~a & 0b111111, 6));
        System.out.printf("b = %8s -> C1(b) = %8s%n", toBinaryString(b, 8), toBinaryString(~b & 0xFF, 8));
        
        // Complemento de 2
        System.out.printf("c = %6s -> C2(c) = %6s%n", toBinaryString(c, 6), toBinaryString((~c + 1) & 0b111111, 6));
        System.out.printf("d = %7s -> C2(d) = %7s%n", toBinaryString(d, 7), toBinaryString((~d + 1) & 0b1111111, 7));
        System.out.printf("e = %8s -> C2(e) = %8s%n", toBinaryString(e, 8), toBinaryString((~e + 1) & 0xFF, 8));
    }

    // Método auxiliar para formatar números em binário com comprimento fixo
    private static String toBinaryString(int value, int length) {
        String binaryString = Integer.toBinaryString(value);
        int paddingLength = length - binaryString.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < paddingLength; i++) {
            sb.append('0');
        }
        sb.append(binaryString);
        return sb.toString();
    }
}
