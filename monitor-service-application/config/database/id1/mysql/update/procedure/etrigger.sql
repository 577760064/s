CREATE PROCEDURE schema_change() BEGIN
DECLARE  CurrentDatabase VARCHAR(100);
SELECT DATABASE() INTO CurrentDatabase;
IF NOT EXISTS (SELECT * FROM information_schema.statistics WHERE CONVERT(table_schema USING utf8)=CONVERT(CurrentDatabase USING utf8) AND table_name = 'aqs_key_info_unlock' AND index_name = 'certsn') THEN
   ALTER TABLE aqs_key_info_unlock ADD INDEX certsn (certsn);
END IF;
END