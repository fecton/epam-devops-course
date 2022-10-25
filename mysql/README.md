<<<<<<< HEAD
# My work at the EPAM Univesity: completed tasks, experiments and so on
- [Bash 1](bash_1/README.md)

=======
# Database Managment
# PART 1
## 1. Mysql installing
```
sudo apt-get install mysql-server -y
```
![Image](./screenshots/mysql_install.png)


## 2. Mysql works properly
```
sudo service mysql status
mysql -u root -p

CREATE USER 'junops'@'localhost' IDENTIFIED WITH mysql_native_password BY '77435';

ALTER USER 'sammy'@'localhost' IDENTIFIED WITH
mysql_native_password BY 'password';

GRANT CREATE,ALTER,DROP,INSERT,UPDATE,DELETE,SELECT,REFERENCES,RELOAD on *.* TO 'junops'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;
```
![Image](./screenshots/mysql_status.png)
![Image](./screenshots/mysql_login.png)
![Image](./screenshots/mysql_createuser.png)
![Image](./screenshots/mysql_grant.png)
![Image](./screenshots/mysql_flush.png)

## 3/4. Creating 3 tables
```
CREATE TABLE users (
    id          INT NOT NULL AUTO_INCREMENT,
    username    VARCHAR(128) NOT NULL,
    phone       VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE admin (
    id          INT NOT NULL AUTO_INCREMENT,
    username    VARCHAR(128) NOT NULL,
    name        VARCHAR(128) NOT NULL,
    priv        VARCHAR(128) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE news (
    id      INT NOT NULL AUTO_INCREMENT,
    title   VARCHAR(128) NOT NULL,
    text    TEXT NOT NULL,
    date    DATE NOT NULL,
    PRIMARY KEY (id)
);
```
![Image](./screenshots/database_createtables.png)
![Image](./screenshots/alter_table.png)

## 5. Filling the tables
```
INSERT INTO users (username, phone) VALUES (
    'Nastya', 
    '09324294902309'
);

INSERT INTO news (title,text,date,popularity) VALUES (
    'Python is relevant?', 
    'Yes, Python is always relevant :D', 
    '2021-7-12', 
    1000
);

INSERT INTO admin (username, name, priv) VALUES (
    'fecton',
    'Andrew',
    'I like kvas'
);
```
![Image](./screenshots/insert_users.png)
![Image](./screenshots/insert_news.png)
![Image](./screenshots/insert_admin.png)

## 6. Constructing and executing SELECT operator with WHERE, GROUP BY and ORDER BY
```
SELECT COUNT(id),username,phone FROM users WHERE username='Nastya';

SELECT COUNT(id),username,phone FROM users GROUP BY username;

SELECT COUNT(id),username,phone FROM users GROUP BY username ORDER BY username;
```
![Image](./screenshots/select_group.png)
![Image](./screenshots/orderby.png)

## 7. Execute other different SQL queries DDL, DML, DCL
- DDL - Data Defenition Language
- DML - Data Manipulation Language
- DCL - Data Control Language
```
UPDATE users SET username='Andrzej' WHERE username='Andrew';

DROP TABLE admin;
```
![Image](./screenshots/update.png)
![Image](./screenshots/drop.png)

Grant I used in screenshots before

## 8. Create a database of new userrs with different privileges. Connect to the database as a new user and verify that the privileges allow or deny certain actions.
```
CREATE DATABASE priv_test;
USE priv_test;

CREATE USER 'view_only'@'localhost' IDENTIFIED WITH mysql_native_password BY '123';

CREATE USER 'editor'@'localhost' IDENTIFIED WITH mysql_native_password BY '123';

CREATEE TABLE books (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(128) NOT NULL,
    book_name VARCHAR(128) NOT NULL,
    price INT NOT NULL,
    PRIMARY KEY(id)
);

GRANT SELECT ON priv_test.books TO 'view_only'@'localhost';

GRANT ALTER,INSERT,UPDATE,SELECT,DELETE ON priv_test.books TO 'editor'@'localhost';

FLUSH PRIVILEGES;
```
![Image](./screenshots/task_8_1.png)
![Image](./screenshots/task_8_2.png)
![Image](./screenshots/task_8_31.png)
![Image](./screenshots/task_8_32.png)
![Image](./screenshots/task_8_41.png)
![Image](./screenshots/task_8_42.png)

## 9. Make a selection from the main table DB MySQL
```
USE mysql;
SHOW TABLES;
SELECT * FROM db;
SELECT * FROM user;
```
![Image](./screenshots/task_9.png)

# PART 2
## 10. Make backup of your database
```
sudo mysqldump -u root -p telegram_bot > users01.sql
```
![Image](./screenshots/task_10.png)

## 11. Delete the table and/or part of the data in the table 
```
DROP TABLE admin;
DELETE FROM users WHERE username='Sergey';
```
![Image](./screenshots/task_11_1.png)
![Image](./screenshots/task_11_2.png)

## 12. Restore your database
```
sudo mysql -u root -p < users01.sql
```
![Image](./screenshots/task_12_1.png)
![Image](./screenshots/task_12_2.png)

## 13. Transfer your local database to RDS AWS
![Image](./screenshots/task_13.png)
![Image](./screenshots/task_13_1.png)

## 15. Execute SELECT operator similar step 6.
![Image](./screenshots/task_15.png)

## 16. Create the dump of your database.
![Image](./screenshots/task_16.png)


# PART 3
## 17. Create a database. Use the use command to connect to a new database (If it doesn't exist, Mongo will create it when you write to it).
```
show dbs;
use demoDatabase;
```
![Image](./screenshots/task_17.png)

## 18. Create a collection. Use db.createCollection to create a collection. I'll leave the subject up to you. Run show dbs and show collections to view your database and collections.
```
db.createCollection("contacts");
```
![Image](./screenshots/task_18.png)

## 19/20. Create some documents. Insert a couple of documents into your collection. I'll leave the subject matter up to you, perhaps cars or hats. Use find() to list documents out.
```
db.contacs.insert({"name":"suraj"});
show collections;
db.contacts.find();
```
![Image](./screenshots/task_19_20.png)
>>>>>>> mysql
