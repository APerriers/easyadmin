/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : yuepei

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 02/03/2021 16:42:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yp_mall_cate
-- ----------------------------
DROP TABLE IF EXISTS `yp_mall_cate`;
CREATE TABLE `yp_mall_cate`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名',
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类图片',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(1:禁用,2:启用)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_mall_cate
-- ----------------------------
INSERT INTO `yp_mall_cate` VALUES (9, '手机', 'http://admin.host/upload/20200514/98fc09b0c4ad4d793a6f04bef79a0edc.jpg', 0, 1, '', 1589440437, 1589440437, NULL);

-- ----------------------------
-- Table structure for yp_mall_goods
-- ----------------------------
DROP TABLE IF EXISTS `yp_mall_goods`;
CREATE TABLE `yp_mall_goods`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NULL DEFAULT NULL COMMENT '分类ID',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `logo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品logo',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品图片 以 | 做分割符号',
  `describe` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品描述',
  `market_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '市场价',
  `discount_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '折扣价',
  `sales` int(11) NULL DEFAULT 0 COMMENT '销量',
  `virtual_sales` int(11) NULL DEFAULT 0 COMMENT '虚拟销量',
  `stock` int(11) NULL DEFAULT 0 COMMENT '库存',
  `total_stock` int(11) NULL DEFAULT 0 COMMENT '总库存',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(1:禁用,2:启用)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cate_id`(`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_mall_goods
-- ----------------------------
INSERT INTO `yp_mall_goods` VALUES (8, 10, '落地-风扇', 'http://admin.host/upload/20200514/a0f7fe9637abd219f7e93ceb2820df9b.jpg', 'http://admin.host/upload/20200514/95496713918290f6315ea3f87efa6bf2.jpg|http://admin.host/upload/20200514/ae29fa9cba4fc02defb7daed41cb2b13.jpg|http://admin.host/upload/20200514/f0a104d88ec7dc6fb42d2f87cbc71b76.jpg|http://admin.host/upload/20200514/3b88be4b1934690e5c1bd6b54b9ab5c8.jpg', '<p>76654757</p>\n\n<p><img alt=\"\" src=\"http://admin.host/upload/20200515/198070421110fa01f2c2ac2f52481647.jpg\" style=\"height:689px; width:790px\" /></p>\n\n<p><img alt=\"\" src=\"http://admin.host/upload/20200515/a07a742c15a78781e79f8a3317006c1d.jpg\" style=\"height:877px; width:790px\" /></p>\n', 599.00, 368.00, 0, 594, 0, 0, 675, 1, '', 1589454309, 1589567016, NULL);
INSERT INTO `yp_mall_goods` VALUES (9, 9, '电脑', 'http://admin.host/upload/20200514/bbf858d469dec2e12a89460110068d3d.jpg', 'http://admin.host/upload/20200514/f0a104d88ec7dc6fb42d2f87cbc71b76.jpg', '<p>477</p>\n', 0.00, 0.00, 0, 0, 115, 320, 0, 1, '', 1589465215, 1589476345, NULL);

-- ----------------------------
-- Table structure for yp_news_cate
-- ----------------------------
DROP TABLE IF EXISTS `yp_news_cate`;
CREATE TABLE `yp_news_cate`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(1:禁用,2:启用)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_news_cate
-- ----------------------------
INSERT INTO `yp_news_cate` VALUES (9, '手机', 0, 1, '', 1589440437, 1589440437, NULL);

-- ----------------------------
-- Table structure for yp_news_details
-- ----------------------------
DROP TABLE IF EXISTS `yp_news_details`;
CREATE TABLE `yp_news_details`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NULL DEFAULT NULL COMMENT '分类ID',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '新闻名称',
  `describe` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '新闻描述',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(1:禁用,2:启用)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cate_id`(`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_news_details
-- ----------------------------
INSERT INTO `yp_news_details` VALUES (9, 9, '电脑', 'http://admin.host/upload/20200514/f0a104d88ec7dc6fb42d2f87cbc71b76.jpg', 0, 1, '', 1589465215, 1589476345, NULL);

-- ----------------------------
-- Table structure for yp_system_admin
-- ----------------------------
DROP TABLE IF EXISTS `yp_system_admin`;
CREATE TABLE `yp_system_admin`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auth_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色权限ID',
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系手机号',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '登录次数',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用,)',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_system_admin
-- ----------------------------
INSERT INTO `yp_system_admin` VALUES (1, NULL, '/static/admin/images/head.jpg', 'admin', '7b41f489f7785e6ae5bacef8017b5e908ccee1c9', NULL, '', 9, 0, 1, 1608966841, 1614128528, NULL);
INSERT INTO `yp_system_admin` VALUES (2, '7', 'https://lxn-99php.oss-cn-shenzhen.aliyuncs.com/upload/20191111/2c412adf1b30c8be3a913e603c7b6e4a.jpg', 'test', 'f040d9a5b2ce2ed746761f9d91ef5069c43a14a7', '', '', 1, 0, 1, 1608967575, 1608967660, NULL);

-- ----------------------------
-- Table structure for yp_system_auth
-- ----------------------------
DROP TABLE IF EXISTS `yp_system_auth`;
CREATE TABLE `yp_system_auth`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(1:禁用,2:启用)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_system_auth
-- ----------------------------
INSERT INTO `yp_system_auth` VALUES (1, '管理员', 1, 1, '测试管理员', 1588921753, 1589614331, NULL);
INSERT INTO `yp_system_auth` VALUES (6, '游客权限', 0, 1, '', 1588227513, 1589591751, 1589591751);
INSERT INTO `yp_system_auth` VALUES (7, 'test', 0, 1, 'test', 1608967519, 1608967519, NULL);

-- ----------------------------
-- Table structure for yp_system_auth_node
-- ----------------------------
DROP TABLE IF EXISTS `yp_system_auth_node`;
CREATE TABLE `yp_system_auth_node`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auth_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '角色ID',
  `node_id` bigint(20) NULL DEFAULT NULL COMMENT '节点ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_auth_auth`(`auth_id`) USING BTREE,
  INDEX `index_system_auth_node`(`node_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与节点关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_system_auth_node
-- ----------------------------
INSERT INTO `yp_system_auth_node` VALUES (1, 6, 1);
INSERT INTO `yp_system_auth_node` VALUES (2, 6, 2);
INSERT INTO `yp_system_auth_node` VALUES (3, 6, 9);
INSERT INTO `yp_system_auth_node` VALUES (4, 6, 12);
INSERT INTO `yp_system_auth_node` VALUES (5, 6, 18);
INSERT INTO `yp_system_auth_node` VALUES (6, 6, 19);
INSERT INTO `yp_system_auth_node` VALUES (7, 6, 21);
INSERT INTO `yp_system_auth_node` VALUES (8, 6, 22);
INSERT INTO `yp_system_auth_node` VALUES (9, 6, 29);
INSERT INTO `yp_system_auth_node` VALUES (10, 6, 30);
INSERT INTO `yp_system_auth_node` VALUES (11, 6, 38);
INSERT INTO `yp_system_auth_node` VALUES (12, 6, 39);
INSERT INTO `yp_system_auth_node` VALUES (13, 6, 45);
INSERT INTO `yp_system_auth_node` VALUES (14, 6, 46);
INSERT INTO `yp_system_auth_node` VALUES (15, 6, 52);
INSERT INTO `yp_system_auth_node` VALUES (16, 6, 53);
INSERT INTO `yp_system_auth_node` VALUES (17, 7, 67);
INSERT INTO `yp_system_auth_node` VALUES (18, 7, 68);

-- ----------------------------
-- Table structure for yp_system_config
-- ----------------------------
DROP TABLE IF EXISTS `yp_system_config`;
CREATE TABLE `yp_system_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分组',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '变量值',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  `sort` int(10) NULL DEFAULT 0,
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `group`(`group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_system_config
-- ----------------------------
INSERT INTO `yp_system_config` VALUES (41, 'alisms_access_key_id', 'sms', '填你的', '阿里大于公钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (42, 'alisms_access_key_secret', 'sms', '填你的', '阿里大鱼私钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (55, 'upload_type', 'upload', 'local', '当前上传方式 （local,alioss,qnoss,txoss）', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (56, 'upload_allow_ext', 'upload', 'doc,gif,ico,icon,jpg,mp3,mp4,p12,pem,png,rar,jpeg', '允许上传的文件类型', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (57, 'upload_allow_size', 'upload', '1024000', '允许上传的大小', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (58, 'upload_allow_mime', 'upload', 'image/gif,image/jpeg,video/x-msvideo,text/plain,image/png', '允许上传的文件mime', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (59, 'upload_allow_type', 'upload', 'local,alioss,qnoss,txcos', '可用的上传文件方式', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (60, 'alioss_access_key_id', 'upload', '填你的', '阿里云oss公钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (61, 'alioss_access_key_secret', 'upload', '填你的', '阿里云oss私钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (62, 'alioss_endpoint', 'upload', '填你的', '阿里云oss数据中心', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (63, 'alioss_bucket', 'upload', '填你的', '阿里云oss空间名称', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (64, 'alioss_domain', 'upload', '填你的', '阿里云oss访问域名', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (65, 'logo_title', 'site', '111', 'LOGO标题', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (66, 'logo_image', 'site', '/favicon.ico', 'logo图片', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (68, 'site_name', 'site', '1111', '站点名称', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (69, 'site_ico', 'site', 'https://lxn-99php.oss-cn-shenzhen.aliyuncs.com/upload/20191111/7d32671f4c1d1b01b0b28f45205763f9.ico', '浏览器图标', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (70, 'site_copyright', 'site', '©版权所有 2014-2018 ', '版权信息', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (71, 'site_beian', 'site', '粤ICP备16006642号-2', '备案信息', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (72, 'site_version', 'site', '2.0.0', '版本信息', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (75, 'sms_type', 'sms', 'alisms', '短信类型', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (76, 'miniapp_appid', 'wechat', '填你的', '小程序公钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (77, 'miniapp_appsecret', 'wechat', '填你的', '小程序私钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (78, 'web_appid', 'wechat', '填你的', '公众号公钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (79, 'web_appsecret', 'wechat', '填你的', '公众号私钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (80, 'txcos_secret_id', 'upload', '填你的', '腾讯云cos密钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (81, 'txcos_secret_key', 'upload', '填你的', '腾讯云cos私钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (82, 'txcos_region', 'upload', '填你的', '存储桶地域', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (83, 'tecos_bucket', 'upload', '填你的', '存储桶名称', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (84, 'qnoss_access_key', 'upload', '填你的', '访问密钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (85, 'qnoss_secret_key', 'upload', '填你的', '安全密钥', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (86, 'qnoss_bucket', 'upload', '填你的', '存储空间', 0, NULL, NULL);
INSERT INTO `yp_system_config` VALUES (87, 'qnoss_domain', 'upload', '填你的', '访问域名', 0, NULL, NULL);

-- ----------------------------
-- Table structure for yp_system_log_202012
-- ----------------------------
DROP TABLE IF EXISTS `yp_system_log_202012`;
CREATE TABLE `yp_system_log_202012`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '管理员ID',
  `url` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作页面',
  `method` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求方法',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '日志标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'User-Agent',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 658 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台操作日志表 - 202012' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_system_log_202012
-- ----------------------------
INSERT INTO `yp_system_log_202012` VALUES (630, NULL, '/admin/login/index.html', 'post', '', '{\"\\/admin\\/login\\/index_html\":\"\",\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"8bct\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608966877);
INSERT INTO `yp_system_log_202012` VALUES (631, 1, '/admin/system.auth/add', 'post', '', '{\"\\/admin\\/system_auth\\/add\":\"\",\"title\":\"test\",\"remark\":\"test\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967519);
INSERT INTO `yp_system_log_202012` VALUES (632, 1, '/admin/system.auth/saveAuthorize', 'post', '', '{\"\\/admin\\/system_auth\\/saveAuthorize\":\"\",\"title\":\"test\",\"node\":\"[67,68]\",\"id\":\"7\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967537);
INSERT INTO `yp_system_log_202012` VALUES (633, 1, '/admin/system.admin/add', 'post', '', '{\"\\/admin\\/system_admin\\/add\":\"\",\"head_img\":\"https:\\/\\/lxn-99php.oss-cn-shenzhen.aliyuncs.com\\/upload\\/20191111\\/2c412adf1b30c8be3a913e603c7b6e4a.jpg\",\"file\":\"\",\"username\":\"test\",\"phone\":\"\",\"auth_ids\":{\"7\":\"on\"},\"remark\":\"\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967575);
INSERT INTO `yp_system_log_202012` VALUES (634, NULL, '/admin/login/index', 'post', '', '{\"username\":\"test\",\"password\":\"dfe60d4b3659bb077dcc28252863808c694392fe\",\"captcha\":\"yqhu\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967597);
INSERT INTO `yp_system_log_202012` VALUES (635, NULL, '/admin/login/index', 'post', '', '{\"username\":\"test\",\"password\":\"dfe60d4b3659bb077dcc28252863808c694392fe\",\"captcha\":\"fcmc\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967603);
INSERT INTO `yp_system_log_202012` VALUES (636, NULL, '/admin/login/index', 'post', '', '{\"username\":\"test\",\"password\":\"f040d9a5b2ce2ed746761f9d91ef5069c43a14a7\",\"captcha\":\"xdfz\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967611);
INSERT INTO `yp_system_log_202012` VALUES (637, NULL, '/admin/login/index', 'post', '', '{\"username\":\"test\",\"password\":\"f5b0e69948cf430df6cee399d5a09e168962254a\",\"captcha\":\"vhqk\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967618);
INSERT INTO `yp_system_log_202012` VALUES (638, NULL, '/admin/login/index', 'post', '', '{\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"dbyx\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967630);
INSERT INTO `yp_system_log_202012` VALUES (639, 1, '/admin/system.admin/password?id=2', 'post', '', '{\"\\/admin\\/system_admin\\/password\":\"\",\"id\":\"2\",\"username\":\"test\",\"password\":\"f040d9a5b2ce2ed746761f9d91ef5069c43a14a7\",\"password_again\":\"f040d9a5b2ce2ed746761f9d91ef5069c43a14a7\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967647);
INSERT INTO `yp_system_log_202012` VALUES (640, NULL, '/admin/login/index', 'post', '', '{\"username\":\"test\",\"password\":\"f040d9a5b2ce2ed746761f9d91ef5069c43a14a7\",\"captcha\":\"rvwe\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967660);
INSERT INTO `yp_system_log_202012` VALUES (641, NULL, '/admin/login/index', 'post', '', '{\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"tfly\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967691);
INSERT INTO `yp_system_log_202012` VALUES (642, 1, '/admin/system.menu/edit?id=249', 'post', '', '{\"\\/admin\\/system_menu\\/edit\":\"\",\"id\":\"249\",\"pid\":\"0\",\"title\":\"商品管理\",\"href\":\"\",\"icon\":\"fa fa-list\",\"target\":\"_self\",\"sort\":\"0\",\"remark\":\"\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608967734);
INSERT INTO `yp_system_log_202012` VALUES (643, NULL, '/admin/login/index.html', 'post', '', '{\"\\/admin\\/login\\/index_html\":\"\",\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"ziex\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608968610);
INSERT INTO `yp_system_log_202012` VALUES (644, 1, '/admin/system.config/save', 'post', '', '{\"\\/admin\\/system_config\\/save\":\"\",\"logo_title\":\"111\",\"logo_image\":\"\\/favicon.ico\",\"file\":\"\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608968852);
INSERT INTO `yp_system_log_202012` VALUES (645, 1, '/admin/system.config/save', 'post', '', '{\"\\/admin\\/system_config\\/save\":\"\",\"site_name\":\"1111\",\"site_ico\":\"https:\\/\\/lxn-99php.oss-cn-shenzhen.aliyuncs.com\\/upload\\/20191111\\/7d32671f4c1d1b01b0b28f45205763f9.ico\",\"file\":\"\",\"site_version\":\"2.0.0\",\"site_beian\":\"粤ICP备16006642号-2\",\"site_copyright\":\"©版权所有 2014-2018 叁贰柒工作室66\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1608968870);
INSERT INTO `yp_system_log_202012` VALUES (646, NULL, '/admin/login/index.html', 'post', '', '{\"\\/admin\\/login\\/index_html\":\"\",\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"rfrp\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609120111);
INSERT INTO `yp_system_log_202012` VALUES (647, NULL, '/admin/login/index', 'post', '', '{\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609121104);
INSERT INTO `yp_system_log_202012` VALUES (648, NULL, '/admin/login/index', 'post', '', '{\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609121118);
INSERT INTO `yp_system_log_202012` VALUES (649, NULL, '/admin/login/index', 'post', '', '{\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609121120);
INSERT INTO `yp_system_log_202012` VALUES (650, NULL, '/admin/login/index.html', 'post', '', '{\"\\/admin\\/login\\/index_html\":\"\",\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"cy2c\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609126399);
INSERT INTO `yp_system_log_202012` VALUES (651, 1, '/admin/system.menu/add', 'post', '', '{\"\\/admin\\/system_menu\\/add\":\"\",\"pid\":\"0\",\"title\":\"新闻管理\",\"href\":\"\",\"icon\":\"fa fa-list\",\"target\":\"_self\",\"sort\":\"0\",\"remark\":\"\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609127001);
INSERT INTO `yp_system_log_202012` VALUES (652, 1, '/admin/system.menu/add?id=254', 'post', '', '{\"\\/admin\\/system_menu\\/add\":\"\",\"id\":\"254\",\"pid\":\"254\",\"title\":\"新闻分类\",\"href\":\"news.cate\\/index\",\"icon\":\"fa fa-list\",\"target\":\"_self\",\"sort\":\"0\",\"remark\":\"\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609127068);
INSERT INTO `yp_system_log_202012` VALUES (653, 1, '/admin/system.menu/add?id=254', 'post', '', '{\"\\/admin\\/system_menu\\/add\":\"\",\"id\":\"254\",\"pid\":\"254\",\"title\":\"新闻管理\",\"href\":\"news.details\\/index\",\"icon\":\"fa fa-list\",\"target\":\"_self\",\"sort\":\"0\",\"remark\":\"\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609127153);
INSERT INTO `yp_system_log_202012` VALUES (654, 1, '/admin/system.node/refreshNode?force=1', 'post', '', '{\"\\/admin\\/system_node\\/refreshNode\":\"\",\"force\":\"1\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609127531);
INSERT INTO `yp_system_log_202012` VALUES (655, NULL, '/admin/login/index.html', 'post', '', '{\"\\/admin\\/login\\/index_html\":\"\",\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"cbz8\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609138689);
INSERT INTO `yp_system_log_202012` VALUES (656, 1, '/admin/system.config/save', 'post', '', '{\"\\/admin\\/system_config\\/save\":\"\",\"site_name\":\"1111\",\"site_ico\":\"https:\\/\\/lxn-99php.oss-cn-shenzhen.aliyuncs.com\\/upload\\/20191111\\/7d32671f4c1d1b01b0b28f45205763f9.ico\",\"file\":\"\",\"site_version\":\"2.0.0\",\"site_beian\":\"粤ICP备16006642号-2\",\"site_copyright\":\"©版权所有 2014-2018 \"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609139093);
INSERT INTO `yp_system_log_202012` VALUES (657, NULL, '/admin/login/index', 'post', '', '{\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"lvqh\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1609139244);

-- ----------------------------
-- Table structure for yp_system_log_202102
-- ----------------------------
DROP TABLE IF EXISTS `yp_system_log_202102`;
CREATE TABLE `yp_system_log_202102`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '管理员ID',
  `url` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作页面',
  `method` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求方法',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '日志标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'User-Agent',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 631 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台操作日志表 - 202102' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_system_log_202102
-- ----------------------------
INSERT INTO `yp_system_log_202102` VALUES (630, NULL, '/admin/login/index.html', 'post', '', '{\"\\/admin\\/login\\/index_html\":\"\",\"username\":\"admin\",\"password\":\"7b41f489f7785e6ae5bacef8017b5e908ccee1c9\",\"captcha\":\"8jhk\",\"keep_login\":\"0\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', 1614128527);

-- ----------------------------
-- Table structure for yp_system_menu
-- ----------------------------
DROP TABLE IF EXISTS `yp_system_menu`;
CREATE TABLE `yp_system_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `href` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) NULL DEFAULT 0 COMMENT '菜单排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title`) USING BTREE,
  INDEX `href`(`href`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 257 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_system_menu
-- ----------------------------
INSERT INTO `yp_system_menu` VALUES (227, 99999999, '后台首页', 'fa fa-home', 'index/welcome', '', '_self', 0, 1, NULL, NULL, 1573120497, NULL);
INSERT INTO `yp_system_menu` VALUES (228, 0, '系统管理', 'fa fa-cog', '', '', '_self', 0, 1, '', NULL, 1588999529, NULL);
INSERT INTO `yp_system_menu` VALUES (234, 228, '菜单管理', 'fa fa-tree', 'system.menu/index', '', '_self', 10, 1, '', NULL, 1588228555, NULL);
INSERT INTO `yp_system_menu` VALUES (244, 228, '管理员管理', 'fa fa-user', 'system.admin/index', '', '_self', 12, 1, '', 1573185011, 1588228573, NULL);
INSERT INTO `yp_system_menu` VALUES (245, 228, '角色管理', 'fa fa-bitbucket-square', 'system.auth/index', '', '_self', 11, 1, '', 1573435877, 1588228634, NULL);
INSERT INTO `yp_system_menu` VALUES (246, 228, '节点管理', 'fa fa-list', 'system.node/index', '', '_self', 9, 1, '', 1573435919, 1588228648, NULL);
INSERT INTO `yp_system_menu` VALUES (247, 228, '配置管理', 'fa fa-asterisk', 'system.config/index', '', '_self', 8, 1, '', 1573457448, 1588228566, NULL);
INSERT INTO `yp_system_menu` VALUES (248, 228, '上传管理', 'fa fa-arrow-up', 'system.uploadfile/index', '', '_self', 0, 1, '', 1573542953, 1588228043, NULL);
INSERT INTO `yp_system_menu` VALUES (249, 0, '商品管理', 'fa fa-list', '', '', '_self', 0, 1, '', 1589439884, 1608967734, NULL);
INSERT INTO `yp_system_menu` VALUES (250, 249, '商品分类', 'fa fa-calendar-check-o', 'mall.cate/index', '', '_self', 0, 1, '', 1589439910, 1589439966, NULL);
INSERT INTO `yp_system_menu` VALUES (251, 249, '商品管理', 'fa fa-list', 'mall.goods/index', '', '_self', 0, 1, '', 1589439931, 1589439942, NULL);
INSERT INTO `yp_system_menu` VALUES (252, 228, '快捷入口', 'fa fa-list', 'system.quick/index', '', '_self', 0, 1, '', 1589623683, 1589623683, NULL);
INSERT INTO `yp_system_menu` VALUES (253, 228, '日志管理', 'fa fa-connectdevelop', 'system.log/index', '', '_self', 0, 1, '', 1589623684, 1589623684, NULL);
INSERT INTO `yp_system_menu` VALUES (254, 0, '新闻管理', 'fa fa-list', '', '', '_self', 0, 1, '', 1609127001, 1609127001, NULL);
INSERT INTO `yp_system_menu` VALUES (255, 254, '新闻分类', 'fa fa-list', 'news.cate/index', '', '_self', 0, 1, '', 1609127068, 1609127068, NULL);
INSERT INTO `yp_system_menu` VALUES (256, 254, '新闻管理', 'fa fa-list', 'news.details/index', '', '_self', 0, 1, '', 1609127153, 1609127153, NULL);

-- ----------------------------
-- Table structure for yp_system_node
-- ----------------------------
DROP TABLE IF EXISTS `yp_system_node`;
CREATE TABLE `yp_system_node`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `node` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节点标题',
  `type` tinyint(1) NULL DEFAULT 3 COMMENT '节点类型（1：控制器，2：节点）',
  `is_auth` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '是否启动RBAC权限控制',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `node`(`node`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统节点表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_system_node
-- ----------------------------
INSERT INTO `yp_system_node` VALUES (1, 'system.admin', '管理员管理', 1, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (2, 'system.admin/index', '列表', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (3, 'system.admin/add', '添加', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (4, 'system.admin/edit', '编辑', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (5, 'system.admin/password', '编辑', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (6, 'system.admin/delete', '删除', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (7, 'system.admin/modify', '属性修改', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (8, 'system.admin/export', '导出', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (9, 'system.auth', '角色权限管理', 1, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (10, 'system.auth/authorize', '授权', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (11, 'system.auth/saveAuthorize', '授权保存', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (12, 'system.auth/index', '列表', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (13, 'system.auth/add', '添加', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (14, 'system.auth/edit', '编辑', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (15, 'system.auth/delete', '删除', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (16, 'system.auth/export', '导出', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (17, 'system.auth/modify', '属性修改', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (18, 'system.config', '系统配置管理', 1, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (19, 'system.config/index', '列表', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (20, 'system.config/save', '保存', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (21, 'system.menu', '菜单管理', 1, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (22, 'system.menu/index', '列表', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (23, 'system.menu/add', '添加', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (24, 'system.menu/edit', '编辑', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (25, 'system.menu/delete', '删除', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (26, 'system.menu/modify', '属性修改', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (27, 'system.menu/getMenuTips', '添加菜单提示', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (28, 'system.menu/export', '导出', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (29, 'system.node', '系统节点管理', 1, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (30, 'system.node/index', '列表', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (31, 'system.node/refreshNode', '系统节点更新', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (32, 'system.node/clearNode', '清除失效节点', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (33, 'system.node/add', '添加', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (34, 'system.node/edit', '编辑', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (35, 'system.node/delete', '删除', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (36, 'system.node/export', '导出', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (37, 'system.node/modify', '属性修改', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (38, 'system.uploadfile', '上传文件管理', 1, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (39, 'system.uploadfile/index', '列表', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (40, 'system.uploadfile/add', '添加', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (41, 'system.uploadfile/edit', '编辑', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (42, 'system.uploadfile/delete', '删除', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (43, 'system.uploadfile/export', '导出', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (44, 'system.uploadfile/modify', '属性修改', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (45, 'mall.cate', '商品分类管理', 1, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (46, 'mall.cate/index', '列表', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (47, 'mall.cate/add', '添加', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (48, 'mall.cate/edit', '编辑', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (49, 'mall.cate/delete', '删除', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (50, 'mall.cate/export', '导出', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (51, 'mall.cate/modify', '属性修改', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (52, 'mall.goods', '商城商品管理', 1, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (53, 'mall.goods/index', '列表', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (54, 'mall.goods/stock', '入库', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (55, 'mall.goods/add', '添加', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (56, 'mall.goods/edit', '编辑', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (57, 'mall.goods/delete', '删除', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (58, 'mall.goods/export', '导出', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (59, 'mall.goods/modify', '属性修改', 2, 1, 1589580432, 1589580432);
INSERT INTO `yp_system_node` VALUES (60, 'system.quick', '快捷入口管理', 1, 1, 1589623188, 1589623188);
INSERT INTO `yp_system_node` VALUES (61, 'system.quick/index', '列表', 2, 1, 1589623188, 1589623188);
INSERT INTO `yp_system_node` VALUES (62, 'system.quick/add', '添加', 2, 1, 1589623188, 1589623188);
INSERT INTO `yp_system_node` VALUES (63, 'system.quick/edit', '编辑', 2, 1, 1589623188, 1589623188);
INSERT INTO `yp_system_node` VALUES (64, 'system.quick/delete', '删除', 2, 1, 1589623188, 1589623188);
INSERT INTO `yp_system_node` VALUES (65, 'system.quick/export', '导出', 2, 1, 1589623188, 1589623188);
INSERT INTO `yp_system_node` VALUES (66, 'system.quick/modify', '属性修改', 2, 1, 1589623188, 1589623188);
INSERT INTO `yp_system_node` VALUES (67, 'system.log', '操作日志管理', 1, 1, 1589623188, 1589623188);
INSERT INTO `yp_system_node` VALUES (68, 'system.log/index', '列表', 2, 1, 1589623188, 1589623188);
INSERT INTO `yp_system_node` VALUES (69, 'news.cate', 'news_cate', 1, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (70, 'news.cate/index', '列表', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (71, 'news.cate/add', '添加', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (72, 'news.cate/edit', '编辑', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (73, 'news.cate/delete', '删除', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (74, 'news.cate/export', '导出', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (75, 'news.cate/modify', '属性修改', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (76, 'news.details', 'news_details', 1, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (77, 'news.details/index', '列表', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (78, 'news.details/add', '添加', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (79, 'news.details/edit', '编辑', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (80, 'news.details/delete', '删除', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (81, 'news.details/export', '导出', 2, 1, 1609127534, 1609127534);
INSERT INTO `yp_system_node` VALUES (82, 'news.details/modify', '属性修改', 2, 1, 1609127534, 1609127534);

-- ----------------------------
-- Table structure for yp_system_quick
-- ----------------------------
DROP TABLE IF EXISTS `yp_system_quick`;
CREATE TABLE `yp_system_quick`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '快捷入口名称',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '快捷链接',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(1:禁用,2:启用)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `create_time` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统快捷入口表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_system_quick
-- ----------------------------
INSERT INTO `yp_system_quick` VALUES (1, '管理员管理', 'fa fa-user', 'system.admin/index', 0, 1, '', 1589624097, 1589624792, NULL);
INSERT INTO `yp_system_quick` VALUES (2, '角色管理', 'fa fa-bitbucket-square', 'system.auth/index', 0, 1, '', 1589624772, 1589624781, NULL);
INSERT INTO `yp_system_quick` VALUES (3, '菜单管理', 'fa fa-tree', 'system.menu/index', 0, 1, NULL, 1589624097, 1589624792, NULL);
INSERT INTO `yp_system_quick` VALUES (6, '节点管理', 'fa fa-list', 'system.node/index', 0, 1, NULL, 1589624772, 1589624781, NULL);
INSERT INTO `yp_system_quick` VALUES (7, '配置管理', 'fa fa-asterisk', 'system.config/index', 0, 1, NULL, 1589624097, 1589624792, NULL);
INSERT INTO `yp_system_quick` VALUES (8, '上传管理', 'fa fa-arrow-up', 'system.uploadfile/index', 0, 1, NULL, 1589624772, 1589624781, NULL);
INSERT INTO `yp_system_quick` VALUES (10, '商品分类', 'fa fa-calendar-check-o', 'mall.cate/index', 0, 1, NULL, 1589624097, 1589624792, NULL);
INSERT INTO `yp_system_quick` VALUES (11, '商品管理', 'fa fa-list', 'mall.goods/index', 0, 1, NULL, 1589624772, 1589624781, NULL);

-- ----------------------------
-- Table structure for yp_system_uploadfile
-- ----------------------------
DROP TABLE IF EXISTS `yp_system_uploadfile`;
CREATE TABLE `yp_system_uploadfile`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `upload_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `original_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件原名',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物理路径',
  `image_width` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '宽度',
  `image_height` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '高度',
  `image_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片类型',
  `image_frames` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '图片帧数',
  `mime_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'mime类型',
  `file_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小',
  `file_ext` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sha1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `upload_time` int(10) NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `upload_type`(`upload_type`) USING BTREE,
  INDEX `original_name`(`original_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 303 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传文件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yp_system_uploadfile
-- ----------------------------
INSERT INTO `yp_system_uploadfile` VALUES (286, 'alioss', 'image/jpeg', 'https://lxn-99php.oss-cn-shenzhen.aliyuncs.com/upload/20191111/0a6de1ac058ee134301501899b84ecb1.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', NULL, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (287, 'alioss', 'image/jpeg', 'https://lxn-99php.oss-cn-shenzhen.aliyuncs.com/upload/20191111/46d7384f04a3bed331715e86a4095d15.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', NULL, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (288, 'alioss', 'image/x-icon', 'https://lxn-99php.oss-cn-shenzhen.aliyuncs.com/upload/20191111/7d32671f4c1d1b01b0b28f45205763f9.ico', '', '', '', 0, 'image/x-icon', 0, 'ico', '', NULL, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (289, 'alioss', 'image/jpeg', 'https://lxn-99php.oss-cn-shenzhen.aliyuncs.com/upload/20191111/28cefa547f573a951bcdbbeb1396b06f.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', NULL, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (290, 'alioss', 'image/jpeg', 'https://lxn-99php.oss-cn-shenzhen.aliyuncs.com/upload/20191111/2c412adf1b30c8be3a913e603c7b6e4a.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', NULL, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (291, 'alioss', 'timg (1).jpg', 'http://easyadmin.oss-cn-shenzhen.aliyuncs.com/upload/20191113/ff793ced447febfa9ea2d86f9f88fa8e.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', 1573612437, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (296, 'txcos', '22243.jpg', 'https://easyadmin-1251997243.cos.ap-guangzhou.myqcloud.com/upload/20191114/2381eaf81208ac188fa994b6f2579953.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', 1573712153, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (297, 'local', 'timg.jpg', 'http://admin.host/upload/20200423/5055a273cf8e3f393d699d622b74f247.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', 1587614155, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (298, 'local', 'timg.jpg', 'http://admin.host/upload/20200423/243f4e59f1b929951ef79c5f8be7468a.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', 1587614269, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (299, 'local', 'head.jpg', 'http://admin.host/upload/20200512/a5ce9883379727324f5686ef61205ce2.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', 1589255649, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (300, 'local', '896e5b87c9ca70e4.jpg', 'http://admin.host/upload/20200514/577c65f101639f53dbbc9e7aa346f81c.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', 1589427798, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (301, 'local', '896e5b87c9ca70e4.jpg', 'http://admin.host/upload/20200514/98fc09b0c4ad4d793a6f04bef79a0edc.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', 1589427840, NULL, NULL);
INSERT INTO `yp_system_uploadfile` VALUES (302, 'local', '18811e7611c8f292.jpg', 'http://admin.host/upload/20200514/e1c6c9ef6a4b98b8f7d95a1a0191a2df.jpg', '', '', '', 0, 'image/jpeg', 0, 'jpg', '', 1589438645, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
