SET SERVEROUTPUT ON;

/*
if account balance is less than 3000, deduct 1000 rupees as redemption else insert a balance of 1000 rupees.
*/
create or replace function update_balance(acc_balance number)
return number is
balance number; --variable declaration
begin
    IF acc_balance<3000 then
        balance:=acc_balance-1000;
    ELSE
        balance:=acc_balance+1000;
    END IF;
    return balance;
END;

--calling function
begin
    dbms_output.put_line(update_balance(500));
end;

/*
Write a function to get total sales of an employee.
*/
create or replace function total_sales
return number is
sales number;
begin
    sales:= &n; --input value is 5 while compiled
    return sales;
end;
--calling function
declare
    sales number;
begin
    sales:=total_sales;
    dbms_output.put_line('Total sales of the employee: '||sales);
end;









