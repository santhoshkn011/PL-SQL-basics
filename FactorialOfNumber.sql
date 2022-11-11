declare
factorial number :=1;
n number := 5;

begin		
while n > 0 loop
factorial:=n*factorial;		
n:=n-1;		
end loop;	
dbms_output.put_line('FACTORIAL IS:'||factorial);
end;			
