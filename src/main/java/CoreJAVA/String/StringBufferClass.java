package CoreJAVA.String;
/*Constructors of StringBuffer class
      1. StringBuffer(): It reserves room for 16 characters without reallocation
           StringBuffer s = new StringBuffer();
      2. StringBuffer( int size): It accepts an integer argument that explicitly sets the size of the buffer.
           StringBuffer s = new StringBuffer(20);
      3. StringBuffer(CoreJAVA.String str): It accepts a string argument that sets the initial contents of the StringBuffer object and reserves room for 16 more characters without reallocation.
           StringBuffer s = new StringBuffer("GeeksforGeeks");*/

public class StringBufferClass {
    public static void main(String[] args) {
        StringBuffer stringBuffer = new StringBuffer("Project Trainee PMC");

        // Append text at the end
        stringBuffer.append(" Welcome");

        // length of the StringBuffer
        int length = stringBuffer.length();
        System.out.println("Length of the StringBuffer: " + length);

        // total allocated capacity of the StringBuffer
        int capacity = stringBuffer.capacity();
        System.out.println("Capacity of the StringBuffer: " + capacity);

        // character at a specified index
        char charAtIndex = stringBuffer.charAt(7);
        System.out.println("Character at index 7: " + charAtIndex);

        // Delete a sequence of characters
        stringBuffer.delete(6, 12);
        System.out.println("After deleting a sequence of characters : " + stringBuffer.toString());

        // Delete a character at a specified index
        stringBuffer.deleteCharAt(0);
        System.out.println("After Deleting a character at a specified index: " + stringBuffer.toString());

        // Ensure capacity is at least equal to a given minimum
        stringBuffer.ensureCapacity(20);

        // Insert text at a specified index position
        stringBuffer.insert(0, "Hi, ");

        // Get the updated length
        int newLength = stringBuffer.length();
        System.out.println("Updated Length of the StringBuffer: " + newLength);

        // Reverse the characters within the StringBuffer
        stringBuffer.reverse();
        System.out.println("Reversing a string: " + stringBuffer.toString());

        stringBuffer.reverse();

        // Print result
        System.out.println("Final StringBuffer: " + stringBuffer.toString());
    }
}
