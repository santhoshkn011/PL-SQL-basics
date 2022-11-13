SET SERVEROUTPUT ON;

create table BankAccount
(customerName varchar(50), bankAccountNumber INTEGER);

insert into bankaccount values('Santhosh',77653456);

--Named block
--Insert Data
create or replace procedure InsertBankData(
customer_name in bankaccount.customerName%type,
account_number in bankaccount.bankAccountNumber%type)
is
begin
    insert into BankAccount(customerName, bankAccountNumber) values (customer_name, account_number);
    commit;
end;

--To execute insert procedure
EXECUTE InsertBankData('Durga Prasad', 676345243);

SELECT * FROM bankaccount;

--Update Data
create or replace procedure UpdateBankData(
customer_name in bankaccount.customerName%type,
account_number in bankaccount.bankAccountNumber%type)
is
begin
    update bankaccount set customerName=customer_name, bankAccountNumber=account_number where customerName=customer_name;
    commit;
end;

--To execute update procedure
EXECUTE UpdateBankData('Aravind', 773453654);

SELECT * FROM bankaccount;

SELECT * FROM bankaccount where customerName='Aravind';

--Delete Data
create or replace procedure DeleteBankData(
customer_name in bankaccount.customerName%type)
is
begin
    delete from bankaccount where customerName=customer_name;
    commit;
end;

--To execute delete procedure
EXEC DeleteBankData('Santhosh');
SELECT * FROM bankaccount;

    