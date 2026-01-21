create table dc(
stu_id number(10) not null,
stu_name varchar2(26)not null,
stu_dep varchar2(26),
stu_email varchar2(26),
stu_cell number(11),
stu_dob date,
constraint demo_dc_stu_id_pk primary key(stu_id)
);

INSERT INTO dc(stu_id,stu_name)
VALUES ('73901','Sakib');

insert into dc(STU_ID,STU_NAME,STU_DEP,STU_EMAIL,STU_CELL,STU_DOB)
values('73902','Abdul Hakim','Botany','abdulhakim@gmail.com','01345564556','01-jan-99');

update dc set 
stu_dep='english',stu_email='sakib@gmail.com',STU_CELL='01521347892',STU_DOB='31-jan-01'
where stu_id=73901;   
  
alter table dc
MODIFY  stu_cell varchar(26);
    
  TRUNCATE TABLE dc;  
  
SELECT
    * FROM dc;    


create table emp(
id number(10),
name varchar2(26)  DEFAULT 'jee',
salary  varchar2(26)DEFAULT 1000,
email varchar2(26),
stu_dob date DEFAULT sysdate-360,
constraint demo_emp_email_uk UNIQUE (email)
);

insert into emp(ID,NAME,salary,EMAIL,STU_DOB)
values('73902','','','abdulhakim@gmail.com','01-jan-99');


INSERT INTO emp (id,email)
VALUES (1,'abc@gmail.com');

INSERT INTO emp (id,email)
VALUES (2,'bc@gmail.com');

INSERT INTO emp (id,email)
VALUES (2,'b@gmail.com');

SELECT
    * FROM emp;
    
create table emp1294111( 
e_id number(10),
e_name varchar2(26),
salary varchar2(30),
hire_date date,
address varchar2(60),
constraint demo_emp1294111_e_di_pk PRIMARY KEY (e_id)
);


insert into emp1294111(e_id,e_name,salary,hire_date,address)
values('01','abul','10000','12-jan-23','10/3a');


insert into emp1294111(e_id,e_name,salary,hire_date,address)
values('02','abul','10000','12-jan-23','10/3a');

insert into emp1294111(e_id,e_name,salary,hire_date,address)
values('03','abul','10000','12-jan-23','10/3a');

insert into emp1294111(e_id,e_name,salary,hire_date,address)
values('04','abul','10000','12-jan-23','10/3a');

insert into emp1294111(e_id,e_name,salary,hire_date,address)
values('05','abul','10000','12-jan-23','10/3a');

SELECT
    * FROM emp1294111;
    
SELECT first_name
    FROM employees
        WHERE FIRST_name like 'S%';  
    
    
    
    
    
    
