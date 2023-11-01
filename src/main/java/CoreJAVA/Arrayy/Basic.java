package CoreJAVA.Arrayy;

import java.util.Arrays;
import java.util.List;

public class Basic {
        public static void main(String[] args) {
            // Declare an array of integers
            int[] numbers;

            // Initialize the array with values
            numbers = new int[] { 10, 20, 15, 22, 35 , 678, 88};

            // Access numbers1 of the array and print them
            System.out.println("Element at index 0: " + numbers[0]);

            // Calculate and print the length of the array
            int length = numbers.length;
            System.out.println("Length of the array: " + length);

            // Modify an element in the array
            numbers[2] = 10;

            // Print modified element
            System.out.println("Modified element at index 2: " + numbers[2]);

            // To convert the numbers1 as List
            System.out.println("Integer Array as List: "+ List.of(numbers));

            //To sort thr Array
            Arrays.sort(numbers);

            int key = 22;

            // Print the key and corresponding index
            System.out.println(key + " found at index = " + Arrays.binarySearch(numbers, key));

            int[] numbers1 = {23,76,5,88,34,678};
            // To compare both arrays
            System.out.println("Integer Arrays on comparison: " + Arrays.compare(numbers, numbers1));

            // To print the numbers1 in one line
            System.out.println("Integer Array: "+ Arrays.toString(numbers));

            System.out.println("\nNew Arrays by copyOf:\n");

            System.out.println("Integer Array: "  + Arrays.toString( Arrays.copyOf(numbers, 10)));

            System.out.println("\nNew Arrays by copyOfRange:\n");

            // To copy the array into an array of new length
            System.out.println("Integer Array: " + Arrays.toString( Arrays.copyOfRange(numbers, 1, 3)));

            // To compare both arrays
            System.out.println("Integer Arrays on comparison: "
                    + Arrays.equals(numbers, numbers1));

            int intKey = 22;

            Arrays.fill(numbers, intKey);

            // To fill the arrays
            System.out.println("Integer Array on filling: "
                    + Arrays.toString(numbers));

            // To compare both arrays
            System.out.println("The element mismatched at index: "
                    + Arrays.mismatch(numbers, numbers1));
            
            
            
        }
    }


