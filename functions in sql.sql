create database learning_sql;
use learning_sql;
CREATE TABLE personal
	(
    id INT NOT NULL UNIQUE,
    name VARCHAR(30) NOT NULL,
    age int NOT NULL CHECK(age>17),
    gender VARCHAR(1) NOT NULL,
    phone VARCHAR(10) NOT NULL,
    city VARCHAR(20) DEFAULT "Delhi"
    );
INSERT INTO personal(id,name,age,gender,phone,city)
values
	(1,"Ram Kumar",19,"M",4022155,"Agra"),
    (2,"Sarita Kumari",21,"F",4034421,"Delhi"),
    (3,"Salman Khan",20,"M",4056221,"Agra"),
    (4,"Juhi Chawla",18,"F",4089821,"Bhopal"),
    (5,"Anil Kapoor",22,"M",4025221,"Agra"),
    (6,"John Abraham",21,"M",4033776,"Delhi");

SELECT * FROM personal;
SELECT id AS name_id,name AS std_name from personal;

SELECT * FROM personal													#AND operator
WHERE gender="M" AND age>20;

SELECT * FROM personal													#NOT IN operator
WHERE city NOT IN ("Delhi","BHOPAL");

SELECT * FROM personal													#IN operator
WHERE age IN (21,18);

SELECT * FROM personal													#IN operator
WHERE name BETWEEN "a" AND "k";

SELECT * FROM personal													#LIKE operator
WHERE name LIKE "ram%";

SELECT * FROM personal													#LIKE operator
WHERE name LIKE "ram%" OR name LIKE "j_h%";

SELECT * FROM personal													#LIKE operator
WHERE name NOT LIKE "ram%" OR name LIKE "j_h%";

SELECT * FROM personal													#LIKE operator
WHERE phone LIKE "%5%";

SELECT * FROM personal													#LIKE operator
WHERE name LIKE "j%m%";

SELECT * FROM personal
WHERE name REGEXP 'ra';

SELECT * FROM personal
WHERE name REGEXP 'la';

SELECT * FROM personal													#Begining
WHERE name REGEXP '^ra';

SELECT * FROM personal													#Last
WHERE name REGEXP 'an$';

SELECT * FROM personal
WHERE name REGEXP "ram|kapoor|khan";

SELECT * FROM personal
WHERE name REGEXP "ram|poor|khan";

SELECT * FROM personal
WHERE name REGEXP "^ram|poor|^khan";

SELECT * FROM personal
WHERE name REGEXP "^ram|poor|khan$";

SELECT * FROM personal
WHERE name REGEXP "[is]";

SELECT * FROM personal
WHERE name REGEXP "[rm]";

SELECT * FROM personal
WHERE name REGEXP "[rm]a";

SELECT * FROM personal
WHERE name REGEXP "[rmh]a";

SELECT * FROM personal
WHERE name REGEXP "^[rm]";

SELECT * FROM personal
WHERE name REGEXP "r[am]";

SELECT * FROM personal
ORDER BY name;

SELECT * FROM personal
ORDER BY name DESC;

SELECT * FROM personal
ORDER BY name, city;

SELECT * FROM personal
WHERE city="Agra"
ORDER BY name DESC;

SELECT DISTINCT city FROM personal;
SELECT DISTINCT age FROM personal ORDER BY age;
SELECT DISTINCT city FROM personal ORDER BY city DESC;

SELECT * FROM
personal limit 3;

ALTER TABLE personal ADD percentage float(3);
select * from personal;
update personal set percentage=70 where id=1;
update personal set percentage=72 where id=2;
update personal set percentage=60 where id=3;
update personal set percentage=67 where id=4;
update personal set percentage=82 where id=5;
update personal set percentage=78 where id=6;

select id,name, (percentage+5) from personal;

select position("world" in "hellworld");
select position("o" in "helloworld");
select instr("helloworld","ell");
select locate("ell", "helloworld");
select locate("l","helloworld",3);

select locate("l", "hellworld",5);
select locate("l", "helloworld",7);
select locate("l", "helloworld",10);

select substring("neema jha", 5);
select substring("nemma jha", 3,6);
select substring("neema jha",-6,3);
 select mid("neeema jha", -6,3);
 
 select substring_index("www.neemajha.net",".",2);
 select substring_index("www.neemajha.net","e",2);
 
 select strcmp("neema jha", "neema jha");
 select strcmp("neema jha", "neema");
 select strcmp("neema", "neema jha");
 
 select format(235.3568,3);
 select left("neema jha",3);
  select left("neema jha",5);
  
  select right("neema jha",3);
  select right("neema jha",5);
  
  select rpad("neema jha",20,"-");
  select rpad("neema jha",20,"*");
  
    select lpad("neema jha",20,"*");
     select lpad("neema jha",20,"-");
     
     select reverse("neema jha");
     select replace("neema jha", "neema", "ms.");
     
     select field("a", "X", "a", "k");
     select field("a", "X", "A", "k");
     
     select field(5,0,1,2,3,4,5);
     select field("b", "X", "a", "k");
     select field("b", "X", "a", "b");
     
     select field("ram", "ram","mohan", "shyam");
     select find_in_set("mohan", "ram,mohan,shyam");
     
     select current_date();
     
     select curdate();
     select sysdate();
     select now();
     select date("2025-10-14 10:09:21");
select month("2025-10-14 10:09:21");
select monthname("2025-10-14 10:09:20");
select year("2025-10-14 10:09:20");
select quarter("2025-10-14 10:09:20");
select day("2025-10-14 10:09:20");
select dayofmonth("2025-10-14 10:09:20");
select dayname("2025-10-14 10:09:20");
select dayofweek("2025-10-14 10:09:20");
select week("2025-10-14 10:09:20");
select weekday("2025-10-14 10:09:20");
select yearweek("2025-10-14 10:09:20");
 select last_day("2025-10-14 10:09:20");
select extract(month from "2025-10-14 10:09:20");
select extract(year from "2025-10-14 10:09:20");
select extract(week from "2025-10-14 10:09:20");
select extract(day from "2025-10-14 10:09:20");
 select extract(hour from "2025-10-14 10:09:20");
 select extract(minute from "2025-10-14 10:09:20");
 select extract(second from "2025-10-14 10:09:20");
 
 select adddate("2025-10-14", interval 10 day);
 select adddate("2025-10-14", interval 1 month);
 select adddate("2025-10-14", interval 1 year);
 select date_add("2025-10-14", interval 500 minute);
 
 select subdate("2025-10-14" , interval 1 day);
 select datediff("2025-10-14","2025-10-13");
 
 
 select current_time();
 select curtime();
 select current_timestamp();
 select localtime();
 select localtimestamp();
 select time("2025-10-14  10:09:21");
  select hour("2025-10-14  10:09:21");
   select minute("2025-10-14  10:09:21");
 select second("2025-10-14  10:09:21");
 
 
  