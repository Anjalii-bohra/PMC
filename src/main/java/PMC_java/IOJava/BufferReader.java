package CoreJAVA.IOJava;

import java.io.*;

public class BufferReader {
    public static void main(String[] args) throws IOException {
        BufferedReader kb = new BufferedReader(new InputStreamReader(System.in));
        System.out.print("Enter your name: ");
        String str = kb.readLine();
        System.out.println(str);
    }
}
