CREATE TABLE UIPTBPL_event_audit
  (
    event_type VARCHAR2(60),
    logon_date DATE,
    logon_time VARCHAR2(15),
    logof_date DATE,
    logof_time VARCHAR2(15)
  );
  
  commit;
  
Create or replace trigger uiptbpl_eventaudit_tr
after LOGON ON Schema
Begin
insert into UIPTBPL_event_audit values(
ora_sysevent,
sysdate,
to_char(sysdate, 'hh24:mi:ss'),
NULL,
NULL
);
end;
/
commit;

DISC;


conn UIPTBPL/VVVVCCCC;
/
----------------------------


select * from uiptbpl_event_audit;
