create database joins_concepts;
use  joins_concepts;
create table employee2(
employeee_id int,
employee_name varchar(50),
department_id int,
salary int);

insert into employee2 (employeee_id ,employee_name,department_id ,salary)
values
(1,"John",101,50000),
(2,"Emma",101,65000),
(3,"Raj",102,45000),
(4,"Meera",103,70000),
(5,"Ravi",102,48000),
(6,"Naina",103,52000),
(7,"Alex",101,58000);

select* from employee2;

create table departments(
department_id int,
department_name varchar(50)
);

insert into departments(department_id,department_name)
values
(101,"Sales"),
(102,"Marketing"),
(103,"Finance"),
(104,"HR");
 select* from departments;
 
-- 1. Display employee names with their department name.
select
e.employee_name,
d.department_name
from employee2 e 
inner join departments d on e.department_id=d.department_id;

-- 2. List all employees including those with no matching department.
select
e.employeee_id,
e.employee_name,
d.department_name
from employee2 e
left join departments d on e.department_id=d.department_id; 

-- 3. List all departments even if there are no employees 
select
department_name, 
count(employee_name)
from departments d
left join employee2 e on  d.department_id=e.department_id
group by d.department_name
having count(employee_name)=0;

-- 4.	Show employees from the Sales department.
select
employee_name,
department_name
from employee2 e 
left join department d on e.department_id=d.department_id
where d.department_name="sales"; 

-- 5.	Find the top 3 highest paid employees.
select 
e.employee_name,
max(salary)
from employee2 e 
left join department d on e.department_id=d.department_id
group by employee_name
order by max(salary) desc
limit 3;

-- 6.	Find employees earning more than 50,000 from Marketing.
select
e.employee_name,
e.salary,
d.department_name
from employee2 e
left join department d on e.department_id=d.department_id
where d.department_name="marketing" and e.salary>50000;  

-- 7.	Count employees in each department.
select
d.department_name,
count(employee_name)
from department d 
inner join employee2 e on e.department_id=d.department_id
group by d.department_name
order by count(employee_name);
    
-- 8.	Show departments having more than 2 employees.
select
department_name,
count(employee_name) as employee_name
from departments d 
inner join employee2 e on e.department_id=d.department_id
group by d.department_name
having count(employee_name)>2; 

-- 9.	Show highest salary in each department.
select
department_name,
avg(salary) as salary
from departments d 
inner join employee2 e on e.department_id=d.department_id
group by d.department_name
order by avg(salary) desc
limit 1;

-- 10.	Show employees whose salary is above department average.
select
e.employee_name,
d.department_name,
e.salary
from employee2 e 
inner join departments d  on e.department_id=d.department_id
where e.salary>(select avg(salary) from employee2 where department_id=e.department_id)
order by e.salary; 

-- 11.	Show employees and their departments sorted by department name.
select
employee_name,
d.department_name,
e.salary
from employee2 e 
inner join departments d  on e.department_id=d.department_id
order by d.department_id desc; 

-- 12.	List the 2 lowest-paid employees with department names.
select
employee_name,
d.department_name,
e.salary
from employee2 e 
inner join departments d  on e.department_id=d.department_id
order by e.salary asc
limit 2;

-- 13. 	Show total salary expenditure per department.
select
d.department_name,
sum(salary)
from employee2 e 
inner join departments d  on e.department_id=d.department_id
group by d.department_name; 


-- 14. Show departments where the total salary spent is more than 150,000.
select 
d.department_name,
sum(salary)
from employee2 e 
inner join departments d  on e.department_id=d.department_id
group by d.department_name
having sum(salary)>150000;

-- 15.	Show employees who belong to departments starting with 'S'.
select
e.employee_name,
d.department_name
from employee2 e 
inner join departments d  on e.department_id=d.department_id
where d.department_name like "s%";

-- 16.	Find employees whose salary is the highest in their department
select
e.employee_name,
d.department_name,
e.salary
from employee2 e 
inner join departments d  on e.department_id=d.department_id
where e.salary=(select max(salary) from employee2 where department_id=e.department_id); 

-- 17.	Show employees and departments sorted by salary descending.
select
employee_name,
d.department_name,
e.salary
from employee2 e 
inner join departments d  on e.department_id=d.department_id
order by e.salary desc;

-- 18.	Count how many employees earn above 50,000 per department.
select
d.department_name,
count(employee_name) as employee_name
from employee2 e 
inner join departments d  on e.department_id=d.department_id
where salary>50000
group by d.department_name
order by count(employee_name);

-- 19.	Show employee name, department, and salary for employees between 45,000 and 60,000.
select
e.employee_name,
d.department_name,
e.salary
from employee2 e 
inner join departments d  on e.department_id=d.department_id
where salary between 45000 and 60000;

-- 20.	 Find departments with no employees.
select d.department_name,
e.employee_name
from departments d 
left join employee2 e on d.department_id=e.department_id
where e.employee_name is null;



