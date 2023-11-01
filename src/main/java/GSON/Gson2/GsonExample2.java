package GSON.Gson2;

import GSON.Gson1.Staff;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

    public class GsonExample2 {

        public static void main(String[] args) {

            Gson gson = new GsonBuilder().setPrettyPrinting().create();

            try (Reader reader = new FileReader("C:\\Users\\bohraa\\IdeaProjects\\GSON-Demo\\src\\main\\java\\org\\example\\Gson1\\staff.json")) {

                // Convert JSON File to Java Object
                Staff staff = gson.fromJson(reader, Staff.class);

                // print staff object
                System.out.println(staff);

                String jsonInString = gson.toJson(staff);

                System.out.println(jsonInString);

            } catch (IOException e) {
                e.printStackTrace();
            }

        }

    }
