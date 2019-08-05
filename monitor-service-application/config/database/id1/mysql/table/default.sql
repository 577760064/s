DROP TABLE IF EXISTS t_admin;
DROP TABLE IF EXISTS t_admin_account;
DROP TABLE IF EXISTS t_admin_cert;
DROP TABLE IF EXISTS t_admin_auth;
DROP TABLE IF EXISTS t_admin_role;
DROP TABLE IF EXISTS t_role;
DROP TABLE IF EXISTS tb_cube_config;
DROP TABLE IF EXISTS tb_backlog_task;
DROP TABLE IF EXISTS jit_common_crldown_config;
DROP TABLE IF EXISTS jit_common_crldown_url;
DROP TABLE IF EXISTS jit_common_ocsp;
DROP TABLE IF EXISTS jit_common_crlentity;
DROP TABLE IF EXISTS jit_common_cacert;
DROP TABLE IF EXISTS tb_log;
DROP TABLE IF EXISTS tb_log_backup;
DROP TABLE IF EXISTS tb_export_task;
DROP TABLE IF EXISTS tb_system_log;
DROP TABLE IF EXISTS tb_system_log_backup;
DROP TABLE IF EXISTS  aqs_admin_role ;
DROP TABLE IF EXISTS  aqs_roles ;
DROP TABLE IF EXISTS `aqs_dict`;
DROP TABLE IF EXISTS `iamlogin`;



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
CREATE TABLE t_admin (
  ADMIN_ID varchar(32) NOT NULL COMMENT '主键id',
  NAME varchar(50) DEFAULT NULL COMMENT '姓名',
  PHONE varchar(20) DEFAULT NULL COMMENT '手机号',
  EMAIL varchar(50) DEFAULT NULL COMMENT '邮箱',
  STATUS varchar(1) NOT NULL DEFAULT '0' COMMENT '管理员状态   0：启用     1：停用',
  CREATE_OPERATOR varchar(32) DEFAULT NULL COMMENT '创建人id',
  CREATE_TIME bigint(20) DEFAULT NULL COMMENT '创建时间',
  LAST_OPERATOR varchar(32) DEFAULT NULL COMMENT '最后操作人id',
  LAST_TIME bigint(20) DEFAULT NULL COMMENT '最后操作时间',
  PRIMARY KEY (ADMIN_ID)
)  ;

CREATE TABLE t_admin_account (
  ACCOUNT_ID VARCHAR(32) NOT NULL COMMENT '主键ID',
  ADMIN_ID VARCHAR(32) DEFAULT NULL COMMENT '管理员ID',
  ACCOUNT VARCHAR(50) DEFAULT NULL COMMENT '账号',
  PASSWORD VARCHAR(50) DEFAULT NULL COMMENT '密码',
  PASSWORDSTATUS VARCHAR(1) DEFAULT NULL COMMENT '密码修改状态  0：未修改 1：已修改',
  CREATE_OPERATOR VARCHAR(32) DEFAULT NULL COMMENT '录入人ID',
  CREATE_TIME bigint(20) DEFAULT NULL COMMENT '录入时间',
  LAST_OPERATOR varchar(255) DEFAULT NULL COMMENT '修改人ID',
  LAST_TIME bigint(20) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (ACCOUNT_ID)
)  ;
alter table t_admin_account add unique(ACCOUNT);

CREATE TABLE t_admin_cert (
  CERT_ID varchar(32) NOT NULL COMMENT '主键id',
  ADMIN_ID varchar(32) DEFAULT NULL COMMENT '管理员id',
  CERTENTITY longtext COMMENT '证书base64编码',
  SUBJECT varchar(255) DEFAULT NULL COMMENT '证书主题',
  ISSUER varchar(255) DEFAULT NULL COMMENT '证书颁发者',
  CERT_IDENTIFIER varchar(255) DEFAULT NULL,
  CREATE_OPERATOR varchar(32) DEFAULT NULL COMMENT '录入人id',
  CREATE_TIME bigint(20) DEFAULT NULL COMMENT '录入时间',
  LAST_OPERATOR varchar(32) DEFAULT NULL COMMENT '修改人id',
  LAST_TIME bigint(20) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (CERT_ID)
)  ;
alter table t_admin_cert add unique(CERT_IDENTIFIER);

