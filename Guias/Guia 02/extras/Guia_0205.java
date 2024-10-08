// Arthur Signorini Miranda - 848122

public class BinarioOperacoes {

    public static void main(String[] args) {
        // Números binários com ponto fixo
        String a1 = "101.11";
        String b1 = "10.011";
        String a2 = "1000.101";
        String b2 = "10.01";
        String a3 = "101.101";
        String b3 = "10.101";
        String a4 = "10111.01";
        String b4 = "11.011";
        String a5 = "1101011";
        String b5 = "1101";

        // Operações
        String soma = binarioSoma(a1, b1);
        String subtracao = binarioSubtracao(a2, b2);
        String multiplicacao = binarioMultiplicacao(a3, b3);
        String divisao = binarioDivisao(a4, b4);
        String resto = binarioResto(a5, b5);

        // Resultados
        System.out.println("a.) " + a1 + " + " + b1 + " = " + soma + " (binário)");
        System.out.println("b.) " + a2 + " - " + b2 + " = " + subtracao + " (binário)");
        System.out.println("c.) " + a3 + " * " + b3 + " = " + multiplicacao + " (binário)");
        System.out.println("d.) " + a4 + " / " + b4 + " = " + divisao + " (binário)");
        System.out.println("e.) " + a5 + " % " + b5 + " = " + resto + " (binário)");

       
    }

    private static String binarioSoma(String a, String b) {
        double aDecimal = binarioParaDecimal(a);
        double bDecimal = binarioParaDecimal(b);
        return decimalParaBinario(aDecimal + bDecimal);
    }

    private static String binarioSubtracao(String a, String b) {
        double aDecimal = binarioParaDecimal(a);
        double bDecimal = binarioParaDecimal(b);
        return decimalParaBinario(aDecimal - bDecimal);
    }

    private static String binarioMultiplicacao(String a, String b) {
        double aDecimal = binarioParaDecimal(a);
        double bDecimal = binarioParaDecimal(b);
        return decimalParaBinario(aDecimal * bDecimal);
    }

    private static String binarioDivisao(String a, String b) {
        double aDecimal = binarioParaDecimal(a);
        double bDecimal = binarioParaDecimal(b);
        return decimalParaBinario(aDecimal / bDecimal);
    }

    private static String binarioResto(String a, String b) {
        int aDecimal = (int) binarioParaDecimal(a);
        int bDecimal = (int) binarioParaDecimal(b);
        return decimalParaBinario(aDecimal % bDecimal);
    }

    private static double binarioParaDecimal(String binario) {
        String[] partes = binario.split("\\.");
        int parteInteira = Integer.parseInt(partes[0], 2);
        double parteFracionaria = 0.0;
        if (partes.length > 1) {
            String fracionaria = partes[1];
            for (int i = 0; i < fracionaria.length(); i++) {
                if (fracionaria.charAt(i) == '1') {
                    parteFracionaria += Math.pow(2, -(i + 1));
                }
            }
        }
        return parteInteira + parteFracionaria;
    }

    private static String decimalParaBinario(double decimal) {
        int parteInteira = (int) decimal;
        double parteFracionaria = decimal - parteInteira;

        StringBuilder binarioInteiro = new StringBuilder();
        while (parteInteira > 0) {
            binarioInteiro.insert(0, parteInteira % 2);
            parteInteira /= 2;
        }

        StringBuilder binarioFracionario = new StringBuilder();
        while (parteFracionaria > 0 && binarioFracionario.length() < 10) { // Limitar a 10 casas decimais
            parteFracionaria *= 2;
            int bit = (int) parteFracionaria;
            binarioFracionario.append(bit);
            parteFracionaria -= bit;
        }

        if (binarioInteiro.length() == 0) {
            binarioInteiro.append('0');
        }

        return binarioInteiro + "." + binarioFracionario.toString();
    }
}
