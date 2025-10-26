-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `cdConsulta` int NOT NULL AUTO_INCREMENT,
  `cdMedico` int NOT NULL,
  `cdPaciente` int NOT NULL,
  `deConsulta` varchar(50) DEFAULT NULL,
  `dtConsulta` date DEFAULT NULL,
  `hrConsulta` time DEFAULT NULL,
  `deMedicacao` varchar(100) DEFAULT NULL,
  `deDiagnostico` varchar(200) DEFAULT NULL,
  `nuValor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`cdConsulta`),
  KEY `cdMedico` (`cdMedico`),
  KEY `cdPaciente` (`cdPaciente`),
  CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`cdMedico`) REFERENCES `medico` (`cdMedico`),
  CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`cdPaciente`) REFERENCES `paciente` (`cdPaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,1,1,'Consulta Básica','2005-10-11','14:00:00','loratadina','inflamação na garganta',143.00),(2,2,3,'Consulta Especialista','1997-10-01','16:00:00','AAS','GRIPE',225.00),(3,3,2,'Consulta Especialista','2006-10-21','13:00:00','tylenol','FEBRE',156.00),(4,1,1,'Consulta Especialista','2007-10-01','15:00:00','Veroxitatina','Amidalite',103.00),(5,1,2,'Consulta Básica','1965-12-21','13:00:00','Tylenol','Febre',83.00),(6,2,1,'Consulta Básica','1998-03-12','16:00:00','Novalgina','Febre',115.00),(7,1,1,'Consulta Básica','2011-07-15','15:00:00',NULL,NULL,150.00),(8,2,1,'Consulta Básica','2011-03-18','20:00:00',NULL,NULL,230.00),(9,3,2,'Consulta Especialista','2022-05-13','19:30:00',NULL,NULL,100.00),(10,1,3,'Consulta Básica','2022-07-20','17:00:00',NULL,NULL,200.00),(11,1,2,'Consulta Básica','2022-07-20','18:00:00',NULL,NULL,300.00);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-23 20:42:45
