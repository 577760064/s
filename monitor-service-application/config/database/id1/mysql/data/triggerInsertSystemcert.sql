CREATE TRIGGER insert_trigger_systemcert
AFTER INSERT ON  systemcert
FOR EACH ROW
BEGIN
	INSERT INTO  aqs_systemcert (certsn,subject,notbefore,validity,certtype,certstatus,device_id)
	VALUES
	(new.certsn,new.subject,new.notbefore,new.validity,new.certtype,new.certstatus,new.device_id);
END
