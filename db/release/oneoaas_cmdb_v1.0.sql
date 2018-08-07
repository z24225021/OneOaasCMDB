-- MySQL dump 10.13  Distrib 5.6.29, for osx10.8 (x86_64)
--
-- Host: localhost    Database: oneoaas_cmdb
-- ------------------------------------------------------
-- Server version	5.6.29

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
-- Table structure for table `access_key`
--

DROP TABLE IF EXISTS `access_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_key` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `access_key_id` varchar(50) DEFAULT NULL,
  `access_key_secret` varchar(50) DEFAULT NULL,
  `is_disable` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  `expire_time` datetime NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_key`
--

LOCK TABLES `access_key` WRITE;
/*!40000 ALTER TABLE `access_key` DISABLE KEYS */;
INSERT INTO `access_key` VALUES (3,4,'fd189b20d075116df34b486d8ef5a4bd','2f6df3df1b77499500fa8b4aaa5f282b1fd4d0c5',1,0,'2016-07-20 18:53:31','2016-07-20 18:53:31'),(4,4,'74c7e9d74065a29cd9c7b55b7788724f','48ad3eebed7ddf711fc4cded2362866486924076',1,0,'2016-07-20 18:53:46','2016-07-20 18:53:46'),(5,4,'24c900dafe1e643fbb416deb8574b8ba','81d23a293502fd3cac8e33d433c400ea70edc2d9',0,1,'2016-07-20 18:54:18','2016-07-20 18:54:18');
/*!40000 ALTER TABLE `access_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agreement`
--

DROP TABLE IF EXISTS `agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agreement` (
  `agreementid` bigint(20) NOT NULL AUTO_INCREMENT,
  `agreement_name` varchar(100) NOT NULL DEFAULT '',
  `agreement_no` varchar(100) NOT NULL DEFAULT '',
  `agreement_price` bigint(20) DEFAULT NULL,
  `agreement_sign_date` datetime DEFAULT NULL,
  `agreement_start_date` datetime DEFAULT NULL,
  `agreement_stop_date` datetime DEFAULT NULL,
  `agreement_signer` varchar(100) DEFAULT NULL,
  `agreement_path` varchar(100) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  PRIMARY KEY (`agreementid`),
  UNIQUE KEY `agreement_name` (`agreement_name`),
  UNIQUE KEY `agreement_no` (`agreement_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agreement`
--

LOCK TABLES `agreement` WRITE;
/*!40000 ALTER TABLE `agreement` DISABLE KEYS */;
INSERT INTO `agreement` VALUES (1,'OneOaas','36',23244,NULL,NULL,NULL,'韩','DEMO','test',2,2),(2,'testaa','111',223,'2016-06-28 23:44:15','2016-06-28 23:44:17','2016-06-28 23:44:18','11','','test',2,1),(3,'aaa','ddd',0,'2016-06-28 23:46:34','2016-06-28 23:46:38','2016-06-28 23:46:36','ddd','','tet',2,1),(4,'teste','a',0,'2016-06-28 23:47:18','2016-06-28 23:47:24','2016-06-28 23:47:27','233','','test',2,1),(5,'test','abe',0,'2016-06-28 23:58:34','2016-06-28 23:58:36','2016-06-28 23:58:39','test','','test',2,1),(6,'testUpload','test',0,'2016-07-07 01:36:42','2016-07-07 01:36:44','2016-07-07 01:36:48','test','','test',2,1),(8,'testaa4','1111',11,'2016-07-07 01:40:15','2016-07-07 01:40:17','2016-07-07 01:40:19','111','www/员工入职报到流程.doc','test',2,1),(9,'testpdf','12121212',1212,'2016-07-07 01:47:06','2016-07-07 01:47:07','2016-07-07 01:47:10','testa','www/Effective Go - The Go Programming Language.pdf','test',2,1);
/*!40000 ALTER TABLE `agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agreement_state`
--

DROP TABLE IF EXISTS `agreement_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agreement_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agreement_state`
--

LOCK TABLES `agreement_state` WRITE;
/*!40000 ALTER TABLE `agreement_state` DISABLE KEYS */;
INSERT INTO `agreement_state` VALUES (1,'已签订',0,'2016-05-30 15:50:12','han','han','2016-05-30 15:50:24'),(2,'取消',0,'2016-05-30 15:50:52','han','han','2016-05-30 15:50:59');
/*!40000 ALTER TABLE `agreement_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app` (
  `appid` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) DEFAULT NULL,
  `app_parent_id` bigint(20) DEFAULT NULL,
  `teamown` varchar(256) DEFAULT NULL,
  `devown` varchar(256) DEFAULT NULL,
  `opsown` varchar(256) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `level_id` bigint(20) NOT NULL,
  PRIMARY KEY (`appid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` VALUES (35,'测试',0,'admin','admin','admin','test',3),(36,'开发',0,'admin','admin','admin','test',1);
/*!40000 ALTER TABLE `app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_level`
--

DROP TABLE IF EXISTS `app_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_level`
--

LOCK TABLES `app_level` WRITE;
/*!40000 ALTER TABLE `app_level` DISABLE KEYS */;
INSERT INTO `app_level` VALUES (1,0,'2016-06-02 10:32:33','admin','admin','2016-06-02 10:32:46','一级业务'),(2,0,'2016-06-02 10:33:29','admin','admin','2016-06-02 10:33:38','二级业务'),(3,0,'2016-06-02 10:35:25','admin','admin','2016-06-02 10:35:32','三级业务'),(4,0,'2016-06-02 10:35:49','admin','admin','2016-06-02 10:35:57','四级业务'),(5,0,'2016-06-02 10:36:38','admin','admin','2016-06-02 10:36:49','五级业务');
/*!40000 ALTER TABLE `app_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES (1,'Xeon E3',0,'2016-06-03 16:57:26','admin','admin','2016-06-03 16:57:34'),(2,'Xeon E5',0,'2016-06-03 16:57:48','admin','admin','2016-06-03 16:57:58'),(3,'Xeon E7',0,'2016-06-03 16:58:11','admin','admin','2016-06-03 16:58:18'),(4,'Xeon 5600',0,'2016-06-03 16:58:34','admin','admin','2016-06-03 16:58:43');
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datacenter`
--

DROP TABLE IF EXISTS `datacenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datacenter` (
  `dcid` bigint(20) NOT NULL AUTO_INCREMENT,
  `dcname` varchar(255) DEFAULT NULL,
  `dcprovince` varchar(256) DEFAULT NULL,
  `dccity` varchar(256) DEFAULT NULL,
  `dccounty` varchar(256) DEFAULT NULL,
  `dcaddress` varchar(256) DEFAULT NULL,
  `dcgeo` varchar(256) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `region_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  PRIMARY KEY (`dcid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacenter`
--

LOCK TABLES `datacenter` WRITE;
/*!40000 ALTER TABLE `datacenter` DISABLE KEYS */;
INSERT INTO `datacenter` VALUES (24,'上海数据中心','上海','市辖区','黄浦区','上海市普陀区','35.65','上海',1,1,3),(29,'北京数据中心','北京','市辖区','朝阳区','北京市朝阳区','116.46,39.92','北京',3,1,2),(30,'testaaa','安徽','安庆市','太湖县','test','120.55,30.55','test',1,1,2),(31,'dc110','安徽','安庆市','太湖县','test','11.55','test',1,1,2),(32,'testawew','安徽','安庆市','太湖县','test','22.44','test',1,1,2);
/*!40000 ALTER TABLE `datacenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datacenter_region`
--

DROP TABLE IF EXISTS `datacenter_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datacenter_region` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacenter_region`
--

LOCK TABLES `datacenter_region` WRITE;
/*!40000 ALTER TABLE `datacenter_region` DISABLE KEYS */;
INSERT INTO `datacenter_region` VALUES (1,'华东',0,'2016-05-30 15:39:55','han','han','2016-05-30 15:39:18'),(2,'华西',0,'2016-05-30 15:47:22','han','han','2016-05-30 15:47:30'),(3,'华北',0,'2016-05-30 15:47:48','han','han','2016-05-30 15:47:56'),(4,'华南',0,'2016-05-30 15:48:12','han','han','2016-05-30 15:48:14'),(5,'华中',0,'2016-05-30 15:48:40','han','han','2016-05-30 15:48:48'),(6,'海外',0,'2016-05-30 15:49:10','han','han','2016-05-30 15:49:18');
/*!40000 ALTER TABLE `datacenter_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datacenter_state`
--

DROP TABLE IF EXISTS `datacenter_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datacenter_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacenter_state`
--

LOCK TABLES `datacenter_state` WRITE;
/*!40000 ALTER TABLE `datacenter_state` DISABLE KEYS */;
INSERT INTO `datacenter_state` VALUES (1,'使用中',0,'2016-05-30 15:50:12','han','han','2016-06-21 13:07:27'),(2,'下线',0,'2016-05-30 15:50:52','han','han','2016-06-21 13:21:33'),(3,'故障',0,'2016-05-30 15:51:35','han','han','2016-06-21 13:01:24');
/*!40000 ALTER TABLE `datacenter_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dcprofile`
--

DROP TABLE IF EXISTS `dcprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dcprofile` (
  `dcid` bigint(20) NOT NULL AUTO_INCREMENT,
  `dcname` varchar(255) DEFAULT NULL,
  `dcgeo` varchar(256) DEFAULT NULL,
  `dcsupplier` varchar(256) DEFAULT NULL,
  `dcbusiness` varchar(256) DEFAULT NULL,
  `dctechnology` varchar(256) DEFAULT NULL,
  `dcreceiver` varchar(256) DEFAULT NULL,
  `dcphone` varchar(256) DEFAULT NULL,
  `dcops` varchar(256) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`dcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dcprofile`
--

LOCK TABLES `dcprofile` WRITE;
/*!40000 ALTER TABLE `dcprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `dcprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnspoddomain`
--

DROP TABLE IF EXISTS `dnspoddomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnspoddomain` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname_speedup` varchar(256) DEFAULT NULL,
  `created_on` varchar(256) DEFAULT NULL,
  `ext_status` varchar(256) DEFAULT NULL,
  `group_id` varchar(256) DEFAULT NULL,
  `is_mark` bigint(20) DEFAULT NULL,
  `is_vip` bigint(20) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `owner` varchar(256) DEFAULT NULL,
  `punycode` varchar(256) DEFAULT NULL,
  `records` varchar(256) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `searchengine_push` bigint(20) DEFAULT NULL,
  `ttl` varchar(256) DEFAULT NULL,
  `updated_on` varchar(256) DEFAULT NULL,
  `token_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) NOT NULL,
  `grade_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnspoddomain`
--

LOCK TABLES `dnspoddomain` WRITE;
/*!40000 ALTER TABLE `dnspoddomain` DISABLE KEYS */;
INSERT INTO `dnspoddomain` VALUES (1,'enable','2016-06-10 11:55:10','dnserror','2',0,0,'baidu.com','2','2','2','',0,'2','2016-06-09 06:30:10',2,1,1);
/*!40000 ALTER TABLE `dnspoddomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnspoddomain_grade`
--

DROP TABLE IF EXISTS `dnspoddomain_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnspoddomain_grade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnspoddomain_grade`
--

LOCK TABLES `dnspoddomain_grade` WRITE;
/*!40000 ALTER TABLE `dnspoddomain_grade` DISABLE KEYS */;
INSERT INTO `dnspoddomain_grade` VALUES (1,'旧免费套餐 (旧套餐)',0,'2016-06-06 13:50:48','admin','admin','2016-06-06 13:50:56'),(2,'个人豪华套餐 (旧套餐)',0,'2016-06-06 13:51:11','admin','admin','2016-06-06 13:51:19'),(3,'企业Ⅰ (旧套餐)',0,'2016-06-06 13:51:56','admin','admin','2016-06-06 13:52:08'),(4,'企业Ⅱ (旧套餐)',0,'2016-06-06 13:52:31','admin','admin','2016-06-06 13:52:39'),(5,'企业Ⅲ (旧套餐)',0,'2016-06-06 13:53:02','admin','admin','2016-06-06 13:53:09'),(6,'免费套餐',0,'2016-06-06 13:53:24','admin','admin','2016-06-06 13:53:32'),(7,'个人专业版',0,'2016-06-06 13:53:45','admin','admin','2016-06-06 13:53:53'),(8,'企业创业版',0,'2016-06-06 13:54:11','admin','admin','2016-06-06 13:54:18'),(9,'企业标准版',0,'2016-06-06 13:54:30','admin','admin','2016-06-06 13:54:38'),(10,'企业旗舰版',0,'2016-06-06 13:54:59','admin','admin','2016-06-06 13:55:07');
/*!40000 ALTER TABLE `dnspoddomain_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnspoddomain_state`
--

DROP TABLE IF EXISTS `dnspoddomain_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnspoddomain_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnspoddomain_state`
--

LOCK TABLES `dnspoddomain_state` WRITE;
/*!40000 ALTER TABLE `dnspoddomain_state` DISABLE KEYS */;
INSERT INTO `dnspoddomain_state` VALUES (1,'正常',0,'2016-06-06 13:55:41','admin','admin','2016-06-06 13:56:00'),(2,'已暂停解析',0,'2016-06-06 13:56:17','admin','admin','2016-06-06 13:56:29'),(3,'已被封禁',0,'2016-06-06 13:56:58','admin','admin','2016-06-06 13:57:08'),(4,'已被锁定',0,'2016-06-06 13:57:24','admin','admin','2016-06-06 13:57:32');
/*!40000 ALTER TABLE `dnspoddomain_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnspodrecord`
--

DROP TABLE IF EXISTS `dnspodrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnspodrecord` (
  `id` varchar(255) NOT NULL,
  `enabled` varchar(255) NOT NULL DEFAULT '',
  `line` varchar(255) NOT NULL DEFAULT '',
  `monitor_status` varchar(255) NOT NULL DEFAULT '',
  `mx` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT '',
  `ttl` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `updated_on` varchar(255) NOT NULL DEFAULT '',
  `use_aqb` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `weight` varchar(255) NOT NULL DEFAULT '',
  `token_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnspodrecord`
--

LOCK TABLES `dnspodrecord` WRITE;
/*!40000 ALTER TABLE `dnspodrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnspodrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnspodtoken`
--

DROP TABLE IF EXISTS `dnspodtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnspodtoken` (
  `id` bigint(20) NOT NULL,
  `Token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnspodtoken`
--

LOCK TABLES `dnspodtoken` WRITE;
/*!40000 ALTER TABLE `dnspodtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnspodtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docmanage`
--

DROP TABLE IF EXISTS `docmanage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docmanage` (
  `docmanageid` bigint(20) NOT NULL AUTO_INCREMENT,
  `docmanagename` varchar(255) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `docmanageno` varchar(256) DEFAULT NULL,
  `docpath` varchar(256) DEFAULT NULL,
  `doctype` varchar(256) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`docmanageid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docmanage`
--

LOCK TABLES `docmanage` WRITE;
/*!40000 ALTER TABLE `docmanage` DISABLE KEYS */;
INSERT INTO `docmanage` VALUES (1,'正大监控项目合同',0,'11','/app','完整','正大');
/*!40000 ALTER TABLE `docmanage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `harddisk`
--

DROP TABLE IF EXISTS `harddisk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `harddisk` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harddisk`
--

LOCK TABLES `harddisk` WRITE;
/*!40000 ALTER TABLE `harddisk` DISABLE KEYS */;
INSERT INTO `harddisk` VALUES (1,'300G',0,'2016-06-03 17:05:09','admin','admin','2016-06-03 17:05:18'),(2,'500G',0,'2016-06-03 17:05:28','admin','admin','2016-06-03 17:05:37'),(3,'1T',0,'2016-06-03 17:05:51','admin','admin','2016-06-03 17:05:59'),(4,'1.5T',0,'2016-06-03 17:06:11','admin','admin','2016-06-03 17:06:19'),(5,'2T',0,'2016-06-03 17:06:28','admin','admin','2016-06-03 17:06:36');
/*!40000 ALTER TABLE `harddisk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hardware`
--

DROP TABLE IF EXISTS `hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hardware` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `online` bigint(20) DEFAULT NULL,
  `hardware_sn` varchar(256) DEFAULT NULL,
  `hardware_name` varchar(255) DEFAULT NULL,
  `manager_ip` varchar(255) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `rack_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `manage_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardware`
--

LOCK TABLES `hardware` WRITE;
/*!40000 ALTER TABLE `hardware` DISABLE KEYS */;
INSERT INTO `hardware` VALUES (1,0,'AB5732 SRX3600','瞻博（Juniper）SRX100H2 ',NULL,'',22,6,2,'10.0.1.110'),(2,0,'AB5732 SRX3287','华三（H3C）S1016',NULL,'',22,5,2,'10.0.1.117');
/*!40000 ALTER TABLE `hardware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hardware_state`
--

DROP TABLE IF EXISTS `hardware_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hardware_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) NOT NULL DEFAULT '',
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardware_state`
--

LOCK TABLES `hardware_state` WRITE;
/*!40000 ALTER TABLE `hardware_state` DISABLE KEYS */;
INSERT INTO `hardware_state` VALUES (1,'未知',0,'2016-06-02 15:16:08','admin','admin','2016-06-02 15:16:20'),(2,'监控',0,'2016-06-02 15:16:30','admin','admin','2016-06-02 15:16:39'),(3,'故障',0,'2016-06-02 15:16:49','admin','admin','2016-06-02 15:16:57');
/*!40000 ALTER TABLE `hardware_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hardware_type`
--

DROP TABLE IF EXISTS `hardware_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hardware_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardware_type`
--

LOCK TABLES `hardware_type` WRITE;
/*!40000 ALTER TABLE `hardware_type` DISABLE KEYS */;
INSERT INTO `hardware_type` VALUES (1,'CPU',0,'2016-06-23 14:47:57','admin','admin','2016-06-23 14:48:19'),(2,'内存',0,'2016-06-23 14:48:05','admin','admin','2016-06-23 14:48:21'),(3,'硬盘',0,'2016-06-23 14:48:09','admin','admin','2016-06-23 14:48:24'),(4,'光驱',0,'2016-06-23 14:48:11','admin','admin','2016-06-23 14:48:26'),(5,'交换机',0,'2016-06-23 14:48:14','admin','admin','2016-06-23 14:48:28'),(6,'防火墙',0,'2016-06-23 14:48:16','admin','admin','2016-06-23 14:48:30');
/*!40000 ALTER TABLE `hardware_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,'Linux主机',0,'2016-06-03 17:01:46','admin','admin','2016-06-03 17:01:55'),(2,'Windows主机',0,'2016-06-03 17:02:17','admin','admin','2016-06-03 17:02:26');
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internet_service_provider`
--

DROP TABLE IF EXISTS `internet_service_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internet_service_provider` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internet_service_provider`
--

LOCK TABLES `internet_service_provider` WRITE;
/*!40000 ALTER TABLE `internet_service_provider` DISABLE KEYS */;
INSERT INTO `internet_service_provider` VALUES (1,'中国电信',0,'2016-06-02 15:11:54','admin','admin','2016-06-02 15:12:01'),(2,'中国移动通信',0,'2016-06-02 15:12:16','admin','admin','2016-06-02 15:12:26'),(3,'中国联通',0,'2016-06-02 15:12:38','admin','admin','2016-06-02 15:12:46'),(4,'北京电信通',0,'2016-06-02 15:12:59','admin','admin','2016-06-02 15:13:07');
/*!40000 ALTER TABLE `internet_service_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipam_address`
--

DROP TABLE IF EXISTS `ipam_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipam_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(11) DEFAULT NULL,
  `isgateway` int(11) DEFAULT NULL,
  `dnsname` varchar(128) DEFAULT NULL,
  `mac` varchar(128) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `owner` varchar(128) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `app_id` bigint(20) NOT NULL,
  `ipam_subnets_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipam_address`
--

LOCK TABLES `ipam_address` WRITE;
/*!40000 ALTER TABLE `ipam_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipam_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipam_subnets`
--

DROP TABLE IF EXISTS `ipam_subnets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipam_subnets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subnet` varchar(255) DEFAULT NULL,
  `mask` varchar(3) DEFAULT NULL,
  `pingsubnet` int(11) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `app_id` bigint(20) NOT NULL,
  `ipam_vlan_id` bigint(20) NOT NULL,
  `ipam_vrfs_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipam_subnets`
--

LOCK TABLES `ipam_subnets` WRITE;
/*!40000 ALTER TABLE `ipam_subnets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipam_subnets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipam_vlan`
--

DROP TABLE IF EXISTS `ipam_vlan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipam_vlan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number` bigint(20) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `ipam_vlan_domain_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipam_vlan`
--

LOCK TABLES `ipam_vlan` WRITE;
/*!40000 ALTER TABLE `ipam_vlan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipam_vlan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipam_vlan_domain`
--

DROP TABLE IF EXISTS `ipam_vlan_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipam_vlan_domain` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipam_vlan_domain`
--

LOCK TABLES `ipam_vlan_domain` WRITE;
/*!40000 ALTER TABLE `ipam_vlan_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipam_vlan_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipam_vrfs`
--

DROP TABLE IF EXISTS `ipam_vrfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipam_vrfs` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `rd` varchar(128) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipam_vrfs`
--

LOCK TABLES `ipam_vrfs` WRITE;
/*!40000 ALTER TABLE `ipam_vrfs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipam_vrfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(255) DEFAULT NULL,
  `email` varchar(11) DEFAULT NULL,
  `telphone` varchar(11) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'戴尔','dell@','123233',NULL),(2,'惠普','huipu@','453454',NULL),(16,'思科','sike@','233322','');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory`
--

DROP TABLE IF EXISTS `memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory`
--

LOCK TABLES `memory` WRITE;
/*!40000 ALTER TABLE `memory` DISABLE KEYS */;
INSERT INTO `memory` VALUES (1,'1GB',0,'2016-06-03 16:59:13','admin','admin','2016-06-03 16:59:20'),(2,'2GB',0,'2016-06-03 16:59:33','admin','admin','2016-06-03 16:59:41'),(3,'4GB',0,'2016-06-03 16:59:52','admin','admin','2016-06-03 16:59:59'),(4,'8GB',0,'2016-06-03 17:00:09','admin','admin','2016-06-03 17:00:18'),(5,'16GB',0,'2016-06-03 17:00:30','admin','admin','2016-06-03 17:00:38');
/*!40000 ALTER TABLE `memory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `menuId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `display_name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(50) DEFAULT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `createby` varchar(100) DEFAULT '',
  `updateby` varchar(100) DEFAULT '',
  `updatetime` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `level` bigint(5) DEFAULT NULL,
  `logo` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'dashbord','仪表盘','',0,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(2,'resource_query','资源查询','',0,0,NULL,'admin','','2016-07-10 15:38:34',0,NULL,NULL),(3,'resource_change','资源变更','',0,0,NULL,'admin','','2016-07-10 15:38:34',0,NULL,NULL),(4,'system_manage','系统管理','',0,0,NULL,'admin','','2016-07-10 15:39:10',0,NULL,NULL),(19,'managedatacenter','管理数据中心','/managedatacenter',3,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(20,'manageroom','管理机房','/manageroom',3,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(21,'managerack','管理机柜','/managerack',3,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(22,'managebandwidth','管理带宽','/managebandwidth',3,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(23,'managehardware','管理硬件','/managehardware',3,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(24,'manageserver','管理服务器','/manageserver',3,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(25,'manageip','管理IP','/manageip',3,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(26,'managedomain','管理域名','/managedomain',3,0,NULL,'admin','','2016-07-10 15:38:34',0,NULL,NULL),(27,'managesupplier','管理供应商','/managesupplier',3,0,NULL,'admin','','2016-07-10 15:38:34',0,NULL,NULL),(28,'manageagreement','管理合同','/manageagreement',3,0,NULL,'admin','','2016-07-10 15:38:34',0,NULL,NULL),(29,'manageapp','管理业务模块','/manageapp',3,0,NULL,'admin','','2016-07-10 15:38:34',0,NULL,NULL),(30,'managestatistical','管理统计分析','/managestatistical',3,1,NULL,'admin',NULL,'2016-04-28 16:33:54',0,NULL,NULL),(31,'manageresources','管理资源导入','/manageresources',3,1,NULL,'admin',NULL,'2016-04-28 16:33:54',0,NULL,NULL),(32,'managechange','管理变更管理','/managechange',3,1,NULL,'admin',NULL,'2016-04-28 16:33:54',0,NULL,NULL),(33,'systemuser','用户管理','/systemuser',4,0,NULL,'admin','','2016-07-10 15:39:10',0,NULL,NULL),(34,'systemconfig','系统配置','/systemconfig',4,0,NULL,'admin','','2016-07-10 15:39:10',0,NULL,NULL),(39,'manage_vcenter_vm','管理VCENTER资源','/manage_vcenter_vm',3,0,'2016-07-18 16:28:23','oneoaas','','2016-07-18 16:28:23',0,2,0),(40,'manage_aliyun_vm','管理阿里云虚拟机','/manage_aliyun_vm',3,0,'2016-07-18 16:29:18','oneoaas','','2016-07-18 16:29:18',0,2,0),(41,'manage_aws_vm','管理AWS虚拟机','/manage_aws_vm',3,0,'2016-07-18 16:29:38','oneoaas','','2016-07-18 16:29:38',0,2,0),(45,'system_api','API访问','/system_api',4,0,'2016-07-19 18:37:15','oneoaas','','2016-07-19 18:37:15',0,2,0),
  (46,'resource_view','资源可视化','/resource_view',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),
  (47,'resource_quick','资源查询','/resource_quick',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL);

#  (46,'searchresources','资源搜索','/resourses_search',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(47,'visualizationresources','资源可视化','/resourses_visualization',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;


/*(5,'selectdatacenter','查询数据中心','/selectdatacenter',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(6,'selectroom','查询机房','/selectroom',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(7,'selectrack','查询机柜','/selectrack',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(8,'selectbandwidth','查询带宽','/selectbandwidth',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(9,'selecthardware','查询硬件','/selecthardware',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(10,'selectserver','查询服务器','/selectserver',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(11,'selectip','查询IP','/selectip',2,0,NULL,'admin','','2016-07-10 15:39:30',0,NULL,NULL),(12,'selectdomain','查询域名','/selectdomain',2,0,NULL,'admin','','2016-07-10 15:38:34',0,NULL,NULL),(13,'selectsupplier','查询供应商','/selectsupplier',2,0,NULL,'admin','','2016-07-10 15:38:34',0,NULL,NULL),(14,'selectagreement','查询合同','/selectagreement',2,0,NULL,'admin','','2016-07-10 15:38:34',0,NULL,NULL),(15,'selectapp','查询业务模块','/selectapp',2,0,NULL,'admin','','2016-07-10 15:38:34',0,NULL,NULL),(16,'selectstatistical','查询统计分析','/selectstatistical',2,1,NULL,'admin',NULL,'2016-04-28 16:33:54',0,NULL,NULL),(17,'selectresources','查询资源导入','/selectresources',2,1,NULL,'admin',NULL,'2016-04-28 16:33:54',0,NULL,NULL),(18,'selectchange','查询变更管理','/selectchange',2,1,NULL,'admin',NULL,'2016-04-28 16:33:54',0,NULL,NULL),(42,'select_vcenter_vm','查询VCENTER虚拟机','/select_vcenter_vm',2,0,'2016-07-18 16:34:55','oneoaas','','2016-07-18 16:34:55',0,2,0),(43,'select_aliyun_vm','查询阿里云虚拟机','/select_aliyun_vm',2,0,'2016-07-18 16:35:24','oneoaas','','2016-07-18 16:35:24',0,2,0),(44,'select_aws_vm','查询AWS虚拟机','/select_aws_vm',2,0,'2016-07-18 16:35:40','oneoaas','','2016-07-18 16:35:40',0,2,0),*/
--
-- Table structure for table `menu_rights`
--

DROP TABLE IF EXISTS `menu_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_rights` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) NOT NULL,
  `right_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_rights`
