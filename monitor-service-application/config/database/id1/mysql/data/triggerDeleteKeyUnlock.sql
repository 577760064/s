CREATE TRIGGER delete_trigger_aqs_key_info_unlock
AFTER DELETE ON key_info_unlock
FOR EACH ROW
BEGIN
delete from aqs_key_info_unlock where key_id = old.key_id and certsn = old.certsn;
END