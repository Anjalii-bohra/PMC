package CoreJAVA.JavaBasics;


public class InstanceOfOperator {
    public static void main(String[] args) {
    bus b1 = new bus();
    bus b2 = new passenger();
    System.out.println("b1 instanceof bus: " + (b1 instanceof bus));
    System.out.println("b2 instanceof bus: " + (b2 instanceof bus));
    System.out.println("b1 instanceof passanger: " + (b1 instanceof passenger ));
    System.out.println("b2 instanceof sleep: " + (b2 instanceof sleep));
    }

}
class bus{
}
class passenger extends bus implements sleep{
}
interface sleep{
}
