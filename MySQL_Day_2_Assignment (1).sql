Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

--Creating Database

mysql> use  StudentManagementSystem;
Database changed

--creating student table

mysql> create table student(studentid varchar(50) primary key, FirstName varchar(100), LastName varchar(100), DateOfBirth varchar(50),email varchar(100), phone varchar(100))
    -> ;
Query OK, 0 rows affected (0.03 sec)

--creating course table

mysql> create table course(CourseId varchar(100) primary key, CourseTitle varchar(50),credit double)
    -> ;
Query OK, 0 rows affected (0.02 sec)

--creating instructor table

mysql> create table instructor(InstructorId varchar(50) ,FirstName varchar(100) ,LastName varchar(100),email varchar(100));
Query OK, 0 rows affected (0.02 sec)

--creating Enrollment Table

mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    ->     EnrollmentDate DATE NOT NULL,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     InstructorID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID) ON DELETE CASCADE,
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID) ON DELETE CASCADE,
    ->     FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID) ON DELETE SET NULL
    -> );
ERROR 3780 (HY000): Referencing column 'StudentID' and referenced column 'StudentID' in foreign key constraint 'enrollment_ibfk_1' are incompatible.
mysql>     FOREIGN KEY (InstructorId) REFERENCES Instructor(Ins
tructorId) ON DELETE SET NULL
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FOREIGN KEY (InstructorId) REFERENCES Instructor(InstructorId) ON DELETE SET NUL' at line 1                     create table Enrcreate table Enrollment(EnrollmentId int primary key,lmentId int primary key,Enrollmearchar(50) , CourseId varchar(100), InstructorId varchar(50), FOREIGN KEY (studentid) REFERENCES student(studentid),FOREIGN KEY (CourseId) REFERENCES course(CourceId),FOREIGN KEY (InstructorId) REFERENCES instructor(InstructorId);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table Enrollment(EnrollmentId int primary key,EnrollmentDate date, studentid varchar(50) , CourseId varchar(100), InstructorId varchar(50), FOREIGN KEY (studentid) REFERENCES student(studentid),FOREIGN KEY (CourseId) REFERENCES course(CourceId),FOREIGN KEY (InstructorId) REFERENCES instructor(InstructorId));
ERROR 3734 (HY000): Failed to add the foreign key constraint. Missing column 'CourceId' for constraint 'enrollment_ibfk_2' in the referenced table 'course'
mysql> create table Enrollment(EnrollmentId int primary key,EnrollmentDate date, studentid varchar(50) , CourseId varchar(100), InstructorId varchar(50), FOREIGN KEY (studentid) REFERENCES student(studentid),FOREIGN KEY (CourseId) REFERENCES course(CourseId),FOREIGN KEY (Inst
ructorId) REFERENCES instructor(InstructorId));
ERROR 1822 (HY000): Failed to add the foreign key constraint. Missing index for constraint 'enrollment_ibfk_3' in the referenced table 'instructor'
mysql> create table Enrollment(EnrollmentId int primary key,EnrollmentDate date, studentid varchar(50) , CourseId varchar(100), InstructorId varchar(50), FOREIGN KEY (studentid) REFERENCES student(studentid),FOREIGN KEY (CourseId) REFERENCES course(CourseId),FOREIGN KEY (InstructorId) REFERENCES instructor(InstructorId));
ERROR 1822 (HY000): Failed to add the foreign key constraint. Missing index for constraint 'enrollment_ibfk_3' in the referenced table 'instructor'
mysql> alter table insturctor modify InstructorId varchar(50) primary key;
ERROR 1146 (42S02): Table 'studentmanagementsystem.insturctor' doesn't exist
mysql> alter table instructor modify InstructorId varchar(50) primary key;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc instructor;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| InstructorId | varchar(50)  | NO   | PRI | NULL    |       |
| FirstName    | varchar(100) | YES  |     | NULL    |       |
| LastName     | varchar(100) | YES  |     | NULL    |       |
| email        | varchar(100) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table Enrollment(EnrollmentId int primary key,EnrollmentDate date, studentid varchar(50) , CourseId varchar(100), InstructorId varchar(50), FOREIGN KEY (studentid) REFERENCES student(studentid),FOREIGN KEY (CourseId) REFERENCES course(CourseId),FOREIGN KEY (InstructorId) REFERENCES instructor(InstructorId));
Query OK, 0 rows affected (0.03 sec)

--creating Score table 

