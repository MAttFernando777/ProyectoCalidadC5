-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: bbdddevcell
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `guiaservicio`
--

DROP TABLE IF EXISTS `guiaservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guiaservicio` (
  `idguiaServicio` int NOT NULL AUTO_INCREMENT,
  `total` float NOT NULL,
  `descripAdicional` varchar(240) NOT NULL,
  `Cliente_idCliente` int NOT NULL,
  `Celular_idCelular` int NOT NULL,
  PRIMARY KEY (`idguiaServicio`),
  KEY `fk_cliente_idx` (`Cliente_idCliente`),
  KEY `fk_celular_idx` (`Celular_idCelular`),
  CONSTRAINT `fk_celular` FOREIGN KEY (`Celular_idCelular`) REFERENCES `celular` (`idcelular`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guiaservicio`
--

LOCK TABLES `guiaservicio` WRITE;
/*!40000 ALTER TABLE `guiaservicio` DISABLE KEYS */;
INSERT INTO `guiaservicio` VALUES (1,23,'fewrew',1,1),(2,32,'qwrwqe',1,2),(3,312,'wqrwqe',1,3),(4,32,'wqrqw',1,4);
/*!40000 ALTER TABLE `guiaservicio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-15  9:07:51
