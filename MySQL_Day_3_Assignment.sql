mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| information_schema      |
| jarvis_db               |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.07 sec)

mysql> create database emp;
Query OK, 1 row affected (0.02 sec)

mysql> use emp;
Database changed
mysql> -- Creating table employee
mysql> create table employee(emp_id int primarykey,first_name varchar(50),last_name varchar(50),age int,email varchar(50));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primarykey,first_name varchar(50),last_name varchar(50),age int,email varchar(50' at line 1
mysql> create table employee(emp_id int primary key,first_name varchar(50),last_name varchar(50),age int,email varchar(5
0));
Query OK, 0 rows affected (0.08 sec)

mysql> --Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table.
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Task 1: Insert Data Write an SQL INSERT statement to insert data into the Empl' at line 1
mysql> -- Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table.
mysql> INSERT INTO employee (emp_id, first_name, last_name, age, email) VALUES
    -> (1, 'Hritik', 'Kulkarni', 29, 'hritik.kulkarni@example.com'),
    -> (2, 'Pratik', 'Kulkarni', 27, 'pratik.kulkarni@example.com'),
    -> (3, 'Sairaj', 'Pawar', 32, 'sairaj.pawar@example.com'),
    -> (4, 'Satyam', 'Gopale', 25, 'satyam.gopale@example.com'),
    -> (5, 'Shubham', 'Babar', 31, 'shubham.babar@example.com');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> --  Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table.
mysql> select first_name, last_name from employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Hritik     | Kulkarni  |
| Pratik     | Kulkarni  |
| Sairaj     | Pawar     |
| Satyam     | Gopale    |
| Shubham    | Babar     |
+------------+-----------+
5 rows in set (0.00 sec)

mysql> -- Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years.
mysql> select first_name ,last_name,age from student where age > 30;
ERROR 1146 (42S02): Table 'emp.student' doesn't exist
mysql> select first_name ,last_name,age from employee where age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Sairaj     | Pawar     |   32 |
| Shubham    | Babar     |   31 |
+------------+-----------+------+
2 rows in set (0.01 sec)

mysql> -- Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 25
mysql> update employee set age = age + 1 where age > 25;
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> select * from employee;
+--------+------------+-----------+------+-----------------------------+
| emp_id | first_name | last_name | age  | email                       |
+--------+------------+-----------+------+-----------------------------+
|      1 | Hritik     | Kulkarni  |   30 | hritik.kulkarni@example.com |
|      2 | Pratik     | Kulkarni  |   28 | pratik.kulkarni@example.com |
|      3 | Sairaj     | Pawar     |   33 | sairaj.pawar@example.com    |
|      4 | Satyam     | Gopale    |   25 | satyam.gopale@example.com   |
|      5 | Shubham    | Babar     |   32 | shubham.babar@example.com   |
+--------+------------+-----------+------+-----------------------------+
5 rows in set (0.01 sec)

mysql>