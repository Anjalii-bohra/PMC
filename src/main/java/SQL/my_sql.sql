
/*
The DELETE statement only deletes the rows from the table based on the condition 
defined by WHERE clause or delete all the rows from the table when condition is not specified.

The TRUNCATE statement: it is used to delete all the 
rows from the table and free the containing space.

drop statement it deletes the table's row together with the table's definition so all the 
relationships of that table with other tables will no longer be valid.
*/

mysql> --Show Databases
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)
mysql>
mysql> -- Use the database
mysql> USE company;
Database changed
mysql>
mysql> -- Create a table for departments
mysql> CREATE TABLE departments (
    ->     department_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     department_name VARCHAR(255) NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| department_id   | int          | NO   | PRI | NULL    |       |
| department_name | varchar(255) | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
Query OK, 2 rows in set (0.01 sec)
mysql>
mysql> -- Create a table for employees
mysql> CREATE TABLE employees (
    ->     employee_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     first_name VARCHAR(255) NOT NULL,
    ->     last_name VARCHAR(255) NOT NULL,
    ->     email VARCHAR(255) NOT NULL,
    ->     department_id INT,
    ->     FOREIGN KEY (department_id) REFERENCES departments(department_id)
    -> );
Query OK, 0 rows affected (0.06 sec)
mysql>-- Show Tables
mysql> show tables;
+-------------------+
| Tables_in_company |
+-------------------+
| departments       |
| employees         |
+-------------------+
Query OK, 2 rows in set (0.01 sec)
mysql>
mysql> -- Insert data into the departments table
mysql> INSERT INTO departments (department_name) VALUES
    ->     ('HR'),
    ->     ('Engineering'),
    ->     ('Marketing');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Insert data into the employees table
mysql> INSERT INTO employees (first_name, last_name, email, department_id) VALUES
    ->     ('John', 'Doe', 'john.doe@example.com', 2),
    ->     ('Jane', 'Smith', 'jane.smith@example.com', 2),
    ->     ('Bob', 'Johnson', 'bob.johnson@example.com', 1),
    ->     ('Alice', 'Williams', 'alice.williams@example.com', 3);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0mysql> 
mysql> -- Create a table for projects
mysql> CREATE TABLE projects (
    ->     project_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     project_name VARCHAR(255) NOT NULL,
    ->     start_date DATE NOT NULL,
    ->     end_date DATE,
    ->     department_id INT,
    ->     project_manager_id INT,
    ->     FOREIGN KEY (department_id) REFERENCES departments(department_id),
    ->     FOREIGN KEY (project_manager_id) REFERENCES employees(employee_id)
    -> ^C
mysql> 
mysql> ALTER TABLE employees ADD COLUMN employee_id INT AUTO_INCREMENT PRIMARY KEY;
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> show tables 
    -> ;
+-------------------+
| Tables_in_company |
+-------------------+
| departments       |
| employees         |
+-------------------+
2 rows in set (0.00 sec)

mysql> desc employees;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| first_name    | varchar(255) | NO   |     | NULL    |                |
| last_name     | varchar(255) | NO   |     | NULL    |                |
| email         | varchar(255) | NO   |     | NULL    |                |
| department_id | int          | YES  | MUL | NULL    |                |
| employee_id   | int          | NO   | PRI | NULL    | auto_increment |
+---------------+--------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

mysql> 
mysql> -- Create a table for projects
mysql> CREATE TABLE projects (
    ->     project_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     project_name VARCHAR(255) NOT NULL,
    ->     start_date DATE NOT NULL,
    ->     end_date DATE,
    ->     department_id INT,
    ->     project_manager_id INT,
    ->     FOREIGN KEY (department_id) REFERENCES departments(department_id),
    ->     FOREIGN KEY (project_manager_id) REFERENCES employees(employee_id)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> -- Create a table for employee tasks
mysql> CREATE TABLE employee_tasks (
    ->     task_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     task_name VARCHAR(255) NOT NULL,
    ->     description TEXT,
    ->     start_date DATE NOT NULL,
    ->     end_date DATE,
    ->     employee_id INT,
    ->     project_id INT,
    ->     FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    ->     FOREIGN KEY (project_id) REFERENCES projects(project_id)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> TRUNCATE TABLE employees;
ERROR 1701 (42000): Cannot truncate a table referenced in a foreign key constraint (`company`.`projects`, CONSTRAINT `projects_ibfk_2`)
mysql> DELETE TABLE employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLE employees' at line 1
mysql> DELETE FROM employees;
Query OK, 4 rows affected (0.01 sec)

mysql> 
mysql> -- Insert data into the employees table
mysql> INSERT INTO employees (first_name, last_name, email, department_id, employee_id) VALUES
    ->     ('John', 'Doe', 'john.doe@example.com', 2, NULL),
    ->     ('Jane', 'Smith', 'jane.smith@example.com', 2, 1),
    ->     ('Bob', 'Johnson', 'bob.johnson@example.com', 1, NULL),
    ->     ('Alice', 'Williams', 'alice.williams@example.com', 3, 4);
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> 
mysql> INSERT INTO projects (project_name, start_date, end_date, department_id, project_manager_id) VALUES
    ->     ('Project A', '2023-03-01', '2023-06-30', 2, 1),
    ->     ('Project B', '2023-04-15', '2023-07-31', 3, 4),
    ->     ('Project C', '2023-02-20', '2023-05-30', 2, 2);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`company`.`projects`, CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`project_manager_id`) REFERENCES `employees` (`employee_id`))
mysql> -- Display all content of a Table
mysql> SELECT * FROM employees;
+------------+-----------+----------------------------+---------------+-------------+
| first_name | last_name | email                      | department_id | employee_id |
+------------+-----------+----------------------------+---------------+-------------+
| Jane       | Smith     | jane.smith@example.com     |             2 |           1 |
| Alice      | Williams  | alice.williams@example.com |             3 |           4 |
| John       | Doe       | john.doe@example.com       |             2 |           5 |
| Bob        | Johnson   | bob.johnson@example.com    |             1 |           6 |
+------------+-----------+----------------------------+---------------+-------------+
4 rows in set (0.00 sec)

mysql> -- Insert data into the projects table
mysql> INSERT INTO projects (project_name, start_date, end_date, department_id, project_manager_id) VALUES
    ->     ('Project A', '2023-03-01', '2023-06-30', 2, 1),
    ->     ('Project B', '2023-04-15', '2023-07-31', 3, 4),
    ->     ('Project C', '2023-02-20', '2023-05-30', 2, 6);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM projects;
+------------+--------------+------------+------------+---------------+--------------------+
| project_id | project_name | start_date | end_date   | department_id | project_manager_id |
+------------+--------------+------------+------------+---------------+--------------------+
|          4 | Project A    | 2023-03-01 | 2023-06-30 |             2 |                  1 |
|          5 | Project B    | 2023-04-15 | 2023-07-31 |             3 |                  4 |
|          6 | Project C    | 2023-02-20 | 2023-05-30 |             2 |                  6 |
+------------+--------------+------------+------------+---------------+--------------------+
3 rows in set (0.00 sec)

mysql> -- Insert data into the employee_tasks table 
mysql> INSERT INTO employee_tasks (task_name, description, start_date, end_date, employee_id, project_id) VALUES
    ->  ('Task 1', 'Develop feature X', '2023-03-05', '2023-03-20', 1, 4),
    -> ('Task 2', 'Design marketing campaign', '2023-05-10', '2023-06-10', 4, 6),
    -> ('Task 3', 'Hiring interviews', '2023-04-01', '2023-04-15', 6, NULL);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> 
mysql> SELECT * FROM employee_tasks;
+---------+-----------+---------------------------+------------+------------+-------------+------------+
| task_id | task_name | description               | start_date | end_date   | employee_id | project_id |
+---------+-----------+---------------------------+------------+------------+-------------+------------+
|       1 | Task 1    | Develop feature X         | 2023-03-05 | 2023-03-20 |           1 |          4 |
|       2 | Task 2    | Design marketing campaign | 2023-05-10 | 2023-06-10 |           4 |          6 |
|       3 | Task 3    | Hiring interviews         | 2023-04-01 | 2023-04-15 |           6 |       NULL |
+---------+-----------+---------------------------+------------+------------+-------------+------------+
3 rows in set (0.00 sec)

mysql> -- SQL SELECT 
mysql> SHOW TABLES;
+-------------------+
| Tables_in_company |
+-------------------+
| departments       |
| employee_tasks    |
| employees         |
| projects          |
+-------------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM departments;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | Engineering     |
|             3 | Marketing       |
+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM employees;
+------------+-----------+----------------------------+---------------+-------------+
| first_name | last_name | email                      | department_id | employee_id |
+------------+-----------+----------------------------+---------------+-------------+
| Jane       | Smith     | jane.smith@example.com     |             2 |           1 |
| Alice      | Williams  | alice.williams@example.com |             3 |           4 |
| John       | Doe       | john.doe@example.com       |             2 |           5 |
| Bob        | Johnson   | bob.johnson@example.com    |             1 |           6 |
+------------+-----------+----------------------------+---------------+-------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM employee_tasks;
+---------+-----------+---------------------------+------------+------------+-------------+------------+
| task_id | task_name | description               | start_date | end_date   | employee_id | project_id |
+---------+-----------+---------------------------+------------+------------+-------------+------------+
|       1 | Task 1    | Develop feature X         | 2023-03-05 | 2023-03-20 |           1 |          4 |
|       2 | Task 2    | Design marketing campaign | 2023-05-10 | 2023-06-10 |           4 |          6 |
|       3 | Task 3    | Hiring interviews         | 2023-04-01 | 2023-04-15 |           6 |       NULL |
+---------+-----------+---------------------------+------------+------------+-------------+------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM projects;
+------------+--------------+------------+------------+---------------+--------------------+
| project_id | project_name | start_date | end_date   | department_id | project_manager_id |
+------------+--------------+------------+------------+---------------+--------------------+
|          4 | Project A    | 2023-03-01 | 2023-06-30 |             2 |                  1 |
|          5 | Project B    | 2023-04-15 | 2023-07-31 |             3 |                  4 |
|          6 | Project C    | 2023-02-20 | 2023-05-30 |             2 |                  6 |
+------------+--------------+------------+------------+---------------+--------------------+
3 rows in set (0.00 sec)

mysql> Alter table employees add column city varchar(255);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0
mysql> insert into employees (city) values ('NYC') , ('Germany'), ('India') , ('UK');
ERROR 1364 (HY000): Field 'first_name' doesn't have a default value
mysql> insert into employees (city) values (('NYC') , ('Germany'), ('India') , ('UK'));
ERROR 1136 (21S01): Column count doesn't match value count at row 1

mysql> update employees e,
    -> (values 
    -> row(1,'NYC'),
    -> row(2,'INDIA'), row(3,'UK') , row(4,'INDIA')) t(employee_id, city)
    -> set e.city = t.city
    -> where e.employee_id = t.employee_id;
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM employees;
+------------+-----------+----------------------------+---------------+-------------+-------+
| first_name | last_name | email                      | department_id | employee_id | city  |
+------------+-----------+----------------------------+---------------+-------------+-------+
| Jane       | Smith     | jane.smith@example.com     |             2 |           1 | NYC   |
| Alice      | Williams  | alice.williams@example.com |             3 |           4 | INDIA |
| John       | Doe       | john.doe@example.com       |             2 |           5 | NULL  |
| Bob        | Johnson   | bob.johnson@example.com    |             1 |           6 | NULL  |
+------------+-----------+----------------------------+---------------+-------------+-------+
4 rows in set (0.00 sec)

mysql> update employees e,
    -> (values 
    -> row(6,'INDIA'), row(5,'UK') , row(4,'INDIA')) t(employee_id, city)
    -> set e.city = t.city
    -> where e.employee_id = t.employee_id;
Query OK, 2 rows affected (0.01 sec)
Rows matched: 3  Changed: 2  Warnings: 0

mysql> select * from employees;
+------------+-----------+----------------------------+---------------+-------------+-------+
| first_name | last_name | email                      | department_id | employee_id | city  |
+------------+-----------+----------------------------+---------------+-------------+-------+
| Jane       | Smith     | jane.smith@example.com     |             2 |           1 | NYC   |
| Alice      | Williams  | alice.williams@example.com |             3 |           4 | INDIA |
| John       | Doe       | john.doe@example.com       |             2 |           5 | UK    |
| Bob        | Johnson   | bob.johnson@example.com    |             1 |           6 | INDIA |
+------------+-----------+----------------------------+---------------+-------------+-------+
4 rows in set (0.00 sec)

mysql> SELECT DISTINCT city FROM employees;
+-------+
| city  |
+-------+
| NYC   |
| INDIA |
| UK    |
+-------+
3 rows in set (0.00 sec)

mysql> select distinct count(employee_id) from employees;
+--------------------+
| count(employee_id) |
+--------------------+
|                  4 |
+--------------------+
1 row in set (0.01 sec)

mysql> select distinct count(employee_id) as No_of_employee from employees;
+----------------+
| No_of_employee |
+----------------+
|              4 |
+----------------+
1 row in set (0.00 sec)

mysql> Terminal close -- exit!
mysql> 
mysql> use company;
Database changed
mysql> select top 3 employee_id, first_name from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3 employee_id, first_name from employees' at line 1

mysql> select employee_id, first_name from employees limit 3;
+-------------+------------+
| employee_id | first_name |
+-------------+------------+
|           1 | Jane       |
|           4 | Alice      |
|           5 | John       |
+-------------+------------+
3 rows in set (0.03 sec)

mysql> select employee_id, first_name from employees order by rand() limit 3;
+-------------+------------+
| employee_id | first_name |
+-------------+------------+
|           6 | Bob        |
|           5 | John       |
|           4 | Alice      |
+-------------+------------+
3 rows in set (0.02 sec)

mysql> select employee_id, first_name from employees where city in ['INDIA', 'NYC'];
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '['INDIA', 'NYC']' at line 1

mysql> select employee_id, first_name from employees where city in ('INDIA', 'NYC');
+-------------+------------+
| employee_id | first_name |
+-------------+------------+
|           1 | Jane       |
|           4 | Alice      |
|           6 | Bob        |
+-------------+------------+
3 rows in set (0.00 sec)

mysql> select cast(department_id as varchar(255)) from departments;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varchar(255)) from departments' at line 1

mysql> select cast(1 as varchar(255)) from departments;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varchar(255)) from departments' at line 1

