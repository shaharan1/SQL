CREATE TABLE students(
stu_id NUMBER(7)not NULL,
stu_name VARCHAR2(26)not NULL,
stu_email VARCHAR2(50)not NULL,
stu_dob DATE,
cell_no VARCHAR2(11),
blood_grp VARCHAR(3),

CONSTRAINT hr_students_stu_id_pk PRIMARY KEY(stu_id)
);

COMMIT;

desc students;


insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO,BLOOD_GRP)
values('27--2000','2','pk1@gmail.com','Badrul Amin','01568186408','B+');

insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO,BLOOD_GRP)
values('22-oct-1996','7','emon@gmail.com','Md.Emon Sarkar','01531767051','O+');
insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO,BLOOD_GRP)
values('14-jan-2002','8','sajin@gmail.com','Sayed Sajin','01534303326','O+');
COMMIT;

insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO,BLOOD_GRP)
values('01-jan-2000','5','shaharanhossain1@gmail.com','Md.Shaharan Hossain','01521522195','B-');
insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO,BLOOD_GRP)
values('30-jul-1999','6','hasan@gmail.com','Abul Hasan','01726708595','A+');
COMMIT;

SELECT * FROM students;


insert into students(STU_DOB,STU_ID,STU_EMAIL,STU_NAME,CELL_NO)
SELECT hire_date,employee_id,email,last_name, substr(phone_number,1,11)
  FROM employees
  WHERE last_name like '%u%';
  
  
  
                            13-12-26 
                                   
update students set stu_name= 'Simul Pramanik'where  stu_id=2;
update students set BLOOD_GRP='O+' where  stu_id=1; 
update students set stu_name= 'Miskat',STU_EMAIL='miskat@gmail.com',STU_DOB='10-oct-2000',CELL_NO='015248795',BLOOD_GRP='B+' where  stu_id=103;
update students set stu_name= 'Mahbub',STU_EMAIL='mahbub@gmail.com',STU_DOB='10-oct-2000',CELL_NO='01557894621',BLOOD_GRP='A+' where  stu_id=105;
update students set stu_name= 'Sabbir',stu_email='sabbir@gamil.com',stu_dob='12-dec-2000',Cell_no='01412324565',Blood_grp='AB+' where stu_id=118;

                           NEW TABLE
create table emp1122(
emp_id number,
emp_name VARCHAR (30)not null,
emp_email varchar(60) not null,
emp_salary number(10,2),
emp_cell varchar (15),

constraint hr_emp1122_emp_id_pk primary key (emp_id),
constraint hr_emp1122_emp_email_uq unique (emp_email),
constraint hr_emp1122_emp_cell_uq unique (emp_cell)
);

select * from emp1122;

desc emp1122;
insert into emp1122(EMP_ID,EMP_NAME,EMP_EMAIL,EMP_SALARY,EMP_CELL)
values('1','Md.Shaharan Hossain','shaharan@gmail.com','0000','01521522195');

insert into emp1122(EMP_ID,EMP_NAME,EMP_EMAIL,EMP_SALARY,EMP_CELL)
values('2','Md.Tanvir','tanvir@gmail.com','100000','01756942545');

insert into emp1122(EMP_ID,EMP_NAME,EMP_EMAIL,EMP_SALARY,EMP_CELL)
values('3','Md.Miskat','miskat@gmail.com','110000','01919191919');

insert into emp1122(EMP_ID,EMP_NAME,EMP_EMAIL,EMP_SALARY,EMP_CELL)
values('4','Md.Emon','emont@gmail.com',null,'013454545445');

update emp1122 set EMP_NAME='Md.Shaharan' where EMP_ID=1;
commit;


--                               17-01-26 TABLE

create table dc(
stu_id number(10) not null,
stu_name varchar2(26)not null,
stu_dep varchar2(26),
stu_email varchar2(26),
stu_cell number(11),
stu_dob date,
constraint hr_dc_stu_id_pk primary key(stu_id),
constraint hr_dc_stu_name_uk unique (stu_name),
constraint hr_dc_stu_cell_uk unique (stu_cell)
);     

desc dc;
insert into dc(STU_ID,STU_NAME,STU_DEP,STU_EMAIL,STU_CELL,STU_DOB)
values('73901','Abdul Hakim','Botany','abdulhakim@gmail.com','01345564556','01-jan-99');

insert into dc(STU_ID,STU_NAME,STU_DEP,STU_EMAIL,STU_CELL,STU_DOB)
values('73902',' Hakim Abdul','English','hakimabdul@gmail.com','01345455656','01-jun-98');

insert into dc(STU_ID,STU_NAME,STU_DEP,STU_EMAIL,STU_CELL,STU_DOB)
values('73903','Abul Kalam','Math','abdulkalam@gmail.com','01545564556','01-jul-00');

insert into dc(STU_ID,STU_NAME,STU_DEP,STU_EMAIL,STU_CELL,STU_DOB)
values('73904','Kalam Abul ','Ict','kalamabdul@gmail.com','01945564556','01-dec-00');

SELECT
    * FROM dc;
    
    
--                               2 TABLE data Update

update emp1122 set (emp_salary)=
(select salary from employees where employee_id=107)
where emp_id=1;
commit;

--                  Removing Row in Table

delete from students
where stu_id between 103 and 188;

rollback;

--                         Truncate Table
commit;

--                         18-Jan-26
--                   Alter Table Statement
alter table emp1122
add (hire_date date default sysdate,blood_grp varchar(3));

select * from emp1122;

update emp1122 set hire_date='30-jul-20',BLOOD_GRP='AB+' where emp_id=3;

alter table emp1122
rename column emp_salary to salary;

alter table emp1122
add (drop_tab varchar(30));

alter table emp1122
drop  (drop_tab);

alter table emp1122
add (faltu_tab varchar(30));

alter table emp1122 read only;
alter table emp1122
drop (faltu_tab);

rollback;

alter table emp1122
add (abc varchar(26));

alter table emp1122
drop (abc);

alter table emp1122 read write;

alter table emp1122
drop (abc);

alter table emp1122
drop (faltu_tab);


select * from emp1122;


--                                SEQUENCE

create SEQUENCE stu_sq_stu_id
START WITH 100
INCREMENT BY 1 
MAXVALUE 999999;


select stu_sq_stu_id.nextval
from dual;

insert into students(stu_id,STU_DOB,STU_EMAIL,STU_NAME,CELL_NO)
values(stu_sq_stu_id.nextval,'01-jul-00','abdulkalam@gmail.com','Abul Kalam','01545564556');

select stu_sq_stu_id.currval
from dual;

commit;

--                                      19-jan-26

create view emp_com
as select last_name,salary,COMMISSION_PCT 
from employees
where COMMISSION_PCT is not null;

select * from emp_com;


CREATE VIEW emp_sha
AS SELECT INITCAP(last_name) as  "final_last_name",
       LENGTH(last_name) as "lengths"
FROM employees
WHERE last_name LIKE 'J%'
   OR last_name LIKE 'A%'
   OR last_name LIKE 'M%'
ORDER BY 1;

select * from emp_sha;
commit;


                                 --20-jan-26

desc practice_table;

alter table emp1122 rename to practice_table;



alter table practice_table rename column DROP_TAB to dob;

--                                subquary

select employee_id,manager_id

--                           controlling user access
create user jam
identified by jam;












                                 






