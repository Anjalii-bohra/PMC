package DSA;

import java.util.Scanner;
import java.util.Stack;

public class ReverseString {
    public static String reverseString(String str) {
        char[] reverseString = new char[str.length()];
        Stack<Character> stack = new Stack<>();

        for (int i = 0; i < str.length(); i++) {
            stack.push(str.charAt(i));
        }

        int i = 0;
        while (!stack.isEmpty()) {
            reverseString[i++] = stack.pop();
        }

        return new String(reverseString);
    }

    public static void main(String[] args) {
        System.out.println("Hello, World!");

        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a String: ");
        String inputString = sc.next();
        sc.close();

        String reversedString = reverseString(inputString);

        System.out.println("Original String: " + inputString);
        System.out.println("Reversed String: " + reversedString);
    }
}
