-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: testjle
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `uti`
--

DROP TABLE IF EXISTS `uti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uti` (
  `uti_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `isadmin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uti_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uti`
--

LOCK TABLES `uti` WRITE;
/*!40000 ALTER TABLE `uti` DISABLE KEYS */;
INSERT INTO `uti` VALUES (15,'nom','prenom',NULL,NULL,1),(16,'test5','test5',NULL,NULL,1),(29,NULL,NULL,NULL,NULL,0),(30,NULL,NULL,NULL,NULL,0),(31,'testmodif2','testmodif2','testmodifpass2',NULL,0),(32,NULL,NULL,NULL,NULL,0),(34,NULL,NULL,NULL,NULL,0),(35,'test123','test345','test147',NULL,0),(37,'test51','test52','testpass53',NULL,0),(38,'test51','test52','testpass53',NULL,0),(39,'test60','test60','testpass65',NULL,0),(40,'test62','test62','testpass67',NULL,0),(41,'test62','test62','testpass67',NULL,0),(42,'test64','test64','testpass68',NULL,0),(43,'test65','test65','testpass69',NULL,0),(44,'test66','test66','testpass70',NULL,0),(45,'test67','test67','testpass71',NULL,0),(46,'test69','test69','testpass73',NULL,0),(48,'test71','test71','testpass75','testemail4',0),(49,'test72','test72','testpass76','testemail5',0),(51,'test73','test73','testpass77','testemail6',0),(52,'test74','test74','testpass78','testemail7',0),(53,'test74','test74','testpass78','testemail7',0),(55,'test76','test76','testpass80','testemail9',0),(56,'test768','test768','testpass801','testemail901',0),(57,'test768','test768','testpass805','testemail905',1),(58,'admin','admin','admin101','admin@groupomania.fr',0);
/*!40000 ALTER TABLE `uti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `texte` varchar(50) DEFAULT NULL,
  `titre` varchar(45) DEFAULT NULL,
  `image` blob,
  `date_creation` datetime DEFAULT NULL,
  `date_modification` datetime DEFAULT NULL,
  `topic_id` int NOT NULL,
  `id_1` int NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `topic_id` (`topic_id`),
  KEY `id_1` (`id_1`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'undefined','testtitre',NULL,NULL,NULL,1,2),(4,'test','testtitre4',NULL,NULL,NULL,4,4),(6,'testpost7','testtitre7',NULL,NULL,NULL,6,6),(13,'test60','test60',_binary 'http://localhost:3000/images/image.png1657521147120.png',NULL,NULL,14,14),(14,'test60','test60',_binary 'http://localhost:3000/images/image.png1657523513785.png',NULL,NULL,14,14);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-28 15:06:47
