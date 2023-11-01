package CoreJAVA.IOJava;

import java.util.Scanner;

public class ScannerIO {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter your Name: ");
        String name = sc.nextLine();

        System.out.println("Enter your Age: ");
        int age = sc.nextInt();

        System.out.println("Enter your Salary: ");
        float salary = sc.nextFloat();
    }
}