--

LOCK TABLES `menu_rights` WRITE;
/*!40000 ALTER TABLE `menu_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_roles`
--

DROP TABLE IF EXISTS `menu_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_roles`
--

LOCK TABLES `menu_roles` WRITE;
/*!40000 ALTER TABLE `menu_roles` DISABLE KEYS */;
INSERT INTO `menu_roles` VALUES (29,1,9),(30,4,9),(31,5,9),(32,6,9),(33,7,9),(34,8,9),(35,9,9),(36,10,9),(37,11,9),(38,19,9),(39,20,9),(40,21,9),(41,22,9),(42,23,9),(43,24,9),(44,25,9),(45,33,9),(46,34,9),(81,1,8),(82,2,8),(83,3,8),(84,4,8),(85,5,8),(86,6,8),(87,7,8),(88,8,8),(89,9,8),(90,10,8),(91,11,8),(92,12,8),(93,13,8),(94,14,8),(95,15,8),(96,19,8),(97,20,8),(98,21,8),(99,22,8),(100,23,8),(101,24,8),(102,25,8),(103,26,8),(104,27,8),(105,28,8),(106,29,8),(107,33,8),(108,34,8),(109,39,8),(110,40,8),(111,41,8),(112,42,8),(113,43,8),(114,44,8),(115,45,8);
/*!40000 ALTER TABLE `menu_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_adapter`
--

DROP TABLE IF EXISTS `network_adapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network_adapter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_adapter`
--

LOCK TABLES `network_adapter` WRITE;
/*!40000 ALTER TABLE `network_adapter` DISABLE KEYS */;
INSERT INTO `network_adapter` VALUES (1,'10Mbps',0,'2016-06-03 17:07:31','admin','admin','2016-06-03 17:07:42'),(2,'100Mbps',0,'2016-06-03 17:07:53','admin','admin','2016-06-03 17:08:00'),(3,'10/100Mbps',0,'2016-06-03 17:08:22','admin','admin','2016-06-03 17:08:32'),(4,'1000Mbps',0,'2016-06-03 17:08:45','admin','admin','2016-06-03 17:08:52');
/*!40000 ALTER TABLE `network_adapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_bandwidth`
--

DROP TABLE IF EXISTS `network_bandwidth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network_bandwidth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `max_bandwidth` double DEFAULT NULL,
  `min_bandwidth` double DEFAULT NULL,
  `min_cost` double DEFAULT NULL,
  `unit_cost` double DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `isp_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `rack_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_bandwidth`
--

LOCK TABLES `network_bandwidth` WRITE;
/*!40000 ALTER TABLE `network_bandwidth` DISABLE KEYS */;
INSERT INTO `network_bandwidth` VALUES (1,'长城宽带',10,1,500,100,'',1,1,27,22);
/*!40000 ALTER TABLE `network_bandwidth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_bandwidth_state`
--

DROP TABLE IF EXISTS `network_bandwidth_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network_bandwidth_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_bandwidth_state`
--

LOCK TABLES `network_bandwidth_state` WRITE;
/*!40000 ALTER TABLE `network_bandwidth_state` DISABLE KEYS */;
INSERT INTO `network_bandwidth_state` VALUES (1,'使用中',0,'2016-06-02 15:13:45','admin','admin','2016-06-02 15:13:53'),(2,'下线',0,'2016-06-02 15:14:08','admin','admin','2016-06-02 15:14:18'),(3,'故障',0,'2016-06-02 15:14:30','admin','admin','2016-06-02 15:14:40'),(4,'维修',0,'2016-06-02 15:14:51','admin','admin','2016-06-02 15:14:58');
/*!40000 ALTER TABLE `network_bandwidth_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkip`
--

DROP TABLE IF EXISTS `networkip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `networkip` (
  `networkipid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(255) DEFAULT NULL,
  `netmask` varchar(11) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `vlan` int(11) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `app_id` bigint(20) NOT NULL,
  `host_id` bigint(20) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  PRIMARY KEY (`networkipid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkip`
--

LOCK TABLES `networkip` WRITE;
/*!40000 ALTER TABLE `networkip` DISABLE KEYS */;
INSERT INTO `networkip` VALUES (9,'22.22.22.22','22.22.22.22','A类',4,'',35,1,27);
/*!40000 ALTER TABLE `networkip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkiprange`
--

DROP TABLE IF EXISTS `networkiprange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `networkiprange` (
  `networkiprangeid` bigint(20) NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(255) DEFAULT NULL,
  `netmask` varchar(11) DEFAULT NULL,
  `startip` varchar(11) DEFAULT NULL,
  `endip` varchar(11) DEFAULT NULL,
  `vlan` varchar(256) DEFAULT NULL,
  `appid` bigint(20) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`networkiprangeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkiprange`
--

LOCK TABLES `networkiprange` WRITE;
/*!40000 ALTER TABLE `networkiprange` DISABLE KEYS */;
/*!40000 ALTER TABLE `networkiprange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rack`
--

DROP TABLE IF EXISTS `rack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rack` (
  `rackid` bigint(20) NOT NULL AUTO_INCREMENT,
  `rack_name` varchar(255) DEFAULT NULL,
  `standard_num` bigint(20) DEFAULT NULL,
  `top_not_available_num` bigint(20) DEFAULT NULL,
  `bottom_not_available_num` bigint(20) DEFAULT NULL,
  `avaliable_num` bigint(20) DEFAULT NULL,
  `tary_num` bigint(20) DEFAULT NULL,
  `rack_netflow` double DEFAULT NULL,
  `is_ups` int(11) DEFAULT NULL,
  `is_ab` int(11) DEFAULT NULL,
  `power` bigint(20) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `state_id` bigint(20) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  PRIMARY KEY (`rackid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rack`
--

LOCK TABLES `rack` WRITE;
/*!40000 ALTER TABLE `rack` DISABLE KEYS */;
INSERT INTO `rack` VALUES (22,'普陀-核心应用-0987',6,2,1,3,3,10,0,0,4,'                                            ',1,27);
/*!40000 ALTER TABLE `rack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rack_state`
--

DROP TABLE IF EXISTS `rack_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rack_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rack_state`
--

LOCK TABLES `rack_state` WRITE;
/*!40000 ALTER TABLE `rack_state` DISABLE KEYS */;
INSERT INTO `rack_state` VALUES (1,'使用中',0,'2016-06-01 15:51:40','admin','admin','2016-06-01 15:51:49'),(2,'故障',0,'2016-06-01 15:52:40','admin','admin','2016-06-01 15:52:50'),(3,'维修',0,'2016-06-01 15:53:08','admin','admin','2016-06-01 15:53:17');
/*!40000 ALTER TABLE `rack_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `right`
--

DROP TABLE IF EXISTS `right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `right` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `right_type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `right`
--

LOCK TABLES `right` WRITE;
/*!40000 ALTER TABLE `right` DISABLE KEYS */;
/*!40000 ALTER TABLE `right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `right_roles`
--

DROP TABLE IF EXISTS `right_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `right_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `right_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `right_roles`
--

LOCK TABLES `right_roles` WRITE;
/*!40000 ALTER TABLE `right_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `right_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (8,'超级管理员',0,'2016-07-10 15:38:34','','','2016-07-19 18:37:38'),(9,'普通管理员',0,'2016-07-10 15:39:10','','','2016-07-10 15:39:10');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `roomid` bigint(20) NOT NULL AUTO_INCREMENT,
  `roomname` varchar(255) DEFAULT NULL,
  `floor` varchar(256) DEFAULT NULL,
  `roomno` varchar(256) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `business_contact` varchar(256) DEFAULT NULL,
  `technical_contact` varchar(256) DEFAULT NULL,
  `receiving_contact` varchar(256) DEFAULT NULL,
  `maintenance_contact` varchar(256) DEFAULT NULL,
  `datacenter_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  PRIMARY KEY (`roomid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (27,'漕河泾机房','1','308','','韩顺平','李艳恢','李兴华','无闻',24,1),(28,'酒仙桥机房','1','507','','孙洪山','姜钰','张博','王鑫',29,1);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_state`
--

DROP TABLE IF EXISTS `room_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) NOT NULL DEFAULT '',
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_state`
--

LOCK TABLES `room_state` WRITE;
/*!40000 ALTER TABLE `room_state` DISABLE KEYS */;
INSERT INTO `room_state` VALUES (1,'使用中',0,'2016-05-31 14:16:06','admin','admin','2016-05-31 14:16:51'),(2,'测试中',0,'2016-05-31 14:16:08','admin','admin','2016-05-31 14:16:48'),(4,'下线',0,'2016-05-31 14:16:11','admin','admin','2016-05-31 14:16:59');
/*!40000 ALTER TABLE `room_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `serverid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) DEFAULT NULL,
  `modle` varchar(256) NOT NULL DEFAULT '',
  `isHpervisor` bigint(20) NOT NULL DEFAULT '0',
  `isServer` bigint(20) NOT NULL DEFAULT '0',
  `comment` varchar(512) DEFAULT NULL,
  `rack_u_number` bigint(20) DEFAULT NULL,
  `manufacturer_id` bigint(20) NOT NULL,
  `app_id` bigint(20) NOT NULL,
  `rack_id` bigint(20) NOT NULL,
  `host_id` bigint(20) NOT NULL,
  `adapter_id` bigint(20) NOT NULL,
  `harddisk_id` bigint(20) NOT NULL,
  `memory_id` bigint(20) NOT NULL,
  `cpu_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  PRIMARY KEY (`serverid`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES (1,'ER34D-3DDFC-434FD-43433','PowerEdge R730',0,0,'                                                        ',5,1,35,22,1,2,2,4,1,2,1),(2,'WWF23-FG232-DE343-34534','Xeon E5-2603 v3',0,0,'                                                        ',3,1,35,22,1,1,1,1,3,2,1),(12,'Template OS Linux','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(13,'Template App Zabbix Server','',0,0,'',0,1,35,22,1,1,1,1,1,2,1),(14,'Template App Zabbix Proxy',' ',0,0,'',0,1,35,22,1,1,1,1,2,2,1),(15,'Template App Zabbix Agent','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(16,'Template SNMP Interfaces','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(17,'Template SNMP Generic','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(18,'Template SNMP Device','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(19,'Template SNMP OS Windows','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(20,'Template SNMP Disks','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(21,'Template SNMP OS Linux','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(22,'Template SNMP Processors','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(23,'Template IPMI Intel SR1530','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(24,'Template IPMI Intel SR1630','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(25,'Template App MySQL','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(26,'Template OS OpenBSD','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(27,'Template OS FreeBSD','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(28,'Template OS AIX','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(29,'Template OS HP-UX','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(30,'Template OS Solaris','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(31,'Template OS Mac OS X','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(32,'Template OS Windows bak','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(33,'Template JMX Generic','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(34,'Template JMX Tomcat','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(35,'Zabbix server','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(36,'Template Virt VMware','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(37,'Template Virt VMware Guest','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(38,'Template Virt VMware Hypervisor','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(39,'Template App FTP Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(40,'Template App HTTP Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(41,'Template App HTTPS Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(42,'Template App IMAP Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(43,'Template App LDAP Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(44,'Template App NNTP Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(45,'Template App NTP Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(46,'Template App POP Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(47,'Template App SMTP Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(48,'Template App SSH Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(49,'Template App Telnet Service','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(50,'Template ICMP Ping','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(51,'Zabbix server app','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(52,'webapp-001','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(53,'WEB-2','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(54,'WEB-1','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(55,'WEB-3','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(56,'WEB-4','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(57,'WEB-5','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(58,'WEB-6','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(59,'WEB-7','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(60,'WEB-8','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(61,'WEB-9','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(62,'WEB-10','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(63,'WEB-11','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(64,'WEB-12','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(65,'WEB-13','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(66,'WEB-14','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(67,'WEB-15','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(68,'WEB-16','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(69,'WEB-17','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(70,'WEB-18','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(71,'Zabbix server app1111','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(72,'Template OS Windows','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(73,'Template_MicrosoftSQLServer_Named_Instance','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(74,'Template_MicrosoftSQLServer_Default_Instance_SQLServer2008R2','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(75,'Template_MicrosoftSQLServer_Default_Instance','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(76,'sqlserver','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(77,'Template Virt XenServer Hypervisor','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(78,'Template Virt XenServer Guest','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(79,'Template Virt XenServer','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(80,'Template App MS SQL Default Installation bak','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(81,'sqlserver-lld','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(82,'Template App MS SQL Default Installation LLD','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(83,'Nginx_Node01','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(84,'OneOaaS-Zabbix-ReDev-10.0.1.141','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(85,'OneOaas-CMDB-10.0.1.118','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(86,'OneOaas-Monitor-10.0.1.117','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(87,'OneOaas-gitlab-10.0.1.119','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(88,'Ubuntu14.04','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(89,'centos','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(90,'centos 6.6','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(91,'centos test   248','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(92,'centos1','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(93,'centos2','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(94,'centos3','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(95,'centos4','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(96,'centos5','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(97,'centos6.6(B)','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(98,'cloudstack-10.0.1.125','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(99,'cmdbuild-10.0.1.127','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(100,'composer 154','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(101,'connection 185','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(102,'ftp-10.0.1.123','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(103,'jekins-10.0.1.124','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(104,'mysql-10.0.1.134','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(105,'mysql-10.0.1.135','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(106,'mysql-10.0.1.137','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(107,'onecmdb-10.0.1.126','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(108,'oneoaas-cmdb-dev-1-10.0.1.130','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(109,'oneoaas-cmdb-dev-2','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(110,'oneoaas-cmdb-dev-3','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(111,'repo-10.0.1.122','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(112,'rpmbuild-10.0.1.115','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(113,'rpmtest-10.0.1.116','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(114,'server 2008 200','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(115,'server sql 2008','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(116,'vcsa-linux-33','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(117,'wiki-10.0.1.124','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(118,'win08-vcenter-10.0.1.120','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(119,'win7 temp','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(120,'zabbix-node1-10.0.1.128','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(121,'zabbix-node2-10.0.1.129','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(122,'zabbix2.2-10.0.1.112','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(123,'zabbix2.4-10.0.1.23','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(124,'zabbix3.0-10.0.1.114','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(125,'import-1','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(126,'import-2','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(127,'import-3','',0,0,'',0,1,1,1,1,1,1,1,1,1,1),(128,'import-4','',0,0,'',0,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_state`
--

DROP TABLE IF EXISTS `server_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) NOT NULL DEFAULT '',
  `enable` tinyint(1) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `createby` varchar(100) DEFAULT NULL,
  `updateby` varchar(100) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_state`
--

LOCK TABLES `server_state` WRITE;
/*!40000 ALTER TABLE `server_state` DISABLE KEYS */;
INSERT INTO `server_state` VALUES (1,'使用中',0,'2016-06-03 16:50:11','admin','admin','2016-06-03 16:50:21'),(2,'库存',0,'2016-06-03 16:50:41','admin','admin','2016-06-03 16:50:49'),(3,'故障中',0,'2016-06-03 16:51:01','admin','admin','2016-06-03 16:51:08'),(4,'空闲',0,'2016-06-03 16:51:21','admin','admin','2016-06-03 16:51:29'),(5,'测试中',0,'2016-06-03 16:51:39','admin','admin','2016-06-03 16:51:49'),(6,'搬迁中',0,'2016-06-03 16:52:04','admin','admin','2016-06-03 16:52:12'),(7,'已过保',0,'2016-06-03 16:52:26','admin','admin','2016-06-03 16:52:33'),(8,'预占',0,'2016-06-03 16:53:01','admin','admin','2016-06-03 16:53:09');
/*!40000 ALTER TABLE `server_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `session_key` char(64) NOT NULL,
  `session_data` blob,
  `session_expiry` int(11) unsigned NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software` (
  `softwareid` bigint(20) NOT NULL AUTO_INCREMENT,
  `software` varchar(255) DEFAULT NULL,
  `version` varchar(512) DEFAULT NULL,
  `appid` bigint(20) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`softwareid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software`
--

LOCK TABLES `software` WRITE;
/*!40000 ALTER TABLE `software` DISABLE KEYS */;
/*!40000 ALTER TABLE `software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `supplier` varchar(255) DEFAULT NULL,
  `business_contact` varchar(32) DEFAULT NULL,
  `business_tel_phone` varchar(32) DEFAULT NULL,
  `business_mobile_phone` varchar(32) DEFAULT NULL,
  `business_email` varchar(32) DEFAULT NULL,
  `technology_contact` varchar(32) DEFAULT NULL,
  `technology_telphone` varchar(32) DEFAULT NULL,
  `technology_mobile_phone` varchar(32) DEFAULT NULL,
  `technology_email` varchar(32) DEFAULT NULL,
  `office_address` varchar(32) DEFAULT NULL,
  `comment` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (2,'DELL','李','021-6095 0835','021-60950835','3243@','赵','021-60950835','456564565','2323@','上海','oneoaas'),(3,'HUAWEI','孙','021-6095 0835','021-60950835','5454@','杨','021-60950835','234234234','2323@','上海','oneoaas');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_email`
--

DROP TABLE IF EXISTS `system_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `port` varchar(10) NOT NULL DEFAULT '',
  `server` varchar(20) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `update_by` varchar(100) DEFAULT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_email`
--

LOCK TABLES `system_email` WRITE;
/*!40000 ALTER TABLE `system_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_licence`
--

DROP TABLE IF EXISTS `system_licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_licence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` bigint(20) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `expires` bigint(20) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `update_by` varchar(100) DEFAULT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_licence`
--

LOCK TABLES `system_licence` WRITE;
/*!40000 ALTER TABLE `system_licence` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_licence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_log`
--

DROP TABLE IF EXISTS `system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(20) NOT NULL DEFAULT '',
  `module_name` varchar(20) NOT NULL DEFAULT '',
  `module_display_name` varchar(20) NOT NULL DEFAULT '',
  `entity_name` varchar(20) NOT NULL DEFAULT '',
  `entity_display_name` varchar(20) NOT NULL DEFAULT '',
  `instance_id` varchar(20) NOT NULL DEFAULT '',
  `instance_display_name` varchar(20) NOT NULL DEFAULT '',
  `operation` varchar(20) NOT NULL DEFAULT '',
  `cause` varchar(100) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `update_by` varchar(100) DEFAULT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_log`
--

LOCK TABLES `system_log` WRITE;
/*!40000 ALTER TABLE `system_log` DISABLE KEYS */;
INSERT INTO `system_log` VALUES (1,0,'test','test','test','test','test','test','test','test','test','2016-07-11 16:16:30','test','','2016-07-11 16:16:30'),(2,0,'oneoaas','datacenter','数据中心','','','','','添加','','2016-07-11 18:55:24','oneoaas','','2016-07-11 18:55:24'),(3,0,'oneoaas','datacenter','数据中心','','','','','添加','','2016-07-11 18:55:52','oneoaas','','2016-07-11 18:55:52'),(4,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-18 15:41:28','oneoaas','','2016-07-18 15:41:28'),(5,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-18 15:42:14','oneoaas','','2016-07-18 15:42:14'),(6,0,'oneoaas','Menu','菜单','','','','','删除','','2016-07-18 15:42:38','oneoaas','','2016-07-18 15:42:38'),(7,0,'oneoaas','Menu','菜单','','','','','删除','','2016-07-18 15:42:42','oneoaas','','2016-07-18 15:42:42'),(8,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-18 15:43:37','oneoaas','','2016-07-18 15:43:37'),(9,0,'oneoaas','Menu','菜单','','','','','删除','','2016-07-18 15:44:04','oneoaas','','2016-07-18 15:44:04'),(10,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-18 15:55:10','oneoaas','','2016-07-18 15:55:10'),(11,0,'oneoaas','Menu','菜单','','','','','删除','','2016-07-18 16:27:29','oneoaas','','2016-07-18 16:27:29'),(12,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-18 16:28:23','oneoaas','','2016-07-18 16:28:23'),(13,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-18 16:29:18','oneoaas','','2016-07-18 16:29:18'),(14,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-18 16:29:38','oneoaas','','2016-07-18 16:29:38'),(15,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-18 16:34:55','oneoaas','','2016-07-18 16:34:55'),(16,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-18 16:35:24','oneoaas','','2016-07-18 16:35:24'),(17,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-18 16:35:40','oneoaas','','2016-07-18 16:35:40'),(18,0,'oneoaas','Role','角色','','','','','更新','','2016-07-18 16:44:31','oneoaas','','2016-07-18 16:44:31'),(19,0,'oneoaas','Menu','菜单','','','','','添加','','2016-07-19 18:37:15','oneoaas','','2016-07-19 18:37:15'),(20,0,'oneoaas','Role','角色','','','','','更新','','2016-07-19 18:37:38','oneoaas','','2016-07-19 18:37:38'),(21,0,'oneoaas','User','用户','','','','','删除','','2016-07-30 11:29:36','oneoaas','','2016-07-30 11:29:36'),(22,0,'oneoaas','User','用户','','','','','删除','','2016-07-30 11:29:39','oneoaas','','2016-07-30 11:29:39'),(23,0,'oneoaas','User','用户','','','','','删除','','2016-07-30 11:29:41','oneoaas','','2016-07-30 11:29:41'),(24,0,'oneoaas','User','用户','','','','','删除','','2016-07-30 11:29:44','oneoaas','','2016-07-30 11:29:44'),(25,0,'oneoaas','User','用户','','','','','删除','','2016-07-30 11:29:46','oneoaas','','2016-07-30 11:29:46'),(26,0,'oneoaas','User','用户','','','','','删除','','2016-07-30 11:29:49','oneoaas','','2016-07-30 11:29:49');
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `login_name` varchar(45) DEFAULT NULL,
  `email` varchar(128) NOT NULL DEFAULT '',
  `contact_phone` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(32) NOT NULL DEFAULT '',
  `registertime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `contact_phone` (`contact_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'oneoaas','admin','test@qq.com','18601706743','23d68a0f00ed8614d4e836f20ce018dd','xwQQoxl6n7`!@.[#','2016-07-10 15:41:31','2016-07-10 15:41:31',8);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virt`
--

DROP TABLE IF EXISTS `virt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virt` (
  `virtid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) DEFAULT NULL,
  `virttypeid` int(11) NOT NULL DEFAULT '0',
  `cpu` varchar(256) NOT NULL DEFAULT '',
  `memory` varchar(256) NOT NULL DEFAULT '',
  `harddisk` varchar(256) NOT NULL DEFAULT '',
  `networkcard` varchar(256) NOT NULL DEFAULT '',
  `ishypervisor` varchar(256) NOT NULL DEFAULT '',
  `hostname` varchar(256) NOT NULL DEFAULT '',
  `appid` varchar(256) NOT NULL DEFAULT '',
  `comment` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`virtid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virt`
