// Arthur Signorini Miranda - 848122

public class Guia_0105 {

    public static void main(String[] args) {
        // Exemplos de conversões

        // a.) “PUC-M.G.”
        String strA = "PUC-M.G.";
        System.out.println("a.) 'PUC-M.G.' em hexadecimal:");
        System.out.println(ASCII2hex(strA));

        // b.) “2024-02”
        String strB = "2024-02";
        System.out.println("b.) '2024-02' em hexadecimal:");
        System.out.println(ASCII2hex(strB));

        // c.) “Belo Horizonte”
        String strC = "Belo Horizonte";
        System.out.println("c.) 'Belo Horizonte' em hexadecimal:");
        System.out.println(ASCII2hex(strC));

        // d.) Octal para hexadecimal
        int[] octalNumbers = {0156, 0157, 0151, 0164, 0145}; // Octal
        System.out.println("d.) Octal para hexadecimal:");
        for (int octal : octalNumbers) {
            System.out.printf("%o (8) = %X (16)%n", octal, octal);
        }

        // e.) Hexadecimal para ASCII
        String[] hexValues = {"4D", "61", "6E", "68", "61"};
        System.out.println("e.) Hexadecimal para ASCII:");
        for (String hex : hexValues) {
            System.out.printf("%s = %c%n", hex, hex2ASCII(hex));
        }
    }

    // Função para converter ASCII para hexadecimal
    public static String ASCII2hex(String input) {
        StringBuilder hexString = new StringBuilder();
        for (char c : input.toCharArray()) {
            hexString.append(String.format("%02X ", (int) c));
        }
        return hexString.toString().trim();
    }

    // Função para converter hexadecimal para ASCII
    public static char hex2ASCII(String hex) {
        return (char) Integer.parseInt(hex, 16);
    }
}
