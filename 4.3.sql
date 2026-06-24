CREATE TABLE students(
	`student_id` INT PRIMARY KEY,
    `full_name` VARCHAR (100),
    `birth_day` DATE,
    `gender` VARCHAR (10),
    `email` VARCHAR (100) UNIQUE
);
INSERT INTO students
VALUES 
('1', 'Nguyen Van A', '2002-12-08', 'male', 'a@gmail.com'),
('2', 'Tran Van B', '2001-10-01', 'male', 'b@gmail.com'),
('3', 'Bui Thi C', '2004-07-08', 'female', NULL),
('4', 'Lai Van D', '2001-05-20', 'male', 'd@gmail.com'),
('5', 'Duong Thi E', '2003-04-11', 'female', 'e@gmail.com');

UPDATE students SET `email` = 'c@gmail.com' WHERE (`student_id` = '3');
UPDATE students SET `gender` = 'male' WHERE (`student_id` = '5');

SELECT * FROM students WHERE YEAR(`birth_day`) BETWEEN 2003 AND 2005;

SELECT * FROM students WHERE `gender` = 'male' OR `gender` = 'female';

SELECT * FROM students WHERE `student_id` IN ('1', '4', '5');

SELECT `student_id`, `full_name`, `birth_day`  FROM students;