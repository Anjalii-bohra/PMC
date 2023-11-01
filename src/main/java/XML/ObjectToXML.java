package XML;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import java.io.FileOutputStream;

public class ObjectToXML {
    public static void main(String[] args) throws Exception {
        try {
            JAXBContext contextObj = JAXBContext.newInstance(Employees.class);

            Marshaller marshallerObj = contextObj.createMarshaller();
            marshallerObj.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);

            Employees emp1 = new Employees(1, "Vimal Jaiswal", 50000);

            marshallerObj.marshal(emp1, new FileOutputStream("employee.xml"));
            System.out.println("Marshaling completed. object to XML");
        } catch (JAXBException e) {
            e.printStackTrace();
        }
    }
}
