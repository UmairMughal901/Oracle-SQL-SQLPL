--constant variable
--constant always initialize in Decelaration section
SET serveroutput ON;
DECLARE
  --v_name constant NUMBER(7,6) := 3.146;
  v_name CONSTANT NUMBER(7,6) NOT NULL DEFAULT 3.146;
BEGIN
  dbms_output.put_line(v_name);
END;