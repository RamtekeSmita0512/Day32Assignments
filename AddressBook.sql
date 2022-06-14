 show databases;
+--------------------+
| Database           |
+--------------------+
| address_book       |
| candidates         |
| employee           |
| employee_deptt     |
| employee_payroll   |
| information_schema |
| mysql              |
| payroll_service    |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
12 rows in set (0.00 sec)

mysql> use address_book;
Database changed
mysql> CREATE table address_book(first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50),address VARCHAR(140) NOT NULL,city VARCHAR(25),state VARCHAR(35),zip int(10) NOT NULL,phone_num int(15),email VARCHAR(25));
ERROR 1050 (42S01): Table 'address_book' already exists
mysql> CREATE DATABASE Address_Book_Service_db;
Query OK, 1 row affected (0.01 sec)

mysql> USE Address_Book_Service_db;
Database changed
mysql> CREATE table Address_Book_Service_db(first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50),address VARCHAR(140) NOT NULL,city VARCHAR(25),state VARCHAR(35),zip int(10) NOT NULL,phone_num int(15),email VARCHAR(25));
Query OK, 0 rows affected, 2 warnings (0.02 sec)

mysql> DESCRIBE Address_Book_Service_db;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| first_name | varchar(50)  | NO   |     | NULL    |       |
| last_name  | varchar(50)  | YES  |     | NULL    |       |
| address    | varchar(140) | NO   |     | NULL    |       |
| city       | varchar(25)  | YES  |     | NULL    |       |
| state      | varchar(35)  | YES  |     | NULL    |       |
| zip        | int          | NO   |     | NULL    |       |
| phone_num  | int          | YES  |     | NULL    |       |
| email      | varchar(25)  | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email)
    -> show databases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show databases' at line 2
mysql>
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| address_book            |
| address_book_service_db |
| candidates              |
| employee                |
| employee_deptt          |
| employee_payroll        |
| information_schema      |
| mysql                   |
| payroll_service         |
| performance_schema      |
| sakila                  |
| sys                     |
| world                   |
+-------------------------+
13 rows in set (0.00 sec)

mysql> INSERT INTO Address_Book_Service_db(INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email))
    -> INSERT INTO Address_Book_Service_db(first_name,last_name,address,city,state,zip,phone_num,email)VALUES ('Smita','Ramteke','Jaitala','Nagpur','Maharshtra',440036,9158413458,smita@gmail.com);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,e' at line 1
mysql> USE Address_Book_Service_db;
Database changed
mysql> CREATE table address_book(first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50),address VARCHAR(140) NOT NULL,city VARCHAR(25),state VARCHAR(35),zip int(10) NOT NULL,phone_num int(15),email VARCHAR(25));
Query OK, 0 rows affected, 2 warnings (0.02 sec)

mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email)values('Smita','Ramteke','Jaitala','Nagpur','Maharashtra',440036,9158413458,'smita5@gmail.com');
ERROR 1264 (22003): Out of range value for column 'phone_num' at row 1
mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email)values('Smita','Ramteke','Jaitala','Nagpur','Maharashtra',440036,91584134,'smita5@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email)values('Neha','Chokhandre','Verma Layout','Nagpur','Maharashtra',440021,9658984,'neha5@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email)values('swati','Chokhandre','Gayatri Layout','Nagpur','Maharashtra',440022,9569544,swati5@gmail.com');
    '>
    '>
    '>
    '>
    '> select * from address_book;
    '>
    '>
    '> show databases;
    '>
    '> show databases;
    '>
    '>
    '>
    '>
    '>
    '>
    '>
    '>
    '> ``
    '>
    '> select * from address_book;
    '>
    '>
    '>
    '>
    '>
    '>
    '>
    '>
    '> ^C
mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email)values('swati','Chokhandre','Gayatri Layout','Nagpur','Maharashtra',440022,9569544,'swati5@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> select * from address_book;
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
| first_name | last_name  | address        | city   | state       | zip    | phone_num | email            |
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
| Smita      | Ramteke    | Jaitala        | Nagpur | Maharashtra | 440036 |  91584134 | smita5@gmail.com |
| Neha       | Chokhandre | Verma Layout   | Nagpur | Maharashtra | 440021 |   9658984 | neha5@gmail.com  |
| swati      | Chokhandre | Gayatri Layout | Nagpur | Maharashtra | 440022 |   9569544 | swati5@gmail.com |
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
3 rows in set (0.00 sec)

mysql> UPDATE address_book set phone_num=78945631 WHERE first_name='Smita';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  SELECT * from address_book;
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
| first_name | last_name  | address        | city   | state       | zip    | phone_num | email            |
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
| Smita      | Ramteke    | Jaitala        | Nagpur | Maharashtra | 440036 |  78945631 | smita5@gmail.com |
| Neha       | Chokhandre | Verma Layout   | Nagpur | Maharashtra | 440021 |   9658984 | neha5@gmail.com  |
| swati      | Chokhandre | Gayatri Layout | Nagpur | Maharashtra | 440022 |   9569544 | swati5@gmail.com |
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
3 rows in set (0.00 sec)

mysql> DELETE from address_book WHERE first_name='Neha' and last_name='Chokhnadre';
Query OK, 0 rows affected (0.00 sec)

mysql>  SELECT * from address_book;
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
| first_name | last_name  | address        | city   | state       | zip    | phone_num | email            |
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
| Smita      | Ramteke    | Jaitala        | Nagpur | Maharashtra | 440036 |  78945631 | smita5@gmail.com |
| Neha       | Chokhandre | Verma Layout   | Nagpur | Maharashtra | 440021 |   9658984 | neha5@gmail.com  |
| swati      | Chokhandre | Gayatri Layout | Nagpur | Maharashtra | 440022 |   9569544 | swati5@gmail.com |
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
3 rows in set (0.00 sec)

mysql>  SELECT * from address_book;
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
| first_name | last_name  | address        | city   | state       | zip    | phone_num | email            |
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
| Smita      | Ramteke    | Jaitala        | Nagpur | Maharashtra | 440036 |  78945631 | smita5@gmail.com |
| Neha       | Chokhandre | Verma Layout   | Nagpur | Maharashtra | 440021 |   9658984 | neha5@gmail.com  |
| swati      | Chokhandre | Gayatri Layout | Nagpur | Maharashtra | 440022 |   9569544 | swati5@gmail.com |
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
3 rows in set (0.00 sec)

mysql> DELETE from address_book WHERE first_name='Neha' and last_name='Chokhandre';
Query OK, 1 row affected (0.00 sec)

mysql>  SELECT * from address_book;
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
| first_name | last_name  | address        | city   | state       | zip    | phone_num | email            |
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
| Smita      | Ramteke    | Jaitala        | Nagpur | Maharashtra | 440036 |  78945631 | smita5@gmail.com |
| swati      | Chokhandre | Gayatri Layout | Nagpur | Maharashtra | 440022 |   9569544 | swati5@gmail.com |
+------------+------------+----------------+--------+-------------+--------+-----------+------------------+
2 rows in set (0.00 sec)

mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email)values('Payal','Sahu','Sawawalambhi Layout','Nagpur','Maharashtra',440023,84567544,'payal5@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email)values('Senha','Thaware','Trimurti Layout','Chandrapur','Maharashtra',440026,84468984,'Sneha5@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email)values('Priyanka','Raut','Mangalmurti Layout','Chandrapur','Maharashtra',440056,8456884,'Priyanka5@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql>  SELECT * from address_book;
+------------+------------+---------------------+------------+-------------+--------+-----------+---------------------+
| first_name | last_name  | address             | city       | state       | zip    | phone_num | email               |
+------------+------------+---------------------+------------+-------------+--------+-----------+---------------------+
| Smita      | Ramteke    | Jaitala             | Nagpur     | Maharashtra | 440036 |  78945631 | smita5@gmail.com    |
| swati      | Chokhandre | Gayatri Layout      | Nagpur     | Maharashtra | 440022 |   9569544 | swati5@gmail.com    |
| Payal      | Sahu       | Sawawalambhi Layout | Nagpur     | Maharashtra | 440023 |  84567544 | payal5@gmail.com    |
| Senha      | Thaware    | Trimurti Layout     | Chandrapur | Maharashtra | 440026 |  84468984 | Sneha5@gmail.com    |
| Priyanka   | Raut       | Mangalmurti Layout  | Chandrapur | Maharashtra | 440056 |   8456884 | Priyanka5@gmail.com |
+------------+------------+---------------------+------------+-------------+--------+-----------+---------------------+
5 rows in set (0.00 sec)

mysql>  SELECT * FROM address_book WHERE city='Chnadrapur';
Empty set (0.00 sec)

mysql>  SELECT * FROM address_book WHERE city='Chandrapur';
+------------+-----------+--------------------+------------+-------------+--------+-----------+---------------------+
| first_name | last_name | address            | city       | state       | zip    | phone_num | email               |
+------------+-----------+--------------------+------------+-------------+--------+-----------+---------------------+
| Senha      | Thaware   | Trimurti Layout    | Chandrapur | Maharashtra | 440026 |  84468984 | Sneha5@gmail.com    |
| Priyanka   | Raut      | Mangalmurti Layout | Chandrapur | Maharashtra | 440056 |   8456884 | Priyanka5@gmail.com |
+------------+-----------+--------------------+------------+-------------+--------+-----------+---------------------+
2 rows in set (0.00 sec)

mysql>  SELECT * FROM address_book WHERE city='Nagpur';
+------------+------------+---------------------+--------+-------------+--------+-----------+------------------+
| first_name | last_name  | address             | city   | state       | zip    | phone_num | email            |
+------------+------------+---------------------+--------+-------------+--------+-----------+------------------+
| Smita      | Ramteke    | Jaitala             | Nagpur | Maharashtra | 440036 |  78945631 | smita5@gmail.com |
| swati      | Chokhandre | Gayatri Layout      | Nagpur | Maharashtra | 440022 |   9569544 | swati5@gmail.com |
| Payal      | Sahu       | Sawawalambhi Layout | Nagpur | Maharashtra | 440023 |  84567544 | payal5@gmail.com |
+------------+------------+---------------------+--------+-------------+--------+-----------+------------------+
3 rows in set (0.00 sec)

mysql> SELECT COUNT(*) FROM address_book WHERE city='Nagpur';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) FROM address_book WHERE city='Chandrapur';
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) FROM address_book WHERE state='Maharashtra';
+----------+
| COUNT(*) |
+----------+
|        5 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT * FROM address_book WHERE city='Chandrapur' ORDER BY first_name;
+------------+-----------+--------------------+------------+-------------+--------+-----------+---------------------+
| first_name | last_name | address            | city       | state       | zip    | phone_num | email               |
+------------+-----------+--------------------+------------+-------------+--------+-----------+---------------------+
| Priyanka   | Raut      | Mangalmurti Layout | Chandrapur | Maharashtra | 440056 |   8456884 | Priyanka5@gmail.com |
| Senha      | Thaware   | Trimurti Layout    | Chandrapur | Maharashtra | 440026 |  84468984 | Sneha5@gmail.com    |
+------------+-----------+--------------------+------------+-------------+--------+-----------+---------------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM address_book WHERE city='Nagpur' ORDER BY first_name;
+------------+------------+---------------------+--------+-------------+--------+-----------+------------------+
| first_name | last_name  | address             | city   | state       | zip    | phone_num | email            |
+------------+------------+---------------------+--------+-------------+--------+-----------+------------------+
| Payal      | Sahu       | Sawawalambhi Layout | Nagpur | Maharashtra | 440023 |  84567544 | payal5@gmail.com |
| Smita      | Ramteke    | Jaitala             | Nagpur | Maharashtra | 440036 |  78945631 | smita5@gmail.com |
| swati      | Chokhandre | Gayatri Layout      | Nagpur | Maharashtra | 440022 |   9569544 | swati5@gmail.com |
+------------+------------+---------------------+--------+-------------+--------+-----------+------------------+
3 rows in set (0.00 sec)

