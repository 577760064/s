CREATE TRIGGER insert_trigger_aqs_key_info_unlock
AFTER INSERT ON key_info_unlock
FOR EACH ROW
BEGIN
INSERT INTO aqs_key_info_unlock (key_id,admin_pwd,certsn,sign_server) VALUES(new.key_id,new.admin_pwd,new.certsn,new.sign_server);
END