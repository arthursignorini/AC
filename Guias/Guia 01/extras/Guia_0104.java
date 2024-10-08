// Arthur Signorini Miranda - 848122

public class Guia_0104 {

    public static void main(String[] args) {
        // Testes para cada valor binário
        String[] binaryValues = { "10100", "11010", "100111", "100101", "101101" };
        char[] labels = { 'a', 'b', 'c', 'd', 'e' };

        for (int i = 0; i < binaryValues.length; i++) {
            int decimal = bin2dec(binaryValues[i]);
            System.out.println("Guia_0104_" + labels[i] + " - Tests");
            System.out.println("b (binary) = " + String.format("%8s", binaryValues[i]).replace(' ', '0'));
            System.out.println("x (decimal) = " + decimal);
            if (labels[i] == 'b' || labels[i] == 'd') {
                System.out.println("x in base 8 = " + Integer.toOctalString(decimal));
            } else if (labels[i] == 'c') {
                System.out.println("x in base 16 = " + Integer.toHexString(decimal));
            } else if (labels[i] == 'e') {
                System.out.println("x in base 4 = " + decimalToBase4(decimal));
            }
            System.out.println();
        }
    }

    // Convert binary string to decimal integer
    public static int bin2dec(String binary) {
        return Integer.parseInt(binary, 2);
    }

    // Convert decimal integer to base 4 string
    public static String decimalToBase4(int decimal) {
        if (decimal == 0) return "0";

        StringBuilder base4 = new StringBuilder();
        while (decimal > 0) {
            base4.insert(0, decimal % 4);
            decimal /= 4;
        }
        return base4.toString();
    }
}
