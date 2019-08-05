CREATE PROCEDURE aqs2_user_info_cache_oldname_oldcode() BEGIN
IF NOT EXISTS(SELECT * FROM  information_schema.columns WHERE table_name='aqs_user_info_cache' AND COLUMN_NAME='oldname'  and  TABLE_SCHEMA in (select database())) THEN
	alter table aqs_user_info_cache add oldname VARCHAR(255) ;
	alter table aqs_user_info_cache add oldcode VARCHAR(255) ;
END IF;
END;

