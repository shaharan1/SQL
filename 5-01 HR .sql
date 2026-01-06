SELECT '' ||  JOB_ID || FIRST_NAME as "EMPLOYEE_AND_TITLE"
FROM employees;

SELECT *
FROM employees
WHERE salary>10000;

SELECT *
FROM employees
WHERE department_id=50;

SELECT last_name
FROM employees
WHERE last_name like '%S%';

SELECT last_name,first_name,salary,job_id,department_id,hire_date
FROM employees
WHERE hire_date between '01-jan-01' and '31-dec-03'
ORDER BY hire_date;


SELECT last_name,first_name,salary,job_id,department_id,hire_date
FROM employees
WHERE job_id LIKE'%PROG';

desc employees;