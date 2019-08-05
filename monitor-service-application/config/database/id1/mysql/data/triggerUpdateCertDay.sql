CREATE TRIGGER update_trigger_aqs_cert_info AFTER UPDATE ON aqs_cert_info FOR EACH ROW
BEGIN

INSERT INTO aqs_cert_info_cache
VALUES
	(
		new.cert_sn,
		new.cert_dn,
		new.user_id,
		new.template,
		new.state,
		new.validity,
		new.isadmin,
		new.notbefore,
		new.notafter,
		new.org_id,
		new.cert_type,
		new.create_time,
		new.update_time,
		new.org_inner_code,
		old.org_id,
		'update'
	);

END