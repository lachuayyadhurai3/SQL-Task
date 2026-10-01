create database SQL_aggregate_function;
use SQL_aggregate_function;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    job_title VARCHAR(50),
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

-- Count()

select count(*) as total_employee from employees;

select department, count(emp_id) as total_count from employees
group by department;

select department, count(emp_id) as total_count_1 from employees
group by department
having total_count_1 > 2;

select count(emp_id) total_employee_1
from employees
where salary > 70000;

select count(distinct job_title) as Count_of_Job_Title
from employees;

select year(hire_date) as hire_year, count(*) as hires
from employees
group by year(hire_date)
order by hire_year;

-- SUM()

select department, sum(salary) as total_salary
from employees
where department = 'IT';

select department, sum(salary) as total_salary_1
from employees
group by department
order by total_salary_1 DESC
limit 1;

select sum(salary) as Total_salary from employees;

-- AVG()

select round(avg(salary),2) as avg_salaray_3 from employees;

select department, round(avg(salary),2) as avg_salary_2 from employees
group by department;

select job_title, round(avg(salary),2) as avg_salary_1 from employees
group by job_title
having avg_salary_1 > 60000;

select round(avg(salary),2) as avg_salary_4
from employees
where year(hire_date) > 2020;

select job_title, round(avg(salary),2) as avg_salary_5
from employees
where job_title = 'Manager';

-- MAX()

select max(salary) as Max_salaray
from employees;

select job_title, max(salary) as Highest_salary from employees
group by job_title;

select job_title, max(salary) as Highest_salary_1
from employees
group by job_title;

-- MIN()

select min(salary) as Min_salaray
from employees;

select job_title, min(salary) as Lowest_salary from employees
group by job_title;

select job_title, min(salary) as Lowest_salary_1
from employees
group by job_title;

select department, min(hire_date) as min_hire
from employees
group by department;

select 
  department,
  count(*) as emp_count,
  min(salary) as min_salary,
  max(salary) as max_salary,
  round(avg(salary),2) as avg_salary,
  sum(salary) as total_salary
from employees
group by department;