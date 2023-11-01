package CoreJAVA.IOJava;



public class CommandLine {
    public static void main(String [] args) {
            // check if length of args array is greater than 0
            if (args.length > 0) {
                System.out.println(
                        "The command line arguments are:");
                //print the arguments using foreach loop
                for (String val : args)
                    System.out.println(val);
            }
            else
                System.out.println("No command line arguments found.");
        }
    }
