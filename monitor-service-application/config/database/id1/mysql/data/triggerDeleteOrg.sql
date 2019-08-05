CREATE TRIGGER delete_trigger_org
AFTER DELETE ON t_organization
FOR EACH ROW
BEGIN
DELETE from aqs_org_info where id=old.org_id;
END