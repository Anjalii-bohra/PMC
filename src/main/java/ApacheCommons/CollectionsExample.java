package ApacheCommons;

//import org.apache.commons.collections4.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

//Apache Commons Collections provides additional collection classes and utilities that are not available in the
// standard Java Collections framework
public class CollectionsExample {
    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        list.add("Alice");
        list.add("Bob");
        list.add("Charlie");

//        CollectionUtils.forAllDo(list, element -> System.out.println("Hello, " + element));
    }
}
