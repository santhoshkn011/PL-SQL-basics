create table students
(rollNumber INTEGER, studentName varchar(50), gender varchar(10));

insert into students values(1,'Santhosh','Male');

--Named block
create or replace procedure InsertStudent(
student_number in students.rollNumber%type,
student_name in students.studentName%type,
student_gender in students.gender%type)
is
begin
    insert into students(rollNumber, studentName, gender) values (student_number,student_name, student_gender);
    commit;
end;

--To execute procedure
EXECUTE InsertStudent(4, 'Namitha', 'Female');
