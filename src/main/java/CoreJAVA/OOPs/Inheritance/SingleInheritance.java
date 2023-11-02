package CoreJAVA.OOPs.Inheritance;

class Bicycle {
    int gear, speed;
    Bicycle(int gear, int speed){
        this.gear = gear;
        this.speed= speed;
    }

    public String applyBrake(int decrement)
    {
        speed -= decrement;
        return ("Speed is: "+speed);
    }

    public void speedUp(int increment)
    {
        speed += increment;
    }

    public String toString()
    {
        return ("No of gears are " + gear + "\n"
                + "speed of bicycle is " + speed);
    }
}

// derived class
class MountainBike extends Bicycle {
    public int seatHeight;

    public MountainBike(int gear, int speed, int startHeight) {
        super(gear, speed);
        seatHeight = startHeight;
    }

    public void setHeight(int newValue) {
        seatHeight = newValue;
    }

    @Override
    public String toString()
    {
        System.out.println("In derived class");
        return (super.toString() + "\nseat height is "
                + seatHeight);
    }
}

public class SingleInheritance {
    public static void main(String[] args) {
        Bicycle o1 = new Bicycle(3,56);
        o1.applyBrake(5);
        MountainBike o2 = new MountainBike(5,130,20);
        o2.toString();
        o2.speedUp(20);
    }
}