mysql> Terminal close -- exit!



mysql> -- Select Employees and Their Departments
mysql> SELECT employees.first_name, employees.last_name, departments.department_name
    -> FROM employees
    -> INNER JOIN departments ON employees.department_id = departments.department_id;
+------------+-----------+-----------------+
| first_name | last_name | department_name |
+------------+-----------+-----------------+
| Bob        | Johnson   | HR              |
| Jane       | Smith     | Engineering     |
| John       | Doe       | Engineering     |
| Alice      | Williams  | Marketing       |
+------------+-----------+-----------------+
4 rows in set (0.08 sec)

mysql> -- Find Employees in a Specific Department
mysql> SELECT employees.first_name, employees.last_name
    -> FROM employees
    -> INNER JOIN departments ON employees.department_id = departments.department_id
    -> WHERE departments.department_name = 'Engineering';
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Jane       | Smith     |
| John       | Doe       |
+------------+-----------+
2 rows in set (0.00 sec)

mysql> -- Calculate Average Salary by Department
mysql> SELECT departments.department_name, AVG(employees.salary) AS average_salary
    -> FROM employees
    -> INNER JOIN departments ON employees.department_id = departments.department_id
    -> GROUP BY departments.department_name;
ERROR 1054 (42S22): Unknown column 'employees.salary' in 'field list'
mysql> -- Add salary to employees
mysql> ALTER TABLE employees
    -> ADD COLUMN salary DECIMAL(10, 2);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> -- insert values 
