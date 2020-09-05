CREATE DATABASE  IF NOT EXISTS `db_cds` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_cds`;
-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: db_cds
-- ------------------------------------------------------
-- Server version	5.1.56-community

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
-- Table structure for table `tblcarengine`
--

DROP TABLE IF EXISTS `tblcarengine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcarengine` (
  `cen_id` int(11) NOT NULL AUTO_INCREMENT,
  `cn_id` int(11) DEFAULT NULL,
  `cen_cc` varchar(45) DEFAULT NULL,
  `cen_pwr` varchar(45) DEFAULT NULL,
  `cen_milg` varchar(45) DEFAULT NULL,
  `cen_tpspd` varchar(45) DEFAULT NULL,
  `cen_torq` varchar(45) DEFAULT NULL,
  `cen_accl` varchar(45) DEFAULT NULL,
  `cen_name` varchar(45) DEFAULT NULL,
  `cen_nogear` varchar(45) DEFAULT NULL,
  `cen_nocylinder` varchar(45) DEFAULT NULL,
  `cen_transmission` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcarengine`
--

LOCK TABLES `tblcarengine` WRITE;
/*!40000 ALTER TABLE `tblcarengine` DISABLE KEYS */;
INSERT INTO `tblcarengine` VALUES (2,1,'1197 CC','82 Bhp','21 Km/ltr','140+ Km/hr','113 Nm','189 Acl','sw-pw-vvt','5 Speed','4 Cylinder','Manuvel'),(3,5,'1500 CC','98 Bhp','19 Km/ltr','150+ Km/hr','136 Nm','200 Acl','xl-pl-vtvt','6 Speed','4 Cylinder','Manuvel'),(4,3,'1197 CC','82 Bhp','21 Km/ltr','144+ Km/hr','112 Nm','191 Acl','bl-pl-vtvt','5 Speed','4 Cylinder','Manuvel'),(5,2,'1500 CC','108 Bhp','22 Km/ltr','160+ Km/hr','136 Nm','201 Acl','cz-pl-vtvt','5 Speed','4 Cylinder','Manuvel'),(6,4,'1100 CC','83  Bhp','24 Km/ltr','140+ Km/hr','103 Nm','169 Acl','ig-pl-vtvt','5 Speed','3 Cylinder','Manuvel'),(7,6,'1600 CC','112 Bhp','20 Km/ltr','160+ Km/hr','141 Nm','231 Acl','sc-pl-vtvt','6 Speed','6 cylinder','Manuvel');
/*!40000 ALTER TABLE `tblcarengine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:51:59
