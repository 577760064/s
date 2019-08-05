CREATE PROCEDURE cacheissucess_Have_config() BEGIN
IF NOT EXISTS(SELECT * from cacheissucess) THEN
  insert  into cacheissucess values ('1','true');
END IF;
END;