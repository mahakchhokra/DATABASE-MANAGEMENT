create table employee1(
emp_id int primary key,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary decimal(10,2),
hier_date date);

insert into employee1(emp_id,first_name ,last_name,department,salary,hier_date)
values

(1,"John","Deo","IT",60000.00,"2019-01-10"),
(2,"Jane","Smith","HR",55000.00,"2018-03-05"),
(3,"Emily","Jones","IT",62000.00,"2020-07-23"),
(4,"Michael","Brown","Finance",70000.00,"2016-05-14"),
(5,"Sarah","Davis","Finance",69000.00,"2017-11-18"),
(6,"David","Johnson","HR",48000.00,"2021-09-10");

-- 1.  Find the average salary of employees in each department. 
select department,avg(salary) as average_salary
from employee1
group by department;

-- 2. Find the total number of employees hired after 2019. 
select count(*) as total_number_of_employees
from employee1
where year(hier_date)>2019;

-- 3. List the departments and the total salary of all employees in each department, ordered by the total salary. 
select department,sum(salary) as total_salary
from employee1
group by department
order by sum(salary) desc;

-- 4. Find the highest salary in the Finance department. 
select department,sum(salary) as finance_department
from employee1
where department= "finance"
group by department
order by sum(salary) desc limit 1;

-- 5. 	Get the top 3 highest-paid employees. 
select *
from employee1
order by salary desc limit 3;

-- 6.	Find the department with the minimum average salary.  
select department,avg(salary) as minimum_average_salary
from employee1
group by department
order by avg(salary) limit 1;

 -- 7.	Display the total number of employees in each department, ordered by the number of employees. 
 select department,count(*) as number_of_employees
 from employee1
 group by department
 order by count(*);
 
  -- 8.	Find the average salary of employees who were hired before 2020.  
  select  avg(salary) as salary_of_employees
  from employee1
  where year(hier_date) <2020;
  
  -- 9.	List the names of employees in the IT department ordered by hire date, with the most recently hired employees first.
  select * 
  from employee1
  where department= "IT"
  order by hier_date desc;

-- 10. Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary.
select sum(salary) as total_salary
from employee1
where hier_date> "2019-01-01"
order by sum(salary); 

-- 11.Get the employee with the lowest salary in the HR department. 
select first_name, sum(salary) as lowest_salary
from employee1
where department= "HR"
group by first_name
order by sum(salary)
limit 1;

-- 12. Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments. 
select department,sum(salary) as total_salary
from employee1
group by department
order by sum(salary) desc
limit 2; 

-- 13. List all employees hired after 2018, ordered by salary, and show only the first 4 employees.  
select * 
from employee1
where year(hier_date)>2018
order by salary desc
limit 4;

-- 14. Find the highest salary in the IT department, but limit the results to the top 1 result.  
select *
from employee1
where department= "IT"
order by salary desc
limit 1;

-- 15.Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.  
select department,avg(salary) as average_salary
from employee1
group by department
having avg(salary) >60000



