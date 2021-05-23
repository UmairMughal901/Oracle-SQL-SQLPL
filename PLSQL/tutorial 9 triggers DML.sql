---Create table
CREATE TABLE codetest (
    name VARCHAR2(20)
);

--DML Insert trigger
Set serveroutput on;
create or replace trigger trg_bi_check1
before insert on codetest
for EACH ROW enable 
Declare
  v_user varchar2(30);
begin
  select user into v_user from dual;
  dbms_output.put_line('This message is poping up before insert by '||user);
end;
/



--DML update trigger
Set serveroutput on;
create or replace trigger trg_bu_check2
before update on codetest
for EACH ROW enable 
Declare
  v_user varchar2(30);
begin
  select user into v_user from dual;
  dbms_output.put_line('This message is poping up before update by '||user);
end;
/


Insert into codetest values ('NameA');
/

update codetest SET name = 'NameNew' where name = 'NameA';
/

--DML trigger for deleting from table
Set serveroutput on;
create or replace trigger trg_bd_check3
before DELETE on codetest
for EACH ROW enable 
Declare
  v_user varchar2(30);
begin
  select user into v_user from dual;
  dbms_output.put_line('This message is poping up before Deleting by '||user);
end;
/

Delete codetest where name='NameNew';
/

insert into codetest values ('NameAlpha');
/


----combine all the above statement in one trigger
set SERVEROUTPUT on;
create or replace trigger trg_bany_check4
before insert OR update or DELETE on codetest
for EACH ROW enable 
Declare
  v_user varchar2(30);
begin
  select user into v_user from dual;
  If inserting then
  dbms_output.put_line('Compound Statement by '||user);
  elsif deleting then
  dbms_output.put_line('Compound Statement Deleting by '||user);
  elsif updating then
  dbms_output.put_line('Compound Statement Updating by '||user);
  end if;
end;
/

insert into codetest values ('NameNew');
/
Delete codetest where name ='NameNew';
/
Update codetest set name = 'NewValueName' where name ='NameNew';
/

---Now check the table situation
select * from codetest;