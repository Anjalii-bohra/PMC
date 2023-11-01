package SDP.CompositionOverInheritance;

// Base class for animals
class Animal {
    void eat() {
        System.out.println("Animal is eating.");
    }
}

// Inheritance: A class that extends Animal
class Dog extends Animal {
    void bark() {
        System.out.println("Dog is barking.");
    }
}

// Inheritance: Another class that extends Animal
class Bird extends Animal {
    void fly() {
        System.out.println("Bird is flying.");
    }
}

// Composition: A class that has references to Animal and additional behavior
class Dolphin {
    private final Animal animal;

    public Dolphin() {
        this.animal = new Animal();
    }

    void swim() {
        System.out.println("Dolphin is swimming.");
    }

    void eat() {
        // Delegate to the underlying Animal object
        animal.eat();
    }
}

// Composition: Another class that has references to Animal and additional behavior
class Penguin {
    private final Animal animal;

    public Penguin() {
        this.animal = new Animal();
    }

    void slide() {
        System.out.println("Penguin is sliding on ice.");
    }

    void eat() {
        // Delegate to the underlying Animal object
        animal.eat();
    }
}

public class CompositionOverInheritance {
    public static void main(String[] args) {
        Dog dog = new Dog();
        dog.eat();
        dog.bark();

        Bird bird = new Bird();
        bird.eat();
        bird.fly();

        Dolphin dolphin = new Dolphin();
        dolphin.eat();
        dolphin.swim();

        Penguin penguin = new Penguin();
        penguin.eat();
        penguin.slide();
    }
}
