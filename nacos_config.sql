/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : nacos_config

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2020-06-26 21:17:42
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config_info
-- ----------------------------
DROP TABLE IF EXISTS `config_info`;
CREATE TABLE `config_info`
(
    `id`           bigint(20)                    NOT NULL AUTO_INCREMENT COMMENT 'id',
    `data_id`      varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
    `group_id`     varchar(255) COLLATE utf8_bin          DEFAULT NULL,
    `content`      longtext COLLATE utf8_bin     NOT NULL COMMENT 'content',
    `md5`          varchar(32) COLLATE utf8_bin           DEFAULT NULL COMMENT 'md5',
    `gmt_create`   datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified` datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    `src_user`     text COLLATE utf8_bin COMMENT 'source user',
    `src_ip`       varchar(20) COLLATE utf8_bin           DEFAULT NULL COMMENT 'source ip',
    `app_name`     varchar(128) COLLATE utf8_bin          DEFAULT NULL,
    `tenant_id`    varchar(128) COLLATE utf8_bin          DEFAULT '' COMMENT '租户字段',
    `c_desc`       varchar(256) COLLATE utf8_bin          DEFAULT NULL,
    `c_use`        varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `effect`       varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `type`         varchar(64) COLLATE utf8_bin           DEFAULT NULL,
    `c_schema`     text COLLATE utf8_bin,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_configinfo_datagrouptenant` (`data_id`, `group_id`, `tenant_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin COMMENT ='config_info';

-- ----------------------------
-- Records of config_info
-- ----------------------------
INSERT INTO `config_info`
VALUES ('1', 'gateway-server.yaml', 'DEFAULT_GROUP',
        0x737072696E673A0D0A2020636C6F75643A0D0A20202020676174657761793A0D0A202020202020676C6F62616C636F72733A0D0A2020202020202020636F7273436F6E66696775726174696F6E733A0D0A20202020202020202020275B2F2A2A5D273A0D0A202020202020202020202020616C6C6F7743726564656E7469616C733A20747275650D0A202020202020202020202020616C6C6F7765644F726967696E733A20222A220D0A202020202020202020202020616C6C6F776564486561646572733A20222A220D0A202020202020202020202020616C6C6F7765644D6574686F64733A0D0A20202020202020202020202020202D204745540D0A20202020202020202020202020202D20504F53540D0A20202020202020202020202020202D2050415443480D0A20202020202020202020202020202D205055540D0A20202020202020202020202020202D2044454C4554450D0A20202020202020202020202020202D204F5054494F4E530D0A202020202020646973636F766572793A0D0A20202020202020206C6F6361746F723A0D0A20202020202020202020656E61626C65643A20747275650D0A202020202020202020206C6F776572436173655365727669636549643A20747275650D0A20202020202020202020,
        '58923b4260e4a7cbc84d7c52c49569a8', '2020-06-25 09:35:03', '2020-06-26 12:45:53', null, '0:0:0:0:0:0:0:1', '', '', '', '', '', 'yaml', '');
INSERT INTO `config_info`
VALUES ('2', 'common-feign.yaml', 'DEFAULT_GROUP',
        0x666569676E3A0D0A2020687973747269783A0D0A20202020656E61626C65643A20747275650D0A726962626F6E3A0D0A20204D61784175746F526574726965734E6578745365727665723A20300D0A20205265616454696D656F75743A2036303030300D0A2020436F6E6E65637454696D656F75743A2036303030300D0A20204D61784175746F526574726965733A20300D0A687973747269783A0D0A2020636F6D6D616E643A0D0A2020202064656661756C743A0D0A202020202020657865637574696F6E3A0D0A202020202020202069736F6C6174696F6E3A0D0A202020202020202020207468726561643A0D0A20202020202020202020202074696D656F7574496E4D696C6C697365636F6E64733A2036303030300D0A6D616E6167656D656E743A0D0A2020656E64706F696E74733A0D0A202020207765623A0D0A2020202020206578706F737572653A0D0A2020202020202020696E636C7564653A20272A270D0A2020656E64706F696E743A0D0A202020206865616C74683A0D0A20202020202073686F772D64657461696C733A20616C77617973,
        '664dd8e0e6386421d00f02824b5b2fc7', '2020-06-25 09:37:13', '2020-06-26 12:45:38', null, '0:0:0:0:0:0:0:1', '', '', '', '', '', 'yaml', '');

-- ----------------------------
-- Table structure for config_info_aggr
-- ----------------------------
DROP TABLE IF EXISTS `config_info_aggr`;
CREATE TABLE `config_info_aggr`
(
    `id`           bigint(20)                    NOT NULL AUTO_INCREMENT COMMENT 'id',
    `data_id`      varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
    `group_id`     varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
    `datum_id`     varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
    `content`      longtext COLLATE utf8_bin     NOT NULL COMMENT '内容',
    `gmt_modified` datetime                      NOT NULL COMMENT '修改时间',
    `app_name`     varchar(128) COLLATE utf8_bin DEFAULT NULL,
    `tenant_id`    varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_configinfoaggr_datagrouptenantdatum` (`data_id`, `group_id`, `tenant_id`, `datum_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin COMMENT ='增加租户字段';

-- ----------------------------
-- Records of config_info_aggr
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_beta
-- ----------------------------
DROP TABLE IF EXISTS `config_info_beta`;
CREATE TABLE `config_info_beta`
(
    `id`           bigint(20)                    NOT NULL AUTO_INCREMENT COMMENT 'id',
    `data_id`      varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
    `group_id`     varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
    `app_name`     varchar(128) COLLATE utf8_bin          DEFAULT NULL COMMENT 'app_name',
    `content`      longtext COLLATE utf8_bin     NOT NULL COMMENT 'content',
    `beta_ips`     varchar(1024) COLLATE utf8_bin         DEFAULT NULL COMMENT 'betaIps',
    `md5`          varchar(32) COLLATE utf8_bin           DEFAULT NULL COMMENT 'md5',
    `gmt_create`   datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified` datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    `src_user`     text COLLATE utf8_bin COMMENT 'source user',
    `src_ip`       varchar(20) COLLATE utf8_bin           DEFAULT NULL COMMENT 'source ip',
    `tenant_id`    varchar(128) COLLATE utf8_bin          DEFAULT '' COMMENT '租户字段',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_configinfobeta_datagrouptenant` (`data_id`, `group_id`, `tenant_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin COMMENT ='config_info_beta';

-- ----------------------------
-- Records of config_info_beta
-- ----------------------------

-- ----------------------------
-- Table structure for config_info_tag
-- ----------------------------
DROP TABLE IF EXISTS `config_info_tag`;
CREATE TABLE `config_info_tag`
(
    `id`           bigint(20)                    NOT NULL AUTO_INCREMENT COMMENT 'id',
    `data_id`      varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
    `group_id`     varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
    `tenant_id`    varchar(128) COLLATE utf8_bin          DEFAULT '' COMMENT 'tenant_id',
    `tag_id`       varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
    `app_name`     varchar(128) COLLATE utf8_bin          DEFAULT NULL COMMENT 'app_name',
    `content`      longtext COLLATE utf8_bin     NOT NULL COMMENT 'content',
    `md5`          varchar(32) COLLATE utf8_bin           DEFAULT NULL COMMENT 'md5',
    `gmt_create`   datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified` datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    `src_user`     text COLLATE utf8_bin COMMENT 'source user',
    `src_ip`       varchar(20) COLLATE utf8_bin           DEFAULT NULL COMMENT 'source ip',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_configinfotag_datagrouptenanttag` (`data_id`, `group_id`, `tenant_id`, `tag_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin COMMENT ='config_info_tag';

-- ----------------------------
-- Records of config_info_tag
-- ----------------------------

-- ----------------------------
-- Table structure for config_tags_relation
-- ----------------------------
DROP TABLE IF EXISTS `config_tags_relation`;
CREATE TABLE `config_tags_relation`
(
    `id`        bigint(20)                    NOT NULL COMMENT 'id',
    `tag_name`  varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
    `tag_type`  varchar(64) COLLATE utf8_bin  DEFAULT NULL COMMENT 'tag_type',
    `data_id`   varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
    `group_id`  varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
    `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
    `nid`       bigint(20)                    NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`nid`),
    UNIQUE KEY `uk_configtagrelation_configidtag` (`id`, `tag_name`, `tag_type`),
    KEY `idx_tenant_id` (`tenant_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin COMMENT ='config_tag_relation';

-- ----------------------------
-- Records of config_tags_relation
-- ----------------------------

-- ----------------------------
-- Table structure for group_capacity
-- ----------------------------
DROP TABLE IF EXISTS `group_capacity`;
CREATE TABLE `group_capacity`
(
    `id`                bigint(20) unsigned           NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `group_id`          varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
    `quota`             int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
    `usage`             int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '使用量',
    `max_size`          int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
    `max_aggr_count`    int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数，，0表示使用默认值',
    `max_aggr_size`     int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
    `max_history_count` int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
    `gmt_create`        datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`      datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_group_id` (`group_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin COMMENT ='集群、各Group容量信息表';

-- ----------------------------
-- Records of group_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for his_config_info
-- ----------------------------
DROP TABLE IF EXISTS `his_config_info`;
CREATE TABLE `his_config_info`
(
    `id`           bigint(64) unsigned           NOT NULL,
    `nid`          bigint(20) unsigned           NOT NULL AUTO_INCREMENT,
    `data_id`      varchar(255) COLLATE utf8_bin NOT NULL,
    `group_id`     varchar(128) COLLATE utf8_bin NOT NULL,
    `app_name`     varchar(128) COLLATE utf8_bin          DEFAULT NULL COMMENT 'app_name',
    `content`      longtext COLLATE utf8_bin     NOT NULL,
    `md5`          varchar(32) COLLATE utf8_bin           DEFAULT NULL,
    `gmt_create`   datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `gmt_modified` datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `src_user`     text COLLATE utf8_bin,
    `src_ip`       varchar(20) COLLATE utf8_bin           DEFAULT NULL,
    `op_type`      char(10) COLLATE utf8_bin              DEFAULT NULL,
    `tenant_id`    varchar(128) COLLATE utf8_bin          DEFAULT '' COMMENT '租户字段',
    PRIMARY KEY (`nid`),
    KEY `idx_gmt_create` (`gmt_create`),
    KEY `idx_gmt_modified` (`gmt_modified`),
    KEY `idx_did` (`data_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin COMMENT ='多租户改造';

-- ----------------------------
-- Records of his_config_info
-- ----------------------------
INSERT INTO `his_config_info`
VALUES ('0', '1', 'gateway-server.yaml', 'DEFAULT_GROUP', '',
        0x737072696E673A0D0A2020636C6F75643A0D0A20202020676174657761793A0D0A202020202020676C6F62616C636F72733A0D0A2020202020202020636F7273436F6E66696775726174696F6E733A0D0A20202020202020202020275B2F2A2A5D273A0D0A202020202020202020202020616C6C6F7743726564656E7469616C733A20747275650D0A202020202020202020202020616C6C6F7765644F726967696E733A20222A220D0A202020202020202020202020616C6C6F776564486561646572733A20222A220D0A202020202020202020202020616C6C6F7765644D6574686F64733A0D0A20202020202020202020202020202D204745540D0A20202020202020202020202020202D20504F53540D0A20202020202020202020202020202D2050415443480D0A20202020202020202020202020202D205055540D0A20202020202020202020202020202D2044454C4554450D0A20202020202020202020202020202D204F5054494F4E530D0A202020202020646973636F766572793A0D0A20202020202020206C6F6361746F723A0D0A20202020202020202020656E61626C65643A20747275650D0A202020202020202020206C6F776572436173655365727669636549643A20747275650D0A6D616E6167656D656E743A0D0A2020656E64706F696E74733A0D0A202020207765623A0D0A2020202020206578706F737572653A0D0A2020202020202020696E636C7564653A20272A270D0A2020656E64706F696E743A0D0A202020206865616C74683A0D0A20202020202073686F772D64657461696C733A20616C77617973,
        'a8d8044cc858b6ea5f65c12274173add', '2020-06-25 17:35:02', '2020-06-25 09:35:03', null, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info`
VALUES ('0', '2', 'common-feign.yaml', 'DEFAULT_GROUP', '',
        0x666569676E3A0D0A2020687973747269783A0D0A20202020656E61626C65643A20747275650D0A726962626F6E3A0D0A20204D61784175746F526574726965734E6578745365727665723A20300D0A20205265616454696D656F75743A2036303030300D0A2020436F6E6E65637454696D656F75743A2036303030300D0A20204D61784175746F526574726965733A20300D0A687973747269783A0D0A2020636F6D6D616E643A0D0A2020202064656661756C743A0D0A202020202020657865637574696F6E3A0D0A202020202020202069736F6C6174696F6E3A0D0A202020202020202020207468726561643A0D0A20202020202020202020202074696D656F7574496E4D696C6C697365636F6E64733A203630303030,
        'a9af9ed25744f72177d1283eb033257c', '2020-06-25 17:37:12', '2020-06-25 09:37:13', null, '0:0:0:0:0:0:0:1', 'I', '');
INSERT INTO `his_config_info`
VALUES ('2', '3', 'common-feign.yaml', 'DEFAULT_GROUP', '',
        0x666569676E3A0D0A2020687973747269783A0D0A20202020656E61626C65643A20747275650D0A726962626F6E3A0D0A20204D61784175746F526574726965734E6578745365727665723A20300D0A20205265616454696D656F75743A2036303030300D0A2020436F6E6E65637454696D656F75743A2036303030300D0A20204D61784175746F526574726965733A20300D0A687973747269783A0D0A2020636F6D6D616E643A0D0A2020202064656661756C743A0D0A202020202020657865637574696F6E3A0D0A202020202020202069736F6C6174696F6E3A0D0A202020202020202020207468726561643A0D0A20202020202020202020202074696D656F7574496E4D696C6C697365636F6E64733A203630303030,
        'a9af9ed25744f72177d1283eb033257c', '2020-06-26 20:45:38', '2020-06-26 12:45:38', null, '0:0:0:0:0:0:0:1', 'U', '');
INSERT INTO `his_config_info`
VALUES ('1', '4', 'gateway-server.yaml', 'DEFAULT_GROUP', '',
        0x737072696E673A0D0A2020636C6F75643A0D0A20202020676174657761793A0D0A202020202020676C6F62616C636F72733A0D0A2020202020202020636F7273436F6E66696775726174696F6E733A0D0A20202020202020202020275B2F2A2A5D273A0D0A202020202020202020202020616C6C6F7743726564656E7469616C733A20747275650D0A202020202020202020202020616C6C6F7765644F726967696E733A20222A220D0A202020202020202020202020616C6C6F776564486561646572733A20222A220D0A202020202020202020202020616C6C6F7765644D6574686F64733A0D0A20202020202020202020202020202D204745540D0A20202020202020202020202020202D20504F53540D0A20202020202020202020202020202D2050415443480D0A20202020202020202020202020202D205055540D0A20202020202020202020202020202D2044454C4554450D0A20202020202020202020202020202D204F5054494F4E530D0A202020202020646973636F766572793A0D0A20202020202020206C6F6361746F723A0D0A20202020202020202020656E61626C65643A20747275650D0A202020202020202020206C6F776572436173655365727669636549643A20747275650D0A6D616E6167656D656E743A0D0A2020656E64706F696E74733A0D0A202020207765623A0D0A2020202020206578706F737572653A0D0A2020202020202020696E636C7564653A20272A270D0A2020656E64706F696E743A0D0A202020206865616C74683A0D0A20202020202073686F772D64657461696C733A20616C77617973,
        'a8d8044cc858b6ea5f65c12274173add', '2020-06-26 20:45:52', '2020-06-26 12:45:53', null, '0:0:0:0:0:0:0:1', 'U', '');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`
(
    `role`     varchar(50)  NOT NULL,
    `resource` varchar(512) NOT NULL,
    `action`   varchar(8)   NOT NULL,
    UNIQUE KEY `uk_role_permission` (`role`, `resource`, `action`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`
(
    `username` varchar(50) NOT NULL,
    `role`     varchar(50) NOT NULL,
    UNIQUE KEY `idx_user_role` (`username`, `role`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles`
VALUES ('nacos', 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for tenant_capacity
-- ----------------------------
DROP TABLE IF EXISTS `tenant_capacity`;
CREATE TABLE `tenant_capacity`
(
    `id`                bigint(20) unsigned           NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `tenant_id`         varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
    `quota`             int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
    `usage`             int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '使用量',
    `max_size`          int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
    `max_aggr_count`    int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数',
    `max_aggr_size`     int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
    `max_history_count` int(10) unsigned              NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
    `gmt_create`        datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `gmt_modified`      datetime                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_tenant_id` (`tenant_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin COMMENT ='租户容量信息表';

-- ----------------------------
-- Records of tenant_capacity
-- ----------------------------

-- ----------------------------
-- Table structure for tenant_info
-- ----------------------------
DROP TABLE IF EXISTS `tenant_info`;
CREATE TABLE `tenant_info`
(
    `id`            bigint(20)                    NOT NULL AUTO_INCREMENT COMMENT 'id',
    `kp`            varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'kp',
    `tenant_id`     varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
    `tenant_name`   varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_name',
    `tenant_desc`   varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'tenant_desc',
    `create_source` varchar(32) COLLATE utf8_bin  DEFAULT NULL COMMENT 'create_source',
    `gmt_create`    bigint(20)                    NOT NULL COMMENT '创建时间',
    `gmt_modified`  bigint(20)                    NOT NULL COMMENT '修改时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_tenant_info_kptenantid` (`kp`, `tenant_id`),
    KEY `idx_tenant_id` (`tenant_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin COMMENT ='tenant_info';

-- ----------------------------
-- Records of tenant_info
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`
(
    `username` varchar(50)  NOT NULL,
    `password` varchar(500) NOT NULL,
    `enabled`  tinyint(1)   NOT NULL,
    PRIMARY KEY (`username`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users`
VALUES ('nacos', '$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu', '1');
