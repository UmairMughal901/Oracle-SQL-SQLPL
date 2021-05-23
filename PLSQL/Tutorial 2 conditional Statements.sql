--conditional Statements
--there are two major categories for conditional statements
-- if statements | Case statements
-- if statement further categories into three statements
-- if then | if then else or if else | if else if statement
-- case statements are simple case and search case 
set serveroutput ON;
DECLARE
obtnum number := &Giveobtainedmarks;
BEGIN
IF obtnum < 85 THEN
dbms_output.put_line('-------Grade-------');
dbms_output.put_line('Grade B');

END IF;
dbms_output.put_line('-------Grade-------');
dbms_output.put_line('Grade A');
end;