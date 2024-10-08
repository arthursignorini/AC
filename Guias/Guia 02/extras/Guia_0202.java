// Arthur Signorini Miranda - 848122

public class Guia_0202 {
    
    // Função para converter decimal para binário
    public static String double2bin(double numero) {
        // Parte inteira
        int parteInteira = (int) numero;
        // Parte decimal
        double parteDecimal = numero - parteInteira;
        
        // Converte a parte inteira
        StringBuilder binarioInteiro = new StringBuilder();
        if (parteInteira == 0) {
            binarioInteiro.append("0");
        } else {
            while (parteInteira > 0) {
                binarioInteiro.insert(0, parteInteira % 2);
                parteInteira /= 2;
            }
        }
        
        // Adiciona a vírgula decimal
        binarioInteiro.append(",");
        
        // Converte a parte decimal
        StringBuilder binarioDecimal = new StringBuilder();
        while (parteDecimal > 0 && binarioDecimal.length() < 10) { // Limita a 10 dígitos após a vírgula
            parteDecimal *= 2;
            if (parteDecimal >= 1) {
                binarioDecimal.append("1");
                parteDecimal -= 1;
            } else {
                binarioDecimal.append("0");
            }
        }
        
        return binarioInteiro.append(binarioDecimal).toString();
    }
    
    public static void main(String[] args) {
        // Números decimais para converter
        double[] decimais = {
            0.375000,
            2.125000,
            3.625000,
            5.03125,
            6.750000
        };
        
        // Converte e exibe os resultados
        for (double decimal : decimais) {
            String binario = double2bin(decimal);
            System.out.printf("%.6f em binário é %s%n", decimal, binario);
        }
    }
}
