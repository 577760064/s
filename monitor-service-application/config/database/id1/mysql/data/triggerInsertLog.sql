CREATE TRIGGER insert_trigger_log
AFTER INSERT ON operationlog
FOR EACH ROW
BEGIN
INSERT INTO aqs_pki_operator_info(id,cert_sn,operator_ip,objectid,objecttype,org_id,result,operator_type,operator_time,version) VALUES (new.id,new.operatorsn,new.optclientip,new.objectid,new.objecttype,new.organid,new.optresult,new.opttype,new.opttime,'v_02');
END
