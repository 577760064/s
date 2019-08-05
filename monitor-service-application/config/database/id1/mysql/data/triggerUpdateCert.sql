
CREATE TRIGGER update_trigger_cert AFTER UPDATE ON cert FOR EACH ROW
BEGIN
	UPDATE aqs_cert_info
SET cert_sn = new.certsn,
 cert_dn = new. SUBJECT,
 template = new.ctml_name,
 state = new.cert_status,
 isadmin = new.isadmin,
 validity = new.validity,
 notbefore = new.notbefore,
 notafter = new.notafter,
 org_id = new.organid,
 cert_type = new.cert_type,
 create_time = new.notbefore,
 update_time = new.opt_time,
 org_inner_code = (
	SELECT
		inner_code
	FROM
		t_organization
	WHERE
		org_id = new.organid
)
WHERE
	cert_sn = new.certsn;


END