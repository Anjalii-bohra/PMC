package CoreJAVA.OOPs.Abstraction;

// Abstract class
abstract class Animals {
    // Abstract method (does not have a body)
    public abstract void animalSound();
    // Regular method
    public void sleep() {
        System.out.println("Zzz");
    }
}

// Subclass (inherit from Animals)
class Dog extends Animals {
    public void animalSound() {
        // The body of animalSound() is provided here
        System.out.println("The dog barks");
    }
}

class Main {
    public static void main(String[] args) {
        Dog d = new Dog(); // Create a Pig object
        d.animalSound();
        d.sleep();
    }
}
