CREATE DATABASE Data_filtering_Sorting;

USE Data_filtering_Sorting;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY NOT NULL,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    job_title VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees VALUES
(1, 'Alice', 'HR', 'Manager', 60000, '2018-03-15'),
(2, 'Bob', 'IT', 'Developer', 75000, '2019-07-01'),
(3, 'Charlie', 'IT', 'Developer', 72000, '2020-01-20'),
(4, 'David', 'Finance', 'Analyst', 65000, '2017-11-10'),
(5, 'Eva', 'Finance', 'Manager', 80000, '2016-05-25'),
(6, 'Frank', 'IT', 'Support', 50000, '2021-09-12'),
(7, 'Grace', 'HR', 'Recruiter', 45000, '2022-02-18');

-- WHERE syntax

-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;

SELECT emp_name, department
FROM employees
WHERE department = 'IT';

SELECT emp_name, salary FROM employees
WHERE salary > 50000;

-- SQL WHERE with Multiple Conditions
-- Syntax

-- SELECT * FROM table
-- WHERE condition1 
--  AND condition2
--  AND condition3;

SELECT * FROM employees
WHERE salary >= 50000
  AND salary <=72000;

SELECT emp_name FROM employees
WHERE salary > 50000 
  AND department = 'HR';

-- SQL WHERE with Multiple Conditions
-- Syntax

-- SELECT * FROM table
-- WHERE condition1 
--  OR condition2
--  OR condition3;

SELECT * FROM employees
WHERE salary >= 50000
  OR salary <=72000;

SELECT emp_name, job_title FROM employees
WHERE  salary >= 40000 
  OR salary <= 650000;

-- IN Syntax

-- SELECT ... FROM ...
-- WHERE column IN (....);

SELECT emp_name, department
FROM employees
WHERE department IN ('IT', 'HR');

SELECT emp_name, job_title FROM employees
WHERE job_title IN ('Manager', 'Developer');

-- BETWEEN Syntax

-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name BETWEEN value1 AND value2;

SELECT * FROM employees
WHERE year(hire_date) BETWEEN 2016 AND 2020
ORDER BY hire_date ASC;

SELECT emp_name FROM employees
WHERE salary BETWEEN 50000 AND 75000;

-- LIKE Syntax

-- SELECT ... FROM ...
-- WHERE column LIKE ...;

SELECT emp_name, department, salary FROM employees
WHERE emp_name LIKE '%arl%';

SELECT * FROM employees
WHERE emp_name LIKE 'Al%e';

SELECT * FROM employees
WHERE emp_name LIKE 'F_a_K';

-- IS NULL/ IS NOT NULL Syntax

-- SELECT *
-- FROM .....
-- WHERE ..... IS NULL;
-- SELECT *
-- FROM .....
-- WHERE ..... IS NOT NULL;

SELECT * FROM employees
WHERE job_title IS NULL;

SELECT * FROM employees
WHERE job_title IS NOT NULL;

-- ORDER BY Syntax

-- SELECT column1, column2
-- FROM table_name
-- WHERE condition(s)
-- ORDER BY column ASC/DESC;

SELECT emp_name, department, salary
FROM employees
ORDER BY salary DESC;

SELECT emp_name, department, salary
FROM employees
ORDER BY salary;

SELECT emp_name, department, salary
FROM employees
ORDER BY salary ASC;

-- DISTINCT Syntax

-- SELECT DISTINCT ....
-- FROM ....;

SELECT DISTINCT department
FROM employees;

SELECT DISTINCT job_title
FROM employees;