mysql> UPDATE employees
    -> SET salary = 60000.00  -- Set the desired salary value
    -> WHERE employee_id = 1; -- Replace with the employee_id of the employee you want to update
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employees
    -> SET salary = 66000.00 
    -> WHERE employee_id = 2;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE employees
    -> SET salary = 70000.00 
    -> WHERE employee_id = 3;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE employees
    -> SET salary = 40000.00 
    -> WHERE employee_id = 4;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employees
    -> SET salary = 40000.00 
    -> WHERE employee_id = 5;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE employees
    -> SET salary = 49000.00 
    -> WHERE employee_id = 6;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> show table employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'employees' at line 1
mysql> desc table employees;
+----+-------------+-----------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table     | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+-----------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | employees | NULL       | ALL  | NULL          | NULL | NULL    | NULL |    4 |   100.00 | NULL  |
+----+-------------+-----------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0.01 sec)

mysql> -- Calculate Average Salary by Department
mysql> SELECT departments.department_name, AVG(employees.salary) AS average_salary
    -> FROM employees
    -> INNER JOIN departments ON employees.department_id = departments.department_id
    -> GROUP BY departments.department_name;
+-----------------+----------------+
| department_name | average_salary |
+-----------------+----------------+
| HR              |   49000.000000 |
| Engineering     |   50000.000000 |
| Marketing       |   40000.000000 |
+-----------------+----------------+
3 rows in set (0.01 sec)

