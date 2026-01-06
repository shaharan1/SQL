
SELECT first_name,last_name,salary
FROM employees
WHERE salary between 4000 and 8000
ORDER BY salary asc ;

SELECT first_name,hire_date
FROM employees
WHERE hire_date > '01-jan-23'
ORDER BY  hire_date desc ;

SELECT last_name,first_name,salary,department_id
FROM employees
WHERE department_id in(50,80)
ORDER BY department_id, last_name asc;

SELECT concat() last_name,first_name,salary,department_id
FROM employees

SELECT last_name, substr(last_name,1,4 )as "1st change",
concat(substr(last_name,1,5 ),'_us' )as "2nd change",
UPPER (concat(substr(last_name,1,6),'_us'))as "3rd change"
FROM employees
where department_id=60;

SELECT round(55.926,-1)
     FROM dual;
     SELECT round(55.926,-2)
     FROM dual;
     SELECT round(55.926,2)
     FROM dual;
     SELECT round(53.966,1)
     FROM dual;
     SELECT round(105.996,-1)
     FROM dual;
     
      SELECT ceil (145.00001)
     FROM dual;
     
       SELECT sysdate 
     FROM dual; 
     SELECT current_timestamp 
     FROM dual; 