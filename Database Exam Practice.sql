
             Database Exam Practice

CREATE TABLE emp1294111(
eid NUMBER(7)NOT NULL,
ename VARCHAR2(26) NOT NULL,
salary NUMBER(10)NOT NULL,
hire_date DATE ,
address VARCHAR2(50),

CONSTRAINT hr_emp1294111_eid_pk PRIMARY KEY (eid)
);
COMMIT;

--                         22-01-26 practice


--ques.no-1
create table emp1294110(
e_id number (10),
e_name varchar2(26),
salary varchar2(26),
hire_date date,
address varchar2(26),
constraint hr_emp1294111_e_id_pk primary key (e_id)
);

--ques.no-2
SELECT department_id, avg(salary)
     FROM employees
      group by department_id
       having max (salary)>12000;

--ques.no-3
SELECT first_name
    FROM employees
     where first_name like 'S%';
  
  --ques.no-4   
SELECT  avg(salary)
    FROM employees 
      where job_id like 'SA_%';
 
 --ques.no-5    
select first_name, last_name,HIRE_DATE
  from employees
   order by HIRE_DATE asc;
     











--                       18-jan-26



insert into emp1294111(eid,ename,salary,hire_date,address)
values('1','A','1000','01-jan-2000','10/3A');

insert into emp1294111(eid,ename,salary,hire_date,address)
values('2','B','1000','01-jan-2000','10/3A');

insert into emp1294111(eid,ename,salary,hire_date,address)
values('3','C','1000','01-jan-2000','10/3A');

insert into emp1294111(eid,ename,salary,hire_date,address)
values('4','D','1000','01-jan-2000','10/3A');

insert into emp1294111(eid,ename,salary,hire_date,address)
values('5','E','1000','01-jan-2000','10/3A');
commit;


SELECT
    * FROM emp1294111;
    


select department_id, avg(salary)
from employees
GROUP by department_id
having max(salary)>12000;
 
 select First_name,last_name
from employees
WHERE first_name like 'S%';

select avg(salary)
from employees
where department_id = (
select department_id 
from departments
where department_name = 'Sales');


SELECT AVG(salary)
FROM employees
where job_id like 'SA%';



-- Question-01

select e.first_name,e.last_name,d.department_name,l.city,l.state_province
from employees e join departments d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join locations l 
on d.LOCATION_ID = l.LOCATION_ID ;

-- Question-02

SELECT e.first_name, e.last_name, 
e.salary, j.grade
FROM employees e 
JOIN job_grades j 
ON e.salary 
BETWEEN j.lowest_sal 
AND j.highest_sal;

-- Question-03
select e.first_name,e.last_name,d.department_name,l.city,l.state_province
from employees e join departments d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join locations l 
on d.LOCATION_ID = l.LOCATION_ID 
where e.first_name like '%z%';

-- Question-04
select first_name,last_name,salary
from employees
where salary < (
select salary
from employees where employee_id=182);

-- Question-05

select
e.first_name as "employee_first_name",
m.first_name as "manager_first_name"
from 
    employees e
join 
    employees m
on 
    e.manager_id = m.employee_id
order by 
    manager_first_name, employee_first_name;

 
 
 