mysql> create table score(ScoreId int primary key, CourseId varchar(100) , studentid varchar(50) , DateOfExam Date ,CreditObtained int,FOREIGN KEY (CourseId) REFERENCES course(CourseId), FOREIGN KEY (studentid) REFERENCES student(studentid));
Query OK, 0 rows affected (0.03 sec)

--creating feedback Table 

mysql> create table feedback(feedbackId int primary key,studentid varchar(50) , Date Date,InstructorName varchar(100) , Feedback text,FOREIGN KEY (studentid) REFERENCES student(student
id));
Query OK, 0 rows affected (0.02 sec)

-- Description of all tables

mysql> desc student;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| studentid   | varchar(50)  | NO   | PRI | NULL    |       |
| FirstName   | varchar(100) | YES  |     | NULL    |       |
| LastName    | varchar(100) | YES  |     | NULL    |       |
| DateOfBirth | varchar(50)  | YES  |     | NULL    |       |
| email       | varchar(100) | YES  |     | NULL    |       |
| phone       | varchar(100) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> desc course;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| CourseId    | varchar(100) | NO   | PRI | NULL    |       |
| CourseTitle | varchar(50)  | YES  |     | NULL    |       |
| credit      | double       | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc instructor;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| InstructorId | varchar(50)  | NO   | PRI | NULL    |       |
| FirstName    | varchar(100) | YES  |     | NULL    |       |
| LastName     | varchar(100) | YES  |     | NULL    |       |
| email        | varchar(100) | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc Enrollment;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| EnrollmentId   | int          | NO   | PRI | NULL    |       |
| EnrollmentDate | date         | YES  |     | NULL    |       |
| studentid      | varchar(50)  | YES  | MUL | NULL    |       |
| CourseId       | varchar(100) | YES  | MUL | NULL    |       |
| InstructorId   | varchar(50)  | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc Score;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| ScoreId        | int          | NO   | PRI | NULL    |       |
| CourseId       | varchar(100) | YES  | MUL | NULL    |       |
| studentid      | varchar(50)  | YES  | MUL | NULL    |       |
| DateOfExam     | date         | YES  |     | NULL    |       |
| CreditObtained | int          | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc feedback;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| feedbackId     | int          | NO   | PRI | NULL    |       |
| studentid      | varchar(50)  | YES  | MUL | NULL    |       |
| Date           | date         | YES  |     | NULL    |       |
| InstructorName | varchar(100) | YES  |     | NULL    |       |
| Feedback       | text         | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into student(studentid,FirstName,LastNameDateOfBirth,email,phone)INSERT INTO student (StudentID, FirstName, LastName, DateOfBirth, Email, Phone)
    -> VALUES
    -> ('S101', 'Rahul', 'Sharma', '2000-05-15', 'rahul@gmail.com', '9876543210'),
    -> ('S102', 'Priya', 'Verma', '1999-09-20', 'priya@gmail.com', '9876501234'),
    -> ('S103', 'Amit', 'Singh', '2001-02-10', 'amit@gmail.com', '9876545678'),
    -> ('S104', 'Neha', 'Kumar', '1998-12-05', 'neha@gmail.com', '9876512345'),
    -> ('S105', 'Shweta', 'Patel', '2002-07-25', 'shweta@gmail.com', '9876534567');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSERT INTO student (StudentID, FirstName, LastName, DateOfBirth, Email, Phone) ' at line 1
