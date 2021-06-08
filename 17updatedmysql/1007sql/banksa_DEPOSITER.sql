CREATE DATABASE  IF NOT EXISTS `banksa` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `banksa`;
-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: banksa
-- ------------------------------------------------------
-- Server version	5.5.62-0ubuntu0.14.04.1

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
-- Table structure for table `DEPOSITER`
--

DROP TABLE IF EXISTS `DEPOSITER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEPOSITER` (
  `customer_name` varchar(20) NOT NULL,
  `account_number` int(11) NOT NULL,
  KEY `customer_name` (`customer_name`),
  KEY `account_number` (`account_number`),
  CONSTRAINT `DEPOSITER_ibfk_1` FOREIGN KEY (`customer_name`) REFERENCES `CUSTOMER` (`customer_name`),
  CONSTRAINT `DEPOSITER_ibfk_2` FOREIGN KEY (`account_number`) REFERENCES `ACCOUNT` (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEPOSITER`
--

LOCK TABLES `DEPOSITER` WRITE;
/*!40000 ALTER TABLE `DEPOSITER` DISABLE KEYS */;
INSERT INTO `DEPOSITER` VALUES ('sai',12345),('kiran',6789),('giri',2345),('henry',3456);
/*!40000 ALTER TABLE `DEPOSITER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-06  3:41:46