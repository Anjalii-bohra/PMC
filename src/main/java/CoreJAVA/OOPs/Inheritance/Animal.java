package CoreJAVA.OOPs.Inheritance;


// Base class for animals
class Animal {
    void eat() {
        System.out.println("Animal is eating.");
    }
}

// Single Inheritance: A class that extends Animal
class Dog extends Animal {
    void bark() {
        System.out.println("Dog is barking.");
    }
}

// Another class that extends Animal
class Bird extends Animal {
    void fly() {
        System.out.println("Bird is flying.");
    }
}

// Multilevel Inheritance: A class extends Birds
class Sparrow extends Bird {
    @Override
    void fly(){ System.out.println("Sparrow flys as well as eats");}
}

class Main{
    public static void main(String[] args) {
        Sparrow s1 = new Sparrow();
        s1.fly();
        Bird b1 = (Bird) new Animal();
        b1.fly();
        Dog d = new Dog();
        d.eat();
    }
}