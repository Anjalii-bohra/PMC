package CoreJAVA.Arrayy;

import java.lang.reflect.Array;
import java.util.Arrays;

public class ReflexionArray {
    // create an integer array of size 5, using the Array class and newInstance method:
    public static void main(String[] args) {
        // Get the size of the array
        int sizeOfArray = 5;

        int[] intArray = (int[]) Array.newInstance(int.class, sizeOfArray);
        Array.setInt(intArray, 0, 12);
        // Printing the Array content
        System.out.println(Arrays.toString(intArray));
    }
}


