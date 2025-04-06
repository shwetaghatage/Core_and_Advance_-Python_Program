mysql> use emp;
Database changed
mysql> desc student;;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| id         | int         | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(50) | YES  |     | NULL    |                |
| last_name  | varchar(50) | YES  |     | NULL    |                |
| gender     | varchar(50) | YES  |     | NULL    |                |
| address    | varchar(50) | YES  |     | NULL    |                |
| phone_no   | double      | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
6 rows in set (0.02 sec)

ERROR:
No query specified

mysql> c^C
mysql> INSERT INTO student (first_name, last_name, gender, address, phone_no)
    -> VALUES
    -> ('Hritik', 'Kulkarni', 'Male', 'Pune, MH', 9876543210),
    -> ('Pratik', 'Kulkarni', 'Male', 'Mumbai, MH', 9123456789),
    -> ('Priya', 'Kulkarni', 'Female', 'Nashik, MH', 9988776655),
    -> ('Sairaj', 'Pawar', 'Male', 'Kolhapur, MH', 9765432109),
    -> ('Prajakta', 'Nirmal', 'Female', 'Satara, MH', 9654321098);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student order by last_name asc;
+----+------------+-----------+--------+--------------+------------+
| id | first_name | last_name | gender | address      | phone_no   |
+----+------------+-----------+--------+--------------+------------+
|  1 | Hritik     | Kulkarni  | Male   | Pune, MH     | 9876543210 |
|  2 | Pratik     | Kulkarni  | Male   | Mumbai, MH   | 9123456789 |
|  3 | Priya      | Kulkarni  | Female | Nashik, MH   | 9988776655 |
|  5 | Prajakta   | Nirmal    | Female | Satara, MH   | 9654321098 |
|  4 | Sairaj     | Pawar     | Male   | Kolhapur, MH | 9765432109 |
+----+------------+-----------+--------+--------------+------------+
5 rows in set (0.00 sec)

mysql> select gender ,count(*) as student_count from student group by gender;
+--------+---------------+
| gender | student_count |
+--------+---------------+
| Male   |             3 |
| Female |             2 |
+--------+---------------+
2 rows in set (0.01 sec)

mysql>