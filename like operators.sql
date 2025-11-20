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
