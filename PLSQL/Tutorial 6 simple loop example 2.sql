-- SImple loop example 2
SET serveroutput ON;
DECLARE
  v_count  NUMBER := 0;
  v_result NUMBER;
BEGIN
  LOOP
    v_count  := v_count + 1;
    v_result := 23      * v_count;
    dbms_output.put_line('23 * '||v_count||' = '||v_result);
    IF v_count >= 10 THEN
      EXIT;
    END IF;
  END LOOP;
END;
