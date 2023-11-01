package CoreJAVA.String;
/*
Constructors in Java StringBuilder Class
StringBuilder(): Constructs a string builder with no characters in it and an initial capacity of 16 characters.
StringBuilder(int capacity): Constructs a string builder with no characters in it and an initial capacity specified by the capacity argument.
StringBuilder(CharSequence seq): Constructs a string builder that contains the same characters as the specified CharSequence.
StringBuilder(CoreJAVA.String str): Constructs a string builder initialized to the contents of the specified string.
 */
public class StringBuilderClass {
        public static void main(String[] args) {

            StringBuilder stringBuilder = new StringBuilder("Hello, World!");

            // Append text at the end of the existing text
            stringBuilder.append(" Welcome");

            // Get the length of the StringBuilder
            int length = stringBuilder.length();
            System.out.println("Length of the StringBuilder: " + length);

            // Get the character at a specified index
            char charAtIndex = stringBuilder.charAt(7);
            System.out.println("Character at index 7: " + charAtIndex);

            // Delete a sequence of characters (e.g., " World")
            stringBuilder.delete(6, 12);

            // Delete a character at a specified index (e.g., 'W')
            stringBuilder.deleteCharAt(0);

            // Insert text at a specified index position
            stringBuilder.insert(0, "Hi, ");

            // Replace text at a specified range (e.g., replace "lo" with "Lola")
            stringBuilder.replace(3, 5, "Lola");

            // Get the updated length
            int newLength = stringBuilder.length();
            System.out.println("Updated Length of the StringBuilder: " + newLength);

            // Reverse the characters within the StringBuilder
            stringBuilder.reverse();
            System.out.println("Reversed StringBuilder: " + stringBuilder.toString());

            stringBuilder.reverse();

            // Print the final result
            System.out.println("Final StringBuilder: " + stringBuilder.toString());
        }
}

