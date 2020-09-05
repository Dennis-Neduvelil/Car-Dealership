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
-- Table structure for table `tbltestdrive`
--

DROP TABLE IF EXISTS `tbltestdrive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltestdrive` (
  `tst_id` int(11) NOT NULL AUTO_INCREMENT,
  `tst_fname` varchar(45) DEFAULT NULL,
  `tst_lname` varchar(45) DEFAULT NULL,
  `tst_car` varchar(45) DEFAULT NULL,
  `tst_fuel` varchar(45) DEFAULT NULL,
  `tst_ver` varchar(45) DEFAULT NULL,
  `tst_state` varchar(45) DEFAULT NULL,
  `tst_dist` varchar(45) DEFAULT NULL,
  `tst_place` varchar(45) DEFAULT NULL,
  `tst_dealer` varchar(45) DEFAULT NULL,
  `tst_building` varchar(45) DEFAULT NULL,
  `tst_locality` varchar(45) DEFAULT NULL,
  `tst_zip` varchar(45) DEFAULT NULL,
  `tst_landmark` varchar(45) DEFAULT NULL,
  `tst_mobile` varchar(45) DEFAULT NULL,
  `tst_amobile` varchar(45) DEFAULT NULL,
  `tst_email` varchar(100) DEFAULT NULL,
  `tst_bkdate` varchar(45) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `tst_status` varchar(45) DEFAULT NULL,
  `tst_book_date` datetime DEFAULT NULL,
  `tst_test_date` datetime DEFAULT NULL,
  `tst_time_from` int(11) DEFAULT NULL,
  `tst_time_to` int(11) DEFAULT NULL,
  `tst_aemail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltestdrive`
--

LOCK TABLES `tbltestdrive` WRITE;
/*!40000 ALTER TABLE `tbltestdrive` DISABLE KEYS */;
INSERT INTO `tbltestdrive` VALUES (1,'DENNIS','MATHEW','1','Petrol','2','1','1','1','1','NEDUVELIL','MPI','656565','MPI','9988776655','','DNZ@GMAIL.COM',NULL,1,'0','2020-04-19 00:00:00','2020-04-19 00:00:00',10,11,''),(2,'DENNIS','MATHEW','3','Petrol','13','1','1','1','1','NEDUVELIL','MPI','656565','MPI','9988776655','','DNZ@GMAIL.COM',NULL,1,'0','2020-04-19 00:00:00',NULL,NULL,NULL,''),(3,'DENNIS','MATHEW','2','Petrol','15','1','1','1','1','NEDUVELIL','MPI','656565','MPI','9988776655','','DNZ@GMAIL.COM',NULL,1,'0','2020-04-19 00:00:00',NULL,NULL,NULL,''),(4,'DENNIS','MATHEW','4','Petrol','20','1','1','1','1','NEDUVELIL','MPI','656565','MPI','9988776655','','DNZ@GMAIL.COM',NULL,1,'3','2020-04-19 00:00:00','2020-04-14 00:00:00',14,16,'');
/*!40000 ALTER TABLE `tbltestdrive` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:52:03
