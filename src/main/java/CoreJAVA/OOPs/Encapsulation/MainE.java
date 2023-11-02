package CoreJAVA.OOPs.Encapsulation;

//encapsulation as same code bundled together
class Area {
    int length;
    int breadth;

    // initialize values
    Area(int length, int breadth) {
        this.length = length;
        this.breadth = breadth;
    }

    // calculate area
    public void getArea() {
        int area = length * breadth;
        System.out.println("AreaD: " + area);
    }
}

class MainE {
    public static void main(String[] args) {
        AreaD rectangle = new AreaD(5, 6);
        rectangle.getArea();
    }
}