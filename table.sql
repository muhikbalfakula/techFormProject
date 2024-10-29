show databases;
create database techCorp;
use techCorp;
show tables from techCorp;
create table Products (
product_id int auto_increment primary key,
product_name varchar(100) not null,
category varchar(50),
prize decimal(10, 2),
stock_quantity int
);
select * from products;

create table customers(
customer_id int auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(50) unique,
phone varchar(20),
adress varchar(200)
);
select  * from customers;

create table orders(
order_id int auto_increment primary key,
customer_id int,
order_date date,
amount decimal(10,2), 
foreign key(customer_id) references customers(customer_id)
);

create table orderDetails(
order_detail_id int auto_increment primary key,
order_id int,
product_id int,
quantity int,
unit_price decimal(10,2),
foreign key (order_id) references orders(order_id),
foreign key (product_id) references products(product_id)
);
select * from orderDetails;

create table employees(
employee_id int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
email varchar (100),
phone varchar(20),
hire_date date,
department varchar(50)
);

create table supportTickets(
ticket_id int auto_increment primary key,
customer_id int,
employee_id int,
issue text,
status varchar(20),
created_at datetime,
resolved_at datetime,
foreign key (customer_id) references customers(customer_id),
foreign key (employee_id) references employees(employee_id)
);

alter table products add column discount decimal (5,2) default 0;
select * from products;