mysql> ALTER table  address_book ADD name VARCHAR(37) NOT NULL;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE address_book ADD type VARCHAR(37) NOT NULL;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE address_book;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| first_name | varchar(50)  | NO   |     | NULL    |       |
| last_name  | varchar(50)  | YES  |     | NULL    |       |
| address    | varchar(140) | NO   |     | NULL    |       |
| city       | varchar(25)  | YES  |     | NULL    |       |
| state      | varchar(35)  | YES  |     | NULL    |       |
| zip        | int          | NO   |     | NULL    |       |
| phone_num  | int          | YES  |     | NULL    |       |
| email      | varchar(25)  | YES  |     | NULL    |       |
| name       | varchar(37)  | NO   |     | NULL    |       |
| type       | varchar(37)  | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
10 rows in set (0.01 sec)

mysql> SELECT * from address_book;
+------------+------------+---------------------+------------+-------------+--------+-----------+---------------------+------+------+
| first_name | last_name  | address             | city       | state       | zip    | phone_num | email               | name | type |
+------------+------------+---------------------+------------+-------------+--------+-----------+---------------------+------+------+
| Smita      | Ramteke    | Jaitala             | Nagpur     | Maharashtra | 440036 |  78945631 | smita5@gmail.com    |      |      |
| swati      | Chokhandre | Gayatri Layout      | Nagpur     | Maharashtra | 440022 |   9569544 | swati5@gmail.com    |      |      |
| Payal      | Sahu       | Sawawalambhi Layout | Nagpur     | Maharashtra | 440023 |  84567544 | payal5@gmail.com    |      |      |
| Senha      | Thaware    | Trimurti Layout     | Chandrapur | Maharashtra | 440026 |  84468984 | Sneha5@gmail.com    |      |      |
| Priyanka   | Raut       | Mangalmurti Layout  | Chandrapur | Maharashtra | 440056 |   8456884 | Priyanka5@gmail.com |      |      |
+------------+------------+---------------------+------------+-------------+--------+-----------+---------------------+------+------+
5 rows in set (0.00 sec)

mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email,name,type)values('Senha','Thaware','Trimurti Layout','Chandrapur','Maharashtra',440026,84468984,'Sneha5@gmail.com','Sneha','Teacher');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email,name,type)values('Payal','Sahu','Sawawalambhi Layout','Nagpur','Maharashtra',440023,84567544,'payal5@gmail.com','Payal','Teacher');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into address_book(first_name,last_name,address,city,state,zip,phone_num,email,name,type)values('Priyanka','Raut','Mangalmurti Layout','Chandrapur','Maharashtra',440056,8456884,'Priyanka5@gmail.com','Priyanka','Principal');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * from address_book;
+------------+------------+---------------------+------------+-------------+--------+-----------+---------------------+----------+-----------+
| first_name | last_name  | address             | city       | state       | zip    | phone_num | email               | name     | type      |
+------------+------------+---------------------+------------+-------------+--------+-----------+---------------------+----------+-----------+
| Smita      | Ramteke    | Jaitala             | Nagpur     | Maharashtra | 440036 |  78945631 | smita5@gmail.com    |          |           |
| swati      | Chokhandre | Gayatri Layout      | Nagpur     | Maharashtra | 440022 |   9569544 | swati5@gmail.com    |          |           |
| Payal      | Sahu       | Sawawalambhi Layout | Nagpur     | Maharashtra | 440023 |  84567544 | payal5@gmail.com    |          |           |
| Senha      | Thaware    | Trimurti Layout     | Chandrapur | Maharashtra | 440026 |  84468984 | Sneha5@gmail.com    |          |           |
| Priyanka   | Raut       | Mangalmurti Layout  | Chandrapur | Maharashtra | 440056 |   8456884 | Priyanka5@gmail.com |          |           |
| Senha      | Thaware    | Trimurti Layout     | Chandrapur | Maharashtra | 440026 |  84468984 | Sneha5@gmail.com    | Sneha    | Teacher   |
| Payal      | Sahu       | Sawawalambhi Layout | Nagpur     | Maharashtra | 440023 |  84567544 | payal5@gmail.com    | Payal    | Teacher   |
| Priyanka   | Raut       | Mangalmurti Layout  | Chandrapur | Maharashtra | 440056 |   8456884 | Priyanka5@gmail.com | Priyanka | Principal |
+------------+------------+---------------------+------------+-------------+--------+-----------+---------------------+----------+-----------+
8 rows in set (0.00 sec)

mysql> SELECT COUNT(*) from address_book WHERE type='Teacher';
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) from address_book WHERE type='Principal';
+----------+
| COUNT(*) |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)

mysql>