mysql> desc table departments;
+----+-------------+-------------+------------+------+---------------+------+---------+------+------+----------+-------+
| id | select_type | table       | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra |
+----+-------------+-------------+------------+------+---------------+------+---------+------+------+----------+-------+
|  1 | SIMPLE      | departments | NULL       | ALL  | NULL          | NULL | NULL    | NULL |    3 |   100.00 | NULL  |
+----+-------------+-------------+------------+------+---------------+------+---------+------+------+----------+-------+
1 row in set, 1 warning (0.00 sec)

mysql> -- List Employees and Their Tasks
mysql> show tables;
+-------------------+
| Tables_in_company |
+-------------------+
| departments       |
| employee_tasks    |
| employees         |
| projects          |
+-------------------+
4 rows in set (0.01 sec)

mysql> SELECT * FROM employees;
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
| first_name | last_name | email                      | department_id | employee_id | city  | salary   |
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
| Jane       | Smith     | jane.smith@example.com     |             2 |           1 | NYC   | 60000.00 |
| Alice      | Williams  | alice.williams@example.com |             3 |           4 | INDIA | 40000.00 |
| John       | Doe       | john.doe@example.com       |             2 |           5 | UK    | 40000.00 |
| Bob        | Johnson   | bob.johnson@example.com    |             1 |           6 | INDIA | 49000.00 |
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM employee_tasks;
+---------+-----------+---------------------------+------------+------------+-------------+------------+
| task_id | task_name | description               | start_date | end_date   | employee_id | project_id |
+---------+-----------+---------------------------+------------+------------+-------------+------------+
|       1 | Task 1    | Develop feature X         | 2023-03-05 | 2023-03-20 |           1 |          4 |
|       2 | Task 2    | Design marketing campaign | 2023-05-10 | 2023-06-10 |           4 |          6 |
|       3 | Task 3    | Hiring interviews         | 2023-04-01 | 2023-04-15 |           6 |       NULL |
+---------+-----------+---------------------------+------------+------------+-------------+------------+
3 rows in set (0.01 sec)

