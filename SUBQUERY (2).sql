create table employees2(
emp_id int,
emp_name varchar(50),
department varchar(50),
salary int,
manager_id int);

insert into employees2 (emp_id,emp_name ,department,salary,manager_id )
values
(1,"Arjun","HR",40000,null),
(2,"Neha","IT",65000,5),
(3,"Rohan","IT",55000,5),
(4,"Meera","Fianance",70000,null),
(5,"Suresh","IT",90000,4),
(6,"Alia","HR",45000,1),
(7,"Karan","Fianance",75000,4),
(8,"Rahul","Marketing",30000,null),
(9,"Priya","Marketing",35000,8),
(10,"Varun","IT",50000,5);

select * from employees2;

-- 1. LIST EMPLOYEES EARNING MORE THAN THE AVERAGE SALARY
select emp_name,salary,(select avg(salary)from employees2 )as avg_salary
from employees2
where salary>
(select avg(salary) from employees2);

-- 2. FIND EMPLOYEES WHO EARN THE MAXIMUM SALARY
select emp_name, salary
from employees2
where salary=
(select max(salary) from employees2);

-- 3. FIND EMPLOYEES WORKING IN THE SAME DEPARTMENT AS "NEHA"
select emp_name, salary, department
from employees2
where department= 
(select department from employees2 where emp_name="Neha");

-- 4. LIST EMPLOYEES WHOSE SALARYIS HIGHER THAN SURESH"S SALARY
select emp_name, salary, department
from employees2
where salary>
(select salary from employees2 where emp_name="Suresh");

-- 5. SHOW DEPARTMENTS WHERE THE MINIMUM SALARY IS LESS THAN 40,000
select department, min(salary) as min_salary
from employees2
group by department
having min(salary) < 40000;

-- 6. FIND EMPLOYEES WHO DO NOT HAVE A MANAGER
select emp_name,department,manager_id
from employees2
where emp_id in (
select emp_id from employees2 where manager_id is null); 

-- 7. FIND EMPLOYEES WHO REPORT TO THE SAME MANAGER AS ROHAN
select emp_name,department,manager_id
from employees2
where manager_id in (
select manager_id from employees2 where emp_name="Rohan"); 

-- 8. LIST EMPLOYEES IN IT WITH SALARIES ABOVE THE IT AVERAGE
select emp_name,department,salary
from employees2
where salary >(
select avg(salary) from employees2 where department="IT"); 

-- 9. SHOW EMPLOYEES WHOSE SALARY IS IN THE BOTTOM 3
select emp_name,department,salary
from employees2
WHERE salary in (select salary from(
select salary from employees2 order by salary limit 3) as s );

-- 10. SHOW EMPLOYEES WHOSE SALARY IS WITHIN THE TOP 3
select emp_name,department,salary
from employees2
where salary in (select salary from(
select salary from employees2 order by salary desc limit 3) as s );
  
-- 11. FIND EMPLOYEE EARNING MORE THAN THE HR DEPARTMENT'S AVERAGE SALARY
select emp_name,department,salary,(select avg(salary) from employees2 where department= "HR") as HR_avg
from employees2
where salary>
(select avg(salary) from employees2 where department="HR"); 

-- 12. LIST EMPLOYEES HAVING THE SAME SALARYAS PRIYA
select emp_name,department,salary,(select avg(salary) from employees2 where emp_name= "Priya") as priya_salary
from employees2
where salary in
(select avg(salary) from employees2 where emp_name= "Priya"); 

-- 13. COUNT EMPLOYEES WHO EARN BELOW OVERALL AVERAGE
select count(*) as emp_count_below, (select avg(salary) from employees2) as overall_avg_salary
from employees2
where salary<(select avg(salary) from employees2);

-- 14. SHOW EMPLOYEES WHOSE MANAGER ERARNS MORE THAN 70,000
select emp_name,department,salary
from employees2 where manager_id in
(select manager_id from employees2 where salary>70000 and manager_id is not null);

-- 15. DISPLAY EMPLOYEES IN DEPARTMENTSWHERE MORE THAN 2 EMPLOYEES WORK 
select emp_name, department
from employees2
where department in( 
select department from employees2 group by department having count(*)>2);

-- 16. SHOW DEPARTMENTS WHERE THE AVERAGE SALARY IS ABOVE COMPANY AVERAGE
select department, avg(salary) as avg_salary
from employees2
group by department
having avg(salary) > (select avg(salary) from employees2);

-- 17. FIND THE SECOND HIGHEST SALARY
select emp_name,salary
from employees2
where salary=(
select max(salary) from employees2
where salary<(
select max(salary) from employees2));

-- 18. EMPLOYEES ITH SALARY GREATER THAN THE AVERAGE SALARY OF THEIR MANAGER'S TEAM
select emp_name, salary, manager_id
from employees2 e 
where salary > (
select avg(salary)
from employees2
where manager_id = e.manager_id);

-- 19. SHO EMPLOYEES WHO WORK IN A DEPARTMENT WHERE SURESH WORKS
select emp_name, department
from employees2
where department=(
select department from employees2 where emp_name="Suresh");

-- 20. LIST EMPLOYEES WHOSE MANAGER EARNS THE MAXIMUM SALARY
select emp_name, salary, manager_id
from employees2
where manager_id in(select emp_id from employees2
where salary=(select max(salary) from employees2));

-- 21. SHOW EMPLOYEES WHOSE SALARIES APPEAR MORE THAN ONCE
select emp_name, department salary
from employees2
where salary in (
select salary from employees2 group by salary having count(*)>1);

-- 22. LIST EMPLOYEES EARNING LESS THAN THE MINIMUM IT SALARY
select emp_name, salary, department
from employees2
where salary < (
select min(salary)
from employees2
where department="IT"); 

-- 23. SHOW EMPLOYEES WITH SALARIES HIGHER THAN THE FIANANCE AVERAGE SALARY 
select emp_name, salary, department
from employees2
where salary > (
select avg(salary)
from employees2
where department="Fianance"); 

-- 24. FIND EMPLOYEES EARNING EXACTLY THE 3 HIGHEST SALARY
select emp_name, salary
from employees2
where salary = (
select salary
from employees2
order by salary desc
limit 1 offset 2);

-- 25. LIST EMPLOYEES HAVING SALARY IN THE SAME SALARY GROUP AS MEERA'S DEPARTMENT
select emp_name, department salary
from employees2 
where department in(
select department from employees2 where salary in(
select salary from employees2 where department in(
select department from employees2 where emp_name= "Meera"))); 