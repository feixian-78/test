/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80045 (8.0.45)
 Source Host           : localhost:3306
 Source Schema         : cl08898320

 Target Server Type    : MySQL
 Target Server Version : 80045 (8.0.45)
 File Encoding         : 65001

 Date: 19/05/2026 23:02:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for caigoudingdan
-- ----------------------------
DROP TABLE IF EXISTS `caigoudingdan`;
CREATE TABLE `caigoudingdan`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caigoubianhao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '采购编号',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '规格',
  `caigoushuliang` int NULL DEFAULT NULL COMMENT '采购数量',
  `jiage` double NULL DEFAULT NULL COMMENT '价格',
  `caigouzongjia` double NULL DEFAULT NULL COMMENT '采购总价',
  `gongyingshangmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  `caigouriqi` datetime NULL DEFAULT NULL COMMENT '采购日期',
  `caigouzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '采购账号',
  `caigouxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '采购姓名',
  `sfsh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `caigoubianhao`(`caigoubianhao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '采购订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of caigoudingdan
-- ----------------------------
INSERT INTO `caigoudingdan` VALUES (11, '2026-04-15 01:57:06', '1776189393649', 'iGame GeForce RTX 4090 Vulcan OC', '独立显卡', '24GB GDDR6X', 1, 10, 10, '供应商名称1', '19819881111', '2026-04-15 01:56:33', '采购账号1', '采购姓名1', '是', '   ');
INSERT INTO `caigoudingdan` VALUES (12, '2026-04-22 17:32:07', '1776850292611', '七彩虹 RTX 5080 火神水神AD Ultra', '七彩虹 5080系列显卡', '战斧豪华版 16G', 20, 8999, 179980, '供应商名称2', '19819881112', '2026-04-22 17:31:32', '采购账号1', '采购姓名1', '是', '已入库');
INSERT INTO `caigoudingdan` VALUES (13, '2026-05-15 22:37:56', '1778855852109', '七彩虹雷神Pro', '七彩虹 5080系列显卡', '豪华版', 60, 3999, 239940, '供应商名称1', '19819881111', '2026-05-15 22:37:32', '采购账号1', '采购姓名1', '是', '已入库');

-- ----------------------------
-- Table structure for caigourenyuan
-- ----------------------------
DROP TABLE IF EXISTS `caigourenyuan`;
CREATE TABLE `caigourenyuan`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caigouzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '采购账号',
  `mima` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `caigouxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '采购姓名',
  `touxiang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `caigouzhanghao`(`caigouzhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '采购人员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of caigourenyuan
-- ----------------------------
INSERT INTO `caigourenyuan` VALUES (111, '2025-02-19 14:42:23', '采购账号1', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '采购姓名1', 'file/caigourenyuanTouxiang1.jpg', '男', '19819881111', '是', '');
INSERT INTO `caigourenyuan` VALUES (112, '2025-02-19 14:42:23', '采购账号2', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '采购姓名2', 'file/caigourenyuanTouxiang2.jpg', '男', '19819881112', '是', '');
INSERT INTO `caigourenyuan` VALUES (113, '2025-02-19 14:42:23', '采购账号3', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '采购姓名3', 'file/caigourenyuanTouxiang3.jpg', '男', '19819881113', '是', '');

-- ----------------------------
-- Table structure for cangguanyuan
-- ----------------------------
DROP TABLE IF EXISTS `cangguanyuan`;
CREATE TABLE `cangguanyuan`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cangguanyuanzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '仓管员账号',
  `mima` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `cangguanyuanxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '仓管员姓名',
  `touxiang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cangguanyuanzhanghao`(`cangguanyuanzhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '仓管员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cangguanyuan
-- ----------------------------
INSERT INTO `cangguanyuan` VALUES (31, '2025-02-19 14:42:22', '仓管员账号1', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '仓管员小明', 'file/cangguanyuanTouxiang1.jpg', '男', '19819881111', '是', '');
INSERT INTO `cangguanyuan` VALUES (32, '2025-02-19 14:42:22', '仓管员账号2', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '仓管员小敏', 'file/cangguanyuanTouxiang2.jpg', '女', '19819881112', '是', '');
INSERT INTO `cangguanyuan` VALUES (33, '2025-02-19 14:42:22', '仓管员账号3', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '仓管员小美', 'file/cangguanyuanTouxiang3.jpg', '女', '19819881113', '是', '');
INSERT INTO `cangguanyuan` VALUES (34, '2025-02-19 14:42:22', '仓管员账号4', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '仓管员小强', 'file/1779202222597.jpeg', '男', '19819881114', '是', '');
INSERT INTO `cangguanyuan` VALUES (35, '2025-02-19 14:42:22', 'user005', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '仓管员姓名5', 'file/cangguanyuanTouxiang5.jpg', '女', '19819881115', '是', '');

-- ----------------------------
-- Table structure for cangku
-- ----------------------------
DROP TABLE IF EXISTS `cangku`;
CREATE TABLE `cangku`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cangku` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '仓库',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cangku`(`cangku` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '仓库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cangku
-- ----------------------------
INSERT INTO `cangku` VALUES (1, '2025-02-19 14:42:23', '广州中心仓');
INSERT INTO `cangku` VALUES (2, '2025-02-19 14:42:23', '华南仓库');
INSERT INTO `cangku` VALUES (6, '2025-02-19 14:42:23', '顺德大良仓库');
INSERT INTO `cangku` VALUES (7, '2025-02-19 14:42:23', '中山火炬仓库');
INSERT INTO `cangku` VALUES (8, '2025-02-19 14:42:23', '深圳大运仓库');
INSERT INTO `cangku` VALUES (9, '2025-02-19 14:42:23', '华东仓库');
INSERT INTO `cangku` VALUES (10, '2025-02-19 14:42:23', '华北仓库');

-- ----------------------------
-- Table structure for chukuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `chukuxinxi`;
CREATE TABLE `chukuxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '规格',
  `cunfanghuowei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '存放货位',
  `shuliang` int NULL DEFAULT NULL COMMENT '数量',
  `kehumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '客户名称',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  `chukuriqi` datetime NULL DEFAULT NULL COMMENT '出库日期',
  `cangguanyuanzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '仓管员账号',
  `cangguanyuanxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '仓管员姓名',
  `beizhu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '出库信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chukuxinxi
-- ----------------------------
INSERT INTO `chukuxinxi` VALUES (11, '2026-04-15 01:55:04', '1776189299529', 'iGame GeForce RTX 4090 Vulcan OC', '独立显卡', '24GB GDDR6X', NULL, 10, NULL, NULL, '2026-04-15 01:54:59', '仓管员账号1', '仓管员姓名1', NULL);
INSERT INTO `chukuxinxi` VALUES (12, '2026-04-15 02:03:15', '1776189624011', 'iGame GeForce RTX 4090 Vulcan OC', '独立显卡', '24GB GDDR6X', NULL, 10, '客户名称1', '19819881111', '2026-04-15 02:03:16', NULL, NULL, NULL);
INSERT INTO `chukuxinxi` VALUES (13, '2026-04-15 11:09:13', '1776222428579', '七彩虹RTX5060 战斧 ultra AD OC 8GB', '七彩虹 显卡Ultra系列', 'RTX 5060 NVIDIA 8GB', NULL, 2, '客户名称2', '19819881112', '2026-04-15 11:09:13', '仓管员账号1', '仓管员姓名1', NULL);
INSERT INTO `chukuxinxi` VALUES (14, '2026-04-15 18:54:23', '1776250457030', '七彩虹 B760M主板DDR4/DDR5', '七彩虹 760/790主板', '供电规格：8+1+1相供电  主板规格：M-ATX (245mm*210mm)', 'A区-01货架', 2, '客户名称1', '19819881111', '2026-04-15 18:54:17', NULL, NULL, NULL);
INSERT INTO `chukuxinxi` VALUES (15, '2026-04-22 17:42:35', '1776850767499', '七彩虹 RTX 5080 火神水神AD Ultra', '七彩虹 5080系列显卡', '战斧豪华版 16G', 'A区-02货架', 30, NULL, NULL, '2026-04-22 17:42:35', '仓管员账号1', '仓管员姓名1', NULL);
INSERT INTO `chukuxinxi` VALUES (16, '2026-05-15 22:34:53', '1778855661368', '七彩虹雷神Pro', '七彩虹 5080系列显卡', '豪华版', 'A区01号', 20, '客户名称2', '19819881112', '2026-05-15 22:34:21', '仓管员账号1', '仓管员姓名1', '客户要求尽快出库');
INSERT INTO `chukuxinxi` VALUES (17, '2026-05-15 22:40:17', '1778855969576', '七彩虹雷神Pro', '七彩虹 5080系列显卡', '豪华版', 'A区01号', 50, '客户名称4', '19819881114', '2026-05-15 22:40:18', '仓管员账号1', '仓管员姓名1', NULL);
INSERT INTO `chukuxinxi` VALUES (18, '2026-05-15 23:12:53', '1778857864165', '七彩虹 B760M主板DDR4/DDR5', '七彩虹 760/790主板', '供电规格：8+1+1相供电  主板规格：M-ATX (245mm*210mm)', NULL, 20, '客户名称4', '19819881114', '2026-05-15 23:12:54', '仓管员账号1', '仓管员姓名1', NULL);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, '2025-02-19 14:42:23', 'swiper1', 'file/swiperPicture1.jpg');
INSERT INTO `config` VALUES (2, '2025-02-19 14:42:23', 'swiper2', 'file/swiperPicture2.jpg');
INSERT INTO `config` VALUES (3, '2025-02-19 14:42:23', 'swiper3', 'file/swiperPicture3.jpg');

-- ----------------------------
-- Table structure for gongyingshang
-- ----------------------------
DROP TABLE IF EXISTS `gongyingshang`;
CREATE TABLE `gongyingshang`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '供应商名称',
  `dizhi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '供应商' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gongyingshang
-- ----------------------------
INSERT INTO `gongyingshang` VALUES (1, '2025-02-19 14:42:23', '七彩虹一级代理商', '广州市天河区', '19819881111');
INSERT INTO `gongyingshang` VALUES (2, '2025-02-19 14:42:23', '广州电脑配件供应商', '深圳市福田区', '19819881112');
INSERT INTO `gongyingshang` VALUES (3, '2025-02-19 14:42:23', '深圳硬件渠道商', '佛山市南海区', '19819881113');
INSERT INTO `gongyingshang` VALUES (4, '2025-02-19 14:42:23', '深圳华强北', '深圳市龙华区', '19819881114');
INSERT INTO `gongyingshang` VALUES (5, '2025-02-19 14:42:23', '珠海硬盘供应商', '珠海市香洲区', '19819881115');
INSERT INTO `gongyingshang` VALUES (6, '2025-02-19 14:42:23', '惠州内存供应商', '惠州市横河县', '19819881116');
INSERT INTO `gongyingshang` VALUES (7, '2025-02-19 14:42:23', '北京AMD-CPU供应商', '北京市滨海路', '19819881117');
INSERT INTO `gongyingshang` VALUES (8, '2025-02-19 14:42:23', '上海英特尔CPU供应商', '上海市外滩', '19819881118');

-- ----------------------------
-- Table structure for kehu
-- ----------------------------
DROP TABLE IF EXISTS `kehu`;
CREATE TABLE `kehu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户名称',
  `dizhi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '客户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kehu
-- ----------------------------
INSERT INTO `kehu` VALUES (6, '2025-02-19 14:42:23', '东莞装机猿', '东莞市南城区', '19819881116');
INSERT INTO `kehu` VALUES (7, '2025-02-19 14:42:23', '广州DIY电脑城', '广州市白云区', '19819881117');
INSERT INTO `kehu` VALUES (8, '2025-02-19 14:42:23', '企业采购客户', '深圳市大运区', '19819881118');
INSERT INTO `kehu` VALUES (9, '2025-02-19 14:42:23', '深圳电脑城客户', '深圳市宝安区', '19819881119');
INSERT INTO `kehu` VALUES (10, '2025-02-19 14:42:23', '广州装机客户', '广州市钟落潭区', '19216820210');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '2025-02-19 14:42:23', '[{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common27\",\"menu\":\"管理员管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"仓管员\",\"menuJump\":\"列表\",\"tableName\":\"cangguanyuan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"销售人员\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshourenyuan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"采购人员\",\"menuJump\":\"列表\",\"tableName\":\"caigourenyuan\"}],\"fontClass\":\"icon-user7\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9d;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"供应商\",\"menuJump\":\"列表\",\"tableName\":\"gongyingshang\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"仓库\",\"menuJump\":\"列表\",\"tableName\":\"cangku\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"客户\",\"menuJump\":\"列表\",\"tableName\":\"kehu\"}],\"fontClass\":\"icon-common24\",\"menu\":\"基础信息管理\",\"unicode\":\"&#xee07;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品分类\",\"menuJump\":\"列表\",\"tableName\":\"shangpinfenlei\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"库存统计\",\"首页总数\",\"首页统计\",\"入库\",\"出库\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"库存统计\",\"首页总数\",\"首页统计\",\"入库\",\"出库\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"配件入库\",\"menuJump\":\"列表\",\"tableName\":\"shangpinruku\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"采购量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\",\"采购量统计\",\"首页总数\",\"首页统计\",\"审核\",\"修改\"],\"menu\":\"采购订单\",\"menuJump\":\"列表\",\"tableName\":\"caigoudingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"采购入库管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"出库信息\",\"menuJump\":\"列表\",\"tableName\":\"chukuxinxi\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"销售量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\",\"销售量统计\",\"首页总数\",\"首页统计\"],\"menu\":\"销售订单\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshoudingdan\"}],\"fontClass\":\"icon-common1\",\"menu\":\"销售出库管理\",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"users\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"库存统计\",\"首页总数\",\"首页统计\",\"入库\",\"出库\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\",\"入库\",\"出库\",\"首页总数\",\"首页统计\",\"库存统计\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品入库\",\"menuJump\":\"列表\",\"tableName\":\"shangpinruku\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"采购量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"采购订单\",\"menuJump\":\"列表\",\"tableName\":\"caigoudingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"采购入库管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"出库信息\",\"menuJump\":\"列表\",\"tableName\":\"chukuxinxi\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"销售量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"销售订单\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshoudingdan\"}],\"fontClass\":\"icon-common1\",\"menu\":\"销售出库管理\",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"cangguanyuan\",\"roleName\":\"仓管员\",\"tableName\":\"cangguanyuan\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"库存统计\",\"首页总数\",\"首页统计\",\"入库\",\"出库\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"销售量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"删除\",\"销售量统计\",\"首页总数\",\"首页统计\",\"修改\"],\"menu\":\"销售订单\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshoudingdan\"}],\"fontClass\":\"icon-common1\",\"menu\":\"销售出库管理\",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"xiaoshourenyuan\",\"roleName\":\"销售人员\",\"tableName\":\"xiaoshourenyuan\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"库存统计\",\"首页总数\",\"首页统计\",\"入库\",\"出库\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"采购量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"采购量统计\",\"首页总数\",\"首页统计\"],\"menu\":\"采购订单\",\"menuJump\":\"列表\",\"tableName\":\"caigoudingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"采购入库管理\",\"unicode\":\"&#xedae;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"caigourenyuan\",\"roleName\":\"采购人员\",\"tableName\":\"caigourenyuan\"}]');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangpinfenlei`(`shangpinfenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (1, '2025-02-19 14:42:23', 'DDR5 16GB 内存条');
INSERT INTO `shangpinfenlei` VALUES (2, '2025-02-19 14:42:23', '1TB NVMe 固态硬盘');
INSERT INTO `shangpinfenlei` VALUES (3, '2025-02-19 14:42:23', '七彩虹 B760M 主板');
INSERT INTO `shangpinfenlei` VALUES (4, '2025-02-19 14:42:23', '七彩虹 5080系列显卡');
INSERT INTO `shangpinfenlei` VALUES (5, '2025-02-19 14:42:23', '七彩虹 显卡Ultra系列');
INSERT INTO `shangpinfenlei` VALUES (6, '2025-02-19 14:42:23', '硬盘');
INSERT INTO `shangpinfenlei` VALUES (7, '2025-02-19 14:42:23', '电竞内存');
INSERT INTO `shangpinfenlei` VALUES (8, '2025-02-19 14:42:23', 'CPU');
INSERT INTO `shangpinfenlei` VALUES (9, '2025-02-19 14:42:23', '七彩虹 760/790主板');
INSERT INTO `shangpinfenlei` VALUES (10, '2025-02-19 14:42:23', '独立显卡');

-- ----------------------------
-- Table structure for shangpinruku
-- ----------------------------
DROP TABLE IF EXISTS `shangpinruku`;
CREATE TABLE `shangpinruku`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '规格',
  `shengchanpicihao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生产批次号',
  `cunfanghuowei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '存放货位',
  `shuliang` int NULL DEFAULT NULL COMMENT '数量',
  `gongyingshangmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  `rukuriqi` datetime NULL DEFAULT NULL COMMENT '入库日期',
  `cangguanyuanzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '仓管员账号',
  `cangguanyuanxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '仓管员姓名',
  `beizhu` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品入库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinruku
-- ----------------------------
INSERT INTO `shangpinruku` VALUES (11, '2026-04-15 01:55:12', '1776189308498', 'iGame GeForce RTX 4090 Vulcan OC', '独立显卡', '24GB GDDR6X', NULL, NULL, 2, NULL, NULL, '2026-04-15 01:55:08', '仓管员账号1', '仓管员姓名1', NULL);
INSERT INTO `shangpinruku` VALUES (12, '2026-04-15 02:03:29', '1776189393649', 'iGame GeForce RTX 4090 Vulcan OC', '独立显卡', '24GB GDDR6X', NULL, NULL, 1, '供应商名称1', '19819881111', '2026-04-15 02:03:29', NULL, NULL, NULL);
INSERT INTO `shangpinruku` VALUES (13, '2026-04-15 22:20:53', '1776262834775', '七彩虹 RTX 5080 火神水神AD Ultra', '七彩虹 5080系列显卡', '战斧豪华版 16G', '2020.3.1', 'A区-02货架', 100, '供应商名称1', '19819881111', '2026-04-15 22:20:34', '仓管员账号1', '仓管员姓名1', NULL);
INSERT INTO `shangpinruku` VALUES (14, '2026-04-22 17:34:18', '1776850292611', '七彩虹 RTX 5080 火神水神AD Ultra', '七彩虹 5080系列显卡', '战斧豪华版 16G', NULL, NULL, 20, '供应商名称2', '19819881112', '2026-04-22 17:34:18', '仓管员账号1', '仓管员姓名1', NULL);
INSERT INTO `shangpinruku` VALUES (15, '2026-05-15 22:35:36', '1778855729542', '七彩虹雷神Pro', '七彩虹 5080系列显卡', '豪华版', '2024.10.6', 'A区01号', 50, '供应商名称1', '19819881111', '2026-05-15 22:35:29', '仓管员账号1', '仓管员姓名1', NULL);
INSERT INTO `shangpinruku` VALUES (16, '2026-05-15 22:38:38', '1778855852109', '七彩虹雷神Pro', '七彩虹 5080系列显卡', '豪华版', NULL, NULL, 60, '供应商名称1', '19819881111', '2026-05-15 22:38:38', '仓管员账号1', '仓管员姓名1', NULL);
INSERT INTO `shangpinruku` VALUES (17, '2026-05-15 23:12:16', '1778857829193', '七彩虹RTX5060 战斧 ultra AD OC 8GB', '七彩虹 显卡Ultra系列', 'RTX 5060 NVIDIA 8GB', NULL, NULL, 20, '供应商名称4', '19819881114', '2026-05-15 23:12:16', '仓管员账号1', '仓管员姓名1', NULL);

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品分类',
  `cangku` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '仓库',
  `guige` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '规格',
  `shengchanpicihao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生产批次号',
  `cunfanghuowei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '存放货位',
  `tupian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '图片',
  `jiage` double NULL DEFAULT NULL COMMENT '价格',
  `shuliang` int NULL DEFAULT NULL COMMENT '数量',
  `shangpinxiangqing` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '商品详情',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangpinbianhao`(`shangpinbianhao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES (10, '2025-02-19 14:42:23', '11111111110', 'iGame GeForce RTX 4090 Vulcan OC', '独立显卡', '广州中心仓', '24GB GDDR6X', NULL, NULL, 'file/shangpinxinxiTupian10.jpg', 10, 3, '<p>商品详情10</p>');
INSERT INTO `shangpinxinxi` VALUES (11, '2026-04-15 10:44:31', '1776220851291', '七彩虹RTX5060 战斧 ultra AD OC 8GB', '七彩虹 显卡Ultra系列', '深圳大运仓库', 'RTX 5060 NVIDIA 8GB', '2026.1.1', 'B区-02货架', 'file/1776262034375.png', 2999, 38, '<p><span style=\"font-size: 14px;\">产品尺寸</span></p><p>长300.5mm 宽120mm 高50mm</p><p><span style=\"font-size: 14px;\">显卡长度</span></p><p>30.05cm</p><p><span style=\"font-size: 14px;\">散热风扇</span></p><p>三风扇</p><p><span style=\"font-size: 14px;\">接口</span></p><p>DP HDMI</p><p><span style=\"font-size: 14px;\">芯片组</span></p><p>NVIDIA</p><p><span style=\"font-size: 14px;\">灯效</span></p><p>RGB</p><p><span style=\"font-size: 14px;\">显卡型号</span></p><p>RTX 5060</p><p><span style=\"font-size: 14px;\">接口类型</span></p><p>PCIe 5.0</p><p><span style=\"font-size: 14px;\">显存类型</span></p><p>GDDR7</p><p><span style=\"font-size: 14px;\">显存位宽</span></p><p>其他</p><p><span style=\"font-size: 14px;\">显存容量</span></p><p>8GB</p>');
INSERT INTO `shangpinxinxi` VALUES (12, '2026-04-15 11:00:44', '1776221437127', '七彩虹 B760M主板DDR4/DDR5', '七彩虹 760/790主板', '广州中心仓', '供电规格：8+1+1相供电  主板规格：M-ATX (245mm*210mm)', '2025.4.16', 'A区-01货架', 'file/1776262021020.png', 599, 8, '<p><img src=\"http://localhost:8080/cl08898320/file/1776222035357.png\" alt=\"\" data-href=\"\" style=\"\"/></p>');
INSERT INTO `shangpinxinxi` VALUES (13, '2026-04-15 22:19:56', '1776262679943', '七彩虹 RTX 5080 火神水神AD Ultra', '七彩虹 5080系列显卡', '华南仓库', '战斧豪华版 16G', '2020.3.1', 'A区-02货架', 'file/1776262740662.png', 8999, 190, '<p><img src=\"http://localhost:8080/cl08898320/file/1776262789067.png\" alt=\"\" data-href=\"\" style=\"\"/></p>');
INSERT INTO `shangpinxinxi` VALUES (14, '2026-05-15 22:31:53', '1778855390317', '七彩虹雷神Pro', '七彩虹 5080系列显卡', '华北仓库', '豪华版', '2024.10.6', 'A区01号', 'file/1778855503631.png', 3999, 90, NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (5, 1, 'admin ', 'users', '管理员', '4gv66xeetdobftqovxqszfg8t0r1or99', '2026-05-16 02:09:40', '2026-05-19 23:29:31');
INSERT INTO `token` VALUES (6, 31, '仓管员账号1 ', 'cangguanyuan', '仓管员', 'b3btwwrfygnrg6rwc030vzaqh6zayyx7', '2026-05-16 02:16:15', '2026-05-19 23:54:29');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `role` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '2025-02-19 14:42:23', 'admin', 'admin', '管理员');

-- ----------------------------
-- Table structure for xiaoshoudingdan
-- ----------------------------
DROP TABLE IF EXISTS `xiaoshoudingdan`;
CREATE TABLE `xiaoshoudingdan`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshoudingdan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '销售订单',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '规格',
  `jiage` double NULL DEFAULT NULL COMMENT '价格',
  `shuliang` int NULL DEFAULT NULL COMMENT '数量',
  `shangpinzongjia` double NULL DEFAULT NULL COMMENT '商品总价',
  `kehumingcheng` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '客户名称',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  `xiaoshouriqi` datetime NULL DEFAULT NULL COMMENT '销售日期',
  `xiaoshouzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '销售账号',
  `xiaoshouxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '销售姓名',
  `sfsh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xiaoshoudingdan`(`xiaoshoudingdan` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '销售订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiaoshoudingdan
-- ----------------------------
INSERT INTO `xiaoshoudingdan` VALUES (11, '2026-04-15 02:00:41', '1776189624011', 'iGame GeForce RTX 4090 Vulcan OC', '独立显卡', '24GB GDDR6X', 10, 10, 100, '客户名称1', '19819881111', '2026-04-15 02:00:24', '销售账号1', '销售姓名1', '是', '通过');
INSERT INTO `xiaoshoudingdan` VALUES (12, '2026-04-15 11:07:31', '1776222428579', '七彩虹RTX5060 战斧 ultra AD OC 8GB', '七彩虹 显卡Ultra系列', 'RTX 5060 NVIDIA 8GB', 2999, 2, 5998, '客户名称2', '19819881112', '2026-04-15 11:07:08', '销售账号1', '销售姓名1', '是', '已出库');
INSERT INTO `xiaoshoudingdan` VALUES (13, '2026-04-22 17:39:34', '1776850767499', '七彩虹 RTX 5080 火神水神AD Ultra', '七彩虹 5080系列显卡', '战斧豪华版 16G', 8999, 30, 269970, NULL, NULL, '2026-04-22 17:39:27', '销售账号1', '销售姓名1', '是', '已出库');
INSERT INTO `xiaoshoudingdan` VALUES (14, '2026-05-15 22:39:43', '1778855969576', '七彩虹雷神Pro', '七彩虹 5080系列显卡', '豪华版', 3999, 50, 199950, '客户名称4', '19819881114', '2026-05-15 22:39:29', '销售账号1', '销售姓名1', '是', '已出库');
INSERT INTO `xiaoshoudingdan` VALUES (15, '2026-05-15 23:11:36', '1778857864165', '七彩虹 B760M主板DDR4/DDR5', '七彩虹 760/790主板', '供电规格：8+1+1相供电  主板规格：M-ATX (245mm*210mm)', 599, 20, 11980, '客户名称4', '19819881114', '2026-05-15 23:11:04', '销售账号1', '销售姓名1', '是', '允许出库');
INSERT INTO `xiaoshoudingdan` VALUES (16, '2026-05-15 23:57:13', '1778860625218', '七彩虹 B760M主板DDR4/DDR5', '七彩虹 760/790主板', '供电规格：8+1+1相供电  主板规格：M-ATX (245mm*210mm)', 599, 10, 5990, '客户名称2', '19819881112', '2026-05-15 23:57:05', '销售账号1', '销售姓名1', '待审核', NULL);

-- ----------------------------
-- Table structure for xiaoshourenyuan
-- ----------------------------
DROP TABLE IF EXISTS `xiaoshourenyuan`;
CREATE TABLE `xiaoshourenyuan`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshouzhanghao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '销售账号',
  `mima` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `xiaoshouxingming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '销售姓名',
  `touxiang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xiaoshouzhanghao`(`xiaoshouzhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '销售人员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiaoshourenyuan
-- ----------------------------
INSERT INTO `xiaoshourenyuan` VALUES (41, '2025-02-19 14:42:22', '销售账号1', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '销售-曾哥', 'file/xiaoshourenyuanTouxiang1.jpg', '男', '19819881111', '是', '');
INSERT INTO `xiaoshourenyuan` VALUES (42, '2025-02-19 14:42:22', '销售账号2', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '销售-邱总', 'file/xiaoshourenyuanTouxiang2.jpg', '男', '19819881112', '是', '');
INSERT INTO `xiaoshourenyuan` VALUES (43, '2025-02-19 14:42:22', '销售账号3', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '销售-张哥', 'file/xiaoshourenyuanTouxiang3.jpg', '男', '19819881113', '是', '');

SET FOREIGN_KEY_CHECKS = 1;