CREATE TABLE t_admin_auth (
  AUTH_ID varchar(32) NOT NULL COMMENT '主键id',
  ADMIN_ID varchar(32) DEFAULT NULL COMMENT '管理员id',
  PASSWORD varchar(64) DEFAULT NULL COMMENT '增强密码',
  STATUS int(2) DEFAULT '0' COMMENT '密码修改状态  0：未修改 1：已修改',
  PRIMARY KEY (AUTH_ID)
)  ;

CREATE TABLE t_admin_role (
  ID varchar(32) NOT NULL COMMENT '主键id',
  ADMIN_ID varchar(32) DEFAULT NULL COMMENT '系统管理员id',
  ROLENAME varchar(32) DEFAULT NULL COMMENT '角色id',
  CREATE_OPERATOR varchar(32) DEFAULT NULL,
  CREATE_TIME bigint(20) DEFAULT NULL,
  LAST_OPERATOR varchar(32) DEFAULT NULL,
  LAST_TIME bigint(20) DEFAULT NULL,
  PRIMARY KEY (ID)
)  ;

CREATE TABLE t_role (
  ROLE_ID varchar(32) NOT NULL COMMENT '主键id',
  NAME varchar(20) DEFAULT NULL COMMENT '角色名称',
  DESCRIPTION varchar(100) DEFAULT NULL COMMENT '角色描述',
  DISPLAY longblob,
  EDITOR longblob,
  DEFAULTROLE longblob,
  CREATE_OPERATOR varchar(32) DEFAULT NULL COMMENT '创建人',
  CREATE_TIME bigint(20) DEFAULT NULL COMMENT '创建时间',
  LAST_OPERATOR varchar(32) DEFAULT NULL,
  LAST_TIME bigint(20) DEFAULT NULL,
  PRIMARY KEY (ROLE_ID)
)  ;

CREATE TABLE tb_cube_config (
  ID int(11) NOT NULL AUTO_INCREMENT,
  SERVICE_ID varchar(64) DEFAULT NULL,
  NAME varchar(100) DEFAULT NULL,
  VALUE longtext,
  PRIMARY KEY (id)
);

CREATE TABLE tb_backlog_task (
  TASKID varchar(32) NOT NULL COMMENT '任务主键id',
  TASKNAME varchar(30) DEFAULT NULL COMMENT '任务名称',
  TABLENAME varchar(30) DEFAULT NULL COMMENT '日志表-名称',
  TASKSTATUS varchar(1) DEFAULT NULL COMMENT '任务执行状态    0：执行中   1：闲置',
  TASKRESULT varchar(1) DEFAULT NULL COMMENT '任务上次执行结果   0：成功   1：失败',
  ERRORMSG text COMMENT '发生异常时的错误信息',
  STARTTIME datetime DEFAULT NULL COMMENT '（上次）开始执行时间',
  ENDTIME datetime DEFAULT NULL COMMENT '执行（上次）结束时间',
  NEXTFIRETIME datetime DEFAULT NULL COMMENT '任务下次执行时间',
  LOCALFILEDOWNLOADPATH varchar(500) DEFAULT NULL COMMENT '手动归档操作-本地归档类型-归档文件下载路径',
  CREATETIME datetime DEFAULT NULL COMMENT '任务创建时间',
  OPERATETIME datetime DEFAULT NULL COMMENT '任务操作时间',
  PRIMARY KEY (TASKID)
)  ;

CREATE TABLE jit_common_cacert (
  id varchar(50) NOT NULL,
  name varchar(512) NOT NULL,
  rootcerttype varchar(30) NOT NULL,
  issuer varchar(512) NOT NULL,
  subject varchar(512) NOT NULL,
  notbefore datetime DEFAULT NULL,
  notafter datetime DEFAULT NULL,
  validity int(11) NOT NULL,
  superid varchar(50) NOT NULL,
  certverifydepth int(11) NOT NULL,
  checktype int(11) NOT NULL,
  subjectkeyidentifier varchar(100) DEFAULT NULL,
  certentity longblob,
  createby varchar(512) DEFAULT NULL,
  createtime datetime DEFAULT NULL,
  lastmodifytime datetime DEFAULT NULL,
  lastmodifyby varchar(512) DEFAULT NULL,
  PRIMARY KEY (id)
)  ;

