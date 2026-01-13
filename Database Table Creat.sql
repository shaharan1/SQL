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
