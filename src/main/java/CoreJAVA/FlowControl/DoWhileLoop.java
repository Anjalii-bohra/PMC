package CoreJAVA.FlowControl;

public class DoWhileLoop{
    public static void main(String[] args)
    {

        int row = 1, column = 1;
        do {
            column = 1;
            do {
                System.out.print(column + " ");
                column++;

            } while (column <= 5);
            System.out.println(" ");
            row++;
        } while (row <= 5);
    }
}