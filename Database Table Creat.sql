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
  
  