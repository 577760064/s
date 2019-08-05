CREATE TRIGGER insert_trigger_userinfo
AFTER INSERT ON  userinfo
FOR EACH ROW
BEGIN
	INSERT INTO  aqs_user_info (userinfo_id,user_status,organ_id,create_time,update_time,username,usercode) VALUES (new.userinfo_id,new.user_status,new.organ_id,new.create_time,new.update_time,new.username,new.usercode);
END
