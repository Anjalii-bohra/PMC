package JUnit.Student;

import org.junit.Test;

public class TestStudentDetails {
    BusinessLogic businessLogic = new BusinessLogic();
    StudentDetails student = new StudentDetails();

    //test to check age
    @Test
public void testCalculateTotalMarks(){
        student.setAge(25);
        student.setMarks(78.78);
        student.setSubject("maths");
        student.setName("anjali");

        businessLogic.calculateTotalMarks(student);
        businessLogic.calculateVoteAge(student);

    }

    // test to check yearly salary
    @Test
    public void testCalculateVoteAge() {
        student.setName("Rajeev");
        student.setAge(14);
        student.setSubject("hin");
        student.setMarks(90.0);

        businessLogic.calculateVoteAge(student);

    }
}
