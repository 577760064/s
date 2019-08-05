CREATE TRIGGER delete_trigger_admin_org
AFTER DELETE ON admin_org
FOR EACH ROW
BEGIN

DELETE from aqs_admin_org where reqsn=old.reqsn;

END