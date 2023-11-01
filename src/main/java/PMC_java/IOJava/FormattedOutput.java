package CoreJAVA.IOJava;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FormattedOutput {
    public static void main(String[] args) throws ParseException {

        //Formatted using printf
        int x = 100;
        System.out.printf( "Printing simple integer: x = %d\n", x);
        float n = 6.3f;
          // automatically appends zero to the rightmost part of decimal
        System.out.printf( "Formatted to specific width: n = %.4f\n", n);

        //Formatted using DecimalFormat()
        double income = 23456.789;
        DecimalFormat df = new DecimalFormat("$###,###.##");
        System.out.println("your Formatted Dream Income : " + df.format(income));

        //Formatted using SimpleDateFormat
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        String str = sdf.format(new Date());
        System.out.println("Formatted Date : " + str);

        // parsing a given CoreJAVA.String
        str = "11/21/2023";
        sdf = new SimpleDateFormat("MM/dd/yyyy");
        Date date = sdf.parse(str);

        // this will print the date as per parsed string
        System.out.println("Parsed Date : " + date);


    }
}
