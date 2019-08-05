CREATE PROCEDURE pro_AddColumnOrg() BEGIN
IF NOT EXISTS(SELECT * FROM  information_schema.columns WHERE table_name='aqs_org_info' AND COLUMN_NAME='update_time'  and  TABLE_SCHEMA in (select database())) THEN
alter table aqs_org_info add update_time datetime ;

alter table aqs_org_info change update_time update_time datetime  after create_time;
END IF;
END;