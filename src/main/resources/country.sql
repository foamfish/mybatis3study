CREATE TABLE `country` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `country_name` varchar(30) DEFAULT NULL COMMENT '国家的名称',
  `country_code` varchar(30) DEFAULT NULL COMMENT '国家的编码',              
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_country_code` (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'country信息表';


insert into `country`(`country_name`,`country_code`) values ('中国','CN'),('美国','US'),('俄罗斯','RU'),('英国','GB'),('法国','FR'); 



-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------

CREATE TABLE `sys_dict` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `dict_code` varchar(30) NOT NULL COMMENT '类别',
  `dict_name` varchar(30) NOT NULL COMMENT '字典名',
  `dict_value` varchar(30) NOT NULL COMMENT '字典值',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'sys_dict信息表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict`(`dict_code`,`dict_name`,`dict_value`) VALUES ('性别', '男', '男');
INSERT INTO `sys_dict`(`dict_code`,`dict_name`,`dict_value`) VALUES ('性别', '女', '女');
INSERT INTO `sys_dict`(`dict_code`,`dict_name`,`dict_value`) VALUES ('季度', '第一季度', '1');
INSERT INTO `sys_dict`(`dict_code`,`dict_name`,`dict_value`) VALUES ('季度', '第二季度', '2');
INSERT INTO `sys_dict`(`dict_code`,`dict_name`,`dict_value`) VALUES ('季度', '第三季度', '3');
INSERT INTO `sys_dict`(`dict_code`,`dict_name`,`dict_value`) VALUES ('季度', '第四季度', '4');

-- ----------------------------
-- Table structure for sys_privilege
-- ----------------------------

CREATE TABLE `sys_privilege` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `privilege_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `privilege_url` varchar(200) DEFAULT NULL COMMENT '权限URL',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sys_privilege权限表';

-- ----------------------------
-- Records of sys_privilege
-- ----------------------------
INSERT INTO `sys_privilege`(`privilege_name`,`privilege_url`) VALUES ('用户管理', '/users');
INSERT INTO `sys_privilege`(`privilege_name`,`privilege_url`) VALUES ('角色管理', '/roles');
INSERT INTO `sys_privilege`(`privilege_name`,`privilege_url`) VALUES ('系统日志', '/logs');
INSERT INTO `sys_privilege`(`privilege_name`,`privilege_url`) VALUES ('人员维护', '/persons');
INSERT INTO `sys_privilege`(`privilege_name`,`privilege_url`) VALUES ('单位维护', '/companies');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
CREATE TABLE `sys_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名',
  `enabled` int(11) DEFAULT NULL COMMENT '有效标志',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role`(`role_name`,`enabled`,`create_by`) VALUES ('管理员', '1', '1');
INSERT INTO `sys_role`(`role_name`,`enabled`,`create_by`) VALUES ('普通用户', '1', '1');

-- ----------------------------
-- Table structure for sys_role_privilege
-- ----------------------------
CREATE TABLE `sys_role_privilege` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `privilege_id` bigint(20) DEFAULT NULL COMMENT '权限ID',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限关联表';

-- ----------------------------
-- Records of sys_role_privilege
-- ----------------------------
INSERT INTO `sys_role_privilege`(`role_id`,`privilege_id`) VALUES ('1', '1');
INSERT INTO `sys_role_privilege`(`role_id`,`privilege_id`) VALUES ('1', '3');
INSERT INTO `sys_role_privilege`(`role_id`,`privilege_id`) VALUES ('1', '2');
INSERT INTO `sys_role_privilege`(`role_id`,`privilege_id`) VALUES ('2', '4');
INSERT INTO `sys_role_privilege`(`role_id`,`privilege_id`) VALUES ('2', '5');
