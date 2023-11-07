package DSA;
import java.util.LinkedList;

public class CustomQueue<T> {
    private LinkedList<T> queue = new LinkedList<>();

    // Add an element to the end of the queue (enqueue)
    public void enqueue(T value) {
        queue.addLast(value);
    }

    // Remove and return the first element from the queue (dequeue)
    public T dequeue() {
        if (isEmpty()) {
            throw new IllegalStateException("Queue is empty. Cannot dequeue.");
        }
        return queue.removeFirst();
    }

    // Peek and return the first element without removing it
    public T peek() {
        if (isEmpty()) {
            throw new IllegalStateException("Queue is empty. Cannot peek.");
        }
        return queue.getFirst();
    }

    // Check if the queue is empty
    public boolean isEmpty() {
        return queue.isEmpty();
    }

    // Get the number of elements in the queue
    public int size() {
        return queue.size();
    }

    public static void main(String[] args) {
        CustomQueue<Integer> queue = new CustomQueue<>();

        queue.enqueue(10);
        queue.enqueue(20);
        queue.enqueue(30);

        System.out.println("First element: " + queue.peek());

        queue.dequeue();
        queue.dequeue();

        System.out.println("Is the queue empty? " + queue.isEmpty());
        System.out.println("Queue size: " + queue.size());
    }
}
