Create database BestBudy;
create table admin(
ADMINID varchar(20),
possward varchar(10),


CREATE TABLE USERS(
id NOT NULL PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(30) NOT NULL UNIQUE,
password VARCHAR(50) NOT NULL UNIQUE,
Create_At DATETIME DEFAULT CURRENT_TIMESTRAMP
);

CREATE TABLE Customer(
id INT,
name VARCHAR(15),
address VARCHAR(30),
email VARCHAR(20) UNIQUE,
age INT NOT NULL CHECK(age> 15),
contactNo INT NOT NULL UNIQUE,
createAt TIMESTAMP,
PRIMARY KEY(id)
);

CREATE TABLE Product_category(
id INT,
name VARCHAR(20),
createAt TIMESTAMP,
modified_At TIMESTAMP,
deleted_At TIMESTAMP,
);
 
 CREATE TABLE discount(
 id INT,
 name VARCHAR(20),
 discount_percenta int,
 active boolean,
 createAt TIMESTAMP,
modified_At TIMESTAMP,
deleted_At TIMESTAMP,
);

CREATE TABLE orders(
ord_id INT NOT NULL, 
ord_num INT NOT NULL UNIQUE,
cust_id INT,
PRIMARY KEY(ord_id),
FOREIGN KEY(cust_id)references
customer(id)
);

Create table user_address(
id int,
user_id int,
address varchar(30),
city varchar(20),
postal_code varchar(20),
country varchar(20),
mobile int
);

 


