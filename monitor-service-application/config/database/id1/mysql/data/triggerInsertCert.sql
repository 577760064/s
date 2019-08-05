
CREATE TRIGGER insert_trigger_cert AFTER INSERT ON cert FOR EACH ROW
BEGIN
	INSERT INTO aqs_cert_info (
		cert_sn,
		cert_dn,
		user_id,
		template,
		state,
		isadmin,
		validity,
		notbefore,
		notafter,
		org_id,
		cert_type,
		create_time,
		update_time,
		org_inner_code
	)
VALUES
	(
		new.certsn,
		new. SUBJECT,
		new.userinfo_id,
		new.ctml_name,
		new.cert_status,
		new.isadmin,
		new.validity,
		new.notbefore,
		new.notafter,
		new.organid,
		new.cert_type,
		new.notbefore,
		new.opt_time,
		(
			SELECT
				inner_code
			FROM
				t_organization
			WHERE
				org_id = new.organid
		)
	);


END