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



--Question-01
create table emp1294101( 
e_id number(10),
e_name varchar2(26),
salary varchar2(30),
hire_date date,
address varchar2(60),
constraint demo_emp1294101_e_id_pk PRIMARY KEY (e_id)
);

--Question-02
alter table emp1294101
add (department_id varchar2(30) ,dept_name varchar(33));


--Question-03
INSERT INTO emp1294101(e_id,e_name,salary,hire_date,address,department_id,dept_name)
values('1','A','1000','01-jan-2000','10/3A','101','Bangla');

--Question-04
create view emp129
as select e_name,dept_name,salary 
from emp1294101
where department_id = 80;


--Question-05
create SEQUENCE emp129_e_id_sq
START with 1
INCREMENT BY 10 
MAXVALUE 999999;


--Question-06
UPDATE emp1294101 set (e_name,salary)=(SELECT last_name,salary FROM employees
where employee_id = 108)
where e_id=1;
