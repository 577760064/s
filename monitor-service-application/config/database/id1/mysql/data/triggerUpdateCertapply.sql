CREATE TRIGGER update_trigger_cert_apply
AFTER UPDATE ON cert_apply
FOR EACH ROW
BEGIN
UPDATE aqs_cert_apply SET certsn=new.certsn,subjectuppercase=new.subjectuppercase,subject=new.subject,commonname=new.commonname,ctml_name=new.ctml_name,opt_type=new.opt_type,
isadmin=new.isadmin,req_status=new.req_status,validity=new.validity,notbefore=new.notbefore,notafter=new.notafter,userinfo_id=new.userinfo_id,cert_type=new.cert_type
where reqsn=new.reqsn;
END