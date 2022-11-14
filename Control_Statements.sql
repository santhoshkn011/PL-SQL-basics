SET SERVEROUTPUT ON;

-- statements between THEN and END IF run if and only if the value of sales is greater than quota+200.
DECLARE 
    quota number;
    sales number;
BEGIN 
    sales := 10100;
    quota := 10000;
    IF sales > (quota+200) THEN 
      DBMS_OUTPUT.PUT_LINE( 'Sales Quota Reaches' ); 
    END IF; 
END;

--statement between THEN and ELSE runs if and only if the value of sales is greater than quota+200; otherwise, the statement between ELSE and END IF runs.
DECLARE 
    quota number;
    sales number;
BEGIN 
    sales := 10100;
    quota := 10000;
    IF sales > (quota+200) THEN 
      DBMS_OUTPUT.PUT_LINE( 'Sales Quota Reached' ); 
    ELSE
    DBMS_OUTPUT.PUT_LINE( 'Sales Quota not Reached' );
    END IF;
END;

--statement between THEN and ELSE runs if and only if the value of sales is greater than quota+200; otherwise, Nested IF THEN ELSE Statements run.
DECLARE 
    quota number;
    sales number;
BEGIN 
    sales := 10100;
    quota := 10000;
    IF quota >= 10000 THEN 
        IF sales > (quota+200) THEN 
            DBMS_OUTPUT.PUT_LINE( 'Sales Quota Reached' ); 
        ELSE
            DBMS_OUTPUT.PUT_LINE( 'Sales Quota not Reached' );
        END IF;
    ELSIF quota < 10000 THEN
        DBMS_OUTPUT.PUT_LINE( 'Quota is less than 10000' );
    ELSE
        DBMS_OUTPUT.PUT_LINE( 'Quota should be greater than 10000' );
    END IF;
END;

/*
if supplier_name field is IBM and the supplier_type field is Hardware, then the CASE statement
will return to the North office. If the supplier_name field is IBM and the supplier_type is Software, the CASE statement will return to the South office.
*/
DECLARE
  supplier_name  VARCHAR2(20) := 'IBM';
  supplier_field VARCHAR2(20) := 'Software';
BEGIN
    IF supplier_name = 'IBM' THEN
        CASE supplier_field
            WHEN 'Hardware' THEN
                DBMS_OUTPUT.PUT_LINE('IBM: North Office');
            WHEN 'Software' THEN
                DBMS_OUTPUT.PUT_LINE('IBM: South Office');
            ELSE
                DBMS_OUTPUT.PUT_LINE('No Such Supplier Field');  
        END CASE;
    ELSE
        DBMS_OUTPUT.PUT_LINE('No Such Supplier Name');
    END IF;
END;

--for loop to retrieve all the data from table 'BANKACCOUNT'.
Declare
--type <TypeName> is varray(size) of <datatype>
    type customerNameList is varray(10) of varchar2(20);
    type bankAccountList is varray(10) of number;
    accountNumber bankAccountList;
    customerName customerNameList;
begin
    select customername, bankaccountnumber bulk collect into customerName, accountNumber from bankaccount; --table name is bankaccount
    for i in 1..accountNumber.count loop
        dbms_output.put_line('Customer Name: '||customerName(i)||', Bank Account Number: '||accountNumber(i));
    end loop;
end;

--While loop to retrieve all the data from table 'BANKACCOUNT'.
Declare
    TYPE customerNameList IS TABLE OF VARCHAR2(20);
    TYPE bankAccountList IS TABLE OF number;
    accountNumber bankAccountList;
    customerName customerNameList;
    a INTEGER := 1;
begin
    select customername, bankaccountnumber bulk collect into customerName, accountNumber from bankaccount;
    WHILE a<=accountNumber.count LOOP
        dbms_output.put_line('Customer Name: '||customerName(a)||', Bank Account Number: '||accountNumber(a));
        a := a+1;
    END LOOP;   
end;


--Inserting and get table
insert into bankaccount values('Lokesh',6546745645);

SELECT * FROM bankaccount;

