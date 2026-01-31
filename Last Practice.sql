desc employees;



--Question No-1
create table emp129400(
e_id number(10),
e_name varchar2(26),
salary varchar2(30),
hire_date date,
address varchar2(60),
constraint demo_emp129400_e_id_pk PRIMARY KEY (e_id)
);

--Question No-2
select DEPARTMENT_ID, avg(SALARY)
from employees
GROUP by DEPARTMENT_ID
having max(salary)>12000;

--Question No-3
SELECT first_name
    FROM employees
    where first_name like '%S%';

--Question No-4
SELECT avg(e.SALARY)
   from employees e
JOIN departments d
on e.DEPARTMENT_id = d.DEPARTMENT_id
WHERE d.department_name like 'Sales%';
    
    
--Question No-5
select FIRST_NAME, LAST_NAME,HIRE_DATE
  from employees
   order by HIRE_DATE ;
   
   
SELECT
    * FROM  emp129400; 
    
DESC   emp129400; 