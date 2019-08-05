CREATE TRIGGER update_trigger_role
AFTER UPDATE ON admin_role
FOR EACH ROW
BEGIN
UPDATE t_admin SET NAME=(SELECT commonname from cert where certsn = new.certsn),CREATE_TIME='' where ADMIN_ID=new.certsn;
UPDATE t_admin_cert SET SUBJECT=(SELECT subject from cert where certsn = new.certsn),CREATE_TIME='' where ADMIN_ID=new.certsn;
if(new.role_id like '1006')
then
UPDATE t_admin_role SET ROLENAME='ROLE_SYSTEM', CREATE_TIME='' where ADMIN_ID=new.certsn;
end if;
if(new.role_id not like  '1006')
then
UPDATE t_admin_role SET ROLENAME=new.role_id, CREATE_TIME='' where ADMIN_ID=new.certsn;
end if;

END
