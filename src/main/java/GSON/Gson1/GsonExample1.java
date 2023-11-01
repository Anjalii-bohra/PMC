
package GSON.Gson1;


import com.google.gson.Gson;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class GsonExample1 {

    public static void main(String[] args) {


        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        Staff staff = createStaffObject();

        // Java objects to String
         String json = gson.toJson(staff);

        // Java objects to File
        try (FileWriter writer = new FileWriter("C:\\Users\\bohraa\\IdeaProjects\\GSON-Demo\\src\\main\\java\\org\\example\\Gson1\\staff.json")) {
            gson.toJson(staff, writer);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private static Staff createStaffObject() {

        Staff staff = new Staff();

        staff.setName("pmc");
        staff.setAge(35);
        staff.setPosition(new String[]{"Founder", "CTO", "Writer"});
        staff.setSkills(Arrays.asList("java", "python", "node", "kotlin"));

        return staff;

    }

}