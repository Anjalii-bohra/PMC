package CoreJAVA.FlowControl;

public class Breakk {

        // Main driver method
        public static void main(String[] args)
        {
            // Using do-While loop

            // Creating and initializing a variable
            // over which execution occurs
            int i = 0;

            // do loop consisting of executable statements
            do {
                if (i == 80) {

                    // Incrementing variable by 5
                    i += 5;

                    // Using Break keyword to
                    // suspend loop when i become 80
                    break;
                }

                System.out.print(i + " ");
                // Printing elements to show break usage

                i += 5;
            }
            // Condition check
            while (i <= 100);
        }
    }


