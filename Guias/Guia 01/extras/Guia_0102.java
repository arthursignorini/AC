// Arthur Signorini Miranda - 848122

public class Guia_0102 {

    public static int bin2dec(String binaryStr) {
        return Integer.parseInt(binaryStr, 2);
    }

    public static void main(String[] args) {
        // Testes
        System.out.println("10101(2) = " + bin2dec("10101") + " (decimal)");
        System.out.println("11011(2) = " + bin2dec("11011") + " (decimal)");
        System.out.println("10010(2) = " + bin2dec("10010") + " (decimal)");
        System.out.println("101011(2) = " + bin2dec("101011") + " (decimal)");
        System.out.println("110111(2) = " + bin2dec("110111") + " (decimal)");
    }
}
