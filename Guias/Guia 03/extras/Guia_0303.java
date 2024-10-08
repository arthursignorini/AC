// Arthur Signorini Miranda - 848122

public class Guia_0303 {

    public static void main(String[] args) {
        // Define data
        String a = "10110";  // 10110(2)
        String b = "110011"; // 110011(2)
        String c = "100100"; // 100100(2)
        String d = "1011011"; // 1011011(2)
        String e = "1110011"; // 1110011(2)

        // Process and display results
        System.out.println("a = " + a);
        processBinary(a);

        System.out.println("b = " + b);
        processBinary(b);

        System.out.println("c = " + c);
        processBinaryAndPrintBinary(c);

        System.out.println("d = " + d);
        processBinaryAndPrintBinary(d);

        System.out.println("e = " + e);
        processBinaryAndPrintHexadecimal(e);
    }

    private static void processBinary(String binary) {
        // Subtract 1 from the binary number
        int value = Integer.parseInt(binary, 2) - 1;
        // Convert to binary string
        String subtractedBinary = Integer.toBinaryString(value);
        // Invert bits
        String invertedBinary = invertBits(subtractedBinary, binary.length());

        // Print results
        System.out.println("Subtract 1 = " + zeroPad(subtractedBinary, binary.length()));
        System.out.println("Inverted = " + invertedBinary);
        System.out.println("Decimal = " + Integer.parseInt(invertedBinary, 2));
    }

    private static void processBinaryAndPrintBinary(String binary) {
        // Subtract 1 from the binary number
        int value = Integer.parseInt(binary, 2) - 1;
        // Convert to binary string
        String subtractedBinary = Integer.toBinaryString(value);
        // Invert bits
        String invertedBinary = invertBits(subtractedBinary, binary.length());

        // Print results
        System.out.println("Subtract 1 = " + zeroPad(subtractedBinary, binary.length()));
        System.out.println("Inverted = " + invertedBinary);
    }

    private static void processBinaryAndPrintHexadecimal(String binary) {
        // Subtract 1 from the binary number
        int value = Integer.parseInt(binary, 2) - 1;
        // Convert to binary string
        String subtractedBinary = Integer.toBinaryString(value);
        // Invert bits
        String invertedBinary = invertBits(subtractedBinary, binary.length());
        // Convert to hexadecimal
        String hex = Integer.toHexString(Integer.parseInt(invertedBinary, 2)).toUpperCase();

        // Print results
        System.out.println("Subtract 1 = " + zeroPad(subtractedBinary, binary.length()));
        System.out.println("Inverted = " + invertedBinary);
        System.out.println("Hexadecimal = " + hex);
    }

    private static String invertBits(String binary, int length) {
        // Ensure the length of the binary string matches the required length
        binary = zeroPad(binary, length);
        StringBuilder inverted = new StringBuilder();
        for (char bit : binary.toCharArray()) {
            inverted.append(bit == '0' ? '1' : '0');
        }
        return inverted.toString();
    }

    private static String zeroPad(String binary, int length) {
        // Pad the binary string with leading zeros to match the required length
        while (binary.length() < length) {
            binary = "0" + binary;
        }
        return binary;
    }
}
