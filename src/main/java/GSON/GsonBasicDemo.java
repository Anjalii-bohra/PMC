package org.example;

import com.google.gson.Gson;

public class GsonBasicDemo {
    public static void main(String[] args) {
        // Create a Gson instance
        Gson gson = new Gson();

        // Create a sample Java object
        Person person = new Person("John", 30);

        // Serialize the Java object to JSON
        String Serializedjson = gson.toJson(person);

        // Print the JSON representation
        System.out.println("Serialized JSON:");
        System.out.println(Serializedjson);

        // Deserialize JSON back to a Java object
        Person deserializedPerson = gson.fromJson(Serializedjson, Person.class);

        // Access the deserialized object's properties
        System.out.println("\nDeserialized Object:");
        System.out.println("Name: " + deserializedPerson.getName());
        System.out.println("Age: " + deserializedPerson.getAge());
    }
}

class Person {
    private String name;
    private int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }
}
