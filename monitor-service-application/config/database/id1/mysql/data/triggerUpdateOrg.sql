CREATE TRIGGER update_trigger_org
AFTER UPDATE ON t_organization
FOR EACH ROW
BEGIN
UPDATE aqs_org_info SET org_cn=new.name,org_code=new.code,org_state=new.data_state,create_time=new.create_time,update_time = new.update_time,parent_id=new.parent,inner_code=new.inner_code,tlevel=new.tlevel where id=new.org_id;
END