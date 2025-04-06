mysql> -- Lab Assignment: Create Employees and Departments Tables and Perform Joins

mysql> -- Creating the Departments table
mysql> CREATE TABLE Departments (
    -> Dept_ID INT PRIMARY KEY,
    -> Dept_Name VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> -- Creating the Employees table with a foreign key reference to Departments
mysql> CREATE TABLE Employees (
    -> Emp_ID INT PRIMARY KEY,
    -> Name VARCHAR(50),
    -> Dept_ID INT,
    -> FOREIGN KEY (Dept_ID) REFERENCES Departments(Dept_ID)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> -- Inserting sample data into the Departments table
mysql> INSERT INTO Departments (Dept_ID, Dept_Name) VALUES
    -> (1, 'HR'),
    -> (2, 'IT'),
    -> (3, 'Finance');
Query OK, 3 rows affected (0.01 sec)

mysql> -- Inserting sample data into the Employees table
mysql> INSERT INTO Employees (Emp_ID, Name, Dept_ID) VALUES
    -> (101, 'Sairaj Pawar', 2),
    -> (102, 'Hritik Kulkarni', 1),
    -> (103, 'Shubham Babar', 1),
    -> (104, 'Saee Kadam', 3),
    -> (105, 'Sanika Pawar', NULL);
Query OK, 5 rows affected (0.01 sec)

mysql> -- Scenario 1: Retrieve employees along with their department names using INNER JOIN
mysql> SELECT Employees.Name AS emp_name, Departments.Dept_Name AS dept_name
    -> FROM Employees
    -> INNER JOIN Departments ON Employees.Dept_ID = Departments.Dept_ID;
+------------------+------------+
| emp_name        | dept_name  |
+------------------+------------+
| Sairaj Pawar    | IT         |
| Hritik Kulkarni | HR         |
| Shubham Babar   | HR         |
| Saee Kadam      | Finance    |
+------------------+------------+
4 rows in set (0.01 sec)

mysql> -- Scenario 2: Retrieve employee name and department name using LEFT JOIN
mysql> SELECT Employees.Name AS emp_name, COALESCE(Departments.Dept_Name, 'NULL') AS dept_name
    -> FROM Employees
    -> LEFT JOIN Departments ON Employees.Dept_ID = Departments.Dept_ID;
+------------------+------------+
| emp_name        | dept_name  |
+------------------+------------+
| Sairaj Pawar    | IT         |
| Hritik Kulkarni | HR         |
| Shubham Babar   | HR         |
| Saee Kadam      | Finance    |
| Sanika Pawar    | NULL       |
+------------------+------------+
5 rows in set (0.01 sec)

mysql>
