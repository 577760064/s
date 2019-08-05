CREATE PROCEDURE iamlogin_Have_config() BEGIN
IF NOT EXISTS(SELECT * from iamlogin ) THEN
	INSERT INTO iamlogin (iamurl, iamip, iamport, iamappcode, iamsecret, iamloginOnOff) VALUES (NULL, NULL, NULL, NULL, NULL, 'no');
END IF;
END;