CREATE TABLE jit_common_crldown_config (
  id varchar(50) NOT NULL,
  updatepolicy int(11) NOT NULL,
  updatetimetype char(1) DEFAULT NULL,
  timeinterval int(11) DEFAULT NULL,
  crlnexttime timestamp ,
  crltimeafter int(11),
  createby varchar(512) DEFAULT NULL,
  createtime timestamp,
  lastmodifytime timestamp,
  lastmodifyby varchar(512) DEFAULT NULL,
  ca_id varchar(50) NOT NULL,
  PRIMARY KEY (id),
  KEY ca_id (ca_id),
  CONSTRAINT jit_common_crldown_config_ibfk_1 FOREIGN KEY (ca_id) REFERENCES jit_common_cacert (id) ON DELETE CASCADE
)  ;

CREATE TABLE jit_common_crlentity (
  id varchar(50) NOT NULL,
  crlfile longblob NOT NULL,
  issuer varchar(512) NOT NULL,
  startdate datetime NOT NULL,
  nextupdatedate datetime NOT NULL,
  signalgorithm varchar(50) NOT NULL,
  authoritykeyidentifier varchar(64) DEFAULT NULL,
  crlnumber int(11) DEFAULT NULL,
  crluniqueidentifier varchar(64) DEFAULT NULL,
  crltype int(11) NOT NULL,
  cacertid varchar(50) NOT NULL,
  downloadurl varchar(2048) DEFAULT NULL,
  downloadtype char(4) NOT NULL,
  createby varchar(512) DEFAULT NULL,
  createtime datetime DEFAULT NULL,
  lastmodifytime datetime DEFAULT NULL,
  lastmodifyby varchar(512) DEFAULT NULL,
  PRIMARY KEY (id)
)  ;
alter table jit_common_crlentity add unique(cacertid,crluniqueidentifier);

CREATE TABLE jit_common_crldown_url (
  id varchar(50) NOT NULL,
  downloadtype char(4) NOT NULL,
  ldapuserdn varchar(512) DEFAULT NULL,
  ldappassword varchar(64) DEFAULT NULL,
  url varchar(2048) NOT NULL,
  crltype int(11) NOT NULL,
  cacertid varchar(50) NOT NULL,
  createby varchar(512) DEFAULT NULL,
  createtime datetime DEFAULT NULL,
  lastmodifytime datetime DEFAULT NULL,
  lastmodifyby varchar(512) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY cacertid (cacertid),
  CONSTRAINT jit_common_crldown_url_ibfk_1 FOREIGN KEY (cacertid) REFERENCES jit_common_cacert (id) ON DELETE CASCADE
)  ;

CREATE TABLE jit_common_ocsp (
  id varchar(50) NOT NULL,
  principaltype varchar(10) NOT NULL,
  principalurl varchar(2048) NOT NULL,
  subordinatetype varchar(10) DEFAULT NULL,
  subordinateurl varchar(2048) DEFAULT NULL,
  createby varchar(512) DEFAULT NULL,
  createtime timestamp ,
  lastmodifytime timestamp ,
  lastmodifyby varchar(512) DEFAULT NULL,
  ca_id varchar(50) NOT NULL,
  PRIMARY KEY (id),
  KEY ca_id (ca_id),
  CONSTRAINT jit_common_ocsp_ibfk_1 FOREIGN KEY (ca_id) REFERENCES jit_common_cacert (id) ON DELETE CASCADE
)  ;

CREATE TABLE tb_log (
  log_id int(11) NOT NULL AUTO_INCREMENT,
  operator varchar(200) DEFAULT NULL,
  operator_ip varchar(50) DEFAULT NULL,
  create_time bigint(20) DEFAULT NULL COMMENT '存储使用年月日小时分秒毫秒 共17位数字',
  operat_content varchar(1000) DEFAULT NULL,
  operat_result varchar(1000) DEFAULT NULL,
  operat_data varchar(1000) DEFAULT NULL,
  server_sign varchar(2000) DEFAULT NULL,
  result varchar(50) DEFAULT NULL,
  client_sign longtext,
  PRIMARY KEY (log_id),
  KEY create_time (create_time)
);

CREATE TABLE tb_log_backup (
  log_id int(11) NOT NULL AUTO_INCREMENT,
  operator varchar(200) DEFAULT NULL,
  operator_ip varchar(50) DEFAULT NULL,
  create_time bigint(20) DEFAULT NULL COMMENT '存储使用年月日小时分秒毫秒 共17位数字',
  operat_content varchar(1000) DEFAULT NULL,
  operat_result varchar(1000) DEFAULT NULL,
  operat_data varchar(1000) DEFAULT NULL,
  server_sign varchar(2000) DEFAULT NULL,
  result varchar(50) DEFAULT NULL,
  client_sign longtext,
  PRIMARY KEY (log_id),
  KEY create_time (create_time)
);

