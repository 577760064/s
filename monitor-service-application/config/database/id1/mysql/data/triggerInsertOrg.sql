CREATE TRIGGER insert_trigger_org
AFTER INSERT ON t_organization
FOR EACH ROW
BEGIN
INSERT INTO aqs_org_info(id,org_cn,org_code,org_state,create_time,update_time,parent_id ,inner_code,tlevel) VALUES (new.org_id,new.name,new.code,new.data_state,new.create_time,new.update_time,new.parent,new.inner_code,new.tlevel);
END