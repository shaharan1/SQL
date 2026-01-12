
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
 