CREATE TRIGGER update_trigger_aqs_userinfo
AFTER UPDATE ON  aqs_user_info
FOR EACH ROW
BEGIN
  INSERT INTO  aqs_user_info_cache  values(new.userinfo_id,new.user_status,new.organ_id,new.create_time,new.update_time,new.username,new.usercode,new.iamorg_id,new.org_group,new.reqid,new.sign_server,'update',old.user_status,old.username,old.usercode);
END