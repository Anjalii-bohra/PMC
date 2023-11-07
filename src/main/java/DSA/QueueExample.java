package DSA;

import java.util.LinkedList;
import java.util.Queue;

public class QueueExample {
    public static void main(String[] args) {
        Queue<Integer> queue = new LinkedList<>();

        // Enqueue (add) elements to the queue
        queue.add(10);
        queue.add(20);
        queue.add(30);

        System.out.println("Front element: " + queue.peek());

        // Dequeue (remove) elements from the queue
        int removedElement = queue.remove();
        System.out.println("Removed element: " + removedElement);

        System.out.println("Is the queue empty? " + queue.isEmpty());
        System.out.println("Queue size: " + queue.size());
    }
}
