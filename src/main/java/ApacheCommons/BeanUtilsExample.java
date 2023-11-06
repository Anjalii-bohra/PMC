package ApacheCommons;

import org.apache.commons.beanutils.BeanUtils;

//Apache Commons BeanUtils simplifies bean population and manipulation.
public class BeanUtilsExample {
    public static void main(String[] args) {
        Person source = new Person("Alice", 25);
        Person destination = new Person();

        try {
            BeanUtils.copyProperties(destination, source);
            System.out.println("Destination: " + destination.getName() + ", " + destination.getAge());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}