CREATE TABLE tb_export_task (
  TASKID varchar(32) DEFAULT NULL COMMENT '主键id',
  TASKNAME varchar(30) DEFAULT NULL COMMENT '任务名称',
  TASKSTATUS varchar(1) DEFAULT NULL COMMENT '任务执行状态    0：执行中   1：闲置',
  TASKRESULT varchar(1) DEFAULT NULL COMMENT '任务上次执行结果   0：成功   1：失败',
  LOGTYPE varchar(32) DEFAULT NULL COMMENT '日志配置ID',
  STARTTIME datetime DEFAULT NULL COMMENT '（上次）开始执行时间',
  ENDTIME datetime DEFAULT NULL COMMENT '执行（上次）结束时间',
  ZIPFILEDOWNLOADPATH varchar(500) DEFAULT NULL COMMENT 'zip文件下载路径',
  ERRORINFO text COMMENT '错误信息',
  CREATETIME datetime DEFAULT NULL COMMENT '任务创建时间',
  OPERATETIME datetime DEFAULT NULL COMMENT '任务操作时间'
)  ;

create table  tb_system_log (
  log_id int not null auto_increment,
  create_time bigint(20) default null,
  operat_content varchar(100) default null,
  operat_data varchar(1000) default null,
  operat_result varchar(50) default null,
  primary key  (log_id),
  key create_time (create_time)
);
create table  tb_system_log_backup (
  log_id int not null auto_increment,
  create_time bigint(20) default null,
  operat_content varchar(100) default null,
  operat_data varchar(1000) default null,
  operat_result varchar(50) default null,
  primary key  (log_id),
  key create_time (create_time)
);



CREATE TABLE  aqs_roles  (
   role_id  varchar(50) NOT NULL,
   role_name  varchar(128) NOT NULL,
   role_desc  varchar(255) DEFAULT NULL,
   sign_server  varchar(256) DEFAULT NULL,
  PRIMARY KEY ( role_id ),
  KEY  roles_i1  ( role_name )
)  ;

CREATE TABLE  aqs_admin_role  (
   reqsn  varchar(40) NOT NULL,
   certsn  varchar(40) DEFAULT NULL,
   role_id  varchar(50) NOT NULL,
   audit_status  varchar(10) NOT NULL,
   sign_server  varchar(256) DEFAULT NULL,
  PRIMARY KEY ( reqsn , role_id , audit_status ),
  KEY  fk_admin_ro_reference_roles  ( role_id )
)  ;


DROP TABLE IF EXISTS  aqs_pki_operator_info ;
CREATE TABLE  aqs_pki_operator_info  (
   id  varchar(40) NOT NULL,
   cert_sn  varchar(50) DEFAULT NULL COMMENT '管理员sn',
   operator_ip  varchar(30) DEFAULT NULL COMMENT '操作者ip',
   objectid varchar(128) DEFAULT NULL COMMENT '被操作者id',
   objecttype varchar(30) DEFAULT NULL COMMENT '申请操作OR证书操作',
   org_id  varchar(40) DEFAULT NULL COMMENT '注册分中心id',
   result  varchar(30) NOT NULL COMMENT '操作结果',
   operator_type  varchar(30) DEFAULT NULL COMMENT '操作类型',
   operator_time  bigint DEFAULT NULL COMMENT '操作时间',
   version  varchar(50) DEFAULT NULL COMMENT '日志版本，区分PKI1.0和2.0的日志',
   product_type  varchar(40) DEFAULT NULL COMMENT '产品类型（预留字段）',
  PRIMARY KEY ( id )
)  ;

