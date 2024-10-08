// Arthur Signorini Miranda - 848122

public class Guia_0201 {
    
    // Função para converter binário para decimal
    public static double bin2double(String binario) {
        int pontoIndex = binario.indexOf(',');
        if (pontoIndex == -1) {
            pontoIndex = binario.length();
        }
        
        String parteInteira = binario.substring(0, pontoIndex);
        String parteDecimal = binario.substring(pontoIndex + 1);
        
        double decimal = 0.0;
        
        // Converte a parte inteira
        for (int i = 0; i < parteInteira.length(); i++) {
            if (parteInteira.charAt(parteInteira.length() - 1 - i) == '1') {
                decimal += Math.pow(2, i);
            }
        }
        
        // Converte a parte decimal
        for (int i = 0; i < parteDecimal.length(); i++) {
            if (parteDecimal.charAt(i) == '1') {
                decimal += Math.pow(2, -(i + 1));
            }
        }
        
        return decimal;
    }
    
    public static void main(String[] args) {
        // Números binários para converter
        String[] binarios = {
            "0,00011",
            "0,01001",
            "0,10101",
            "1,11101",
            "11,11001"
        };
        
        // Converte e exibe os resultados
        for (String binario : binarios) {
            double decimal = bin2double(binario);
            System.out.printf("%s em decimal é %.5f%n", binario, decimal);
        }
    }
}
