
import java.io.*;
import java.util.*;

public class ProjectSWHW {

    public static void main(String[] args) throws IOException {
        
        String[] dataList = null;
        String data = "";
        try {

            FileReader file_reader = new FileReader("mult.txt");
            Scanner input = new Scanner(file_reader);

            while (input.hasNextLine()) {
                data += input.nextLine() + ";";
            }
            dataList = data.split(";");

        } catch (IOException e) {
            e.printStackTrace();
        }
        
        System.out.println(" ROM Address is : ");

        String oprator = "", operand1 = "", operand2 = "";
        int index = 0;

        for (int i = 0; i < dataList.length; i++) {
            String[] segment = dataList[i].split(" ");
            if (segment[0].equals("Load")) {

                oprator = "00";
                switch (segment[1]) {
                    case "R0,":
                        operand1 = "00";
                        break;
                    case "R1,":
                        operand1 = "01";
                        break;
                    case "R2,":
                        operand1 = "10";
                        break;
                    case "R3,":
                        operand1 = "11";
                        break;
                    default:
                        break;
                }

                System.out.println("m(" + index + ") <= \"" + oprator + operand1 + "11" + "\" ;");
                index++;
                String value = "000000" + (Integer.toBinaryString(Integer.parseInt(segment[2]))).toString();
                System.out.println("m(" + index + ") <= \"" + value.substring(value.length() - 6, value.length()) + "\" ;");

            } else if (segment[0].equals("Add")) {
                oprator = "01";

                switch (segment[1]) {
                    case "R0,":
                        operand1 = "00";
                        break;
                    case "R1,":
                        operand1 = "01";
                        break;
                    case "R2,":
                        operand1 = "10";
                        break;
                    case "R3,":
                        operand1 = "11";
                        break;

                    default:
                        break;
                }

                switch (segment[2]) {
                    case "R0":
                        operand2 = "00";
                        break;
                    case "R1":
                        operand2 = "01";
                        break;
                    case "R2":
                        operand2 = "10";
                        break;
                    case "R3":
                        operand2 = "11";
                        break;

                    default:
                        operand2 = "00";
                        break;
                }

                System.out.println("m(" + index + ") <= \"" + oprator + operand1 + operand2 + "\" ;");

            } else if (segment[0].equals("Sub")) {
                oprator = "10";
                switch (segment[1]) {
                    case "R0,":
                        operand1 = "00";
                        break;
                    case "R1,":
                        operand1 = "01";
                        break;
                    case "R2,":
                        operand1 = "10";
                        break;
                    case "R3,":
                        operand1 = "11";
                        break;

                    default:
                        break;
                }

                switch (segment[2]) {
                    case "R0":
                        operand2 = "00";
                        break;
                    case "R1":
                        operand2 = "01";
                        break;
                    case "R2":
                        operand2 = "10";
                        break;
                    case "R3":
                        operand2 = "11";
                        break;

                    default:
                        operand2 = "00";
                        break;
                }

                System.out.println("m(" + index + ") <= \"" + oprator + operand1 + operand2 + "\" ;");

            } else if (segment[0].equals("Jnz")) {
                oprator = "11";
                switch (segment[1]) {
                    case "R0,":
                        operand1 = "00";
                        break;
                    case "R1,":
                        operand1 = "01";
                        break;
                    case "R2,":
                        operand1 = "10";
                        break;
                    case "R3,":
                        operand1 = "11";
                        break;

                    default:
                        break;
                }

                System.out.println("m(" + index + ") <= \"" + oprator + operand1 + "11" + "\" ;");
                index++;
                String value = "000000" + (Integer.toBinaryString(Integer.parseInt(segment[2]))).toString();
                System.out.println("m(" + index + ") <= \"" + value.substring(value.length() - 6, value.length()) + "\" ;");

            } else if (segment[0].equals("Hlt")) {
                System.out.println("m(" + index + ") <= \"" + "000000" + "\" ;");
                break;
            }
            index++;
        }
        System.out.println();    
    }

}
