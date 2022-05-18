CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `indirizzo`
--

DROP TABLE IF EXISTS `indirizzo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indirizzo` (
  `idIndirizzo` int NOT NULL AUTO_INCREMENT,
  `via` varchar(45) DEFAULT NULL,
  `numeroCivico` varchar(45) DEFAULT NULL,
  `cap` varchar(45) DEFAULT NULL,
  `città` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `Appartamento_idAppartamento` int NOT NULL,
  `zona` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idIndirizzo`,`Appartamento_idAppartamento`),
  KEY `fk_Indirizzo_Appartamento1_idx` (`Appartamento_idAppartamento`),
  CONSTRAINT `fk_Indirizzo_Appartamento1` FOREIGN KEY (`Appartamento_idAppartamento`) REFERENCES `appartamento` (`idAppartamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indirizzo`
--

LOCK TABLES `indirizzo` WRITE;
/*!40000 ALTER TABLE `indirizzo` DISABLE KEYS */;
INSERT INTO `indirizzo` VALUES (22,'Via rova','41','80040','Nocera Inferiore','SA',24,'Centro'),(23,'Via Piano','2','80040','Striano','NA',25,'Centro'),(24,'Via Piano','1','80040','Striano','NA',26,'Centro'),(25,'Via Piano','1','80040','Striano','NA',27,'Centro'),(26,'Via Piano','7','80040','Striano','NA',28,'Centro'),(27,'Via Rivolta','2','80040','Striano','NA',29,'Centro'),(28,'Via Piano','71','80040','Striano','NA',30,''),(29,'Via Piano','2','80040','Striano','NA',31,''),(30,'Via Roma ','1','80040','Striano','NA',32,'Centro'),(31,'Via Rivolta','10','80040','Striano','NA',33,''),(32,'Via Roberto Serafino','30','80040','Striano','NA',34,''),(33,'Via Sarno','100','80040','Striano','NA',35,'');
/*!40000 ALTER TABLE `indirizzo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-18 16:59:24
