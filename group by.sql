-- create database company;
SET SQL_SAFE_UPDATES=0;
use company;
create table employees(
id INT Primary Key Auto_Increment,
name VARCHAR(100),
position VARCHAR(100),
salary DECIMAL(10.2),
date_of_joining DATE
);
insert into employees (name,position,salary,date_of_joining) values
("John Doe", "Manager", 55000.00, "2020-01-15"),
("Jane Smith", "Developer", 48000.00, "2019-07-10"),
("Alice Johnson", "Designer", 45000.00,"2021-03-22"),
("Bob Brown"," Developer", 50000.00, "2018-11-01");
select*from employees;

-- 3.	Write a query to retrieve all employees who are Developers
select * from employees
where position= "developer";

-- 4.	Write a query to update the salary of Alice Johnson to 46000.00.
update employees
set salary= 46000 where name= "alice johnson";
select * from employees;

-- 5.	Write a query to delete the employee record for Bob Brown.
delete from employees
where name= "Bob Brown";

-- 6.	Write a query to find the employees who have a salary greater than 48000.
select * from employees
where salary >48000;

-- 7.	Write a query to add a new column email to the employees table.
select * from employees;
alter table employees add column email varchar(100);

-- 8.	Write a query to update the email for John Doe to john.doe@company.com.
update employees set email= "john.doe@company.com" where name ="John Doe";

-- 9.	Write a query to retrieve only the name and salary of all employees.
select name, salary from employees;

-- 10.	Write a query to count the number of employees who joined after January 1, 2020.
select count(*) from employees where date_of_joining >"2020-01-01";

-- 11.	Write a query to order the employees by salary in descending order
select * from employees order by salary desc;

-- 12.	Write a query to drop the email column from the employees table.
alter table employees drop column email;

-- 13.	Write a query to find the employee with the highest salary.
select * from employees order by salary desc limit 1;