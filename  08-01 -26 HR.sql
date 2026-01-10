SELECT first_name, last_name,SALARY,DEPARTMENT_NAME,location_id
     FROM employees
    NATURAL JOIN departments;
    
    
    desc employees;
    desc jobs;
    desc locations;
    desc countries;
    
    
    SELECT employee_id,first_name,JOB_ID,JOB_TITLE
    FROM employees
    NATURAL JOIN jobs;
    
   
    
    SELECT employee_id,last_name,location_id,department_id
    FROM employees 
    join departments
    USING (department_id);
    
    
     SELECT e.first_name,e.last_name,e.SALARY,d.DEPARTMENT_NAME,
     l.CITY,c.COUNTRY_NAME
        FROM employees e
        join departments d
        on e.department_id=d.department_id
        join locations l
        on d.location_id=l.location_id
        join countries c
        on c.COUNTRY_ID =l.COUNTRY_ID 
        WHERE c.COUNTRY_name ='Canada';
        
        
        
        CREATE TABLE job_grades (
grade 		CHAR(1),
lowest_sal 	NUMBER(8,2) NOT NULL,
highest_sal	NUMBER(8,2) NOT NULL
);

ALTER TABLE job_grades
ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY (grade);

INSERT INTO job_grades VALUES ('A', 1000, 2999);
INSERT INTO job_grades VALUES ('B', 3000, 5999);
INSERT INTO job_grades VALUES ('C', 6000, 9999);
INSERT INTO job_grades VALUES ('D', 10000, 14999);
INSERT INTO job_grades VALUES ('E', 15000, 24999);
INSERT INTO job_grades VALUES ('F', 25000, 40000);

COMMIT;

select * from job_grades;

  select e.last_name,e.salary,j.grade
  from employees e JOIN job_grades j
  on e.salary
  BETWEEN j.lowest_sal and j.highest_sal;  
    
    
    
    