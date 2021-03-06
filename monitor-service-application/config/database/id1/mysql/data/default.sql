INSERT INTO tb_cube_config VALUES ('10000', 'cn.com.jit.platform.settingsmanager.entity', 'title', '吉大正元产品平台');

INSERT INTO t_role VALUES ('ROLE_AUDIT', 'ROLE_AUDIT', '安全审计员', null, null, null, '0', '20180101000000', null, '20180101000000');
INSERT INTO t_role VALUES ('ROLE_SECURITY', 'ROLE_SECURITY', '安全保密管理员', null, null, null, '0', '20180101000000', null, '20180101000000');
INSERT INTO t_role VALUES ('ROLE_SYSTEM', 'ROLE_SYSTEM', '系统管理员', null, null, null, '0', '20180101000000', null, '20180101000000');

INSERT INTO t_admin VALUES ('DEFAULT_CERT_AUDIT', '安全审计管理员', '', '', '1', 'SYSTEM', 20180101000000, 'SYSTEM', 20180101000000);
INSERT INTO t_admin_auth VALUES ('DEFAULT_CERT_AUDIT', 'DEFAULT_CERT_AUDIT', 'de4fd3b77569eddfe79347d46f823b41', '0');
INSERT INTO t_admin_cert VALUES ('DEFAULT_CERT_AUDIT', 'DEFAULT_CERT_AUDIT', 'MIIDDDCCAfSgAwIBAgIIbtxOOdLbIy8wDQYJKoZIhvcNAQELBQAwSjELMAkGA1UEBhMCQ04xDDAKBgNVBAoMA0pJVDEXMBUGA1UECwwOd3d3LmppdC5jb20uY24xFDASBgNVBAMMC0pJVCBDQSAyMDQ4MCAXDTE4MDEyMzAzMDkzMloYDzIwNjcwNTA2MDMwOTMyWjBAMQswCQYDVQQGEwJDTjEMMAoGA1UECgwDSklUMSMwIQYDVQQDDBrlronlhajlrqHorqHnrqHnkIblkZhfMjA0ODCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJjt3yLV7i7toumZDEWcwGufm0inWdPdBYdwJZfuBihnnsz/IHr2KkHU3bLKvQte6WkH4suqgQJkxAeJxxHZFqLUCu89xZskqAMwg/P+YYcIc25+fsZdbbx2ZfbbAVlM3bw01uooAyxjGWe57YKEnOR8+b+P8Cm6MUoJ0gSXXTVh+w92gEE5kFLk8nyHjUREnrpQ9CXavxnhRfN7JozjyDmj0X04t2eve52XJ/JigkSLGETqC1kTVvAcweWrFy2j1S7XNTUcCOeapHhrMEL/S385AZ9g2hTX/9lxK2ZpGRR1e6f1PDzfg3O2oez2SDbLUMBE+E8nYuOrVDIMHJSh7pUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAIId29YhDSnqoPLKZFvDTXvNdOjC+OlR0j4ud5yXQLZMF3XZsNRmgjsiwt1LeUp6fYuvZnj/IU9YytEY9oL50xDvycAaFvrGlJVejUcMHQ/oIT13TVr14FjTFMLRPv7eQPVAdVQnQ6Jvy1mDl2IsOROiATaKlQ0Fbh7bNw3cNgTPYlyHp98N+069csepr+YIl5s4FjvajCHgKxPkRkFizy/Do0EX9g29ndD8wcvbblGQy/L4UB90RrNO2AsHTLYT1rJdoWwZ7hpYYgUyxHCkxh3zm26HHkhuEVYnHZ5DKdSRDq0l1Yq8PQC25str8STl37Flvn9EVHhdasvwAwWqyfw==', 'CN=安全审计管理员_2048,O=JIT,C=CN', 'CN=JIT CA 2048,OU=www.jit.com.cn,O=JIT,C=CN', 'Nhl5jv29mZN7Jcys25MFFYrQrw8=', 'SYSTEM', 20180101000000, null, null);
INSERT INTO t_admin_role VALUES ('DEFAULT_CERT_AUDIT', 'DEFAULT_CERT_AUDIT', 'ROLE_AUDIT','SYSTEM',20180101000000,'SYSTEM',20180101000000);

