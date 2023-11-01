//package XML;
//
//import javax.xml.bind.JAXBContext;
//import javax.xml.bind.JAXBException;
//import javax.xml.bind.Unmarshaller;
//import java.io.File;
//
//public class XMLToObject {
//    public static void main(String[] args) {
//        try {
//            File file = new File("employee.xml");
//            JAXBContext jaxbContext = JAXBContext.newInstance(Employees.class);
//            Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
//            Employees e = (Employees) jaxbUnmarshaller.unmarshal(file);
//            System.out.println(e.getId() + " " + e.getName() + " " + e.getSalary());
//
//        } catch (
//                JAXBException e) {
//            e.printStackTrace();
//        }
//    }
//}
