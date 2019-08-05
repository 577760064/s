DROP TRIGGER IF EXISTS update_trigger_userinfo;
DROP TRIGGER IF EXISTS delete_trigger_userinfo;
DROP TRIGGER IF EXISTS insert_trigger_aqs_cert_info;
DROP TRIGGER IF EXISTS update_trigger_aqs_cert_info;
DROP TRIGGER IF EXISTS delete_trigger_aqs_cert_info;
DROP TRIGGER IF EXISTS insert_trigger_org;
DROP TRIGGER IF EXISTS update_trigger_org;
DROP TRIGGER IF EXISTS update_trigger_aqs_userinfo;
DROP TRIGGER IF EXISTS insert_trigger_aqs_userinfo;
DROP TRIGGER IF EXISTS delete_trigger_aqs_userinfo;

DROP TRIGGER IF EXISTS insert_trigger_cert;
DROP TRIGGER IF EXISTS update_trigger_cert;

DROP TRIGGER IF EXISTS update_trigger_aqs_cert_info;
DROP TRIGGER IF EXISTS insert_trigger_aqs_cert_info;



DROP PROCEDURE IF EXISTS schema_change;
DROP PROCEDURE IF EXISTS aqs_cert_snapCount;
DROP PROCEDURE IF EXISTS iamlogin_Have_config;
DROP PROCEDURE IF EXISTS pro_AddColumn;
DROP PROCEDURE IF EXISTS pro_AddColumnOrg;

DROP PROCEDURE IF EXISTS cacheissucess_Have_config;

DROP PROCEDURE IF EXISTS aqs2_user_info_cache_oldname_oldcode;

DROP TRIGGER IF EXISTS delete_trigger_role;


Create Table If Not Exists cacheissucess(
 id VARCHAR(255),
issucess  VARCHAR(255)
);

Create Table If Not Exists iamlogin(
 iamurl VARCHAR(255),
iamip  VARCHAR(255),
iamport VARCHAR(255),
iamappcode VARCHAR(255),
iamsecret VARCHAR(255),
iamloginOnOff varchar (255)
);
delete from aqs_dict where code = 'UNLOCKAPPLYADD';
delete from aqs_dict where code = 'UNLOCKAPPLYAUDIT';
delete from aqs_dict where code = 'UNLOCKAPPLEUPDATE';
delete from aqs_dict where code = 'CERTUPDATEUESTANDDOWN';
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshs2f2', 'UNLOCKAPPLYADD', '添加解锁申请', '此处放mapper接口文件', '28', '2018-10-19 13:40:02', null, '解锁');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshs2f3', 'UNLOCKAPPLYAUDIT', '审核解锁申请', '此处放mapper接口文件', '29', '2018-10-19 13:40:02', null, '解锁');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshs2f4', 'UNLOCKAPPLEUPDATE', '修改解锁申请', '此处放mapper接口文件', '30', '2018-10-19 13:40:02', null, '解锁');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshs2f5', 'CERTUPDATEUESTANDDOWN', '证书更新并下载', '此处放mapper接口文件', '31', '2018-10-19 13:40:02', null, '解锁');

delete from aqs_dict where id = '2c908def200371b60120052skshsaw1';
delete from aqs_dict where id = '2c908def200371b60120052skshsaw2';
delete from aqs_dict where id = '2c908def200371b60120052skshsaw3';
delete from aqs_dict where id = '2c908def200371b60120052skshsaw4';
delete from aqs_dict where id = '2c908def200371b60120052skshsaw5';
delete from aqs_dict where id = '2c908def200371b60120052skshsaw6';
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw1', 'ADMINREQUESTAPPLY', '申请管理员', '此处放mapper接口文件', '1', '2019-03-27 14:23:22', NULL, '管理员');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw2', 'DELETEADMIN', '删除管理员', '此处放mapper接口文件', '此处放mapper接口文件', '2019-03-27 14:25:21', NULL, '管理员');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw3', 'ADMINHOLDAPPLY', '冻结管理员', '此处放mapper接口文件', '此处放mapperxml文件', '2019-03-27 14:25:24', NULL, '管理员');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw4', 'ADMINREVOKEAPPLY', '注销管理员', '此处放mapper接口文件', '4', '2019-03-27 14:25:27', NULL, '管理员');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw5', 'ADMINUNHOLDAPPLY', '解冻管理员', '此处放mapper接口文件', '5', '2019-03-27 14:25:31', NULL, '管理员');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw6', 'ADMINUPDATEAPPLY', '更新管理员', '此处放mapper接口文件', '6', '2019-03-27 14:25:34', NULL, '管理员');

UPDATE aqs_dict SET aqs_name = '自助' WHERE id = '2c908def200371b60120052skshs2a8';
UPDATE aqs_dict SET aqs_name = '自助' WHERE id = '2c908def200371b60120052skshs2d3';
UPDATE aqs_dict SET aqs_name = '自助' WHERE id = '2c908def200371b60120052skshs2d4';
UPDATE aqs_dict SET aqs_name = '自助' WHERE id = '2c908def200371b60120052skshs2f1';