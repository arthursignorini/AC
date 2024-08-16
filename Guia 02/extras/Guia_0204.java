// Arthur Signorini Miranda - 848122

public class Guia_0204 {

    // Função para converter um número de uma base para outra
    public static String dbase2base(int base1, int base2, String numero) {
        // Converte o número da base1 para decimal
        double decimal = baseNtoDecimal(base1, numero);
        
        // Converte o número decimal para a base2
        return decimalToBaseN(base2, decimal);
    }
    
    // Função para converter um número da base N para decimal
    private static double baseNtoDecimal(int base, String numero) {
        int pontoIndex = numero.indexOf(',');
        if (pontoIndex == -1) {
            pontoIndex = numero.length();
        }
        
        String parteInteira = numero.substring(0, pontoIndex);
        String parteDecimal = numero.substring(pontoIndex + 1);
        
        // Converte a parte inteira
        int inteiroDecimal = Integer.parseInt(parteInteira, base);
        
        // Converte a parte decimal
        double decimal = 0;
        for (int i = 0; i < parteDecimal.length(); i++) {
            char c = parteDecimal.charAt(i);
            int valor = Character.digit(c, base);
            decimal += valor * Math.pow(base, -(i + 1));
        }
        
        return inteiroDecimal + decimal;
    }
    
    // Função para converter um número decimal para a base N
    private static String decimalToBaseN(int base, double numero) {
        // Parte inteira
        int parteInteira = (int) numero;
        // Parte decimal
        double parteDecimal = numero - parteInteira;
        
        StringBuilder baseNInteiro = new StringBuilder();
        if (parteInteira == 0) {
            baseNInteiro.append("0");
        } else {
            while (parteInteira > 0) {
                baseNInteiro.insert(0, Integer.toString(parteInteira % base, base).toUpperCase());
                parteInteira /= base;
            }
        }
        
        // Adiciona a vírgula decimal
        baseNInteiro.append(",");
        
        // Converte a parte decimal
        StringBuilder baseNDecimal = new StringBuilder();
        for (int i = 0; i < 10 && parteDecimal > 0; i++) { // Limita a 10 dígitos após a vírgula
            parteDecimal *= base;
            int digit = (int) parteDecimal;
            baseNDecimal.append(Integer.toString(digit, base).toUpperCase());
            parteDecimal -= digit;
        }
        
        return baseNInteiro.append(baseNDecimal).toString();
    }
    
    public static void main(String[] args) {
        // Números e bases para conversão
        String[] numeros = {
            "0,321",  // Base 4 para Base 2
            "0,3D2",  // Base 16 para Base 4
            "0,751",  // Base 8 para Base 2
            "7,345",  // Base 8 para Base 4
            "F,A5E"   // Base 16 para Base 4
        };
        
        int[] basesOrigem = {4, 16, 8, 8, 16};
        int[] basesDestino = {2, 4, 2, 4, 4};
        
        // Converte e exibe os resultados
        for (int i = 0; i < numeros.length; i++) {
            String convertido = dbase2base(basesOrigem[i], basesDestino[i], numeros[i]);
            System.out.printf("Número na base %d: %s%n", basesOrigem[i], numeros[i]);
            System.out.printf("Convertido para a base %d: %s%n", basesDestino[i], convertido);
            System.out.println();
        }
    }
}