mysql> SELECT * FROM projects;
+------------+--------------+------------+------------+---------------+--------------------+
| project_id | project_name | start_date | end_date   | department_id | project_manager_id |
+------------+--------------+------------+------------+---------------+--------------------+
|          4 | Project A    | 2023-03-01 | 2023-06-30 |             2 |                  1 |
|          5 | Project B    | 2023-04-15 | 2023-07-31 |             3 |                  4 |
|          6 | Project C    | 2023-02-20 | 2023-05-30 |             2 |                  6 |
+------------+--------------+------------+------------+---------------+--------------------+
3 rows in set (0.01 sec)

mysql> SELECT e.employee_id, e.first_name, e.last_name, t.task_name, t.description AS TaskDesc  
    -> FROM employees e JOIN employee_tasks t ON e.employee_id = t.employee_id;
+-------------+------------+-----------+-----------+---------------------------+
| employee_id | first_name | last_name | task_name | TaskDesc                  |
+-------------+------------+-----------+-----------+---------------------------+
|           1 | Jane       | Smith     | Task 1    | Develop feature X         |
|           4 | Alice      | Williams  | Task 2    | Design marketing campaign |
|           6 | Bob        | Johnson   | Task 3    | Hiring interviews         |
+-------------+------------+-----------+-----------+---------------------------+
3 rows in set (0.00 sec)