DROP TABLE IF EXISTS  aqs_pki_operator_info_cache ;
CREATE TABLE  aqs_pki_operator_info_cache  (
   id  varchar(40) NOT NULL,
   cert_sn  varchar(50) DEFAULT NULL COMMENT '管理员sn',
   operator_ip  varchar(30) DEFAULT NULL COMMENT '操作者ip',
   objectid varchar(128) DEFAULT NULL COMMENT '被操作者id',
   objecttype varchar(30) DEFAULT NULL COMMENT '申请操作OR证书操作',
   org_id  varchar(40) DEFAULT NULL COMMENT '注册分中心id',
   result  varchar(30) NOT NULL COMMENT '操作结果',
   operator_type  varchar(30) DEFAULT NULL COMMENT '操作类型',
   operator_time  bigint DEFAULT NULL COMMENT '操作时间',
   version  varchar(50) DEFAULT NULL COMMENT '日志版本，区分PKI1.0和2.0的日志',
   product_type  varchar(40) DEFAULT NULL COMMENT '产品类型（预留字段）',
  PRIMARY KEY ( id )
)  ;



DROP TABLE IF EXISTS  aqs_org_statis ;
CREATE TABLE  aqs_org_statis  (
   id  varchar(40) NOT NULL COMMENT 'id',
   org_id  varchar(40) DEFAULT NULL COMMENT '注册分中心id',
   org_cn  varchar(255) DEFAULT NULL COMMENT '注册分中心名称',
   create_time  datetime DEFAULT NULL COMMENT '创建时间',
   parent_id  varchar(40) DEFAULT NULL COMMENT '上级注册分中心id',
   statis_date  datetime DEFAULT NULL COMMENT '统计日期',
   add_count  varchar(40) DEFAULT NULL COMMENT '统计增量',
  PRIMARY KEY ( id )
)  ;


DROP TABLE IF EXISTS  aqs_org_info ;
CREATE TABLE  aqs_org_info  (
   id  varchar(50) NOT NULL COMMENT '注册分中心id',
   org_code  varchar(255) DEFAULT NULL COMMENT '注册分中心编码',
   org_cn  varchar(255) DEFAULT NULL COMMENT '注册分中心名称',
   org_state  varchar(50) DEFAULT NULL COMMENT '注册分中心状态',
   create_time  datetime DEFAULT NULL COMMENT '创建时间',
   update_time  datetime DEFAULT NULL COMMENT '修改时间',
   parent_id  varchar(50) DEFAULT NULL COMMENT '上级注册分中心id',
   inner_code  varchar(255) DEFAULT NULL COMMENT '注册分中心内部编码',
   tlevel  varchar(20) DEFAULT NULL COMMENT '注册分中心级别',
  PRIMARY KEY ( id ),
  KEY  indexorg_id  ( id ) USING BTREE
)  ;


DROP TABLE IF EXISTS  aqs_log_info ;
CREATE TABLE  aqs_log_info  (
   ID  varchar(40) NOT NULL,
   operator  varchar(50) DEFAULT NULL COMMENT '操作者',
   operator_type  varchar(50) DEFAULT NULL COMMENT '操作类型',
   operator_content  varchar(255) DEFAULT NULL COMMENT '操作事件内容',
   operator_ip  varchar(50) DEFAULT NULL COMMENT '操作者IP',
   operator_result  varchar(50) DEFAULT NULL COMMENT '操作结果',
   create_time  datetime DEFAULT NULL COMMENT '操作时间',
   remark  varchar(50) DEFAULT NULL COMMENT '预留字段:备注',
  PRIMARY KEY ( ID )
)  ;

DROP TABLE IF EXISTS  aqs_iam_admin_info ;
CREATE TABLE  aqs_iam_admin_info  (
   id  varchar(40) NOT NULL COMMENT 'id',
   cert_dn  varchar(512) DEFAULT NULL COMMENT '管理员证书主题',
   sn  varchar(40) DEFAULT NULL COMMENT '容人员编号',
   role  varchar(100) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY ( id )
)  ;


