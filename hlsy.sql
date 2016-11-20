CREATE DATABASE  IF NOT EXISTS `hlsy` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hlsy`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: hlsy
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `actId` int(11) NOT NULL,
  `actName` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `cateId` int(11) NOT NULL,
  `fund` int(11) DEFAULT NULL,
  `resourceSrc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`actId`),
  KEY `FK_5sf4gxqrtdd63ofrl9lph5874` (`cateId`),
  CONSTRAINT `FK_5sf4gxqrtdd63ofrl9lph5874` FOREIGN KEY (`cateId`) REFERENCES `category` (`cateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply` (
  `appId` int(11) NOT NULL,
  `power` varchar(255) DEFAULT NULL,
  `actId` int(11) NOT NULL,
  `clubId` int(11) NOT NULL,
  PRIMARY KEY (`appId`),
  KEY `FK_rxt6b6krs7slnxak89fptp1f6` (`actId`),
  KEY `FK_f1tloyid2w1ql1u8aw19xpt6i` (`clubId`),
  CONSTRAINT `FK_f1tloyid2w1ql1u8aw19xpt6i` FOREIGN KEY (`clubId`) REFERENCES `club` (`clubId`),
  CONSTRAINT `FK_rxt6b6krs7slnxak89fptp1f6` FOREIGN KEY (`actId`) REFERENCES `activity` (`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cateId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `club` (
  `clubId` int(11) NOT NULL,
  `cName` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `teaId` int(11) NOT NULL,
  PRIMARY KEY (`clubId`),
  KEY `FK_f1u1018c3er9xmh4htohtr268` (`teaId`),
  CONSTRAINT `FK_f1u1018c3er9xmh4htohtr268` FOREIGN KEY (`teaId`) REFERENCES `teacher` (`teaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggestion`
--

DROP TABLE IF EXISTS `suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suggestion` (
  `sugId` int(11) NOT NULL,
  `suggestion` varchar(255) DEFAULT NULL,
  `suggestionReply` varchar(255) DEFAULT NULL,
  `teaId` int(11) DEFAULT NULL,
  `actId` int(11) DEFAULT NULL,
  PRIMARY KEY (`sugId`),
  KEY `FK_t33mmrjurnneepxfrrp25jgv4` (`teaId`),
  KEY `FK_6wjlrfh6c1yk0nd8t4v2ybhd5` (`actId`),
  CONSTRAINT `FK_6wjlrfh6c1yk0nd8t4v2ybhd5` FOREIGN KEY (`actId`) REFERENCES `activity` (`actId`),
  CONSTRAINT `FK_t33mmrjurnneepxfrrp25jgv4` FOREIGN KEY (`teaId`) REFERENCES `teacher` (`teaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggestion`
--

LOCK TABLES `suggestion` WRITE;
/*!40000 ALTER TABLE `suggestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `suggestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `teaId` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `teaName` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-20 18:35:18
