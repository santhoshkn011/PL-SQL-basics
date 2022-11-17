SET SERVEROUTPUT ON;
select * from bankaccount;

declare
    c_name bankaccount.customername%type;
    acc_number bankaccount.bankaccountnumber%type;
    cursor bank_cursor is
    select customername,bankaccountnumber from bankaccount;
begin
    open bank_cursor;
    
    fetch bank_cursor into c_name, acc_number;
    dbms_output.put_line('Account holder name is '||c_name||', Account number is '||acc_number);
    fetch bank_cursor into c_name, acc_number;
    dbms_output.put_line('Account holder name is '||c_name||', Account number is '||acc_number);
    fetch bank_cursor into c_name, acc_number;
    dbms_output.put_line('Account holder name is '||c_name||', Account number is '||acc_number);
    fetch bank_cursor into c_name, acc_number;
    dbms_output.put_line('Account holder name is '||c_name||', Account number is '||acc_number);
    
    close bank_cursor;
end;
    
    
--using loop
declare
    c_name bankaccount.customername%type;
    acc_number bankaccount.bankaccountnumber%type;
    cursor bank_cursor is
    select customername,bankaccountnumber from bankaccount;
begin
    open bank_cursor;
    
    loop
        fetch bank_cursor into c_name, acc_number;
        dbms_output.put_line('Account holder name is '||c_name||', Account number is '||acc_number);
        Exit when bank_cursor%NOTFOUND; 
    end loop;
    close bank_cursor;
end;
