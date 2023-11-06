package ApacheCommons;

import org.apache.commons.lang3.StringUtils;

//Apache Commons Lang is a utility library that provides classes and methods to work with common operations on strings,
// numbers, and dates, making Java code more readable and efficient.
public class StringUtilsExample {
    public static void main(String[] args) {
        String text = "Hello, World!";
        if (StringUtils.isNotBlank(text)) {
            System.out.println("Text is not empty or null.");
        }
    }
}
