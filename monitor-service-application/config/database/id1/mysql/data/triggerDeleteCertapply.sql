CREATE TRIGGER delete_trigger_cert_apply
AFTER DELETE ON cert_apply
FOR EACH ROW
BEGIN
DELETE from aqs_cert_apply where reqsn=old.reqsn;
END