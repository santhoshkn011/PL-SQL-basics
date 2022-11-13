SET SERVEROUTPUT ON;
DECLARE
    type namesArray IS VARRAY(5) OF varchar2(20);
    type grades IS VARRAY(5) Of INTEGER;
    names namesArray;
    marks grades;
    total INTEGER;
begin
    names := namesArray('Santhosh', 'Aravind', 'Durga Prasad', 'Namitha', 'Swatika');
    marks := grades(75, 84, 67, 98, 99);
    total := names.count;
    FOR i in 1..total 
    LOOP
        dbms_output.put_line('Student: '||names(i)||', Marks: '||marks(i));
    END LOOP;
end;