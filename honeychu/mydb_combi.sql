CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `combi`
--

DROP TABLE IF EXISTS `combi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combi` (
  `idmenu` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `special` tinyint(4) DEFAULT NULL,
  `image` longtext,
  `hash` varchar(45) DEFAULT NULL,
  `total_likes` int(11) DEFAULT NULL,
  `total_views` int(11) DEFAULT NULL,
  `average_score` float DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `score_one` int(11) DEFAULT NULL,
  `score_two` int(11) DEFAULT NULL,
  `score_three` int(11) DEFAULT NULL,
  `score_four` int(11) DEFAULT NULL,
  `score_five` int(11) DEFAULT NULL,
  `basemenu_idbasemenu` int(11) NOT NULL,
  `basemenu_menu_catagory_idmenu_catagory` int(11) NOT NULL,
  `basemenu_menu_catagory_franchise_idfranchise` int(11) NOT NULL,
  `user_iduser` int(11) NOT NULL,
  PRIMARY KEY (`idmenu`,`basemenu_idbasemenu`,`basemenu_menu_catagory_idmenu_catagory`,`basemenu_menu_catagory_franchise_idfranchise`,`user_iduser`),
  KEY `fk_combi_basemenu1_idx` (`basemenu_idbasemenu`,`basemenu_menu_catagory_idmenu_catagory`,`basemenu_menu_catagory_franchise_idfranchise`),
  KEY `fk_combi_user1_idx` (`user_iduser`),
  CONSTRAINT `fk_combi_basemenu1` FOREIGN KEY (`basemenu_idbasemenu`, `basemenu_menu_catagory_idmenu_catagory`, `basemenu_menu_catagory_franchise_idfranchise`) REFERENCES `basemenu` (`idbasemenu`, `menu_catagory_idmenu_catagory`, `menu_catagory_franchise_idfranchise`),
  CONSTRAINT `fk_combi_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combi`
--

LOCK TABLES `combi` WRITE;
/*!40000 ALTER TABLE `combi` DISABLE KEYS */;
/*!40000 ALTER TABLE `combi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-13 17:15:52