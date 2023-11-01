mysql> CREATE DATABASE DB;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| db                 |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.02 sec)
mysql> use db
Database changed

mysql> CREATE TABLE STUDENTS (ID INT NOT NULL,NAME VARCHAR(20) NOT NULL,AGE INT NOT NULL,ADDRESS CHAR (25),PRIMARY KEY(ID));
Query OK, 0 rows affected (0.04 sec)

mysql> DESC STUDENTS;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| ID      | int         | NO   | PRI | NULL    |       |
| NAME    | varchar(20) | NO   |     | NULL    |       |
| AGE     | int         | NO   |     | NULL    |       |
| ADDRESS | char(25)    | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE Display()
    -> BEGIN
    -> SELECT 'HELLO' AS Message;
    -> END;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> CALL Display();
    -> //
+---------+
| Message |
+---------+
| HELLO   |
+---------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)


mysql> DELIMITER //
mysql> CREATE PROCEDURE Addition()
    -> BEGIN
    -> DECLARE a INT DEFAULT 30;
    -> DECLARE b INT DEFAULT 40;
    -> DECLARE c INT;
    -> SET c = a + b;
    -> SELECT CONCAT('Value of c: ', c) AS Message;
    -> END;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> CALL Addition();
    -> //
+----------------+
| Message        |
+----------------+
| Value of c: 70 |
+----------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)


mysql> DELIMITER //
mysql> CREATE PROCEDURE PrintAge(IN SID INT)
    -> BEGIN
    ->     DECLARE SAge INT;
    ->     SELECT AGE INTO SAge FROM STUDENTS WHERE ID = SID;
    ->     SELECT CONCAT('Age of ', SID, ' is = ', SAge) AS Message;
    -> END;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> call PrintAge(2);
    -> //
+------------------+
| Message          |
+------------------+
| Age of 2 is = 22 |
+------------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE CalculateCircleInfo()
    -> BEGIN
    ->    DECLARE pi DECIMAL(10, 9) DEFAULT 3.141592654;
    ->    DECLARE radius DECIMAL(5, 2);
    ->    DECLARE dia DECIMAL(5, 2);
    ->    DECLARE circumference DECIMAL(7, 2);
    ->    DECLARE area DECIMAL(10, 2);
    ->
    ->    SET radius = 9.5;
    ->    SET dia = radius * 2;
    ->    SET circumference = 2.0 * pi * radius;
    ->    SET area = pi * radius * radius;
    ->
    ->    SELECT CONCAT('Radius: ', radius) AS Result;
    ->    SELECT CONCAT('Diameter: ', dia) AS Result;
    ->    SELECT CONCAT('Circumference: ', circumference) AS Result;
    ->    SELECT CONCAT('Area: ', area) AS Result;
    -> END ;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> CALL CalculateCircleInfo();
    -> //
+--------------+
| Result       |
+--------------+
| Radius: 9.50 |
+--------------+
1 row in set (0.00 sec)

+-----------------+
| Result          |
+-----------------+
| Diameter: 19.00 |
+-----------------+
1 row in set (0.00 sec)

+----------------------+
| Result               |
+----------------------+
| Circumference: 59.69 |
+----------------------+
1 row in set (0.00 sec)

+--------------+
| Result       |
+--------------+
| Area: 283.53 |
+--------------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE if-else_demo()
    -> BEGIN
    ->     DECLARE a INT DEFAULT 500;
    ->     DECLARE message VARCHAR(255);
    ->
    ->     IF a < 20 THEN
    ->         SET message = 'a is less than 20';
    ->     ELSE
    ->         SET message = 'a is not less than 20';
    ->     END IF;
    ->
    ->     SELECT CONCAT('Value of a is: ', a) AS message;
    ->     SELECT message AS message;
    -> END;
    -> //
Query OK, 0 rows affected (0.00 sec)

mysql>  call if-else_demo();
    -> //
+--------------------+
| message            |
+--------------------+
| Value of a is: 500 |
+--------------------+
1 row in set (0.00 sec)

