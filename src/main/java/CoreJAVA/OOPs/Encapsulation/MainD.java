package CoreJAVA.OOPs.Encapsulation;
//Data hiding using Encapsulation as we made length and breath private limiting their access from outside classes
class AreaD {
    private int length;
    private int breadth;

    // initialize values
    AreaD(int length, int breadth) {
        this.length = length;
        this.breadth = breadth;
    }
    // calculate area
    public void getArea() {
        int area = length * breadth;
        System.out.println("AreaD: " + area);
    }
}

class MainD {
    public static void main(String[] args) {
        AreaD rectangle = new AreaD(5, 6);
        rectangle.getArea();
    }
}