CREATE TRIGGER insert_trigger_role
AFTER INSERT ON admin_role
FOR EACH ROW
BEGIN

if (new.certsn not in (select t_admin.admin_id from t_admin))
then
INSERT INTO t_admin(ADMIN_ID,NAME,STATUS,CREATE_OPERATOR,CREATE_TIME)
VALUES(new.certsn,(SELECT commonname from cert where certsn = new.certsn),(CASE WHEN new.audit_status = 'USING' then '1' else  '0' end ),'DEFAULT_CERT_SYSTEM',(SELECT DATE_FORMAT(NOW(),'%Y%m%d%H%i%s')));
end if;
INSERT INTO t_admin_cert(CERT_ID,ADMIN_ID,SUBJECT,CREATE_OPERATOR,CREATE_TIME)
VALUES((select substring(MD5(RAND()),1,32)),new.certsn,(SELECT subject from cert where certsn = new.certsn),'DEFAULT_CERT_SYSTEM',(SELECT DATE_FORMAT(NOW(),'%Y%m%d%H%i%s')));

if(new.role_id like '1006' )
then
INSERT INTO t_admin_role(ID,ADMIN_ID,ROLENAME,CREATE_OPERATOR,CREATE_TIME)
VALUES ((select substring(MD5(RAND()),1,32)),new.certsn,'ROLE_SYSTEM','DEFAULT_CERT_SYSTEM',(SELECT DATE_FORMAT(NOW(),'%Y%m%d%H%i%s')));
end if;
if(new.role_id not like '1006' )
then
INSERT INTO t_admin_role(ID,ADMIN_ID,ROLENAME,CREATE_OPERATOR,CREATE_TIME)
VALUES ((select substring(MD5(RAND()),1,32)),new.certsn,new.role_id,'DEFAULT_CERT_SYSTEM',(SELECT DATE_FORMAT(NOW(),'%Y%m%d%H%i%s')));
end if;
END