mysql> -- Increase salary by 10%
mysql> UPDATE employees
    -> SET salary = salary + (salary * 1.10);
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> SELECT * FROM employees ;
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
| first_name | last_name | email                      | department_id | employee_id | city  | salary   |
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
| Jane       | Smith     | jane.smith@example.com     |             2 |           1 | NYC   | 13860.00 |
| Alice      | Williams  | alice.williams@example.com |             3 |           4 | INDIA |  9240.00 |
| John       | Doe       | john.doe@example.com       |             2 |           5 | UK    |  9240.00 |
| Bob        | Johnson   | bob.johnson@example.com    |             1 |           6 | INDIA | 11319.00 |
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
4 rows in set (0.00 sec)

mysql> -- SELECT and WHERE clause 
mysql> SELECT * FROM employees WHERE salary > 50000;
Empty set (0.00 sec)

mysql> SELECT * FROM employees WHERE salary < 50000;
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
| first_name | last_name | email                      | department_id | employee_id | city  | salary   |
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
| Jane       | Smith     | jane.smith@example.com     |             2 |           1 | NYC   | 13860.00 |
| Alice      | Williams  | alice.williams@example.com |             3 |           4 | INDIA |  9240.00 |
| John       | Doe       | john.doe@example.com       |             2 |           5 | UK    |  9240.00 |
| Bob        | Johnson   | bob.johnson@example.com    |             1 |           6 | INDIA | 11319.00 |
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM employees WHERE salary < 10000;
+------------+-----------+----------------------------+---------------+-------------+-------+---------+
| first_name | last_name | email                      | department_id | employee_id | city  | salary  |
+------------+-----------+----------------------------+---------------+-------------+-------+---------+
| Alice      | Williams  | alice.williams@example.com |             3 |           4 | INDIA | 9240.00 |
| John       | Doe       | john.doe@example.com       |             2 |           5 | UK    | 9240.00 |
+------------+-----------+----------------------------+---------------+-------------+-------+---------+
2 rows in set (0.00 sec)


mysql> -- order by
mysql> SELECT * FROM employees ORDER BY employee_id DESC;
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
| first_name | last_name | email                      | department_id | employee_id | city  | salary   |
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
| Bob        | Johnson   | bob.johnson@example.com    |             1 |           6 | INDIA | 11319.00 |
| John       | Doe       | john.doe@example.com       |             2 |           5 | UK    |  9240.00 |
| Alice      | Williams  | alice.williams@example.com |             3 |           4 | INDIA |  9240.00 |
| Jane       | Smith     | jane.smith@example.com     |             2 |           1 | NYC   | 13860.00 |
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
4 rows in set (0.00 sec)

mysql> -- GROUP BY 
mysql> SELECT department_id, SUM(salary) AS total_salary
    -> FROM employees
    -> GROUP BY department_id;
+---------------+--------------+
| department_id | total_salary |
+---------------+--------------+
|             1 |     11319.00 |
|             2 |     23100.00 |
|             3 |      9240.00 |
+---------------+--------------+
3 rows in set (0.00 sec)

mysql> -- HAVING 
mysql> SELECT department_id, SUM(salary) AS total_salary
    -> FROM employees
    -> GROUP BY department_id
    -> HAVING total_salary > 200000;
Empty set (0.00 sec)

mysql> SELECT department_id, SUM(salary) AS total_salary
    -> FROM employees
    -> GROUP BY department_id
    -> HAVING total_salary > 20000;
+---------------+--------------+
| department_id | total_salary |
+---------------+--------------+
|             2 |     23100.00 |
+---------------+--------------+
1 row in set (0.00 sec)

mysql> SELECT department_name
    -> FROM departments
    -> ORDER BY
    ->     CASE
    ->         WHEN department_name = 'Engineering' THEN 1
    ->         WHEN department_name = 'Marketing' THEN 2
    ->         ELSE 3
    ->     END;
+-----------------+
| department_name |
+-----------------+
| Engineering     |
| Marketing       |
| HR              |
+-----------------+
3 rows in set (0.02 sec)

