package DSA;

public class CustomStack {
    private int maxSize; // Maximum size of the stack
    private int top;     // Index of the top element
    private int[] stack; // Array to store elements

    public CustomStack(int size) {
        maxSize = size;
        stack = new int[maxSize];
        top = -1; // Stack is initially empty
    }

    // Push an element onto the stack
    public void push(int value) {
        if (top < maxSize - 1) {
            stack[++top] = value;
        } else {
            System.out.println("Stack is full. Cannot push " + value);
        }
    }

    // Pop and return the top element from the stack
    public int pop() {
        if (!isEmpty()) {
            return stack[top--];
        } else {
            System.out.println("Stack is empty. Cannot pop.");
            return -1; // Indicates an empty stack
        }
    }

    // Peek and return the top element without removing it
    public int peek() {
        if (!isEmpty()) {
            return stack[top];
        } else {
            System.out.println("Stack is empty. Cannot peek.");
            return -1; // Indicates an empty stack
        }
    }

    // Check if the stack is empty
    public boolean isEmpty() {
        return top == -1;
    }

    // Check if the stack is full
    public boolean isFull() {
        return top == maxSize - 1;
    }

    // Get the number of elements in the stack
    public int size() {
        return top + 1;
    }

    public static void main(String[] args) {
        CustomStack stack = new CustomStack(5);

        stack.push(10);
        stack.push(20);
        stack.push(30);

        System.out.println("Top element: " + stack.peek());

        stack.pop();
        stack.pop();

        System.out.println("Is the stack empty? " + stack.isEmpty());
        System.out.println("Stack size: " + stack.size());
    }
}

