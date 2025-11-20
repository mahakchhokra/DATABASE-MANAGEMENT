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

##IFELSE
--/**1: DETERMINE EXPERIENE LEVEL
/*write a query to display each employee's experiene level based on their years of experiene. ifexperiene is 5 or more, classify it as "senior"; otherwise, classify it as "junior."*/
select id,name, experiene,
 if(experiene>=5, "senior", "junior") as experiene_level
 from employees;
 
 /*2: calculate bonus based on department*/
/* write a query to give a 10% bonus to employees in the engineering department and 5% bonus to others. display the bonus amount for each employees.*/
 select id,name,experiene,
 if(department = "engineering", salary*0.10, salary* 0.05) as bonus
 from employees;
 
 /*3: determine eligibility for promotion*/
 /*write a query to determine if an employee is eligible for promotion. consider eligibility if they have 5 or more yeas of experiene and a salary of at least 50,000 */
 select id, name, experiene, salary,
if(experiene >=5 and salary >= 50000, "eligible", "not eligible") as promotion_eligiblity
from employees;
  
/*4: check high salary eligiblity*/
  
 /* write a query to determine if an employee"s salary is above the average salary. display "above average" if their salary is above the average, otherwise "below average."*/ 
  select id name, name, salary,
  if (salary> (select avg(salary) from employees), "above average", "below average") as salary_level
  from employees;