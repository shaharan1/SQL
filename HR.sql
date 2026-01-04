SELECT JOB_ID,LAST_NAME,PHONE_NUMBER,EMAIL as "email || gmail",SALARY shaharan
FROM employees;

desc employees;

select first_name ||' '|| last_name as Name
from employees;

select 'My First Name is ' || first_name ||' and My Last Name is ' ||last_name as "Full Name"
from employees;

select DISTINCT first_name
from employees;

SELECT
    * FROM employees
    WHERE salary=2400;
    
    SELECT
    * FROM employees
    WHERE salary BETWEEN 2500 and 4000;
    
    
     SELECT
    JOB_ID,LAST_NAME,PHONE_NUMBER
    FROM employees
    WHERE salary IN (2500,3000,4000);
    
      SELECT
    JOB_ID,LAST_NAME,PHONE_NUMBER,commission_pct
    FROM employees
    WHERE salary IN (5000,7000,8000) and commission_pct BETWEEN 0.3 and .5;
    
     SELECT
    JOB_ID,LAST_NAME,PHONE_NUMBER,commission_pct
    FROM employees
    WHERE salary IN (5000,7000,8000) and last_name like 'S%';
    
     SELECT
    JOB_ID,LAST_NAME,PHONE_NUMBER,salary,commission_pct
    FROM employees
    WHERE salary IN (5000,7000,8000) or last_name like 'S%';
    
     SELECT
    JOB_ID,LAST_NAME,PHONE_NUMBER,salary,commission_pct
    FROM employees
    WHERE salary BETWEEN 2000 AND 3500 and last_name like '_%s%_';
    
    SELECT
    JOB_ID,LAST_NAME,PHONE_NUMBER,salary,commission_pct
    FROM employees
    WHERE  last_name='Smith';
    
     SELECT
    JOB_ID,LAST_NAME,PHONE_NUMBER,salary,commission_pct
    FROM employees
    WHERE hire_date ='05-FEB-06';
    
     SELECT
    JOB_ID,LAST_NAME,PHONE_NUMBER,salary,commission_pct
    FROM employees
    WHERE commission_pct is not null;