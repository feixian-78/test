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
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `caigoubianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '閲囪喘缂栧彿',
  `shangpinmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧鍚嶇О',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧鍒嗙被',
  `guige` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瑙勬牸',
  `caigoushuliang` int(11) DEFAULT NULL COMMENT '閲囪喘鏁伴噺',
  `jiage` double DEFAULT NULL COMMENT '浠锋牸',
  `caigouzongjia` double DEFAULT NULL COMMENT '閲囪喘鎬讳环',
  `gongyingshangmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渚涘簲鍟嗗悕绉?,
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎵嬫満鍙风爜',
  `caigouriqi` datetime DEFAULT NULL COMMENT '閲囪喘鏃ユ湡',
  `caigouzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '閲囪喘璐﹀彿',
  `caigouxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '閲囪喘濮撳悕',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鏄惁瀹℃牳',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '鍥炲鍐呭',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caigoubianhao` (`caigoubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='閲囪喘璁㈠崟';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caigoudingdan`
--

LOCK TABLES `caigoudingdan` WRITE;
/*!40000 ALTER TABLE `caigoudingdan` DISABLE KEYS */;
INSERT INTO `caigoudingdan` VALUES (1,'2025-02-19 06:42:23','1111111111','鍟嗗搧鍚嶇О1','鍟嗗搧鍒嗙被1','瑙勬牸1',1,1,1,'渚涘簲鍟嗗悕绉?','19819881111','2025-02-19 14:42:23','閲囪喘璐﹀彿1','閲囪喘濮撳悕1','鏄?,''),(2,'2025-02-19 06:42:23','2222222222','鍟嗗搧鍚嶇О2','鍟嗗搧鍒嗙被2','瑙勬牸2',2,2,2,'渚涘簲鍟嗗悕绉?','19819881112','2025-02-19 14:42:23','閲囪喘璐﹀彿2','閲囪喘濮撳悕2','鏄?,''),(3,'2025-02-19 06:42:23','3333333333','鍟嗗搧鍚嶇О3','鍟嗗搧鍒嗙被3','瑙勬牸3',3,3,3,'渚涘簲鍟嗗悕绉?','19819881113','2025-02-19 14:42:23','閲囪喘璐﹀彿3','閲囪喘濮撳悕3','鏄?,''),(4,'2025-02-19 06:42:23','4444444444','鍟嗗搧鍚嶇О4','鍟嗗搧鍒嗙被4','瑙勬牸4',4,4,4,'渚涘簲鍟嗗悕绉?','19819881114','2025-02-19 14:42:23','閲囪喘璐﹀彿4','閲囪喘濮撳悕4','鏄?,''),(5,'2025-02-19 06:42:23','5555555555','鍟嗗搧鍚嶇О5','鍟嗗搧鍒嗙被5','瑙勬牸5',5,5,5,'渚涘簲鍟嗗悕绉?','19819881115','2025-02-19 14:42:23','閲囪喘璐﹀彿5','閲囪喘濮撳悕5','鏄?,''),(6,'2025-02-19 06:42:23','6666666666','鍟嗗搧鍚嶇О6','鍟嗗搧鍒嗙被6','瑙勬牸6',6,6,6,'渚涘簲鍟嗗悕绉?','19819881116','2025-02-19 14:42:23','閲囪喘璐﹀彿6','閲囪喘濮撳悕6','鏄?,''),(7,'2025-02-19 06:42:23','7777777777','鍟嗗搧鍚嶇О7','鍟嗗搧鍒嗙被7','瑙勬牸7',7,7,7,'渚涘簲鍟嗗悕绉?','19819881117','2025-02-19 14:42:23','閲囪喘璐﹀彿7','閲囪喘濮撳悕7','鏄?,''),(8,'2025-02-19 06:42:23','8888888888','鍟嗗搧鍚嶇О8','鍟嗗搧鍒嗙被8','瑙勬牸8',8,8,8,'渚涘簲鍟嗗悕绉?','19819881118','2025-02-19 14:42:23','閲囪喘璐﹀彿8','閲囪喘濮撳悕8','鏄?,''),(9,'2025-02-19 06:42:23','9999999999','鍟嗗搧鍚嶇О9','鍟嗗搧鍒嗙被9','瑙勬牸9',9,9,9,'渚涘簲鍟嗗悕绉?','19819881119','2025-02-19 14:42:23','閲囪喘璐﹀彿9','閲囪喘濮撳悕9','鏄?,''),(10,'2025-02-19 06:42:23','11111111110','鍟嗗搧鍚嶇О10','鍟嗗搧鍒嗙被10','瑙勬牸10',10,10,10,'渚涘簲鍟嗗悕绉?0','198198811110','2025-02-19 14:42:23','閲囪喘璐﹀彿10','閲囪喘濮撳悕10','鏄?,'');
/*!40000 ALTER TABLE `caigoudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caigourenyuan`
--

DROP TABLE IF EXISTS `caigourenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caigourenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `caigouzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '閲囪喘璐﹀彿',
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀵嗙爜',
  `caigouxingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '閲囪喘濮撳悕',
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '澶村儚',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎬у埆',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎵嬫満鍙风爜',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鏄惁瀹℃牳',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '鍥炲鍐呭',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caigouzhanghao` (`caigouzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='閲囪喘浜哄憳';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caigourenyuan`
--

LOCK TABLES `caigourenyuan` WRITE;
/*!40000 ALTER TABLE `caigourenyuan` DISABLE KEYS */;
INSERT INTO `caigourenyuan` VALUES (111,'2025-02-19 06:42:23','閲囪喘璐﹀彿1','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閲囪喘濮撳悕1','file/caigourenyuanTouxiang1.jpg','鐢?,'19819881111','鏄?,''),(112,'2025-02-19 06:42:23','閲囪喘璐﹀彿2','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閲囪喘濮撳悕2','file/caigourenyuanTouxiang2.jpg','鐢?,'19819881112','鏄?,''),(113,'2025-02-19 06:42:23','閲囪喘璐﹀彿3','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閲囪喘濮撳悕3','file/caigourenyuanTouxiang3.jpg','鐢?,'19819881113','鏄?,''),(114,'2025-02-19 06:42:23','閲囪喘璐﹀彿4','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閲囪喘濮撳悕4','file/caigourenyuanTouxiang4.jpg','鐢?,'19819881114','鏄?,''),(115,'2025-02-19 06:42:23','閲囪喘璐﹀彿5','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閲囪喘濮撳悕5','file/caigourenyuanTouxiang5.jpg','鐢?,'19819881115','鏄?,''),(116,'2025-02-19 06:42:23','閲囪喘璐﹀彿6','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閲囪喘濮撳悕6','file/caigourenyuanTouxiang6.jpg','鐢?,'19819881116','鏄?,''),(117,'2025-02-19 06:42:23','閲囪喘璐﹀彿7','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閲囪喘濮撳悕7','file/caigourenyuanTouxiang7.jpg','鐢?,'19819881117','鏄?,''),(118,'2025-02-19 06:42:23','閲囪喘璐﹀彿8','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閲囪喘濮撳悕8','file/caigourenyuanTouxiang8.jpg','鐢?,'19819881118','鏄?,''),(119,'2025-02-19 06:42:23','閲囪喘璐﹀彿9','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閲囪喘濮撳悕9','file/caigourenyuanTouxiang9.jpg','鐢?,'19819881119','鏄?,''),(120,'2025-02-19 06:42:23','閲囪喘璐﹀彿10','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閲囪喘濮撳悕10','file/caigourenyuanTouxiang10.jpg','鐢?,'198198811110','鏄?,'');
/*!40000 ALTER TABLE `caigourenyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cangguanyuan`
--

DROP TABLE IF EXISTS `cangguanyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cangguanyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `cangguanyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浠撶鍛樿处鍙?,
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀵嗙爜',
  `cangguanyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浠撶鍛樺鍚?,
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '澶村儚',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎬у埆',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎵嬫満鍙风爜',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鏄惁瀹℃牳',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '鍥炲鍐呭',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cangguanyuanzhanghao` (`cangguanyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='浠撶鍛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cangguanyuan`
--

LOCK TABLES `cangguanyuan` WRITE;
/*!40000 ALTER TABLE `cangguanyuan` DISABLE KEYS */;
INSERT INTO `cangguanyuan` VALUES (31,'2025-02-19 06:42:22','浠撶鍛樿处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','浠撶鍛樺鍚?','file/cangguanyuanTouxiang1.jpg','鐢?,'19819881111','鏄?,''),(32,'2025-02-19 06:42:22','浠撶鍛樿处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','浠撶鍛樺鍚?','file/cangguanyuanTouxiang2.jpg','鐢?,'19819881112','鏄?,''),(33,'2025-02-19 06:42:22','浠撶鍛樿处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','浠撶鍛樺鍚?','file/cangguanyuanTouxiang3.jpg','鐢?,'19819881113','鏄?,''),(34,'2025-02-19 06:42:22','浠撶鍛樿处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','浠撶鍛樺鍚?','file/cangguanyuanTouxiang4.jpg','鐢?,'19819881114','鏄?,''),(35,'2025-02-19 06:42:22','浠撶鍛樿处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','浠撶鍛樺鍚?','file/cangguanyuanTouxiang5.jpg','鐢?,'19819881115','鏄?,''),(36,'2025-02-19 06:42:22','浠撶鍛樿处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','浠撶鍛樺鍚?','file/cangguanyuanTouxiang6.jpg','鐢?,'19819881116','鏄?,''),(37,'2025-02-19 06:42:22','浠撶鍛樿处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','浠撶鍛樺鍚?','file/cangguanyuanTouxiang7.jpg','鐢?,'19819881117','鏄?,''),(38,'2025-02-19 06:42:22','浠撶鍛樿处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','浠撶鍛樺鍚?','file/cangguanyuanTouxiang8.jpg','鐢?,'19819881118','鏄?,''),(39,'2025-02-19 06:42:22','浠撶鍛樿处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','浠撶鍛樺鍚?','file/cangguanyuanTouxiang9.jpg','鐢?,'19819881119','鏄?,''),(40,'2025-02-19 06:42:22','浠撶鍛樿处鍙?0','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','浠撶鍛樺鍚?0','file/cangguanyuanTouxiang10.jpg','鐢?,'198198811110','鏄?,'');
/*!40000 ALTER TABLE `cangguanyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cangku`
--

DROP TABLE IF EXISTS `cangku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cangku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `cangku` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浠撳簱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cangku` (`cangku`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='浠撳簱';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cangku`
--

LOCK TABLES `cangku` WRITE;
/*!40000 ALTER TABLE `cangku` DISABLE KEYS */;
INSERT INTO `cangku` VALUES (1,'2025-02-19 06:42:23','浠撳簱1'),(2,'2025-02-19 06:42:23','浠撳簱2'),(3,'2025-02-19 06:42:23','浠撳簱3'),(4,'2025-02-19 06:42:23','浠撳簱4'),(5,'2025-02-19 06:42:23','浠撳簱5'),(6,'2025-02-19 06:42:23','浠撳簱6'),(7,'2025-02-19 06:42:23','浠撳簱7'),(8,'2025-02-19 06:42:23','浠撳簱8'),(9,'2025-02-19 06:42:23','浠撳簱9'),(10,'2025-02-19 06:42:23','浠撳簱10');
/*!40000 ALTER TABLE `cangku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chukuxinxi`
--

DROP TABLE IF EXISTS `chukuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chukuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '璁㈠崟缂栧彿',
  `shangpinmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧鍚嶇О',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧鍒嗙被',
  `guige` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瑙勬牸',
  `cunfanghuowei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存放货位',
  `shuliang` int(11) DEFAULT NULL COMMENT '鏁伴噺',
  `kehumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瀹㈡埛鍚嶇О',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎵嬫満鍙风爜',
  `chukuriqi` datetime DEFAULT NULL COMMENT '鍑哄簱鏃ユ湡',
  `cangguanyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '浠撶鍛樿处鍙?,
  `cangguanyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '浠撶鍛樺鍚?,
  `beizhu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='鍑哄簱淇℃伅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chukuxinxi`
--

LOCK TABLES `chukuxinxi` WRITE;
/*!40000 ALTER TABLE `chukuxinxi` DISABLE KEYS */;
INSERT INTO `chukuxinxi` VALUES (1,'2025-02-19 06:42:23','1111111111','鍟嗗搧鍚嶇О1','鍟嗗搧鍒嗙被1','瑙勬牸1','A-01-01',1,'瀹㈡埛鍚嶇О1','19819881111','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞1'),(2,'2025-02-19 06:42:23','2222222222','鍟嗗搧鍚嶇О2','鍟嗗搧鍒嗙被2','瑙勬牸2','A-01-02',2,'瀹㈡埛鍚嶇О2','19819881112','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞2'),(3,'2025-02-19 06:42:23','3333333333','鍟嗗搧鍚嶇О3','鍟嗗搧鍒嗙被3','瑙勬牸3','A-01-03',3,'瀹㈡埛鍚嶇О3','19819881113','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞3'),(4,'2025-02-19 06:42:23','4444444444','鍟嗗搧鍚嶇О4','鍟嗗搧鍒嗙被4','瑙勬牸4','A-01-04',4,'瀹㈡埛鍚嶇О4','19819881114','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞4'),(5,'2025-02-19 06:42:23','5555555555','鍟嗗搧鍚嶇О5','鍟嗗搧鍒嗙被5','瑙勬牸5','A-01-05',5,'瀹㈡埛鍚嶇О5','19819881115','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞5'),(6,'2025-02-19 06:42:23','6666666666','鍟嗗搧鍚嶇О6','鍟嗗搧鍒嗙被6','瑙勬牸6','A-01-06',6,'瀹㈡埛鍚嶇О6','19819881116','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞6'),(7,'2025-02-19 06:42:23','7777777777','鍟嗗搧鍚嶇О7','鍟嗗搧鍒嗙被7','瑙勬牸7','A-01-07',7,'瀹㈡埛鍚嶇О7','19819881117','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞7'),(8,'2025-02-19 06:42:23','8888888888','鍟嗗搧鍚嶇О8','鍟嗗搧鍒嗙被8','瑙勬牸8','A-01-08',8,'瀹㈡埛鍚嶇О8','19819881118','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞8'),(9,'2025-02-19 06:42:23','9999999999','鍟嗗搧鍚嶇О9','鍟嗗搧鍒嗙被9','瑙勬牸9','A-01-09',9,'瀹㈡埛鍚嶇О9','19819881119','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞9'),(10,'2025-02-19 06:42:23','11111111110','鍟嗗搧鍚嶇О10','鍟嗗搧鍒嗙被10','瑙勬牸10','A-01-10',10,'瀹㈡埛鍚嶇О10','198198811110','2025-02-19 14:42:23','浠撶鍛樿处鍙?0','浠撶鍛樺鍚?0','澶囨敞10');
/*!40000 ALTER TABLE `chukuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鍚嶇О',
  `value` longtext COLLATE utf8mb4_unicode_ci COMMENT '鍊?,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='杞挱鍥?;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `gongyingshangmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '渚涘簲鍟嗗悕绉?,
  `dizhi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍦板潃',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎵嬫満鍙风爜',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='渚涘簲鍟?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongyingshang`
--

LOCK TABLES `gongyingshang` WRITE;
/*!40000 ALTER TABLE `gongyingshang` DISABLE KEYS */;
INSERT INTO `gongyingshang` VALUES (1,'2025-02-19 06:42:23','渚涘簲鍟嗗悕绉?','鍦板潃1','19819881111'),(2,'2025-02-19 06:42:23','渚涘簲鍟嗗悕绉?','鍦板潃2','19819881112'),(3,'2025-02-19 06:42:23','渚涘簲鍟嗗悕绉?','鍦板潃3','19819881113'),(4,'2025-02-19 06:42:23','渚涘簲鍟嗗悕绉?','鍦板潃4','19819881114'),(5,'2025-02-19 06:42:23','渚涘簲鍟嗗悕绉?','鍦板潃5','19819881115'),(6,'2025-02-19 06:42:23','渚涘簲鍟嗗悕绉?','鍦板潃6','19819881116'),(7,'2025-02-19 06:42:23','渚涘簲鍟嗗悕绉?','鍦板潃7','19819881117'),(8,'2025-02-19 06:42:23','渚涘簲鍟嗗悕绉?','鍦板潃8','19819881118'),(9,'2025-02-19 06:42:23','渚涘簲鍟嗗悕绉?','鍦板潃9','19819881119'),(10,'2025-02-19 06:42:23','渚涘簲鍟嗗悕绉?0','鍦板潃10','198198811110');
/*!40000 ALTER TABLE `gongyingshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehu`
--

DROP TABLE IF EXISTS `kehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `kehumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀹㈡埛鍚嶇О',
  `dizhi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鍦板潃',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎵嬫満鍙风爜',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='瀹㈡埛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehu`
--

LOCK TABLES `kehu` WRITE;
/*!40000 ALTER TABLE `kehu` DISABLE KEYS */;
INSERT INTO `kehu` VALUES (1,'2025-02-19 06:42:23','瀹㈡埛鍚嶇О1','鍦板潃1','19819881111'),(2,'2025-02-19 06:42:23','瀹㈡埛鍚嶇О2','鍦板潃2','19819881112'),(3,'2025-02-19 06:42:23','瀹㈡埛鍚嶇О3','鍦板潃3','19819881113'),(4,'2025-02-19 06:42:23','瀹㈡埛鍚嶇О4','鍦板潃4','19819881114'),(5,'2025-02-19 06:42:23','瀹㈡埛鍚嶇О5','鍦板潃5','19819881115'),(6,'2025-02-19 06:42:23','瀹㈡埛鍚嶇О6','鍦板潃6','19819881116'),(7,'2025-02-19 06:42:23','瀹㈡埛鍚嶇О7','鍦板潃7','19819881117'),(8,'2025-02-19 06:42:23','瀹㈡埛鍚嶇О8','鍦板潃8','19819881118'),(9,'2025-02-19 06:42:23','瀹㈡埛鍚嶇О9','鍦板潃9','19819881119'),(10,'2025-02-19 06:42:23','瀹㈡埛鍚嶇О10','鍦板潃10','198198811110');
/*!40000 ALTER TABLE `kehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `menujson` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鑿滃崟',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='鑿滃崟';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2025-02-19 06:42:23','[{\"backMenu\":[{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\"],\"menu\":\"绠＄悊鍛榎",\"menuJump\":\"鍒楄〃\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common27\",\"menu\":\"绠＄悊鍛樼鐞哱",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\"],\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\"],\"menu\":\"浠撶鍛榎",\"menuJump\":\"鍒楄〃\",\"tableName\":\"cangguanyuan\"},{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\"],\"menu\":\"閿€鍞汉鍛榎",\"menuJump\":\"鍒楄〃\",\"tableName\":\"xiaoshourenyuan\"},{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\"],\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\"],\"menu\":\"閲囪喘浜哄憳\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"caigourenyuan\"}],\"fontClass\":\"icon-user7\",\"menu\":\"鐢ㄦ埛绠＄悊\",\"unicode\":\"&#xef9d;\"},{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"menu\":\"渚涘簲鍟哱",\"menuJump\":\"鍒楄〃\",\"tableName\":\"gongyingshang\"},{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"menu\":\"浠撳簱\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"cangku\"},{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"menu\":\"瀹㈡埛\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"kehu\"}],\"fontClass\":\"icon-common24\",\"menu\":\"鍩虹淇℃伅绠＄悊\",\"unicode\":\"&#xee07;\"},{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"menu\":\"鍟嗗搧鍒嗙被\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"shangpinfenlei\"},{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"搴撳瓨缁熻\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\",\"鍏ュ簱\",\"鍑哄簱\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"搴撳瓨缁熻\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\",\"鍏ュ簱\",\"鍑哄簱\"],\"menu\":\"鍟嗗搧淇℃伅\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"鍟嗗搧淇℃伅绠＄悊\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"鏌ョ湅\",\"鍒犻櫎\"],\"menu\":\"鍟嗗搧鍏ュ簱\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"shangpinruku\"},{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\",\"閲囪喘閲忕粺璁",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"鏌ョ湅\",\"鍒犻櫎\",\"閲囪喘閲忕粺璁",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\",\"瀹℃牳\",\"淇敼\"],\"menu\":\"閲囪喘璁㈠崟\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"caigoudingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"閲囪喘鍏ュ簱绠＄悊\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"鏌ョ湅\",\"鍒犻櫎\"],\"menu\":\"鍑哄簱淇℃伅\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"chukuxinxi\"},{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\",\"閿€鍞噺缁熻\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\",\"閿€鍞噺缁熻\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\"],\"menu\":\"閿€鍞鍗昞",\"menuJump\":\"鍒楄〃\",\"tableName\":\"xiaoshoudingdan\"}],\"fontClass\":\"icon-common1\",\"menu\":\"閿€鍞嚭搴撶鐞哱",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[],\"hasBackLogin\":\"鏄痋",\"hasBackRegister\":\"鍚",\"hasFrontLogin\":\"鍚",\"hasFrontRegister\":\"鍚",\"pathName\":\"users\",\"roleName\":\"绠＄悊鍛榎",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"搴撳瓨缁熻\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\",\"鍏ュ簱\",\"鍑哄簱\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"鏌ョ湅\",\"鍒犻櫎\",\"鍏ュ簱\",\"鍑哄簱\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\",\"搴撳瓨缁熻\"],\"menu\":\"鍟嗗搧淇℃伅\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"鍟嗗搧淇℃伅绠＄悊\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"鏌ョ湅\",\"鍒犻櫎\"],\"menu\":\"鍟嗗搧鍏ュ簱\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"shangpinruku\"},{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\",\"閲囪喘閲忕粺璁",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"鏌ョ湅\",\"鍒犻櫎\",\"瀹℃牳\"],\"menu\":\"閲囪喘璁㈠崟\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"caigoudingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"閲囪喘鍏ュ簱绠＄悊\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"鏌ョ湅\",\"鍒犻櫎\"],\"menu\":\"鍑哄簱淇℃伅\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"chukuxinxi\"},{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\",\"閿€鍞噺缁熻\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"鏌ョ湅\",\"鍒犻櫎\",\"瀹℃牳\"],\"menu\":\"閿€鍞鍗昞",\"menuJump\":\"鍒楄〃\",\"tableName\":\"xiaoshoudingdan\"}],\"fontClass\":\"icon-common1\",\"menu\":\"閿€鍞嚭搴撶鐞哱",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[],\"hasBackLogin\":\"鏄痋",\"hasBackRegister\":\"鏄痋",\"hasFrontLogin\":\"鍚",\"hasFrontRegister\":\"鍚",\"pathName\":\"cangguanyuan\",\"roleName\":\"浠撶鍛榎",\"tableName\":\"cangguanyuan\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"搴撳瓨缁熻\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\",\"鍏ュ簱\",\"鍑哄簱\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"鏌ョ湅\",\"鍒犻櫎\"],\"menu\":\"鍟嗗搧淇℃伅\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"鍟嗗搧淇℃伅绠＄悊\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\",\"閿€鍞噺缁熻\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"鍒犻櫎\",\"閿€鍞噺缁熻\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\",\"淇敼\"],\"menu\":\"閿€鍞鍗昞",\"menuJump\":\"鍒楄〃\",\"tableName\":\"xiaoshoudingdan\"}],\"fontClass\":\"icon-common1\",\"menu\":\"閿€鍞嚭搴撶鐞哱",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[],\"hasBackLogin\":\"鏄痋",\"hasBackRegister\":\"鏄痋",\"hasFrontLogin\":\"鍚",\"hasFrontRegister\":\"鍚",\"pathName\":\"xiaoshourenyuan\",\"roleName\":\"閿€鍞汉鍛榎",\"tableName\":\"xiaoshourenyuan\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"搴撳瓨缁熻\",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\",\"鍏ュ簱\",\"鍑哄簱\"],\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"鏌ョ湅\",\"鍒犻櫎\"],\"menu\":\"鍟嗗搧淇℃伅\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"shangpinxinxi\"}],\"fontClass\":\"icon-common40\",\"menu\":\"鍟嗗搧淇℃伅绠＄悊\",\"unicode\":\"&#xeebb;\"},{\"child\":[{\"allButtons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"瀹℃牳\",\"閲囪喘閲忕粺璁",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"鏂板\",\"鏌ョ湅\",\"淇敼\",\"鍒犻櫎\",\"閲囪喘閲忕粺璁",\"棣栭〉鎬绘暟\",\"棣栭〉缁熻\"],\"menu\":\"閲囪喘璁㈠崟\",\"menuJump\":\"鍒楄〃\",\"tableName\":\"caigoudingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"閲囪喘鍏ュ簱绠＄悊\",\"unicode\":\"&#xedae;\"}],\"frontMenu\":[],\"hasBackLogin\":\"鏄痋",\"hasBackRegister\":\"鏄痋",\"hasFrontLogin\":\"鍚",\"hasFrontRegister\":\"鍚",\"pathName\":\"caigourenyuan\",\"roleName\":\"閲囪喘浜哄憳\",\"tableName\":\"caigourenyuan\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鍟嗗搧鍒嗙被',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='鍟嗗搧鍒嗙被';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (1,'2025-02-19 06:42:23','鍟嗗搧鍒嗙被1'),(2,'2025-02-19 06:42:23','鍟嗗搧鍒嗙被2'),(3,'2025-02-19 06:42:23','鍟嗗搧鍒嗙被3'),(4,'2025-02-19 06:42:23','鍟嗗搧鍒嗙被4'),(5,'2025-02-19 06:42:23','鍟嗗搧鍒嗙被5'),(6,'2025-02-19 06:42:23','鍟嗗搧鍒嗙被6'),(7,'2025-02-19 06:42:23','鍟嗗搧鍒嗙被7'),(8,'2025-02-19 06:42:23','鍟嗗搧鍒嗙被8'),(9,'2025-02-19 06:42:23','鍟嗗搧鍒嗙被9'),(10,'2025-02-19 06:42:23','鍟嗗搧鍒嗙被10');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinruku`
--

DROP TABLE IF EXISTS `shangpinruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `dingdanbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '璁㈠崟缂栧彿',
  `shangpinmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧鍚嶇О',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧鍒嗙被',
  `guige` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瑙勬牸',
  `shengchanpicihao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产批次号',
  `cunfanghuowei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存放货位',
  `shuliang` int(11) DEFAULT NULL COMMENT '鏁伴噺',
  `gongyingshangmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '渚涘簲鍟嗗悕绉?,
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎵嬫満鍙风爜',
  `rukuriqi` datetime DEFAULT NULL COMMENT '鍏ュ簱鏃ユ湡',
  `cangguanyuanzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '浠撶鍛樿处鍙?,
  `cangguanyuanxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '浠撶鍛樺鍚?,
  `beizhu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='鍟嗗搧鍏ュ簱';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinruku`
--

LOCK TABLES `shangpinruku` WRITE;
/*!40000 ALTER TABLE `shangpinruku` DISABLE KEYS */;
INSERT INTO `shangpinruku` VALUES (1,'2025-02-19 06:42:23','1111111111','鍟嗗搧鍚嶇О1','鍟嗗搧鍒嗙被1','瑙勬牸1','PC202502001','A-01-01',1,'渚涘簲鍟嗗悕绉?','19819881111','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞1'),(2,'2025-02-19 06:42:23','2222222222','鍟嗗搧鍚嶇О2','鍟嗗搧鍒嗙被2','瑙勬牸2','PC202502002','A-01-02',2,'渚涘簲鍟嗗悕绉?','19819881112','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞2'),(3,'2025-02-19 06:42:23','3333333333','鍟嗗搧鍚嶇О3','鍟嗗搧鍒嗙被3','瑙勬牸3','PC202502003','A-01-03',3,'渚涘簲鍟嗗悕绉?','19819881113','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞3'),(4,'2025-02-19 06:42:23','4444444444','鍟嗗搧鍚嶇О4','鍟嗗搧鍒嗙被4','瑙勬牸4','PC202502004','A-01-04',4,'渚涘簲鍟嗗悕绉?','19819881114','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞4'),(5,'2025-02-19 06:42:23','5555555555','鍟嗗搧鍚嶇О5','鍟嗗搧鍒嗙被5','瑙勬牸5','PC202502005','A-01-05',5,'渚涘簲鍟嗗悕绉?','19819881115','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞5'),(6,'2025-02-19 06:42:23','6666666666','鍟嗗搧鍚嶇О6','鍟嗗搧鍒嗙被6','瑙勬牸6','PC202502006','A-01-06',6,'渚涘簲鍟嗗悕绉?','19819881116','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞6'),(7,'2025-02-19 06:42:23','7777777777','鍟嗗搧鍚嶇О7','鍟嗗搧鍒嗙被7','瑙勬牸7','PC202502007','A-01-07',7,'渚涘簲鍟嗗悕绉?','19819881117','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞7'),(8,'2025-02-19 06:42:23','8888888888','鍟嗗搧鍚嶇О8','鍟嗗搧鍒嗙被8','瑙勬牸8','PC202502008','A-01-08',8,'渚涘簲鍟嗗悕绉?','19819881118','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞8'),(9,'2025-02-19 06:42:23','9999999999','鍟嗗搧鍚嶇О9','鍟嗗搧鍒嗙被9','瑙勬牸9','PC202502009','A-01-09',9,'渚涘簲鍟嗗悕绉?','19819881119','2025-02-19 14:42:23','浠撶鍛樿处鍙?','浠撶鍛樺鍚?','澶囨敞9'),(10,'2025-02-19 06:42:23','11111111110','鍟嗗搧鍚嶇О10','鍟嗗搧鍒嗙被10','瑙勬牸10','PC202502010','A-01-10',10,'渚涘簲鍟嗗悕绉?0','198198811110','2025-02-19 14:42:23','浠撶鍛樿处鍙?0','浠撶鍛樺鍚?0','澶囨敞10');
/*!40000 ALTER TABLE `shangpinruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `shangpinbianhao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧缂栧彿',
  `shangpinmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧鍚嶇О',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧鍒嗙被',
  `cangku` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '浠撳簱',
  `guige` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瑙勬牸',
  `shengchanpicihao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产批次号',
  `cunfanghuowei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存放货位',
  `tupian` longtext COLLATE utf8mb4_unicode_ci COMMENT '鍥剧墖',
  `jiage` double DEFAULT NULL COMMENT '浠锋牸',
  `shuliang` int(11) DEFAULT NULL COMMENT '鏁伴噺',
  `shangpinxiangqing` longtext COLLATE utf8mb4_unicode_ci COMMENT '鍟嗗搧璇︽儏',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='鍟嗗搧淇℃伅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (1,'2025-02-19 06:42:23','1111111111','鍟嗗搧鍚嶇О1','鍟嗗搧鍒嗙被1','浠撳簱1','瑙勬牸1','PC202502001','A-01-01','file/shangpinxinxiTupian1.jpg,file/shangpinxinxiTupian2.jpg,file/shangpinxinxiTupian3.jpg',1,1,'鍟嗗搧璇︽儏1'),(2,'2025-02-19 06:42:23','2222222222','鍟嗗搧鍚嶇О2','鍟嗗搧鍒嗙被2','浠撳簱2','瑙勬牸2','PC202502002','A-01-02','file/shangpinxinxiTupian2.jpg,file/shangpinxinxiTupian3.jpg,file/shangpinxinxiTupian4.jpg',2,2,'鍟嗗搧璇︽儏2'),(3,'2025-02-19 06:42:23','3333333333','鍟嗗搧鍚嶇О3','鍟嗗搧鍒嗙被3','浠撳簱3','瑙勬牸3','PC202502003','A-01-03','file/shangpinxinxiTupian3.jpg,file/shangpinxinxiTupian4.jpg,file/shangpinxinxiTupian5.jpg',3,3,'鍟嗗搧璇︽儏3'),(4,'2025-02-19 06:42:23','4444444444','鍟嗗搧鍚嶇О4','鍟嗗搧鍒嗙被4','浠撳簱4','瑙勬牸4','PC202502004','A-01-04','file/shangpinxinxiTupian4.jpg,file/shangpinxinxiTupian5.jpg,file/shangpinxinxiTupian6.jpg',4,4,'鍟嗗搧璇︽儏4'),(5,'2025-02-19 06:42:23','5555555555','鍟嗗搧鍚嶇О5','鍟嗗搧鍒嗙被5','浠撳簱5','瑙勬牸5','PC202502005','A-01-05','file/shangpinxinxiTupian5.jpg,file/shangpinxinxiTupian6.jpg,file/shangpinxinxiTupian7.jpg',5,5,'鍟嗗搧璇︽儏5'),(6,'2025-02-19 06:42:23','6666666666','鍟嗗搧鍚嶇О6','鍟嗗搧鍒嗙被6','浠撳簱6','瑙勬牸6','PC202502006','A-01-06','file/shangpinxinxiTupian6.jpg,file/shangpinxinxiTupian7.jpg,file/shangpinxinxiTupian8.jpg',6,6,'鍟嗗搧璇︽儏6'),(7,'2025-02-19 06:42:23','7777777777','鍟嗗搧鍚嶇О7','鍟嗗搧鍒嗙被7','浠撳簱7','瑙勬牸7','PC202502007','A-01-07','file/shangpinxinxiTupian7.jpg,file/shangpinxinxiTupian8.jpg,file/shangpinxinxiTupian9.jpg',7,7,'鍟嗗搧璇︽儏7'),(8,'2025-02-19 06:42:23','8888888888','鍟嗗搧鍚嶇О8','鍟嗗搧鍒嗙被8','浠撳簱8','瑙勬牸8','PC202502008','A-01-08','file/shangpinxinxiTupian8.jpg,file/shangpinxinxiTupian9.jpg,file/shangpinxinxiTupian10.jpg',8,8,'鍟嗗搧璇︽儏8'),(9,'2025-02-19 06:42:23','9999999999','鍟嗗搧鍚嶇О9','鍟嗗搧鍒嗙被9','浠撳簱9','瑙勬牸9','PC202502009','A-01-09','file/shangpinxinxiTupian9.jpg,file/shangpinxinxiTupian10.jpg,file/shangpinxinxiTupian11.jpg',9,9,'鍟嗗搧璇︽儏9'),(10,'2025-02-19 06:42:23','11111111110','鍟嗗搧鍚嶇О10','鍟嗗搧鍒嗙被10','浠撳簱10','瑙勬牸10','PC202502010','A-01-10','file/shangpinxinxiTupian10.jpg,file/shangpinxinxiTupian11.jpg,file/shangpinxinxiTupian12.jpg',10,10,'鍟嗗搧璇︽儏10');
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `userid` bigint(20) NOT NULL COMMENT '鐢ㄦ埛id',
  `username` varchar(100) NOT NULL COMMENT '鐢ㄦ埛鍚?,
  `tablename` varchar(100) DEFAULT NULL COMMENT '琛ㄥ悕',
  `role` varchar(100) DEFAULT NULL COMMENT '瑙掕壊',
  `token` varchar(200) NOT NULL COMMENT '瀵嗙爜',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鏂板鏃堕棿',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '杩囨湡鏃堕棿',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token琛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','绠＄悊鍛?,'5zwgp2skuhzzuboz9ea8qwy59ys5ja3i','2025-02-19 06:45:39','2025-02-19 07:45:39');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '鐢ㄦ埛鍚?,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀵嗙爜',
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瑙掕壊',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='绠＄悊鍛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2025-02-19 06:42:23','admin','admin','绠＄悊鍛?);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshoudingdan`
--

DROP TABLE IF EXISTS `xiaoshoudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshoudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `xiaoshoudingdan` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '閿€鍞鍗?,
  `shangpinmingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧鍚嶇О',
  `shangpinfenlei` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鍟嗗搧鍒嗙被',
  `guige` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瑙勬牸',
  `jiage` double DEFAULT NULL COMMENT '浠锋牸',
  `shuliang` int(11) DEFAULT NULL COMMENT '鏁伴噺',
  `shangpinzongjia` double DEFAULT NULL COMMENT '鍟嗗搧鎬讳环',
  `kehumingcheng` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瀹㈡埛鍚嶇О',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎵嬫満鍙风爜',
  `xiaoshouriqi` datetime DEFAULT NULL COMMENT '閿€鍞棩鏈?,
  `xiaoshouzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '閿€鍞处鍙?,
  `xiaoshouxingming` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '閿€鍞鍚?,
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鏄惁瀹℃牳',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '鍥炲鍐呭',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshoudingdan` (`xiaoshoudingdan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='閿€鍞鍗?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshoudingdan`
--

LOCK TABLES `xiaoshoudingdan` WRITE;
/*!40000 ALTER TABLE `xiaoshoudingdan` DISABLE KEYS */;
INSERT INTO `xiaoshoudingdan` VALUES (1,'2025-02-19 06:42:23','1111111111','鍟嗗搧鍚嶇О1','鍟嗗搧鍒嗙被1','瑙勬牸1',1,1,1,'瀹㈡埛鍚嶇О1','19819881111','2025-02-19 14:42:23','閿€鍞处鍙?','閿€鍞鍚?','鏄?,''),(2,'2025-02-19 06:42:23','2222222222','鍟嗗搧鍚嶇О2','鍟嗗搧鍒嗙被2','瑙勬牸2',2,2,2,'瀹㈡埛鍚嶇О2','19819881112','2025-02-19 14:42:23','閿€鍞处鍙?','閿€鍞鍚?','鏄?,''),(3,'2025-02-19 06:42:23','3333333333','鍟嗗搧鍚嶇О3','鍟嗗搧鍒嗙被3','瑙勬牸3',3,3,3,'瀹㈡埛鍚嶇О3','19819881113','2025-02-19 14:42:23','閿€鍞处鍙?','閿€鍞鍚?','鏄?,''),(4,'2025-02-19 06:42:23','4444444444','鍟嗗搧鍚嶇О4','鍟嗗搧鍒嗙被4','瑙勬牸4',4,4,4,'瀹㈡埛鍚嶇О4','19819881114','2025-02-19 14:42:23','閿€鍞处鍙?','閿€鍞鍚?','鏄?,''),(5,'2025-02-19 06:42:23','5555555555','鍟嗗搧鍚嶇О5','鍟嗗搧鍒嗙被5','瑙勬牸5',5,5,5,'瀹㈡埛鍚嶇О5','19819881115','2025-02-19 14:42:23','閿€鍞处鍙?','閿€鍞鍚?','鏄?,''),(6,'2025-02-19 06:42:23','6666666666','鍟嗗搧鍚嶇О6','鍟嗗搧鍒嗙被6','瑙勬牸6',6,6,6,'瀹㈡埛鍚嶇О6','19819881116','2025-02-19 14:42:23','閿€鍞处鍙?','閿€鍞鍚?','鏄?,''),(7,'2025-02-19 06:42:23','7777777777','鍟嗗搧鍚嶇О7','鍟嗗搧鍒嗙被7','瑙勬牸7',7,7,7,'瀹㈡埛鍚嶇О7','19819881117','2025-02-19 14:42:23','閿€鍞处鍙?','閿€鍞鍚?','鏄?,''),(8,'2025-02-19 06:42:23','8888888888','鍟嗗搧鍚嶇О8','鍟嗗搧鍒嗙被8','瑙勬牸8',8,8,8,'瀹㈡埛鍚嶇О8','19819881118','2025-02-19 14:42:23','閿€鍞处鍙?','閿€鍞鍚?','鏄?,''),(9,'2025-02-19 06:42:23','9999999999','鍟嗗搧鍚嶇О9','鍟嗗搧鍒嗙被9','瑙勬牸9',9,9,9,'瀹㈡埛鍚嶇О9','19819881119','2025-02-19 14:42:23','閿€鍞处鍙?','閿€鍞鍚?','鏄?,''),(10,'2025-02-19 06:42:23','11111111110','鍟嗗搧鍚嶇О10','鍟嗗搧鍒嗙被10','瑙勬牸10',10,10,10,'瀹㈡埛鍚嶇О10','198198811110','2025-02-19 14:42:23','閿€鍞处鍙?0','閿€鍞鍚?0','鏄?,'');
/*!40000 ALTER TABLE `xiaoshoudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshourenyuan`
--

DROP TABLE IF EXISTS `xiaoshourenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshourenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '鍒涘缓鏃堕棿',
  `xiaoshouzhanghao` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '閿€鍞处鍙?,
  `mima` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '瀵嗙爜',
  `xiaoshouxingming` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '閿€鍞鍚?,
  `touxiang` longtext COLLATE utf8mb4_unicode_ci COMMENT '澶村儚',
  `xingbie` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎬у埆',
  `shoujihaoma` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鎵嬫満鍙风爜',
  `sfsh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鏄惁瀹℃牳',
  `shhf` longtext COLLATE utf8mb4_unicode_ci COMMENT '鍥炲鍐呭',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshouzhanghao` (`xiaoshouzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='閿€鍞汉鍛?;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshourenyuan`
--

LOCK TABLES `xiaoshourenyuan` WRITE;
/*!40000 ALTER TABLE `xiaoshourenyuan` DISABLE KEYS */;
INSERT INTO `xiaoshourenyuan` VALUES (41,'2025-02-19 06:42:22','閿€鍞处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閿€鍞鍚?','file/xiaoshourenyuanTouxiang1.jpg','鐢?,'19819881111','鏄?,''),(42,'2025-02-19 06:42:22','閿€鍞处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閿€鍞鍚?','file/xiaoshourenyuanTouxiang2.jpg','鐢?,'19819881112','鏄?,''),(43,'2025-02-19 06:42:22','閿€鍞处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閿€鍞鍚?','file/xiaoshourenyuanTouxiang3.jpg','鐢?,'19819881113','鏄?,''),(44,'2025-02-19 06:42:22','閿€鍞处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閿€鍞鍚?','file/xiaoshourenyuanTouxiang4.jpg','鐢?,'19819881114','鏄?,''),(45,'2025-02-19 06:42:22','閿€鍞处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閿€鍞鍚?','file/xiaoshourenyuanTouxiang5.jpg','鐢?,'19819881115','鏄?,''),(46,'2025-02-19 06:42:22','閿€鍞处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閿€鍞鍚?','file/xiaoshourenyuanTouxiang6.jpg','鐢?,'19819881116','鏄?,''),(47,'2025-02-19 06:42:23','閿€鍞处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閿€鍞鍚?','file/xiaoshourenyuanTouxiang7.jpg','鐢?,'19819881117','鏄?,''),(48,'2025-02-19 06:42:23','閿€鍞处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閿€鍞鍚?','file/xiaoshourenyuanTouxiang8.jpg','鐢?,'19819881118','鏄?,''),(49,'2025-02-19 06:42:23','閿€鍞处鍙?','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閿€鍞鍚?','file/xiaoshourenyuanTouxiang9.jpg','鐢?,'19819881119','鏄?,''),(50,'2025-02-19 06:42:23','閿€鍞处鍙?0','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','閿€鍞鍚?0','file/xiaoshourenyuanTouxiang10.jpg','鐢?,'198198811110','鏄?,'');
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
