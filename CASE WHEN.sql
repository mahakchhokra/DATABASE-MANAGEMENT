create table employees
(
id int primary key,
name varchar(50),
department varchar(50),
salary decimal(10,2),
experiene INT
);

insert into employees (id,name,department,salary,experiene) values
(1,'alice','HR',5000,5),
(2,'bob','engineering',70000,9),
(3,'charlie','engineering',60000,3),
(4,'david','HR',45000,1),
(5,'eve','marketing',55000,4);

/*case when */
  create table employees2(
  emp_id int primary key,
  name varchar (50),
  department varchar(30),
  salary int,
  experiene int,
  gender varchar(10)
  );
  
  insert into employees2 values
  (1,"alice""HR",40000,3,"female"),
  (2,"bob","finance",60000,6,"male"),
  (3,"charlie","IT",55000,4,"male"),
  (4,"david","IT",80000,10,"male"),
  (5,"eva","finance",45000,2,"female"),
  (6,"frank","HR",50000,7,"male"),
  (7,"grace","IT",30000,1,"female"),
  (8,"helen","finance",70000,9,"female"),
  (9,"lan","HR",65000,8,"male"),
  (10,"julia","IT",40000,3,"female");
  select * from employees;
-/*categorize salary level*/
select name, salary,
  case
  when salary>70000 then "high"
  when salary between 40000 and 70000 then "medium"
  else "low"
  end as salary_level
  from employees;
  
  
/* bonus based on experiene*/
select name, experiene,
case
  when experiene >=8 then 10000
  when experiene >=5 then 7000
  else 3000
  end as bonus
  from employees2;
  
/* geder title*/
select name,
case gender
when "male" THEN CONCAT("mr.",name)
when "female" THEN CONCAT("Ms.",name)
end as titled_name
from employees;


select name,experiene, salary,
case
when experiene>8 and salary >60000 then "a"
When experiene between 5 and 8 then "b" 
else "c" 
end as performance_grade
from employees;

select department, name,
case
 when "IT" then "D01"
when "finance" then "D02"
when  "HR" then "D03"
end as dept_code
from employees;

select name, salary,
case
when salary < 40000 then salary*0.2
when salary between 40000 and 60000 then salary*0.1
end as salary_enc
from employees;
use learning_sql;
select name, department,
case
when department in( "IT","finance") then "technical"
else "non technical"
end as dept_type
from employees;

select name, salary,
case
when salary >(select avg(salary) from employees) then "average salary"
else "below average"
end as average



from employees;
  
