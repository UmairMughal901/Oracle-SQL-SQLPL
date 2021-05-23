--***********************************WELCOME TO GEOUP***************************************************
--HOW TO CREATE EXPLICIT CURSOR IN ORACLE PLSQL.
--IT HAS SIMPLE FOR STEPS HERE 1. DECLARE/INITIALIZE 2. OPEN 3. FETCH AND 4. CLOSE
-- LETS WRITE SOME CODE
SET SERVEROUTPUT ON;

DECLARE
    v_name VARCHAR2(30);
--HERE WE WILL DECLARE THE CURSOR 
    CURSOR new_cursor IS
    SELECT
        regno
--        ,
--        cnic,
--        name
    FROM
        phs_sc
    WHERE
        address LIKE '%Lahore%'
        AND regno IS NOT NULL
        AND cnic IS NOT NULL
        AND name IS NOT NULL
        AND ROWNUM < 100;

BEGIN
--NOW OPEN THE CURSOR 
    OPEN new_cursor;
--THROUGH LOOP WE WILL PUT VALUES IN TO DECLARED VARIABLE
    LOOP
        FETCH new_cursor INTO v_name;
        dbms_output.put_line(v_name);
--BREAK THE LOOP TO SEND IN UNLIMITED PROCESS
        EXIT WHEN new_cursor%notfound;
    END LOOP;

    CLOSE new_cursor;
END;

--Oracle provides four attributes which work in correlation with cursors. These attributes are:
--
--%FOUND
--%NOTFOUND
--%ISOPEN
--%ROWCOUNT