mysql> -- concate string
mysql> SELECT CONCAT(first_name, ' ', last_name) AS full_name
    -> FROM employees;
+----------------+
| full_name      |
+----------------+
| Jane Smith     |
| Alice Williams |
| John Doe       |
| Bob Johnson    |
+----------------+
4 rows in set (0.01 sec)

mysql> -- uppercase
mysql> SELECT UPPER(email) AS uppercase_email
    -> FROM employees;
+----------------------------+
| uppercase_email            |
+----------------------------+
| JANE.SMITH@EXAMPLE.COM     |
| ALICE.WILLIAMS@EXAMPLE.COM |
| JOHN.DOE@EXAMPLE.COM       |
| BOB.JOHNSON@EXAMPLE.COM    |
+----------------------------+
4 rows in set (0.00 sec)

mysql> -- length of mail
mysql> SELECT first_name, last_name, LENGTH(email) AS email_length
    -> FROM employees;
+------------+-----------+--------------+
| first_name | last_name | email_length |
+------------+-----------+--------------+
| Jane       | Smith     |           22 |
| Alice      | Williams  |           26 |
| John       | Doe       |           20 |
| Bob        | Johnson   |           23 |
+------------+-----------+--------------+
4 rows in set (0.00 sec)

mysql> -- extract domain of email
mysql> SELECT first_name, last_name, SUBSTRING_INDEX(email, '@', -1) AS email_domain
    -> FROM employees;
+------------+-----------+--------------+
| first_name | last_name | email_domain |
+------------+-----------+--------------+
| Jane       | Smith     | example.com  |
| Alice      | Williams  | example.com  |
| John       | Doe       | example.com  |
| Bob        | Johnson   | example.com  |
+------------+-----------+--------------+
4 rows in set (0.01 sec)

mysql> -- trim whitespace
mysql> SELECT TRIM(city) AS trimmed_city
    -> FROM employees;
+--------------+
| trimmed_city |
+--------------+
| NYC          |
| INDIA        |
| UK           |
| INDIA        |
+--------------+
4 rows in set (0.00 sec)

mysql> CrEATE VIEW details AS 
    -> SELECT * FROM employees , departments 
    -> WHERE employees.department_id = departments.department_id;
ERROR 1060 (42S21): Duplicate column name 'department_id'
mysql> Select * from departments;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | Engineering     |
|             3 | Marketing       |
+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> Select * from employees;
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
| first_name | last_name | email                      | department_id | employee_id | city  | salary   |
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
| Jane       | Smith     | jane.smith@example.com     |             2 |           1 | NYC   | 13860.00 |
| Alice      | Williams  | alice.williams@example.com |             3 |           4 | INDIA |  9240.00 |
| John       | Doe       | john.doe@example.com       |             2 |           5 | UK    |  9240.00 |
| Bob        | Johnson   | bob.johnson@example.com    |             1 |           6 | INDIA | 11319.00 |
+------------+-----------+----------------------------+---------------+-------------+-------+----------+
4 rows in set (0.00 sec)

mysql> CREATE VIEW details AS 
    -> SELECT * FROM employees
    -> INNER JOIN departments ON employees.department_id = departments.department_id;
ERROR 1060 (42S21): Duplicate column name 'department_id'

-- The error message "Duplicate column name 'department_id'" occurs because 
-- both the "employees" and "departments" tables have a column named "department_id," and when you are creating the view, 
-- the database engine doesn't know which "department_id" to use in the SELECT clause.

mysql> CREATE VIEW details AS 
    -> SELECT e.first_name, e.last_name, e.department_id as emp_department, d.department_name FROM employees e JOIN departments d 
    -> ON e.department_id = d.department_id;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from details;
+------------+-----------+----------------+-----------------+
| first_name | last_name | emp_department | department_name |
+------------+-----------+----------------+-----------------+
| Bob        | Johnson   |              1 | HR              |
| Jane       | Smith     |              2 | Engineering     |
| John       | Doe       |              2 | Engineering     |
| Alice      | Williams  |              3 | Marketing       |
+------------+-----------+----------------+-----------------+
4 rows in set (0.01 sec)

mysql> Terminal close -- exit!
