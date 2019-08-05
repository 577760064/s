CREATE TRIGGER delete_trigger_role
AFTER DELETE ON admin_role
FOR EACH ROW
BEGIN

DELETE from t_admin where ADMIN_ID=old.certsn;

DELETE from t_admin_cert where ADMIN_ID=old.certsn;

DELETE from t_admin_role where ADMIN_ID=old.certsn;

END