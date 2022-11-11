SET SERVEROUTPUT ON; 
--Check palindrome with anonymous block
declare
	n number;
	m number;
	temp number:=0;
	remainder number;

begin
	n:=123454321;
	m:=n;
	
	while n>0
	loop
		remainder:=mod(n,10);
		temp:=(temp*10)+remainder;
		n:=trunc(n/10);
	end loop; 
	
	if m = temp
	then
		dbms_output.put_line('number is palindrome');
	else
		dbms_output.put_line('number is not palindrome');
	end if;
end;

