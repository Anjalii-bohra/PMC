package DSA;

class Node {
    int data;
    Node next;

    public Node(int data) {
        this.data = data;
        this.next = null;
    }
}

public class LinkedList {
    Node head;
    public LinkedList() {
        this.head = null;
    }

    // Insert a new node at the end of the linked list.
    public void insert(int data) {
        Node newNode = new Node(data);
        if (head == null) {
            head = newNode;
        } else {
            Node current = head;
            while (current.next != null) {
                current = current.next;
            }
            current.next = newNode;
        }
    }

    // Display the linked list.
    public void display() {
        Node current = head;
        while (current != null) {
            System.out.print(current.data + " -> ");
            current = current.next;
        }
        System.out.println("null");
    }

    public void reverse() {
        Node prev = null;
        Node current = head;
        Node next = null;

        while (current != null) {
            next = current.next; // Save the reference to the next node.
            current.next = prev; // Reverse the direction of the current node.
            prev = current; // Move prev to the current node.
            current = next; // Move current to the next node.
        }
        head = prev; // The new head is the last node in the original list.
    }
    public static void main(String[] args) {
        LinkedList list = new LinkedList();
        list.insert(1);
        list.insert(2);
        list.insert(3);
        list.insert(4);

        System.out.println("Original Linked List:");
        list.display();

        list.reverse();

        System.out.println("Reversed Linked List:");
        list.display();
    }

}