INSERT INTO t_admin VALUES ('DEFAULT_CERT_SECURITY', '安全保密管理员', '', '', '1', 'SYSTEM', 20180101000000, 'SYSTEM', 20180101000000);
INSERT INTO t_admin_auth VALUES ('DEFAULT_CERT_SECURITY', 'DEFAULT_CERT_SECURITY', '9eb6d55ecaca182f1fda129593c676fd', '0');
INSERT INTO t_admin_cert VALUES ('DEFAULT_CERT_SECURITY', 'DEFAULT_CERT_SECURITY', 'MIIDDDCCAfSgAwIBAgIIen5+86z1XigwDQYJKoZIhvcNAQELBQAwSjELMAkGA1UEBhMCQ04xDDAKBgNVBAoMA0pJVDEXMBUGA1UECwwOd3d3LmppdC5jb20uY24xFDASBgNVBAMMC0pJVCBDQSAyMDQ4MCAXDTE4MDEyMzAzMTAyMloYDzIwNjcwNTA2MDMxMDIyWjBAMQswCQYDVQQGEwJDTjEMMAoGA1UECgwDSklUMSMwIQYDVQQDDBrlronlhajkv53lr4bnrqHnkIblkZhfMjA0ODCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMcDiSgqxny6EiQjqAy9Ecm2kSNkh14F+7fp4CaTEnToQ9sScsLSiXkwg4gyV6ctZQWJaWRzxx5VMmnHv+8+wHR4Gmz13zS71NwbGyJQJ1Tcw2sdTXF8QNlTGCi0Ryxbqe7ctISCFdFYS1n7AzvML47e6tWWw0P9VRjLnbZYgD5q+TVQWmhPVwEr8apFivLJC8MWh0YSLCc+vE1s2xGLuljETrnr8b3pzxQ2Y/aGhLih3KaGt2XDqiTxk/Sg5um0ZMpMJS2OPPLcfNbhtWu9gP2KtiQRFLzhLfqApZudWnjtTHbUH1/b43YW5HX1ETyzU5NpH1x9ffb6OMlNi5L54l0CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAII4JBra/HLFRLHTbkanDxPL8G3J2vaFlH6OYLbFm97WFYvirk0K3OOc8NedqHwL/KQUPityeyi5SP7vPJ/JK++XeSfB74Av48wHQnhJEc+KwDSpx8nA6++5+se4zfMMFzTRaPDFfEk9Luxu9U9OQNgOTa3tGQh3sY432EP0zw0JJFu9wR/I64WVLgP6j+2KuufAQRLbpJ2UqlHU/w6wAupbDV9dDCdcLUQPwn+x1W3PZYrON17GRZmBkGVgHYIMIVZAJ3NO0I4g1OyinfftFo+PEidt8hfpH6nCkU5yU01/6QhFvYhxrF+JFk43kxM02ON3S+CIVcmg3cnmHvJm14g==', 'CN=安全保密管理员_2048,O=JIT,C=CN', 'CN=JIT CA 2048,OU=www.jit.com.cn,O=JIT,C=CN', 'thsSVDqFaOWIEVhK0x51NqvM/gQ=', 'SYSTEM', 20180101000000, null, null);
INSERT INTO t_admin_role VALUES ('DEFAULT_CERT_SECURITY', 'DEFAULT_CERT_SECURITY', 'ROLE_SECURITY','SYSTEM',20180101000000,'SYSTEM',20180101000000);

INSERT INTO t_admin VALUES ('DEFAULT_CERT_SYSTEM', '系统管理员', '', '', '1', 'SYSTEM', 20180101000000, 'SYSTEM', 20180101000000);
INSERT INTO t_admin_auth VALUES ('DEFAULT_CERT_SYSTEM', 'DEFAULT_CERT_SYSTEM', '06c7556969c6945658e30cc3f525a81e', '0');
INSERT INTO t_admin_cert VALUES ('DEFAULT_CERT_SYSTEM', 'DEFAULT_CERT_SYSTEM', 'MIIDBjCCAe6gAwIBAgIIZWiuDCe/SPwwDQYJKoZIhvcNAQELBQAwSjELMAkGA1UEBhMCQ04xDDAKBgNVBAoMA0pJVDEXMBUGA1UECwwOd3d3LmppdC5jb20uY24xFDASBgNVBAMMC0pJVCBDQSAyMDQ4MCAXDTE4MDEyMzAzMDgzOVoYDzIwNjcwNTA2MDMwODM5WjA6MQswCQYDVQQGEwJDTjEMMAoGA1UECgwDSklUMR0wGwYDVQQDDBTns7vnu5/nrqHnkIblkZhfMjA0ODCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK/tZeq/cdGIF9Ugv+YuGWj8AZwTPonBr6zlOwVe1cJRgyjSDWJ3sw0O0ndx9i47ks0sDkm716OM4k2+kL3VUx8XfwGY/0tZYcb0VcfvRrg15hxSVeihwFrMdttNymAAtu4OuezNcGsKYjTf4g+bawpSD6wO4DhDHcnlUDTFnrYD6wWA2RodD5FiGrwjnXYclWZQIt+jwVAKvShtBa53avkNJubG3TbcOhNWIN5Mypk6k/4dWYgRfQXLnozv1iP9jnJOr9soBMiPumk4IAvneyOyNsbZN/8Xi3MndOHgJ0h+AfeGbxipe4K/BOBQMAToTYzSoutWuO1vRChrZ8mx3dUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAUTvu/yLhQxO3pfgLwP/RyzMGB0tSb35TCiqUriHP+m9Vv4dma/uV9ZeAzL1rFsrzd2u5UZqvhfdOcbuyDqZh98pO8Hs/lkx00UlzdKpSemYiZ7/t3KiT0C04FQWdXkbnRkEvyj/4UkTJUcQ/OUe5WQsjRo/jNEY7jECGsqJvBv38RkTTBWzPhzN9hrOl3bZJE/hPkuhGwIzJb4vIId7oU8siPMhIYIXKNd678+tXX6eqvRR4DJpMDOlnTc43ru+PBlzVhOtdw3JDigc2u3NESmjMdA4xc99iKgPXQ9hrFmupZZvqKXFiFeEET1Qo3KrxodWH1FjKZJfmkCjX2t5JDw==', 'CN=系统管理员_2048,O=JIT,C=CN', 'CN=JIT CA 2048,OU=www.jit.com.cn,O=JIT,C=CN', 'wzkPpEcCY/YEUEnJgFyL06feK+g=', 'SYSTEM', 20180101000000, null, null);
INSERT INTO t_admin_role VALUES ('DEFAULT_CERT_SYSTEM', 'DEFAULT_CERT_SYSTEM', 'ROLE_SYSTEM','SYSTEM',20180101000000,'SYSTEM',20180101000000);

