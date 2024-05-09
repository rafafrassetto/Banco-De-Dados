-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica_medica
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `codconsulta` int NOT NULL,
  `dataconsulta` date DEFAULT NULL,
  `horaconsulta` time NOT NULL,
  `sintomas` varchar(45) NOT NULL,
  `observacoes` varchar(45) NOT NULL,
  `medicacao` varchar(45) NOT NULL,
  `codfun` int NOT NULL,
  `codmed` int NOT NULL,
  `codpaciente` int NOT NULL,
  PRIMARY KEY (`codconsulta`),
  KEY `codfun` (`codfun`),
  KEY `codmed` (`codmed`),
  KEY `codpaciente` (`codpaciente`),
  CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`codfun`) REFERENCES `funcionarios` (`codfun`),
  CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`codmed`) REFERENCES `medicos` (`codmed`),
  CONSTRAINT `consultas_ibfk_3` FOREIGN KEY (`codpaciente`) REFERENCES `pacientes` (`codpaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (1,'2021-01-04','12:00:00','Febre','Tolerância a Lactose','Paracetamol',1,1,1),(2,'2021-10-05','20:50:00','Tosse Seca','Se prolongou por 3 dias','Levodropropizina',2,2,2),(3,'2021-07-23','23:00:00','Fadiga','Cansaço Excessivo','Ginseng',3,3,3);
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-21 17:18:47
