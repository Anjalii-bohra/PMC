package org.example.Student;

public class BusinessLogic {
    //    Calculate Total Marks
    public double calculateTotalMarks(StudentDetails studentDetails) {
        double sum = 0;
        sum = sum + studentDetails.getMarks();
        return sum;
    }

    //    calculate number of students voting
    public void calculateVoteAge(StudentDetails studentDetails) {

        if (studentDetails.getAge() < 18) {
            System.out.println("Try next time");
        } else {
            System.out.println("Can vote");
        }
    }
}