INSERT INTO t_admin VALUES ('DEFAULT_ACCOUNT', '默认系统管理员', '', '', '1', 'SYSTEM', 20180101000000, 'SYSTEM', 20180101000000);
INSERT INTO t_admin_account VALUES ('DEFAULT_ACCOUNT', 'DEFAULT_ACCOUNT', 'admin', '08b5253316832a18dc5478d11facce91', '0', 'SYSTEM',20180101000000, 'SYSTEM',20180101000000);
INSERT INTO t_admin_role VALUES ('DEFAULT_ACCOUNT_AUDIT', 'DEFAULT_ACCOUNT', 'ROLE_AUDIT','SYSTEM',20180101000000,'SYSTEM',20180101000000);
INSERT INTO t_admin_role VALUES ('DEFAULT_ACCOUNT_SECURITY', 'DEFAULT_ACCOUNT', 'ROLE_SECURITY','SYSTEM',20180101000000,'SYSTEM',20180101000000);
INSERT INTO t_admin_role VALUES ('DEFAULT_ACCOUNT_SYSTEM', 'DEFAULT_ACCOUNT', 'ROLE_SYSTEM','SYSTEM',20180101000000,'SYSTEM',20180101000000);
INSERT INTO `jit_common_cacert` (`id`,`name`,`rootcerttype`,`issuer`,`subject`,`notbefore`,`notafter`,`validity`,`superid`,`certverifydepth`,`checktype`,`subjectkeyidentifier`,`certentity`,`createby`,`createtime`,`lastmodifytime`,`lastmodifyby`) VALUES
 ('hIZZItSGb6k4rH8Dg3CFriBmyMjVCMZc','DEFAULT','default','CN=JIT CA 2048,OU=www.jit.com.cn,O=JIT,C=CN','CN=JIT CA 2048,OU=www.jit.com.cn,O=JIT,C=CN','2018-01-18 17:28:01','2068-01-07 17:28:01',18251,'root',0,0,'OGg/3rfthp5JXSRjnQfK3uILSk0=',0x308203753082025DA00302010202084AD0E4E5E4974F17300D06092A864886F70D01010B0500304A310B300906035504061302434E310C300A060355040A0C034A495431173015060355040B0C0E7777772E6A69742E636F6D2E636E3114301206035504030C0B4A495420434120323034383020170D3138303131383039323830315A180F32303638303130373039323830315A304A310B300906035504061302434E310C300A060355040A0C034A495431173015060355040B0C0E7777772E6A69742E636F6D2E636E3114301206035504030C0B4A4954204341203230343830820122300D06092A864886F70D01010105000382010F003082010A028201010092FA73866486D3E9734A6A8471B53192C28E8E28AEEF9130D19F411E4111A5818093C6129EB58B1E2DFC5DB49F6D667EE9A6A188796B50AB2591F971F1EF1C4602ACECD3EF1E5BF8A11FEAFD9CBC081192641072ED2BC8530BA0F5D56E2A7D405DFBFC3A296CB05A84F1B9E2A29A22A260055D6C976E1959FC7EF5C6D3DDD12C0FEA97E961D3108D47E15612BFD6AFE196107E7B81449AF280949DCE4E3C11488D25EA2B8478C885BAD068890E074A0CE9DD27D268DC7068CB9FF25CB59C726467CFEAD282D99B8E45A0F0AE60DD9ED1D89724E922B46BB3FDB478A95A3C59E67F090607E594012509D149E54D7F3BC880FCB29E87C0A5A886C31D6282881A8F0203010001A35D305B300B0603551D0F040403020106300C0603551D13040530030101FF301D0603551D0E0416041438683FDEB7ED869E495D24639D07CADEE20B4A4D301F0603551D2304183016801438683FDEB7ED869E495D24639D07CADEE20B4A4D300D06092A864886F70D01010B0500038201010013FC4DC97D86FF7F520820AC1EBD22413D5FB6FBD993EBF93940AC67694BA3D4B12B246B16E9D630AAEE4E1C38E8574A848E2B703DED10BEEEE381037FC37FE8DB64FDD17A92340875D7322BCD9E5961D4F050FED01A05C4D9962ED053A1CBF1407CF336BE88BAC0E63D154D396582A383B67348F5D69D2F35509C944F5A95F015B0C998D5D7FF3747B78A10915CB883C42CF8070D06DB25CA5A4FBE9CBF9757215D77699C61312DBB34DBDE31CBD285205B7FE5983632792EB4F8B3AA2FD247FE7CFBE25DFC75ACC2384DB45AEF1C6F1913D270058A4E9514E5CF2C44F8A439A322CE2C29EDC16CCCC7CA179DACDB97A13F97E805847021A7F74F5BAA70759A,NULL,'2018-07-27 10:42:51','2018-07-27 10:42:51',NULL);

INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2a0', 'Use', '使用中', '1', '1', '2018-09-11 10:19:02', null, '使用中');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2a1', 'Hold', '已冻结', '1', '此处放mapper接口文件', '2018-09-11 10:19:02', null, '已冻结');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2a2', 'Revoke', '已注销', '1', '此处放mapperxml文件', '2018-09-11 10:19:02', null, '已注销');

INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2a6', 'CERTUPDATEAPPLYAUDIT', '审核证书更新申请', '此处放mapper接口文件', '1', '2018-09-11 10:19:02', null, '更新');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2a8', 'CERTSELFUPDATEAPPLYAUDIT', '自助审核更新申请', '此处放mapper接口文件', '此处放mapper接口文件', '2018-09-11 10:19:02', null, '自助');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2a9', 'CERTREVOKEAPPLYAUDIT', '审核证书注销申请', '此处放mapper接口文件', '此处放mapperxml文件', '2018-09-11 10:19:02', null, '注销');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2b1', 'CERTHOLDAPPLYAUDIT', '审核证书冻结申请', '此处放mapper接口文件', '4', '2018-09-11 10:19:02', null, '冻结');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2b2', 'CERTUNHOLDAPPLYAUDIT', '审核证书解冻申请', '此处放mapper接口文件', '5', '2018-09-11 10:19:02', null, '解冻');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2b3', 'BATCHCERTDOWNLOAD', '批量制证', '此处放mapper接口文件', '6', '2018-09-11 10:19:02', null, '制证');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2b8', 'BATCHHOLDAPPLY', '批量冻结', '此处放mapper接口文件', '7', '2018-09-11 10:19:02', null, '冻结');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2b9', 'BATCHUPDATEAPPLY', '批量更新', '此处放mapper接口文件', '8', '2018-09-11 10:19:02', null, '更新');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2c1', 'BATCHUNHOLDAPPLY', '批量解冻', '此处放mapper接口文件', '9', '2018-09-11 10:19:02', null, '解冻');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2c2', 'BATCHREVOKEAPPLY', '批量注销', '此处放mapper接口文件', '10', '2018-09-11 10:19:02', null, '注销');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2c3', 'CERTDOWNLOAD', '证书制证', '此处放mapper接口文件', '11', '2018-09-11 10:19:02', null, '制证');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2c4', 'CERTUPDATEAPPLYADD', '录入证书更新申请', '此处放mapper接口文件', '12', '2018-10-18 09:40:02', null, '更新');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2c5', 'CERTUPDATEAPPLYMODIFY', '修改证书更新申请', '此处放mapper接口文件', '13', '2018-10-18 09:40:02', null, '更新');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2c6', 'CERTREVOKEAPPLYADD', '录入证书注销申请', '此处放mapper接口文件', '14', '2018-10-18 09:40:02', null, '注销');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2c7', 'CERTREVOKEAPPLYMODIFY', '修改证书注销申请', '此处放mapper接口文件', '15', '2018-10-18 09:40:02', null, '注销');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2c8', 'CERTHOLDAPPLYADD', '录入证书冻结申请', '此处放mapper接口文件', '16', '2018-10-18 09:40:02', null, '冻结');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2c9', 'CERTUNHOLDAPPLYADD', '录入证书解冻申请', '此处放mapper接口文件', '17', '2018-10-18 09:40:02', null, '解冻');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2d1', 'BATCHCERTREQUESTAPPLY', '批量申请', '此处放mapper接口文件', '18', '2018-10-18 09:40:02', null, '制证');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2d2', 'BATCHAUDITAPPLY', '批量审核', '此处放mapper接口文件', '19', '2018-10-18 09:40:02', null, '批量审核');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2d3', 'AUDITUPDATEUSER', '审核自助更新申请', '此处放mapper接口文件', '20', '2018-10-18 09:40:02', null, '自助');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2d4', 'UPDATEUSERCERT', '用户自助更新用户证书', '此处放mapper接口文件', '21', '2018-10-18 09:40:02', null, '自助');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2d6', 'CERTREQUESTANDDOWN', '申请并下载', '此处放mapper接口文件', '23', '2018-10-18 09:40:02', null, '制证');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2d7', 'EXTENDVALIDANDDOWN', '证书延期并下载', '此处放mapper接口文件', '24', '2018-10-18 09:40:02', null, '更新');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2f1', 'MAKEUSERCERT', '用户自助下载用户证书', '此处放mapper接口文件', '27', '2018-10-19 13:40:02', null, '自助');

INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2f2', 'UNLOCKAPPLYADD', '添加解锁申请', '此处放mapper接口文件', '28', '2018-10-19 13:40:02', null, '解锁');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2f3', 'UNLOCKAPPLYAUDIT', '审核解锁申请', '此处放mapper接口文件', '29', '2018-10-19 13:40:02', null, '解锁');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2f4', 'UNLOCKAPPLEUPDATE', '修改解锁申请', '此处放mapper接口文件', '30', '2018-10-19 13:40:02', null, '解锁');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2f5', 'CERTUPDATEUESTANDDOWN', '证书更新并下载', '此处放mapper接口文件', '31', '2018-10-19 13:40:02', null, '解锁');

INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2b5', 'using', '在职', '此处放mapperxml文件', '此处放mapper接口文件', '2018-09-11 10:19:02', null, '在职');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2b7', 'revoke', '离职', '此处放mapperxml文件', '4', '2018-09-11 10:19:02', null, '离职');

INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2g1', 'Use', '使用中', '4', '1', '2018-11-06 10:19:02', null, '使用中');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2g2', 'Hold', '已冻结', '4', '此处放mapper接口文件', '2018-11-06 10:19:02', null, '已冻结');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2g3', 'Revoke', '已注销', '4', '此处放mapperxml文件', '2018-09-06 10:19:02', null, '已注销');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2g4', 'Undown', '未下载', '4', '4', '2018-09-06 10:19:02', null, '未下载');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2g5', 'UndownRevoke', '未下载注销', '4', '5', '2018-09-06 10:19:02', null, '未下载注销');

INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2s1', 'unuse', '未使用', '5', '1', '2018-09-11 10:19:02', null, '未使用');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2s2', 'using', '已使用', '5', '此处放mapper接口文件', '2018-09-11 10:19:02', null, '已使用');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2s3', 'hold', '已冻结', '5', '此处放mapperxml文件', '2018-09-11 10:19:02', null, '已冻结');
INSERT INTO `aqs_dict` VALUES ('2c908def200371b60120052skshs2s4', 'revoke', '已注销', '5', '4', '2018-09-11 10:19:02', null, '已注销');

INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw1', 'ADMINREQUESTAPPLY', '申请管理员', '此处放mapper接口文件', '1', '2019-03-27 14:23:22', NULL, '管理员');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw2', 'DELETEADMIN', '删除管理员', '此处放mapper接口文件', '此处放mapper接口文件', '2019-03-27 14:25:21', NULL, '管理员');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw3', 'ADMINHOLDAPPLY', '冻结管理员', '此处放mapper接口文件', '此处放mapperxml文件', '2019-03-27 14:25:24', NULL, '管理员');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw4', 'ADMINREVOKEAPPLY', '注销管理员', '此处放mapper接口文件', '4', '2019-03-27 14:25:27', NULL, '管理员');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw5', 'ADMINUNHOLDAPPLY', '解冻管理员', '此处放mapper接口文件', '5', '2019-03-27 14:25:31', NULL, '管理员');
INSERT INTO aqs_dict VALUES ('2c908def200371b60120052skshsaw6', 'ADMINUPDATEAPPLY', '更新管理员', '此处放mapper接口文件', '6', '2019-03-27 14:25:34', NULL, '管理员');

INSERT INTO aqs_org_info select org_id , code , name ,data_state,NOW() ,parent,rel_inner_code, rel_tlevel from t_organization;

INSERT INTO  aqs_systemcert select certsn, subject, notbefore, validity, certtype, certstatus, device_id from systemcert;

DROP TRIGGER IF EXISTS delete_trigger_org;
DROP TRIGGER IF EXISTS insert_trigger_cert;
DROP TRIGGER IF EXISTS insert_trigger_log;
DROP TRIGGER IF EXISTS insert_trigger_org;
DROP TRIGGER IF EXISTS update_trigger_cert;
DROP TRIGGER IF EXISTS update_trigger_log;
DROP TRIGGER IF EXISTS update_trigger_org;

DROP TRIGGER IF EXISTS insert_trigger_role;
DROP TRIGGER IF EXISTS update_trigger_role;
DROP TRIGGER IF EXISTS delete_trigger_role;

DROP TRIGGER IF EXISTS insert_trigger_admin_org;
DROP TRIGGER IF EXISTS update_trigger_admin_org;
DROP TRIGGER IF EXISTS delete_trigger_admin_org;

DROP TRIGGER IF EXISTS update_trigger_userinfo;
DROP TRIGGER IF EXISTS delete_trigger_userinfo;
DROP TRIGGER IF EXISTS insert_trigger_userinfo;
DROP TRIGGER IF EXISTS insert_trigger_aqs_cert_info;
DROP TRIGGER IF EXISTS update_trigger_aqs_cert_info;
DROP TRIGGER IF EXISTS delete_trigger_aqs_cert_info;


DROP TRIGGER IF EXISTS insert_trigger_certbolb;

DROP TRIGGER IF EXISTS insert_trigger_aqs_key_info_unlock;
DROP TRIGGER IF EXISTS update_trigger_aqs_key_info_unlock;
DROP TRIGGER IF EXISTS delete_trigger_aqs_key_info_unlock;

