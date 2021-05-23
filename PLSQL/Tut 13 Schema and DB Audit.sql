---First create table for audit of schema
CREATE TABLE UIPTBPL_DB_audit
  (
    ddl_date       DATE,
    ddl_user       VARCHAR2(15),
    object_created VARCHAR2(15),
    object_name    VARCHAR2(15),
    ddl_operation  VARCHAR2(15)
  );
  
---Now we will create trigger which which monitor any chnage in schema --DDL Trigger for Schema Auditing
CREATE OR REPLACE TRIGGER UIPTBPL_audit_tr 
AFTER DDL ON SCHEMA
BEGIN
    INSERT INTO UIPTBPL_DB_audit VALUES (
sysdate , 
sys_context('USERENV','CURRENT_USER'), 
ora_dict_obj_type, 
ora_dict_obj_name, 
ora_sysevent);
END;
/

---Here you can audit whole data base using this trigger command
CREATE OR REPLACE TRIGGER UIPTBPL_audit_tr 
AFTER DDL ON DATABASE
BEGIN
    INSERT INTO UIPTBPL_DB_audit VALUES (
sysdate , 
sys_context('USERENV','CURRENT_USER'), 
ora_dict_obj_type, 
ora_dict_obj_name, 
ora_sysevent);
END;
/

Commit;
--
Select to_char (DDL_Date, 'DD-MM-YYYY HH:MM:SS'),ddl_user,object_created,object_name,ddl_operation from schema_audit;

--
Create table new_table (
    col_name varchar2(82)
);

drop table new_table;


  
  