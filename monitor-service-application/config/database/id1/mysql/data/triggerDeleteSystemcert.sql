CREATE TRIGGER delete_trigger_systemcert
AFTER DELETE ON systemcert
FOR EACH ROW
BEGIN
DELETE from aqs_systemcert where certsn=old.certsn;
END