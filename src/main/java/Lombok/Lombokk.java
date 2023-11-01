package Lombok;

import lombok.*;

public class Lombokk {
        public static void main (String[] args) {
            Employee employee = Employee.builder().employeeId(20)
                    .name("Anjali")
                    .company("PMC")
                    .emailId("anjali@pmcretail.com")
                    .build();
            System.out.println(employee.toString());
            System.out.println("Lombok done");
        }
    }