DROP TABLE IF EXISTS  aqs_cert_info ;
CREATE TABLE  aqs_cert_info  (
   cert_sn  varchar(100) NOT NULL DEFAULT '' COMMENT '证书sn：证书序列号',
   cert_dn  varchar(512) DEFAULT NULL COMMENT '证书dn：证书主题',
   user_id  varchar(50) DEFAULT NULL COMMENT '用户ID',
   template  varchar(128) DEFAULT NULL COMMENT '证书模板',
   state  varchar(20) DEFAULT NULL COMMENT '证书状态：1：使用中；此处放mapper接口文件：未下载；此处放mapperxml文件：已冻结；4：已注销',
   validity  varchar(50) DEFAULT NULL COMMENT '有效期(天）',
   isadmin  varchar(20) DEFAULT NULL COMMENT '1 普通证书，此处放mapper接口文件 业务操作员，此处放mapperxml文件 业务管理员，4 审计员，5审计管理员',
   notbefore  decimal(50,0) DEFAULT NULL COMMENT '证书生效时间',
   notafter  decimal(50,0) DEFAULT NULL COMMENT '证书失效时间',
   org_id  varchar(50) DEFAULT NULL COMMENT '注册分中心id',
   cert_type  varchar(30) DEFAULT NULL COMMENT '证书类型',
   create_time  bigint DEFAULT NULL COMMENT '创建时间',
   update_time  bigint DEFAULT NULL COMMENT '更新时间',
   org_inner_code  varchar(255) DEFAULT NULL COMMENT '机构inner_code'
  PRIMARY KEY ( cert_sn ),
  KEY  indexorgid  ( org_id ) USING BTREE
)   COMMENT='证书表';

DROP TABLE IF EXISTS  aqs_cert_info_cache ;
CREATE TABLE  aqs_cert_info_cache  (
   cert_sn  varchar(100) NOT NULL DEFAULT '' COMMENT '证书sn：证书序列号',
   cert_dn  varchar(512) DEFAULT NULL COMMENT '证书dn：证书主题',
   user_id  varchar(50) DEFAULT NULL COMMENT '用户ID',
   template  varchar(128) DEFAULT NULL COMMENT '证书模板',
   state  varchar(20) DEFAULT NULL COMMENT '证书状态：1：使用中；此处放mapper接口文件：未下载；此处放mapperxml文件：已冻结；4：已注销',
   validity  varchar(50) DEFAULT NULL COMMENT '有效期(天）',
   isadmin  varchar(20) DEFAULT NULL COMMENT '1 普通证书，此处放mapper接口文件 业务操作员，此处放mapperxml文件 业务管理员，4 审计员，5审计管理员',
   notbefore  decimal(50,0) DEFAULT NULL COMMENT '证书生效时间',
   notafter  decimal(50,0) DEFAULT NULL COMMENT '证书失效时间',
   org_id  varchar(50) DEFAULT NULL COMMENT '注册分中心id',
   cert_type  varchar(30) DEFAULT NULL COMMENT '证书类型',
   create_time  bigint DEFAULT NULL COMMENT '创建时间',
   update_time  bigint DEFAULT NULL COMMENT '更新时间',
   oldorg_id  varchar(255)  DEFAULT NULL COMMENT '修改之前的机构id',
   org_inner_code  varchar(255) DEFAULT NULL COMMENT '机构inner_code',
	 data_type varchar(20) DEFAULT NULL COMMENT '数据类型  修改-更新-删除'
)   COMMENT='证书缓存表';

DROP TABLE IF EXISTS  aqs_admin_org ;
CREATE TABLE  aqs_admin_org  (
   reqsn  varchar(40) NOT NULL,
   certsn  varchar(40) DEFAULT NULL,
   org_id  varchar(50) NOT NULL,
   admin_status  varchar(10) DEFAULT NULL,
   isSubtree  varchar(10) NOT NULL,
   sign_server  varchar(256) DEFAULT NULL
)  ;

CREATE TABLE `aqs_dict` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `code` varchar(50) DEFAULT NULL COMMENT '字典编码',
  `name` varchar(100) DEFAULT NULL COMMENT '字典名称',
  `type` varchar(2) DEFAULT NULL COMMENT '字典类型：1：证书类型',
  `sort` varchar(3) DEFAULT NULL COMMENT '排序字段',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `aqs_name` varchar(20) DEFAULT NULL COMMENT 'aqs显示名称',
  PRIMARY KEY (`id`)
)  ;

DROP TABLE IF EXISTS `t_admin_cert_bo`;
CREATE TABLE `t_admin_cert_bo` (
  `ID` varchar(40) NOT NULL,
  `CERTENTITY_BO` blob,
  PRIMARY KEY (`ID`)
)  ;

DROP TABLE IF EXISTS `t_temp_syslog`;
CREATE TABLE `t_temp_syslog` (
  `ID` varchar(255) NOT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `MESSAGETIME` varchar(255) DEFAULT NULL,
  `MESSAGECONTENT` varchar(258) DEFAULT NULL,
  PRIMARY KEY (`ID`)
)  ;

