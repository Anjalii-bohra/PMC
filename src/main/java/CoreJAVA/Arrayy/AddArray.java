package CoreJAVA.Arrayy;

import java.util.*;

public class AddArray {
    public static void main(String[] args) {
        int[][] arr1 = {{1, 2, 3}, {4, 5, 6}};
        int[][] arr2 = {{4, 5, 6}, {1, 3, 2}};
        int[][] sum = new int[2][3];

        // adding two 2D arrays element-wise
        for (int i = 0; i < arr1.length; i++) {
            for (int j = 0; j < arr1[0].length; j++) {
                sum[i][j] = arr1[i][j] + arr2[i][j];
            }
        }

        System.out.println("Resultant 2D array: ");
        for (int i = 0; i < sum.length; i++) {
            System.out.println(Arrays.toString(sum[i]));
        }
    }
}

