-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: cl08898320
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl08898320`
--

/*!40000 DROP DATABASE IF EXISTS `cl08898320`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl08898320` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl08898320`;

--
-- Table structure for table `caigoudingdan`
--

DROP TABLE IF EXISTS `caigoudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caigoudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caigoubianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '采购编号',
  `shangpinmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规格',
  `caigoushuliang` int(11) DEFAULT NULL COMMENT '采购数量',
  `jiage` double DEFAULT NULL COMMENT '价格',
  `caigouzongjia` double DEFAULT NULL COMMENT '采购总价',
  `gongyingshangmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商名称',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `caigouriqi` datetime DEFAULT NULL COMMENT '采购日期',
  `caigouzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '采购账号',
  `caigouxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '采购姓名',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caigoubianhao` (`caigoubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='采购订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caigoudingdan`
--

LOCK TABLES `caigoudingdan` WRITE;
/*!40000 ALTER TABLE `caigoudingdan` DISABLE KEYS */;
INSERT INTO `caigoudingdan` VALUES (1,'2025-02-19 06:42:23','1111111111','商品名称1','商品分类1','规格1',1,1,1,'供应商名称1','19819881111','2025-02-19 14:42:23','采购账号1','采购姓名1','是',''),(2,'2025-02-19 06:42:23','2222222222','商品名称2','商品分类2','规格2',2,2,2,'供应商名称2','19819881112','2025-02-19 14:42:23','采购账号2','采购姓名2','是',''),(3,'2025-02-19 06:42:23','3333333333','商品名称3','商品分类3','规格3',3,3,3,'供应商名称3','19819881113','2025-02-19 14:42:23','采购账号3','采购姓名3','是',''),(4,'2025-02-19 06:42:23','4444444444','商品名称4','商品分类4','规格4',4,4,4,'供应商名称4','19819881114','2025-02-19 14:42:23','采购账号4','采购姓名4','是',''),(5,'2025-02-19 06:42:23','5555555555','商品名称5','商品分类5','规格5',5,5,5,'供应商名称5','19819881115','2025-02-19 14:42:23','采购账号5','采购姓名5','是',''),(6,'2025-02-19 06:42:23','6666666666','商品名称6','商品分类6','规格6',6,6,6,'供应商名称6','19819881116','2025-02-19 14:42:23','采购账号6','采购姓名6','是',''),(7,'2025-02-19 06:42:23','7777777777','商品名称7','商品分类7','规格7',7,7,7,'供应商名称7','19819881117','2025-02-19 14:42:23','采购账号7','采购姓名7','是',''),(8,'2025-02-19 06:42:23','8888888888','商品名称8','商品分类8','规格8',8,8,8,'供应商名称8','19819881118','2025-02-19 14:42:23','采购账号8','采购姓名8','是',''),(9,'2025-02-19 06:42:23','9999999999','商品名称9','商品分类9','规格9',9,9,9,'供应商名称9','19819881119','2025-02-19 14:42:23','采购账号9','采购姓名9','是',''),(10,'2025-02-19 06:42:23','11111111110','商品名称10','商品分类10','规格10',10,10,10,'供应商名称10','198198811110','2025-02-19 14:42:23','采购账号10','采购姓名10','是','');
/*!40000 ALTER TABLE `caigoudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caigourenyuan`
--

DROP TABLE IF EXISTS `caigourenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caigourenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caigouzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '采购账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `caigouxingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '采购姓名',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caigouzhanghao` (`caigouzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='采购人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caigourenyuan`
--

LOCK TABLES `caigourenyuan` WRITE;
/*!40000 ALTER TABLE `caigourenyuan` DISABLE KEYS */;
INSERT INTO `caigourenyuan` VALUES (111,'2025-02-19 06:42:23','采购账号1','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','采购姓名1','file/caigourenyuanTouxiang1.jpg','男','19819881111','是',''),(112,'2025-02-19 06:42:23','采购账号2','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','采购姓名2','file/caigourenyuanTouxiang2.jpg','男','19819881112','是',''),(113,'2025-02-19 06:42:23','采购账号3','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','采购姓名3','file/caigourenyuanTouxiang3.jpg','男','19819881113','是',''),(114,'2025-02-19 06:42:23','采购账号4','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','采购姓名4','file/caigourenyuanTouxiang4.jpg','男','19819881114','是',''),(115,'2025-02-19 06:42:23','采购账号5','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','采购姓名5','file/caigourenyuanTouxiang5.jpg','男','19819881115','是',''),(116,'2025-02-19 06:42:23','采购账号6','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','采购姓名6','file/caigourenyuanTouxiang6.jpg','男','19819881116','是',''),(117,'2025-02-19 06:42:23','采购账号7','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','采购姓名7','file/caigourenyuanTouxiang7.jpg','男','19819881117','是',''),(118,'2025-02-19 06:42:23','采购账号8','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','采购姓名8','file/caigourenyuanTouxiang8.jpg','男','19819881118','是',''),(119,'2025-02-19 06:42:23','采购账号9','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','采购姓名9','file/caigourenyuanTouxiang9.jpg','男','19819881119','是',''),(120,'2025-02-19 06:42:23','采购账号10','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','采购姓名10','file/caigourenyuanTouxiang10.jpg','男','198198811110','是','');
/*!40000 ALTER TABLE `caigourenyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cangguanyuan`
--

DROP TABLE IF EXISTS `cangguanyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cangguanyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cangguanyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '仓管员账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `cangguanyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '仓管员姓名',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cangguanyuanzhanghao` (`cangguanyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='仓管员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cangguanyuan`
--

LOCK TABLES `cangguanyuan` WRITE;
/*!40000 ALTER TABLE `cangguanyuan` DISABLE KEYS */;
INSERT INTO `cangguanyuan` VALUES (31,'2025-02-19 06:42:22','仓管员账号1','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','仓管员姓名1','file/cangguanyuanTouxiang1.jpg','男','19819881111','是',''),(32,'2025-02-19 06:42:22','仓管员账号2','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','仓管员姓名2','file/cangguanyuanTouxiang2.jpg','男','19819881112','是',''),(33,'2025-02-19 06:42:22','仓管员账号3','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','仓管员姓名3','file/cangguanyuanTouxiang3.jpg','男','19819881113','是',''),(34,'2025-02-19 06:42:22','仓管员账号4','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','仓管员姓名4','file/cangguanyuanTouxiang4.jpg','男','19819881114','是',''),(35,'2025-02-19 06:42:22','仓管员账号5','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','仓管员姓名5','file/cangguanyuanTouxiang5.jpg','男','19819881115','是',''),(36,'2025-02-19 06:42:22','仓管员账号6','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','仓管员姓名6','file/cangguanyuanTouxiang6.jpg','男','19819881116','是',''),(37,'2025-02-19 06:42:22','仓管员账号7','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','仓管员姓名7','file/cangguanyuanTouxiang7.jpg','男','19819881117','是',''),(38,'2025-02-19 06:42:22','仓管员账号8','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','仓管员姓名8','file/cangguanyuanTouxiang8.jpg','男','19819881118','是',''),(39,'2025-02-19 06:42:22','仓管员账号9','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','仓管员姓名9','file/cangguanyuanTouxiang9.jpg','男','19819881119','是',''),(40,'2025-02-19 06:42:22','仓管员账号10','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','仓管员姓名10','file/cangguanyuanTouxiang10.jpg','男','198198811110','是','');
/*!40000 ALTER TABLE `cangguanyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cangku`
--

DROP TABLE IF EXISTS `cangku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cangku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cangku` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '仓库',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cangku` (`cangku`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='仓库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cangku`
--

LOCK TABLES `cangku` WRITE;
/*!40000 ALTER TABLE `cangku` DISABLE KEYS */;
INSERT INTO `cangku` VALUES (1,'2025-02-19 06:42:23','仓库1'),(2,'2025-02-19 06:42:23','仓库2'),(3,'2025-02-19 06:42:23','仓库3'),(4,'2025-02-19 06:42:23','仓库4'),(5,'2025-02-19 06:42:23','仓库5'),(6,'2025-02-19 06:42:23','仓库6'),(7,'2025-02-19 06:42:23','仓库7'),(8,'2025-02-19 06:42:23','仓库8'),(9,'2025-02-19 06:42:23','仓库9'),(10,'2025-02-19 06:42:23','仓库10');
/*!40000 ALTER TABLE `cangku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chukuxinxi`
--

DROP TABLE IF EXISTS `chukuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `kehumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客户名称',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `chukuriqi` datetime DEFAULT NULL COMMENT '出库日期',
  `cangguanyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓管员账号',
  `cangguanyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓管员姓名',
  `beizhu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='出库信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chukuxinxi`
--

LOCK TABLES `chukuxinxi` WRITE;
/*!40000 ALTER TABLE `chukuxinxi` DISABLE KEYS */;
INSERT INTO `chukuxinxi` VALUES (1,'2025-02-19 06:42:23','1111111111','商品名称1','商品分类1','规格1',1,'客户名称1','19819881111','2025-02-19 14:42:23','仓管员账号1','仓管员姓名1','备注1'),(2,'2025-02-19 06:42:23','2222222222','商品名称2','商品分类2','规格2',2,'客户名称2','19819881112','2025-02-19 14:42:23','仓管员账号2','仓管员姓名2','备注2'),(3,'2025-02-19 06:42:23','3333333333','商品名称3','商品分类3','规格3',3,'客户名称3','19819881113','2025-02-19 14:42:23','仓管员账号3','仓管员姓名3','备注3'),(4,'2025-02-19 06:42:23','4444444444','商品名称4','商品分类4','规格4',4,'客户名称4','19819881114','2025-02-19 14:42:23','仓管员账号4','仓管员姓名4','备注4'),(5,'2025-02-19 06:42:23','5555555555','商品名称5','商品分类5','规格5',5,'客户名称5','19819881115','2025-02-19 14:42:23','仓管员账号5','仓管员姓名5','备注5'),(6,'2025-02-19 06:42:23','6666666666','商品名称6','商品分类6','规格6',6,'客户名称6','19819881116','2025-02-19 14:42:23','仓管员账号6','仓管员姓名6','备注6'),(7,'2025-02-19 06:42:23','7777777777','商品名称7','商品分类7','规格7',7,'客户名称7','19819881117','2025-02-19 14:42:23','仓管员账号7','仓管员姓名7','备注7'),(8,'2025-02-19 06:42:23','8888888888','商品名称8','商品分类8','规格8',8,'客户名称8','19819881118','2025-02-19 14:42:23','仓管员账号8','仓管员姓名8','备注8'),(9,'2025-02-19 06:42:23','9999999999','商品名称9','商品分类9','规格9',9,'客户名称9','19819881119','2025-02-19 14:42:23','仓管员账号9','仓管员姓名9','备注9'),(10,'2025-02-19 06:42:23','11111111110','商品名称10','商品分类10','规格10',10,'客户名称10','198198811110','2025-02-19 14:42:23','仓管员账号10','仓管员姓名10','备注10');
/*!40000 ALTER TABLE `chukuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `value` longtext COLLATE utf8mb4_unicode_ci COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='轮播图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'2025-02-19 06:42:23','swiper1','file/swiperPicture1.jpg'),(2,'2025-02-19 06:42:23','swiper2','file/swiperPicture2.jpg'),(3,'2025-02-19 06:42:23','swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongyingshang`
--

DROP TABLE IF EXISTS `gongyingshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '供应商名称',
  `dizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (1,'2025-02-19 06:42:23','供应商名称1','地址1','19819881111'),(2,'2025-02-19 06:42:23','供应商名称2','地址2','19819881112'),(3,'2025-02-19 06:42:23','供应商名称3','地址3','19819881113'),(4,'2025-02-19 06:42:23','供应商名称4','地址4','19819881114'),(5,'2025-02-19 06:42:23','供应商名称5','地址5','19819881115'),(6,'2025-02-19 06:42:23','供应商名称6','地址6','19819881116'),(7,'2025-02-19 06:42:23','供应商名称7','地址7','19819881117'),(8,'2025-02-19 06:42:23','供应商名称8','地址8','19819881118'),(9,'2025-02-19 06:42:23','供应商名称9','地址9','19819881119'),(10,'2025-02-19 06:42:23','供应商名称10','地址10','198198811110');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehu`
--

DROP TABLE IF EXISTS `kehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户名称',
  `dizhi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehu`
--

LOCK TABLES `kehu` WRITE;
/*!40000 ALTER TABLE `kehu` DISABLE KEYS */;
INSERT INTO `kehu` VALUES (1,'2025-02-19 06:42:23','客户名称1','地址1','19819881111'),(2,'2025-02-19 06:42:23','客户名称2','地址2','19819881112'),(3,'2025-02-19 06:42:23','客户名称3','地址3','19819881113'),(4,'2025-02-19 06:42:23','客户名称4','地址4','19819881114'),(5,'2025-02-19 06:42:23','客户名称5','地址5','19819881115'),(6,'2025-02-19 06:42:23','客户名称6','地址6','19819881116'),(7,'2025-02-19 06:42:23','客户名称7','地址7','19819881117'),(8,'2025-02-19 06:42:23','客户名称8','地址8','19819881118'),(9,'2025-02-19 06:42:23','客户名称9','地址9','19819881119'),(10,'2025-02-19 06:42:23','客户名称10','地址10','198198811110');
/*!40000 ALTER TABLE `kehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2025-02-19 06:42:23','[{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common27\",\"menu\":\"管理员管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"仓管员\",\"menuJump\":\"列表\",\"tableName\":\"cangguanyuan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"销售人员\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshourenyuan\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"采购人员\",\"menuJump\":\"列表\",\"tableName\":\"caigourenyuan\"}],\"fontClass\":\"icon-user7\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9d;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"供应商\",\"menuJump\":\"列表\",\"tableName\":\"gongyingshang\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"仓库\",\"menuJump\":\"列表\",\"tableName\":\"cangku\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"客户\",\"menuJump\":\"列表\",\"tableName\":\"kehu\"}],\"fontClass\":\"icon-common24\",\"menu\":\"基础信息管理\",\"unicode\":\"&#xee07;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"商品分类\",\"menuJump\":\"列表\",\"tableName\":\"shangpinfenlei\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"库存统计\",\"首页总数\",\"首页统计\",\"入库\",\"出库\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"库存统计\",\"首页总数\",\"首页统计\",\"入库\",\"出库\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品入库\",\"menuJump\":\"列表\",\"tableName\":\"shangpinruku\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"采购量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\",\"采购量统计\",\"首页总数\",\"首页统计\",\"审核\",\"修改\"],\"menu\":\"采购订单\",\"menuJump\":\"列表\",\"tableName\":\"caigoudingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"采购入库管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"出库信息\",\"menuJump\":\"列表\",\"tableName\":\"chukuxinxi\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"销售量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\",\"销售量统计\",\"首页总数\",\"首页统计\"],\"menu\":\"销售订单\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshoudingdan\"}],\"fontClass\":\"icon-common1\",\"menu\":\"销售出库管理\",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"users\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"库存统计\",\"首页总数\",\"首页统计\",\"入库\",\"出库\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\",\"入库\",\"出库\",\"首页总数\",\"首页统计\",\"库存统计\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品入库\",\"menuJump\":\"列表\",\"tableName\":\"shangpinruku\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"采购量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"采购订单\",\"menuJump\":\"列表\",\"tableName\":\"caigoudingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"采购入库管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"出库信息\",\"menuJump\":\"列表\",\"tableName\":\"chukuxinxi\"},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"销售量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"销售订单\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshoudingdan\"}],\"fontClass\":\"icon-common1\",\"menu\":\"销售出库管理\",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"cangguanyuan\",\"roleName\":\"仓管员\",\"tableName\":\"cangguanyuan\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"库存统计\",\"首页总数\",\"首页统计\",\"入库\",\"出库\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"销售量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"删除\",\"销售量统计\",\"首页总数\",\"首页统计\",\"修改\"],\"menu\":\"销售订单\",\"menuJump\":\"列表\",\"tableName\":\"xiaoshoudingdan\"}],\"fontClass\":\"icon-common1\",\"menu\":\"销售出库管理\",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"xiaoshourenyuan\",\"roleName\":\"销售人员\",\"tableName\":\"xiaoshourenyuan\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"库存统计\",\"首页总数\",\"首页统计\",\"入库\",\"出库\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"商品信息\",\"menuJump\":\"列表\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"商品信息管理\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"采购量统计\",\"首页总数\",\"首页统计\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"采购量统计\",\"首页总数\",\"首页统计\"],\"menu\":\"采购订单\",\"menuJump\":\"列表\",\"tableName\":\"caigoudingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"采购入库管理\",\"unicode\":\"&#xedae;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"pathName\":\"caigourenyuan\",\"roleName\":\"采购人员\",\"tableName\":\"caigourenyuan\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (1,'2025-02-19 06:42:23','商品分类1'),(2,'2025-02-19 06:42:23','商品分类2'),(3,'2025-02-19 06:42:23','商品分类3'),(4,'2025-02-19 06:42:23','商品分类4'),(5,'2025-02-19 06:42:23','商品分类5'),(6,'2025-02-19 06:42:23','商品分类6'),(7,'2025-02-19 06:42:23','商品分类7'),(8,'2025-02-19 06:42:23','商品分类8'),(9,'2025-02-19 06:42:23','商品分类9'),(10,'2025-02-19 06:42:23','商品分类10');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinruku`
--

DROP TABLE IF EXISTS `shangpinruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `gongyingshangmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商名称',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `rukuriqi` datetime DEFAULT NULL COMMENT '入库日期',
  `cangguanyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓管员账号',
  `cangguanyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓管员姓名',
  `beizhu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinruku`
--

LOCK TABLES `shangpinruku` WRITE;
/*!40000 ALTER TABLE `shangpinruku` DISABLE KEYS */;
INSERT INTO `shangpinruku` VALUES (1,'2025-02-19 06:42:23','1111111111','商品名称1','商品分类1','规格1',1,'供应商名称1','19819881111','2025-02-19 14:42:23','仓管员账号1','仓管员姓名1','备注1'),(2,'2025-02-19 06:42:23','2222222222','商品名称2','商品分类2','规格2',2,'供应商名称2','19819881112','2025-02-19 14:42:23','仓管员账号2','仓管员姓名2','备注2'),(3,'2025-02-19 06:42:23','3333333333','商品名称3','商品分类3','规格3',3,'供应商名称3','19819881113','2025-02-19 14:42:23','仓管员账号3','仓管员姓名3','备注3'),(4,'2025-02-19 06:42:23','4444444444','商品名称4','商品分类4','规格4',4,'供应商名称4','19819881114','2025-02-19 14:42:23','仓管员账号4','仓管员姓名4','备注4'),(5,'2025-02-19 06:42:23','5555555555','商品名称5','商品分类5','规格5',5,'供应商名称5','19819881115','2025-02-19 14:42:23','仓管员账号5','仓管员姓名5','备注5'),(6,'2025-02-19 06:42:23','6666666666','商品名称6','商品分类6','规格6',6,'供应商名称6','19819881116','2025-02-19 14:42:23','仓管员账号6','仓管员姓名6','备注6'),(7,'2025-02-19 06:42:23','7777777777','商品名称7','商品分类7','规格7',7,'供应商名称7','19819881117','2025-02-19 14:42:23','仓管员账号7','仓管员姓名7','备注7'),(8,'2025-02-19 06:42:23','8888888888','商品名称8','商品分类8','规格8',8,'供应商名称8','19819881118','2025-02-19 14:42:23','仓管员账号8','仓管员姓名8','备注8'),(9,'2025-02-19 06:42:23','9999999999','商品名称9','商品分类9','规格9',9,'供应商名称9','19819881119','2025-02-19 14:42:23','仓管员账号9','仓管员姓名9','备注9'),(10,'2025-02-19 06:42:23','11111111110','商品名称10','商品分类10','规格10',10,'供应商名称10','198198811110','2025-02-19 14:42:23','仓管员账号10','仓管员姓名10','备注10');
/*!40000 ALTER TABLE `shangpinruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品分类',
  `cangku` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓库',
  `guige` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规格',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '图片',
  `jiage` double DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shangpinxiangqing` longtext COLLATE utf8mb4_unicode_ci COMMENT '商品详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (1,'2025-02-19 06:42:23','1111111111','商品名称1','商品分类1','仓库1','规格1','file/shangpinxinxiTupian1.jpg,file/shangpinxinxiTupian2.jpg,file/shangpinxinxiTupian3.jpg',1,1,'商品详情1'),(2,'2025-02-19 06:42:23','2222222222','商品名称2','商品分类2','仓库2','规格2','file/shangpinxinxiTupian2.jpg,file/shangpinxinxiTupian3.jpg,file/shangpinxinxiTupian4.jpg',2,2,'商品详情2'),(3,'2025-02-19 06:42:23','3333333333','商品名称3','商品分类3','仓库3','规格3','file/shangpinxinxiTupian3.jpg,file/shangpinxinxiTupian4.jpg,file/shangpinxinxiTupian5.jpg',3,3,'商品详情3'),(4,'2025-02-19 06:42:23','4444444444','商品名称4','商品分类4','仓库4','规格4','file/shangpinxinxiTupian4.jpg,file/shangpinxinxiTupian5.jpg,file/shangpinxinxiTupian6.jpg',4,4,'商品详情4'),(5,'2025-02-19 06:42:23','5555555555','商品名称5','商品分类5','仓库5','规格5','file/shangpinxinxiTupian5.jpg,file/shangpinxinxiTupian6.jpg,file/shangpinxinxiTupian7.jpg',5,5,'商品详情5'),(6,'2025-02-19 06:42:23','6666666666','商品名称6','商品分类6','仓库6','规格6','file/shangpinxinxiTupian6.jpg,file/shangpinxinxiTupian7.jpg,file/shangpinxinxiTupian8.jpg',6,6,'商品详情6'),(7,'2025-02-19 06:42:23','7777777777','商品名称7','商品分类7','仓库7','规格7','file/shangpinxinxiTupian7.jpg,file/shangpinxinxiTupian8.jpg,file/shangpinxinxiTupian9.jpg',7,7,'商品详情7'),(8,'2025-02-19 06:42:23','8888888888','商品名称8','商品分类8','仓库8','规格8','file/shangpinxinxiTupian8.jpg,file/shangpinxinxiTupian9.jpg,file/shangpinxinxiTupian10.jpg',8,8,'商品详情8'),(9,'2025-02-19 06:42:23','9999999999','商品名称9','商品分类9','仓库9','规格9','file/shangpinxinxiTupian9.jpg,file/shangpinxinxiTupian10.jpg,file/shangpinxinxiTupian11.jpg',9,9,'商品详情9'),(10,'2025-02-19 06:42:23','11111111110','商品名称10','商品分类10','仓库10','规格10','file/shangpinxinxiTupian10.jpg,file/shangpinxinxiTupian11.jpg,file/shangpinxinxiTupian12.jpg',10,10,'商品详情10');
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','5zwgp2skuhzzuboz9ea8qwy59ys5ja3i','2025-02-19 06:45:39','2025-02-19 07:45:39');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2025-02-19 06:42:23','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshoudingdan`
--

DROP TABLE IF EXISTS `xiaoshoudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshoudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshoudingdan` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '销售订单',
  `shangpinmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规格',
  `jiage` double DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shangpinzongjia` double DEFAULT NULL COMMENT '商品总价',
  `kehumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客户名称',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `xiaoshouriqi` datetime DEFAULT NULL COMMENT '销售日期',
  `xiaoshouzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '销售账号',
  `xiaoshouxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '销售姓名',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshoudingdan` (`xiaoshoudingdan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='销售订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshoudingdan`
--

LOCK TABLES `xiaoshoudingdan` WRITE;
/*!40000 ALTER TABLE `xiaoshoudingdan` DISABLE KEYS */;
INSERT INTO `xiaoshoudingdan` VALUES (1,'2025-02-19 06:42:23','1111111111','商品名称1','商品分类1','规格1',1,1,1,'客户名称1','19819881111','2025-02-19 14:42:23','销售账号1','销售姓名1','是',''),(2,'2025-02-19 06:42:23','2222222222','商品名称2','商品分类2','规格2',2,2,2,'客户名称2','19819881112','2025-02-19 14:42:23','销售账号2','销售姓名2','是',''),(3,'2025-02-19 06:42:23','3333333333','商品名称3','商品分类3','规格3',3,3,3,'客户名称3','19819881113','2025-02-19 14:42:23','销售账号3','销售姓名3','是',''),(4,'2025-02-19 06:42:23','4444444444','商品名称4','商品分类4','规格4',4,4,4,'客户名称4','19819881114','2025-02-19 14:42:23','销售账号4','销售姓名4','是',''),(5,'2025-02-19 06:42:23','5555555555','商品名称5','商品分类5','规格5',5,5,5,'客户名称5','19819881115','2025-02-19 14:42:23','销售账号5','销售姓名5','是',''),(6,'2025-02-19 06:42:23','6666666666','商品名称6','商品分类6','规格6',6,6,6,'客户名称6','19819881116','2025-02-19 14:42:23','销售账号6','销售姓名6','是',''),(7,'2025-02-19 06:42:23','7777777777','商品名称7','商品分类7','规格7',7,7,7,'客户名称7','19819881117','2025-02-19 14:42:23','销售账号7','销售姓名7','是',''),(8,'2025-02-19 06:42:23','8888888888','商品名称8','商品分类8','规格8',8,8,8,'客户名称8','19819881118','2025-02-19 14:42:23','销售账号8','销售姓名8','是',''),(9,'2025-02-19 06:42:23','9999999999','商品名称9','商品分类9','规格9',9,9,9,'客户名称9','19819881119','2025-02-19 14:42:23','销售账号9','销售姓名9','是',''),(10,'2025-02-19 06:42:23','11111111110','商品名称10','商品分类10','规格10',10,10,10,'客户名称10','198198811110','2025-02-19 14:42:23','销售账号10','销售姓名10','是','');
/*!40000 ALTER TABLE `xiaoshoudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshourenyuan`
--

DROP TABLE IF EXISTS `xiaoshourenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshourenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshouzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '销售账号',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `xiaoshouxingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '销售姓名',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '头像',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshouzhanghao` (`xiaoshouzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='销售人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshourenyuan`
--

LOCK TABLES `xiaoshourenyuan` WRITE;
/*!40000 ALTER TABLE `xiaoshourenyuan` DISABLE KEYS */;
INSERT INTO `xiaoshourenyuan` VALUES (41,'2025-02-19 06:42:22','销售账号1','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','销售姓名1','file/xiaoshourenyuanTouxiang1.jpg','男','19819881111','是',''),(42,'2025-02-19 06:42:22','销售账号2','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','销售姓名2','file/xiaoshourenyuanTouxiang2.jpg','男','19819881112','是',''),(43,'2025-02-19 06:42:22','销售账号3','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','销售姓名3','file/xiaoshourenyuanTouxiang3.jpg','男','19819881113','是',''),(44,'2025-02-19 06:42:22','销售账号4','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','销售姓名4','file/xiaoshourenyuanTouxiang4.jpg','男','19819881114','是',''),(45,'2025-02-19 06:42:22','销售账号5','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','销售姓名5','file/xiaoshourenyuanTouxiang5.jpg','男','19819881115','是',''),(46,'2025-02-19 06:42:22','销售账号6','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','销售姓名6','file/xiaoshourenyuanTouxiang6.jpg','男','19819881116','是',''),(47,'2025-02-19 06:42:23','销售账号7','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','销售姓名7','file/xiaoshourenyuanTouxiang7.jpg','男','19819881117','是',''),(48,'2025-02-19 06:42:23','销售账号8','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','销售姓名8','file/xiaoshourenyuanTouxiang8.jpg','男','19819881118','是',''),(49,'2025-02-19 06:42:23','销售账号9','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','销售姓名9','file/xiaoshourenyuanTouxiang9.jpg','男','19819881119','是',''),(50,'2025-02-19 06:42:23','销售账号10','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','销售姓名10','file/xiaoshourenyuanTouxiang10.jpg','男','198198811110','是','');
/*!40000 ALTER TABLE `xiaoshourenyuan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-14 22:56:52
