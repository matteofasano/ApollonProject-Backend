-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: apollonprojectdb
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
-- Temporary view structure for view `coordinate_zoom1`
--

DROP TABLE IF EXISTS `coordinate_zoom1`;
/*!50001 DROP VIEW IF EXISTS `coordinate_zoom1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `coordinate_zoom1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `coordinate_zoom2`
--

DROP TABLE IF EXISTS `coordinate_zoom2`;
/*!50001 DROP VIEW IF EXISTS `coordinate_zoom2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `coordinate_zoom2` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `coordinate_zoom3`
--

DROP TABLE IF EXISTS `coordinate_zoom3`;
/*!50001 DROP VIEW IF EXISTS `coordinate_zoom3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `coordinate_zoom3` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `coordinate_zoom4`
--

DROP TABLE IF EXISTS `coordinate_zoom4`;
/*!50001 DROP VIEW IF EXISTS `coordinate_zoom4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `coordinate_zoom4` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dispositivo`
--

DROP TABLE IF EXISTS `dispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dispositivo` (
  `id_dispositivo` int(11) NOT NULL AUTO_INCREMENT,
  `nome_dispositivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_dispositivo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dispositivo`
--

LOCK TABLES `dispositivo` WRITE;
/*!40000 ALTER TABLE `dispositivo` DISABLE KEYS */;
INSERT INTO `dispositivo` VALUES (1,'AirBeam2:001896104600');
/*!40000 ALTER TABLE `dispositivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frequenza`
--

DROP TABLE IF EXISTS `frequenza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frequenza` (
  `idfrequenza` int(11) NOT NULL AUTO_INCREMENT,
  `valore` float NOT NULL,
  `canale` int(11) NOT NULL,
  `unita_misura_idunita_misura` int(11) NOT NULL,
  PRIMARY KEY (`idfrequenza`),
  KEY `fk_frequenza_unita_misura1_idx` (`unita_misura_idunita_misura`),
  CONSTRAINT `fk_frequenza_unita_misura1` FOREIGN KEY (`unita_misura_idunita_misura`) REFERENCES `unita_misura` (`idunita_misura`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequenza`
--

LOCK TABLES `frequenza` WRITE;
/*!40000 ALTER TABLE `frequenza` DISABLE KEYS */;
INSERT INTO `frequenza` VALUES (1,5180,36,3),(2,2412,1,3),(3,2462,11,3),(4,5680,136,3),(5,2427,4,3),(6,5600,120,3),(7,5500,100,3),(8,2437,6,3),(9,5300,60,3),(10,2452,9,3);
/*!40000 ALTER TABLE `frequenza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generazione`
--

DROP TABLE IF EXISTS `generazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generazione` (
  `idgenerazione` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idgenerazione`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generazione`
--

LOCK TABLES `generazione` WRITE;
/*!40000 ALTER TABLE `generazione` DISABLE KEYS */;
INSERT INTO `generazione` VALUES (1,'4G');
/*!40000 ALTER TABLE `generazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestore`
--

DROP TABLE IF EXISTS `gestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestore` (
  `idgestore` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idgestore`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestore`
--

LOCK TABLES `gestore` WRITE;
/*!40000 ALTER TABLE `gestore` DISABLE KEYS */;
INSERT INTO `gestore` VALUES (1,'vodafone IT');
/*!40000 ALTER TABLE `gestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luogo`
--

DROP TABLE IF EXISTS `luogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luogo` (
  `idluogo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `luogo_idluogo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idluogo`),
  KEY `fk_luogo_luogo_idx` (`luogo_idluogo`),
  CONSTRAINT `fk_luogo_luogo` FOREIGN KEY (`luogo_idluogo`) REFERENCES `luogo` (`idluogo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luogo`
--

LOCK TABLES `luogo` WRITE;
/*!40000 ALTER TABLE `luogo` DISABLE KEYS */;
INSERT INTO `luogo` VALUES (1,'Italy',NULL),(2,'Puglia',1),(3,'Provincia di Lecce',2),(4,'Surbo',3),(5,'via Domenico Cirillo',4),(6,'44',5),(7,'Cutrofiano',3),(8,'via Monti',7),(9,'12',8),(10,'Casarano',3),(11,'via Casarano',10),(12,'12',11),(13,'San Cesario di Lecce',3),(14,'via san cesario',13),(15,'12',14),(16,'Arnesano',3),(17,'via arnesano',16),(18,'56',17);
/*!40000 ALTER TABLE `luogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `media_anno_zoom1_pm1`
--

DROP TABLE IF EXISTS `media_anno_zoom1_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom1_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom1_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom1_pm10`
--

DROP TABLE IF EXISTS `media_anno_zoom1_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom1_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom1_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom1_pm25`
--

DROP TABLE IF EXISTS `media_anno_zoom1_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom1_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom1_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom2_pm1`
--

DROP TABLE IF EXISTS `media_anno_zoom2_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom2_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom2_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom2_pm10`
--

DROP TABLE IF EXISTS `media_anno_zoom2_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom2_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom2_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom2_pm25`
--

DROP TABLE IF EXISTS `media_anno_zoom2_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom2_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom2_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom3_pm1`
--

DROP TABLE IF EXISTS `media_anno_zoom3_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom3_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom3_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom3_pm10`
--

DROP TABLE IF EXISTS `media_anno_zoom3_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom3_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom3_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom3_pm25`
--

DROP TABLE IF EXISTS `media_anno_zoom3_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom3_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom3_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom4_pm1`
--

DROP TABLE IF EXISTS `media_anno_zoom4_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom4_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom4_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom4_pm10`
--

DROP TABLE IF EXISTS `media_anno_zoom4_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom4_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom4_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_anno_zoom4_pm25`
--

DROP TABLE IF EXISTS `media_anno_zoom4_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_anno_zoom4_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_anno_zoom4_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom1_pm1`
--

DROP TABLE IF EXISTS `media_giorno_zoom1_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom1_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom1_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom1_pm10`
--

DROP TABLE IF EXISTS `media_giorno_zoom1_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom1_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom1_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom1_pm25`
--

DROP TABLE IF EXISTS `media_giorno_zoom1_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom1_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom1_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom2_pm1`
--

DROP TABLE IF EXISTS `media_giorno_zoom2_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom2_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom2_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom2_pm10`
--

DROP TABLE IF EXISTS `media_giorno_zoom2_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom2_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom2_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom2_pm25`
--

DROP TABLE IF EXISTS `media_giorno_zoom2_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom2_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom2_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom3_pm1`
--

DROP TABLE IF EXISTS `media_giorno_zoom3_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom3_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom3_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom3_pm10`
--

DROP TABLE IF EXISTS `media_giorno_zoom3_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom3_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom3_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom3_pm25`
--

DROP TABLE IF EXISTS `media_giorno_zoom3_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom3_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom3_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom4_pm1`
--

DROP TABLE IF EXISTS `media_giorno_zoom4_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom4_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom4_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom4_pm10`
--

DROP TABLE IF EXISTS `media_giorno_zoom4_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom4_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom4_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_giorno_zoom4_pm25`
--

DROP TABLE IF EXISTS `media_giorno_zoom4_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom4_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_giorno_zoom4_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom1_pm1`
--

DROP TABLE IF EXISTS `media_mese_zoom1_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom1_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom1_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom1_pm10`
--

DROP TABLE IF EXISTS `media_mese_zoom1_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom1_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom1_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom1_pm25`
--

DROP TABLE IF EXISTS `media_mese_zoom1_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom1_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom1_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom2_pm1`
--

DROP TABLE IF EXISTS `media_mese_zoom2_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom2_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom2_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom2_pm10`
--

DROP TABLE IF EXISTS `media_mese_zoom2_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom2_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom2_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom2_pm25`
--

DROP TABLE IF EXISTS `media_mese_zoom2_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom2_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom2_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom3_pm1`
--

DROP TABLE IF EXISTS `media_mese_zoom3_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom3_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom3_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom3_pm10`
--

DROP TABLE IF EXISTS `media_mese_zoom3_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom3_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom3_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom3_pm25`
--

DROP TABLE IF EXISTS `media_mese_zoom3_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom3_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom3_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom4_pm1`
--

DROP TABLE IF EXISTS `media_mese_zoom4_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom4_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom4_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom4_pm10`
--

DROP TABLE IF EXISTS `media_mese_zoom4_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom4_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom4_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_mese_zoom4_pm25`
--

DROP TABLE IF EXISTS `media_mese_zoom4_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_mese_zoom4_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_mese_zoom4_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom1_pm1`
--

DROP TABLE IF EXISTS `media_ora_zoom1_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom1_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom1_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom1_pm10`
--

DROP TABLE IF EXISTS `media_ora_zoom1_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom1_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom1_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom1_pm25`
--

DROP TABLE IF EXISTS `media_ora_zoom1_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom1_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom1_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom2_pm1`
--

DROP TABLE IF EXISTS `media_ora_zoom2_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom2_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom2_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom2_pm10`
--

DROP TABLE IF EXISTS `media_ora_zoom2_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom2_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom2_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom2_pm25`
--

DROP TABLE IF EXISTS `media_ora_zoom2_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom2_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom2_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom3_pm1`
--

DROP TABLE IF EXISTS `media_ora_zoom3_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom3_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom3_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom3_pm10`
--

DROP TABLE IF EXISTS `media_ora_zoom3_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom3_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom3_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom3_pm25`
--

DROP TABLE IF EXISTS `media_ora_zoom3_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom3_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom3_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom4_pm1`
--

DROP TABLE IF EXISTS `media_ora_zoom4_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom4_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom4_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom4_pm10`
--

DROP TABLE IF EXISTS `media_ora_zoom4_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom4_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom4_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_ora_zoom4_pm25`
--

DROP TABLE IF EXISTS `media_ora_zoom4_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_ora_zoom4_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_ora_zoom4_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `data`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom1_pm1`
--

DROP TABLE IF EXISTS `media_zoom1_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_zoom1_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom1_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom1_pm10`
--

DROP TABLE IF EXISTS `media_zoom1_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_zoom1_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom1_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom1_pm25`
--

DROP TABLE IF EXISTS `media_zoom1_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_zoom1_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom1_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom2_pm1`
--

DROP TABLE IF EXISTS `media_zoom2_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_zoom2_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom2_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom2_pm10`
--

DROP TABLE IF EXISTS `media_zoom2_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_zoom2_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom2_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom2_pm25`
--

DROP TABLE IF EXISTS `media_zoom2_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_zoom2_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom2_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom3_pm1`
--

DROP TABLE IF EXISTS `media_zoom3_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_zoom3_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom3_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom3_pm10`
--

DROP TABLE IF EXISTS `media_zoom3_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_zoom3_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom3_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom3_pm25`
--

DROP TABLE IF EXISTS `media_zoom3_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_zoom3_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom3_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom4_pm1`
--

DROP TABLE IF EXISTS `media_zoom4_pm1`;
/*!50001 DROP VIEW IF EXISTS `media_zoom4_pm1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom4_pm1` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom4_pm10`
--

DROP TABLE IF EXISTS `media_zoom4_pm10`;
/*!50001 DROP VIEW IF EXISTS `media_zoom4_pm10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom4_pm10` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `media_zoom4_pm25`
--

DROP TABLE IF EXISTS `media_zoom4_pm25`;
/*!50001 DROP VIEW IF EXISTS `media_zoom4_pm25`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `media_zoom4_pm25` AS SELECT 
 1 AS `idmisurazione_gps`,
 1 AS `latitudine`,
 1 AS `longitudine`,
 1 AS `media`,
 1 AS `weight`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `misurazione_campo_magnetico`
--

DROP TABLE IF EXISTS `misurazione_campo_magnetico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misurazione_campo_magnetico` (
  `idmisurazione_campo_magnetico` int(11) NOT NULL AUTO_INCREMENT,
  `valore` double NOT NULL,
  `unita_misura_idunita_misura` int(11) NOT NULL,
  `report_idreport` int(11) NOT NULL,
  PRIMARY KEY (`idmisurazione_campo_magnetico`,`report_idreport`),
  KEY `fk_misurazione_campo_magnetico_report1_idx` (`report_idreport`),
  KEY `fk_misurazione_campo_magnetico_unita_misura1_idx` (`unita_misura_idunita_misura`),
  CONSTRAINT `fk_misurazione_campo_magnetico_report1` FOREIGN KEY (`report_idreport`) REFERENCES `report` (`idreport`),
  CONSTRAINT `fk_misurazione_campo_magnetico_unita_misura1` FOREIGN KEY (`unita_misura_idunita_misura`) REFERENCES `unita_misura` (`idunita_misura`)
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misurazione_campo_magnetico`
--

LOCK TABLES `misurazione_campo_magnetico` WRITE;
/*!40000 ALTER TABLE `misurazione_campo_magnetico` DISABLE KEYS */;
/*!40000 ALTER TABLE `misurazione_campo_magnetico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misurazione_gps`
--

DROP TABLE IF EXISTS `misurazione_gps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misurazione_gps` (
  `idmisurazione_gps` int(11) NOT NULL AUTO_INCREMENT,
  `latitudine` double NOT NULL,
  `longitudine` double NOT NULL,
  PRIMARY KEY (`idmisurazione_gps`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misurazione_gps`
--

LOCK TABLES `misurazione_gps` WRITE;
/*!40000 ALTER TABLE `misurazione_gps` DISABLE KEYS */;
INSERT INTO `misurazione_gps` VALUES (1,40.336462,18.120447),(2,40.3352366,18.1222998),(3,40.334073,18.1122947),(4,40.3341436,18.1141306),(5,40.3341353,18.1141287),(6,40.3341464,18.11412),(7,40.396346,18.1334264),(8,40.3964683,18.1334044),(9,40.3341424,18.1140998),(10,40.294990731437494,18.161409014946692),(11,40.334239814757474,18.11461161235035),(12,40.3341507,18.1141001),(13,40.334133,18.1174608),(14,40.3341636,18.1141027),(15,40.3342951,18.114065),(16,40.3341689,18.1140998),(17,40.3341632,18.1141056),(18,40.39628247209115,18.133481722387405),(19,40.3341587,18.1140737),(20,40.3341541,18.1140697),(21,40.10151,18.4480605),(22,40.334079480416584,18.114459626947266),(23,40.33485950648712,18.114470289790447),(24,40.3341544,18.1140702),(25,40.39644963211219,18.133448155168605),(26,40.333886,18.1140593),(27,40.3341488,18.11412),(28,40.33405796415378,18.114839180201518),(29,40.32323590183108,18.11900702438857),(30,40.38874682388054,18.228074729176974),(31,40.40046732421817,18.264856184244753),(32,40.37571658147908,18.20678914993288),(33,40.36106310072775,18.26733418784417),(34,40.32344321231806,18.122696677415966),(35,40.31384114709276,18.06297978012912),(36,40.36343503400714,18.04418625635806),(37,40.33596097832774,18.25342622688827),(38,40.35900033552977,18.228588479002223),(39,40.36168665068607,18.19474422147778),(40,40.36020770703298,18.222998559451653),(41,40.3282896029826,18.21845884677536),(42,40.39750479990484,18.27764456890762),(43,40.31038911128061,18.072870834970814),(44,40.34182020260819,18.111916741714996),(45,40.39143678841806,18.101783446681928),(46,40.30895453472497,18.05464427315504),(47,40.32498059557739,18.15663378750656),(48,40.35618657367769,18.21468950800873),(49,40.31542238380119,18.06570121853671),(50,40.36252298940407,18.2746446981032),(51,40.34846518084466,18.203821528273394),(52,40.35947021542982,18.18428672787364),(53,40.37680505588134,18.076186606174026),(54,40.31149992015805,18.105252631757512),(55,40.38782595470629,18.192969170280286),(56,40.32753664324038,18.2762137902141),(57,40.38212438115214,18.20863453956112),(58,40.38077483959857,18.107126598001688),(59,40.35707099252493,18.27420649944231),(60,40.31259564472846,18.214894103986293),(61,40.31874624252641,18.19238851023084),(62,40.36303473596645,18.184353510962655),(63,40.3191159451355,18.062193600511737),(64,40.37558653234006,18.15378884656529),(65,40.38059989848692,18.100903445182357),(66,40.37609658397299,18.119356043885375),(67,40.38264171985609,18.277619737584924),(68,40.32410791784388,18.07168690985998),(69,40.31862721031786,18.115708357199267),(70,40.35651073614254,18.156109077234316),(71,40.38293730224196,18.222653687683156),(72,40.34938878931838,18.064733410386907),(73,40.37189341401585,18.27849093775298),(74,40.36773595499409,18.20423985285749),(75,40.36119672504885,18.084094668022896),(76,40.32179657434888,18.08130267413261),(77,40.38484045475823,18.218463177186408),(78,40.39845747353665,18.140273326823607),(79,40.34021948413378,18.116915946315384),(80,40.37178639924516,18.248066047844596),(81,40.4009943246212,18.279699783026064),(82,40.31980421326851,18.167463714173795),(83,40.37170567341892,18.10072572639508),(84,40.32552065529007,18.22107145167076);
/*!40000 ALTER TABLE `misurazione_gps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misurazione_pm`
--

DROP TABLE IF EXISTS `misurazione_pm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misurazione_pm` (
  `idmisurazione_pm` int(11) NOT NULL AUTO_INCREMENT,
  `valore` double NOT NULL,
  `unita_misura_idunita_misura` int(11) NOT NULL,
  `report_idreport` int(11) NOT NULL,
  `pm_type` varchar(45) COLLATE utf8_bin NOT NULL,
  `valore_max` int(11) DEFAULT NULL,
  `valore_min` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmisurazione_pm`,`report_idreport`)
) ENGINE=InnoDB AUTO_INCREMENT=44850 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misurazione_pm`
--

LOCK TABLES `misurazione_pm` WRITE;
/*!40000 ALTER TABLE `misurazione_pm` DISABLE KEYS */;
INSERT INTO `misurazione_pm` VALUES (43443,7,4,14704,'PM1',NULL,NULL),(43444,10,4,14704,'PM2.5',NULL,NULL),(43445,13,4,14704,'PM10',NULL,NULL),(43446,5,4,14705,'PM1',NULL,NULL),(43447,8,4,14705,'PM2.5',NULL,NULL),(43448,10,4,14705,'PM10',NULL,NULL),(43449,7,4,14706,'PM1',NULL,NULL),(43450,10,4,14706,'PM2.5',NULL,NULL),(43451,13,4,14706,'PM10',NULL,NULL),(43452,5,4,14707,'PM1',NULL,NULL),(43453,8,4,14707,'PM2.5',NULL,NULL),(43454,10,4,14707,'PM10',NULL,NULL),(43455,4,4,14708,'PM1',NULL,NULL),(43456,7,4,14708,'PM2.5',NULL,NULL),(43457,8,4,14708,'PM10',NULL,NULL),(43458,4,4,14709,'PM1',NULL,NULL),(43459,7,4,14709,'PM2.5',NULL,NULL),(43460,9,4,14709,'PM10',NULL,NULL),(43461,4,4,14710,'PM1',NULL,NULL),(43462,6,4,14710,'PM2.5',NULL,NULL),(43463,7,4,14710,'PM10',NULL,NULL),(43464,4,4,14711,'PM1',NULL,NULL),(43465,6,4,14711,'PM2.5',NULL,NULL),(43466,9,4,14711,'PM10',NULL,NULL),(43467,5,4,14712,'PM1',NULL,NULL),(43468,7,4,14712,'PM2.5',NULL,NULL),(43469,8,4,14712,'PM10',NULL,NULL),(43470,6,4,14713,'PM1',NULL,NULL),(43471,8,4,14713,'PM2.5',NULL,NULL),(43472,11,4,14713,'PM10',NULL,NULL),(43473,5,4,14714,'PM1',NULL,NULL),(43474,7,4,14714,'PM2.5',NULL,NULL),(43475,8,4,14714,'PM10',NULL,NULL),(43476,4,4,14715,'PM1',NULL,NULL),(43477,7,4,14715,'PM2.5',NULL,NULL),(43478,9,4,14715,'PM10',NULL,NULL),(43479,4,4,14716,'PM1',NULL,NULL),(43480,6,4,14716,'PM2.5',NULL,NULL),(43481,7,4,14716,'PM10',NULL,NULL),(43482,3,4,14717,'PM1',NULL,NULL),(43483,5,4,14717,'PM2.5',NULL,NULL),(43484,6,4,14717,'PM10',NULL,NULL),(43485,4,4,14718,'PM1',NULL,NULL),(43486,6,4,14718,'PM2.5',NULL,NULL),(43487,7,4,14718,'PM10',NULL,NULL),(43488,3,4,14719,'PM1',NULL,NULL),(43489,6,4,14719,'PM2.5',NULL,NULL),(43490,8,4,14719,'PM10',NULL,NULL),(43491,2,4,14720,'PM1',NULL,NULL),(43492,5,4,14720,'PM2.5',NULL,NULL),(43493,8,4,14720,'PM10',NULL,NULL),(43494,3,4,14721,'PM1',NULL,NULL),(43495,5,4,14721,'PM2.5',NULL,NULL),(43496,7,4,14721,'PM10',NULL,NULL),(43497,2,4,14722,'PM1',NULL,NULL),(43498,4,4,14722,'PM2.5',NULL,NULL),(43499,4,4,14722,'PM10',NULL,NULL),(43500,3,4,14723,'PM1',NULL,NULL),(43501,5,4,14723,'PM2.5',NULL,NULL),(43502,6,4,14723,'PM10',NULL,NULL),(43503,5,4,14724,'PM1',NULL,NULL),(43504,6,4,14724,'PM2.5',NULL,NULL),(43505,9,4,14724,'PM10',NULL,NULL),(43506,3,4,14725,'PM1',NULL,NULL),(43507,6,4,14725,'PM2.5',NULL,NULL),(43508,8,4,14725,'PM10',NULL,NULL),(43509,3,4,14726,'PM1',NULL,NULL),(43510,6,4,14726,'PM2.5',NULL,NULL),(43511,10,4,14726,'PM10',NULL,NULL),(43512,5,4,14727,'PM1',NULL,NULL),(43513,6,4,14727,'PM2.5',NULL,NULL),(43514,9,4,14727,'PM10',NULL,NULL),(43515,3,4,14728,'PM1',NULL,NULL),(43516,6,4,14728,'PM2.5',NULL,NULL),(43517,8,4,14728,'PM10',NULL,NULL),(43518,3,4,14729,'PM1',NULL,NULL),(43519,6,4,14729,'PM2.5',NULL,NULL),(43520,10,4,14729,'PM10',NULL,NULL),(43521,5,4,14730,'PM1',NULL,NULL),(43522,6,4,14730,'PM2.5',NULL,NULL),(43523,9,4,14730,'PM10',NULL,NULL),(43524,3,4,14731,'PM1',NULL,NULL),(43525,6,4,14731,'PM2.5',NULL,NULL),(43526,8,4,14731,'PM10',NULL,NULL),(43527,3,4,14732,'PM1',NULL,NULL),(43528,6,4,14732,'PM2.5',NULL,NULL),(43529,10,4,14732,'PM10',NULL,NULL),(43530,4,4,14733,'PM1',NULL,NULL),(43531,7,4,14733,'PM2.5',NULL,NULL),(43532,9,4,14733,'PM10',NULL,NULL),(43533,4,4,14734,'PM1',NULL,NULL),(43534,7,4,14734,'PM2.5',NULL,NULL),(43535,9,4,14734,'PM10',NULL,NULL),(43536,4,4,14735,'PM1',NULL,NULL),(43537,7,4,14735,'PM2.5',NULL,NULL),(43538,9,4,14735,'PM10',NULL,NULL),(43539,4,4,14736,'PM1',NULL,NULL),(43540,6,4,14736,'PM2.5',NULL,NULL),(43541,8,4,14736,'PM10',NULL,NULL),(43542,3,4,14737,'PM1',NULL,NULL),(43543,4,4,14737,'PM2.5',NULL,NULL),(43544,4,4,14737,'PM10',NULL,NULL),(43545,2,4,14738,'PM1',NULL,NULL),(43546,4,4,14738,'PM2.5',NULL,NULL),(43547,4,4,14738,'PM10',NULL,NULL),(43548,2,4,14739,'PM1',NULL,NULL),(43549,4,4,14739,'PM2.5',NULL,NULL),(43550,5,4,14739,'PM10',NULL,NULL),(43551,2,4,14740,'PM1',NULL,NULL),(43552,3,4,14740,'PM2.5',NULL,NULL),(43553,3,4,14740,'PM10',NULL,NULL),(43554,2,4,14741,'PM1',NULL,NULL),(43555,3,4,14741,'PM2.5',NULL,NULL),(43556,3,4,14741,'PM10',NULL,NULL),(43557,2,4,14742,'PM1',NULL,NULL),(43558,3,4,14742,'PM2.5',NULL,NULL),(43559,3,4,14742,'PM10',NULL,NULL),(43560,1,4,14743,'PM1',NULL,NULL),(43561,3,4,14743,'PM2.5',NULL,NULL),(43562,4,4,14743,'PM10',NULL,NULL),(43563,1,4,14744,'PM1',NULL,NULL),(43564,3,4,14744,'PM2.5',NULL,NULL),(43565,5,4,14744,'PM10',NULL,NULL),(43566,0,4,14745,'PM1',NULL,NULL),(43567,1,4,14745,'PM2.5',NULL,NULL),(43568,1,4,14745,'PM10',NULL,NULL),(43569,1,4,14746,'PM1',NULL,NULL),(43570,2,4,14746,'PM2.5',NULL,NULL),(43571,3,4,14746,'PM10',NULL,NULL),(43572,1,4,14747,'PM1',NULL,NULL),(43573,2,4,14747,'PM2.5',NULL,NULL),(43574,2,4,14747,'PM10',NULL,NULL),(43575,0,4,14748,'PM1',NULL,NULL),(43576,1,4,14748,'PM2.5',NULL,NULL),(43577,1,4,14748,'PM10',NULL,NULL),(43578,2,4,14749,'PM1',NULL,NULL),(43579,3,4,14749,'PM2.5',NULL,NULL),(43580,5,4,14749,'PM10',NULL,NULL),(43581,1,4,14750,'PM1',NULL,NULL),(43582,2,4,14750,'PM2.5',NULL,NULL),(43583,3,4,14750,'PM10',NULL,NULL),(43584,0,4,14751,'PM1',NULL,NULL),(43585,2,4,14751,'PM2.5',NULL,NULL),(43586,2,4,14751,'PM10',NULL,NULL),(43587,1,4,14752,'PM1',NULL,NULL),(43588,2,4,14752,'PM2.5',NULL,NULL),(43589,2,4,14752,'PM10',NULL,NULL),(43590,4,4,14753,'PM1',NULL,NULL),(43591,6,4,14753,'PM2.5',NULL,NULL),(43592,8,4,14753,'PM10',NULL,NULL),(43593,3,4,14754,'PM1',NULL,NULL),(43594,4,4,14754,'PM2.5',NULL,NULL),(43595,4,4,14754,'PM10',NULL,NULL),(43596,2,4,14755,'PM1',NULL,NULL),(43597,4,4,14755,'PM2.5',NULL,NULL),(43598,4,4,14755,'PM10',NULL,NULL),(43599,2,4,14756,'PM1',NULL,NULL),(43600,4,4,14756,'PM2.5',NULL,NULL),(43601,5,4,14756,'PM10',NULL,NULL),(43602,2,4,14757,'PM1',NULL,NULL),(43603,3,4,14757,'PM2.5',NULL,NULL),(43604,3,4,14757,'PM10',NULL,NULL),(43605,2,4,14758,'PM1',NULL,NULL),(43606,3,4,14758,'PM2.5',NULL,NULL),(43607,3,4,14758,'PM10',NULL,NULL),(43608,2,4,14759,'PM1',NULL,NULL),(43609,3,4,14759,'PM2.5',NULL,NULL),(43610,3,4,14759,'PM10',NULL,NULL),(43611,1,4,14760,'PM1',NULL,NULL),(43612,3,4,14760,'PM2.5',NULL,NULL),(43613,4,4,14760,'PM10',NULL,NULL),(43614,1,4,14761,'PM1',NULL,NULL),(43615,3,4,14761,'PM2.5',NULL,NULL),(43616,5,4,14761,'PM10',NULL,NULL),(43617,0,4,14762,'PM1',NULL,NULL),(43618,1,4,14762,'PM2.5',NULL,NULL),(43619,1,4,14762,'PM10',NULL,NULL),(43620,1,4,14763,'PM1',NULL,NULL),(43621,2,4,14763,'PM2.5',NULL,NULL),(43622,3,4,14763,'PM10',NULL,NULL),(43623,1,4,14764,'PM1',NULL,NULL),(43624,2,4,14764,'PM2.5',NULL,NULL),(43625,2,4,14764,'PM10',NULL,NULL),(43626,0,4,14765,'PM1',NULL,NULL),(43627,1,4,14765,'PM2.5',NULL,NULL),(43628,1,4,14765,'PM10',NULL,NULL),(43629,2,4,14766,'PM1',NULL,NULL),(43630,3,4,14766,'PM2.5',NULL,NULL),(43631,5,4,14766,'PM10',NULL,NULL),(43632,1,4,14767,'PM1',NULL,NULL),(43633,2,4,14767,'PM2.5',NULL,NULL),(43634,3,4,14767,'PM10',NULL,NULL),(43635,0,4,14768,'PM1',NULL,NULL),(43636,2,4,14768,'PM2.5',NULL,NULL),(43637,2,4,14768,'PM10',NULL,NULL),(43638,1,4,14769,'PM1',NULL,NULL),(43639,2,4,14769,'PM2.5',NULL,NULL),(43640,2,4,14769,'PM10',NULL,NULL),(43641,0,4,14770,'PM1',NULL,NULL),(43642,0,4,14770,'PM2.5',NULL,NULL),(43643,0,4,14770,'PM10',NULL,NULL),(43644,0,4,14771,'PM1',NULL,NULL),(43645,1,4,14771,'PM2.5',NULL,NULL),(43646,1,4,14771,'PM10',NULL,NULL),(43647,0,4,14772,'PM1',NULL,NULL),(43648,2,4,14772,'PM2.5',NULL,NULL),(43649,2,4,14772,'PM10',NULL,NULL),(43650,10,4,14773,'PM1',NULL,NULL),(43651,14,4,14773,'PM2.5',NULL,NULL),(43652,18,4,14773,'PM10',NULL,NULL),(43653,10,4,14774,'PM1',NULL,NULL),(43654,14,4,14774,'PM2.5',NULL,NULL),(43655,20,4,14774,'PM10',NULL,NULL),(43656,0,4,14775,'PM1',NULL,NULL),(43657,0,4,14775,'PM2.5',NULL,NULL),(43658,0,4,14775,'PM10',NULL,NULL),(43659,0,4,14776,'PM1',NULL,NULL),(43660,1,4,14776,'PM2.5',NULL,NULL),(43661,1,4,14776,'PM10',NULL,NULL),(43662,0,4,14777,'PM1',NULL,NULL),(43663,2,4,14777,'PM2.5',NULL,NULL),(43664,2,4,14777,'PM10',NULL,NULL),(43665,10,4,14778,'PM1',NULL,NULL),(43666,14,4,14778,'PM2.5',NULL,NULL),(43667,18,4,14778,'PM10',NULL,NULL),(43668,10,4,14779,'PM1',NULL,NULL),(43669,14,4,14779,'PM2.5',NULL,NULL),(43670,20,4,14779,'PM10',NULL,NULL),(43671,0,4,14780,'PM1',NULL,NULL),(43672,0,4,14780,'PM2.5',NULL,NULL),(43673,0,4,14780,'PM10',NULL,NULL),(43674,0,4,14781,'PM1',NULL,NULL),(43675,0,4,14781,'PM2.5',NULL,NULL),(43676,0,4,14781,'PM10',NULL,NULL),(43677,0,4,14782,'PM1',NULL,NULL),(43678,0,4,14782,'PM2.5',NULL,NULL),(43679,0,4,14782,'PM10',NULL,NULL),(43680,0,4,14783,'PM1',NULL,NULL),(43681,0,4,14783,'PM2.5',NULL,NULL),(43682,0,4,14783,'PM10',NULL,NULL),(43683,3,4,14784,'PM1',NULL,NULL),(43684,5,4,14784,'PM2.5',NULL,NULL),(43685,6,4,14784,'PM10',NULL,NULL),(43686,3,4,14785,'PM1',NULL,NULL),(43687,6,4,14785,'PM2.5',NULL,NULL),(43688,7,4,14785,'PM10',NULL,NULL),(43689,2,4,14786,'PM1',NULL,NULL),(43690,4,4,14786,'PM2.5',NULL,NULL),(43691,6,4,14786,'PM10',NULL,NULL),(43692,2,4,14787,'PM1',NULL,NULL),(43693,5,4,14787,'PM2.5',NULL,NULL),(43694,5,4,14787,'PM10',NULL,NULL),(43695,3,4,14788,'PM1',NULL,NULL),(43696,5,4,14788,'PM2.5',NULL,NULL),(43697,7,4,14788,'PM10',NULL,NULL),(43698,3,4,14789,'PM1',NULL,NULL),(43699,5,4,14789,'PM2.5',NULL,NULL),(43700,6,4,14789,'PM10',NULL,NULL),(43701,3,4,14790,'PM1',NULL,NULL),(43702,6,4,14790,'PM2.5',NULL,NULL),(43703,7,4,14790,'PM10',NULL,NULL),(43704,2,4,14791,'PM1',NULL,NULL),(43705,4,4,14791,'PM2.5',NULL,NULL),(43706,6,4,14791,'PM10',NULL,NULL),(43707,2,4,14792,'PM1',NULL,NULL),(43708,5,4,14792,'PM2.5',NULL,NULL),(43709,5,4,14792,'PM10',NULL,NULL),(43710,3,4,14793,'PM1',NULL,NULL),(43711,5,4,14793,'PM2.5',NULL,NULL),(43712,7,4,14793,'PM10',NULL,NULL),(43713,3,4,14794,'PM1',NULL,NULL),(43714,5,4,14794,'PM2.5',NULL,NULL),(43715,6,4,14794,'PM10',NULL,NULL),(43716,3,4,14795,'PM1',NULL,NULL),(43717,6,4,14795,'PM2.5',NULL,NULL),(43718,7,4,14795,'PM10',NULL,NULL),(43719,2,4,14796,'PM1',NULL,NULL),(43720,4,4,14796,'PM2.5',NULL,NULL),(43721,6,4,14796,'PM10',NULL,NULL),(43722,2,4,14797,'PM1',NULL,NULL),(43723,5,4,14797,'PM2.5',NULL,NULL),(43724,5,4,14797,'PM10',NULL,NULL),(43725,3,4,14798,'PM1',NULL,NULL),(43726,5,4,14798,'PM2.5',NULL,NULL),(43727,7,4,14798,'PM10',NULL,NULL),(43728,0.55,4,14799,'PM1',1,0),(43729,1.8166666666666667,4,14799,'PM2.5',3,0),(43730,2.3666666666666667,4,14799,'PM10',4,0),(43731,0.5833333333333334,4,14800,'PM1',2,0),(43732,1.5333333333333334,4,14800,'PM2.5',3,0),(43733,2.15,4,14800,'PM10',5,1),(43734,0.16666666666666666,4,14801,'PM1',1,0),(43735,1.1666666666666667,4,14801,'PM2.5',2,0),(43736,2.05,4,14801,'PM10',4,1),(43737,0.4166666666666667,4,14802,'PM1',1,0),(43738,1.6833333333333333,4,14802,'PM2.5',3,0),(43739,2.3333333333333335,4,14802,'PM10',5,0),(43740,0.3333333333333333,4,14803,'PM1',1,0),(43741,1.4666666666666666,4,14803,'PM2.5',2,0),(43742,2.8,4,14803,'PM10',4,1),(43743,0.75,4,14804,'PM1',2,0),(43744,1.9,4,14804,'PM2.5',3,0),(43745,2.283333333333333,4,14804,'PM10',3,0),(43746,0.55,4,14805,'PM1',1,0),(43747,1.8166666666666667,4,14805,'PM2.5',3,0),(43748,2.3666666666666667,4,14805,'PM10',4,0),(43749,0.5833333333333334,4,14806,'PM1',2,0),(43750,1.5333333333333334,4,14806,'PM2.5',3,0),(43751,2.15,4,14806,'PM10',5,1),(43752,0.16666666666666666,4,14807,'PM1',1,0),(43753,1.1666666666666667,4,14807,'PM2.5',2,0),(43754,2.05,4,14807,'PM10',4,1),(43755,0.4166666666666667,4,14808,'PM1',1,0),(43756,1.6833333333333333,4,14808,'PM2.5',3,0),(43757,2.3333333333333335,4,14808,'PM10',5,0),(43758,0.3333333333333333,4,14809,'PM1',1,0),(43759,1.4666666666666666,4,14809,'PM2.5',2,0),(43760,2.8,4,14809,'PM10',4,1),(43761,0.75,4,14810,'PM1',2,0),(43762,1.9,4,14810,'PM2.5',3,0),(43763,2.283333333333333,4,14810,'PM10',3,0),(43764,0.55,4,14811,'PM1',1,0),(43765,1.8166666666666667,4,14811,'PM2.5',3,0),(43766,2.3666666666666667,4,14811,'PM10',4,0),(43767,0.5833333333333334,4,14812,'PM1',2,0),(43768,1.5333333333333334,4,14812,'PM2.5',3,0),(43769,2.15,4,14812,'PM10',5,1),(43770,0.16666666666666666,4,14813,'PM1',1,0),(43771,1.1666666666666667,4,14813,'PM2.5',2,0),(43772,2.05,4,14813,'PM10',4,1),(43773,0.4166666666666667,4,14814,'PM1',1,0),(43774,1.6833333333333333,4,14814,'PM2.5',3,0),(43775,2.3333333333333335,4,14814,'PM10',5,0),(43776,0.3333333333333333,4,14815,'PM1',1,0),(43777,1.4666666666666666,4,14815,'PM2.5',2,0),(43778,2.8,4,14815,'PM10',4,1),(43779,0.75,4,14816,'PM1',2,0),(43780,1.9,4,14816,'PM2.5',3,0),(43781,2.283333333333333,4,14816,'PM10',3,0),(43782,4.55,4,14817,'PM1',6,3),(43783,6.966666666666667,4,14817,'PM2.5',9,6),(43784,8.85,4,14817,'PM10',12,7),(43785,3.2333333333333334,4,14818,'PM1',4,3),(43786,5.85,4,14818,'PM2.5',7,5),(43787,7.316666666666666,4,14818,'PM10',10,5),(43788,4.55,4,14819,'PM1',6,3),(43789,6.966666666666667,4,14819,'PM2.5',9,6),(43790,8.85,4,14819,'PM10',12,7),(43791,3.2333333333333334,4,14820,'PM1',4,3),(43792,5.85,4,14820,'PM2.5',7,5),(43793,7.316666666666666,4,14820,'PM10',10,5),(43794,4.75,4,14821,'PM1',7,3),(43795,7,4,14821,'PM2.5',9,5),(43796,8.733333333333333,4,14821,'PM10',11,6),(43797,4.75,4,14822,'PM1',7,3),(43798,7,4,14822,'PM2.5',9,5),(43799,8.733333333333333,4,14822,'PM10',11,6),(43800,2.25,4,14823,'PM1',3,1),(43801,4.2,4,14823,'PM2.5',6,3),(43802,4.2,4,14823,'PM10',6,3),(43803,2.1666666666666665,4,14824,'PM1',3,1),(43804,3.816666666666667,4,14824,'PM2.5',6,3),(43805,3.816666666666667,4,14824,'PM10',6,3),(43806,2.0166666666666666,4,14825,'PM1',3,1),(43807,3.5,4,14825,'PM2.5',4,2),(43808,3.9166666666666665,4,14825,'PM10',5,2),(43809,2.216666666666667,4,14826,'PM1',3,1),(43810,3.816666666666667,4,14826,'PM2.5',5,2),(43811,4.25,4,14826,'PM10',6,2),(43812,1.7833333333333334,4,14827,'PM1',3,1),(43813,3.2,4,14827,'PM2.5',5,2),(43814,3.6666666666666665,4,14827,'PM10',5,2),(43815,2.25,4,14828,'PM1',3,1),(43816,4.2,4,14828,'PM2.5',6,3),(43817,4.2,4,14828,'PM10',6,3),(43818,2.1666666666666665,4,14829,'PM1',3,1),(43819,3.816666666666667,4,14829,'PM2.5',6,3),(43820,3.816666666666667,4,14829,'PM10',6,3),(43821,2.0166666666666666,4,14830,'PM1',3,1),(43822,3.5,4,14830,'PM2.5',4,2),(43823,3.9166666666666665,4,14830,'PM10',5,2),(43824,2.216666666666667,4,14831,'PM1',3,1),(43825,3.816666666666667,4,14831,'PM2.5',5,2),(43826,4.25,4,14831,'PM10',6,2),(43827,1.7833333333333334,4,14832,'PM1',3,1),(43828,3.2,4,14832,'PM2.5',5,2),(43829,3.6666666666666665,4,14832,'PM10',5,2),(43830,1.7333333333333334,4,14833,'PM1',3,0),(43831,2.933333333333333,4,14833,'PM2.5',4,1),(43832,2.933333333333333,4,14833,'PM10',4,1),(43833,1.55,4,14834,'PM1',2,0),(43834,2.6666666666666665,4,14834,'PM2.5',3,1),(43835,3.183333333333333,4,14834,'PM10',5,1),(43836,1.85,4,14835,'PM1',3,1),(43837,3.566666666666667,4,14835,'PM2.5',4,2),(43838,4.666666666666667,4,14835,'PM10',7,2),(43839,1.7,4,14836,'PM1',3,1),(43840,3.033333333333333,4,14836,'PM2.5',4,2),(43841,3.05,4,14836,'PM10',4,2),(43842,1.7333333333333334,4,14837,'PM1',3,0),(43843,2.933333333333333,4,14837,'PM2.5',4,1),(43844,2.933333333333333,4,14837,'PM10',4,1),(43845,1.55,4,14838,'PM1',2,0),(43846,2.6666666666666665,4,14838,'PM2.5',3,1),(43847,3.183333333333333,4,14838,'PM10',5,1),(43848,1.85,4,14839,'PM1',3,1),(43849,3.566666666666667,4,14839,'PM2.5',4,2),(43850,4.666666666666667,4,14839,'PM10',7,2),(43851,1.7,4,14840,'PM1',3,1),(43852,3.033333333333333,4,14840,'PM2.5',4,2),(43853,3.05,4,14840,'PM10',4,2),(43854,1.95,4,14841,'PM1',3,1),(43855,3.0833333333333335,4,14841,'PM2.5',4,2),(43856,3.933333333333333,4,14841,'PM10',7,2),(43857,1.95,4,14842,'PM1',3,1),(43858,3.216666666666667,4,14842,'PM2.5',4,2),(43859,3.816666666666667,4,14842,'PM10',7,2),(43860,1.15,4,14843,'PM1',3,0),(43861,2.9833333333333334,4,14843,'PM2.5',5,1),(43862,5.216666666666667,4,14843,'PM10',8,2),(43863,1.0333333333333334,4,14844,'PM1',2,0),(43864,3.35,4,14844,'PM2.5',5,1),(43865,6.583333333333333,4,14844,'PM10',11,3),(43866,1.1666666666666667,4,14845,'PM1',3,0),(43867,2.966666666666667,4,14845,'PM2.5',5,1),(43868,5.566666666666666,4,14845,'PM10',10,1),(43869,1,4,14846,'PM1',2,0),(43870,2.466666666666667,4,14846,'PM2.5',4,1),(43871,4.616666666666666,4,14846,'PM10',8,2),(43872,0.8666666666666667,4,14847,'PM1',2,0),(43873,3.3333333333333335,4,14847,'PM2.5',5,1),(43874,5.466666666666667,4,14847,'PM10',9,2),(43875,0.6666666666666666,4,14848,'PM1',2,0),(43876,2.4833333333333334,4,14848,'PM2.5',4,1),(43877,4.066666666666666,4,14848,'PM10',8,2),(43878,0.8333333333333334,4,14849,'PM1',2,0),(43879,2.85,4,14849,'PM2.5',4,1),(43880,4.866666666666666,4,14849,'PM10',10,2),(43881,0.65,4,14850,'PM1',2,0),(43882,2.1666666666666665,4,14850,'PM2.5',3,1),(43883,5.066666666666666,4,14850,'PM10',10,2),(43884,1.15,4,14851,'PM1',2,0),(43885,2.7,4,14851,'PM2.5',4,1),(43886,4.816666666666666,4,14851,'PM10',7,1),(43887,0.6166666666666667,4,14852,'PM1',1,0),(43888,2.566666666666667,4,14852,'PM2.5',4,1),(43889,5.233333333333333,4,14852,'PM10',8,3),(43890,1.15,4,14853,'PM1',3,0),(43891,2.9833333333333334,4,14853,'PM2.5',5,1),(43892,5.216666666666667,4,14853,'PM10',8,2),(43893,1.0333333333333334,4,14854,'PM1',2,0),(43894,3.35,4,14854,'PM2.5',5,1),(43895,6.583333333333333,4,14854,'PM10',11,3),(43896,1.1666666666666667,4,14855,'PM1',3,0),(43897,2.966666666666667,4,14855,'PM2.5',5,1),(43898,5.566666666666666,4,14855,'PM10',10,1),(43899,1,4,14856,'PM1',2,0),(43900,2.466666666666667,4,14856,'PM2.5',4,1),(43901,4.616666666666666,4,14856,'PM10',8,2),(43902,0.8666666666666667,4,14857,'PM1',2,0),(43903,3.3333333333333335,4,14857,'PM2.5',5,1),(43904,5.466666666666667,4,14857,'PM10',9,2),(43905,0.6666666666666666,4,14858,'PM1',2,0),(43906,2.4833333333333334,4,14858,'PM2.5',4,1),(43907,4.066666666666666,4,14858,'PM10',8,2),(43908,0.8333333333333334,4,14859,'PM1',2,0),(43909,2.85,4,14859,'PM2.5',4,1),(43910,4.866666666666666,4,14859,'PM10',10,2),(43911,0.65,4,14860,'PM1',2,0),(43912,2.1666666666666665,4,14860,'PM2.5',3,1),(43913,5.066666666666666,4,14860,'PM10',10,2),(43914,1.15,4,14861,'PM1',2,0),(43915,2.7,4,14861,'PM2.5',4,1),(43916,4.816666666666666,4,14861,'PM10',7,1),(43917,0.6166666666666667,4,14862,'PM1',1,0),(43918,2.566666666666667,4,14862,'PM2.5',4,1),(43919,5.233333333333333,4,14862,'PM10',8,3),(43920,21.283333333333335,4,14863,'PM1',22,20),(43921,26.533333333333335,4,14863,'PM2.5',29,25),(43922,42.43333333333333,4,14863,'PM10',48,36),(43923,0,4,14864,'PM1',0,0),(43924,0.6166666666666667,4,14864,'PM2.5',2,0),(43925,0.6166666666666667,4,14864,'PM10',2,0),(43926,0,4,14865,'PM1',0,0),(43927,0.8,4,14865,'PM2.5',1,0),(43928,2.75,4,14865,'PM10',6,0),(43929,0,4,14866,'PM1',0,0),(43930,0.43333333333333335,4,14866,'PM2.5',1,0),(43931,0.8833333333333333,4,14866,'PM10',4,0),(43932,0,4,14867,'PM1',0,0),(43933,0.43333333333333335,4,14867,'PM2.5',2,0),(43934,1.2666666666666666,4,14867,'PM10',2,0),(43935,0,4,14868,'PM1',0,0),(43936,0.6,4,14868,'PM2.5',2,0),(43937,0.7833333333333333,4,14868,'PM10',2,0),(43938,0,4,14869,'PM1',0,0),(43939,0.5166666666666667,4,14869,'PM2.5',1,0),(43940,0.95,4,14869,'PM10',3,0),(43941,0,4,14870,'PM1',0,0),(43942,0.6166666666666667,4,14870,'PM2.5',2,0),(43943,0.6166666666666667,4,14870,'PM10',2,0),(43944,0,4,14871,'PM1',0,0),(43945,0.8,4,14871,'PM2.5',1,0),(43946,2.75,4,14871,'PM10',6,0),(43947,0,4,14872,'PM1',0,0),(43948,0.43333333333333335,4,14872,'PM2.5',1,0),(43949,0.8833333333333333,4,14872,'PM10',4,0),(43950,0,4,14873,'PM1',0,0),(43951,0.43333333333333335,4,14873,'PM2.5',2,0),(43952,1.2666666666666666,4,14873,'PM10',2,0),(43953,0,4,14874,'PM1',0,0),(43954,0.6,4,14874,'PM2.5',2,0),(43955,0.7833333333333333,4,14874,'PM10',2,0),(43956,0,4,14875,'PM1',0,0),(43957,0.5166666666666667,4,14875,'PM2.5',1,0),(43958,0.95,4,14875,'PM10',3,0),(43959,0,4,14876,'PM1',0,0),(43960,0.6166666666666667,4,14876,'PM2.5',2,0),(43961,0.6166666666666667,4,14876,'PM10',2,0),(43962,0,4,14877,'PM1',0,0),(43963,0.8,4,14877,'PM2.5',1,0),(43964,2.75,4,14877,'PM10',6,0),(43965,0,4,14878,'PM1',0,0),(43966,0.43333333333333335,4,14878,'PM2.5',1,0),(43967,0.8833333333333333,4,14878,'PM10',4,0),(43968,0,4,14879,'PM1',0,0),(43969,0.43333333333333335,4,14879,'PM2.5',2,0),(43970,1.2666666666666666,4,14879,'PM10',2,0),(43971,0,4,14880,'PM1',0,0),(43972,0.6,4,14880,'PM2.5',2,0),(43973,0.7833333333333333,4,14880,'PM10',2,0),(43974,0,4,14881,'PM1',0,0),(43975,0.5166666666666667,4,14881,'PM2.5',1,0),(43976,0.95,4,14881,'PM10',3,0),(43977,0,4,14882,'PM1',0,0),(43978,0.7,4,14882,'PM2.5',2,0),(43979,0.7333333333333333,4,14882,'PM10',2,0),(43980,0,4,14883,'PM1',0,0),(43981,0.6333333333333333,4,14883,'PM2.5',1,0),(43982,0.6333333333333333,4,14883,'PM10',1,0),(43983,0,4,14884,'PM1',0,0),(43984,0.7,4,14884,'PM2.5',2,0),(43985,0.7333333333333333,4,14884,'PM10',2,0),(43986,0,4,14885,'PM1',0,0),(43987,0.6333333333333333,4,14885,'PM2.5',1,0),(43988,0.6333333333333333,4,14885,'PM10',1,0),(43989,7,4,14886,'PM1',NULL,NULL),(43990,10,4,14886,'PM2.5',NULL,NULL),(43991,13,4,14886,'PM10',NULL,NULL),(43992,5,4,14887,'PM1',NULL,NULL),(43993,8,4,14887,'PM2.5',NULL,NULL),(43994,10,4,14887,'PM10',NULL,NULL),(43995,4,4,14888,'PM1',NULL,NULL),(43996,7,4,14888,'PM2.5',NULL,NULL),(43997,8,4,14888,'PM10',NULL,NULL),(43998,4,4,14889,'PM1',NULL,NULL),(43999,7,4,14889,'PM2.5',NULL,NULL),(44000,9,4,14889,'PM10',NULL,NULL),(44001,4,4,14890,'PM1',NULL,NULL),(44002,6,4,14890,'PM2.5',NULL,NULL),(44003,7,4,14890,'PM10',NULL,NULL),(44004,4,4,14891,'PM1',NULL,NULL),(44005,6,4,14891,'PM2.5',NULL,NULL),(44006,9,4,14891,'PM10',NULL,NULL),(44007,5,4,14892,'PM1',NULL,NULL),(44008,7,4,14892,'PM2.5',NULL,NULL),(44009,8,4,14892,'PM10',NULL,NULL),(44010,6,4,14893,'PM1',NULL,NULL),(44011,8,4,14893,'PM2.5',NULL,NULL),(44012,11,4,14893,'PM10',NULL,NULL),(44013,5,4,14894,'PM1',NULL,NULL),(44014,7,4,14894,'PM2.5',NULL,NULL),(44015,8,4,14894,'PM10',NULL,NULL),(44016,4,4,14895,'PM1',NULL,NULL),(44017,7,4,14895,'PM2.5',NULL,NULL),(44018,9,4,14895,'PM10',NULL,NULL),(44019,4,4,14896,'PM1',NULL,NULL),(44020,6,4,14896,'PM2.5',NULL,NULL),(44021,7,4,14896,'PM10',NULL,NULL),(44022,3,4,14897,'PM1',NULL,NULL),(44023,5,4,14897,'PM2.5',NULL,NULL),(44024,6,4,14897,'PM10',NULL,NULL),(44025,4,4,14898,'PM1',NULL,NULL),(44026,6,4,14898,'PM2.5',NULL,NULL),(44027,7,4,14898,'PM10',NULL,NULL),(44028,3,4,14899,'PM1',NULL,NULL),(44029,6,4,14899,'PM2.5',NULL,NULL),(44030,8,4,14899,'PM10',NULL,NULL),(44031,2,4,14900,'PM1',NULL,NULL),(44032,5,4,14900,'PM2.5',NULL,NULL),(44033,8,4,14900,'PM10',NULL,NULL),(44034,3,4,14901,'PM1',NULL,NULL),(44035,5,4,14901,'PM2.5',NULL,NULL),(44036,7,4,14901,'PM10',NULL,NULL),(44037,2,4,14902,'PM1',NULL,NULL),(44038,4,4,14902,'PM2.5',NULL,NULL),(44039,4,4,14902,'PM10',NULL,NULL),(44040,3,4,14903,'PM1',NULL,NULL),(44041,4,4,14903,'PM2.5',NULL,NULL),(44042,5,4,14903,'PM10',NULL,NULL),(44043,3,4,14904,'PM1',NULL,NULL),(44044,5,4,14904,'PM2.5',NULL,NULL),(44045,6,4,14904,'PM10',NULL,NULL),(44046,2,4,14905,'PM1',NULL,NULL),(44047,4,4,14905,'PM2.5',NULL,NULL),(44048,4,4,14905,'PM10',NULL,NULL),(44049,2,4,14906,'PM1',NULL,NULL),(44050,3,4,14906,'PM2.5',NULL,NULL),(44051,4,4,14906,'PM10',NULL,NULL),(44052,3,4,14907,'PM1',NULL,NULL),(44053,4,4,14907,'PM2.5',NULL,NULL),(44054,5,4,14907,'PM10',NULL,NULL),(44055,3,4,14908,'PM1',NULL,NULL),(44056,6,4,14908,'PM2.5',NULL,NULL),(44057,6,4,14908,'PM10',NULL,NULL),(44058,3,4,14909,'PM1',NULL,NULL),(44059,5,4,14909,'PM2.5',NULL,NULL),(44060,6,4,14909,'PM10',NULL,NULL),(44061,4,4,14910,'PM1',NULL,NULL),(44062,6,4,14910,'PM2.5',NULL,NULL),(44063,7,4,14910,'PM10',NULL,NULL),(44064,3,4,14911,'PM1',NULL,NULL),(44065,5,4,14911,'PM2.5',NULL,NULL),(44066,7,4,14911,'PM10',NULL,NULL),(44067,4,4,14912,'PM1',NULL,NULL),(44068,6,4,14912,'PM2.5',NULL,NULL),(44069,7,4,14912,'PM10',NULL,NULL),(44070,4,4,14913,'PM1',NULL,NULL),(44071,6,4,14913,'PM2.5',NULL,NULL),(44072,7,4,14913,'PM10',NULL,NULL),(44073,5,4,14914,'PM1',NULL,NULL),(44074,6,4,14914,'PM2.5',NULL,NULL),(44075,9,4,14914,'PM10',NULL,NULL),(44076,3,4,14915,'PM1',NULL,NULL),(44077,6,4,14915,'PM2.5',NULL,NULL),(44078,8,4,14915,'PM10',NULL,NULL),(44079,3,4,14916,'PM1',NULL,NULL),(44080,6,4,14916,'PM2.5',NULL,NULL),(44081,10,4,14916,'PM10',NULL,NULL),(44082,4,4,14917,'PM1',NULL,NULL),(44083,7,4,14917,'PM2.5',NULL,NULL),(44084,9,4,14917,'PM10',NULL,NULL),(44085,4,4,14918,'PM1',NULL,NULL),(44086,6,4,14918,'PM2.5',NULL,NULL),(44087,8,4,14918,'PM10',NULL,NULL),(44088,3,4,14919,'PM1',NULL,NULL),(44089,4,4,14919,'PM2.5',NULL,NULL),(44090,4,4,14919,'PM10',NULL,NULL),(44091,2,4,14920,'PM1',NULL,NULL),(44092,4,4,14920,'PM2.5',NULL,NULL),(44093,4,4,14920,'PM10',NULL,NULL),(44094,2,4,14921,'PM1',NULL,NULL),(44095,4,4,14921,'PM2.5',NULL,NULL),(44096,5,4,14921,'PM10',NULL,NULL),(44097,2,4,14922,'PM1',NULL,NULL),(44098,3,4,14922,'PM2.5',NULL,NULL),(44099,3,4,14922,'PM10',NULL,NULL),(44100,2,4,14923,'PM1',NULL,NULL),(44101,3,4,14923,'PM2.5',NULL,NULL),(44102,3,4,14923,'PM10',NULL,NULL),(44103,2,4,14924,'PM1',NULL,NULL),(44104,3,4,14924,'PM2.5',NULL,NULL),(44105,3,4,14924,'PM10',NULL,NULL),(44106,1,4,14925,'PM1',NULL,NULL),(44107,3,4,14925,'PM2.5',NULL,NULL),(44108,4,4,14925,'PM10',NULL,NULL),(44109,1,4,14926,'PM1',NULL,NULL),(44110,3,4,14926,'PM2.5',NULL,NULL),(44111,5,4,14926,'PM10',NULL,NULL),(44112,0,4,14927,'PM1',NULL,NULL),(44113,1,4,14927,'PM2.5',NULL,NULL),(44114,1,4,14927,'PM10',NULL,NULL),(44115,1,4,14928,'PM1',NULL,NULL),(44116,2,4,14928,'PM2.5',NULL,NULL),(44117,3,4,14928,'PM10',NULL,NULL),(44118,1,4,14929,'PM1',NULL,NULL),(44119,2,4,14929,'PM2.5',NULL,NULL),(44120,2,4,14929,'PM10',NULL,NULL),(44121,0,4,14930,'PM1',NULL,NULL),(44122,1,4,14930,'PM2.5',NULL,NULL),(44123,1,4,14930,'PM10',NULL,NULL),(44124,2,4,14931,'PM1',NULL,NULL),(44125,3,4,14931,'PM2.5',NULL,NULL),(44126,5,4,14931,'PM10',NULL,NULL),(44127,1,4,14932,'PM1',NULL,NULL),(44128,2,4,14932,'PM2.5',NULL,NULL),(44129,3,4,14932,'PM10',NULL,NULL),(44130,0,4,14933,'PM1',NULL,NULL),(44131,2,4,14933,'PM2.5',NULL,NULL),(44132,2,4,14933,'PM10',NULL,NULL),(44133,1,4,14934,'PM1',NULL,NULL),(44134,2,4,14934,'PM2.5',NULL,NULL),(44135,2,4,14934,'PM10',NULL,NULL),(44136,0,4,14935,'PM1',NULL,NULL),(44137,0,4,14935,'PM2.5',NULL,NULL),(44138,0,4,14935,'PM10',NULL,NULL),(44139,0,4,14936,'PM1',NULL,NULL),(44140,1,4,14936,'PM2.5',NULL,NULL),(44141,1,4,14936,'PM10',NULL,NULL),(44142,0,4,14937,'PM1',NULL,NULL),(44143,2,4,14937,'PM2.5',NULL,NULL),(44144,2,4,14937,'PM10',NULL,NULL),(44145,10,4,14938,'PM1',NULL,NULL),(44146,14,4,14938,'PM2.5',NULL,NULL),(44147,18,4,14938,'PM10',NULL,NULL),(44148,10,4,14939,'PM1',NULL,NULL),(44149,14,4,14939,'PM2.5',NULL,NULL),(44150,20,4,14939,'PM10',NULL,NULL),(44151,0,4,14940,'PM1',NULL,NULL),(44152,0,4,14940,'PM2.5',NULL,NULL),(44153,0,4,14940,'PM10',NULL,NULL),(44154,0,4,14941,'PM1',NULL,NULL),(44155,0,4,14941,'PM2.5',NULL,NULL),(44156,0,4,14941,'PM10',NULL,NULL),(44157,0,4,14942,'PM1',NULL,NULL),(44158,0,4,14942,'PM2.5',NULL,NULL),(44159,0,4,14942,'PM10',NULL,NULL),(44160,0,4,14943,'PM1',NULL,NULL),(44161,0,4,14943,'PM2.5',NULL,NULL),(44162,0,4,14943,'PM10',NULL,NULL),(44163,0,4,14944,'PM1',NULL,NULL),(44164,0,4,14944,'PM2.5',NULL,NULL),(44165,0,4,14944,'PM10',NULL,NULL),(44166,0,4,14945,'PM1',NULL,NULL),(44167,0,4,14945,'PM2.5',NULL,NULL),(44168,0,4,14945,'PM10',NULL,NULL),(44169,0,4,14946,'PM1',NULL,NULL),(44170,0,4,14946,'PM2.5',NULL,NULL),(44171,0,4,14946,'PM10',NULL,NULL),(44172,0,4,14947,'PM1',NULL,NULL),(44173,0,4,14947,'PM2.5',NULL,NULL),(44174,0,4,14947,'PM10',NULL,NULL),(44175,0,4,14948,'PM1',NULL,NULL),(44176,0,4,14948,'PM2.5',NULL,NULL),(44177,0,4,14948,'PM10',NULL,NULL),(44178,0,4,14949,'PM1',NULL,NULL),(44179,0,4,14949,'PM2.5',NULL,NULL),(44180,1,4,14949,'PM10',NULL,NULL),(44181,3,4,14950,'PM1',NULL,NULL),(44182,5,4,14950,'PM2.5',NULL,NULL),(44183,6,4,14950,'PM10',NULL,NULL),(44184,3,4,14951,'PM1',NULL,NULL),(44185,6,4,14951,'PM2.5',NULL,NULL),(44186,7,4,14951,'PM10',NULL,NULL),(44187,2,4,14952,'PM1',NULL,NULL),(44188,4,4,14952,'PM2.5',NULL,NULL),(44189,6,4,14952,'PM10',NULL,NULL),(44190,2,4,14953,'PM1',NULL,NULL),(44191,5,4,14953,'PM2.5',NULL,NULL),(44192,5,4,14953,'PM10',NULL,NULL),(44193,3,4,14954,'PM1',NULL,NULL),(44194,5,4,14954,'PM2.5',NULL,NULL),(44195,7,4,14954,'PM10',NULL,NULL),(44196,0.55,4,14955,'PM1',1,0),(44197,1.8166666666666667,4,14955,'PM2.5',3,0),(44198,2.3666666666666667,4,14955,'PM10',4,0),(44199,0.5833333333333334,4,14956,'PM1',2,0),(44200,1.5333333333333334,4,14956,'PM2.5',3,0),(44201,2.15,4,14956,'PM10',5,1),(44202,0.16666666666666666,4,14957,'PM1',1,0),(44203,1.1666666666666667,4,14957,'PM2.5',2,0),(44204,2.05,4,14957,'PM10',4,1),(44205,0.4166666666666667,4,14958,'PM1',1,0),(44206,1.6833333333333333,4,14958,'PM2.5',3,0),(44207,2.3333333333333335,4,14958,'PM10',5,0),(44208,0.3333333333333333,4,14959,'PM1',1,0),(44209,1.4666666666666666,4,14959,'PM2.5',2,0),(44210,2.8,4,14959,'PM10',4,1),(44211,0.75,4,14960,'PM1',2,0),(44212,1.9,4,14960,'PM2.5',3,0),(44213,2.283333333333333,4,14960,'PM10',3,0),(44214,4.55,4,14961,'PM1',6,3),(44215,6.966666666666667,4,14961,'PM2.5',9,6),(44216,8.85,4,14961,'PM10',12,7),(44217,3.2333333333333334,4,14962,'PM1',4,3),(44218,5.85,4,14962,'PM2.5',7,5),(44219,7.316666666666666,4,14962,'PM10',10,5),(44220,4.75,4,14963,'PM1',7,3),(44221,7,4,14963,'PM2.5',9,5),(44222,8.733333333333333,4,14963,'PM10',11,6),(44223,6.816666666666666,4,14964,'PM1',10,4),(44224,9.4,4,14964,'PM2.5',11,7),(44225,11.433333333333334,4,14964,'PM10',15,8),(44226,5.083333333333333,4,14965,'PM1',6,4),(44227,7.733333333333333,4,14965,'PM2.5',9,7),(44228,10.116666666666667,4,14965,'PM10',13,8),(44229,2.25,4,14966,'PM1',3,1),(44230,4.2,4,14966,'PM2.5',6,3),(44231,4.2,4,14966,'PM10',6,3),(44232,2.1666666666666665,4,14967,'PM1',3,1),(44233,3.816666666666667,4,14967,'PM2.5',6,3),(44234,3.816666666666667,4,14967,'PM10',6,3),(44235,2.0166666666666666,4,14968,'PM1',3,1),(44236,3.5,4,14968,'PM2.5',4,2),(44237,3.9166666666666665,4,14968,'PM10',5,2),(44238,2.216666666666667,4,14969,'PM1',3,1),(44239,3.816666666666667,4,14969,'PM2.5',5,2),(44240,4.25,4,14969,'PM10',6,2),(44241,1.7833333333333334,4,14970,'PM1',3,1),(44242,3.2,4,14970,'PM2.5',5,2),(44243,3.6666666666666665,4,14970,'PM10',5,2),(44244,1.7333333333333334,4,14971,'PM1',3,0),(44245,2.933333333333333,4,14971,'PM2.5',4,1),(44246,2.933333333333333,4,14971,'PM10',4,1),(44247,1.55,4,14972,'PM1',2,0),(44248,2.6666666666666665,4,14972,'PM2.5',3,1),(44249,3.183333333333333,4,14972,'PM10',5,1),(44250,1.85,4,14973,'PM1',3,1),(44251,3.566666666666667,4,14973,'PM2.5',4,2),(44252,4.666666666666667,4,14973,'PM10',7,2),(44253,1.7,4,14974,'PM1',3,1),(44254,3.033333333333333,4,14974,'PM2.5',4,2),(44255,3.05,4,14974,'PM10',4,2),(44256,1.95,4,14975,'PM1',3,1),(44257,3.0833333333333335,4,14975,'PM2.5',4,2),(44258,3.933333333333333,4,14975,'PM10',7,2),(44259,2.2666666666666666,4,14976,'PM1',4,1),(44260,4.2,4,14976,'PM2.5',6,2),(44261,5.066666666666666,4,14976,'PM10',8,2),(44262,1.4666666666666666,4,14977,'PM1',2,0),(44263,2.75,4,14977,'PM2.5',4,2),(44264,2.75,4,14977,'PM10',4,2),(44265,2.05,4,14978,'PM1',3,1),(44266,3.533333333333333,4,14978,'PM2.5',5,2),(44267,4.183333333333334,4,14978,'PM10',6,2),(44268,1.55,4,14979,'PM1',3,0),(44269,2.816666666666667,4,14979,'PM2.5',4,2),(44270,2.8333333333333335,4,14979,'PM10',4,2),(44271,1.5666666666666667,4,14980,'PM1',2,0),(44272,2.933333333333333,4,14980,'PM2.5',4,2),(44273,3.9,4,14980,'PM10',6,2),(44274,2.2333333333333334,4,14981,'PM1',3,0),(44275,4.083333333333333,4,14981,'PM2.5',6,1),(44276,5.05,4,14981,'PM10',7,2),(44277,1.95,4,14982,'PM1',3,1),(44278,3.216666666666667,4,14982,'PM2.5',4,2),(44279,3.816666666666667,4,14982,'PM10',7,2),(44280,1.15,4,14983,'PM1',3,0),(44281,2.9833333333333334,4,14983,'PM2.5',5,1),(44282,5.216666666666667,4,14983,'PM10',8,2),(44283,1.0333333333333334,4,14984,'PM1',2,0),(44284,3.35,4,14984,'PM2.5',5,1),(44285,6.583333333333333,4,14984,'PM10',11,3),(44286,1.1666666666666667,4,14985,'PM1',3,0),(44287,2.966666666666667,4,14985,'PM2.5',5,1),(44288,5.566666666666666,4,14985,'PM10',10,1),(44289,1,4,14986,'PM1',2,0),(44290,2.466666666666667,4,14986,'PM2.5',4,1),(44291,4.616666666666666,4,14986,'PM10',8,2),(44292,0.8666666666666667,4,14987,'PM1',2,0),(44293,3.3333333333333335,4,14987,'PM2.5',5,1),(44294,5.466666666666667,4,14987,'PM10',9,2),(44295,0.6666666666666666,4,14988,'PM1',2,0),(44296,2.4833333333333334,4,14988,'PM2.5',4,1),(44297,4.066666666666666,4,14988,'PM10',8,2),(44298,0.8333333333333334,4,14989,'PM1',2,0),(44299,2.85,4,14989,'PM2.5',4,1),(44300,4.866666666666666,4,14989,'PM10',10,2),(44301,0.65,4,14990,'PM1',2,0),(44302,2.1666666666666665,4,14990,'PM2.5',3,1),(44303,5.066666666666666,4,14990,'PM10',10,2),(44304,1.15,4,14991,'PM1',2,0),(44305,2.7,4,14991,'PM2.5',4,1),(44306,4.816666666666666,4,14991,'PM10',7,1),(44307,0.6166666666666667,4,14992,'PM1',1,0),(44308,2.566666666666667,4,14992,'PM2.5',4,1),(44309,5.233333333333333,4,14992,'PM10',8,3),(44310,21.283333333333335,4,14993,'PM1',22,20),(44311,26.533333333333335,4,14993,'PM2.5',29,25),(44312,42.43333333333333,4,14993,'PM10',48,36),(44313,0,4,14994,'PM1',0,0),(44314,0.6166666666666667,4,14994,'PM2.5',2,0),(44315,0.6166666666666667,4,14994,'PM10',2,0),(44316,0,4,14995,'PM1',0,0),(44317,0.8,4,14995,'PM2.5',1,0),(44318,2.75,4,14995,'PM10',6,0),(44319,0,4,14996,'PM1',0,0),(44320,0.43333333333333335,4,14996,'PM2.5',1,0),(44321,0.8833333333333333,4,14996,'PM10',4,0),(44322,0,4,14997,'PM1',0,0),(44323,0.43333333333333335,4,14997,'PM2.5',2,0),(44324,1.2666666666666666,4,14997,'PM10',2,0),(44325,0,4,14998,'PM1',0,0),(44326,0.6,4,14998,'PM2.5',2,0),(44327,0.7833333333333333,4,14998,'PM10',2,0),(44328,0,4,14999,'PM1',0,0),(44329,0.5166666666666667,4,14999,'PM2.5',1,0),(44330,0.95,4,14999,'PM10',3,0),(44331,0,4,15000,'PM1',0,0),(44332,0.7,4,15000,'PM2.5',2,0),(44333,0.7333333333333333,4,15000,'PM10',2,0),(44334,0,4,15001,'PM1',0,0),(44335,0.6333333333333333,4,15001,'PM2.5',1,0),(44336,0.6333333333333333,4,15001,'PM10',1,0),(44337,7,4,15002,'PM1',NULL,NULL),(44338,10,4,15002,'PM2.5',NULL,NULL),(44339,13,4,15002,'PM10',NULL,NULL),(44340,5,4,15003,'PM1',NULL,NULL),(44341,8,4,15003,'PM2.5',NULL,NULL),(44342,10,4,15003,'PM10',NULL,NULL),(44343,4,4,15004,'PM1',NULL,NULL),(44344,7,4,15004,'PM2.5',NULL,NULL),(44345,8,4,15004,'PM10',NULL,NULL),(44346,4,4,15005,'PM1',NULL,NULL),(44347,7,4,15005,'PM2.5',NULL,NULL),(44348,9,4,15005,'PM10',NULL,NULL),(44349,4,4,15006,'PM1',NULL,NULL),(44350,6,4,15006,'PM2.5',NULL,NULL),(44351,7,4,15006,'PM10',NULL,NULL),(44352,4,4,15007,'PM1',NULL,NULL),(44353,6,4,15007,'PM2.5',NULL,NULL),(44354,9,4,15007,'PM10',NULL,NULL),(44355,5,4,15008,'PM1',NULL,NULL),(44356,7,4,15008,'PM2.5',NULL,NULL),(44357,8,4,15008,'PM10',NULL,NULL),(44358,6,4,15009,'PM1',NULL,NULL),(44359,8,4,15009,'PM2.5',NULL,NULL),(44360,11,4,15009,'PM10',NULL,NULL),(44361,5,4,15010,'PM1',NULL,NULL),(44362,7,4,15010,'PM2.5',NULL,NULL),(44363,8,4,15010,'PM10',NULL,NULL),(44364,4,4,15011,'PM1',NULL,NULL),(44365,7,4,15011,'PM2.5',NULL,NULL),(44366,9,4,15011,'PM10',NULL,NULL),(44367,4,4,15012,'PM1',NULL,NULL),(44368,6,4,15012,'PM2.5',NULL,NULL),(44369,7,4,15012,'PM10',NULL,NULL),(44370,3,4,15013,'PM1',NULL,NULL),(44371,5,4,15013,'PM2.5',NULL,NULL),(44372,6,4,15013,'PM10',NULL,NULL),(44373,4,4,15014,'PM1',NULL,NULL),(44374,6,4,15014,'PM2.5',NULL,NULL),(44375,7,4,15014,'PM10',NULL,NULL),(44376,3,4,15015,'PM1',NULL,NULL),(44377,6,4,15015,'PM2.5',NULL,NULL),(44378,8,4,15015,'PM10',NULL,NULL),(44379,2,4,15016,'PM1',NULL,NULL),(44380,5,4,15016,'PM2.5',NULL,NULL),(44381,8,4,15016,'PM10',NULL,NULL),(44382,3,4,15017,'PM1',NULL,NULL),(44383,5,4,15017,'PM2.5',NULL,NULL),(44384,7,4,15017,'PM10',NULL,NULL),(44385,2,4,15018,'PM1',NULL,NULL),(44386,4,4,15018,'PM2.5',NULL,NULL),(44387,4,4,15018,'PM10',NULL,NULL),(44388,3,4,15019,'PM1',NULL,NULL),(44389,4,4,15019,'PM2.5',NULL,NULL),(44390,5,4,15019,'PM10',NULL,NULL),(44391,3,4,15020,'PM1',NULL,NULL),(44392,5,4,15020,'PM2.5',NULL,NULL),(44393,6,4,15020,'PM10',NULL,NULL),(44394,2,4,15021,'PM1',NULL,NULL),(44395,4,4,15021,'PM2.5',NULL,NULL),(44396,4,4,15021,'PM10',NULL,NULL),(44397,2,4,15022,'PM1',NULL,NULL),(44398,3,4,15022,'PM2.5',NULL,NULL),(44399,4,4,15022,'PM10',NULL,NULL),(44400,3,4,15023,'PM1',NULL,NULL),(44401,4,4,15023,'PM2.5',NULL,NULL),(44402,5,4,15023,'PM10',NULL,NULL),(44403,3,4,15024,'PM1',NULL,NULL),(44404,6,4,15024,'PM2.5',NULL,NULL),(44405,6,4,15024,'PM10',NULL,NULL),(44406,3,4,15025,'PM1',NULL,NULL),(44407,5,4,15025,'PM2.5',NULL,NULL),(44408,6,4,15025,'PM10',NULL,NULL),(44409,4,4,15026,'PM1',NULL,NULL),(44410,6,4,15026,'PM2.5',NULL,NULL),(44411,7,4,15026,'PM10',NULL,NULL),(44412,3,4,15027,'PM1',NULL,NULL),(44413,5,4,15027,'PM2.5',NULL,NULL),(44414,7,4,15027,'PM10',NULL,NULL),(44415,4,4,15028,'PM1',NULL,NULL),(44416,6,4,15028,'PM2.5',NULL,NULL),(44417,7,4,15028,'PM10',NULL,NULL),(44418,4,4,15029,'PM1',NULL,NULL),(44419,6,4,15029,'PM2.5',NULL,NULL),(44420,7,4,15029,'PM10',NULL,NULL),(44421,5,4,15030,'PM1',NULL,NULL),(44422,6,4,15030,'PM2.5',NULL,NULL),(44423,9,4,15030,'PM10',NULL,NULL),(44424,3,4,15031,'PM1',NULL,NULL),(44425,6,4,15031,'PM2.5',NULL,NULL),(44426,8,4,15031,'PM10',NULL,NULL),(44427,3,4,15032,'PM1',NULL,NULL),(44428,6,4,15032,'PM2.5',NULL,NULL),(44429,10,4,15032,'PM10',NULL,NULL),(44430,4,4,15033,'PM1',NULL,NULL),(44431,7,4,15033,'PM2.5',NULL,NULL),(44432,9,4,15033,'PM10',NULL,NULL),(44433,4,4,15034,'PM1',NULL,NULL),(44434,6,4,15034,'PM2.5',NULL,NULL),(44435,8,4,15034,'PM10',NULL,NULL),(44436,3,4,15035,'PM1',NULL,NULL),(44437,4,4,15035,'PM2.5',NULL,NULL),(44438,4,4,15035,'PM10',NULL,NULL),(44439,2,4,15036,'PM1',NULL,NULL),(44440,4,4,15036,'PM2.5',NULL,NULL),(44441,4,4,15036,'PM10',NULL,NULL),(44442,2,4,15037,'PM1',NULL,NULL),(44443,4,4,15037,'PM2.5',NULL,NULL),(44444,5,4,15037,'PM10',NULL,NULL),(44445,2,4,15038,'PM1',NULL,NULL),(44446,3,4,15038,'PM2.5',NULL,NULL),(44447,3,4,15038,'PM10',NULL,NULL),(44448,2,4,15039,'PM1',NULL,NULL),(44449,3,4,15039,'PM2.5',NULL,NULL),(44450,3,4,15039,'PM10',NULL,NULL),(44451,2,4,15040,'PM1',NULL,NULL),(44452,3,4,15040,'PM2.5',NULL,NULL),(44453,3,4,15040,'PM10',NULL,NULL),(44454,1,4,15041,'PM1',NULL,NULL),(44455,3,4,15041,'PM2.5',NULL,NULL),(44456,4,4,15041,'PM10',NULL,NULL),(44457,1,4,15042,'PM1',NULL,NULL),(44458,3,4,15042,'PM2.5',NULL,NULL),(44459,5,4,15042,'PM10',NULL,NULL),(44460,0,4,15043,'PM1',NULL,NULL),(44461,1,4,15043,'PM2.5',NULL,NULL),(44462,1,4,15043,'PM10',NULL,NULL),(44463,1,4,15044,'PM1',NULL,NULL),(44464,2,4,15044,'PM2.5',NULL,NULL),(44465,3,4,15044,'PM10',NULL,NULL),(44466,1,4,15045,'PM1',NULL,NULL),(44467,2,4,15045,'PM2.5',NULL,NULL),(44468,2,4,15045,'PM10',NULL,NULL),(44469,0,4,15046,'PM1',NULL,NULL),(44470,1,4,15046,'PM2.5',NULL,NULL),(44471,1,4,15046,'PM10',NULL,NULL),(44472,2,4,15047,'PM1',NULL,NULL),(44473,3,4,15047,'PM2.5',NULL,NULL),(44474,5,4,15047,'PM10',NULL,NULL),(44475,1,4,15048,'PM1',NULL,NULL),(44476,2,4,15048,'PM2.5',NULL,NULL),(44477,3,4,15048,'PM10',NULL,NULL),(44478,0,4,15049,'PM1',NULL,NULL),(44479,2,4,15049,'PM2.5',NULL,NULL),(44480,2,4,15049,'PM10',NULL,NULL),(44481,1,4,15050,'PM1',NULL,NULL),(44482,2,4,15050,'PM2.5',NULL,NULL),(44483,2,4,15050,'PM10',NULL,NULL),(44484,0,4,15051,'PM1',NULL,NULL),(44485,0,4,15051,'PM2.5',NULL,NULL),(44486,0,4,15051,'PM10',NULL,NULL),(44487,0,4,15052,'PM1',NULL,NULL),(44488,1,4,15052,'PM2.5',NULL,NULL),(44489,1,4,15052,'PM10',NULL,NULL),(44490,0,4,15053,'PM1',NULL,NULL),(44491,2,4,15053,'PM2.5',NULL,NULL),(44492,2,4,15053,'PM10',NULL,NULL),(44493,10,4,15054,'PM1',NULL,NULL),(44494,14,4,15054,'PM2.5',NULL,NULL),(44495,18,4,15054,'PM10',NULL,NULL),(44496,10,4,15055,'PM1',NULL,NULL),(44497,14,4,15055,'PM2.5',NULL,NULL),(44498,20,4,15055,'PM10',NULL,NULL),(44499,0,4,15056,'PM1',NULL,NULL),(44500,0,4,15056,'PM2.5',NULL,NULL),(44501,0,4,15056,'PM10',NULL,NULL),(44502,0,4,15057,'PM1',NULL,NULL),(44503,0,4,15057,'PM2.5',NULL,NULL),(44504,0,4,15057,'PM10',NULL,NULL),(44505,0,4,15058,'PM1',NULL,NULL),(44506,0,4,15058,'PM2.5',NULL,NULL),(44507,0,4,15058,'PM10',NULL,NULL),(44508,0,4,15059,'PM1',NULL,NULL),(44509,0,4,15059,'PM2.5',NULL,NULL),(44510,0,4,15059,'PM10',NULL,NULL),(44511,0,4,15060,'PM1',NULL,NULL),(44512,0,4,15060,'PM2.5',NULL,NULL),(44513,0,4,15060,'PM10',NULL,NULL),(44514,0,4,15061,'PM1',NULL,NULL),(44515,0,4,15061,'PM2.5',NULL,NULL),(44516,0,4,15061,'PM10',NULL,NULL),(44517,0,4,15062,'PM1',NULL,NULL),(44518,0,4,15062,'PM2.5',NULL,NULL),(44519,0,4,15062,'PM10',NULL,NULL),(44520,0,4,15063,'PM1',NULL,NULL),(44521,0,4,15063,'PM2.5',NULL,NULL),(44522,0,4,15063,'PM10',NULL,NULL),(44523,0,4,15064,'PM1',NULL,NULL),(44524,0,4,15064,'PM2.5',NULL,NULL),(44525,0,4,15064,'PM10',NULL,NULL),(44526,0,4,15065,'PM1',NULL,NULL),(44527,0,4,15065,'PM2.5',NULL,NULL),(44528,1,4,15065,'PM10',NULL,NULL),(44529,3,4,15066,'PM1',NULL,NULL),(44530,5,4,15066,'PM2.5',NULL,NULL),(44531,6,4,15066,'PM10',NULL,NULL),(44532,3,4,15067,'PM1',NULL,NULL),(44533,6,4,15067,'PM2.5',NULL,NULL),(44534,7,4,15067,'PM10',NULL,NULL),(44535,2,4,15068,'PM1',NULL,NULL),(44536,4,4,15068,'PM2.5',NULL,NULL),(44537,6,4,15068,'PM10',NULL,NULL),(44538,2,4,15069,'PM1',NULL,NULL),(44539,5,4,15069,'PM2.5',NULL,NULL),(44540,5,4,15069,'PM10',NULL,NULL),(44541,3,4,15070,'PM1',NULL,NULL),(44542,5,4,15070,'PM2.5',NULL,NULL),(44543,7,4,15070,'PM10',NULL,NULL),(44544,0.55,4,15071,'PM1',1,0),(44545,1.8166666666666667,4,15071,'PM2.5',3,0),(44546,2.3666666666666667,4,15071,'PM10',4,0),(44547,0.5833333333333334,4,15072,'PM1',2,0),(44548,1.5333333333333334,4,15072,'PM2.5',3,0),(44549,2.15,4,15072,'PM10',5,1),(44550,0.16666666666666666,4,15073,'PM1',1,0),(44551,1.1666666666666667,4,15073,'PM2.5',2,0),(44552,2.05,4,15073,'PM10',4,1),(44553,0.4166666666666667,4,15074,'PM1',1,0),(44554,1.6833333333333333,4,15074,'PM2.5',3,0),(44555,2.3333333333333335,4,15074,'PM10',5,0),(44556,0.3333333333333333,4,15075,'PM1',1,0),(44557,1.4666666666666666,4,15075,'PM2.5',2,0),(44558,2.8,4,15075,'PM10',4,1),(44559,0.75,4,15076,'PM1',2,0),(44560,1.9,4,15076,'PM2.5',3,0),(44561,2.283333333333333,4,15076,'PM10',3,0),(44562,4.55,4,15077,'PM1',6,3),(44563,6.966666666666667,4,15077,'PM2.5',9,6),(44564,8.85,4,15077,'PM10',12,7),(44565,3.2333333333333334,4,15078,'PM1',4,3),(44566,5.85,4,15078,'PM2.5',7,5),(44567,7.316666666666666,4,15078,'PM10',10,5),(44568,4.75,4,15079,'PM1',7,3),(44569,7,4,15079,'PM2.5',9,5),(44570,8.733333333333333,4,15079,'PM10',11,6),(44571,6.816666666666666,4,15080,'PM1',10,4),(44572,9.4,4,15080,'PM2.5',11,7),(44573,11.433333333333334,4,15080,'PM10',15,8),(44574,5.083333333333333,4,15081,'PM1',6,4),(44575,7.733333333333333,4,15081,'PM2.5',9,7),(44576,10.116666666666667,4,15081,'PM10',13,8),(44577,2.25,4,15082,'PM1',3,1),(44578,4.2,4,15082,'PM2.5',6,3),(44579,4.2,4,15082,'PM10',6,3),(44580,2.1666666666666665,4,15083,'PM1',3,1),(44581,3.816666666666667,4,15083,'PM2.5',6,3),(44582,3.816666666666667,4,15083,'PM10',6,3),(44583,2.0166666666666666,4,15084,'PM1',3,1),(44584,3.5,4,15084,'PM2.5',4,2),(44585,3.9166666666666665,4,15084,'PM10',5,2),(44586,2.216666666666667,4,15085,'PM1',3,1),(44587,3.816666666666667,4,15085,'PM2.5',5,2),(44588,4.25,4,15085,'PM10',6,2),(44589,1.7833333333333334,4,15086,'PM1',3,1),(44590,3.2,4,15086,'PM2.5',5,2),(44591,3.6666666666666665,4,15086,'PM10',5,2),(44592,1.7333333333333334,4,15087,'PM1',3,0),(44593,2.933333333333333,4,15087,'PM2.5',4,1),(44594,2.933333333333333,4,15087,'PM10',4,1),(44595,1.55,4,15088,'PM1',2,0),(44596,2.6666666666666665,4,15088,'PM2.5',3,1),(44597,3.183333333333333,4,15088,'PM10',5,1),(44598,1.85,4,15089,'PM1',3,1),(44599,3.566666666666667,4,15089,'PM2.5',4,2),(44600,4.666666666666667,4,15089,'PM10',7,2),(44601,1.7,4,15090,'PM1',3,1),(44602,3.033333333333333,4,15090,'PM2.5',4,2),(44603,3.05,4,15090,'PM10',4,2),(44604,1.95,4,15091,'PM1',3,1),(44605,3.0833333333333335,4,15091,'PM2.5',4,2),(44606,3.933333333333333,4,15091,'PM10',7,2),(44607,2.2666666666666666,4,15092,'PM1',4,1),(44608,4.2,4,15092,'PM2.5',6,2),(44609,5.066666666666666,4,15092,'PM10',8,2),(44610,1.4666666666666666,4,15093,'PM1',2,0),(44611,2.75,4,15093,'PM2.5',4,2),(44612,2.75,4,15093,'PM10',4,2),(44613,2.05,4,15094,'PM1',3,1),(44614,3.533333333333333,4,15094,'PM2.5',5,2),(44615,4.183333333333334,4,15094,'PM10',6,2),(44616,1.55,4,15095,'PM1',3,0),(44617,2.816666666666667,4,15095,'PM2.5',4,2),(44618,2.8333333333333335,4,15095,'PM10',4,2),(44619,1.5666666666666667,4,15096,'PM1',2,0),(44620,2.933333333333333,4,15096,'PM2.5',4,2),(44621,3.9,4,15096,'PM10',6,2),(44622,2.2333333333333334,4,15097,'PM1',3,0),(44623,4.083333333333333,4,15097,'PM2.5',6,1),(44624,5.05,4,15097,'PM10',7,2),(44625,1.95,4,15098,'PM1',3,1),(44626,3.216666666666667,4,15098,'PM2.5',4,2),(44627,3.816666666666667,4,15098,'PM10',7,2),(44628,1.15,4,15099,'PM1',3,0),(44629,2.9833333333333334,4,15099,'PM2.5',5,1),(44630,5.216666666666667,4,15099,'PM10',8,2),(44631,1.0333333333333334,4,15100,'PM1',2,0),(44632,3.35,4,15100,'PM2.5',5,1),(44633,6.583333333333333,4,15100,'PM10',11,3),(44634,1.1666666666666667,4,15101,'PM1',3,0),(44635,2.966666666666667,4,15101,'PM2.5',5,1),(44636,5.566666666666666,4,15101,'PM10',10,1),(44637,1,4,15102,'PM1',2,0),(44638,2.466666666666667,4,15102,'PM2.5',4,1),(44639,4.616666666666666,4,15102,'PM10',8,2),(44640,0.8666666666666667,4,15103,'PM1',2,0),(44641,3.3333333333333335,4,15103,'PM2.5',5,1),(44642,5.466666666666667,4,15103,'PM10',9,2),(44643,0.6666666666666666,4,15104,'PM1',2,0),(44644,2.4833333333333334,4,15104,'PM2.5',4,1),(44645,4.066666666666666,4,15104,'PM10',8,2),(44646,0.8333333333333334,4,15105,'PM1',2,0),(44647,2.85,4,15105,'PM2.5',4,1),(44648,4.866666666666666,4,15105,'PM10',10,2),(44649,0.65,4,15106,'PM1',2,0),(44650,2.1666666666666665,4,15106,'PM2.5',3,1),(44651,5.066666666666666,4,15106,'PM10',10,2),(44652,1.15,4,15107,'PM1',2,0),(44653,2.7,4,15107,'PM2.5',4,1),(44654,4.816666666666666,4,15107,'PM10',7,1),(44655,0.6166666666666667,4,15108,'PM1',1,0),(44656,2.566666666666667,4,15108,'PM2.5',4,1),(44657,5.233333333333333,4,15108,'PM10',8,3),(44658,21.283333333333335,4,15109,'PM1',22,20),(44659,26.533333333333335,4,15109,'PM2.5',29,25),(44660,42.43333333333333,4,15109,'PM10',48,36),(44661,0,4,15110,'PM1',0,0),(44662,0.6166666666666667,4,15110,'PM2.5',2,0),(44663,0.6166666666666667,4,15110,'PM10',2,0),(44664,0,4,15111,'PM1',0,0),(44665,0.8,4,15111,'PM2.5',1,0),(44666,2.75,4,15111,'PM10',6,0),(44667,0,4,15112,'PM1',0,0),(44668,0.43333333333333335,4,15112,'PM2.5',1,0),(44669,0.8833333333333333,4,15112,'PM10',4,0),(44670,0,4,15113,'PM1',0,0),(44671,0.43333333333333335,4,15113,'PM2.5',2,0),(44672,1.2666666666666666,4,15113,'PM10',2,0),(44673,0,4,15114,'PM1',0,0),(44674,0.6,4,15114,'PM2.5',2,0),(44675,0.7833333333333333,4,15114,'PM10',2,0),(44676,0,4,15115,'PM1',0,0),(44677,0.5166666666666667,4,15115,'PM2.5',1,0),(44678,0.95,4,15115,'PM10',3,0),(44679,0,4,15116,'PM1',0,0),(44680,0.7,4,15116,'PM2.5',2,0),(44681,0.7333333333333333,4,15116,'PM10',2,0),(44682,0,4,15117,'PM1',0,0),(44683,0.6333333333333333,4,15117,'PM2.5',1,0),(44684,0.6333333333333333,4,15117,'PM10',1,0),(44685,25.5802,4,15118,'PM1',49,13),(44686,3.202,4,15118,'PM2.5',20,14),(44687,6.7389,4,15118,'PM10',24,20),(44688,34.9512,4,15119,'PM1',18,15),(44689,38.1376,4,15119,'PM2.5',40,16),(44690,59.0363,4,15119,'PM10',37,30),(44691,1.6524,4,15120,'PM1',53,15),(44692,42.4428,4,15120,'PM2.5',35,14),(44693,22.0552,4,15120,'PM10',51,24),(44694,35.197,4,15121,'PM1',60,8),(44695,41.4565,4,15121,'PM2.5',16,11),(44696,6.0845,4,15121,'PM10',26,17),(44697,31.7031,4,15122,'PM1',51,14),(44698,23.8676,4,15122,'PM2.5',57,12),(44699,29.6991,4,15122,'PM10',60,30),(44700,6.6175,4,15123,'PM1',41,19),(44701,6.3042,4,15123,'PM2.5',56,5),(44702,15.2135,4,15123,'PM10',20,28),(44703,51.4842,4,15124,'PM1',36,20),(44704,47.1355,4,15124,'PM2.5',40,17),(44705,14.6918,4,15124,'PM10',62,29),(44706,46.2026,4,15125,'PM1',41,17),(44707,56.3722,4,15125,'PM2.5',59,17),(44708,13.095,4,15125,'PM10',46,30),(44709,51.3301,4,15126,'PM1',14,16),(44710,50.4317,4,15126,'PM2.5',17,6),(44711,20.7445,4,15126,'PM10',69,20),(44712,10.7914,4,15127,'PM1',30,8),(44713,26.8055,4,15127,'PM2.5',55,7),(44714,15.3743,4,15127,'PM10',50,30),(44715,23.9837,4,15128,'PM1',30,11),(44716,61.2989,4,15128,'PM2.5',46,9),(44717,38.0244,4,15128,'PM10',41,26),(44718,47.4991,4,15129,'PM1',58,9),(44719,16.4656,4,15129,'PM2.5',45,5),(44720,48.8879,4,15129,'PM10',52,27),(44721,43.2207,4,15130,'PM1',57,15),(44722,51.5623,4,15130,'PM2.5',38,7),(44723,41.7269,4,15130,'PM10',70,14),(44724,45.4041,4,15131,'PM1',25,14),(44725,4.7277,4,15131,'PM2.5',15,9),(44726,13.2278,4,15131,'PM10',45,27),(44727,20.4468,4,15132,'PM1',32,16),(44728,35.6702,4,15132,'PM2.5',38,11),(44729,18.2883,4,15132,'PM10',64,26),(44730,5.6272,4,15133,'PM1',48,20),(44731,3.1686,4,15133,'PM2.5',47,11),(44732,6.9079,4,15133,'PM10',28,12),(44733,21.7602,4,15134,'PM1',51,10),(44734,43.435,4,15134,'PM2.5',44,9),(44735,48.5828,4,15134,'PM10',63,19),(44736,10.7508,4,15135,'PM1',25,16),(44737,51.9073,4,15135,'PM2.5',17,20),(44738,55.8852,4,15135,'PM10',60,27),(44739,24.2798,4,15136,'PM1',27,9),(44740,47.86,4,15136,'PM2.5',11,6),(44741,12.5848,4,15136,'PM10',37,15),(44742,53.9192,4,15137,'PM1',23,11),(44743,24.2237,4,15137,'PM2.5',37,20),(44744,38.981,4,15137,'PM10',20,26),(44745,34.9826,4,15138,'PM1',58,17),(44746,13.9859,4,15138,'PM2.5',44,7),(44747,28.1251,4,15138,'PM10',67,13),(44748,14.7077,4,15139,'PM1',32,13),(44749,63.6937,4,15139,'PM2.5',58,13),(44750,44.7942,4,15139,'PM10',69,16),(44751,29.2244,4,15140,'PM1',30,9),(44752,29.0713,4,15140,'PM2.5',22,8),(44753,47.8933,4,15140,'PM10',49,17),(44754,15.3296,4,15141,'PM1',15,13),(44755,10.2505,4,15141,'PM2.5',30,7),(44756,40.0627,4,15141,'PM10',49,20),(44757,29.4941,4,15142,'PM1',19,7),(44758,29.2103,4,15142,'PM2.5',56,14),(44759,33.3802,4,15142,'PM10',68,11),(44760,44.2707,4,15143,'PM1',55,20),(44761,20.7304,4,15143,'PM2.5',56,13),(44762,45.9306,4,15143,'PM10',35,23),(44763,33.6048,4,15144,'PM1',11,16),(44764,33.2569,4,15144,'PM2.5',27,17),(44765,55.4792,4,15144,'PM10',69,19),(44766,4.364,4,15145,'PM1',49,9),(44767,13.0456,4,15145,'PM2.5',14,9),(44768,6.817,4,15145,'PM10',60,11),(44769,10.3999,4,15146,'PM1',47,6),(44770,16.8214,4,15146,'PM2.5',18,20),(44771,12.5361,4,15146,'PM10',30,28),(44772,59.1551,4,15147,'PM1',41,8),(44773,3.9175,4,15147,'PM2.5',49,17),(44774,51.2836,4,15147,'PM10',32,22),(44775,37.9945,4,15148,'PM1',55,18),(44776,43.2862,4,15148,'PM2.5',18,11),(44777,9.3591,4,15148,'PM10',30,19),(44778,49.9724,4,15149,'PM1',10,18),(44779,40.3637,4,15149,'PM2.5',52,11),(44780,17.3043,4,15149,'PM10',28,11),(44781,3.4187,4,15150,'PM1',27,18),(44782,30.3859,4,15150,'PM2.5',54,16),(44783,52.729,4,15150,'PM10',42,17),(44784,29.1174,4,15151,'PM1',22,9),(44785,61.5823,4,15151,'PM2.5',43,13),(44786,61.5712,4,15151,'PM10',69,13),(44787,58.3063,4,15152,'PM1',44,15),(44788,62.189,4,15152,'PM2.5',24,15),(44789,6.3954,4,15152,'PM10',21,22),(44790,7.0076,4,15153,'PM1',56,19),(44791,1.2904,4,15153,'PM2.5',35,20),(44792,16.6193,4,15153,'PM10',63,28),(44793,54.7125,4,15154,'PM1',55,15),(44794,35.9867,4,15154,'PM2.5',13,11),(44795,33.6635,4,15154,'PM10',50,10),(44796,33.0204,4,15155,'PM1',26,10),(44797,6.7812,4,15155,'PM2.5',19,8),(44798,41.393,4,15155,'PM10',33,18),(44799,22.1244,4,15156,'PM1',53,10),(44800,27.997,4,15156,'PM2.5',20,6),(44801,63.3774,4,15156,'PM10',68,24),(44802,43.9258,4,15157,'PM1',19,20),(44803,15.6967,4,15157,'PM2.5',46,18),(44804,28.1395,4,15157,'PM10',34,19),(44805,10.1789,4,15158,'PM1',25,6),(44806,21.4812,4,15158,'PM2.5',47,10),(44807,59.1934,4,15158,'PM10',25,15),(44808,57.6534,4,15159,'PM1',46,9),(44809,39.9356,4,15159,'PM2.5',52,10),(44810,31.3552,4,15159,'PM10',36,16),(44811,33.2036,4,15160,'PM1',24,9),(44812,56.4302,4,15160,'PM2.5',14,14),(44813,32.5764,4,15160,'PM10',45,26),(44814,31.3956,4,15161,'PM1',47,11),(44815,16.3354,4,15161,'PM2.5',19,9),(44816,57.5102,4,15161,'PM10',40,20),(44817,64.3257,4,15162,'PM1',43,12),(44818,21.0953,4,15162,'PM2.5',40,7),(44819,52.8294,4,15162,'PM10',30,20),(44820,64.8575,4,15163,'PM1',34,12),(44821,2.8259,4,15163,'PM2.5',19,19),(44822,7.2537,4,15163,'PM10',55,23),(44823,9.2405,4,15164,'PM1',37,17),(44824,34.8799,4,15164,'PM2.5',25,13),(44825,14.348,4,15164,'PM10',21,16),(44826,19.9527,4,15165,'PM1',45,11),(44827,17.1615,4,15165,'PM2.5',16,8),(44828,55.5943,4,15165,'PM10',44,11),(44829,54.5097,4,15166,'PM1',32,5),(44830,23.6007,4,15166,'PM2.5',14,19),(44831,13.9182,4,15166,'PM10',25,26),(44832,22.6948,4,15167,'PM1',28,15),(44833,58.4244,4,15167,'PM2.5',28,7),(44834,25.8901,4,15167,'PM10',23,23),(44835,13.1403,4,15168,'PM1',56,15),(44836,26.183,4,15168,'PM2.5',36,15),(44837,21.7882,4,15168,'PM10',60,11),(44838,60.3018,4,15169,'PM1',29,6),(44839,12.0695,4,15169,'PM2.5',42,6),(44840,8.9671,4,15169,'PM10',32,14),(44841,5.4785,4,15170,'PM1',34,12),(44842,57.5395,4,15170,'PM2.5',51,6),(44843,23.3939,4,15170,'PM10',45,22),(44844,15.5413,4,15171,'PM1',28,8),(44845,13.3737,4,15171,'PM2.5',38,18),(44846,7.6671,4,15171,'PM10',36,16),(44847,26.0168,4,15172,'PM1',31,6),(44848,28.7872,4,15172,'PM2.5',50,16),(44849,62.1088,4,15172,'PM10',61,12);
/*!40000 ALTER TABLE `misurazione_pm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misurazione_rete_cellulare`
--

DROP TABLE IF EXISTS `misurazione_rete_cellulare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misurazione_rete_cellulare` (
  `idmisurazione_rete_cellulare` int(11) NOT NULL AUTO_INCREMENT,
  `valore` float NOT NULL,
  `stato_rete_dati` varchar(45) NOT NULL,
  `unita_misura_idunita_misura` int(11) NOT NULL,
  `gestore_idgestore` int(11) NOT NULL,
  `report_idreport` int(11) NOT NULL,
  PRIMARY KEY (`idmisurazione_rete_cellulare`,`report_idreport`),
  KEY `fk_misurazione_rete_cellulare_gestore1_idx` (`gestore_idgestore`),
  KEY `fk_misurazione_rete_cellulare_report1_idx` (`report_idreport`),
  KEY `fk_misurazione_rete_cellulare_unita_misura1_idx` (`unita_misura_idunita_misura`),
  CONSTRAINT `fk_misurazione_rete_cellulare_gestore1` FOREIGN KEY (`gestore_idgestore`) REFERENCES `gestore` (`idgestore`),
  CONSTRAINT `fk_misurazione_rete_cellulare_report1` FOREIGN KEY (`report_idreport`) REFERENCES `report` (`idreport`),
  CONSTRAINT `fk_misurazione_rete_cellulare_unita_misura1` FOREIGN KEY (`unita_misura_idunita_misura`) REFERENCES `unita_misura` (`idunita_misura`)
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misurazione_rete_cellulare`
--

LOCK TABLES `misurazione_rete_cellulare` WRITE;
/*!40000 ALTER TABLE `misurazione_rete_cellulare` DISABLE KEYS */;
/*!40000 ALTER TABLE `misurazione_rete_cellulare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misurazione_rete_cellulare_has_rete`
--

DROP TABLE IF EXISTS `misurazione_rete_cellulare_has_rete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misurazione_rete_cellulare_has_rete` (
  `misurazione_rete_cellulare_idmisurazione_rete_cellulare` int(11) NOT NULL,
  `rete_idrete` int(11) NOT NULL,
  `tipo_rete_idtipo_rete` int(11) NOT NULL,
  PRIMARY KEY (`misurazione_rete_cellulare_idmisurazione_rete_cellulare`,`rete_idrete`,`tipo_rete_idtipo_rete`),
  KEY `fk_misurazione_rete_cellulare_has_rete_rete1_idx` (`rete_idrete`),
  KEY `fk_misurazione_rete_cellulare_has_rete_misurazione_rete_cel_idx` (`misurazione_rete_cellulare_idmisurazione_rete_cellulare`),
  KEY `fk_misurazione_rete_cellulare_has_rete_tipo_rete1_idx` (`tipo_rete_idtipo_rete`),
  CONSTRAINT `fk_misurazione_rete_cellulare_has_rete_misurazione_rete_cellu1` FOREIGN KEY (`misurazione_rete_cellulare_idmisurazione_rete_cellulare`) REFERENCES `misurazione_rete_cellulare` (`idmisurazione_rete_cellulare`),
  CONSTRAINT `fk_misurazione_rete_cellulare_has_rete_rete1` FOREIGN KEY (`rete_idrete`) REFERENCES `rete` (`idrete`),
  CONSTRAINT `fk_misurazione_rete_cellulare_has_rete_tipo_rete1` FOREIGN KEY (`tipo_rete_idtipo_rete`) REFERENCES `tipo_rete` (`idtipo_rete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misurazione_rete_cellulare_has_rete`
--

LOCK TABLES `misurazione_rete_cellulare_has_rete` WRITE;
/*!40000 ALTER TABLE `misurazione_rete_cellulare_has_rete` DISABLE KEYS */;
/*!40000 ALTER TABLE `misurazione_rete_cellulare_has_rete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misurazione_temperatura`
--

DROP TABLE IF EXISTS `misurazione_temperatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misurazione_temperatura` (
  `idmisurazione_temperatura` int(11) NOT NULL AUTO_INCREMENT,
  `valore` double NOT NULL,
  `unita_misura_idunita_misura` int(11) NOT NULL,
  `report_idreport` int(11) NOT NULL,
  `valore_max` int(11) DEFAULT NULL,
  `valore_min` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmisurazione_temperatura`,`report_idreport`)
) ENGINE=InnoDB AUTO_INCREMENT=14472 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misurazione_temperatura`
--

LOCK TABLES `misurazione_temperatura` WRITE;
/*!40000 ALTER TABLE `misurazione_temperatura` DISABLE KEYS */;
INSERT INTO `misurazione_temperatura` VALUES (14003,80,5,14704,NULL,NULL),(14004,84,5,14705,NULL,NULL),(14005,80,5,14706,NULL,NULL),(14006,84,5,14707,NULL,NULL),(14007,84,5,14708,NULL,NULL),(14008,85,5,14709,NULL,NULL),(14009,85,5,14710,NULL,NULL),(14010,86,5,14711,NULL,NULL),(14011,86,5,14712,NULL,NULL),(14012,87,5,14713,NULL,NULL),(14013,87,5,14714,NULL,NULL),(14014,87,5,14715,NULL,NULL),(14015,87,5,14716,NULL,NULL),(14016,88,5,14717,NULL,NULL),(14017,88,5,14718,NULL,NULL),(14018,88,5,14719,NULL,NULL),(14019,88,5,14720,NULL,NULL),(14020,88,5,14721,NULL,NULL),(14021,91,5,14722,NULL,NULL),(14022,92,5,14723,NULL,NULL),(14023,72,5,14724,NULL,NULL),(14024,73,5,14725,NULL,NULL),(14025,75,5,14726,NULL,NULL),(14026,72,5,14727,NULL,NULL),(14027,73,5,14728,NULL,NULL),(14028,75,5,14729,NULL,NULL),(14029,72,5,14730,NULL,NULL),(14030,73,5,14731,NULL,NULL),(14031,75,5,14732,NULL,NULL),(14032,65,5,14733,NULL,NULL),(14033,65,5,14734,NULL,NULL),(14034,65,5,14735,NULL,NULL),(14035,77,5,14736,NULL,NULL),(14036,83,5,14737,NULL,NULL),(14037,83,5,14738,NULL,NULL),(14038,84,5,14739,NULL,NULL),(14039,84,5,14740,NULL,NULL),(14040,84,5,14741,NULL,NULL),(14041,85,5,14742,NULL,NULL),(14042,84,5,14743,NULL,NULL),(14043,85,5,14744,NULL,NULL),(14044,85,5,14745,NULL,NULL),(14045,85,5,14746,NULL,NULL),(14046,85,5,14747,NULL,NULL),(14047,85,5,14748,NULL,NULL),(14048,85,5,14749,NULL,NULL),(14049,85,5,14750,NULL,NULL),(14050,85,5,14751,NULL,NULL),(14051,85,5,14752,NULL,NULL),(14052,77,5,14753,NULL,NULL),(14053,83,5,14754,NULL,NULL),(14054,83,5,14755,NULL,NULL),(14055,84,5,14756,NULL,NULL),(14056,84,5,14757,NULL,NULL),(14057,84,5,14758,NULL,NULL),(14058,85,5,14759,NULL,NULL),(14059,84,5,14760,NULL,NULL),(14060,85,5,14761,NULL,NULL),(14061,85,5,14762,NULL,NULL),(14062,85,5,14763,NULL,NULL),(14063,85,5,14764,NULL,NULL),(14064,85,5,14765,NULL,NULL),(14065,85,5,14766,NULL,NULL),(14066,85,5,14767,NULL,NULL),(14067,85,5,14768,NULL,NULL),(14068,85,5,14769,NULL,NULL),(14069,93,5,14770,NULL,NULL),(14070,91,5,14771,NULL,NULL),(14071,87,5,14772,NULL,NULL),(14072,85,5,14773,NULL,NULL),(14073,85,5,14774,NULL,NULL),(14074,93,5,14775,NULL,NULL),(14075,91,5,14776,NULL,NULL),(14076,87,5,14777,NULL,NULL),(14077,85,5,14778,NULL,NULL),(14078,85,5,14779,NULL,NULL),(14079,100,5,14780,NULL,NULL),(14080,100,5,14781,NULL,NULL),(14081,100,5,14782,NULL,NULL),(14082,100,5,14783,NULL,NULL),(14083,63,5,14784,NULL,NULL),(14084,68,5,14785,NULL,NULL),(14085,69,5,14786,NULL,NULL),(14086,70,5,14787,NULL,NULL),(14087,72,5,14788,NULL,NULL),(14088,63,5,14789,NULL,NULL),(14089,68,5,14790,NULL,NULL),(14090,69,5,14791,NULL,NULL),(14091,70,5,14792,NULL,NULL),(14092,72,5,14793,NULL,NULL),(14093,63,5,14794,NULL,NULL),(14094,68,5,14795,NULL,NULL),(14095,69,5,14796,NULL,NULL),(14096,70,5,14797,NULL,NULL),(14097,72,5,14798,NULL,NULL),(14098,96.03333333333333,5,14799,97,95),(14099,98.11666666666666,5,14800,99,97),(14100,98.95,5,14801,99,98),(14101,99,5,14802,99,99),(14102,99,5,14803,99,99),(14103,99,5,14804,99,99),(14104,96.03333333333333,5,14805,97,95),(14105,98.11666666666666,5,14806,99,97),(14106,98.95,5,14807,99,98),(14107,99,5,14808,99,99),(14108,99,5,14809,99,99),(14109,99,5,14810,99,99),(14110,96.03333333333333,5,14811,97,95),(14111,98.11666666666666,5,14812,99,97),(14112,98.95,5,14813,99,98),(14113,99,5,14814,99,99),(14114,99,5,14815,99,99),(14115,99,5,14816,99,99),(14116,84.36666666666666,5,14817,85,83),(14117,97.63333333333334,5,14818,98,93),(14118,84.36666666666666,5,14819,85,83),(14119,97.63333333333334,5,14820,98,93),(14120,98,5,14821,98,98),(14121,98,5,14822,98,98),(14122,86.96666666666667,5,14823,88,86),(14123,88.61666666666666,5,14824,89,88),(14124,91.6,5,14825,92,90),(14125,92,5,14826,92,92),(14126,92.36666666666666,5,14827,93,92),(14127,86.96666666666667,5,14828,88,86),(14128,88.61666666666666,5,14829,89,88),(14129,91.6,5,14830,92,90),(14130,92,5,14831,92,92),(14131,92.36666666666666,5,14832,93,92),(14132,102,5,14833,102,102),(14133,102,5,14834,102,102),(14134,101.08333333333333,5,14835,102,101),(14135,101.01666666666667,5,14836,102,101),(14136,102,5,14837,102,102),(14137,102,5,14838,102,102),(14138,101.08333333333333,5,14839,102,101),(14139,101.01666666666667,5,14840,102,101),(14140,101.13333333333334,5,14841,102,101),(14141,105.85,5,14842,106,105),(14142,80.96666666666667,5,14843,82,77),(14143,81.93333333333334,5,14844,82,81),(14144,82.05,5,14845,83,82),(14145,83,5,14846,83,83),(14146,83,5,14847,83,83),(14147,83.55,5,14848,84,83),(14148,84,5,14849,84,84),(14149,84.01666666666667,5,14850,85,84),(14150,84.55,5,14851,85,84),(14151,85,5,14852,85,85),(14152,80.96666666666667,5,14853,82,77),(14153,81.93333333333334,5,14854,82,81),(14154,82.05,5,14855,83,82),(14155,83,5,14856,83,83),(14156,83,5,14857,83,83),(14157,83.55,5,14858,84,83),(14158,84,5,14859,84,84),(14159,84.01666666666667,5,14860,85,84),(14160,84.55,5,14861,85,84),(14161,85,5,14862,85,85),(14162,55.55,5,14863,56,53),(14163,85,5,14864,85,85),(14164,85.23333333333333,5,14865,86,85),(14165,85.93333333333334,5,14866,86,85),(14166,86,5,14867,86,86),(14167,86,5,14868,86,86),(14168,86,5,14869,86,86),(14169,85,5,14870,85,85),(14170,85.23333333333333,5,14871,86,85),(14171,85.93333333333334,5,14872,86,85),(14172,86,5,14873,86,86),(14173,86,5,14874,86,86),(14174,86,5,14875,86,86),(14175,85,5,14876,85,85),(14176,85.23333333333333,5,14877,86,85),(14177,85.93333333333334,5,14878,86,85),(14178,86,5,14879,86,86),(14179,86,5,14880,86,86),(14180,86,5,14881,86,86),(14181,82.95,5,14882,83,82),(14182,83,5,14883,83,83),(14183,82.95,5,14884,83,82),(14184,83,5,14885,83,83),(14185,80,5,14886,NULL,NULL),(14186,84,5,14887,NULL,NULL),(14187,84,5,14888,NULL,NULL),(14188,85,5,14889,NULL,NULL),(14189,85,5,14890,NULL,NULL),(14190,86,5,14891,NULL,NULL),(14191,86,5,14892,NULL,NULL),(14192,87,5,14893,NULL,NULL),(14193,87,5,14894,NULL,NULL),(14194,87,5,14895,NULL,NULL),(14195,87,5,14896,NULL,NULL),(14196,88,5,14897,NULL,NULL),(14197,88,5,14898,NULL,NULL),(14198,88,5,14899,NULL,NULL),(14199,88,5,14900,NULL,NULL),(14200,88,5,14901,NULL,NULL),(14201,91,5,14902,NULL,NULL),(14202,92,5,14903,NULL,NULL),(14203,92,5,14904,NULL,NULL),(14204,92,5,14905,NULL,NULL),(14205,92,5,14906,NULL,NULL),(14206,92,5,14907,NULL,NULL),(14207,92,5,14908,NULL,NULL),(14208,92,5,14909,NULL,NULL),(14209,91,5,14910,NULL,NULL),(14210,91,5,14911,NULL,NULL),(14211,91,5,14912,NULL,NULL),(14212,91,5,14913,NULL,NULL),(14213,72,5,14914,NULL,NULL),(14214,73,5,14915,NULL,NULL),(14215,75,5,14916,NULL,NULL),(14216,65,5,14917,NULL,NULL),(14217,77,5,14918,NULL,NULL),(14218,83,5,14919,NULL,NULL),(14219,83,5,14920,NULL,NULL),(14220,84,5,14921,NULL,NULL),(14221,84,5,14922,NULL,NULL),(14222,84,5,14923,NULL,NULL),(14223,85,5,14924,NULL,NULL),(14224,84,5,14925,NULL,NULL),(14225,85,5,14926,NULL,NULL),(14226,85,5,14927,NULL,NULL),(14227,85,5,14928,NULL,NULL),(14228,85,5,14929,NULL,NULL),(14229,85,5,14930,NULL,NULL),(14230,85,5,14931,NULL,NULL),(14231,85,5,14932,NULL,NULL),(14232,85,5,14933,NULL,NULL),(14233,85,5,14934,NULL,NULL),(14234,93,5,14935,NULL,NULL),(14235,91,5,14936,NULL,NULL),(14236,87,5,14937,NULL,NULL),(14237,85,5,14938,NULL,NULL),(14238,85,5,14939,NULL,NULL),(14239,95,5,14940,NULL,NULL),(14240,90,5,14941,NULL,NULL),(14241,90,5,14942,NULL,NULL),(14242,90,5,14943,NULL,NULL),(14243,90,5,14944,NULL,NULL),(14244,91,5,14945,NULL,NULL),(14245,100,5,14946,NULL,NULL),(14246,100,5,14947,NULL,NULL),(14247,102,5,14948,NULL,NULL),(14248,102,5,14949,NULL,NULL),(14249,63,5,14950,NULL,NULL),(14250,68,5,14951,NULL,NULL),(14251,69,5,14952,NULL,NULL),(14252,70,5,14953,NULL,NULL),(14253,72,5,14954,NULL,NULL),(14254,96.03333333333333,5,14955,97,95),(14255,98.11666666666666,5,14956,99,97),(14256,98.95,5,14957,99,98),(14257,99,5,14958,99,99),(14258,99,5,14959,99,99),(14259,99,5,14960,99,99),(14260,84.36666666666666,5,14961,85,83),(14261,97.63333333333334,5,14962,98,93),(14262,98,5,14963,98,98),(14263,95.51666666666667,5,14964,97,93),(14264,85.03333333333333,5,14965,87,85),(14265,86.96666666666667,5,14966,88,86),(14266,88.61666666666666,5,14967,89,88),(14267,91.6,5,14968,92,90),(14268,92,5,14969,92,92),(14269,92.36666666666666,5,14970,93,92),(14270,102,5,14971,102,102),(14271,102,5,14972,102,102),(14272,101.08333333333333,5,14973,102,101),(14273,101.01666666666667,5,14974,102,101),(14274,101.13333333333334,5,14975,102,101),(14275,101.6,5,14976,102,101),(14276,101.7,5,14977,102,101),(14277,101.36666666666666,5,14978,102,101),(14278,101.98333333333333,5,14979,102,101),(14279,102.7,5,14980,103,102),(14280,103,5,14981,103,103),(14281,105.85,5,14982,106,105),(14282,80.96666666666667,5,14983,82,77),(14283,81.93333333333334,5,14984,82,81),(14284,82.05,5,14985,83,82),(14285,83,5,14986,83,83),(14286,83,5,14987,83,83),(14287,83.55,5,14988,84,83),(14288,84,5,14989,84,84),(14289,84.01666666666667,5,14990,85,84),(14290,84.55,5,14991,85,84),(14291,85,5,14992,85,85),(14292,55.55,5,14993,56,53),(14293,85,5,14994,85,85),(14294,85.23333333333333,5,14995,86,85),(14295,85.93333333333334,5,14996,86,85),(14296,86,5,14997,86,86),(14297,86,5,14998,86,86),(14298,86,5,14999,86,86),(14299,82.95,5,15000,83,82),(14300,83,5,15001,83,83),(14301,80,5,15002,NULL,NULL),(14302,84,5,15003,NULL,NULL),(14303,84,5,15004,NULL,NULL),(14304,85,5,15005,NULL,NULL),(14305,85,5,15006,NULL,NULL),(14306,86,5,15007,NULL,NULL),(14307,86,5,15008,NULL,NULL),(14308,87,5,15009,NULL,NULL),(14309,87,5,15010,NULL,NULL),(14310,87,5,15011,NULL,NULL),(14311,87,5,15012,NULL,NULL),(14312,88,5,15013,NULL,NULL),(14313,88,5,15014,NULL,NULL),(14314,88,5,15015,NULL,NULL),(14315,88,5,15016,NULL,NULL),(14316,88,5,15017,NULL,NULL),(14317,91,5,15018,NULL,NULL),(14318,92,5,15019,NULL,NULL),(14319,92,5,15020,NULL,NULL),(14320,92,5,15021,NULL,NULL),(14321,92,5,15022,NULL,NULL),(14322,92,5,15023,NULL,NULL),(14323,92,5,15024,NULL,NULL),(14324,92,5,15025,NULL,NULL),(14325,91,5,15026,NULL,NULL),(14326,91,5,15027,NULL,NULL),(14327,91,5,15028,NULL,NULL),(14328,91,5,15029,NULL,NULL),(14329,72,5,15030,NULL,NULL),(14330,73,5,15031,NULL,NULL),(14331,75,5,15032,NULL,NULL),(14332,65,5,15033,NULL,NULL),(14333,77,5,15034,NULL,NULL),(14334,83,5,15035,NULL,NULL),(14335,83,5,15036,NULL,NULL),(14336,84,5,15037,NULL,NULL),(14337,84,5,15038,NULL,NULL),(14338,84,5,15039,NULL,NULL),(14339,85,5,15040,NULL,NULL),(14340,84,5,15041,NULL,NULL),(14341,85,5,15042,NULL,NULL),(14342,85,5,15043,NULL,NULL),(14343,85,5,15044,NULL,NULL),(14344,85,5,15045,NULL,NULL),(14345,85,5,15046,NULL,NULL),(14346,85,5,15047,NULL,NULL),(14347,85,5,15048,NULL,NULL),(14348,85,5,15049,NULL,NULL),(14349,85,5,15050,NULL,NULL),(14350,93,5,15051,NULL,NULL),(14351,91,5,15052,NULL,NULL),(14352,87,5,15053,NULL,NULL),(14353,85,5,15054,NULL,NULL),(14354,85,5,15055,NULL,NULL),(14355,95,5,15056,NULL,NULL),(14356,90,5,15057,NULL,NULL),(14357,90,5,15058,NULL,NULL),(14358,90,5,15059,NULL,NULL),(14359,90,5,15060,NULL,NULL),(14360,91,5,15061,NULL,NULL),(14361,100,5,15062,NULL,NULL),(14362,100,5,15063,NULL,NULL),(14363,102,5,15064,NULL,NULL),(14364,102,5,15065,NULL,NULL),(14365,63,5,15066,NULL,NULL),(14366,68,5,15067,NULL,NULL),(14367,69,5,15068,NULL,NULL),(14368,70,5,15069,NULL,NULL),(14369,72,5,15070,NULL,NULL),(14370,96.03333333333333,5,15071,97,95),(14371,98.11666666666666,5,15072,99,97),(14372,98.95,5,15073,99,98),(14373,99,5,15074,99,99),(14374,99,5,15075,99,99),(14375,99,5,15076,99,99),(14376,84.36666666666666,5,15077,85,83),(14377,97.63333333333334,5,15078,98,93),(14378,98,5,15079,98,98),(14379,95.51666666666667,5,15080,97,93),(14380,85.03333333333333,5,15081,87,85),(14381,86.96666666666667,5,15082,88,86),(14382,88.61666666666666,5,15083,89,88),(14383,91.6,5,15084,92,90),(14384,92,5,15085,92,92),(14385,92.36666666666666,5,15086,93,92),(14386,102,5,15087,102,102),(14387,102,5,15088,102,102),(14388,101.08333333333333,5,15089,102,101),(14389,101.01666666666667,5,15090,102,101),(14390,101.13333333333334,5,15091,102,101),(14391,101.6,5,15092,102,101),(14392,101.7,5,15093,102,101),(14393,101.36666666666666,5,15094,102,101),(14394,101.98333333333333,5,15095,102,101),(14395,102.7,5,15096,103,102),(14396,103,5,15097,103,103),(14397,105.85,5,15098,106,105),(14398,80.96666666666667,5,15099,82,77),(14399,81.93333333333334,5,15100,82,81),(14400,82.05,5,15101,83,82),(14401,83,5,15102,83,83),(14402,83,5,15103,83,83),(14403,83.55,5,15104,84,83),(14404,84,5,15105,84,84),(14405,84.01666666666667,5,15106,85,84),(14406,84.55,5,15107,85,84),(14407,85,5,15108,85,85),(14408,55.55,5,15109,56,53),(14409,85,5,15110,85,85),(14410,85.23333333333333,5,15111,86,85),(14411,85.93333333333334,5,15112,86,85),(14412,86,5,15113,86,86),(14413,86,5,15114,86,86),(14414,86,5,15115,86,86),(14415,82.95,5,15116,83,82),(14416,83,5,15117,83,83),(14417,47.4037,7,15118,103,30),(14418,101.4683,7,15119,107,39),(14419,67.3236,7,15120,102,35),(14420,42.668,7,15121,103,38),(14421,72.6818,7,15122,101,36),(14422,42.3977,7,15123,107,40),(14423,71.6471,7,15124,105,30),(14424,67.9391,7,15125,106,30),(14425,44.3948,7,15126,107,36),(14426,82.2813,7,15127,105,34),(14427,67.7489,7,15128,103,36),(14428,43.1693,7,15129,109,31),(14429,76.03,7,15130,103,40),(14430,48.1224,7,15131,100,37),(14431,52.4218,7,15132,108,40),(14432,100.7842,7,15133,110,34),(14433,83.2959,7,15134,100,38),(14434,74.4215,7,15135,110,37),(14435,94.6789,7,15136,110,37),(14436,102.6403,7,15137,109,39),(14437,102.2373,7,15138,108,30),(14438,90.4944,7,15139,100,33),(14439,41.9332,7,15140,106,35),(14440,68.1342,7,15141,107,30),(14441,63.7325,7,15142,103,30),(14442,70.3597,7,15143,103,39),(14443,93.5859,7,15144,103,32),(14444,75.8185,7,15145,100,34),(14445,77.9065,7,15146,100,34),(14446,101.1988,7,15147,100,35),(14447,84.6792,7,15148,108,30),(14448,42.9224,7,15149,106,40),(14449,56.4619,7,15150,102,39),(14450,72.1207,7,15151,103,34),(14451,50.3229,7,15152,103,30),(14452,45.1132,7,15153,104,31),(14453,91.7653,7,15154,107,40),(14454,57.5806,7,15155,108,33),(14455,83.59,7,15156,102,37),(14456,45.7559,7,15157,109,33),(14457,78.0015,7,15158,108,35),(14458,90.6806,7,15159,102,37),(14459,102.0472,7,15160,105,34),(14460,80.7792,7,15161,103,32),(14461,75.2729,7,15162,103,38),(14462,53.3036,7,15163,101,31),(14463,61.6826,7,15164,101,37),(14464,77.3345,7,15165,110,34),(14465,82.9514,7,15166,101,30),(14466,71.0326,7,15167,108,40),(14467,97.7537,7,15168,102,39),(14468,67.1388,7,15169,107,32),(14469,48.869,7,15170,102,35),(14470,53.364,7,15171,106,33),(14471,73.3187,7,15172,100,30);
/*!40000 ALTER TABLE `misurazione_temperatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misurazione_umidità`
--

DROP TABLE IF EXISTS `misurazione_umidità`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misurazione_umidità` (
  `idmisurazione_umidità` int(11) NOT NULL AUTO_INCREMENT,
  `valore` double NOT NULL,
  `unita_misura_idunita_misura` int(11) DEFAULT NULL,
  `report_idreport` int(11) DEFAULT NULL,
  `valore_max` int(11) DEFAULT NULL,
  `valore_min` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmisurazione_umidità`)
) ENGINE=InnoDB AUTO_INCREMENT=14470 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misurazione_umidità`
--

LOCK TABLES `misurazione_umidità` WRITE;
/*!40000 ALTER TABLE `misurazione_umidità` DISABLE KEYS */;
INSERT INTO `misurazione_umidità` VALUES (14001,59,6,14704,NULL,NULL),(14002,55,6,14705,NULL,NULL),(14003,59,6,14706,NULL,NULL),(14004,55,6,14707,NULL,NULL),(14005,55,6,14708,NULL,NULL),(14006,54,6,14709,NULL,NULL),(14007,53,6,14710,NULL,NULL),(14008,53,6,14711,NULL,NULL),(14009,52,6,14712,NULL,NULL),(14010,52,6,14713,NULL,NULL),(14011,51,6,14714,NULL,NULL),(14012,52,6,14715,NULL,NULL),(14013,51,6,14716,NULL,NULL),(14014,51,6,14717,NULL,NULL),(14015,51,6,14718,NULL,NULL),(14016,51,6,14719,NULL,NULL),(14017,51,6,14720,NULL,NULL),(14018,50,6,14721,NULL,NULL),(14019,49,6,14722,NULL,NULL),(14020,46,6,14723,NULL,NULL),(14021,65,6,14724,NULL,NULL),(14022,64,6,14725,NULL,NULL),(14023,62,6,14726,NULL,NULL),(14024,65,6,14727,NULL,NULL),(14025,64,6,14728,NULL,NULL),(14026,62,6,14729,NULL,NULL),(14027,65,6,14730,NULL,NULL),(14028,64,6,14731,NULL,NULL),(14029,62,6,14732,NULL,NULL),(14030,73,6,14733,NULL,NULL),(14031,73,6,14734,NULL,NULL),(14032,73,6,14735,NULL,NULL),(14033,59,6,14736,NULL,NULL),(14034,53,6,14737,NULL,NULL),(14035,53,6,14738,NULL,NULL),(14036,53,6,14739,NULL,NULL),(14037,52,6,14740,NULL,NULL),(14038,52,6,14741,NULL,NULL),(14039,52,6,14742,NULL,NULL),(14040,52,6,14743,NULL,NULL),(14041,51,6,14744,NULL,NULL),(14042,51,6,14745,NULL,NULL),(14043,51,6,14746,NULL,NULL),(14044,51,6,14747,NULL,NULL),(14045,51,6,14748,NULL,NULL),(14046,51,6,14749,NULL,NULL),(14047,51,6,14750,NULL,NULL),(14048,51,6,14751,NULL,NULL),(14049,51,6,14752,NULL,NULL),(14050,59,6,14753,NULL,NULL),(14051,53,6,14754,NULL,NULL),(14052,53,6,14755,NULL,NULL),(14053,53,6,14756,NULL,NULL),(14054,52,6,14757,NULL,NULL),(14055,52,6,14758,NULL,NULL),(14056,52,6,14759,NULL,NULL),(14057,52,6,14760,NULL,NULL),(14058,51,6,14761,NULL,NULL),(14059,51,6,14762,NULL,NULL),(14060,51,6,14763,NULL,NULL),(14061,51,6,14764,NULL,NULL),(14062,51,6,14765,NULL,NULL),(14063,51,6,14766,NULL,NULL),(14064,51,6,14767,NULL,NULL),(14065,51,6,14768,NULL,NULL),(14066,51,6,14769,NULL,NULL),(14067,45,6,14770,NULL,NULL),(14068,43,6,14771,NULL,NULL),(14069,43,6,14772,NULL,NULL),(14070,44,6,14773,NULL,NULL),(14071,44,6,14774,NULL,NULL),(14072,45,6,14775,NULL,NULL),(14073,43,6,14776,NULL,NULL),(14074,43,6,14777,NULL,NULL),(14075,44,6,14778,NULL,NULL),(14076,44,6,14779,NULL,NULL),(14077,42,6,14780,NULL,NULL),(14078,41,6,14781,NULL,NULL),(14079,42,6,14782,NULL,NULL),(14080,41,6,14783,NULL,NULL),(14081,77,6,14784,NULL,NULL),(14082,71,6,14785,NULL,NULL),(14083,69,6,14786,NULL,NULL),(14084,67,6,14787,NULL,NULL),(14085,66,6,14788,NULL,NULL),(14086,77,6,14789,NULL,NULL),(14087,71,6,14790,NULL,NULL),(14088,69,6,14791,NULL,NULL),(14089,67,6,14792,NULL,NULL),(14090,66,6,14793,NULL,NULL),(14091,77,6,14794,NULL,NULL),(14092,71,6,14795,NULL,NULL),(14093,69,6,14796,NULL,NULL),(14094,67,6,14797,NULL,NULL),(14095,66,6,14798,NULL,NULL),(14096,54.05,6,14799,56,54),(14097,52.43333333333333,6,14800,53,52),(14098,52.083333333333336,6,14801,53,52),(14099,52.03333333333333,6,14802,53,52),(14100,51.95,6,14803,52,51),(14101,51.86666666666667,6,14804,52,51),(14102,54.05,6,14805,56,54),(14103,52.43333333333333,6,14806,53,52),(14104,52.083333333333336,6,14807,53,52),(14105,52.03333333333333,6,14808,53,52),(14106,51.95,6,14809,52,51),(14107,51.86666666666667,6,14810,52,51),(14108,54.05,6,14811,56,54),(14109,52.43333333333333,6,14812,53,52),(14110,52.083333333333336,6,14813,53,52),(14111,52.03333333333333,6,14814,53,52),(14112,51.95,6,14815,52,51),(14113,51.86666666666667,6,14816,52,51),(14114,65.23333333333333,6,14817,67,64),(14115,51.06666666666667,6,14818,54,51),(14116,65.23333333333333,6,14819,67,64),(14117,51.06666666666667,6,14820,54,51),(14118,49.016666666666666,6,14821,50,49),(14119,49.016666666666666,6,14822,50,49),(14120,62.1,6,14823,63,61),(14121,60.61666666666667,6,14824,61,60),(14122,57.71666666666667,6,14825,60,57),(14123,56.81666666666667,6,14826,58,56),(14124,56.03333333333333,6,14827,57,56),(14125,62.1,6,14828,63,61),(14126,60.61666666666667,6,14829,61,60),(14127,57.71666666666667,6,14830,60,57),(14128,56.81666666666667,6,14831,58,56),(14129,56.03333333333333,6,14832,57,56),(14130,48,6,14833,48,48),(14131,48.25,6,14834,49,48),(14132,48.016666666666666,6,14835,49,48),(14133,48,6,14836,48,48),(14134,48,6,14837,48,48),(14135,48.25,6,14838,49,48),(14136,48.016666666666666,6,14839,49,48),(14137,48,6,14840,48,48),(14138,48,6,14841,48,48),(14139,44.95,6,14842,45,44),(14140,66.06666666666666,6,14843,71,65),(14141,65.43333333333334,6,14844,66,65),(14142,64.81666666666666,6,14845,65,64),(14143,64.33333333333333,6,14846,65,64),(14144,63.96666666666667,6,14847,64,63),(14145,63.166666666666664,6,14848,64,63),(14146,62.983333333333334,6,14849,63,62),(14147,62.53333333333333,6,14850,63,62),(14148,62.56666666666667,6,14851,63,62),(14149,62.016666666666666,6,14852,63,62),(14150,66.06666666666666,6,14853,71,65),(14151,65.43333333333334,6,14854,66,65),(14152,64.81666666666666,6,14855,65,64),(14153,64.33333333333333,6,14856,65,64),(14154,63.96666666666667,6,14857,64,63),(14155,63.166666666666664,6,14858,64,63),(14156,62.983333333333334,6,14859,63,62),(14157,62.53333333333333,6,14860,63,62),(14158,62.56666666666667,6,14861,63,62),(14159,62.016666666666666,6,14862,63,62),(14160,82.68333333333334,6,14863,87,82),(14161,43.3,6,14864,44,43),(14162,43.266666666666666,6,14865,44,43),(14163,42.96666666666667,6,14866,43,42),(14164,42.983333333333334,6,14867,43,42),(14165,42.95,6,14868,43,42),(14166,42.13333333333333,6,14869,43,42),(14167,43.3,6,14870,44,43),(14168,43.266666666666666,6,14871,44,43),(14169,42.96666666666667,6,14872,43,42),(14170,42.983333333333334,6,14873,43,42),(14171,42.95,6,14874,43,42),(14172,42.13333333333333,6,14875,43,42),(14173,43.3,6,14876,44,43),(14174,43.266666666666666,6,14877,44,43),(14175,42.96666666666667,6,14878,43,42),(14176,42.983333333333334,6,14879,43,42),(14177,42.95,6,14880,43,42),(14178,42.13333333333333,6,14881,43,42),(14179,41.21666666666667,6,14882,43,41),(14180,41.016666666666666,6,14883,42,41),(14181,41.21666666666667,6,14884,43,41),(14182,41.016666666666666,6,14885,42,41),(14183,59,6,14886,NULL,NULL),(14184,55,6,14887,NULL,NULL),(14185,55,6,14888,NULL,NULL),(14186,54,6,14889,NULL,NULL),(14187,53,6,14890,NULL,NULL),(14188,53,6,14891,NULL,NULL),(14189,52,6,14892,NULL,NULL),(14190,52,6,14893,NULL,NULL),(14191,51,6,14894,NULL,NULL),(14192,52,6,14895,NULL,NULL),(14193,51,6,14896,NULL,NULL),(14194,51,6,14897,NULL,NULL),(14195,51,6,14898,NULL,NULL),(14196,51,6,14899,NULL,NULL),(14197,51,6,14900,NULL,NULL),(14198,50,6,14901,NULL,NULL),(14199,49,6,14902,NULL,NULL),(14200,47,6,14903,NULL,NULL),(14201,47,6,14904,NULL,NULL),(14202,47,6,14905,NULL,NULL),(14203,47,6,14906,NULL,NULL),(14204,47,6,14907,NULL,NULL),(14205,47,6,14908,NULL,NULL),(14206,46,6,14909,NULL,NULL),(14207,46,6,14910,NULL,NULL),(14208,47,6,14911,NULL,NULL),(14209,47,6,14912,NULL,NULL),(14210,47,6,14913,NULL,NULL),(14211,65,6,14914,NULL,NULL),(14212,64,6,14915,NULL,NULL),(14213,62,6,14916,NULL,NULL),(14214,73,6,14917,NULL,NULL),(14215,59,6,14918,NULL,NULL),(14216,53,6,14919,NULL,NULL),(14217,53,6,14920,NULL,NULL),(14218,53,6,14921,NULL,NULL),(14219,52,6,14922,NULL,NULL),(14220,52,6,14923,NULL,NULL),(14221,52,6,14924,NULL,NULL),(14222,52,6,14925,NULL,NULL),(14223,51,6,14926,NULL,NULL),(14224,51,6,14927,NULL,NULL),(14225,51,6,14928,NULL,NULL),(14226,51,6,14929,NULL,NULL),(14227,51,6,14930,NULL,NULL),(14228,51,6,14931,NULL,NULL),(14229,51,6,14932,NULL,NULL),(14230,51,6,14933,NULL,NULL),(14231,51,6,14934,NULL,NULL),(14232,45,6,14935,NULL,NULL),(14233,43,6,14936,NULL,NULL),(14234,43,6,14937,NULL,NULL),(14235,44,6,14938,NULL,NULL),(14236,44,6,14939,NULL,NULL),(14237,44,6,14940,NULL,NULL),(14238,51,6,14941,NULL,NULL),(14239,47,6,14942,NULL,NULL),(14240,46,6,14943,NULL,NULL),(14241,45,6,14944,NULL,NULL),(14242,45,6,14945,NULL,NULL),(14243,42,6,14946,NULL,NULL),(14244,41,6,14947,NULL,NULL),(14245,42,6,14948,NULL,NULL),(14246,41,6,14949,NULL,NULL),(14247,77,6,14950,NULL,NULL),(14248,71,6,14951,NULL,NULL),(14249,69,6,14952,NULL,NULL),(14250,67,6,14953,NULL,NULL),(14251,66,6,14954,NULL,NULL),(14252,54.05,6,14955,56,54),(14253,52.43333333333333,6,14956,53,52),(14254,52.083333333333336,6,14957,53,52),(14255,52.03333333333333,6,14958,53,52),(14256,51.95,6,14959,52,51),(14257,51.86666666666667,6,14960,52,51),(14258,65.23333333333333,6,14961,67,64),(14259,51.06666666666667,6,14962,54,51),(14260,49.016666666666666,6,14963,50,49),(14261,50.016666666666666,6,14964,51,49),(14262,58.05,6,14965,59,55),(14263,62.1,6,14966,63,61),(14264,60.61666666666667,6,14967,61,60),(14265,57.71666666666667,6,14968,60,57),(14266,56.81666666666667,6,14969,58,56),(14267,56.03333333333333,6,14970,57,56),(14268,48,6,14971,48,48),(14269,48.25,6,14972,49,48),(14270,48.016666666666666,6,14973,49,48),(14271,48,6,14974,48,48),(14272,48,6,14975,48,48),(14273,48,6,14976,48,48),(14274,47.983333333333334,6,14977,48,47),(14275,48,6,14978,48,48),(14276,47.983333333333334,6,14979,48,47),(14277,47.7,6,14980,48,47),(14278,47.583333333333336,6,14981,48,47),(14279,44.95,6,14982,45,44),(14280,66.06666666666666,6,14983,71,65),(14281,65.43333333333334,6,14984,66,65),(14282,64.81666666666666,6,14985,65,64),(14283,64.33333333333333,6,14986,65,64),(14284,63.96666666666667,6,14987,64,63),(14285,63.166666666666664,6,14988,64,63),(14286,62.983333333333334,6,14989,63,62),(14287,62.53333333333333,6,14990,63,62),(14288,62.56666666666667,6,14991,63,62),(14289,62.016666666666666,6,14992,63,62),(14290,82.68333333333334,6,14993,87,82),(14291,43.3,6,14994,44,43),(14292,43.266666666666666,6,14995,44,43),(14293,42.96666666666667,6,14996,43,42),(14294,42.983333333333334,6,14997,43,42),(14295,42.95,6,14998,43,42),(14296,42.13333333333333,6,14999,43,42),(14297,41.21666666666667,6,15000,43,41),(14298,41.016666666666666,6,15001,42,41),(14299,59,6,15002,NULL,NULL),(14300,55,6,15003,NULL,NULL),(14301,55,6,15004,NULL,NULL),(14302,54,6,15005,NULL,NULL),(14303,53,6,15006,NULL,NULL),(14304,53,6,15007,NULL,NULL),(14305,52,6,15008,NULL,NULL),(14306,52,6,15009,NULL,NULL),(14307,51,6,15010,NULL,NULL),(14308,52,6,15011,NULL,NULL),(14309,51,6,15012,NULL,NULL),(14310,51,6,15013,NULL,NULL),(14311,51,6,15014,NULL,NULL),(14312,51,6,15015,NULL,NULL),(14313,51,6,15016,NULL,NULL),(14314,50,6,15017,NULL,NULL),(14315,49,6,15018,NULL,NULL),(14316,47,6,15019,NULL,NULL),(14317,47,6,15020,NULL,NULL),(14318,47,6,15021,NULL,NULL),(14319,47,6,15022,NULL,NULL),(14320,47,6,15023,NULL,NULL),(14321,47,6,15024,NULL,NULL),(14322,46,6,15025,NULL,NULL),(14323,46,6,15026,NULL,NULL),(14324,47,6,15027,NULL,NULL),(14325,47,6,15028,NULL,NULL),(14326,47,6,15029,NULL,NULL),(14327,65,6,15030,NULL,NULL),(14328,64,6,15031,NULL,NULL),(14329,62,6,15032,NULL,NULL),(14330,73,6,15033,NULL,NULL),(14331,59,6,15034,NULL,NULL),(14332,53,6,15035,NULL,NULL),(14333,53,6,15036,NULL,NULL),(14334,53,6,15037,NULL,NULL),(14335,52,6,15038,NULL,NULL),(14336,52,6,15039,NULL,NULL),(14337,52,6,15040,NULL,NULL),(14338,52,6,15041,NULL,NULL),(14339,51,6,15042,NULL,NULL),(14340,51,6,15043,NULL,NULL),(14341,51,6,15044,NULL,NULL),(14342,51,6,15045,NULL,NULL),(14343,51,6,15046,NULL,NULL),(14344,51,6,15047,NULL,NULL),(14345,51,6,15048,NULL,NULL),(14346,51,6,15049,NULL,NULL),(14347,51,6,15050,NULL,NULL),(14348,45,6,15051,NULL,NULL),(14349,43,6,15052,NULL,NULL),(14350,43,6,15053,NULL,NULL),(14351,44,6,15054,NULL,NULL),(14352,44,6,15055,NULL,NULL),(14353,44,6,15056,NULL,NULL),(14354,51,6,15057,NULL,NULL),(14355,47,6,15058,NULL,NULL),(14356,46,6,15059,NULL,NULL),(14357,45,6,15060,NULL,NULL),(14358,45,6,15061,NULL,NULL),(14359,42,6,15062,NULL,NULL),(14360,41,6,15063,NULL,NULL),(14361,42,6,15064,NULL,NULL),(14362,41,6,15065,NULL,NULL),(14363,77,6,15066,NULL,NULL),(14364,71,6,15067,NULL,NULL),(14365,69,6,15068,NULL,NULL),(14366,67,6,15069,NULL,NULL),(14367,66,6,15070,NULL,NULL),(14368,54.05,6,15071,56,54),(14369,52.43333333333333,6,15072,53,52),(14370,52.083333333333336,6,15073,53,52),(14371,52.03333333333333,6,15074,53,52),(14372,51.95,6,15075,52,51),(14373,51.86666666666667,6,15076,52,51),(14374,65.23333333333333,6,15077,67,64),(14375,51.06666666666667,6,15078,54,51),(14376,49.016666666666666,6,15079,50,49),(14377,50.016666666666666,6,15080,51,49),(14378,58.05,6,15081,59,55),(14379,62.1,6,15082,63,61),(14380,60.61666666666667,6,15083,61,60),(14381,57.71666666666667,6,15084,60,57),(14382,56.81666666666667,6,15085,58,56),(14383,56.03333333333333,6,15086,57,56),(14384,48,6,15087,48,48),(14385,48.25,6,15088,49,48),(14386,48.016666666666666,6,15089,49,48),(14387,48,6,15090,48,48),(14388,48,6,15091,48,48),(14389,48,6,15092,48,48),(14390,47.983333333333334,6,15093,48,47),(14391,48,6,15094,48,48),(14392,47.983333333333334,6,15095,48,47),(14393,47.7,6,15096,48,47),(14394,47.583333333333336,6,15097,48,47),(14395,44.95,6,15098,45,44),(14396,66.06666666666666,6,15099,71,65),(14397,65.43333333333334,6,15100,66,65),(14398,64.81666666666666,6,15101,65,64),(14399,64.33333333333333,6,15102,65,64),(14400,63.96666666666667,6,15103,64,63),(14401,63.166666666666664,6,15104,64,63),(14402,62.983333333333334,6,15105,63,62),(14403,62.53333333333333,6,15106,63,62),(14404,62.56666666666667,6,15107,63,62),(14405,62.016666666666666,6,15108,63,62),(14406,82.68333333333334,6,15109,87,82),(14407,43.3,6,15110,44,43),(14408,43.266666666666666,6,15111,44,43),(14409,42.96666666666667,6,15112,43,42),(14410,42.983333333333334,6,15113,43,42),(14411,42.95,6,15114,43,42),(14412,42.13333333333333,6,15115,43,42),(14413,41.21666666666667,6,15116,43,41),(14414,41.016666666666666,6,15117,42,41),(14415,57.613,6,15118,72,55),(14416,58.6891,6,15119,69,55),(14417,65.1448,6,15120,68,52),(14418,63.8316,6,15121,71,55),(14419,56.609,6,15122,68,55),(14420,65.6372,6,15123,75,59),(14421,57.7902,6,15124,68,55),(14422,56.9967,6,15125,73,55),(14423,68.2152,6,15126,75,51),(14424,62.5947,6,15127,67,59),(14425,69.2096,6,15128,70,55),(14426,55.0404,6,15129,70,57),(14427,59.3996,6,15130,74,60),(14428,66.8205,6,15131,69,57),(14429,68.4939,6,15132,65,50),(14430,69.2939,6,15133,75,51),(14431,68.2483,6,15134,75,57),(14432,66.6267,6,15135,66,55),(14433,67.64,6,15136,74,53),(14434,63.8877,6,15137,71,51),(14435,61.5992,6,15138,69,53),(14436,58.1107,6,15139,75,50),(14437,68.1409,6,15140,69,59),(14438,63.7098,6,15141,75,51),(14439,65.8376,6,15142,70,50),(14440,57.1398,6,15143,67,53),(14441,62.6728,6,15144,68,51),(14442,64.6018,6,15145,71,54),(14443,57.4672,6,15146,70,59),(14444,65.8649,6,15147,65,56),(14445,68.4305,6,15148,66,59),(14446,56.3243,6,15149,70,58),(14447,62.8526,6,15150,69,50),(14448,56.6049,6,15151,73,57),(14449,64.1829,6,15152,65,57),(14450,67.8037,6,15153,75,59),(14451,69.2836,6,15154,73,55),(14452,68.6516,6,15155,75,52),(14453,69.7191,6,15156,73,53),(14454,60.856,6,15157,71,60),(14455,65.922,6,15158,73,57),(14456,64.4993,6,15159,72,54),(14457,59.0393,6,15160,75,57),(14458,57.8402,6,15161,74,58),(14459,56.1487,6,15162,65,55),(14460,63.216,6,15163,69,56),(14461,59.1586,6,15164,67,56),(14462,58.0635,6,15165,65,51),(14463,68.2006,6,15166,67,58),(14464,63.3169,6,15167,66,51),(14465,62.5468,6,15168,66,58),(14466,69.0006,6,15169,66,51),(14467,69.5165,6,15170,67,58),(14468,55.4055,6,15171,71,60),(14469,55.3734,6,15172,65,52);
/*!40000 ALTER TABLE `misurazione_umidità` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misurazione_wifi`
--

DROP TABLE IF EXISTS `misurazione_wifi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misurazione_wifi` (
  `idmisurazione_wifi` int(11) NOT NULL AUTO_INCREMENT,
  `stato_antenna` tinyint(4) NOT NULL,
  `report_idreport` int(11) NOT NULL,
  PRIMARY KEY (`idmisurazione_wifi`,`report_idreport`),
  KEY `fk_misurazione_wifi_report1_idx` (`report_idreport`),
  CONSTRAINT `fk_misurazione_wifi_report1` FOREIGN KEY (`report_idreport`) REFERENCES `report` (`idreport`)
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misurazione_wifi`
--

LOCK TABLES `misurazione_wifi` WRITE;
/*!40000 ALTER TABLE `misurazione_wifi` DISABLE KEYS */;
/*!40000 ALTER TABLE `misurazione_wifi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modello`
--

DROP TABLE IF EXISTS `modello`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modello` (
  `idmodello` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `produttore_idproduttore` int(11) NOT NULL,
  PRIMARY KEY (`idmodello`),
  KEY `fk_modello_produttore1_idx` (`produttore_idproduttore`),
  CONSTRAINT `fk_modello_produttore1` FOREIGN KEY (`produttore_idproduttore`) REFERENCES `produttore` (`idproduttore`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modello`
--

LOCK TABLES `modello` WRITE;
/*!40000 ALTER TABLE `modello` DISABLE KEYS */;
INSERT INTO `modello` VALUES (1,'BKL-L09',1),(2,'SM-G935F',2);
/*!40000 ALTER TABLE `modello` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `codice_fiscale` varchar(45) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cognome` varchar(200) NOT NULL,
  `data_nascita` date NOT NULL,
  `numero_telefono` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `luogo_idluogo` int(11) NOT NULL,
  PRIMARY KEY (`idpersona`),
  KEY `fk_persona_luogo1_idx` (`luogo_idluogo`),
  CONSTRAINT `fk_persona_luogo1` FOREIGN KEY (`luogo_idluogo`) REFERENCES `luogo` (`idluogo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (2,'FSNMTT95E13I119N','Matteo','Fasano','1995-05-13','3807519294','matteo.fasano2@studenti.unisalento.it',6),(3,'NGRFNC94C17D862M','Francesco','Negro','1994-03-17','3290653999','Francesco.negro4@studenti.unisalento.it',9),(4,'mariorossi','Mario','Rossi','2001-01-10','1234567890','apollonappollon2019@gmail.com',12),(5,'maurocaiaffa','Mauro','Caiaffa','1995-01-16','123456755','mauro.caiaffa@studenti.unisalento.it',15),(6,'mariorossi','Mario','Rossi','1990-01-18','2583691475','apollonapollon2019@gmail.com',18);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_has_dispositivo`
--

DROP TABLE IF EXISTS `persona_has_dispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_has_dispositivo` (
  `persona_idpersona` int(11) NOT NULL,
  `dispositivo_iddispositivo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_has_dispositivo`
--

LOCK TABLES `persona_has_dispositivo` WRITE;
/*!40000 ALTER TABLE `persona_has_dispositivo` DISABLE KEYS */;
INSERT INTO `persona_has_dispositivo` VALUES (2,'1'),(2,'1'),(2,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(2,'1'),(5,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(3,'1'),(2,'1'),(2,'1'),(6,'1'),(5,'1'),(5,'1'),(6,'1'),(6,'1'),(5,'1'),(5,'1'),(6,'1'),(5,'1'),(6,'1'),(6,'1'),(5,'1'),(6,'1'),(5,'1'),(5,'1'),(5,'1'),(6,'1'),(5,'1'),(5,'1'),(6,'1'),(5,'1'),(6,'1'),(5,'1'),(6,'1'),(5,'1'),(6,'1'),(5,'1'),(6,'1'),(5,'1'),(5,'1'),(5,'1'),(6,'1'),(5,'1'),(6,'1'),(6,'1'),(5,'1'),(5,'1'),(5,'1'),(6,'1'),(6,'1'),(5,'1'),(6,'1'),(6,'1'),(6,'1'),(5,'1'),(5,'1'),(6,'1'),(5,'1'),(5,'1'),(5,'1'),(5,'1'),(5,'1'),(6,'1'),(6,'1'),(5,'1');
/*!40000 ALTER TABLE `persona_has_dispositivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_has_smartphone`
--

DROP TABLE IF EXISTS `persona_has_smartphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_has_smartphone` (
  `persona_idpersona` int(11) NOT NULL,
  `smartphone_idsmartphone` int(11) NOT NULL,
  PRIMARY KEY (`persona_idpersona`,`smartphone_idsmartphone`),
  KEY `fk_persona_has_smartphone_smartphone1_idx` (`smartphone_idsmartphone`),
  KEY `fk_persona_has_smartphone_persona1_idx` (`persona_idpersona`),
  CONSTRAINT `fk_persona_has_smartphone_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`),
  CONSTRAINT `fk_persona_has_smartphone_smartphone1` FOREIGN KEY (`smartphone_idsmartphone`) REFERENCES `smartphone` (`idsmartphone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_has_smartphone`
--

LOCK TABLES `persona_has_smartphone` WRITE;
/*!40000 ALTER TABLE `persona_has_smartphone` DISABLE KEYS */;
INSERT INTO `persona_has_smartphone` VALUES (2,1),(4,1),(5,1),(6,1),(3,2);
/*!40000 ALTER TABLE `persona_has_smartphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produttore`
--

DROP TABLE IF EXISTS `produttore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produttore` (
  `idproduttore` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`idproduttore`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produttore`
--

LOCK TABLES `produttore` WRITE;
/*!40000 ALTER TABLE `produttore` DISABLE KEYS */;
INSERT INTO `produttore` VALUES (1,'HUAWEI'),(2,'samsung');
/*!40000 ALTER TABLE `produttore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `idreport` int(11) NOT NULL AUTO_INCREMENT,
  `data_report` datetime NOT NULL,
  `misurazione_gps_idmisurazione_gps` int(11) NOT NULL,
  `persona_idpersona` int(11) DEFAULT NULL,
  `dispositivo_iddispositivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idreport`),
  KEY `fk_report_misurazione_gps1_idx` (`misurazione_gps_idmisurazione_gps`),
  KEY `fk_report_persona1_idx` (`persona_idpersona`),
  CONSTRAINT `fk_report_misurazione_gps1` FOREIGN KEY (`misurazione_gps_idmisurazione_gps`) REFERENCES `misurazione_gps` (`idmisurazione_gps`),
  CONSTRAINT `fk_report_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=15173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (14704,'2019-12-12 11:01:00',14,2,NULL),(14705,'2019-12-12 11:02:00',14,2,NULL),(14706,'2019-12-12 11:01:00',14,2,NULL),(14707,'2019-12-12 11:02:00',14,2,NULL),(14708,'2019-12-12 11:24:00',14,2,NULL),(14709,'2019-12-12 11:25:00',14,2,NULL),(14710,'2019-12-12 11:26:00',14,2,NULL),(14711,'2019-12-12 11:27:00',14,2,NULL),(14712,'2019-12-12 11:28:00',14,2,NULL),(14713,'2019-12-12 11:29:00',14,2,NULL),(14714,'2019-12-12 11:30:00',14,2,NULL),(14715,'2019-12-12 11:31:00',14,2,NULL),(14716,'2019-12-12 11:32:00',14,2,NULL),(14717,'2019-12-12 11:33:00',14,2,NULL),(14718,'2019-12-12 11:34:00',14,2,NULL),(14719,'2019-12-12 11:35:00',14,2,NULL),(14720,'2019-12-12 11:36:00',14,2,NULL),(14721,'2019-12-12 10:38:00',14,3,NULL),(14722,'2019-12-12 10:56:00',14,3,NULL),(14723,'2019-12-12 13:34:34',14,2,NULL),(14724,'2019-12-12 15:20:18',15,2,NULL),(14725,'2019-12-12 15:21:18',15,2,NULL),(14726,'2019-12-12 15:22:18',15,2,NULL),(14727,'2019-12-12 15:20:18',15,2,NULL),(14728,'2019-12-12 15:21:18',15,2,NULL),(14729,'2019-12-12 15:22:18',15,2,NULL),(14730,'2019-12-12 15:20:18',15,2,NULL),(14731,'2019-12-12 15:21:18',15,2,NULL),(14732,'2019-12-12 15:22:18',15,2,NULL),(14733,'2019-12-13 09:42:46',16,3,NULL),(14734,'2019-12-13 09:42:46',16,3,NULL),(14735,'2019-12-13 09:42:46',16,3,NULL),(14736,'2019-12-13 10:12:55',16,3,NULL),(14737,'2019-12-13 10:13:55',16,3,NULL),(14738,'2019-12-13 10:14:55',16,3,NULL),(14739,'2019-12-13 10:15:55',16,3,NULL),(14740,'2019-12-13 10:16:55',16,3,NULL),(14741,'2019-12-13 10:17:55',16,3,NULL),(14742,'2019-12-13 10:18:55',16,3,NULL),(14743,'2019-12-13 10:19:55',16,3,NULL),(14744,'2019-12-13 10:20:55',16,3,NULL),(14745,'2019-12-13 10:21:55',16,3,NULL),(14746,'2019-12-13 10:22:55',16,3,NULL),(14747,'2019-12-13 10:23:55',16,3,NULL),(14748,'2019-12-13 10:24:55',16,3,NULL),(14749,'2019-12-13 10:25:55',16,3,NULL),(14750,'2019-12-13 10:26:55',16,3,NULL),(14751,'2019-12-13 10:27:55',16,3,NULL),(14752,'2019-12-13 10:28:55',16,3,NULL),(14753,'2019-12-13 10:12:55',16,3,NULL),(14754,'2019-12-13 10:13:55',16,3,NULL),(14755,'2019-12-13 10:14:55',16,3,NULL),(14756,'2019-12-13 10:15:55',16,3,NULL),(14757,'2019-12-13 10:16:55',16,3,NULL),(14758,'2019-12-13 10:17:55',16,3,NULL),(14759,'2019-12-13 10:18:55',16,3,NULL),(14760,'2019-12-13 10:19:55',16,3,NULL),(14761,'2019-12-13 10:20:55',16,3,NULL),(14762,'2019-12-13 10:21:55',16,3,NULL),(14763,'2019-12-13 10:22:55',16,3,NULL),(14764,'2019-12-13 10:23:55',16,3,NULL),(14765,'2019-12-13 10:24:55',16,3,NULL),(14766,'2019-12-13 10:25:55',16,3,NULL),(14767,'2019-12-13 10:26:55',16,3,NULL),(14768,'2019-12-13 10:27:55',16,3,NULL),(14769,'2019-12-13 10:28:55',16,3,NULL),(14770,'2019-12-13 11:27:44',16,2,NULL),(14771,'2019-12-13 11:28:44',16,2,NULL),(14772,'2019-12-13 11:30:40',16,2,NULL),(14773,'2019-12-13 11:31:40',16,2,NULL),(14774,'2019-12-13 11:32:40',16,2,NULL),(14775,'2019-12-13 11:27:44',16,2,NULL),(14776,'2019-12-13 11:28:44',16,2,NULL),(14777,'2019-12-13 11:30:40',16,2,NULL),(14778,'2019-12-13 11:31:40',16,2,NULL),(14779,'2019-12-13 11:32:40',16,2,NULL),(14780,'2019-12-13 16:46:17',17,2,NULL),(14781,'2019-12-13 16:47:17',17,2,NULL),(14782,'2019-12-13 16:46:17',17,2,NULL),(14783,'2019-12-13 16:47:17',17,2,NULL),(14784,'2019-12-14 10:13:18',18,2,NULL),(14785,'2019-12-14 10:14:18',18,2,NULL),(14786,'2019-12-14 10:15:18',18,2,NULL),(14787,'2019-12-14 10:16:18',18,2,NULL),(14788,'2019-12-14 10:17:18',18,2,NULL),(14789,'2019-12-14 10:13:18',18,2,NULL),(14790,'2019-12-14 10:14:18',18,2,NULL),(14791,'2019-12-14 10:15:18',18,2,NULL),(14792,'2019-12-14 10:16:18',18,2,NULL),(14793,'2019-12-14 10:17:18',18,2,NULL),(14794,'2019-12-14 10:13:18',18,2,NULL),(14795,'2019-12-14 10:14:18',18,2,NULL),(14796,'2019-12-14 10:15:18',18,2,NULL),(14797,'2019-12-14 10:16:18',18,2,NULL),(14798,'2019-12-14 10:17:18',18,2,NULL),(14799,'2019-12-18 11:11:06',19,2,NULL),(14800,'2019-12-18 11:21:25',19,2,NULL),(14801,'2019-12-18 11:22:25',19,2,NULL),(14802,'2019-12-18 11:23:25',19,2,NULL),(14803,'2019-12-18 11:24:25',19,2,NULL),(14804,'2019-12-18 11:25:25',19,2,NULL),(14805,'2019-12-18 11:11:06',19,2,NULL),(14806,'2019-12-18 11:21:25',19,2,NULL),(14807,'2019-12-18 11:22:25',19,2,NULL),(14808,'2019-12-18 11:23:25',19,2,NULL),(14809,'2019-12-18 11:24:25',19,2,NULL),(14810,'2019-12-18 11:25:25',19,2,NULL),(14811,'2019-12-18 11:11:06',19,2,NULL),(14812,'2019-12-18 11:21:25',19,2,NULL),(14813,'2019-12-18 11:22:25',19,2,NULL),(14814,'2019-12-18 11:23:25',19,2,NULL),(14815,'2019-12-18 11:24:25',19,2,NULL),(14816,'2019-12-18 11:25:25',19,2,NULL),(14817,'2019-12-18 16:08:34',20,2,NULL),(14818,'2019-12-18 16:33:15',20,2,NULL),(14819,'2019-12-18 16:08:34',20,2,NULL),(14820,'2019-12-18 16:33:15',20,2,NULL),(14821,'2019-12-18 17:54:25',21,2,NULL),(14822,'2019-12-18 17:54:25',21,2,NULL),(14823,'2019-12-19 10:49:10',22,2,NULL),(14824,'2019-12-19 10:50:10',22,2,NULL),(14825,'2019-12-19 10:53:16',22,2,NULL),(14826,'2019-12-19 10:54:16',22,2,NULL),(14827,'2019-12-19 10:55:16',22,2,NULL),(14828,'2019-12-19 10:49:10',22,2,NULL),(14829,'2019-12-19 10:50:10',22,2,NULL),(14830,'2019-12-19 10:53:16',22,2,NULL),(14831,'2019-12-19 10:54:16',22,2,NULL),(14832,'2019-12-19 10:55:16',22,2,NULL),(14833,'2019-12-19 12:34:52',22,2,NULL),(14834,'2019-12-19 12:35:52',22,2,NULL),(14835,'2019-12-19 12:48:37',22,2,NULL),(14836,'2019-12-19 12:58:00',22,2,NULL),(14837,'2019-12-19 12:34:52',22,2,NULL),(14838,'2019-12-19 12:35:52',22,2,NULL),(14839,'2019-12-19 12:48:37',22,2,NULL),(14840,'2019-12-19 12:58:00',22,2,NULL),(14841,'2019-12-19 12:59:00',22,2,NULL),(14842,'2019-12-19 17:30:42',23,2,NULL),(14843,'2019-12-20 10:49:08',24,3,NULL),(14844,'2019-12-20 10:50:08',24,3,NULL),(14845,'2019-12-20 10:51:08',24,3,NULL),(14846,'2019-12-20 10:52:08',24,3,NULL),(14847,'2019-12-20 10:53:08',24,3,NULL),(14848,'2019-12-20 10:54:08',24,3,NULL),(14849,'2019-12-20 10:55:08',24,3,NULL),(14850,'2019-12-20 10:56:08',24,3,NULL),(14851,'2019-12-20 10:57:08',24,3,NULL),(14852,'2019-12-20 10:58:08',24,3,NULL),(14853,'2019-12-20 10:49:08',24,3,NULL),(14854,'2019-12-20 10:50:08',24,3,NULL),(14855,'2019-12-20 10:51:08',24,3,NULL),(14856,'2019-12-20 10:52:08',24,3,NULL),(14857,'2019-12-20 10:53:08',24,3,NULL),(14858,'2019-12-20 10:54:08',24,3,NULL),(14859,'2019-12-20 10:55:08',24,3,NULL),(14860,'2019-12-20 10:56:08',24,3,NULL),(14861,'2019-12-20 10:57:08',24,3,NULL),(14862,'2019-12-20 10:58:08',24,3,NULL),(14863,'2020-01-02 17:35:35',25,2,1),(14864,'2020-01-07 12:07:04',26,3,1),(14865,'2020-01-07 12:08:04',26,3,1),(14866,'2020-01-07 12:09:04',26,3,1),(14867,'2020-01-07 12:10:04',26,3,1),(14868,'2020-01-07 12:11:04',26,3,1),(14869,'2020-01-07 12:12:04',26,3,1),(14870,'2020-01-07 12:07:04',26,3,1),(14871,'2020-01-07 12:08:04',26,3,1),(14872,'2020-01-07 12:09:04',26,3,1),(14873,'2020-01-07 12:10:04',26,3,1),(14874,'2020-01-07 12:11:04',26,3,1),(14875,'2020-01-07 12:12:04',26,3,1),(14876,'2020-01-07 12:07:04',26,3,1),(14877,'2020-01-07 12:08:04',26,3,1),(14878,'2020-01-07 12:09:04',26,3,1),(14879,'2020-01-07 12:10:04',26,3,1),(14880,'2020-01-07 12:11:04',26,3,1),(14881,'2020-01-07 12:12:04',26,3,1),(14882,'2020-01-07 15:52:07',27,2,1),(14883,'2020-01-07 15:53:06',27,2,1),(14884,'2020-01-07 15:52:07',27,2,1),(14885,'2020-01-07 15:53:06',27,2,1),(14886,'2019-12-12 11:01:00',14,2,1),(14887,'2019-12-12 11:02:00',14,2,1),(14888,'2019-12-12 11:24:00',14,2,1),(14889,'2019-12-12 11:25:00',14,2,1),(14890,'2019-12-12 11:26:00',14,2,1),(14891,'2019-12-12 11:27:00',14,2,1),(14892,'2019-12-12 11:28:00',14,2,1),(14893,'2019-12-12 11:29:00',14,2,1),(14894,'2019-12-12 11:30:00',14,2,1),(14895,'2019-12-12 11:31:00',14,2,1),(14896,'2019-12-12 11:32:00',14,2,1),(14897,'2019-12-12 11:33:00',14,2,1),(14898,'2019-12-12 11:34:00',14,2,1),(14899,'2019-12-12 11:35:00',14,2,1),(14900,'2019-12-12 11:36:00',14,2,1),(14901,'2019-12-12 10:38:00',14,3,1),(14902,'2019-12-12 10:56:00',14,3,1),(14903,'2019-12-12 12:15:32',14,3,1),(14904,'2019-12-12 12:16:32',14,3,1),(14905,'2019-12-12 12:17:32',14,3,1),(14906,'2019-12-12 12:18:32',14,3,1),(14907,'2019-12-12 12:30:06',14,2,1),(14908,'2019-12-12 11:32:08',14,2,1),(14909,'2019-12-12 13:34:34',14,2,1),(14910,'2019-12-12 13:35:34',14,2,1),(14911,'2019-12-12 13:36:34',14,2,1),(14912,'2019-12-12 13:37:34',14,2,1),(14913,'2019-12-12 13:38:34',14,2,1),(14914,'2019-12-12 15:20:18',15,2,1),(14915,'2019-12-12 15:21:18',15,2,1),(14916,'2019-12-12 15:22:18',15,2,1),(14917,'2019-12-13 09:42:46',16,3,1),(14918,'2019-12-13 10:12:55',16,3,1),(14919,'2019-12-13 10:13:55',16,3,1),(14920,'2019-12-13 10:14:55',16,3,1),(14921,'2019-12-13 10:15:55',16,3,1),(14922,'2019-12-13 10:16:55',16,3,1),(14923,'2019-12-13 10:17:55',16,3,1),(14924,'2019-12-13 10:18:55',16,3,1),(14925,'2019-12-13 10:19:55',16,3,1),(14926,'2019-12-13 10:20:55',16,3,1),(14927,'2019-12-13 10:21:55',16,3,1),(14928,'2019-12-13 10:22:55',16,3,1),(14929,'2019-12-13 10:23:55',16,3,1),(14930,'2019-12-13 10:24:55',16,3,1),(14931,'2019-12-13 10:25:55',16,3,1),(14932,'2019-12-13 10:26:55',16,3,1),(14933,'2019-12-13 10:27:55',16,3,1),(14934,'2019-12-13 10:28:55',16,3,1),(14935,'2019-12-13 11:27:44',16,2,1),(14936,'2019-12-13 11:28:44',16,2,1),(14937,'2019-12-13 11:30:40',16,2,1),(14938,'2019-12-13 11:31:40',16,2,1),(14939,'2019-12-13 11:32:40',16,2,1),(14940,'2019-12-13 13:12:57',28,3,1),(14941,'2019-12-13 13:13:57',28,3,1),(14942,'2019-12-13 13:14:57',28,3,1),(14943,'2019-12-13 13:15:57',28,3,1),(14944,'2019-12-13 13:16:57',28,3,1),(14945,'2019-12-13 13:17:57',28,3,1),(14946,'2019-12-13 16:46:17',17,2,1),(14947,'2019-12-13 16:47:17',17,2,1),(14948,'2019-12-13 17:36:11',17,2,1),(14949,'2019-12-13 17:37:11',17,2,1),(14950,'2019-12-14 10:13:18',18,2,1),(14951,'2019-12-14 10:14:18',18,2,1),(14952,'2019-12-14 10:15:18',18,2,1),(14953,'2019-12-14 10:16:18',18,2,1),(14954,'2019-12-14 10:17:18',18,2,1),(14955,'2019-12-18 11:11:06',19,2,1),(14956,'2019-12-18 11:21:25',19,2,1),(14957,'2019-12-18 11:22:25',19,2,1),(14958,'2019-12-18 11:23:25',19,2,1),(14959,'2019-12-18 11:24:25',19,2,1),(14960,'2019-12-18 11:25:25',19,2,1),(14961,'2019-12-18 16:08:34',20,2,1),(14962,'2019-12-18 16:33:15',20,2,1),(14963,'2019-12-18 17:54:25',21,2,1),(14964,'2019-12-18 18:10:16',21,2,1),(14965,'2019-12-18 18:18:48',21,2,1),(14966,'2019-12-19 10:49:10',22,2,1),(14967,'2019-12-19 10:50:10',22,2,1),(14968,'2019-12-19 10:53:16',22,2,1),(14969,'2019-12-19 10:54:16',22,2,1),(14970,'2019-12-19 10:55:16',22,2,1),(14971,'2019-12-19 12:34:52',22,2,1),(14972,'2019-12-19 12:35:52',22,2,1),(14973,'2019-12-19 12:48:37',22,2,1),(14974,'2019-12-19 12:58:00',22,2,1),(14975,'2019-12-19 12:59:00',22,2,1),(14976,'2019-12-19 13:00:00',22,2,1),(14977,'2019-12-19 13:02:01',22,2,1),(14978,'2019-12-19 13:03:01',22,2,1),(14979,'2019-12-19 13:27:00',22,2,1),(14980,'2019-12-19 13:30:33',22,2,1),(14981,'2019-12-19 13:34:44',22,2,1),(14982,'2019-12-19 17:30:42',23,2,1),(14983,'2019-12-20 10:49:08',24,3,1),(14984,'2019-12-20 10:50:08',24,3,1),(14985,'2019-12-20 10:51:08',24,3,1),(14986,'2019-12-20 10:52:08',24,3,1),(14987,'2019-12-20 10:53:08',24,3,1),(14988,'2019-12-20 10:54:08',24,3,1),(14989,'2019-12-20 10:55:08',24,3,1),(14990,'2019-12-20 10:56:08',24,3,1),(14991,'2019-12-20 10:57:08',24,3,1),(14992,'2019-12-20 10:58:08',24,3,1),(14993,'2020-01-02 17:35:35',25,2,1),(14994,'2020-01-07 12:07:04',26,3,1),(14995,'2020-01-07 12:08:04',26,3,1),(14996,'2020-01-07 12:09:04',26,3,1),(14997,'2020-01-07 12:10:04',26,3,1),(14998,'2020-01-07 12:11:04',26,3,1),(14999,'2020-01-07 12:12:04',26,3,1),(15000,'2020-01-07 15:52:07',27,2,1),(15001,'2020-01-07 15:53:06',27,2,1),(15002,'2019-12-12 11:01:00',14,2,1),(15003,'2019-12-12 11:02:00',14,2,1),(15004,'2019-12-12 11:24:00',14,2,1),(15005,'2019-12-12 11:25:00',14,2,1),(15006,'2019-12-12 11:26:00',14,2,1),(15007,'2019-12-12 11:27:00',14,2,1),(15008,'2019-12-12 11:28:00',14,2,1),(15009,'2019-12-12 11:29:00',14,2,1),(15010,'2019-12-12 11:30:00',14,2,1),(15011,'2019-12-12 11:31:00',14,2,1),(15012,'2019-12-12 11:32:00',14,2,1),(15013,'2019-12-12 11:33:00',14,2,1),(15014,'2019-12-12 11:34:00',14,2,1),(15015,'2019-12-12 11:35:00',14,2,1),(15016,'2019-12-12 11:36:00',14,2,1),(15017,'2019-12-12 10:38:00',14,3,1),(15018,'2019-12-12 10:56:00',14,3,1),(15019,'2019-12-12 12:15:32',14,3,1),(15020,'2019-12-12 12:16:32',14,3,1),(15021,'2019-12-12 12:17:32',14,3,1),(15022,'2019-12-12 12:18:32',14,3,1),(15023,'2019-12-12 12:30:06',14,2,1),(15024,'2019-12-12 11:32:08',14,2,1),(15025,'2019-12-12 13:34:34',14,2,1),(15026,'2019-12-12 13:35:34',14,2,1),(15027,'2019-12-12 13:36:34',14,2,1),(15028,'2019-12-12 13:37:34',14,2,1),(15029,'2019-12-12 13:38:34',14,2,1),(15030,'2019-12-12 15:20:18',15,2,1),(15031,'2019-12-12 15:21:18',15,2,1),(15032,'2019-12-12 15:22:18',15,2,1),(15033,'2019-12-13 09:42:46',16,3,1),(15034,'2019-12-13 10:12:55',16,3,1),(15035,'2019-12-13 10:13:55',16,3,1),(15036,'2019-12-13 10:14:55',16,3,1),(15037,'2019-12-13 10:15:55',16,3,1),(15038,'2019-12-13 10:16:55',16,3,1),(15039,'2019-12-13 10:17:55',16,3,1),(15040,'2019-12-13 10:18:55',16,3,1),(15041,'2019-12-13 10:19:55',16,3,1),(15042,'2019-12-13 10:20:55',16,3,1),(15043,'2019-12-13 10:21:55',16,3,1),(15044,'2019-12-13 10:22:55',16,3,1),(15045,'2019-12-13 10:23:55',16,3,1),(15046,'2019-12-13 10:24:55',16,3,1),(15047,'2019-12-13 10:25:55',16,3,1),(15048,'2019-12-13 10:26:55',16,3,1),(15049,'2019-12-13 10:27:55',16,3,1),(15050,'2019-12-13 10:28:55',16,3,1),(15051,'2019-12-13 11:27:44',16,2,1),(15052,'2019-12-13 11:28:44',16,2,1),(15053,'2019-12-13 11:30:40',16,2,1),(15054,'2019-12-13 11:31:40',16,2,1),(15055,'2019-12-13 11:32:40',16,2,1),(15056,'2019-12-13 13:12:57',28,3,1),(15057,'2019-12-13 13:13:57',28,3,1),(15058,'2019-12-13 13:14:57',28,3,1),(15059,'2019-12-13 13:15:57',28,3,1),(15060,'2019-12-13 13:16:57',28,3,1),(15061,'2019-12-13 13:17:57',28,3,1),(15062,'2019-12-13 16:46:17',17,2,1),(15063,'2019-12-13 16:47:17',17,2,1),(15064,'2019-12-13 17:36:11',17,2,1),(15065,'2019-12-13 17:37:11',17,2,1),(15066,'2019-12-14 10:13:18',18,2,1),(15067,'2019-12-14 10:14:18',18,2,1),(15068,'2019-12-14 10:15:18',18,2,1),(15069,'2019-12-14 10:16:18',18,2,1),(15070,'2019-12-14 10:17:18',18,2,1),(15071,'2019-12-18 11:11:06',19,2,1),(15072,'2019-12-18 11:21:25',19,2,1),(15073,'2019-12-18 11:22:25',19,2,1),(15074,'2019-12-18 11:23:25',19,2,1),(15075,'2019-12-18 11:24:25',19,2,1),(15076,'2019-12-18 11:25:25',19,2,1),(15077,'2019-12-18 16:08:34',20,2,1),(15078,'2019-12-18 16:33:15',20,2,1),(15079,'2019-12-18 17:54:25',21,2,1),(15080,'2019-12-18 18:10:16',21,2,1),(15081,'2019-12-18 18:18:48',21,2,1),(15082,'2019-12-19 10:49:10',22,2,1),(15083,'2019-12-19 10:50:10',22,2,1),(15084,'2019-12-19 10:53:16',22,2,1),(15085,'2019-12-19 10:54:16',22,2,1),(15086,'2019-12-19 10:55:16',22,2,1),(15087,'2019-12-19 12:34:52',22,2,1),(15088,'2019-12-19 12:35:52',22,2,1),(15089,'2019-12-19 12:48:37',22,2,1),(15090,'2019-12-19 12:58:00',22,2,1),(15091,'2019-12-19 12:59:00',22,2,1),(15092,'2019-12-19 13:00:00',22,2,1),(15093,'2019-12-19 13:02:01',22,2,1),(15094,'2019-12-19 13:03:01',22,2,1),(15095,'2019-12-19 13:27:00',22,2,1),(15096,'2019-12-19 13:30:33',22,2,1),(15097,'2019-12-19 13:34:44',22,2,1),(15098,'2019-12-19 17:30:42',23,2,1),(15099,'2019-12-20 10:49:08',24,3,1),(15100,'2019-12-20 10:50:08',24,3,1),(15101,'2019-12-20 10:51:08',24,3,1),(15102,'2019-12-20 10:52:08',24,3,1),(15103,'2019-12-20 10:53:08',24,3,1),(15104,'2019-12-20 10:54:08',24,3,1),(15105,'2019-12-20 10:55:08',24,3,1),(15106,'2019-12-20 10:56:08',24,3,1),(15107,'2019-12-20 10:57:08',24,3,1),(15108,'2019-12-20 10:58:08',24,3,1),(15109,'2020-01-02 17:35:35',25,2,1),(15110,'2020-01-07 12:07:04',26,3,1),(15111,'2020-01-07 12:08:04',26,3,1),(15112,'2020-01-07 12:09:04',26,3,1),(15113,'2020-01-07 12:10:04',26,3,1),(15114,'2020-01-07 12:11:04',26,3,1),(15115,'2020-01-07 12:12:04',26,3,1),(15116,'2020-01-07 15:52:07',27,2,1),(15117,'2020-01-07 15:53:06',27,2,1),(15118,'2020-01-16 16:59:05',30,6,1),(15119,'2020-01-16 16:49:19',31,5,1),(15120,'2020-01-16 16:36:37',32,5,1),(15121,'2020-01-16 16:39:28',33,6,1),(15122,'2020-01-16 16:39:33',34,6,1),(15123,'2020-01-16 16:30:29',35,5,1),(15124,'2020-01-16 16:54:56',36,5,1),(15125,'2020-01-16 16:37:18',37,6,1),(15126,'2020-01-16 17:12:17',38,5,1),(15127,'2020-01-16 17:08:19',39,6,1),(15128,'2020-01-16 16:31:52',40,6,1),(15129,'2020-01-16 16:37:33',41,5,1),(15130,'2020-01-16 17:12:41',42,6,1),(15131,'2020-01-16 16:54:57',43,5,1),(15132,'2020-01-16 17:10:52',44,5,1),(15133,'2020-01-16 17:05:24',45,5,1),(15134,'2020-01-16 16:49:02',46,6,1),(15135,'2020-01-16 16:49:56',47,5,1),(15136,'2020-01-16 16:38:39',48,5,1),(15137,'2020-01-16 16:48:55',49,6,1),(15138,'2020-01-16 17:02:45',50,5,1),(15139,'2020-01-16 16:48:10',51,6,1),(15140,'2020-01-16 16:51:59',52,5,1),(15141,'2020-01-16 17:12:00',53,6,1),(15142,'2020-01-16 17:02:41',54,5,1),(15143,'2020-01-16 17:01:54',55,6,1),(15144,'2020-01-16 16:44:26',56,5,1),(15145,'2020-01-16 16:38:05',57,6,1),(15146,'2020-01-16 17:02:30',58,5,1),(15147,'2020-01-16 16:32:02',59,5,1),(15148,'2020-01-16 17:09:47',60,5,1),(15149,'2020-01-16 16:44:18',61,6,1),(15150,'2020-01-16 16:58:57',62,5,1),(15151,'2020-01-16 17:03:16',63,6,1),(15152,'2020-01-16 16:52:33',64,6,1),(15153,'2020-01-16 17:07:38',65,5,1),(15154,'2020-01-16 16:41:28',66,5,1),(15155,'2020-01-16 17:09:26',67,5,1),(15156,'2020-01-16 16:39:29',68,6,1),(15157,'2020-01-16 16:44:33',69,6,1),(15158,'2020-01-16 16:56:40',70,5,1),(15159,'2020-01-16 16:33:38',71,6,1),(15160,'2020-01-16 16:41:58',72,6,1),(15161,'2020-01-16 17:10:54',73,6,1),(15162,'2020-01-16 16:42:16',74,5,1),(15163,'2020-01-16 16:47:57',75,5,1),(15164,'2020-01-16 17:08:15',76,6,1),(15165,'2020-01-16 16:32:16',77,5,1),(15166,'2020-01-16 16:50:12',78,5,1),(15167,'2020-01-16 17:12:40',79,5,1),(15168,'2020-01-16 16:46:38',80,5,1),(15169,'2020-01-16 16:42:10',81,5,1),(15170,'2020-01-16 16:37:02',82,6,1),(15171,'2020-01-16 17:04:30',83,6,1),(15172,'2020-01-16 16:48:13',84,5,1);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rete`
--

DROP TABLE IF EXISTS `rete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rete` (
  `idrete` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `generazione_idgenerazione` int(11) NOT NULL,
  PRIMARY KEY (`idrete`),
  KEY `fk_rete_generazione1_idx` (`generazione_idgenerazione`),
  CONSTRAINT `fk_rete_generazione1` FOREIGN KEY (`generazione_idgenerazione`) REFERENCES `generazione` (`idgenerazione`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rete`
--

LOCK TABLES `rete` WRITE;
/*!40000 ALTER TABLE `rete` DISABLE KEYS */;
INSERT INTO `rete` VALUES (1,'LTE',1);
/*!40000 ALTER TABLE `rete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rete_wifi`
--

DROP TABLE IF EXISTS `rete_wifi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rete_wifi` (
  `idrete_wifi` int(11) NOT NULL AUTO_INCREMENT,
  `SSID` varchar(200) NOT NULL,
  `valore` float NOT NULL,
  `unita_misura_idunita_misura` int(11) NOT NULL,
  `frequenza_idfrequenza` int(11) NOT NULL,
  `misurazione_wifi_idmisurazione_wifi` int(11) NOT NULL,
  PRIMARY KEY (`idrete_wifi`,`misurazione_wifi_idmisurazione_wifi`),
  KEY `fk_rete_wifi_frequenza1_idx` (`frequenza_idfrequenza`),
  KEY `fk_rete_wifi_misurazione_wifi1_idx` (`misurazione_wifi_idmisurazione_wifi`),
  KEY `fk_rete_wifi_unita_misura1_idx` (`unita_misura_idunita_misura`),
  CONSTRAINT `fk_rete_wifi_frequenza1` FOREIGN KEY (`frequenza_idfrequenza`) REFERENCES `frequenza` (`idfrequenza`),
  CONSTRAINT `fk_rete_wifi_misurazione_wifi1` FOREIGN KEY (`misurazione_wifi_idmisurazione_wifi`) REFERENCES `misurazione_wifi` (`idmisurazione_wifi`),
  CONSTRAINT `fk_rete_wifi_unita_misura1` FOREIGN KEY (`unita_misura_idunita_misura`) REFERENCES `unita_misura` (`idunita_misura`)
) ENGINE=InnoDB AUTO_INCREMENT=6025 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rete_wifi`
--

LOCK TABLES `rete_wifi` WRITE;
/*!40000 ALTER TABLE `rete_wifi` DISABLE KEYS */;
/*!40000 ALTER TABLE `rete_wifi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smartphone`
--

DROP TABLE IF EXISTS `smartphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smartphone` (
  `idsmartphone` int(11) NOT NULL AUTO_INCREMENT,
  `imei` varchar(45) NOT NULL,
  `modello_idmodello` int(11) NOT NULL,
  PRIMARY KEY (`idsmartphone`),
  KEY `fk_smartphone_modello1_idx` (`modello_idmodello`),
  CONSTRAINT `fk_smartphone_modello1` FOREIGN KEY (`modello_idmodello`) REFERENCES `modello` (`idmodello`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smartphone`
--

LOCK TABLES `smartphone` WRITE;
/*!40000 ALTER TABLE `smartphone` DISABLE KEYS */;
INSERT INTO `smartphone` VALUES (1,'866955033025048',1),(2,'357330074989708',2);
/*!40000 ALTER TABLE `smartphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_rete`
--

DROP TABLE IF EXISTS `tipo_rete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_rete` (
  `idtipo_rete` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_rete`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_rete`
--

LOCK TABLES `tipo_rete` WRITE;
/*!40000 ALTER TABLE `tipo_rete` DISABLE KEYS */;
INSERT INTO `tipo_rete` VALUES (1,'Voce'),(2,'Dati');
/*!40000 ALTER TABLE `tipo_rete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unita_misura`
--

DROP TABLE IF EXISTS `unita_misura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unita_misura` (
  `idunita_misura` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`idunita_misura`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unita_misura`
--

LOCK TABLES `unita_misura` WRITE;
/*!40000 ALTER TABLE `unita_misura` DISABLE KEYS */;
INSERT INTO `unita_misura` VALUES (1,'μT'),(2,'dBm'),(3,'MHz'),(4,'micrograms per cubic meter'),(5,'degrees Fahrenheit'),(6,'percent'),(7,'degree Fahrenheit');
/*!40000 ALTER TABLE `unita_misura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `coordinate_zoom1`
--

/*!50001 DROP VIEW IF EXISTS `coordinate_zoom1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `coordinate_zoom1` AS select `misurazione_gps`.`idmisurazione_gps` AS `idmisurazione_gps`,round(`misurazione_gps`.`latitudine`,-(1)) AS `latitudine`,round(`misurazione_gps`.`longitudine`,-(1)) AS `longitudine` from `misurazione_gps` where `misurazione_gps`.`idmisurazione_gps` in (select min(`misurazione_gps`.`idmisurazione_gps`) from `misurazione_gps` group by round(`misurazione_gps`.`latitudine`,-(1)),round(`misurazione_gps`.`longitudine`,-(1))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `coordinate_zoom2`
--

/*!50001 DROP VIEW IF EXISTS `coordinate_zoom2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `coordinate_zoom2` AS select `misurazione_gps`.`idmisurazione_gps` AS `idmisurazione_gps`,round(`misurazione_gps`.`latitudine`,1) AS `latitudine`,round(`misurazione_gps`.`longitudine`,1) AS `longitudine` from `misurazione_gps` where `misurazione_gps`.`idmisurazione_gps` in (select min(`misurazione_gps`.`idmisurazione_gps`) from `misurazione_gps` group by round(`misurazione_gps`.`latitudine`,1),round(`misurazione_gps`.`longitudine`,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `coordinate_zoom3`
--

/*!50001 DROP VIEW IF EXISTS `coordinate_zoom3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `coordinate_zoom3` AS select `misurazione_gps`.`idmisurazione_gps` AS `idmisurazione_gps`,round(`misurazione_gps`.`latitudine`,3) AS `latitudine`,round(`misurazione_gps`.`longitudine`,3) AS `longitudine` from `misurazione_gps` where `misurazione_gps`.`idmisurazione_gps` in (select min(`misurazione_gps`.`idmisurazione_gps`) from `misurazione_gps` group by round(`misurazione_gps`.`latitudine`,3),round(`misurazione_gps`.`longitudine`,3)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `coordinate_zoom4`
--

/*!50001 DROP VIEW IF EXISTS `coordinate_zoom4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `coordinate_zoom4` AS select `misurazione_gps`.`idmisurazione_gps` AS `idmisurazione_gps`,round(`misurazione_gps`.`latitudine`,5) AS `latitudine`,round(`misurazione_gps`.`longitudine`,5) AS `longitudine` from `misurazione_gps` where `misurazione_gps`.`idmisurazione_gps` in (select min(`misurazione_gps`.`idmisurazione_gps`) from `misurazione_gps` group by round(`misurazione_gps`.`latitudine`,5),round(`misurazione_gps`.`longitudine`,5)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom1_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom1_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom1_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom1_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom1_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom1_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom1_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom1_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom1_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom2_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom2_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom2_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom2_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom2_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom2_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom2_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom2_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom2_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom3_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom3_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom3_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom3_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom3_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom3_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom3_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom3_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom3_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom4_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom4_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom4_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom4_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom4_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom4_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_anno_zoom4_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_anno_zoom4_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_anno_zoom4_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom1_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom1_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom1_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom1_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom1_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom1_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom1_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom1_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom1_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom2_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom2_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom2_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom2_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom2_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom2_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom2_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom2_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom2_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom3_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom3_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom3_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom3_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom3_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom3_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom3_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom3_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom3_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM25') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom4_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom4_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom4_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom4_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom4_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom4_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_giorno_zoom4_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_giorno_zoom4_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_giorno_zoom4_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom1_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom1_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom1_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom1_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom1_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom1_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom1_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom1_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom1_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom2_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom2_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom2_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom2_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom2_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom2_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom2_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom2_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom2_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom3_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom3_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom3_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom3_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom3_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom3_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom3_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom3_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom3_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM25') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom4_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom4_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom4_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom4_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom4_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom4_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_mese_zoom4_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_mese_zoom4_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_mese_zoom4_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom1_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom1_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom1_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom1_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom1_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom1_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom1_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom1_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom1_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom2_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom2_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom2_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom2_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom2_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom2_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom2_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom2_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom2_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom3_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom3_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom3_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom3_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom3_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom3_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom3_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom3_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom3_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM25') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom4_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom4_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom4_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom4_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom4_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom4_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_ora_zoom4_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_ora_zoom4_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_ora_zoom4_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,`view`.`data` AS `data`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,date_format(`report`.`data_report`,'%Y-%m-%d %k:00:00') AS `data`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by date_format(`report`.`data_report`,'%Y-%m-%d %k'),`coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` order by date_format(`view`.`data`,'%Y-%m-%d %H:%i:%S') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom1_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom1_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom1_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by `coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom1_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom1_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom1_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by `coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom1_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom1_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom1_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom1`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom1`.`latitudine` AS `latitudine`,`coordinate_zoom1`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom1` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,-(1)) = `coordinate_zoom1`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,-(1)) = `coordinate_zoom1`.`longitudine`)) group by `coordinate_zoom1`.`latitudine`,`coordinate_zoom1`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom2_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom2_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom2_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by `coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom2_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom2_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom2_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by `coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom2_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom2_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom2_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom2`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom2`.`latitudine` AS `latitudine`,`coordinate_zoom2`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom2` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,1) = `coordinate_zoom2`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,1) = `coordinate_zoom2`.`longitudine`)) group by `coordinate_zoom2`.`latitudine`,`coordinate_zoom2`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom3_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom3_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom3_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by `coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom3_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom3_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom3_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by `coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom3_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom3_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom3_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom3`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom3`.`latitudine` AS `latitudine`,`coordinate_zoom3`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom3` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,3) = `coordinate_zoom3`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,3) = `coordinate_zoom3`.`longitudine`)) group by `coordinate_zoom3`.`latitudine`,`coordinate_zoom3`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom4_pm1`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom4_pm1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom4_pm1` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM1') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by `coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom4_pm10`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom4_pm10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom4_pm10` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM10') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by `coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `media_zoom4_pm25`
--

/*!50001 DROP VIEW IF EXISTS `media_zoom4_pm25`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `media_zoom4_pm25` AS select `view`.`idmisurazione_gps` AS `idmisurazione_gps`,`view`.`latitudine` AS `latitudine`,`view`.`longitudine` AS `longitudine`,`view`.`media` AS `media`,round(((`view`.`media` - `view`.`minimo`) / (`view`.`massimo` - `view`.`minimo`)),2) AS `weight` from (select `coordinate_zoom4`.`idmisurazione_gps` AS `idmisurazione_gps`,`coordinate_zoom4`.`latitudine` AS `latitudine`,`coordinate_zoom4`.`longitudine` AS `longitudine`,avg(`misurazione_pm`.`valore`) AS `media`,max(`misurazione_pm`.`valore`) AS `massimo`,min(`misurazione_pm`.`valore`) AS `minimo` from (((`coordinate_zoom4` join `misurazione_gps`) join `misurazione_pm`) join `report`) where ((`misurazione_pm`.`pm_type` = 'PM2.5') and (`report`.`idreport` = `misurazione_pm`.`report_idreport`) and (`report`.`misurazione_gps_idmisurazione_gps` = `misurazione_gps`.`idmisurazione_gps`) and (round(`misurazione_gps`.`latitudine`,5) = `coordinate_zoom4`.`latitudine`) and (round(`misurazione_gps`.`longitudine`,5) = `coordinate_zoom4`.`longitudine`)) group by `coordinate_zoom4`.`latitudine`,`coordinate_zoom4`.`longitudine`) `view` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-16 18:16:27
