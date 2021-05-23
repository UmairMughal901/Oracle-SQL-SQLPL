--anchored datatype
SET serveroutput ON;
DECLARE
 v_name contacts.phone%TYPE;
BEGIN
 SELECT phone INTO v_name 
 FROM contacts where rownum =1;
 dbms_output.put_line(v_name);
END;