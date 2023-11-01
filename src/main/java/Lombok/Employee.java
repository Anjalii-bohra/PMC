package Lombok;

import lombok.*;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
class Employee {
    private @Getter
    @Setter Integer employeeId;
    private @Getter
    @Setter String name;
    private @Getter
    @Setter String company;
    private @Getter
    @Setter String emailId;
}
