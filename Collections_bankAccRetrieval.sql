SET SERVEROUTPUT ON;

-- Bank Data retrieval by Varray
Declare
--type <TypeName> is varray(size) of <datatype>
    type bankAccountList is varray(10) of number;
    accountNumber bankAccountList;
begin
    select bankaccountnumber bulk collect into accountNumber from bankaccount;
    dbms_output.put_line(accountNumber(1));
end;


--Bank Data retrieval by Nested Table
Declare
/*
TYPE type_name IS TABLE OF element_type [NOT NULL]; 
table_name type_name;
*/
TYPE name_table IS TABLE OF varchar2(20);
TYPE accNumber_table IS TABLE OF number;
c_names name_table;
accNumber accNumber_table;
total integer;
begin
    c_names := name_table('Bhanu Prakash', 'Swatika');
    accNumber := accNumber_table(536345363, 565484647);
    total := c_names.count; --collections method
    FOR i IN 1 .. total 
    LOOP 
      dbms_output.put_line('Customer Name: '||c_names(i)||', Bank Account Number:' || accNumber(i)); 
   end loop; 
end;

--Bank Data retrieval (Already created table 'BANKACCOUNT') by Nested Table
Declare
TYPE bankAccountList IS TABLE OF number;
accNumber bankAccountList;
begin
    select bankaccountnumber bulk collect into accNumber from bankaccount;
    dbms_output.put_line(accNumber(2));
end;

--Using index by table
declare
    TYPE accNumberList IS TABLE OF NUMBER INDEX BY VARCHAR2(20); 
    accNumber accNumberList;
    indexValue varchar2(50);
begin
    accNumber('Varun') := 654647457;
    accNumber('Lokesh') := 948476474;
    indexValue := accNumber.first;
    dbms_output.put_line(accNumber('Varun'));
    for i in 1..accNumber.count
    loop
        dbms_output.put_line(indexValue);
        indexValue := accNumber.next(indexValue);
    end loop;
end;
    
