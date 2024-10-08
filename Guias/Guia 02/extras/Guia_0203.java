// Arthur Signorini Miranda - 848122

public class Guia_0203 {

    // Função para converter binário para uma base especificada
    public static String dbin2base(int base, String binario) {
        // Separa a parte inteira e decimal
        int pontoIndex = binario.indexOf(',');
        if (pontoIndex == -1) {
            pontoIndex = binario.length();
        }
        
        String parteInteira = binario.substring(0, pontoIndex);
        String parteDecimal = binario.substring(pontoIndex + 1);
        
        // Converte a parte inteira para a base especificada
        int inteiroDecimal = Integer.parseInt(parteInteira, 2);
        String inteiroBase = Integer.toString(inteiroDecimal, base).toUpperCase();
        
        // Converte a parte decimal para a base especificada
        StringBuilder decimalBase = new StringBuilder();
        double parteDecimalDecimal = 0;
        for (int i = 0; i < parteDecimal.length(); i++) {
            if (parteDecimal.charAt(i) == '1') {
                parteDecimalDecimal += Math.pow(2, -(i + 1));
            }
        }
        
        for (int i = 0; i < 10 && parteDecimalDecimal > 0; i++) {
            parteDecimalDecimal *= base;
            int digit = (int) parteDecimalDecimal;
            decimalBase.append(Integer.toString(digit, base).toUpperCase());
            parteDecimalDecimal -= digit;
        }
        
        return inteiroBase + (decimalBase.length() > 0 ? "," + decimalBase : "");
    }
    
    public static void main(String[] args) {
        // Números binários para converter
        String[] binarios = {
            "0,011110",
            "0,101001",
            "0,100110",
            "1,111011",
            "1101,1001"
        };
        
        // Base para conversão: Quaternária (4), Octal (8), Hexadecimal (16)
        int[] bases = {4, 8, 16};
        
        // Converte e exibe os resultados
        for (String binario : binarios) {
            System.out.println("Número binário: " + binario);
            for (int base : bases) {
                String convertido = dbin2base(base, binario);
                System.out.printf("Base %d: %s%n", base, convertido);
            }
            System.out.println();
        }
    }
}
