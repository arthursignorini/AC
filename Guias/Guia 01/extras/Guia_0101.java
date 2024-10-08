// Arthur Signorini Miranda - 848122

public class Guia_0101 {

    // Função para converter decimal para binário
    public static String dec2bin(int x) {
        return Integer.toBinaryString(x);
    }

    public static void main(String[] args) {
        // define data
        int a = 26;   // decimal
        int b = 53;
        int c = 713;
        int d = 213;
        int e = 365;

        // actions
        System.out.println("Guia_0101 - Tests");

        System.out.println("a = " + a);
        System.out.println("bin_a = " + dec2bin(a));
        System.out.println();

        System.out.println("b = " + b);
        System.out.println("bin_b = " + dec2bin(b));
        System.out.println();

        System.out.println("c = " + c);
        System.out.println("bin_c = " + dec2bin(c));
        System.out.println();

        System.out.println("d = " + d);
        System.out.println("bin_d = " + dec2bin(d));
        System.out.println();

        System.out.println("e = " + e);
        System.out.println("bin_e = " + dec2bin(e));
    }
}
