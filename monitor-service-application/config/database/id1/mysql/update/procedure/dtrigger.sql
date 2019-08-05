CREATE PROCEDURE pro_AddColumn() BEGIN
IF NOT EXISTS(SELECT * FROM  information_schema.columns WHERE table_name='aqs_cert_info_cache' AND COLUMN_NAME='oldorg_id'  and  TABLE_SCHEMA in (select database())) THEN
alter table aqs_cert_info_cache add oldorg_id VARCHAR(255) ;

END IF;
END;
