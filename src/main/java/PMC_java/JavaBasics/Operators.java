package CoreJAVA.JavaBasics;

public class Operators {
    public static void main (String[] args) {

        // Arithmetic operators
        int a = 10;
        int b = 3;
        System.out.println("a + b = " + (a + b));

        //Unary operators
        System.out.println("Postincrement : " + (a++));
        System.out.println("Preincrement : " + (++a));
        System.out.println("Postdecrement : " + (b--));
        System.out.println("Predecrement : " + (--b));

        // Assignment operators
        int f = 7;
        f += 3;
        System.out.println("f += 3: " + f);

        //Relational operators
        System.out.println("a > b: " + true);

        // Logical operators
        boolean x = true;
        boolean y = false;
        System.out.println("x && y: " + (x && y));

        //Ternary operators
        int c = 14, result;
        result  = ((a > b) ? (a > c) ? a : c : (b > c) ? b : c);
        System.out.println("Max of three numbers = " + result);

        //Bitwise operators

        //Shift operators
        System.out.println("a<<1 : " + (a << 1));


    }
}
