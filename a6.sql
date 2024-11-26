create database shop;
use shop;
create table customer(
customer_id int not null,
cust_name varchar(20),
city varchar(20),
grade int,
salesman_id int,
primary key(customer_id),
foreign key(salesman_id) references salesman(salesman_id)
);
insert into customer(customer_id,cust_name,city,grade,salesman_id)
values(3002,'Nick Rimando','New York',100,5001),(3007,'Brade Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),(3008,'Julian Green','London',300,5002);

create table salesman(
salesman_id int not null,
salesman_name varchar(20),
city varchar(20),
commission double,
primary key(salesman_id)
);

insert into salesman(salesman_id,salesman_name,city,commission)
values(5001,'James Hoog','New York',0.15),(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),(5006,'Mc Lyon','Paris',0.14);

create table orders(
ord_no int not null,
purch_amt double,
ord_date date,
customer_id int,
salesman_id int,
primary key(ord_no),
foreign key(customer_id) references customer(customer_id),
foreign key(salesman_id) references salesman(salesman_id)
);

insert into orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)
values(70001,150.5,'2012-10-05',3005,5002),(70009,270.65,'2012-09-10',3001,5005),(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003);