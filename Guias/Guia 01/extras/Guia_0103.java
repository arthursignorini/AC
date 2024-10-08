// Arthur Signorini Miranda - 848122

public class Guia_0103 {

    // Função para converter decimal para base 4
    public static String decimalToBase4(int decimal) {
        if (decimal == 0) return "0";
        StringBuilder base4 = new StringBuilder();
        while (decimal > 0) {
            base4.insert(0, decimal % 4);
            decimal /= 4;
        }
        return base4.toString();
    }

    public static void main(String[] args) {
        // Test cases
        int[] testNumbers = {61, 53, 77, 153, 753};

        System.out.println("Decimal Conversion:");
        for (int num : testNumbers) {
            String bin = Integer.toBinaryString(num);
            String base4 = decimalToBase4(num);
            String oct = Integer.toOctalString(num);
            String hex = Integer.toHexString(num).toUpperCase(); 

            System.out.printf("%d (10) = %s (2) = %s (4) = %s (8) = %s (16)%n",
                num, bin, base4, oct, hex);
        }
    }
}
