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
-- Table structure for table `appartamento`
--

DROP TABLE IF EXISTS `appartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartamento` (
  `idAppartamento` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `nomeAppartamento` varchar(45) NOT NULL,
  `descrizioneAppartamento` varchar(300) NOT NULL,
  `superficie` float NOT NULL,
  `locali` varchar(45) NOT NULL,
  `bagni` varchar(45) NOT NULL,
  `piano` varchar(45) NOT NULL,
  `riscaldamento` varchar(45) NOT NULL,
  `classeEnergetica` varchar(45) NOT NULL,
  `tipoVendita` varchar(45) NOT NULL,
  `prezzo` float NOT NULL,
  `data` date NOT NULL,
  `Agente_idAgente` int NOT NULL,
  `visualizzazioni` int NOT NULL DEFAULT '0',
  `camereLetto` int DEFAULT NULL,
  `postoAuto` varchar(45) DEFAULT NULL,
  `visualizzaPrezzo` int NOT NULL,
  PRIMARY KEY (`idAppartamento`),
  KEY `fk_Appartamento_Agente1_idx` (`Agente_idAgente`),
  CONSTRAINT `fk_Appartamento_Agente1` FOREIGN KEY (`Agente_idAgente`) REFERENCES `agente` (`idAgente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartamento`
--

LOCK TABLES `appartamento` WRITE;
/*!40000 ALTER TABLE `appartamento` DISABLE KEYS */;
INSERT INTO `appartamento` VALUES (24,'Appartamento','Casa Centro','casa molto bella',150,'1','2','Piano terra','Autonomo','A','In Vendita',400000,'2022-05-06',27,43,3,'5',0),(25,'Appartamento','casa','casa',150,'1','2','Interrato Seminterrato','Autonomo','A','In Vendita',500000,'2022-05-06',27,1,3,'5',0),(26,'Abitazione economica','casa','casa',150,'1','2','3 piano','Autonomo','A','In Affitto',40,'2022-05-06',27,1,3,'5',0),(27,'Abitazione economica','casa','casa',150,'1','2','3 piano','Autonomo','A','In Affitto',40,'2022-05-06',27,34,3,'5',0),(28,'Villetta a schiera','Villone','villone',150,'1','2','Piano terra','Autonomo','A','In Vendita',500000,'2022-05-09',27,2,3,'5',0),(29,'Appartamento','casone','casone',150,'1','2','Piano terra','Autonomo','A','In Vendita',400000,'2022-05-10',27,0,3,'5',1),(30,'Appartamento di lusso','Casa Striano','casone',200,'1','3','1 piano','Autonomo','A','In Vendita',300000,'2022-05-11',28,0,4,'1',1),(31,'Villetta a schiera','Villa','villa',300,'1','2','Piano terra','Autonomo','A++','In Vendita',1000000,'2022-05-11',28,8,3,'5',1),(32,'Rustico Casale','Rustico','rustico',120,'1','2','3 piano','Condominiale','A','In Affitto',40,'2022-05-11',28,0,3,'5',1),(33,'Abitazione economica','Condominio','condominio',150,'1','2','3 piano','Condominiale','A','In Affitto',400000,'2022-05-11',28,0,3,'5',1),(34,'Attico','Attico','attico',150,'1','2','3 piano','Condominiale','A','In Affitto',500000,'2022-05-11',28,0,3,'1',1),(35,'Villetta a schiera','Villetta a schiera','villletta a schiera',300,'1','2','Piano terra','Autonomo','A','In Vendita',1000000,'2022-05-11',28,0,3,'1',1);
/*!40000 ALTER TABLE `appartamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-18 16:59:25
