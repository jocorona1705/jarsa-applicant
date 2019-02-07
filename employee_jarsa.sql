-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

--CREATE TABLE employee (
--);

--CREATE TABLE employee_department (
--);

--CREATE TABLE employee_hobby (
--);

-- ...

CREATE TABLE employee
(id bigint PRIMARY KEY,
first_name varchar(50),
last_name varchar(50));

CREATE TABLE employee_department
(id bigint PRIMARY KEY,
name varchar(50),
description varchar(MAX));

CREATE TABLE employee_department_assign
(id_employee bigint PRIMARY KEY,
id_department bigint,
CONSTRAINT fk_employee FOREIGN KEY (id_employee) REFERENCES employee (id));

insert into employee (id,first_name,last_name) values (1,'CUTBERTO','GONZALEZ LIRA')
insert into employee (id,first_name,last_name) values (2,'JOB','LIMON PUENTE')
insert into employee (id,first_name,last_name) values (3,'FRANCISCO','REZA GARCIA')
insert into employee (id,first_name,last_name) values (4,'JOSE IVAN','CORONADO VEGA')

insert into employee_department (id,name,description) values (1,'NETWORK','structured cabling, network configuration and network resources')
insert into employee_department (id,name,description) values (2,'SYSTEM DEVELOPMENT','development and implementation of the ERP system')
insert into employee_department (id,name,description) values (3,'HUMAN RESOURCES','Personal administration')
insert into employee_department (id,name,description) values (4,'PAY ROL','execution of nominal payments to employees')
insert into employee_department (id,name,description) values (5,'QUALITY','Ensure the quality of the final product')
insert into employee_department (id,name,description) values (6,'SHIPMENTS','logistics in transports of the final product')

insert into employee_department_assign (id_employee,id_department) values (1,1)
insert into employee_department_assign (id_employee,id_department) values (2,1)
insert into employee_department_assign (id_employee,id_department) values (3,2)
insert into employee_department_assign (id_employee,id_department) values (4,3)

select * from employee_department_assign
