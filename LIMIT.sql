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

-- Show only the first 3 rows
SELECT * FROM personal LIMIT 3;

-- Skip the first 2 rows, then show the next 3
SELECT * FROM personal LIMIT 3 OFFSET 2;

-- Show the youngest 2 people
SELECT * FROM personal ORDER BY age ASC LIMIT 2;

-- Show the oldest 2 people
SELECT * FROM personal ORDER BY age DESC LIMIT 2;
