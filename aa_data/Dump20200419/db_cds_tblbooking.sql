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
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblbooking` (
  `bd_id` int(11) NOT NULL AUTO_INCREMENT,
  `bk_id` int(11) DEFAULT NULL,
  `bd_fname` varchar(45) DEFAULT NULL,
  `bd_lname` varchar(45) DEFAULT NULL,
  `bd_car` varchar(45) DEFAULT NULL,
  `bd_ver` varchar(45) DEFAULT NULL,
  `bd_clr` varchar(45) DEFAULT NULL,
  `bd_state` varchar(45) DEFAULT NULL,
  `bd_dist` varchar(45) DEFAULT NULL,
  `bd_city` varchar(45) DEFAULT NULL,
  `bd_dealer` varchar(45) DEFAULT NULL,
  `bd_building` varchar(100) DEFAULT NULL,
  `bd_locality` varchar(100) DEFAULT NULL,
  `bd_pin` varchar(45) DEFAULT NULL,
  `bd_landmark` varchar(45) DEFAULT NULL,
  `bd_mobile` varchar(45) DEFAULT NULL,
  `bd_amobile` varchar(45) DEFAULT NULL,
  `bd_email` varchar(100) DEFAULT NULL,
  `bd_aemail` varchar(100) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `bd_date` date DEFAULT NULL,
  `bd_status` int(11) DEFAULT NULL,
  `vr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbooking`
--

LOCK TABLES `tblbooking` WRITE;
/*!40000 ALTER TABLE `tblbooking` DISABLE KEYS */;
INSERT INTO `tblbooking` VALUES (1,NULL,'DENNIS','MATHEW','Swift Petrol','LXI','Fire Red','1','1','1','1','NEDUVELIL','MPI','656565','MPI','9988776655','8855221144','DNZ@GMAIL.COM','',1,'2020-04-19',2,2),(2,NULL,'DENNIS','MATHEW','Ciaz Petrol','ZXI','Nexa Blue','1','1','1','1','NEDUVELIL','MPI','656565','MPI','9988776655','','DNZ@GMAIL.COM','',1,'2020-04-19',0,16),(3,NULL,'DENNIS','MATHEW','XL SIX Petrol','VXI',' Nexa Blue','1','1','1','1','NEDUVELIL','MPI','656565','MPI','9988776655','','DNZ@GMAIL.COM','',1,'2020-04-19',1,7);
/*!40000 ALTER TABLE `tblbooking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:51:49
