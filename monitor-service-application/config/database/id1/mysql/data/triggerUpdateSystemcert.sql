CREATE TRIGGER update_trigger_systemcert
AFTER UPDATE  ON systemcert
FOR EACH ROW
BEGIN
UPDATE aqs_systemcert SET subject=new.subject,notbefore=new.notbefore,validity=new.validity,certtype=new.certtype,certstatus=new.certstatus,device_id=new.device_id where certsn=new.certsn;
END