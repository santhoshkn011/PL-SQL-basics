SET SERVEROUTPUT ON; 

DECLARE
	num1 INTEGER;
	num2 INTEGER;
	remainder INTEGER;
BEGIN
	num1 := 4;
	num2 := 48;

	WHILE MOD(num2, num1) != 0 
    LOOP
		remainder := MOD(num2, num1);

		num2 := num1;

		num1 := remainder;
	END LOOP;

	dbms_output.Put_line('GCD of '||num1||' and '||num2||' is '||num1);
END;

