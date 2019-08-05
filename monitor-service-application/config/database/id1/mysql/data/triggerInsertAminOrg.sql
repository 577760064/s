CREATE TRIGGER insert_trigger_admin_org
AFTER INSERT ON admin_org
FOR EACH ROW
BEGIN

INSERT INTO aqs_admin_org(reqsn,certsn,org_id,admin_status,isSubtree,sign_server)
VALUES(new.reqsn,new.certsn,new.org_id,new.admin_status,new.isSubtree,new.sign_server);

END
