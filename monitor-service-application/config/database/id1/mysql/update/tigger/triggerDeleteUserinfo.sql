CREATE TRIGGER delete_trigger_userinfo
AFTER DELETE ON userinfo
FOR EACH ROW
BEGIN
DELETE from aqs_user_info where userinfo_id=old.userinfo_id;
END