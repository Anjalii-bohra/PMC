package CoreJAVA.Arrayy;

public class FinalArray {
    //    Final Arrays Can Be Reassigned But Not Re-referred
    public static void main(String[] args) {
        final int[] arr = {1, 2, 3, 4, 5};
        int[] arr1 = {1, 2, 4, 6, 3};
//        arr = arr1;
        arr[4] = 1;

        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }
    }
}


