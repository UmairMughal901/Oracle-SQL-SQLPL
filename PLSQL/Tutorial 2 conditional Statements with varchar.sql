--if statement with string or charchar
SET serveroutput ON;
DECLARE
  v_website VARCHAR2(30) := '&yoda.com';
  v_tutor   VARCHAR2(30) := '&umair';
BEGIN
  IF v_website = 'yoda.com' AND v_tutor = 'umair' THEN
    dbms_output.put_line('all is ok');
  else
  dbms_output.put_line('switch to yoda soon thank you.');
  end if;
END;
/