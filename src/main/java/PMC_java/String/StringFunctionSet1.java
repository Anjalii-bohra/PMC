package CoreJAVA.String;

public class StringFunctionSet1 {
    public static void main(String[] args) {
        String s = " I am a Project Trainee at PMC ";
        //Returns No. of characters
        System.out.println("No. of characters " +s.length());

        //Returns the character at ith index.
        int i = s.charAt(7);
        System.out.println("Characters at ith index " +i);

        //Return the substring from the ith  index character to end.
        System.out.println("substring from the ith index character to end./t"+s.substring(8));

        //Returns the substring from i to j-1 index.
        System.out.println("substring from i to j-1 index: " +s.substring(4,12));

        //Concatenates specified string to the end of this string.
        String s1 = "I am from Babaria";
        String output = s.concat(s1);
        System.out.println(" "+output);

        //Returns the index within the string of the first occurrence of the specified string.
        System.out.println("the index of string of first occurrence : " +s.indexOf("PMC"));

        //Returns the index within the string of the first occurrence of the specified string, starting at the specified index.
//        System.out.println("index within string " );

        //Returns the index within the string of the last occurrence of the specified string.
        System.out.println("index within string :: last occurrence "+s.lastIndexOf("Trainee") );

        //Compares this string to the specified object.
        boolean out = "Anjali".equals("Anjaliii");
        System.out.println("Compares string to object" +out);

        //Compares string to another string, ignoring case considerations.
        System.out.println("Ignore Case"+("Sukanya".equalsIgnoreCase("sukanya")));

        //Compares two string lexicographically.
//        System.out.println("" +s.substring(4,12));

        //Compares two string lexicographically, ignoring case considerations.
//        System.out.println("substring from i to j-1 index" +s.substring(4,12));

        // Converts all the characters in the CoreJAVA.String to lower case
        System.out.println("Character to lower case" +s.toLowerCase());

        //Converts all the characters in the CoreJAVA.String to upper case
        System.out.println("Character to upper case" +s.toUpperCase());

        //Returns the copy of the CoreJAVA.String, by removing whitespaces at both ends. It does not affect whitespaces in the middle.
        System.out.println("trim" +s.trim());

        //Returns new string by replacing all occurrences of oldChar with newChar.
        String str1 = s.replace('A','B');
        System.out.println("replace" +str1);
    }
}