DROP TRIGGER IF EXISTS insert_trigger_systemcert;
DROP TRIGGER IF EXISTS update_trigger_systemcert;
DROP TRIGGER IF EXISTS delete_trigger_systemcert;

DROP TRIGGER IF EXISTS insert_trigger_cert_apply;
DROP TRIGGER IF EXISTS update_trigger_cert_apply;
DROP TRIGGER IF EXISTS delete_trigger_cert_apply;
DROP TRIGGER IF EXISTS triggerInsertAqsPkiOperatorInfo;
DROP TRIGGER IF EXISTS insert_trigger_aqs_userinfo;
DROP TRIGGER IF EXISTS update_trigger_aqs_userinfo;
DROP TRIGGER IF EXISTS delete_trigger_aqs_userinfo;
DROP TRIGGER IF EXISTS triggerAqsKeyInfoUnlockInsert;

INSERT INTO aqs_operator_dict (id, code, name) VALUES ('1', 'CERTREQUESTAPPLYADD', '录入证书申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('此处放mapper接口文件', 'CERTREQUESTAPPLYMODIFY', '修改录入申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('此处放mapperxml文件', 'CERTREQUESTAPPLYAUDIT', '审核证书申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('4', 'CERTUPDATEAPPLYADD', '录入证书更新申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('5', 'CERTUPDATEAPPLYMODIFY', '修改证书更新申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('6', 'CERTUPDATEAPPLYAUDIT', '审核证书更新申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('7', 'CERTREVOKEAPPLYADD', '录入证书注销申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('8', 'CERTREVOKEAPPLYMODIFY', '修改证书注销申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('9', 'CERTREVOKEAPPLYAUDIT', '审核证书注销申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('10', 'CERTHOLDAPPLYADD', '录入证书冻结申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('11', 'CERTHOLDAPPLYAUDIT', '审核证书冻结申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('12', 'CERTUNHOLDAPPLYADD', '录入证书解冻申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('13', 'CERTUNHOLDAPPLYAUDIT', '审核证书解冻申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('14', 'CERTACUPDATEAPPADD', '录入证书授权码更新申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('15', 'CERTACUPDTAPPAUDIT', '审核证书授权码更新申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('16', 'CERTAPPLYDELETE', '删除证书申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('17', 'CERTSELFUPDATEAPPLYAUDIT', '审核自助更新申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('18', 'CERTQUERYTOUSER', '用户证书查询');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('19', 'QUERYUSERSINGLE', '单个用户信息查询');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('20', 'QUERYUSER', '用户查询');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('21', 'GETORGNAME ', '获取机构名称');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('22', 'CERTDATASYNC', '数据同步');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('23', 'EXTENDVALIDANDDOWN', '证书延期');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('24', 'RAEXTENDCERTAPPLYADD', '录入证书延期申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('25', 'RAEXTENDCERTAPPLYAUDIT', '审核证书延期申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('26', 'VIOLENCECONFIG', '防暴力机制配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('27', 'BATCHCERTDOWNLOAD', '批量制证');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('28', 'BATCHCERTREQUESTAPPLY', '批量申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('29', 'BATCHAUDITAPPLY', '批量审核');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('30', 'BATCHDELETEAPPLY', '批量删除申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('31', 'BATCHHOLDAPPLY', '批量冻结');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('32', 'BATCHUPDATEAPPLY', '批量更新');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('33', 'BATCHUNHOLDAPPLY', '批量解冻');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('34', 'BATCHREVOKEAPPLY', '批量注销');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('35', 'BATCHCERTSTATUSUPDATE', '批量证书状态更新');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('36', 'CERTENTITYDOWNLOAD', '证书实体下载');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('37', 'CERTSTATUSUPDATE', '证书状态更新');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('38', 'CERTDOWNLOAD', '证书下载');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('39', 'PRINTAUTHCODE', '打印两码');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('40', 'SENDAUTHCODE', '发送两码');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('41', 'USERADD', '新增用户信息');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('42', 'USERMODIFY', '修改用户信息');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('43', 'USERDELETE', '删除用户信息');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('44', 'USERDBATCHELETE', '批量删除用户');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('45', 'USERSTATUSUPDATE', '修改用户状态');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('46', 'USERBATCHSTATUSUPDATE', '批量修改用户状态');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('47', 'USERORGIDBATCHUPDATE ', '批量修改用户机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('48', 'CTMLQUERYFROMCA', '模板同步');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('49', 'CTMLAUDITPOLICYMODIFY', '修改审核策略');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('50', 'CTMLADMINPOLICYMODIFY', '配置管理员模板');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('51', 'CTMLDNRULEADD', '新增主题规则');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('52', 'CTMLDNRULEDELETE', '删除主题规则');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('53', 'CTMLDNRULEUPDATE', '更新主题规则');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('54', 'EXPIREDCERTSENDEMAIL', '过期提醒邮件发送');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('55', 'CERTARCHIVE', '归档证书');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('56', 'ADMINREQUESTAPPLY', '录入管理员申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('57', 'ADMINREQUESTAPPLY_2', '申请管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('58', 'ADMINREQUESTAPPLY_3', '任命管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('59', 'ADMINREQUESTAPPLYAUDIT', '审核管理员申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('60', 'ADMINREQUESTAPPOINT', '任命管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('61', 'ADMINREQUESTMODIFY', '修改管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('62', 'ADMINQUERY', '查询管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('63', 'ADMINQUERYLIST', '查询管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('64', 'ADMINAPPLYQUERY', '查询管理员申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('65', 'ADMINSINGLEQUERY', '查询管理员详细信息');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('66', 'ADMINUPDATEAPPLY', '录入管理员更新申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('67', 'ADMINUPDATEAPPLY_2', '更新管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('68', 'ADMINUPDATEAPPLY_3', '更新管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('69', 'ADMINUPDATEAPPLYAUDIT', '审核管理员更新申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('70', 'ADMINUPDATEAPPLYQUERY', '查询更新管理员申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('71', 'ADMINUPDATEAPPLYSINGLEQUERY', '查询更新管理员申请详细信息');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('72', 'ADMINHOLDAPPLY', '录入管理员冻结申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('73', 'ADMINHOLDAPPLY_2', '冻结管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('74', 'ADMINREVOKEAPPLY', '录入管理员注销申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('75', 'ADMINREVOKEAPPLY_2', '注销管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('76', 'ADMINHOLDAPPLYAUDIT', '审核管理员冻结申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('77', 'ADMINUNHOLDAPPLYAUDIT', '审核管理员解冻申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('78', 'ADMINUNHOLDAPPLY', '录入管理员解冻申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('79', 'ADMINUNHOLDAPPLY_2', '解冻管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('80', 'ADMINREVOKEAPPLYAUDIT', '审核管理员注销申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('81', 'ADMINAPPLYDELETE', '删除管理员申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('82', 'ADMINAPPLYMODIFY', '修改管理员申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('83', 'ADMINUPDATEAPPLYMODIFY', '修改管理员更新申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('84', 'DELETEPRIVILEGE', '删除管理员权限');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('85', 'DELETEADMIN', '删除管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('86', 'PENDINGTASKDELETE', '删除待处理任务');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('87', 'INPUTUSER', '用户自助录入信息');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('88', 'MAKEUSERCERT', '用户自助下载证书');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('89', 'UPDATEUSERCERT', '用户自助更新证书');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('90', 'GETUSERINFOFORUPDATE', '用户自助更新证书 获取用户信息');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('91', 'QUERYUSERCERT', '用户自助查询证书');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('92', 'QUERYSINGLEUSERCERT', '用户自助查询单个证书');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('93', 'DOWNUSERCERTENTITY', '用户自助查询单个证书');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('94', 'DOWNROOTCERT', '用户自助下载根证书');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('95', 'DOWNCRL', '用户自助下载CRL文件');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('96', 'GETBASEDNRULE', '获取主题规则');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('97', 'USERACHIEV', '归档用户信息');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('98', 'IMPORTLICENSE', '导入RA许可');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('99', 'IMPORTLRALICENSE', '导入LRA许可');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('100', 'THIRDPARTCONFIG', '第三方服务器配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('101', 'BATCHUPDATECONFIG', '批量更新配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('102', 'CPCNCONFIG', '高级配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('103', 'SYSINITIALIZED', '系统初始化完成');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('104', 'CRYPTODEVICESCONFIG', '密码设备配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('105', 'CHANGEPASSWORD', '修改管理员密码');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('106', 'MOFNCONFIG', '管理员配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('107', 'DBCONFIG', '数据库配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('108', 'SERVERCONFIG', '系统配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('109', 'IMPORTUSERINFOXML', '导入用户组文件');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('110', 'IMPORTCOMMCERT', '导入服务器证书');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('111', 'IMPORTTRUSTCERT', '导入受信任的根证书');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('112', 'UPDATESERVERCERT', '更新服务器证书');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('113', 'SHORTCUTOPTACTION', '快捷操作配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('114', 'IMPORTSUPPERCERT', '任命超级管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('115', 'IMPORTAUDITCERT', '任命审计管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('116', 'INTERDEBUGMODE', '进入调试模式');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('117', 'EXITDEBUGMODE', '退出调试模式');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('118', 'THIRDPARTDEVICECHECK', '第三方设备检查');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('119', 'SYSTEMBACKUP', '系统手动备份');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('120', 'SYSAUTOBACKUP', '系统自动备份');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('121', 'SYSTEMBACKUPDEL', '删除系统备份文件');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('122', 'SYSTEMRESUME', '系统恢复');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('123', 'APPLY_STATUS_NOTAUDIT', '未审核');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('124', 'APPLY_STATUS_AUDITED', '已审核');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('125', 'APPLY_STATUS_NOTPASS', '审核未通过');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('126', 'APPLY_STATUS_CAREFUSE', 'CA拒绝申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('127', 'APPLY_STATUS_AUDITED_WITHOUTSEND', '已审核两码未发送');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('128', 'APPLY_STATUS_AUDITED_WITHOUTEXE', '已审核未执行');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('129', 'ADDORG', '新增机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('130', 'DELETEORG', '删除机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('131', 'UPDATEORG', '修改机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('132', 'RECOVERKEYAPPLYADD', '录入证书恢复申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('133', 'RECOVERKEYAPPLYAUDIT', '审核证书恢复申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('134', 'RECOVERKEYAPPLYSINGLEQUERY', '证书恢复申请详细查询');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('135', 'RECOVERKEYDOWN', '证书恢复');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('136', 'USERINFODICTADD', '新增用户属性字典');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('137', 'USERINFODICTUPDATE', '修改用户属性字典');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('138', 'USERINFODICTDELETE', '删除用户属性字典');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('139', 'USERINFODICTDSORT', '用户属性字典排序');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('140', 'USERTYPEINSERT', '新增用户类型');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('141', 'USERTYPEUPDATE', '修改用户类型');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('142', 'USERTYPEDELETE', '删除用户类型');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('143', 'USERINFOCOLUMNSVALUESADD', '新增用户属性字典值');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('144', 'USERINFOCOLUMNSVALUESMODIFY', '用户属性字典值排序');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('145', 'USERINFOCOLUMNSVALUESDELETE', '删除用户属性字典值');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('146', 'USERINFOCOLUMNSVALUESIMPORT', '导入用户属性字典值');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('147', 'USERINFOCOLUMNSVALUESEXPORT', '导出用户属性字典值');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('148', 'USERINFOCOLUMNSVALUESEDIT', '修改用户属性字典值');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('149', 'ADDORGANIZATION', '新增机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('150', 'DELORGANIZATION', '删除机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('151', 'BATCHDELORGANIZATION', '批量删除机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('152', 'MODIFYORGANIZATION', '修改机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('153', 'MODIFYROOTORG', '修改根机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('154', 'IMPORTORG', '导入机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('155', 'MERGEORGANIZATIONFORTK', '合并机构');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('156', 'CERTREQUESTANDDOWN', '证书申请并下载');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('157', 'CERTUPDATEUESTANDDOWN', '证书更新并下载');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('158', 'CERTMAKEBYIDENTIFIER', '终端证书下载');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('159', 'CERTSELFAPPLYAUDIT', '审核证书自助申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('160', 'ADDLOGINRA', '管理员登录');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('161', 'EXITLOGINRA', '管理员登出');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('162', 'SYSTEMADMINADD', '新增系统管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('163', 'SYSTEMADMINDEL', '删除系统管理员');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('164', 'USERSELFCONFIG', '自助服务配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('165', 'IMPORTSM2KEYTYPE', '导入SM2Key类型');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('166', 'SETUSERSELFCONFIG', '自助服务配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('167', 'SETNOTALLOWCERTDN', '黑名单配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('168', 'SELFCONFIG', '延期更新配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('169', 'UNLOCKAPPLYADD', '添加解锁申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('170', 'UNLOCKAPPLEUPDATE', '更新解锁申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('171', 'UNLOCKAPPLYDELETE', '删除解锁申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('172', 'KEYLOSTAPPLYADD', '添加挂失申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('173', 'KEYLOSTAPPLYUPDATE', '更新挂失申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('174', 'KEYLOSTAPPLYDELETE', '删除挂失申请');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('175', 'KEYWHITELISTADD', '添加KEY白名单');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('176', 'KEYWHITELISTDELETE', '删除KEY白名单');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('177', 'KEYWHITELISTQUERY', '查询KEY白名单');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('178', 'KEYWHITELISTSINGLEQUERY', '精确查询KEY白名单');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('179', 'KEYWHITELISTIMPORT', '导入KEY白名单');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('180', 'KEYWHITELISTEXPORT', '导出KEY白名单');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('181', 'KEYLINKDELETE', '删除KEY关联');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('182', 'KEYLINKQUERY', '查询KEY关联');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('183', 'KEYLINKIMPORT', '导入KEY关联');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('184', 'SYSBACKUP', '系统手动备份');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('185', 'SYSBACKUPCONFIG', '保存系统备份配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('186', 'SYSLOGSIGNCONFIG', '保存日志签名配置');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('187', 'CONSOLELOG', '系统日志');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('188', 'OPERATIONLOG', '业务日志');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('189', 'MCSEXTENDVALIDANDDOWN', '移动证书延期');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('190', 'CERTMAKEBYIDENTIFIER', '移动证书下载');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('191', 'ADDSM2KEY', '新增SM2Key类型');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('192', 'MODIFYSM2KEY', '修改SM2Key类型');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('193', 'DELSM2KEY', '删除SM2Key类型');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('194', 'DELBTKCOFNIG', '删除应用');
INSERT INTO aqs_operator_dict (id, code, name) VALUES ('195', 'UNLOCKAPPLYAUDIT', '审核解锁申请');
INSERT INTO iamlogin (iamurl, iamip, iamport, iamappcode, iamsecret, iamloginOnOff) VALUES (NULL, NULL, NULL, NULL, NULL, 'no');
insert  into cacheissucess values ('1','true');