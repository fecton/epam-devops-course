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

## 5. Filling the tables
```

```
![Image]()

## 6. Constructing and executing SELECT operator with WHERE, GROUP BY and ORDER BY
```

```
![Image]()

## 7. 
```

```
![Image]()

## 8. 
```

```
![Image]()