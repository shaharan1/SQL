                               Chaptre-8
  
SELECT hire_date
FROM employees
where last_name='Davies'; 

select last_name,salary,hire_date
from employees
where hire_date > (
SELECT hire_date
FROM employees
where last_name='Davies'
);


select last_name,salary
from employees
where salary > (
SELECT max(salary)
FROM employees
where job_id ='IT_PROG'
);

SELECT max (salary)
 FROM employees
  where job_id ='IT_PROG';
  
   SELECT max(salary)
    FROM employees
     where salary <(
     
      SELECT max(salary)
       where job_id='IT_PROG');


SELECT FIRST_NAME,LAST_NAME,salary
 FROM employees
  where salary=(
  
   SELECT max(salary)
    FROM employees
      where salary <(
      
       SELECT max(salary)
        FROM employees
          ));



  
  
   SELECT Manager_id
    FROM employees
      where Manager_id = 120);
      
       SELECT max(salary)
        FROM employees
          ));


SELECT FIRST_NAME,LAST_NAME,job_id
 FROM employees
  where manager_id=120;
  
 SELECT FIRST_NAME,LAST_NAME,job_id
 FROM employees
  where job_id in
  
   (SELECT job_id
    FROM employees
     where manager_id=120);
     
   SELECT LAST_NAME,salary,job_id
    FROM employees
     where job_id in
     (SELECT job_id
     FROM employees
     where last_name= 'Taylor')

And salary > 
           (SELECT max(salary)
           FROM employees
           where last_name= 'Taylor'); 
           
SELECT department_id, min(salary)
           FROM employees
group by department_id
having min(salary)>
           (SELECT min(salary)
            FROM employees
           where department_id= 30);           