package DSA;

public class SortedArrayOperations {
    public static void main(String[] args) {
        int[] sortedArray = {10, 20, 30, 40, 50, 60};

        System.out.println("Original Sorted Array:");
        printArray(sortedArray);

        int searchKey = 30;
        int insertKey = 35;
        int deleteKey = 40;

        int searchIndex = binarySearch(sortedArray, searchKey);
        if (searchIndex != -1) {
            System.out.println("Element " + searchKey + " found at index " + searchIndex);
        } else {
            System.out.println("Element " + searchKey + " not found.");
        }

        int[] newArrayAfterInsert = insertIntoSortedArray(sortedArray, insertKey);
        System.out.println("Sorted Array after Inserting " + insertKey + ":");
        printArray(newArrayAfterInsert);

        int[] newArrayAfterDelete = deleteFromSortedArray(sortedArray, deleteKey);
        System.out.println("Sorted Array after Deleting " + deleteKey + ":");
        printArray(newArrayAfterDelete);
    }

    public static int binarySearch(int[] arr, int key) {
        int left = 0;
        int right = arr.length - 1;

        while (left <= right) {
            int mid = left + (right - left) / 2;

            if (arr[mid] == key) {
                return mid;
            }

            if (arr[mid] < key) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }

        return -1; // Element not found
    }

    public static int[] insertIntoSortedArray(int[] arr, int key) {
        int newArrayLength = arr.length + 1;
        int[] newArray = new int[newArrayLength];

        int i = 0;
        while (i < arr.length && arr[i] < key) {
            newArray[i] = arr[i];
            i++;
        }

        newArray[i] = key;

        while (i < arr.length) {
            newArray[i + 1] = arr[i];
            i++;
        }

        return newArray;
    }

    public static int[] deleteFromSortedArray(int[] arr, int key) {
        int keyIndex = binarySearch(arr, key);

        if (keyIndex == -1) {
            return arr; // Element not found, no change needed
        }

        int newArrayLength = arr.length - 1;
        int[] newArray = new int[newArrayLength];

        for (int i = 0, j = 0; i < arr.length; i++) {
            if (i != keyIndex) {
                newArray[j] = arr[i];
                j++;
            }
        }

        return newArray;
    }

    public static void printArray(int[] arr) {
        for (int value : arr) {
            System.out.print(value + " ");
        }
        System.out.println();
    }
}
