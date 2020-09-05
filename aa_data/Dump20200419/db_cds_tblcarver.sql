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
-- Table structure for table `tblcarver`
--

DROP TABLE IF EXISTS `tblcarver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcarver` (
  `vr_id` int(11) NOT NULL AUTO_INCREMENT,
  `cn_id` int(11) DEFAULT NULL,
  `vr_name` varchar(45) DEFAULT NULL,
  `vr_code` varchar(45) DEFAULT NULL,
  `vr_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcarver`
--

LOCK TABLES `tblcarver` WRITE;
/*!40000 ALTER TABLE `tblcarver` DISABLE KEYS */;
INSERT INTO `tblcarver` VALUES (2,1,'LXI','sw-lxi','Enabled'),(3,1,'VXI','sw-vxi','Enabled'),(4,1,'ZXI','sw-zxi','Enabled'),(5,1,'ZXI+','sw-zxi+','Enabled'),(6,5,'LXI','xl-lxi','Enabled'),(7,5,'VXI',' xl-vxi','Enabled'),(8,5,'ZXI',' xl-zxi','Enabled'),(9,5,'ZXI+',' xl-zxi+','Enabled'),(10,3,'LXI','bl-lxi','Enabled'),(11,3,'VXI','bl-bxi','Enabled'),(12,3,'ZXI','bl-zxi','Enabled'),(13,3,'ZXI+','bl-zxi+','Enabled'),(14,2,'LXI','cz_lxi','Enabled'),(15,2,'VXI','cz-vxi','Enabled'),(16,2,'ZXI','cz-zxi','Enabled'),(17,2,'ZXI+','cz-zxi+','Enabled'),(18,4,'LXI','ig-lxi','Enabled'),(19,4,'VXI','ig-vxi','Enabled'),(20,4,'ZXI','ig-zxi','Enabled'),(21,4,'ZXI+','ig-zxi+','Enabled'),(22,6,'LXI','sc-lxi','Enabled'),(23,6,'VXI','sc-vxi','Enabled'),(24,6,'ZXI','sc-zxi','Enabled'),(25,6,'ZXI+','sc-zxi+','Enabled');
/*!40000 ALTER TABLE `tblcarver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:52:05