+-----------------------+
| message               |
+-----------------------+
| a is not less than 20 |
+-----------------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE PrintGrade()
    -> BEGIN
    ->     DECLARE grade CHAR(1) DEFAULT 'A';
    ->     CASE grade
    ->         WHEN 'A' THEN
    ->             BEGIN
    ->                 SELECT 'Excellent' AS Message;
    ->             END;
    ->         WHEN 'B' THEN
    ->             BEGIN
    ->                 SELECT 'Very good' AS Message;
    ->             END;
    ->         WHEN 'C' THEN
    ->             BEGIN
    ->                 SELECT 'Good' AS Message;
    ->             END;
    ->         WHEN 'D' THEN
    ->             BEGIN
    ->                 SELECT 'Average' AS Message;
    ->             END;
    ->         WHEN 'F' THEN
    ->             BEGIN
    ->                 SELECT 'Passed with Grace' AS Message;
    ->             END;
    ->         ELSE
    ->             BEGIN
    ->                 SELECT 'Failed' AS Message;
    ->             END;
    ->     END CASE;
    -> END;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> call PrintGrade();
    -> //
+-----------+
| Message   |
+-----------+
| Excellent |
+-----------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE PrintNo()
    -> BEGIN
    ->     DECLARE i INT DEFAULT 1;
    ->     WHILE i <= 10 DO
    ->         SELECT i AS Message;
    ->         SET i = i + 1;
    ->     END WHILE;
    -> END;
    -> //
Query OK, 0 rows affected (0.00 sec)

mysql> call PrintNo();
    -> //
+---------+
| Message |
+---------+
|       1 |
+---------+
1 row in set (0.00 sec)

+---------+
| Message |
+---------+
|       2 |
+---------+
1 row in set (0.00 sec)

+---------+
| Message |
+---------+
|       3 |
+---------+
1 row in set (0.00 sec)

+---------+
| Message |
+---------+
|       4 |
+---------+
1 row in set (0.00 sec)

+---------+
| Message |
+---------+
|       5 |
+---------+
1 row in set (0.00 sec)

+---------+
| Message |
+---------+
|       6 |
+---------+
1 row in set (0.01 sec)

+---------+
| Message |
+---------+
|       7 |
+---------+
1 row in set (0.01 sec)

+---------+
| Message |
+---------+
|       8 |
+---------+
1 row in set (0.01 sec)

+---------+
| Message |
+---------+
|       9 |
+---------+
1 row in set (0.01 sec)

+---------+
| Message |
+---------+
|      10 |
+---------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE Iterate-demo()
    -> BEGIN
    ->   DECLARE x INT DEFAULT 0;
    ->
    ->   my_loop: REPEAT
    ->     IF x < 3 THEN
    ->       SET x = x + 1;
    ->       ITERATE my_loop; -- Equivalent to PL/SQL's CONTINUE statement
    ->     END IF;
    ->
    ->     SELECT CONCAT('Inside loop: x = ', x) AS Message;
    ->
    ->     IF x = 5 THEN
    ->       LEAVE my_loop; -- Equivalent to PL/SQL's EXIT WHEN statement
    ->     END IF;
    ->
    ->     SET x = x + 1;
    ->
    ->     SELECT CONCAT('Inside loop, after CONTINUE/Iterate: x = ', x) AS Message;
    ->
    ->   UNTIL x = 5 END REPEAT;
    ->
    ->   SELECT CONCAT('After loop: x = ', x) AS Message;
    ->
    -> END;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> call Iterate-demo();
    -> //
+--------------------+
| Message            |
+--------------------+
| Inside loop: x = 3 |
+--------------------+
1 row in set (0.00 sec)

+--------------------------------------------+
| Message                                    |
+--------------------------------------------+
| Inside loop, after CONTINUE/Iterate: x = 4 |
+--------------------------------------------+
1 row in set (0.00 sec)

+--------------------+
| Message            |
+--------------------+
| Inside loop: x = 4 |
+--------------------+
1 row in set (0.01 sec)

+--------------------------------------------+
| Message                                    |
+--------------------------------------------+
| Inside loop, after CONTINUE/Iterate: x = 5 |
+--------------------------------------------+
1 row in set (0.01 sec)

