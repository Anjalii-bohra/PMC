package CoreJAVA.String;

public class StringFunctionsSet2 {
    public static void main(String[] args) {
        // Considering random string for input
        String str = "PMC Trainee";
        System.out.println("Original CoreJAVA.String : " + str);

        // to show usage of codePointAt()
        int result_1 = str.codePointAt(0);
        System.out.println("unicode point at 0 : " +result_1);

        // to shaw usage of codePointBefore()
        int result_2 = str.codePointBefore(3);
        System.out.println("Unicode point before index 3 : " + result_2);

        //


    }
}
