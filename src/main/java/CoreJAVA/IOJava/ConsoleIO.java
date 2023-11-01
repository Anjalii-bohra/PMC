package CoreJAVA.IOJava;

public class ConsoleIO {
    // Java program to demonstrate working of System.console()
        public static void main(String[] args)
        {
            // Using Console to input data from user
            String name = System.console().readLine();

            System.out.println("You entered string " + name);
        }

}