+-------------------+
| Message           |
+-------------------+
| After loop: x = 5 |
+-------------------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> CREATE TABLE user_table (
    ->     id INT(10) PRIMARY KEY,
    ->     name VARCHAR(100)
    -> );
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE INSERTUSER(
    ->     IN p_id INT,
    ->     IN p_name VARCHAR(100)
    -> )
    -> BEGIN
    ->     INSERT INTO user_table (id, name) VALUES (p_id, p_name);
    -> END;
    -> //
Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> DELIMITER ;
mysql> CALL INSERTUSER(101, 'Rahul');
Query OK, 1 row affected (0.01 sec)

mysql> CALL INSERTUSER(102, 'Jane');
Query OK, 1 row affected (0.00 sec)

mysql> CALL INSERTUSER(103, 'John');
Query OK, 1 row affected (0.01 sec)

mysql> select * from user_table;
+-----+-------+
| id  | name  |
+-----+-------+
| 101 | Rahul |
| 102 | Jane  |
| 103 | John  |
+-----+-------+
3 rows in set (0.00 sec)

mysql> DROP PROCEDURE IF EXISTS INSERTUSER;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE FUNCTION adder(n1 INT, n2 INT) RETURNS INT
    -> DETERMINISTIC
    -> BEGIN
    ->    DECLARE n3 INT;
    ->    SET n3 = n1 + n2;
    ->    RETURN n3;
    -> END;
    -> //
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT adder(10, 5) AS Result;
    -> //
+--------+
| Result |
+--------+
|     15 |
+--------+
1 row in set (0.00 sec)

mysql> CREATE FUNCTION totalStudents() RETURNS INT
    -> DETERMINISTIC
    -> BEGIN
    ->    DECLARE total INT DEFAULT 0;
    ->
    ->    SELECT COUNT(*) INTO total FROM students;
    ->
    ->    RETURN total;
    -> END;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT totalStudents() AS TotalStudents;
    -> //
+---------------+
| TotalStudents |
+---------------+
|             5 |
+---------------+
1 row in set (0.00 sec)

mysql> select * from students_copy;
    -> //
