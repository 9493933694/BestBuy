create database bestbuy5;
use bestbuy5;

create table signup(
Fullname varchar(50),
username varchar(25),
Email varchar(255),
Phonenumber int,
password varchar(75),
confirmpassword varchar(75)
);
create table login(
username varchar(50) unique,
password varchar(40)
);

Create table admin(
ADMINID varchar(20),
password varchar(15)
);

create table coupn(
productname varchar(50),
usepromocode varchar(50),
Expries date
);

create table mobiles(
MOBILE_ID int (10), 
mobilename varchar(60),
price int(30),
memory varchar(20),
screen_size varchar(20),
camera varchar(20),
Battery int(20),
processor varchar(20)
);
create table watches(
watchname varchar(30),
Display varchar(60),
watchprice varchar(60)
);

create table Laptops(
LaptopID int(10),
LaptopName VARCHAR(50),
Price int(10),
Generation varchar(20),
processor varchar(20),
Graphic_card Varchar(10),
memory varchar(20),
clockspeed varchar(10),
display varchar(15),
color varchar(10)
);
create table jewellry(
jewellryname varchar(50),
jewellrytype varchar(60),
jewellryrate varchar(70)
);

create table cart(
cartitmes varchar(60),
productname varchar(50),
coustmerid varchar(60),
carditmes int,
createdAt TIMESTAMP
);

create table payment1(
name varchar(255)  ,
Fathername varchar(255)  ,
Email Varchar(255 ) UNIQUE,
Contanctnumber int NOT NULL UNIQUE,
address varchar(255) ,
pincode int
);

create table ordercheckout(
cardholdername varchar(50),
cardnumber int,
cardtype varchar(35),
expirydate date,
cvv int
);
