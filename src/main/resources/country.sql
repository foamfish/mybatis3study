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