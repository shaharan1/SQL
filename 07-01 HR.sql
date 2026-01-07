SELECT to_char (sysdate,'dd-mm-yyyy')
FROM dual;

SELECT to_char (sysdate,'dd-month-yyyy')
FROM dual;

SELECT to_char (sysdate,'DD-Day-MM-month-yyyy-year')
FROM dual;

SELECT to_char (sysdate,'ddspth-mmspth-yyyyspth')
FROM dual;

SELECT last_name, to_char (hire_date,'fmdd-month-yyyy hh12:mi:ss am')
FROM employees;  

SELECT to_char (sysdate,'dd-mm-yyyy sssss" secound"')
FROM dual;

SELECT to_char (sysdate,'ddth-mmth-rrth hh24 am')
FROM dual;

SELECT to_char (sysdate,'ddsp-mmsp-yysp hh12 am')
FROM dual;
SELECT last_name,hire_date, to_char (hire_date,'fmddspth "of" month yyyyspth fmhh24:mi:ss pm')
FROM employees;

SELECT to_char (salary,'$99,99.00')salary
FROM employees
where last_name;

SELECT last_name, to_char (hire_date,'dd-mon-yyyy')
FROM employees
where hire_date < to_date('jan-01-1990','mon-dd-rrrr');

SELECT commission_pct, nvl(commission_pct,0)
nvl2(commission_pct,salary+(salary*commission_pct),salary)
 FROM employees;
 
 SELECT commission_pct,salary, nvl2(commission_pct,salary+(salary*commission_pct),salary)
 FROM employees;
 
 SELECT last_name,job_id,salary,
 case job_id WHEN 'IT_PROG' THEN 1.10*salary
 WHEN 'ST_CLERK' THEN 1.50*salary
 WHEN 'SA_REP' THEN 1.20*salary
 ELSE  salary END "REVISED_SALARY"
     FROM employees;
     
SELECT  max (salary),job_id 
     FROM employees
     group by job_id
     order by 1 desc;
     
SELECT 
max (salary),department_id 
FROM employees
group by department_id
order by 1 desc;

SELECT 
max (salary),department_id ,COUNT(department_id)
FROM employees
group by department_id
order by 1 desc;

SELECT sum (count(department_id))
FROM employees
group by department_id;

SELECT 
max (salary),department_id ,COUNT(department_id),job_id
FROM employees
group by department_id,job_id
order by 4 desc;

SELECT job_id,sum(salary) FINAL  
FROM employees
where job_id NOT LIKE '%REP%'
group by job_id
having sum(salary)>13000
order by 2;