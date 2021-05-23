---REVERSE the loop
--numeric for loop example 2 -- write a table
SET serveroutput ON;
DECLARE
v_result number;
BEGIN
--  FOR v_count IN REVERSE 1 .. 100
   FOR v_count IN 1 .. 100
  LOOP
  v_result := v_count * 29;
    dbms_output.put_line('29 * '||v_count||' = '||v_result);
  END LOOP;
  dbms_output.put_line('Out side of loop limit');
END;