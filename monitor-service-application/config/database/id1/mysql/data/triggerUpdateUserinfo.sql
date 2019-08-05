CREATE TRIGGER update_trigger_userinfo
AFTER UPDATE ON  userinfo
FOR EACH ROW
BEGIN
  UPDATE aqs_user_info SET usercode=new.usercode,userinfo_id=new.userinfo_id,user_status=new.user_status,organ_id=new.organ_id,create_time=new.create_time,update_time=new.update_time,username=new.username
  where userinfo_id=new.userinfo_id;
END