mysql>
mysql> inster into student (studentid,FirstName,LastName, DateOfBirth,email,phone)values('S101','hritik','kulkarni','2002-08-15','hritik@10gmail.com','7058578188'),('S102','pratik','ku
lkarni','2002-08-15','pratik@10gmail.com','7058588188'),('S103','sairaj','pawar','2002-08-15
','sairaj@10gmail.com','7058578167'),('S104','satyam','gopale','2002-08-21','satyam@10gmail.
com','7058478188'),('S105','shubham','babar','2002-08-05','shubham@10gmail.com','7535578188'
));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inster into student (studentid,FirstName,LastName, DateOfBirth,email,phone)value' at line 1
mysql> insert into student (studentid,FirstName,LastName, DateOfBirth,email,phone)values('S101','hritik','kulkarni','2002-08-15','hritik@10gmail.com','7058578188'),('S102','pratik','kulkarni','2002-08-15','pratik@10gmail.com','7058588188'),('S103','sairaj','pawar','2002-08-15','sairaj@10gmail.com','7058578167'),('S104','satyam','gopale','2002-08-21','satyam@10gmail.com','7058478188'),('S105','shubham','babar','2002-08-05','shubham@10gmail.com','7535578188'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> insert into student (studentid,FirstName,LastName, DateOfBirth,email,phone)values('S101','hritik','kulkarni','2002-08-15','hritik@10gmail.com','7058578188'),('S102','pratik','kulkarni','2002-08-15','pratik@10gmail.com','7058588188'),('S103','sairaj','pawar','2002-08-15','sairaj@10gmail.com','7058578167'),('S104','satyam','gopale','2002-08-21','satyam@10gmail.com','7058478188'),('S105','shubham','babar','2002-08-05','shubham@10gmail.com','7535578188'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1

-- inserting values into student table

mysql> INSERT INTO student (StudentID, FirstName, LastName, DateOfBirth, Email, Phone)
    -> VALUES
    -> ('S101', 'Hritik', 'Kulkarni', '2002-08-15', 'hritik10@gmail.com', '7058578188'),
    -> ('S102', 'Pratik', 'Kulkarni', '2002-08-15', 'pratik10@gmail.com', '7058588188'),
    -> ('S103', 'Sairaj', 'Pawar', '2002-08-15', 'sairaj10@gmail.com', '7058578167'),
    -> ('S104', 'Satyam', 'Gopale', '2002-08-21', 'satyam10@gmail.com', '7058478188'),
    -> ('S105', 'Shubham', 'Babar', '2002-08-05', 'shubham10@gmail.com', '7535578188');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+-----------+-----------+----------+-------------+---------------------+------------+
| studentid | FirstName | LastName | DateOfBirth | email               | phone      |
+-----------+-----------+----------+-------------+---------------------+------------+
| S101      | Hritik    | Kulkarni | 2002-08-15  | hritik10@gmail.com  | 7058578188 |
| S102      | Pratik    | Kulkarni | 2002-08-15  | pratik10@gmail.com  | 7058588188 |
| S103      | Sairaj    | Pawar    | 2002-08-15  | sairaj10@gmail.com  | 7058578167 |
| S104      | Satyam    | Gopale   | 2002-08-21  | satyam10@gmail.com  | 7058478188 |
| S105      | Shubham   | Babar    | 2002-08-05  | shubham10@gmail.com | 7535578188 |
+-----------+-----------+----------+-------------+---------------------+------------+
5 rows in set (0.00 sec)

--inserting values into cource table

mysql> INSERT INTO course (CourseId, CourseTitle, Credits)
    -> VALUES
    -> ('C101', 'Database Management Systems', 4),
    -> ('C102', 'Data Structures and Algorithms', 3),
    -> ('C103', 'Operating Systems', 4),
    -> ('C104', 'Computer Networks', 3),
    -> ('C105', 'Artificial Intelligence', 5);
ERROR 1054 (42S22): Unknown column 'Credits' in 'field list'
mysql>
mysql>
mysql> INSERT INTO course (CourseId, CourseTitle, Credit)
    -> VALUES
    -> ('C101', 'Database Management Systems', 4),
    -> ('C102', 'Data Structures and Algorithms', 3),
    -> ('C103', 'Operating Systems', 4),
    -> ('C104', 'Computer Networks', 3),
    -> ('C105', 'Artificial Intelligence', 5);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from course;
+----------+--------------------------------+--------+
| CourseId | CourseTitle                    | credit |
+----------+--------------------------------+--------+
| C101     | Database Management Systems    |      4 |
| C102     | Data Structures and Algorithms |      3 |
| C103     | Operating Systems              |      4 |
| C104     | Computer Networks              |      3 |
| C105     | Artificial Intelligence        |      5 |
+----------+--------------------------------+--------+
5 rows in set (0.00 sec)


-- inserting values into instructor table

mysql> insert into instructor(InstructorId,FirstName,LastName,email)VALUES
    -> ('I101', 'Amit', 'Sharma', 'amit.sharma@gmail.com'),
    -> ('I102', 'Neha', 'Verma', 'neha.verma@gmail.com'),
    -> ('I103', 'Rajesh', 'Patil', 'rajesh.patil@gmail.com'),
    -> ('I104', 'Priya', 'Kumar', 'priya.kumar@gmail.com'),
    -> ('I105', 'Vikram', 'Singh', 'vikram.singh@gmail.com');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from instructor;
+--------------+-----------+----------+------------------------+
| InstructorId | FirstName | LastName | email                  |
+--------------+-----------+----------+------------------------+
| I101         | Amit      | Sharma   | amit.sharma@gmail.com  |
| I102         | Neha      | Verma    | neha.verma@gmail.com   |
| I103         | Rajesh    | Patil    | rajesh.patil@gmail.com |
| I104         | Priya     | Kumar    | priya.kumar@gmail.com  |
| I105         | Vikram    | Singh    | vikram.singh@gmail.com |
+--------------+-----------+----------+------------------------+
5 rows in set (0.00 sec)

--inserting values into enrollment table

mysql> insert into Enrollment(EnrollmentID,EnrollmentDate,studentid,CourseId,InstructorId)VALUES
    -> ('E101', '2024-01-10', 'S101', 'C101', 'I101'),
    -> ('E102', '2024-01-12', 'S102', 'C102', 'I102'),
    -> ('E103', '2024-02-05', 'S103', 'C103', 'I103'),
    -> ('E104', '2024-02-20', 'S104', 'C104', 'I104'),
    -> ('E105', '2024-03-01', 'S105', 'C105', 'I105');
ERROR 1366 (HY000): Incorrect integer value: 'E101' for column 'EnrollmentId' at row 1
mysql> INSERT INTO Enrollment (EnrollmentID, EnrollmentDate, StudentID, CourseID, InstructorID)
    -> VALUES
    -> (101, '2024-01-10', 'S101', 'C101', 'I101'),
    -> (102, '2024-01-12', 'S102', 'C102', 'I102'),
    -> (103, '2024-02-05', 'S103', 'C103', 'I103'),
    -> (104, '2024-02-20', 'S104', 'C104', 'I104'),
    -> (105, '2024-03-01', 'S105', 'C105', 'I105');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentId | EnrollmentDate | studentid | CourseId | InstructorId |
+--------------+----------------+-----------+----------+--------------+
|          101 | 2024-01-10     | S101      | C101     | I101         |
|          102 | 2024-01-12     | S102      | C102     | I102         |
|          103 | 2024-02-05     | S103      | C103     | I103         |
|          104 | 2024-02-20     | S104      | C104     | I104         |
|          105 | 2024-03-01     | S105      | C105     | I105         |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

--inserting values into score table

mysql> INSERT INTO Score (ScoreId, CourseId, StudentId, DateOfExam, CreditObtained)
    -> VALUES
    -> (1, 'C101', 'S101', '2024-02-10', 4),
    -> (2, 'C102', 'S102', '2024-02-12', 3),
    -> (3, 'C103', 'S103', '2024-03-05', 5),
    -> (4, 'C104', 'S104', '2024-03-15', 2),
    -> (5, 'C105', 'S105', '2024-03-20', 4);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from score;
+---------+----------+-----------+------------+----------------+
| ScoreId | CourseId | studentid | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
|       1 | C101     | S101      | 2024-02-10 |              4 |
|       2 | C102     | S102      | 2024-02-12 |              3 |
|       3 | C103     | S103      | 2024-03-05 |              5 |
|       4 | C104     | S104      | 2024-03-15 |              2 |
|       5 | C105     | S105      | 2024-03-20 |              4 |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

--inserting values into feedback table

mysql> INSERT INTO Feedback (FeedbackID, StudentID, Date, InstructorName, Feedback)
    -> VALUES
    -> (1, 'S101', '2024-03-10', 'Amit Sharma', 'The instructor explained the concepts very clearly.'),
    -> (2, 'S102', '2024-03-12', 'Neha Verma', 'The class was interactive and engaging.'),
    -> (3, 'S103', '2024-03-15', 'Rajesh Patil', 'The course material was well-structured and easy to follow.'),
    -> (4, 'S104', '2024-03-18', 'Priya Kumar', 'Great teaching style, but the pace was a bit fast.'),
    -> (5, 'S105', '2024-03-20', 'Vikram Singh', 'Very knowledgeable instructor, but more examples would be helpful.');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from feedback;
+------------+-----------+------------+----------------+--------------------------------------------------------------------+
| feedbackId | studentid | Date       | InstructorName | Feedback
                                |
+------------+-----------+------------+----------------+--------------------------------------------------------------------+
|          1 | S101      | 2024-03-10 | Amit Sharma    | The instructor explained the concepts very clearly.                |
|          2 | S102      | 2024-03-12 | Neha Verma     | The class was interactive and engaging.                            |
|          3 | S103      | 2024-03-15 | Rajesh Patil   | The course material was well-structured and easy to follow.        |
|          4 | S104      | 2024-03-18 | Priya Kumar    | Great teaching style, but the pace was a bit fast.                 |
|          5 | S105      | 2024-03-20 | Vikram Singh   | Very knowledgeable instructor, but more examples would be helpful. |
+------------+-----------+------------+----------------+--------------------------------------------------------------------+
5 rows in set (0.00 sec)