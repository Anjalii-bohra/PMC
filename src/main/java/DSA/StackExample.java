package DSA;

import java.util.Stack;

public class StackExample {
    public static void main(String[] args) {
        Stack<Integer> stack = new Stack<>();

        // Push (add) elements to the stack
        stack.push(10);
        stack.push(20);
        stack.push(30);

        System.out.println("Top element: " + stack.peek());

        // Pop (remove) elements from the stack
        int poppedElement = stack.pop();
        System.out.println("Popped element: " + poppedElement);

        System.out.println("Is the stack empty? " + stack.isEmpty());
        System.out.println("Stack size: " + stack.size());
    }
}
