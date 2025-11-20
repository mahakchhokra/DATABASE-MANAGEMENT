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
    
-- Add a new column
ALTER TABLE personal ADD email VARCHAR(50);

-- Modify column data type
ALTER TABLE personal MODIFY phone VARCHAR(15);

-- Drop a column
ALTER TABLE personal DROP COLUMN gender;

-- Drop a table
DROP TABLE personal;

-- Clear all data but keep table definition
TRUNCATE TABLE personal;

-- Rename table
ALTER TABLE personal RENAME COLUMN city TO location;

-- Move 'city' column to appear after 'name'
ALTER TABLE personal MODIFY city VARCHAR(20) AFTER name;

-- Move 'city' column to the first position
ALTER TABLE personal MODIFY city VARCHAR(20) FIRST;