DROP TABLE IF EXISTS `aqs_user_info`;
CREATE TABLE `aqs_user_info` (
  `userinfo_id` varchar(40) NOT NULL,
  `user_status` varchar(20) NOT NULL COMMENT 'unuse  未申请证书  using 在职 hold 已冻结 revoke 离职',
  `organ_id` varchar(50) DEFAULT NULL,
  `create_time` decimal(19,0) NOT NULL,
  `update_time` decimal(19,0) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `usercode` varchar(30) NOT NULL,
  `iamorg_id` varchar(100) DEFAULT NULL,
  `org_group` varchar(600) DEFAULT NULL,
  `reqid` varchar(100) DEFAULT NULL,
  `sign_server` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`usercode`),
  KEY `userinfo_id` (`userinfo_id`)
)  ;

DROP TABLE IF EXISTS `aqs_user_info_cache`;
CREATE TABLE `aqs_user_info_cache` (
  `userinfo_id` varchar(40) NOT NULL,
  `user_status` varchar(20) NOT NULL COMMENT 'unuse  未申请证书  using 在职 hold 已冻结 revoke 离职',
  `organ_id` varchar(50) DEFAULT NULL,
  `create_time` decimal(19,0) NOT NULL,
  `update_time` decimal(19,0) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `usercode` varchar(30) NOT NULL,
  `iamorg_id` varchar(100) DEFAULT NULL,
  `org_group` varchar(600) DEFAULT NULL,
  `reqid` varchar(100) DEFAULT NULL,
  `sign_server` varchar(256) DEFAULT NULL,
	`date_type` varchar(256) DEFAULT NULL,
	`oldstatus` varchar (255) DEFAULT NULL,
	`oldname` varchar (255) DEFAULT NULL,
	`oldcode` varchar (255) DEFAULT NULL
)  ;

DROP TABLE IF EXISTS `aqs_count_cert_day`;
CREATE TABLE `aqs_count_cert_day` (
  `id` varchar(255) DEFAULT NULL,
  `orgid` varchar(255) DEFAULT NULL,
  `ordertime` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL
)  ;


DROP TABLE IF EXISTS `aqs_cert_info_day`;
CREATE TABLE `aqs_cert_info_day` (
  `cert_sn` varchar(100) NOT NULL DEFAULT '' COMMENT '证书sn：证书序列号',
  `cert_dn` varchar(512) DEFAULT NULL COMMENT '证书dn：证书主题',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户id',
  `template` varchar(128) DEFAULT NULL COMMENT '证书模板',
  `state` varchar(20) DEFAULT NULL COMMENT '证书状态：1：使用中；此处放mapper接口文件：未下载；此处放mapperxml文件：已冻结；4：已注销',
  `validity` varchar(50) DEFAULT NULL COMMENT '有效期(天）',
  `isadmin` varchar(20) DEFAULT NULL COMMENT '1 普通证书，此处放mapper接口文件 业务操作员，此处放mapperxml文件 业务管理员，4 审计员，5审计管理员',
  `notbefore` decimal(50,0) DEFAULT NULL COMMENT '证书生效时间',
  `notafter` decimal(50,0) DEFAULT NULL COMMENT '证书失效时间',
  `org_id` varchar(50) DEFAULT NULL COMMENT '注册分中心id',
  `cert_type` varchar(30) DEFAULT NULL COMMENT '证书类型',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) DEFAULT NULL COMMENT '更新时间',
  `org_inner_code` varchar(255) DEFAULT NULL COMMENT '机构inner_code',
  PRIMARY KEY (`cert_sn`),
  KEY `indexorgid` (`org_id`) USING BTREE
)   COMMENT='证书表';

DROP TABLE IF EXISTS `aqs_key_info_unlock`;
CREATE TABLE `aqs_key_info_unlock` (
  `key_id` varchar(40) NOT NULL,
  `admin_pwd` varchar(40) NOT NULL,
  `certsn` varchar(40) NOT NULL,
  `sign_server` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`key_id`,`certsn`),
  KEY `index_certsn` (`certsn`) USING BTREE
)  ;

DROP TABLE IF EXISTS `aqs_systemcert`;
CREATE TABLE `aqs_systemcert` (
  `certsn` varchar(40) NOT NULL,
  `subject` varchar(512) NOT NULL,
  `notbefore` bigint(20) NOT NULL,
  `validity` int(6) NOT NULL,
  `certtype` varchar(30) NOT NULL,
  `certstatus` varchar(12) NOT NULL,
  `device_id` varchar(20) NOT NULL,
  PRIMARY KEY (`certsn`)
) ;

