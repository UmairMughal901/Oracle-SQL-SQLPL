
-------Numeric for loop
--Syntax
--DECLARE
--
--BEGIN
--FOR condition IN {REVERSE} Lower_limit .. uper LIMIT 
--loop
--statement 1;
--...
--statement n;
--end loop;
--END;
SET serveroutput ON;
DECLARE
BEGIN
  FOR v_count IN 1 .. 100
  LOOP
    dbms_output.put_line(v_count);
  END LOOP;
  dbms_output.put_line('Out side of loop limit');
END;

---REVERSE the loop
SET serveroutput ON;
DECLARE
BEGIN
  FOR v_count IN reverse 1 .. 100
  LOOP
    dbms_output.put_line(v_count);
  END LOOP;
  dbms_output.put_line('Out side of loop limit');
END;