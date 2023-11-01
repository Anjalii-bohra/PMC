package CoreJAVA.String;

import java.util.StringTokenizer;

public class StringTokenizerClass {
     public static void main(String[] args) {
            // Input string to be tokenized
            String inputString = "Hello, World! This is a simple example.";

            // Create a StringTokenizer with the input string and a delimiter (in this case, space and comma)
            StringTokenizer tokenizer = new StringTokenizer(inputString, " ,");

            // Iterate through the tokens and print them
            while (tokenizer.hasMoreTokens()) {
                String token = tokenizer.nextToken();
                System.out.println("Token: " + token);
            }
        }
    }

