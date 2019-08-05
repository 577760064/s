CREATE TRIGGER update_trigger_log
AFTER UPDATE ON operationlog 
FOR EACH ROW
BEGIN
    UPDATE aqs_pki_operator_info SET cert_sn=new.operatorsn,objectid = new.objectid,operator_ip=new.optclientip,org_id=new.organid,result=new.optresult,operator_type=new.opttype,operator_time=new.opttime where id=new.id;
END