CREATE TRIGGER update_trigger_aqs_key_info_unlock
AFTER update ON key_info_unlock
FOR EACH ROW
BEGIN
UPDATE aqs_key_info_unlock set key_id=new.key_id,admin_pwd=new.admin_pwd,certsn=new.certsn,sign_server=new.sign_server where key_id = new.key_id and certsn=new.certsn;
END