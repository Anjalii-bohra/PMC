package ApacheCommons;

import org.apache.commons.math3.util.ArithmeticUtils;

//Apache Commons Math provides mathematical and statistical utilities.
public class MathExample {
    public static void main(String[] args) {
        int n = 5;
        long factorial = ArithmeticUtils.factorial(n);
        System.out.println("Factorial of " + n + " is " + factorial);
    }
}