CREATE TRIGGER update_trigger_admin_org
AFTER UPDATE ON admin_org
FOR EACH ROW
BEGIN

UPDATE aqs_admin_org SET certsn=new.certsn,org_id=new.org_id,admin_status = new.admin_status,isSubtree = new.isSubtree,sign_server=new.sign_server where reqsn=new.reqsn;

END
