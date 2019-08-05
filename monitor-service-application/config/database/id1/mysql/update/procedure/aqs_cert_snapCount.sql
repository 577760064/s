CREATE PROCEDURE aqs_cert_snapCount() BEGIN
IF  EXISTS(SELECT * FROM  information_schema.columns WHERE table_name='aqs_cert_snap' AND COLUMN_NAME='count'  and  TABLE_SCHEMA in (select database())) THEN
	alter table aqs_cert_snap DROP  count ;
END IF;
END;