+----+---------------+-----+---------------+--------+
| ID | NAME          | AGE | ADDRESS       | GRADES |
+----+---------------+-----+---------------+--------+
|  1 | JAMES         |  20 | 123 Main St   |   NULL |
|  2 | Jane Smith    |  22 | 456 Elm St    |   NULL |
|  3 | Alice Johnson |  19 | 789 Oak St    |   NULL |
|  4 | Bob Smith     |  21 | 101 Maple Ave |   NULL |
+----+---------------+-----+---------------+--------+
4 rows in set (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE FetchStudents()
    -> BEGIN
    ->    DECLARE done INT DEFAULT 0;
    ->    DECLARE c_id INT;
    ->    DECLARE c_name VARCHAR(100);
    ->    DECLARE c_addr VARCHAR(255);
    ->
    ->    -- Declare a cursor for fetching
    ->    DECLARE cur_students CURSOR FOR
    ->       SELECT id, name, address FROM students;
    ->
    ->    -- Declare handler for when no more rows are found
    ->    DECLARE CONTINUE HANDLER FOR NOT FOUND
    ->       SET done = 1;
    ->
    ->    OPEN cur_students;
    ->
    ->    read_loop: LOOP
    ->       FETCH cur_students INTO c_id, c_name, c_addr;
    ->       IF done = 1 THEN
    ->          LEAVE read_loop;
    ->       END IF;
    ->
    ->       -- Process the fetched values
    ->       -- (You can perform operations here)
    ->
    ->       -- For example, you can print the values
    ->       SELECT CONCAT(c_id, ' ', c_name, ' ', c_addr);
    ->    END LOOP;
    ->
    ->    CLOSE cur_students;
    -> END;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> CALL FetchStudents();
+----------------------------------------+
| CONCAT(c_id, ' ', c_name, ' ', c_addr) |
+----------------------------------------+
| 1 John Doe 123 Main St                 |
+----------------------------------------+
1 row in set (0.00 sec)

+----------------------------------------+
| CONCAT(c_id, ' ', c_name, ' ', c_addr) |
+----------------------------------------+
| 2 Jane Smith 456 Elm St                |
+----------------------------------------+
1 row in set (0.01 sec)

+----------------------------------------+
| CONCAT(c_id, ' ', c_name, ' ', c_addr) |
+----------------------------------------+
| 3 Alice Johnson 789 Oak St             |
+----------------------------------------+
1 row in set (0.01 sec)

+----------------------------------------+
| CONCAT(c_id, ' ', c_name, ' ', c_addr) |
+----------------------------------------+
| 4 Bob Smith 101 Maple Ave              |
+----------------------------------------+
1 row in set (0.01 sec)

+----------------------------------------+
| CONCAT(c_id, ' ', c_name, ' ', c_addr) |
+----------------------------------------+
| 5 Eva Martinez 222 Pine Rd             |
+----------------------------------------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetStudentInfo()
    -> BEGIN
    ->    DECLARE s_id INT DEFAULT 8;
    ->    DECLARE s_name VARCHAR(100);
    ->    DECLARE s_addr CHAR(25);
    ->    DECLARE s_no_data_found BOOLEAN DEFAULT TRUE;
    ->
    ->    -- Declare a cursor
    ->    DECLARE student_cursor CURSOR FOR
    ->       SELECT name, address
    ->       FROM students
    ->       WHERE id = s_id;
    ->
    ->    -- Declare handler for exceptions
    ->    DECLARE CONTINUE HANDLER FOR NOT FOUND
    ->    BEGIN
    ->       SET s_no_data_found = TRUE;
    ->    END;
    ->
    ->    -- Open the cursor
    ->    OPEN student_cursor;
    ->
    ->    -- Fetch data into variables
    ->    FETCH student_cursor INTO s_name, s_addr;
    ->
    ->    -- Check if data was found
    ->    IF NOT s_no_data_found THEN
    ->       SELECT 'Name: ' || s_name;
    ->       SELECT 'Address: ' || s_addr;
    ->    ELSE
    ->       SELECT 'No such customer!';
    ->    END IF;
    ->
    ->    -- Close the cursor
    ->    CLOSE student_cursor;
    ->
    -> END;
    -> //
Query OK, 0 rows affected, 2 warnings (0.00 sec)

mysql> call GetStudentInfo();
    -> //
+-------------------+
| No such customer! |
+-------------------+
| No such customer! |
+-------------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> call GetStudentInfo();//
+-------------------+
| No such customer! |
+-------------------+
| No such customer! |
+-------------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE DisplayAgeChanges(IN studentId INT)
    -> BEGIN
    ->    DECLARE age_diff INT;
    ->
    ->    SELECT age - OLD.age INTO age_diff
    ->    FROM students
    ->    WHERE ID = studentId;
    ->
    ->    SELECT 'Old age: ' || OLD.age;
    ->    SELECT 'New age: ' || NEW.age;
    ->    SELECT 'Age difference: ' || age_diff;
    -> END;
    -> //
Query OK, 0 rows affected, 3 warnings (0.01 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE UpdateAndDisplayAgeChanges()
    -> BEGIN
    ->    DECLARE total_rows INT;
    ->
    ->    UPDATE Age
    ->    SET age = age + 5;
    ->
    ->    IF ROW_COUNT() = 0 THEN
    ->       SELECT 'No students updated';
    ->    ELSE
    ->       SET total_rows = ROW_COUNT();
    ->       SELECT CONCAT(total_rows, ' students updated');
    ->    END IF;
    -> END;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> call UpdateAndDisplayAgeChanges();
    -> //
ERROR 1146 (42S02): Table 'db.age' doesn't exist
mysql> DELIMITER //
mysql> CREATE PROCEDURE UpdateAndDisplayAgeChange()
    -> BEGIN
    ->    DECLARE total_rows INT;
    ->
    ->    UPDATE students_copy
    ->    SET age = age + 5;
    ->
    ->    IF ROW_COUNT() = 0 THEN
    ->       SELECT 'No students updated';
    ->    ELSE
    ->       SET total_rows = ROW_COUNT();
    ->       SELECT CONCAT(total_rows, ' students updated');
    ->    END IF;
    -> END;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> call UpdateAndDisplayAgeChange();
    -> //
+-----------------------------------------+
| CONCAT(total_rows, ' students updated') |
+-----------------------------------------+
| 4 students updated                      |
+-----------------------------------------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> quit