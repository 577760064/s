CREATE TRIGGER triggerInsertAqsPkiOperatorInfo
AFTER insert ON aqs_pki_operator_info
FOR EACH ROW
BEGIN

insert into aqs_pki_operator_info_cache values (new.id,new.cert_sn,new.operator_ip,new.objectid,new.objecttype,new.org_id,new.result,new.operator_type,new.operator_time,new.version,new.product_type);

END