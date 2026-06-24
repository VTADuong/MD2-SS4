CREATE TABLE employees (
	`employee_id` INT PRIMARY KEY,
    `full_name` VARCHAR (100),
    `birth_year` YEAR,
    `department` VARCHAR (20),
    `salary` DECIMAL (15, 0),
    `phone` INT
);
INSERT INTO employees
VALUE
('1', 'Nguyen Long Nhat', '1980', 'Sale', '5000000', '0789656678'),
('2', 'Tran Anh Luyen', '1979', 'HR', '15000000', '0967145541'),
('3', 'Nguyen Ngoc Lien', '1990', 'Marketing', '5000000', '0323768900'),
('4', 'Le Thanh Mai', '1989', 'Sale', '21000000', '0434768788'),
('5', 'Bui Manh Hai', '1991', 'IT', '17000000', NULL),
('6', 'Nguyen Anh', '1980', 'Sale', '25000000', '0789656678'),
('7', 'Tran Lung', '1979', 'IT', '4000000', '0967145541'),
('8', 'Nguyen Lien', '1990', 'Marketing', '3000000', '0323768900'),
('9', 'Le Thanh', '1989', 'IT', '21000000', '0434768788'),
('10', 'Bui Hien', '1991', 'IT', '16000000', '0666478788');

SELECT * FROM employees WHERE `salary` BETWEEN 10000000 AND 20000000;
SELECT * FROM employees WHERE `department` IN ('IT', 'HR');
SELECT * FROM employees WHERE `full_name` LIKE '%Anh%';
SELECT * FROM employees WHERE `phone` IS NULL;

SET SQL_SAFE_UPDATES = 0;
UPDATE employees SET `salary` = `salary` * 1.1 WHERE `department` = 'IT';
SELECT * FROM employees;

UPDATE employees SET `phone` = '0123456789' WHERE `phone` IS NULL;
SELECT * FROM employees;

