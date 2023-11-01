package CoreJAVA.FlowControl;

public class ForeachLoop {
    public static void main(String[] args) {
        int [] arr = {1,2,3,4,5};
        for( int element : arr){
            System.out.println(element+1);
        }
    }
}
