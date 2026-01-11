desc departments;
desc locations;
desc countries;
desc employees;
                             7.1 practice
SELECT location_id, street_address,city,STATE_PROVINCE,country_name
from locations
natural join countries;
                            7.2 practice
SELECT last_name, department_id,DEPARTMENT_NAME
from employees
natural join departments;
                           7.4 practice
SELECT e.last_name as "Employee", e.employee_id as "Emp#",
       m.last_NAME as "Manager",m.employee_id as "Mrg#"
from employees e join employees m
on e.Manager_id = m.employee_id
ORDER by 2;

                      cha-8 practice
task-3
select employee_id,last_name,department_id
FROM employees
WHERE department_id in
(select department_id 
from employees
where last_name like '%u%');

task-4
select last_name,department_id,job_id
FROM employees  
WHERE department_id in
(select department_id 
from departments
where location_id = 1700 );


cha-8 practice

select employee_id,last_name,department_id
FROM employees
WHERE department_id in
(select department_id 
from employees
where last_name like '%u%');



