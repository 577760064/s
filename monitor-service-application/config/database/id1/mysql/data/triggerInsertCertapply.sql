CREATE TRIGGER insert_trigger_cert_apply
AFTER INSERT ON  cert_apply
FOR EACH ROW
BEGIN
	INSERT INTO aqs_cert_apply(reqsn,certsn,subjectuppercase,subject,commonname,ctml_name ,opt_type,isadmin,req_status,validity,notbefore,notafter,userinfo_id,cert_type)
	VALUES
	(new.reqsn,new.certsn,new.subjectuppercase,new.subject,new.commonname,new.ctml_name,new.opt_type,new.isadmin,new.req_status,new.validity,new.notbefore,new.notafter,new.userinfo_id,new.cert_type);
END
