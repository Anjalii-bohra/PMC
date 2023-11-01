package CoreJAVA.Arrayy;

class JaggedArray {
    public static void main(String[] args)
    {
        // declaring a 2D array with 2 rows
        int jagged[][] = new int[2][];

        // not specifying the 2nd dimension,
        // and making it as jagged array
        // first row has 2 columns
        jagged[0] = new int[2];
        // second row has 4 columns
        jagged[1] = new int[4];
        // Initializing the array
        int count = 0;
        for (int i = 0; i < jagged.length; i++) {
            // remember to use jagged[i].length instead of
            // jagged[0].length, since every row has
            // different number of columns
            for (int j = 0; j < jagged[i].length; j++) {
                jagged[i][j] = count++;
            }
        }

        // printing the values of 2D Jagged array
        System.out.println("The values of 2D jagged array");
        for (int i = 0; i < jagged.length; i++) {
            for (int j = 0; j < jagged[i].length; j++)
                System.out.printf(jagged[i][j] + " ");
            System.out.println();
        }
    }
}
