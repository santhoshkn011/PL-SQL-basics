create table students
(rollNumber INTEGER, studentName varchar(50), gender varchar(10));

insert into students values(1,'Santhosh','Male');

--Named block
--Insert Data
create or replace procedure InsertStudent(
student_number in students.rollNumber%type,
student_name in students.studentName%type,
student_gender in students.gender%type)
is
begin
    insert into students(rollNumber, studentName, gender) values (student_number,student_name, student_gender);
    commit;
end;

--To execute insert procedure
EXECUTE InsertStudent(5, 'Bhanu Prakash', 'Male');

--Update Data
create or replace procedure UpdateStudent(
student_number in students.rollNumber%type,
student_name in students.studentName%type,
student_gender in students.gender%type)
is
begin
    update students set rollNumber=student_number, studentName=student_name, gender=student_gender where rollNumber=student_number;
    commit;
end;

--To execute update procedure
EXECUTE UpdateStudent(2, 'Swatika', 'Female');

--Delete Data
create or replace procedure DeleteStudent(
student_name in students.studentName%type)
is
begin
    delete from students where studentName=student_name;
    commit;
end;

--To execute delete procedure
EXEC DeleteStudent('Santhosh');
