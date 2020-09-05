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
-- Table structure for table `tblcarint`
--

DROP TABLE IF EXISTS `tblcarint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcarint` (
  `ci_id` int(11) NOT NULL AUTO_INCREMENT,
  `vr_id` int(11) NOT NULL,
  `ci_aircnt` varchar(45) DEFAULT NULL,
  `ci_heater` varchar(45) DEFAULT NULL,
  `ci_adjseat` varchar(45) DEFAULT NULL,
  `ci_ciglighter` varchar(45) DEFAULT NULL,
  `ci_dutndshbrd` varchar(45) DEFAULT NULL,
  `ci_ltrseats` varchar(45) DEFAULT NULL,
  `ci_otrfeatures` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ci_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcarint`
--

LOCK TABLES `tblcarint` WRITE;
/*!40000 ALTER TABLE `tblcarint` DISABLE KEYS */;
INSERT INTO `tblcarint` VALUES (2,2,'YES','YES','YES','YES','NO','NO','NA'),(3,3,'YES','YES','YES','YES','NO','YES','NA'),(4,5,'YES','YES','YES','YES','YES','YES','NA'),(5,4,'YES','YES','YES','YES','NO','NO','NA'),(6,6,'YES','YES','YES','YES','NO','NO','NA'),(7,7,'YES','YES','YES','YES','NO','NO',' NA'),(8,8,'YES','YES','YES','YES','NO','YES',' NA'),(9,9,'YES','YES','YES','YES','YES','YES',' NA'),(10,10,'YES','YES','YES','YES','NO','NO','NA'),(11,11,'YES','YES','YES','YES','NO','YES',' NA'),(12,12,'YES','YES','YES','YES','YES','YES',' NA'),(13,13,'YES','YES','YES','YES','YES','YES',' NA'),(14,17,'YES','YES','YES','YES','YES','YES','NA'),(15,21,'YES','YES','YES','YES','YES','YES','NA '),(16,25,'YES','YES','YES','YES','YES','YES',' NA'),(17,14,'YES','YES','YES','YES','NO','NO','NA'),(18,15,'YES','YES','YES','YES','NO','YES',' NA'),(19,16,'YES','YES','YES','YES','NO','YES','NA '),(20,18,'YES','YES','YES','YES','NO','NO','NA '),(21,19,'YES','YES','YES','YES','NO','YES','NA'),(22,20,'YES','YES','YES','YES','NO','YES','NA'),(23,22,'YES','YES','YES','YES','NO','NO','NA '),(24,23,'YES','YES','YES','YES','NO','YES','NA'),(25,23,'YES','YES','YES','YES','YES','YES','NA'),(26,24,'YES','YES','YES','YES','YES','YES',' NA');
/*!40000 ALTER TABLE `tblcarint` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-19 10:52:07
