package CoreJAVA.JavaBasics;
import java.util.*;
public class DataTypes {
    public static void main(String[] args)
    {
        System.out.println("PRIMITIVE DATA TYPES");
        char a = 'G';
        int i = 89;
        byte b = 4;
        short s = 56;
        double d = 4.355453532;
        float f = 4.7333434f;
        long l = 12121;

        System.out.println("char: " + a);
        System.out.println("integer: " + i);
        System.out.println("byte: " + b);
        System.out.println("short: " + s);
        System.out.println("float: " + f);
        System.out.println("double: " + d);
        System.out.println("long: " + l);

        System.out.println("\nREFERENCE DATA TYPES");
        int[] c = { 10, 20, 30, 40 };
        System.out.println("Array c: " + Arrays.toString(c));
    }
}