--

LOCK TABLES `virt` WRITE;
/*!40000 ALTER TABLE `virt` DISABLE KEYS */;
/*!40000 ALTER TABLE `virt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virttype`
--

DROP TABLE IF EXISTS `virttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virttype` (
  `virttypeid` int(11) NOT NULL AUTO_INCREMENT,
  `virttype` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`virttypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virttype`
--

LOCK TABLES `virttype` WRITE;
/*!40000 ALTER TABLE `virttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `virttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vm_aliyun`
--

DROP TABLE IF EXISTS `vm_aliyun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vm_aliyun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(50) NOT NULL DEFAULT '',
  `instance_id` varchar(50) NOT NULL DEFAULT '',
  `c_p_u` int(11) NOT NULL DEFAULT '0',
  `memory` int(11) NOT NULL DEFAULT '0',
  `creation_time` datetime NOT NULL,
  `ip_address` varchar(20) NOT NULL DEFAULT '',
  `expired_time` datetime NOT NULL,
  `host_name` varchar(20) NOT NULL DEFAULT '',
  `image_id` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(20) NOT NULL DEFAULT '',
  `zone_id` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vm_aliyun`
--

LOCK TABLES `vm_aliyun` WRITE;
/*!40000 ALTER TABLE `vm_aliyun` DISABLE KEYS */;
INSERT INTO `vm_aliyun` VALUES (1,'oneoaas_monitor','i-231a5ibon',2,4096,'2016-07-20 17:38:43','','2016-07-20 17:38:43','iZ231a5ibonZ','centos6u5_64_40G_ali','','cn-hangzhou-c');
/*!40000 ALTER TABLE `vm_aliyun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vm_aws`
--

DROP TABLE IF EXISTS `vm_aws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vm_aws` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `architecture` varchar(20) NOT NULL DEFAULT '',
  `hypervisor` varchar(20) NOT NULL DEFAULT '',
  `image_id` varchar(20) NOT NULL DEFAULT '',
  `instance_id` varchar(20) NOT NULL DEFAULT '',
  `instance_lifecycle` varchar(20) NOT NULL DEFAULT '',
  `instance_type` varchar(20) NOT NULL DEFAULT '',
  `kernel_id` varchar(20) NOT NULL DEFAULT '',
  `launch_time` varchar(20) NOT NULL DEFAULT '',
  `platform` varchar(20) NOT NULL DEFAULT '',
  `private_dns_name` varchar(20) NOT NULL DEFAULT '',
  `private_ip_address` varchar(20) NOT NULL DEFAULT '',
  `public_dns_name` varchar(20) NOT NULL DEFAULT '',
  `public_ip_address` varchar(20) NOT NULL DEFAULT '',
  `virtualization_type` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vm_aws`
--

LOCK TABLES `vm_aws` WRITE;
/*!40000 ALTER TABLE `vm_aws` DISABLE KEYS */;
/*!40000 ALTER TABLE `vm_aws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vm_vmware`
--

DROP TABLE IF EXISTS `vm_vmware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vm_vmware` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `template` tinyint(1) NOT NULL DEFAULT '0',
  `vm_path_name` varchar(50) NOT NULL DEFAULT '',
  `memory_size` int(11) NOT NULL DEFAULT '0',
  `cpu_reservation` int(11) NOT NULL DEFAULT '0',
  `memory_reservation` int(11) NOT NULL DEFAULT '0',
  `num_cpu` int(11) NOT NULL DEFAULT '0',
  `num_ethernet_cards` int(11) NOT NULL DEFAULT '0',
  `num_virtual_disks` int(11) NOT NULL DEFAULT '0',
  `uuid` varchar(30) NOT NULL DEFAULT '',
  `instance_uuid` varchar(30) NOT NULL DEFAULT '',
  `guest_id` varchar(30) NOT NULL DEFAULT '',
  `guest_fullname` varchar(30) NOT NULL DEFAULT '',
  `annotation` varchar(30) NOT NULL DEFAULT '',
  `vcenter_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7033 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vm_vmware`
--

LOCK TABLES `vm_vmware` WRITE;
/*!40000 ALTER TABLE `vm_vmware` DISABLE KEYS */;
INSERT INTO `vm_vmware` VALUES (6249,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6250,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6251,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6252,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6253,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6254,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6255,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6256,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6257,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6258,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6259,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6260,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6261,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6262,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6263,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6264,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6265,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6266,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6267,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6268,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6269,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6270,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6271,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6272,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6273,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6274,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6275,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6276,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6277,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6278,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6279,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6280,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6281,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6282,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6283,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6284,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6285,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6286,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6287,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6288,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6289,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6290,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6291,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6292,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6293,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6294,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6295,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6296,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6297,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6298,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6299,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6300,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6301,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6302,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6303,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6304,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6305,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6306,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6307,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6308,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6309,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6310,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6311,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6312,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6313,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6314,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6315,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6316,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6317,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6318,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6319,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6320,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6321,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6322,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6323,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6324,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6325,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6326,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6327,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6328,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6329,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6330,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6331,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6332,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6333,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6334,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6335,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6336,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6337,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6338,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6339,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6340,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6341,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6342,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6343,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6344,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6345,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6346,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6347,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6348,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6349,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6350,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6351,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6352,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6353,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6354,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6355,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6356,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6357,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6358,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6359,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6360,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6361,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6362,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6363,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6364,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6365,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6366,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6367,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6368,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6369,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6370,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6371,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6372,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6373,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6374,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6375,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6376,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6377,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6378,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6379,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6380,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6381,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6382,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6383,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6384,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6385,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6386,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6387,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6388,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6389,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6390,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6391,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6392,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6393,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6394,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6395,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6396,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6397,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6398,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6399,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6400,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6401,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6402,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6403,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6404,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6405,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6406,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6407,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6408,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6409,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6410,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6411,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6412,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6413,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6414,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6415,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6416,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6417,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6418,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6419,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6420,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6421,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6422,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6423,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6424,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6425,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6426,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6427,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6428,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6429,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6430,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6431,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6432,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6433,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6434,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6435,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6436,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6437,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6438,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6439,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6440,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6441,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6442,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6443,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6444,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6445,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6446,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6447,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6448,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6449,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6450,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6451,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6452,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6453,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6454,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6455,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6456,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6457,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6458,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6459,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6460,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6461,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6462,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6463,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6464,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6465,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6466,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6467,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6468,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6469,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6470,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6471,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6472,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6473,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6474,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6475,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6476,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6477,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6478,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6479,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6480,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6481,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6482,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6483,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6484,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6485,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6486,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6487,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6488,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6489,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6490,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6491,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6492,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6493,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6494,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6495,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6496,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6497,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6498,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6499,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6500,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6501,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6502,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6503,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6504,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6505,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6506,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6507,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6508,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6509,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6510,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6511,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6512,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6513,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6514,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6515,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6516,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6517,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6518,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6519,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6520,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6521,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6522,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6523,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6524,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6525,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6526,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6527,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6528,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6529,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6530,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6531,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6532,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6533,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6534,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6535,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6536,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6537,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6538,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6539,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6540,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6541,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6542,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6543,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6544,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6545,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6546,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6547,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6548,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6549,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6550,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6551,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6552,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6553,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6554,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6555,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6556,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6557,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6558,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6559,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6560,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6561,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6562,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6563,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6564,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6565,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6566,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6567,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6568,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6569,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6570,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6571,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6572,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6573,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6574,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6575,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6576,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6577,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6578,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6579,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6580,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6581,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6582,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6583,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6584,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6585,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6586,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6587,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6588,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6589,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6590,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6591,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6592,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6593,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6594,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6595,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6596,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6597,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6598,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6599,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6600,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6601,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6602,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6603,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6604,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6605,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6606,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6607,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6608,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6609,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6610,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6611,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6612,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6613,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6614,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6615,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6616,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6617,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6618,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6619,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6620,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6621,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6622,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6623,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6624,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6625,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6626,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6627,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6628,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6629,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6630,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6631,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6632,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6633,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6634,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6635,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6636,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6637,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6638,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6639,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6640,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6641,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6642,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6643,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6644,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6645,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6646,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6647,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6648,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6649,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6650,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6651,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6652,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6653,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6654,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6655,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6656,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6657,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6658,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6659,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6660,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6661,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6662,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6663,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6664,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6665,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6666,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6667,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6668,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6669,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6670,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6671,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6672,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6673,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6674,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6675,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6676,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6677,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6678,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6679,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6680,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6681,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6682,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6683,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6684,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6685,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6686,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6687,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6688,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6689,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6690,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6691,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6692,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6693,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6694,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6695,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6696,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6697,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6698,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6699,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6700,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6701,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6702,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6703,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6704,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6705,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6706,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6707,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6708,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6709,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6710,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6711,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6712,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6713,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6714,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6715,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6716,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6717,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6718,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6719,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6720,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6721,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6722,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6723,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6724,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6725,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6726,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6727,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6728,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6729,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6730,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6731,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6732,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6733,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6734,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6735,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6736,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6737,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6738,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6739,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6740,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6741,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6742,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6743,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6744,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6745,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6746,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6747,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6748,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6749,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6750,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6751,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6752,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6753,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6754,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6755,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6756,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6757,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6758,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6759,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6760,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6761,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6762,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6763,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6764,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6765,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6766,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6767,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6768,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6769,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6770,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6771,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6772,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6773,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6774,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6775,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6776,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6777,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6778,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6779,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6780,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6781,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6782,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6783,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6784,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6785,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6786,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6787,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6788,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6789,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6790,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6791,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6792,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6793,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6794,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6795,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6796,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6797,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6798,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6799,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6800,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6801,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6802,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6803,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6804,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6805,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6806,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6807,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6808,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6809,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6810,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6811,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6812,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6813,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6814,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6815,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6816,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6817,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6818,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6819,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6820,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6821,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6822,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6823,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6824,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6825,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6826,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6827,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6828,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6829,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6830,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6831,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6832,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6833,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6834,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6835,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6836,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6837,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6838,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6839,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6840,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6841,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6842,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6843,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6844,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6845,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6846,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6847,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6848,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6849,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6850,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6851,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6852,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6853,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6854,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6855,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6856,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6857,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6858,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6859,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6860,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6861,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6862,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6863,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6864,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6865,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6866,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6867,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6868,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6869,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6870,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6871,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6872,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6873,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6874,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6875,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6876,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6877,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6878,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6879,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6880,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6881,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6882,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6883,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6884,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6885,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6886,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6887,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6888,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6889,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6890,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6891,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6892,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6893,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6894,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6895,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6896,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6897,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6898,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6899,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6900,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6901,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6902,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6903,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6904,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6905,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6906,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6907,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6908,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6909,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6910,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6911,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6912,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6913,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6914,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6915,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6916,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6917,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6918,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6919,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6920,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6921,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6922,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6923,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6924,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6925,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6926,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6927,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6928,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6929,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6930,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6931,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6932,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6933,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6934,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6935,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6936,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6937,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6938,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6939,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6940,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6941,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6942,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6943,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6944,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6945,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6946,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6947,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6948,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6949,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6950,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6951,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6952,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6953,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6954,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6955,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6956,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6957,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6958,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6959,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6960,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6961,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6962,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6963,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6964,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6965,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6966,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6967,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6968,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6969,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6970,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6971,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6972,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6973,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6974,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6975,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6976,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6977,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6978,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6979,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(6980,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6981,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6982,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6983,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6984,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6985,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(6986,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6987,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6988,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6989,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6990,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6991,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6992,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6993,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6994,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(6995,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6996,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(6997,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(6998,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(6999,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7000,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7001,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7002,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7003,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7004,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7005,'Device42-CMDB-10.0.1.121',1,'',0,0,0,0,0,0,'421ddf2b-82be-3a8e-eba5-ca6597','501d592b-2eb8-868f-501d-fd4eda','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(7006,'Oneoaas-master',1,'',0,0,0,0,0,0,'564d60e7-0948-2d0e-63dd-5b43a4','529532db-9c8c-ff78-4a69-495a7b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7007,'Ubuntu14.04',1,'',0,0,0,0,0,0,'564d4ace-c11e-0e36-863e-5a97cc','52a92a25-ebc9-0099-0ad0-b42b8e','ubuntu64Guest','Ubuntu Linux (64-bit)','',0),(7008,'centos test',1,'',0,0,0,0,0,0,'421dd4c5-e9de-25c6-1831-8d5755','501d87ee-1b9f-73f1-76cb-bd531f','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(7009,'cmdbuild-10.0.1.127',1,'',0,0,0,0,0,0,'420cd465-45ca-9ce9-3624-cf5f0e','500ce317-90fc-5a75-1fff-67a4ed','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7010,'composer 154',1,'',0,0,0,0,0,0,'42261feb-5870-7136-f790-522014','50261cd6-ba7f-7495-c63d-202a9c','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(7011,'connection 185',1,'',0,0,0,0,0,0,'4226f2a4-3470-fb60-08ed-1ffb75','5026501d-ea87-2b8a-b69a-43fc15','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(7012,'democentos',1,'',0,0,0,0,0,0,'564d60a4-f4d6-e38a-2f70-c47549','52193c1f-da00-3401-559e-d2fff2','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(7013,'dev-cmdb-10.0.1.130',1,'',0,0,0,0,0,0,'421dbb85-5ae6-ae47-2f06-37e1f8','501dc58e-836c-ae7b-1d00-0ac71b','centos64Guest','CentOS 4/5/6/7 (64-bit)','',0),(7014,'dev-gitlab-10.0.1.119',1,'',0,0,0,0,0,0,'420c0be9-0242-9f58-d8e6-2cd0f9','500cf722-350e-be4d-26b6-21f00d','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7015,'dev-jekins-10.0.1.124',1,'',0,0,0,0,0,0,'420c52e0-4eaa-bec3-8ed7-22e924','500c74a3-feb7-e304-2311-febb08','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7016,'dev-oneoaas-cmdb-10.0.1.126',1,'',0,0,0,0,0,0,'420c281a-a4a2-eccb-6c22-e03aaa','500c31a3-63e5-003d-9acb-659a63','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7017,'dev-phpipam-10.0.1.118',1,'',0,0,0,0,0,0,'420cebb0-5276-d247-c7e0-3863c2','500cdb41-1737-4ef8-1638-30bc44','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7018,'dev-zabbix2.2-10.0.1.112',1,'',0,0,0,0,0,0,'564d5298-c2b3-ee2b-2715-d8ba6b','52da1e67-a45c-c585-f17c-652d21','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7019,'dev-zabbix2.4-10.0.1.23',1,'',0,0,0,0,0,0,'564d3159-dce9-c11b-756b-ff3974','5200516c-3762-d23d-835f-a56825','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7020,'monitor.dev-10.0.1.114',1,'',0,0,0,0,0,0,'564d174c-c4d0-feff-7bb2-bfa7c2','5292c024-cb67-1137-0ed2-3c937c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7021,'prod-git-10.0.1.133',1,'',0,0,0,0,0,0,'420c34b9-519a-a08b-76b4-d1de29','500c12a8-226d-42b7-a2c1-564f1b','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7022,'repo.dev-10.0.1.122',1,'',0,0,0,0,0,0,'420cdcd6-9c5c-4bd1-d51c-a16175','500c2665-9b2d-03a3-81fa-c4127c','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7023,'server 2008 200',1,'',0,0,0,0,0,0,'42266c37-ba11-7cf0-ccae-c4b9ca','5026e699-dd5e-6104-9caa-2a61ee','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(7024,'server sql 2008',1,'',0,0,0,0,0,0,'4217a11c-ac86-9c43-68b6-f049e8','5017d61e-574d-80e8-f5f5-29e407','windows7Server64Guest','Microsoft Windows Server 2008 ','原装系统无任何插件，可做模板',0),(7025,'vcsa-linux-10.0.1.33',1,'',0,0,0,0,0,0,'564d04fd-332b-26c9-b7c5-eb8336','52bf7087-8b02-da11-683f-8c37cb','sles11_64Guest','SUSE Linux Enterprise 11 (64-b','VMware vCenter Server Applianc',0),(7026,'win08-vcenter-10.0.1.120',1,'',0,0,0,0,0,0,'564d4c5b-d156-1219-6329-213dc8','5248bb4f-5afc-95ba-f786-ad75c8','windows7Server64Guest','Microsoft Windows Server 2008 ','',0),(7027,'zabbix-server-162',1,'',0,0,0,0,0,0,'421dce52-037b-3bad-ef76-6376ac','501d12f5-8498-798c-0f98-edac12','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7028,'zabbix-server-163',1,'',0,0,0,0,0,0,'421d9366-31d1-790c-7c27-e1cf14','501d372a-6a60-4628-01e7-150eb1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7029,'zabbix-server-164',1,'',0,0,0,0,0,0,'421d02f9-c734-d36e-f606-32dd43','501d442d-6c9d-1920-130d-280370','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7030,'zabbix-server-165',1,'',0,0,0,0,0,0,'421de24a-a7ef-a531-3fd6-415cf2','501db6f4-0376-65f4-6f09-e0c9c1','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7031,'zabbix-server-166',1,'',0,0,0,0,0,0,'421d12f3-9959-3d18-d067-30c682','501d7662-4572-3f0a-1989-48c6d2','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0),(7032,'zabbix-server-test161',1,'',0,0,0,0,0,0,'564df55b-e717-d3e4-93f4-954e79','525452c2-2f3f-ac8e-6042-121ad6','rhel6_64Guest','Red Hat Enterprise Linux 6 (64','',0);
/*!40000 ALTER TABLE `vm_vmware` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-01 16:27:21