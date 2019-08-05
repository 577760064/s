CREATE TRIGGER insert_trigger_certbolb
AFTER INSERT ON cert_entity
FOR EACH ROW
BEGIN
INSERT INTO t_admin_cert_bo(ID,CERTENTITY_BO)
VALUES (new.certsn,new.certentity);
END
