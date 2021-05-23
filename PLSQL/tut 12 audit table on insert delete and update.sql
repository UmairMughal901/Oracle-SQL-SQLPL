CREATE OR REPLACE TRIGGER audit_sh 
BEFORE
    INSERT OR DELETE OR UPDATE ON superheros
    FOR EACH ROW 
enable 
DECLARE
    v_user  VARCHAR2(30);
    v_date  VARCHAR2(30);
BEGIN SELECT
          user,
          to_char(sysdate, 'DD/MM/YYYY HH24:MI:SS')
      INTO
          v_user,
          v_date
      FROM
          dual; 
          IF inserting THEN
    INSERT INTO sh_audit (
        new_name,
        old_name,
        user_name,
        enter_date,
        operation
    ) VALUES (
        :new.sh_name,
        NULL,
        v_user,
        v_date,
        'Inserting'
    );
     ELSIF Deleting THEN
    INSERT INTO sh_audit (
        new_name,
        old_name,
        user_name,
        enter_date,
        operation
    ) VALUES (
        NULL,
        :OLD.sh_name,
        v_user,
        v_date,
        'Deleting'
    );
    ELSIF Updating THEN
    INSERT INTO sh_audit (
        new_name,
        old_name,
        user_name,
        enter_date,
        operation
    ) VALUES (
        :New.sh_name,
        :OLD.sh_name,
        v_user,
        v_date,
        'Updating'
    );
end if;
    end;
/


select * from superheros;

insert into superheros VALUES ('GanjaSuper');

Select * from sh_audit;

update superheros set sh_name = 'Hatman' where sh_name = 'Batman';

delete superheros where sh_name = 'Hatman' and rownum = 1;



select * from superheros where sh_name = 'Hatman' and rownum = 1; 