DROP TABLE IF EXISTS `aqs_cert_apply`;
CREATE TABLE `aqs_cert_apply` (
  `reqsn` varchar(40) NOT NULL,
  `certsn` varchar(40) DEFAULT NULL,
  `subjectuppercase` varchar(180) NOT NULL,
  `subject` varchar(512) NOT NULL,
  `commonname` varchar(128) DEFAULT NULL,
  `ctml_name` varchar(120) NOT NULL,
  `opt_type` varchar(20) NOT NULL,
  `isadmin` varchar(20) DEFAULT NULL,
  `req_status` varchar(20) NOT NULL,
  `validity` int(11) NOT NULL,
  `notbefore` bigint(20) DEFAULT NULL,
  `notafter` bigint(20) DEFAULT NULL,
  `userinfo_id` varchar(40) DEFAULT NULL,
  `cert_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`reqsn`)
) ;

DROP TABLE IF EXISTS `aqs_key_info_unlock_cache`;
CREATE TABLE `aqs_key_info_unlock_cache` (
  `key_id` varchar(40) NOT NULL,
  `admin_pwd` varchar(40) NOT NULL,
  `certsn` varchar(40) NOT NULL,
  `sign_server` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`key_id`,`certsn`)
) ;

DROP TABLE IF EXISTS `aqs_cert_snap` ;
CREATE TABLE `aqs_cert_snap` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `type` varchar(20) DEFAULT NULL COMMENT '类型：1：成功，此处放mapper接口文件：失败',
  `extract_time` varchar(20) DEFAULT NULL COMMENT '统计时间',
  `reflag` varchar(20) DEFAULT NULL COMMENT '是否是重新统计：1：不是，此处放mapper接口文件：是',
  `showflag` varchar(20) DEFAULT NULL COMMENT '列表是否展示：1：展示，此处放mapper接口文件：不展示',
  PRIMARY KEY (`id`)
);


DROP TABLE IF EXISTS `aqs_system_config`;
CREATE TABLE `aqs_system_config` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `type` varchar(20) DEFAULT NULL COMMENT '类型：1：定时器，此处放mapper接口文件：其他',
  `value` varchar(100) DEFAULT NULL COMMENT '值',
  `create_time` varchar(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `aqs_index_log_count`;
CREATE TABLE `aqs_index_log_count` (
  `user_id` varchar(40) NOT NULL COMMENT '用户id',
  `username` varchar(30) DEFAULT NULL COMMENT '姓名',
  `usercode` varchar(30) DEFAULT NULL COMMENT '用户编码',
  `count` int(10) default NULL COMMENT '被操作次数',
  `create_time` varchar(20) DEFAULT NULL COMMENT '插入时间',
  `org_id` varchar(40) DEFAULT NULL COMMENT '机构id'
);

DROP TABLE IF EXISTS `aqs_month_statis`;
CREATE TABLE `aqs_month_statis` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `org_id` varchar(255) DEFAULT NULL COMMENT '注册分中心ID',
  `org_cn` varchar(100) DEFAULT NULL COMMENT '注册分中心名称',
  `use_cert_num` varchar(12) DEFAULT NULL COMMENT '新增量',
  `revoke_cert_num` varchar(12) DEFAULT NULL COMMENT '注销量',
  `statime` varchar(30) DEFAULT NULL COMMENT '时间',
  `inner_code` varchar(100) DEFAULT NULL COMMENT '注册分中心编码',
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `aqs_year_statis`;
CREATE TABLE `aqs_year_statis` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `org_id` varchar(255) DEFAULT NULL COMMENT '注册分中心ID',
  `org_cn` varchar(100) DEFAULT NULL COMMENT '注册分中心名称',
  `use_cert_num` varchar(12) DEFAULT NULL COMMENT '新增量',
  `revoke_cert_num` varchar(12) DEFAULT NULL COMMENT '注销量',
  `statime` varchar(30) DEFAULT NULL COMMENT '时间',
  `inner_code` varchar(100) DEFAULT NULL COMMENT '注册分中心编码',
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS aqs_operator_dict;
CREATE TABLE aqs_operator_dict (
  id varchar(50) DEFAULT NULL,
  code varchar(50) DEFAULT NULL,
  name varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
);