--User Defined Record
SET SERVEROUTPUT ON;

--Creation of record example
create type Bank_Account is OBJECT(
    accountNumber number,
    name varchar2(20),
    accountType varchar2(20),
    balance number);
    
--Insert using record
DECLARE
    type BankAccount is RECORD(
    accountNumber number,
    name varchar2(20),
    accountType varchar2(20),
    balance number);
    
    BankAccountList BankAccount;
BEGIN
    BankAccountList.accountNumber := 5645635467;
    BankAccountList.name := 'Santhosh Kumar';
    BankAccountList.accountType := 'Savings Account';
    BankAccountList.balance := 15000;
    
    dbms_output.put_line('Account Number: '||BankAccountList.accountNumber);
    dbms_output.put_line('Account Holder Name: '||BankAccountList.name);
    dbms_output.put_line('Account Type: '||BankAccountList.accountType);
    dbms_output.put_line('Account Balance: '||BankAccountList.balance);
END;

--Row level Access
DECLARE
    type Bank_Account is RECORD(
    accountNumber INTEGER,
    name varchar2(20),
    accountType varchar2(20)
    );
    
    BankAccountList Bank_Account;
BEGIN
    insert into Bank_Account(accountNumber, name, accountType) values(65238475, 'Aravind Nayak', 'Savings Account');
    commit;
    select accountNumber, name, accountType into BankAccountList from Bank_Account where accountNumber=65238475;
      dbms_output.put_line('Bank Account Details:');
      dbms_output.put_line('Account Number: '||BankAccountList.accountNumber);
      dbms_output.put_line('Account Holder Name: '||BankAccountList.name);
      dbms_output.put_line('Account Type: '||BankAccountList.accountType);
      dbms_output.put_line('Account Type: '||BankAccountList.accountType);
END;
    