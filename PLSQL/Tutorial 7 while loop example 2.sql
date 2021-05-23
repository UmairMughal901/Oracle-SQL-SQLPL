                            --------------YOUTUBE CHENNEL : GEO UP ----------------------
-- WHile loop example 2 with boolean data type
SET serveroutput ON;
DECLARE
  v_type  Boolean := TRUE;
  v_counter NUMBER := 1;
BEGIN
  WHILE v_type
  LOOP
    v_counter := v_counter + 1;
    dbms_output.put_line(v_counter);
  END LOOP;
  dbms_output.put_line('This is outside loop');
END;
/