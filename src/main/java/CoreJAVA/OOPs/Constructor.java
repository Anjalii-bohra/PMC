package CoreJAVA.OOPs;

public class Constructor {

    int a;
    Constructor(){
        System.out.println("Default Constructor");
    }
    Constructor(int a ){
        this.a = a ;
        System.out.println("Parameter constructor \t value of a : " +a);
    }
    Constructor(Constructor obj2){
        this.a = obj2.a;
        System.out.println("Copy constructor \t value of a : " +a);
    }

    public static void main(String[] args) {
        Constructor obj1 = new Constructor();

        Constructor obj2 = new Constructor(45);

        Constructor obj3 = new Constructor(obj1);

        System.out.println("Types of Constructors");
    }
}
