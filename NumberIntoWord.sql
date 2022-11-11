SET SERVEROUTPUT ON; 
DECLARE
     num INTEGER; 
     num_to_word VARCHAR2(100); 
BEGIN
  num := 4;
  CASE num
  WHEN 0 THEN
    num_to_word := 'Zero' ;
  WHEN 1 THEN
    num_to_word := 'One' ;
  WHEN 2 THEN
    num_to_word := 'Two' ;
  WHEN 3 THEN
    num_to_word := 'Three' ;
  WHEN 4 THEN
    num_to_word := 'Four' ;
  WHEN 5 THEN
    num_to_word := 'Five' ;
  WHEN 6 THEN
    num_to_word := 'Six' ;
  WHEN 7 THEN
    num_to_word := 'Seven' ;
  WHEN 8 THEN
    num_to_word := 'Eight' ;
  WHEN 9 THEN
    num_to_word := 'Nine' ;
  ELSE
    num_to_word := 'Please enter from 0 to 9' ;
  END CASE;
  DBMS_OUTPUT.PUT_LINE( num_to_word );
END;
