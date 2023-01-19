CREATE DATABASE  IF NOT EXISTS `weskan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `weskan`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: weskan
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
-- Table structure for table `aplicaciones`
--

DROP TABLE IF EXISTS `aplicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicaciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(25) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicaciones`
--

LOCK TABLES `aplicaciones` WRITE;
/*!40000 ALTER TABLE `aplicaciones` DISABLE KEYS */;
INSERT INTO `aplicaciones` VALUES (1,'FIAT','Mod. 600/750'),(2,'FIAT','Mot. 1100cc/1300cc- Mod. 128 / 147'),(3,'FIAT','Mot. 700-800'),(4,'FIAT','Mod. Tractor 180-D90'),(5,'FIAT','Mod. Ducato - Daily - 2,5D - 2,5TD - Mot. 8140'),(6,'HONDA','Mod. CRV -16v'),(7,'ISUZU','Mot 4BD/6BD1 Diesel'),(8,'ISUZU','Mot 4JA1'),(9,'JOHN DEERE','Mot. 359\" - 5'),(10,'JOHN DEERE','Mot. 6359T - 2630 - 2640 - 4030 - 4400'),(11,'JOHN DEERE','Mot 549\" - 9'),(12,'KIA','Mod. Frontier - 2,7 cc.'),(13,'MAZDA','Mot. WL'),(14,'MERCEDES BENZ','Mot. OM 327 - OM 360 â€“ OM 360H7'),(15,'MITSUBISHI','Mod. L200 Turbo Diesel'),(16,'NISSAN','Mot. PD6 - PE 6 -PD6T - PE6T'),(17,'NISSAN','Mot. ED 30 - Mot. 3300Cc'),(18,'NISSAN','Mod. CD 17 - Sentra 16 v.'),(19,'NISSAN','Frontier 2,5 - 16 Val'),(20,'PERKINS','Mot. 6-305/4-203/3-152 AdaptaciÃ³n'),(21,'PERKINS','Mot. 6-358-V8 510'),(22,'PEUGEOT','Mot. 1,6/18. - Mod. 404 - 504'),(23,'PEUGEOT','Mot. INDENOR XD2 - DIESEL'),(24,'PEUGEOT','Mot. INDENOR XD3 â€“ TURBO DIESEL'),(25,'PEUGEOT','Mod. 405 GLD/GRD 1,9 TURBO, 306 XRD'),(26,'PEUGEOT','Mod.106-205-206N Mot TU5JP 1,4/1,6'),(27,'RENAULT','Mod. R 19 - Express- Clio - Diesel - 1900cc'),(28,'RENAULT','Mod. R18/R21 Trafic Diesel J8'),(29,'RENAULT','Mot. F9Q - 1,9 TD - Express - Megane - Clio II - Turbo Diesel'),(30,'RENAULT','Mod. R9 - R11 - Mot.1600cc.'),(31,'RENAULT','Mod. Trafic Diesel - 2200 cc.'),(32,'RENAULT','R 19 importado 1.7cc Nafta'),(33,'RENAULT','R 9 - R 11- 1.4cc Nafta'),(34,'RENAULT','Mot. K4M -1600cc - Mod Megane - Scenic - Clio - 16v'),(35,'SCANIA','Mot. D10 - D11 -DS10-DS11 turbo- L111 turbo'),(36,'SCANIA','Mod. DN11 New - 112'),(37,'TOYOTA','Mod. Hilux Diesel'),(38,'TOYOTA','Mod. Corolla 1600cc- 16v'),(39,'TOYOTA','Toyota 3S'),(40,'VOLKSWAGEN','Mod. Senda Diesel - Mot. 1600cc - 1800 cc'),(41,'VOLKSWAGEN','Mod Gacel - Senda - Saveiro - Gol - 1600cc.'),(42,'VOLKSWAGEN','Mot. AEB - 1800 cc. 16v.'),(43,'VOLVO','Mod. TD100 A / F / G - Motores Turbo Alimentados - 9600cc'),(44,'VOLVO','Mod TD 70 - A - B - C - F/N86 - 6730cc');
/*!40000 ALTER TABLE `aplicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `razon_social` varchar(50) NOT NULL,
  `mercado` enum('interno','externo') NOT NULL,
  PRIMARY KEY (`razon_social`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('14 de julio','interno'),('acotrac','interno'),('actis','interno'),('agrorepuestos antelo - bolivia','externo'),('agullo daniel','interno'),('agustin gomez','interno'),('allcon','interno'),('alvarez fabian','interno'),('amaya','interno'),('aquistapace','interno'),('arevalo','interno'),('arias - peru','externo'),('autofar','interno'),('autometal bolivia','externo'),('autopiezas formosa','interno'),('avalos','interno'),('barreiro jose','interno'),('bayas ecuador','externo'),('bbb - boada','externo'),('bbb - bolaÃ±os','externo'),('bbb - bolomey','externo'),('bbb - dcn','externo'),('bbb - hermagu','externo'),('bbb - obyco','externo'),('bbb - sudamericana','externo'),('bbb - sur alpine','externo'),('bbb - vege','externo'),('bbb - world parts','externo'),('bisio uruguay','externo'),('bm racing','interno'),('broney','interno'),('caÃ±ete','interno'),('carlos leal','interno'),('catalfamo','interno'),('ciclolandia','interno'),('coll alexis','interno'),('comelato javier','interno'),('cordoba motos','interno'),('corrales edgardo','interno'),('cr motores','interno'),('crespi','interno'),('curimotor','interno'),('curimotor chile','externo'),('d`aversa hernan','interno'),('damian garau','interno'),('damian rosales','interno'),('daniel fuentes','interno'),('daniel rodriguez','interno'),('dellasanta','interno'),('diego brussino','interno'),('dps','interno'),('eduardo mendez','interno'),('el motociclista','interno'),('engine parts','externo'),('ezequiel de basalvilbaso','interno'),('facar morales','interno'),('florentino pablo','interno'),('fonseca','interno'),('franco lutri','interno'),('freire','interno'),('futurama','externo'),('futurama - ecuador','externo'),('gabriel galvan','interno'),('gaston aguirre','interno'),('geese bolivia','externo'),('giumatto marcos','interno'),('godoy','interno'),('gomez maximiliano','interno'),('gomez miravela','interno'),('gustavo machado','interno'),('hagemann cristian','interno'),('hebert fernandez - uruguay','externo'),('imporpiezas','externo'),('inmoto','interno'),('italsport','interno'),('ivan bulacia','interno'),('javier comelato','interno'),('javier molina','interno'),('jose baiz','interno'),('jose mazzarelli','interno'),('juan acuÃ±a','interno'),('juan aldao','interno'),('juan benavente','interno'),('juan ignacio gonzalez','interno'),('juanito motos','interno'),('karting repuestos','interno'),('km 0 - paraguay','externo'),('kuchen','interno'),('lecumberri','interno'),('ledezma','externo'),('leonardo maiale','interno'),('lestussi nicolas','interno'),('luciano dallâ€™agata','interno'),('luis nassi','interno'),('lutri','interno'),('marcelo peisel','interno'),('marengo motos','interno'),('marsella pablo','interno'),('matias goÃ±i','interno'),('micromecÃ¡nica','externo'),('millan','interno'),('mirabella','interno'),('montequia alejandro','interno'),('morales carlos - san juan','interno'),('motor import - py','externo'),('motor racing','interno'),('motoracing','interno'),('motorblock chile','externo'),('natalini','interno'),('navarrete (myk) ecuador','externo'),('nd motos','interno'),('nilo sira - venezuela','externo'),('ordoÃ±ez','interno'),('pazmiÃ±o ecuador','externo'),('pertrack','interno'),('pompeya','interno'),('primi','interno'),('quinteros victor mexico','externo'),('ramirez (mg mar del plata)','interno'),('rebuelto gonzalo','interno'),('rectificaciones diaz','interno'),('rectificaciones sur - ivars','interno'),('rectificaciones zipoli','interno'),('rectificadora v&l','interno'),('renostore','externo'),('repuestos japon','interno'),('roberto guidotti','interno'),('robledo','interno'),('roca cristrian','interno'),('rti - chile','externo'),('rtm rectificadora - ecuador','externo'),('sainz bolivia','externo'),('santoto','interno'),('satle','interno'),('scalenge','interno'),('sebastian rodrigo','interno'),('segali chile','externo'),('servicios viales','interno'),('suarez javier','interno'),('tecnicamaras el vigia - venez','externo'),('thomas jorge','interno'),('trindade lucas','externo'),('troncoso jorge','interno'),('union','interno'),('vÃ­ctor mejia - el salvador','externo'),('valentin forte','interno'),('valper','interno'),('vazquez luciano','interno'),('vazquez pedro frias','interno'),('velazquez (melin)','interno'),('wstandard','interno'),('zirmer','interno');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_pedidos`
--

DROP TABLE IF EXISTS `log_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `actionName` varchar(10) NOT NULL,
  `id_pedido` varchar(50) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `fecha_ingreso` varchar(50) NOT NULL,
  `fecha_objetivo` varchar(50) DEFAULT NULL,
  `userName` varchar(50) NOT NULL,
  `timestamp_` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_pedidos`
--

LOCK TABLES `log_pedidos` WRITE;
/*!40000 ALTER TABLE `log_pedidos` DISABLE KEYS */;
INSERT INTO `log_pedidos` VALUES (1,'delete','105','godoy','AV 1001','302','2023-01-19',NULL,'root@localhost','2023-01-19 20:17:01');
/*!40000 ALTER TABLE `log_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_productos`
--

DROP TABLE IF EXISTS `log_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `actionName` varchar(10) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `diam_exterior` varchar(50) NOT NULL,
  `diam_interior` varchar(50) NOT NULL,
  `largo` varchar(50) DEFAULT NULL,
  `materia_prima` varchar(50) NOT NULL,
  `id_aplicacion` varchar(50) DEFAULT NULL,
  `userName` varchar(50) NOT NULL,
  `timestamp_` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_productos`
--

LOCK TABLES `log_productos` WRITE;
/*!40000 ALTER TABLE `log_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_primas`
--

DROP TABLE IF EXISTS `materias_primas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias_primas` (
  `codigo` varchar(25) NOT NULL,
  `diam_exterior` decimal(4,2) NOT NULL,
  `diam_interior` decimal(4,2) NOT NULL,
  `largo` decimal(4,2) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_primas`
--

LOCK TABLES `materias_primas` WRITE;
/*!40000 ALTER TABLE `materias_primas` DISABLE KEYS */;
INSERT INTO `materias_primas` VALUES ('311310',31.00,13.00,10.00),('321810',32.00,18.00,10.00),('352309',35.00,23.00,9.00),('372111',37.00,21.00,11.00),('372610',37.00,26.00,10.00),('392310',39.00,23.00,10.00),('392610',39.00,26.00,10.00),('392910',39.00,29.00,10.00),('413009',41.00,30.00,9.00),('422411',42.00,24.00,11.00),('422910',42.00,29.00,10.00),('433210',43.00,32.00,10.00),('452912',45.00,29.00,12.00),('463210',46.00,32.00,10.00),('472812',47.00,28.00,12.00),('503112',50.00,31.00,12.00),('543313',54.00,33.00,13.00),('543813',54.00,38.00,13.00),('54389.5',54.00,38.00,9.50),('563313',56.00,33.00,13.00),('583313',58.00,33.00,13.00),('583813',58.00,38.00,13.00),('624313',62.00,43.00,13.00),('624710',62.00,47.00,10.00);
/*!40000 ALTER TABLE `materias_primas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(50) NOT NULL,
  `codigo` varchar(25) NOT NULL,
  `cantidad` int NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_objetivo` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productos_pedidos` (`codigo`),
  KEY `fk_clientes_pedidos` (`cliente`),
  CONSTRAINT `fk_clientes_pedidos` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`razon_social`),
  CONSTRAINT `fk_productos_pedidos` FOREIGN KEY (`codigo`) REFERENCES `productos` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'godoy','AV 8442',350,'2021-08-17','2022-10-31'),(2,'godoy','AV 8464',8,'2022-06-21','2022-10-31'),(3,'godoy','AV 8464',8,'2022-06-21','2022-10-31'),(4,'actis','AV 8634',12,'2022-07-20','2022-10-31'),(5,'godoy','AV 8444',8,'2022-08-13','2022-10-31'),(6,'Mirabella','av 8457',12,'2022-08-17','2022-09-30'),(7,'arias - peru','AV 4366',750,'2022-09-01','2022-11-28'),(8,'arias - peru','AV 4329',50,'2022-09-01','2022-11-28'),(9,'tecnicamaras el vigia - venez','av 4322',50,'2022-09-05','2022-10-14'),(10,'tecnicamaras el vigia - venez','AV 4330',50,'2022-09-16','2022-10-14'),(11,'vazquez luciano','av 8632',12,'2022-09-20','2022-09-22'),(12,'godoy','AV 4320',8,'2022-09-29','2022-10-31'),(13,'pazmiÃ±o ecuador','AV 4317',150,'2022-10-04','2022-11-04'),(14,'pazmiÃ±o ecuador','AV 4329',100,'2022-10-04','2022-11-04'),(15,'pazmiÃ±o ecuador','av 4320',100,'2022-10-04','2022-11-04'),(16,'pazmiÃ±o ecuador','av 4330',100,'2022-10-04','2022-11-04'),(17,'pazmiÃ±o ecuador','av 4322',200,'2022-10-04','2022-11-04'),(18,'pazmiÃ±o ecuador','av 4319',40,'2022-10-04','2022-11-04'),(19,'lecumberri','AV 4320',12,'2022-10-05','2022-10-27'),(20,'pazmiÃ±o ecuador','AV 4317',350,'2022-10-05','2022-10-27'),(21,'vazquez luciano','AV 4320',12,'2022-10-05','2022-10-27'),(22,'lecumberri','AV 4322',250,'2022-10-05','2022-10-27'),(23,'lecumberri','av 4319',60,'2022-10-04','2022-10-27'),(24,'amaya','av 8601',8,'2022-10-11','2022-10-13'),(25,'amaya','AV 4320',12,'2022-10-12','2022-10-27'),(26,'godoy','AV 4322',6,'2022-10-12','2022-10-27'),(27,'actis','av 8457',12,'2022-10-05','2022-10-20'),(28,'actis','av 8457',12,'2022-10-05','2022-10-20'),(29,'actis','AV 8444',4,'2022-10-14','2022-10-31'),(30,'actis','AV 8442',4,'2022-10-14','2022-10-31'),(31,'godoy','AV 8442',8,'2022-10-14','2022-10-31'),(32,'WStandard','AV 8442',8,'2022-10-14','2022-10-31'),(33,'WStandard','AV 8442',8,'2022-10-14','2022-10-31'),(34,'WStandard','AV 8444',4,'2022-10-19','2022-10-31'),(35,'WStandard','av 4352B',8,'2022-10-20','2022-10-26'),(36,'godoy','av 4353B',8,'2022-10-20','2022-10-26'),(37,'godoy','av 4354B',16,'2022-10-20','2022-10-26'),(38,'lecumberri','av 4351B',8,'2022-10-20','2022-10-26'),(39,'lecumberri','AV 4320',6,'2022-10-24','2022-10-31'),(40,'rtm rectificadora - ecuador','AV 4320',50,'2022-10-25','2022-10-31'),(41,'rtm rectificadora - ecuador','AV 8472',8,'2022-10-25','2022-10-27'),(42,'Mercado Libre','AV 8423',4,'2022-10-25','2022-10-27'),(43,'Javier Comelato','av 4329',50,'2022-10-28','2022-11-18'),(44,'lecumberri','av 4330',50,'2022-10-28','2022-11-18'),(45,'godoy','av 4354B',1,'2022-10-28','0000-00-00'),(46,'crespi','av 4354B',2,'2022-10-28','0000-00-00'),(47,'crespi','AV 4322',12,'2022-10-29','2022-11-10'),(48,'crespi','AV 8444',8,'2022-11-09','2022-11-14'),(49,'crespi','av 8499',8,'2022-11-11','2022-11-17'),(50,'lecumberri','av 8373',8,'2022-11-11','2022-11-17'),(51,'godoy','av 8374',8,'2022-11-11','2022-11-17'),(52,'actis','av 8450',24,'2022-11-11','2022-11-17'),(53,'actis','AV 4320',4,'2022-11-15','2022-11-17'),(54,'lecumberri','AV 8634',4,'2022-11-15','2022-11-14'),(55,'godoy','AV 8400',40,'2022-11-15','2022-11-14'),(56,'lecumberri','AV 8634',20,'2022-11-15','2022-11-14'),(57,'lecumberri','AV 8572',6,'2022-11-16','2022-11-24'),(58,'godoy','AV 8634',8,'2022-11-17','2022-11-22'),(59,'godoy','AV 8099',4,'2022-11-18','2022-11-24'),(60,'segali chile','AV 8160',4,'2022-11-18','2022-11-24'),(61,'actis','AV 8444',4,'2022-11-18','2022-11-25'),(62,'lecumberri','AV 8629',4,'2022-11-18','2022-11-25'),(63,'lecumberri','av 4320',300,'2022-11-22','0000-00-00'),(64,'lecumberri','av 8414',40,'2022-11-22','2022-11-25'),(65,'lecumberri','AV 8444',4,'2022-11-23','2022-11-24'),(66,'quinteros victor mexico','AV 8452',12,'2022-11-24','0000-00-00'),(67,'quinteros victor mexico','AV 1011',6,'2022-11-24','0000-00-00'),(68,'freire','AV 8556',8,'2022-11-24','0000-00-00'),(69,'freire','AV 8640',96,'2022-11-24','2022-11-28'),(70,'freire','AV 8518ESPN',96,'2022-11-24','2022-11-28'),(71,'freire','av 8471',16,'2022-11-28','2022-12-02'),(72,'freire','av 8472',16,'2022-11-28','2022-12-02'),(73,'freire','av 8466',8,'2022-11-28','2022-12-02'),(74,'bayas ecuador','av 8467',8,'2022-11-28','2022-12-02'),(75,'bayas ecuador','av 8054',6,'2022-11-28','2022-12-02'),(76,'freire','av 8053',6,'2022-11-28','2022-12-02'),(77,'lecumberri','AV 8023',60,'2022-11-28','2022-12-31'),(78,'lecumberri','av 8024',60,'2022-11-28','2022-12-31'),(79,'lecumberri','av 8054',6,'2022-11-28','2022-12-02'),(80,'lecumberri','AV 8099',4,'2022-11-29','0000-00-00'),(81,'lecumberri','AV 8099',4,'2022-11-29','0000-00-00'),(82,'godoy','AV 8582',4,'2022-11-29','0000-00-00'),(83,'freire','AV 8054',6,'2022-11-29','0000-00-00'),(84,'valper','AV 8099',4,'2022-11-29','0000-00-00'),(85,'valper','AV 8099',4,'2022-11-29','2022-12-05'),(86,'valper','av 8053',6,'2022-11-28','2022-12-02'),(87,'lecumberri','av 4335',24,'2022-11-30','0000-00-00'),(88,'lecumberri','av 4325',24,'2022-11-30','0000-00-00'),(89,'lecumberri','av 4320',24,'2022-11-30','0000-00-00'),(90,'lecumberri','AV 8604',24,'2022-12-02','0000-00-00'),(91,'godoy','AV 8605',12,'2022-12-02','0000-00-00'),(92,'godoy','AV 8605',6,'2022-12-02','0000-00-00'),(93,'actis','AV 8604',18,'2022-12-02','0000-00-00'),(94,'actis','AV 8215',4,'2022-12-04','2022-12-07'),(95,'actis','AV 8159',4,'2022-12-04','2022-12-07'),(96,'actis','AV 8557',12,'2022-12-04','2022-12-07'),(97,'lecumberri','AV 8325',20,'2022-12-04','2022-12-07'),(98,'lecumberri','AV 8027',12,'2022-12-04','2022-12-07'),(99,'lecumberri','AV 8327',12,'2022-12-04','2022-12-07'),(100,'lecumberri','AV 8054',6,'2022-12-05','0000-00-00'),(101,'lecumberri','AV 8196',6,'2022-12-05','0000-00-00'),(102,'godoy','AV 4320',4,'2022-12-05','0000-00-00'),(103,'Jose Pachas - Peru','AV 8604',6,'2022-12-02','0000-00-00'),(104,'Jose Pachas - Peru','AV 8605',6,'2022-12-02','0000-00-00');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_log_add_pedido` AFTER INSERT ON `pedidos` FOR EACH ROW begin
	insert into log_pedidos(actionName,id_pedido,cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo,userName,timestamp_)
    values ('insert',new.id,new.cliente,new.codigo,new.cantidad,new.fecha_ingreso,new.fecha_objetivo,system_user(),current_timestamp());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_log_update_pedido` AFTER UPDATE ON `pedidos` FOR EACH ROW begin
	insert into log_pedidos(actionName,id_pedido,cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo,userName,timestamp_)
    values ('update',concat(old.id, ' - ',new.id),concat(old.cliente,' - ',new.cliente),concat(old.codigo,' - ',new.codigo),concat(old.cantidad,' - ',new.cantidad),concat(old.fecha_ingreso,' - ',new.fecha_ingreso),concat(old.fecha_objetivo,' - ',new.fecha_objetivo),system_user(),current_timestamp());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_log_delete_pedido` BEFORE DELETE ON `pedidos` FOR EACH ROW begin
	insert into log_pedidos(actionName,id_pedido,cliente,codigo,cantidad,fecha_ingreso,fecha_objetivo,userName,timestamp_)
    values ('delete',concat(old.id),concat(old.cliente),concat(old.codigo),concat(old.cantidad),concat(old.fecha_ingreso),concat(old.fecha_objetivo),system_user(),current_timestamp());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `codigo` varchar(25) NOT NULL,
  `diam_exterior` decimal(4,2) NOT NULL,
  `diam_interior` decimal(4,2) NOT NULL,
  `largo` decimal(4,2) NOT NULL,
  `materia_prima` varchar(25) NOT NULL,
  `id_aplicacion` int NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_materia_prima_productos` (`materia_prima`),
  KEY `fk_aplicaciones_productos` (`id_aplicacion`),
  CONSTRAINT `fk_aplicaciones_productos` FOREIGN KEY (`id_aplicacion`) REFERENCES `aplicaciones` (`id`),
  CONSTRAINT `fk_materia_prima_productos` FOREIGN KEY (`materia_prima`) REFERENCES `materias_primas` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('AV 1001',41.20,47.17,10.00,'503112',1),('AV 1002',38.20,44.17,11.00,'472812',2),('AV 1003',44.10,53.18,11.50,'543813',3),('AV 1004',41.00,47.18,11.50,'543813',4),('AV 1011',35.00,42.07,6.50,'433210',5),('AV 1012',29.00,36.00,6.50,'433210',6),('AV 1035',21.00,27.00,6.00,'433210',7),('AV 1036',19.80,25.00,6.00,'392610',8),('AV 1047',37.20,44.10,7.10,'392610',9),('AV 1048',30.90,37.50,7.10,'392610',10),('AV 1049',34.00,42.17,8.30,'311310',11),('AV 1050',30.00,36.15,6.30,'392910',12),('AV 1105',41.00,48.25,6.30,'543313',13),('AV 4300',23.00,35.00,8.00,'311310',14),('AV 4310',35.00,52.00,10.00,'392910',15),('AV 4311',36.00,46.00,9.00,'543313',16),('AV 4312',33.50,43.50,9.00,'321810',17),('AV 4313',31.00,41.00,8.00,'321810',18),('AV 4314',27.50,38.50,8.00,'321810',19),('AV 4315',26.00,36.50,8.00,'372610',20),('AV 4316',24.00,33.50,8.00,'624710',21),('AV 4317',20.00,30.01,8.00,'452912',22),('AV 4318',45.00,65.00,12.00,'463210',23),('AV 4319',35.00,52.01,11.00,'352309',24),('AV 4320',26.00,40.01,9.00,'54389.5',25),('AV 4321',30.00,44.01,10.00,'372610',26),('AV 4322',33.00,48.00,10.00,'624710',27),('AV 4323',24.00,34.01,8.00,'452912',28),('AV 4324',40.00,56.01,11.00,'463210',29),('AV 4325',26.00,37.00,8.00,'352309',30),('AV 4326',33.00,47.01,8.00,'54389.5',31),('AV 4327',35.00,52.00,12.00,'463210',32),('AV 4328',40.00,55.00,10.00,'503112',33),('AV 4329',23.00,35.01,9.00,'503112',34),('AV 4330',30.00,45.01,10.00,'503112',35),('AV 4331',45.00,60.00,11.00,'503112',36),('AV 4332',33.30,39.80,4.50,'472812',37),('AV 4333',33.20,39.83,5.50,'543813',38),('AV 4334',30.90,38.50,8.50,'543813',39),('AV 4335',15.00,29.00,9.00,'433210',40),('AV 4336',37.00,50.20,9.00,'433210',41),('AV 4337',39.00,50.20,9.00,'433210',42),('AV 4338',35.00,54.01,11.00,'392610',43),('AV 4339',35.00,56.01,11.00,'392610',44),('AV 4340',21.50,27.08,8.00,'392610',1),('AV 4341',20.05,25.02,6.50,'311310',2),('AV 4342',27.00,35.00,7.00,'392910',3),('AV 4343',27.00,36.00,7.00,'543313',4),('AV 4344',35.00,43.00,7.00,'311310',5),('AV 4350B',18.50,25.20,9.00,'392910',6),('AV 4351B',19.50,28.00,8.50,'543313',7),('AV 4352B',21.00,29.00,9.00,'321810',8),('AV 4353B',25.50,31.90,9.00,'321810',9),('AV 4354B',23.00,34.00,9.00,'321810',10),('AV 4355',33.60,41.21,6.60,'372610',11),('AV 4356',45.00,60.00,8.00,'624710',12),('AV 4357',0.00,0.00,0.00,'452912',13),('AV 8005',47.15,56.18,11.75,'463210',14),('AV 8006',42.00,49.18,11.50,'352309',15),('AV 8019',50.85,61.09,8.00,'54389.5',16),('AV 8020',43.00,51.09,8.00,'372610',17),('AV 8023',36.20,45.67,9.90,'624710',18),('AV 8024',31.00,40.17,9.75,'452912',19),('AV 8027',36.30,44.01,8.00,'463210',20),('AV 8028',29.60,37.01,7.50,'352309',21),('AV 8037',30.50,35.15,6.00,'54389.5',22),('AV 8038',25.50,31.50,6.00,'463210',23),('AV 8039',30.10,35.65,9.20,'503112',24),('AV 8040',25.30,30.65,6.20,'503112',25),('AV 8041',31.70,39.60,7.00,'503112',26),('AV 8042',30.10,35.20,6.20,'503112',27),('AV 8044',28.00,33.75,7.00,'472812',28),('AV 8049',38.00,44.16,6.20,'543813',29),('AV 8050',31.00,37.16,6.20,'543813',30),('AV 8051',38.00,44.50,7.00,'433210',31),('AV 8052',27.00,34.00,7.00,'433210',32),('AV 8053',36.90,45.07,8.30,'433210',33),('AV 8054',28.00,38.07,8.50,'392610',34),('AV 8055',40.30,51.30,7.20,'392610',35),('AV 8056',31.70,42.67,9.50,'392610',36),('AV 8059',35.50,43.65,10.40,'311310',37),('AV 8060',30.50,37.20,7.00,'392910',38),('AV 8061',52.40,63.60,12.70,'543313',39),('AV 8062',50.80,63.60,12.70,'311310',40),('AV 8063',57.95,65.79,15.88,'392910',41),('AV 8064',53.98,61.85,15.88,'543313',42),('AV 8069',45.97,54.07,11.12,'321810',43),('AV 8070',42.92,51.10,11.12,'321810',44),('AV 8071',47.23,54.61,7.42,'321810',1),('AV 8072',41.27,48.56,7.14,'372610',2),('AV 8073',39.68,46.02,9.27,'624710',3),('AV 8074',36.50,42.85,9.27,'452912',4),('AV 8081',25.20,32.03,6.33,'463210',5),('AV 8092',52.00,62.00,7.55,'352309',6),('AV 8093',43.00,52.98,7.55,'54389.5',7),('AV 8094',29.00,35.15,8.10,'372610',8),('AV 8095',27.70,33.15,8.00,'624710',9),('AV 8096',29.00,35.00,7.80,'452912',10),('AV 8097',27.50,33.10,7.30,'463210',11),('AV 8098',32.50,39.01,8.40,'352309',12),('AV 8099',27.30,33.55,8.00,'54389.5',13),('AV 8100',37.00,45.07,8.30,'463210',14),('AV 8101',39.30,47.12,8.50,'503112',15),('AV 8105',42.00,55.00,10.00,'503112',16),('AV 8106',39.00,49.00,10.00,'503112',17),('AV 8107',39.10,46.19,6.23,'503112',18),('AV 8108',39.20,46.19,7.50,'472812',19),('AV 8109',35.35,42.10,7.47,'543813',20),('AV 8116',40.90,47.20,5.30,'543813',21),('AV 8117',36.00,41.61,5.50,'433210',22),('AV 8119',47.50,56.00,7.40,'433210',23),('AV 8120',40.60,52.03,10.30,'433210',24),('AV 8123',51.00,61.12,9.40,'392610',25),('AV 8124',43.10,53.11,9.70,'392610',26),('AV 8159',33.60,40.15,6.25,'392610',27),('AV 8160',28.80,34.13,5.55,'311310',28),('AV 8162',30.00,36.08,7.00,'392910',29),('AV 8171',37.00,51.07,7.47,'543313',30),('AV 8172',31.00,40.07,7.47,'311310',31),('AV 8185',51.10,60.12,9.40,'392910',32),('AV 8189',34.00,42.08,8.00,'543313',33),('AV 8190',29.00,36.06,7.00,'321810',34),('AV 8194',37.00,51.07,7.47,'321810',35),('AV 8196',34.50,43.88,7.70,'321810',36),('AV 8198',47.70,56.00,7.75,'372610',37),('AV 8210',30.00,36.65,8.50,'624710',38),('AV 8211',27.00,32.65,9.00,'452912',39),('AV 8212',33.00,38.35,9.50,'463210',40),('AV 8213',35.60,40.15,9.50,'352309',41),('AV 8214',33.60,39.10,9.50,'54389.5',42),('AV 8215',29.50,35.10,9.50,'372610',43),('AV 8216',28.00,34.65,9.50,'624710',44),('AV 8217',26.00,32.10,9.50,'452912',1),('AV 8218',34.60,43.16,7.00,'463210',2),('AV 8219',33.00,39.09,7.00,'352309',3),('AV 8220',37.00,46.15,7.50,'54389.5',4),('AV 8221',31.10,39.15,7.50,'463210',5),('AV 8316',49.00,59.12,6.75,'503112',6),('AV 8317',45.00,56.60,9.50,'503112',7),('AV 8318',44.50,54.11,6.75,'503112',8),('AV 8319',40.10,51.11,9.50,'503112',9),('AV 8320',44.30,54.06,6.70,'472812',10),('AV 8321',40.00,49.06,11.50,'543813',11),('AV 8325',31.70,39.50,7.00,'543813',12),('AV 8326',26.00,33.00,7.00,'433210',13),('AV 8327',39.00,46.00,7.00,'433210',14),('AV 8328',31.70,39.50,7.00,'433210',15),('AV 8329',36.50,44.00,8.00,'392610',16),('AV 8330',29.70,38.70,7.00,'392610',17),('AV 8331',36.20,40.49,8.00,'392610',18),('AV 8332',30.80,38.09,8.40,'311310',19),('AV 8335',62.22,76.24,14.00,'392910',20),('AV 8336',54.00,62.03,8.00,'543313',21),('AV 8337',45.00,53.06,9.51,'311310',22),('AV 8338',42.00,50.03,6.14,'392910',23),('AV 8339',33.80,41.03,7.00,'543313',24),('AV 8340',52.00,58.55,4.08,'321810',25),('AV 8341',43.00,51.10,7.52,'321810',26),('AV 8342',39.00,48.10,6.50,'321810',27),('AV 8343',30.00,39.10,7.50,'372610',28),('AV 8344',33.00,41.10,7.50,'624710',29),('AV 8345',29.00,33.15,7.50,'452912',30),('AV 8346',37.00,43.65,6.00,'463210',31),('AV 8347',30.00,36.15,6.00,'352309',32),('AV 8348',31.00,40.20,6.00,'54389.5',33),('AV 8349',26.50,34.20,6.00,'372610',34),('AV 8350',42.00,52.10,7.70,'624710',35),('AV 8351',36.50,45.60,7.70,'452912',36),('AV 8352',50.00,61.00,10.00,'463210',37),('AV 8353',45.00,55.00,9.00,'352309',38),('AV 8354',49.30,55.35,7.40,'54389.5',39),('AV 8355',39.00,52.00,10.30,'463210',40),('AV 8356',37.00,44.70,10.00,'503112',41),('AV 8357',31.00,37.20,7.00,'503112',42),('AV 8358',27.00,32.70,7.00,'503112',43),('AV 8359',42.90,50.88,7.10,'503112',44),('AV 8360',38.60,46.02,5.70,'472812',1),('AV 8361',23.50,29.50,5.70,'543813',2),('AV 8362',29.30,36.66,6.37,'543813',3),('AV 8363',39.10,48.22,6.95,'433210',4),('AV 8364',43.10,51.19,8.15,'433210',5),('AV 8365',35.00,43.18,8.15,'433210',6),('AV 8366',44.83,55.00,7.62,'392610',7),('AV 8367',37.08,47.00,7.62,'392610',8),('AV 8368',44.83,55.56,7.62,'392610',9),('AV 8369',37.08,47.62,7.62,'311310',10),('AV 8370',36.25,43.08,7.45,'392910',11),('AV 8371',32.30,39.08,7.45,'543313',12),('AV 8372',43.00,50.00,6.00,'311310',13),('AV 8373',32.70,38.70,6.50,'392910',14),('AV 8374',27.50,34.00,6.50,'543313',15),('AV 8375',42.00,52.40,9.50,'321810',16),('AV 8376',35.00,43.00,9.50,'321810',17),('AV 8377',31.00,37.02,7.80,'321810',18),('AV 8378',26.90,33.00,7.50,'372610',19),('AV 8379',37.00,43.00,6.00,'624710',20),('AV 8380',44.70,52.00,8.70,'452912',21),('AV 8381',42.70,50.86,8.10,'463210',22),('AV 8382',20.00,26.60,6.00,'352309',23),('AV 8383',45.00,55.10,9.00,'54389.5',24),('AV 8384',33.70,39.90,6.00,'372610',25),('AV 8385',34.00,41.40,7.00,'624710',26),('AV 8386',35.00,42.20,8.50,'452912',27),('AV 8387',31.00,36.20,8.50,'463210',28),('AV 8388',25.50,31.60,6.00,'352309',29),('AV 8389',45.00,56.75,9.80,'54389.5',30),('AV 8390',49.00,59.12,6.75,'463210',31),('AV 8391',44.50,54.11,6.75,'503112',32),('AV 8392',40.00,49.05,9.50,'503112',33),('AV 8393',37.50,46.08,6.15,'503112',34),('AV 8394',34.00,44.07,8.90,'503112',35),('AV 8395',23.00,29.85,6.20,'472812',36),('AV 8396',24.00,30.00,6.50,'543813',37),('AV 8397',23.00,28.84,5.90,'543813',38),('AV 8398',29.40,35.30,8.20,'433210',39),('AV 8399',34.00,42.15,7.00,'433210',40),('AV 8400',28.00,34.15,7.00,'433210',41),('AV 8401',36.70,42.95,4.53,'392610',42),('AV 8402',39.60,46.90,7.00,'392610',43),('AV 8403',38.00,47.07,6.90,'392610',44),('AV 8404',34.50,43.73,6.72,'311310',1),('AV 8405',44.50,54.00,8.20,'392910',2),('AV 8406',40.00,47.18,5.85,'543313',3),('AV 8407',40.50,48.70,6.00,'311310',4),('AV 8408',33.00,39.60,6.00,'392910',5),('AV 8409',43.00,50.92,11.40,'543313',6),('AV 8410',39.50,47.74,11.41,'321810',7),('AV 8411',26.00,30.50,8.00,'321810',8),('AV 8412',24.00,29.00,8.00,'321810',9),('AV 8413',36.20,41.60,6.20,'372610',10),('AV 8414',30.00,36.10,6.00,'624710',11),('AV 8415',35.80,43.00,8.00,'452912',12),('AV 8416',29.50,37.05,8.00,'463210',13),('AV 8417',26.00,32.15,7.00,'352309',14),('AV 8418',34.50,43.30,8.20,'54389.5',15),('AV 8419',44.10,53.14,7.30,'372610',16),('AV 8420',40.10,47.14,7.30,'624710',17),('AV 8421',48.00,59.07,9.00,'452912',18),('AV 8422',41.10,51.07,9.95,'463210',19),('AV 8423',35.50,44.20,7.20,'352309',20),('AV 8424',30.50,37.55,7.20,'54389.5',21),('AV 8425',36.30,44.15,8.00,'463210',22),('AV 8426',31.60,39.55,7.00,'503112',23),('AV 8427',34.60,42.07,8.00,'503112',24),('AV 8428',29.00,36.05,7.50,'503112',25),('AV 8429',30.00,36.65,8.00,'503112',26),('AV 8430',28.00,34.66,8.00,'472812',27),('AV 8431',27.20,32.35,8.00,'543813',28),('AV 8432',24.30,31.01,8.00,'543813',29),('AV 8433',28.00,33.57,6.60,'433210',30),('AV 8434',34.00,40.70,6.70,'433210',31),('AV 8435',32.50,41.40,8.00,'433210',32),('AV 8436',28.30,33.49,8.00,'392610',33),('AV 8437',34.90,41.23,6.50,'392610',34),('AV 8438',28.70,33.75,6.50,'392610',35),('AV 8439',31.50,38.10,6.50,'311310',36),('AV 8440',25.40,30.50,6.50,'392910',37),('AV 8441',28.00,36.50,7.00,'543313',38),('AV 8442',25.00,32.10,7.50,'311310',39),('AV 8443',32.90,38.95,7.50,'392910',40),('AV 8444',27.10,32.50,7.50,'543313',41),('AV 8445',31.50,35.70,7.50,'321810',42),('AV 8446',25.80,31.20,7.90,'321810',43),('AV 8447',33.00,41.20,6.50,'321810',44),('AV 8448',19.50,24.03,7.00,'372610',1),('AV 8449',39.00,48.00,8.30,'624710',2),('AV 8450',36.50,47.39,7.80,'452912',3),('AV 8451',34.30,43.09,8.00,'463210',4),('AV 8452',28.00,35.10,7.60,'352309',5),('AV 8453',31.00,40.07,8.00,'54389.5',6),('AV 8454',22.80,28.03,6.45,'372610',7),('AV 8455',27.50,33.62,6.00,'624710',8),('AV 8456',28.50,35.70,7.80,'452912',9),('AV 8457',25.00,30.70,6.80,'463210',10),('AV 8458',36.00,42.70,6.50,'352309',11),('AV 8459',30.00,36.15,8.00,'54389.5',12),('AV 8460',36.50,43.40,9.27,'463210',13),('AV 8461',37.00,45.87,8.30,'503112',14),('AV 8462',31.60,38.23,7.10,'503112',15),('AV 8463',38.75,45.70,6.00,'503112',16),('AV 8464',21.25,26.30,6.50,'503112',17),('AV 8465',20.15,25.35,6.50,'472812',18),('AV 8466',29.00,34.50,6.30,'543813',19),('AV 8467',23.50,30.10,6.30,'543813',20),('AV 8468',38.50,46.15,7.40,'433210',21),('AV 8469',34.40,43.10,7.40,'433210',22),('AV 8470',34.90,42.05,6.30,'433210',23),('AV 8471',28.70,33.53,5.00,'392610',24),('AV 8472',23.00,28.85,5.90,'392610',25),('AV 8473',30.00,37.10,7.00,'392610',26),('AV 8474',28.00,33.75,7.00,'311310',27),('AV 8475',32.50,38.75,7.00,'392910',28),('AV 8476',28.00,34.76,6.50,'543313',29),('AV 8498',14.40,21.06,5.50,'311310',30),('AV 8499',28.00,32.70,8.80,'392910',31),('AV 8502',31.80,35.60,5.70,'543313',32),('AV 8503',23.90,28.69,5.50,'321810',33),('AV 8504',39.40,47.21,6.50,'321810',34),('AV 8505',34.20,43.08,6.00,'321810',35),('AV 8506',28.10,34.50,6.00,'372610',36),('AV 8507',31.80,43.08,8.50,'624710',37),('AV 8508',33.00,43.07,8.00,'452912',38),('AV 8509',44.30,52.09,6.00,'463210',39),('AV 8510',36.70,49.09,6.00,'352309',40),('AV 8511',26.00,31.07,5.60,'54389.5',41),('AV 8512',24.00,29.86,5.60,'372610',42),('AV 8513',35.00,46.05,7.90,'624710',43),('AV 8514',35.00,44.09,8.55,'452912',44),('AV 8515',26.00,32.10,5.00,'463210',1),('AV 8516',22.00,27.10,5.00,'352309',2),('AV 8517',41.70,49.61,4.95,'54389.5',3),('AV 8518',42.93,50.95,5.46,'463210',4),('AV 8519',39.90,46.20,7.20,'503112',5),('AV 8520',34.50,41.35,6.30,'503112',6),('AV 8521',35.00,46.05,7.90,'503112',7),('AV 8522',35.00,44.09,8.55,'503112',8),('AV 8523',38.20,46.17,8.20,'472812',9),('AV 8524',31.20,39.17,8.20,'543813',10),('AV 8525',38.50,49.27,7.70,'543813',11),('AV 8526',38.50,47.07,7.80,'433210',12),('AV 8527',41.50,51.09,7.90,'433210',13),('AV 8528',36.00,44.06,8.30,'433210',14),('AV 8530',24.30,28.70,8.50,'392610',15),('AV 8531',30.00,37.25,4.50,'392610',16),('AV 8532',28.00,34.30,5.00,'392610',17),('AV 8533',35.40,43.58,6.05,'311310',18),('AV 8534',31.90,41.60,9.00,'392910',19),('AV 8535',33.00,39.75,6.00,'543313',20),('AV 8536',26.50,32.66,6.00,'311310',21),('AV 8537',35.00,42.25,7.00,'392910',22),('AV 8538',30.00,37.65,7.00,'543313',23),('AV 8539',35.00,48.00,7.00,'321810',24),('AV 8540',33.00,45.00,9.00,'321810',25),('AV 8541',36.80,46.02,5.00,'321810',26),('AV 8542',41.50,49.62,4.92,'372610',27),('AV 8543',41.72,49.61,5.49,'624710',28),('AV 8544',42.90,50.95,7.10,'452912',29),('AV 8545',39.52,47.62,6.10,'463210',30),('AV 8546',31.70,39.50,7.00,'352309',31),('AV 8547',28.00,35.01,5.80,'54389.5',32),('AV 8548',37.00,49.18,11.50,'372610',33),('AV 8549',33.75,42.78,6.80,'624710',34),('AV 8550',30.20,36.98,7.50,'452912',35),('AV 8551',39.00,49.10,7.50,'463210',36),('AV 8552',35.00,43.60,7.90,'352309',37),('AV 8553',38.65,47.57,6.60,'54389.5',38),('AV 8554',35.50,44.08,7.00,'463210',39),('AV 8555',31.00,38.11,6.50,'503112',40),('AV 8556',27.10,33.10,6.50,'503112',41),('AV 8557',30.50,36.50,6.00,'503112',42),('AV 8558',43.30,50.80,10.00,'503112',43),('AV 8559',34.00,41.30,9.50,'472812',44),('AV 8560',37.85,45.27,8.65,'543813',1),('AV 8561',31.94,39.01,9.10,'543813',2),('AV 8562',40.90,47.10,7.00,'433210',3),('AV 8563',32.70,39.10,7.00,'433210',4),('AV 8564',34.50,41.32,6.80,'433210',5),('AV 8565',30.50,36.82,7.00,'392610',6),('AV 8566',41.00,47.09,7.00,'392610',7),('AV 8567',33.00,39.09,7.00,'392610',8),('AV 8568',39.50,46.50,7.10,'311310',9),('AV 8569',36.30,43.00,6.30,'392910',10),('AV 8570',45.00,56.11,10.00,'543313',11),('AV 8571',36.00,46.11,10.00,'311310',12),('AV 8572',49.30,60.10,8.35,'392910',13),('AV 8573',43.00,53.10,9.20,'543313',14),('AV 8574',41.00,53.00,10.50,'321810',15),('AV 8575',34.86,47.66,9.55,'321810',16),('AV 8576',32.00,40.60,8.00,'321810',17),('AV 8577',26.50,33.10,8.00,'372610',18),('AV 8578',34.50,43.16,7.00,'624710',19),('AV 8579',30.80,36.10,7.00,'452912',20),('AV 8580',34.00,42.25,7.50,'463210',21),('AV 8581',31.00,37.50,7.50,'352309',22),('AV 8582',30.80,38.00,9.15,'54389.5',23),('AV 8583',28.45,36.00,9.15,'372610',24),('AV 8584',41.00,50.15,6.20,'624710',25),('AV 8585',31.90,41.60,9.00,'452912',26),('AV 8586',33.00,43.14,8.20,'463210',27),('AV 8587',32.00,43.14,7.50,'352309',28),('AV 8588',67.00,80.86,14.30,'54389.5',29),('AV 8589',67.00,80.86,13.55,'463210',30),('AV 8590',49.00,60.48,8.20,'503112',31),('AV 8591',51.40,60.48,8.20,'503112',32),('AV 8592',33.00,39.15,7.50,'503112',33),('AV 8593',27.00,32.71,7.50,'463210',34),('AV 8595',39.00,48.10,7.00,'503112',35),('AV 8596',31.20,39.30,7.50,'503112',36),('AV 8597',28.40,36.80,7.50,'503112',37),('AV 8598',26.00,31.15,6.00,'463210',38),('AV 8599',21.50,27.35,6.00,'503112',39),('AV 8600',27.00,34.11,6.00,'503112',40),('AV 8601',24.00,31.15,6.00,'503112',41);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_log_add_producto` AFTER INSERT ON `productos` FOR EACH ROW begin
	insert into log_productos(actionName,codigo,diam_exterior,diam_interior,largo,materia_prima,id_aplicacion,userName,timestamp_)
    values ('insert',new.codigo,new.diam_exterior,new.diam_interior,new.largo,new.materia_prima,new.id_aplicacion,system_user(),current_timestamp());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_log_delete_producto` BEFORE DELETE ON `productos` FOR EACH ROW begin
	insert into log_productos(actionName,codigo,diam_exterior,diam_interior,largo,materia_prima,id_aplicacion,userName,timestamp_)
    values ('delete',old.codigo,old.diam_exterior,old.diam_interior,old.largo,old.materia_prima,old.id_aplicacion,system_user(),current_timestamp());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vw_cantidad_marcas_av8`
--

DROP TABLE IF EXISTS `vw_cantidad_marcas_av8`;
/*!50001 DROP VIEW IF EXISTS `vw_cantidad_marcas_av8`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cantidad_marcas_av8` AS SELECT 
 1 AS `codigo`,
 1 AS `marca`,
 1 AS `modelo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pedidos_diam_int_menor_20`
--

DROP TABLE IF EXISTS `vw_pedidos_diam_int_menor_20`;
/*!50001 DROP VIEW IF EXISTS `vw_pedidos_diam_int_menor_20`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pedidos_diam_int_menor_20` AS SELECT 
 1 AS `cliente`,
 1 AS `codigo`,
 1 AS `cantidad`,
 1 AS `diam_interior`,
 1 AS `materia_prima`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pedidos_fiat`
--

DROP TABLE IF EXISTS `vw_pedidos_fiat`;
/*!50001 DROP VIEW IF EXISTS `vw_pedidos_fiat`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pedidos_fiat` AS SELECT 
 1 AS `cliente`,
 1 AS `codigo`,
 1 AS `cantidad`,
 1 AS `marca`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pedidos_mercado_interno`
--

DROP TABLE IF EXISTS `vw_pedidos_mercado_interno`;
/*!50001 DROP VIEW IF EXISTS `vw_pedidos_mercado_interno`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pedidos_mercado_interno` AS SELECT 
 1 AS `cliente`,
 1 AS `codigo`,
 1 AS `cantidad`,
 1 AS `mercado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pedidos_pendientes`
--

DROP TABLE IF EXISTS `vw_pedidos_pendientes`;
/*!50001 DROP VIEW IF EXISTS `vw_pedidos_pendientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pedidos_pendientes` AS SELECT 
 1 AS `cliente`,
 1 AS `codigo`,
 1 AS `cantidad`,
 1 AS `fecha_objetivo`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'weskan'
--

--
-- Dumping routines for database 'weskan'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_dimensiones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_dimensiones`(cod varchar(25)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
begin
	declare exterior decimal(4,2);
    declare interior decimal(4,2);
    declare l decimal(4,2);
	set exterior = (select diam_exterior from productos where codigo = cod);
    set interior = (select diam_interior from productos where codigo = cod);
    set l = (select largo from productos where codigo = cod);
    return concat(exterior,'x',interior,'x',l);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_mercado_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_mercado_cliente`(nombre varchar(50)) RETURNS varchar(10) CHARSET utf8mb4
    DETERMINISTIC
begin
	return (select mercado from clientes where razon_social = nombre);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert_pedido`(in p_cliente char(25), in p_codigo char(25), in p_cantidad int)
begin
	set @InsertPedido = concat('insert into pedidos(cliente,codigo,cantidad,fecha_ingreso) values("',
		p_cliente,'","',p_codigo,'",',p_cantidad,',"',current_date(),'")');
	prepare runSQL from @InsertPedido;
    execute runSQL;
    deallocate prepare runSQL;
    
    select * from pedidos where cliente = p_cliente;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_order_table` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_order_table`(in p_columnName char(25), in p_order char(25))
begin
	set @QueryColumn = concat('select * from pedidos order by ',p_columnName,' ',p_order); 
	prepare runSQL from @QueryColumn;
    execute runSQL;
    deallocate prepare runSQL;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_cantidad_marcas_av8`
--

/*!50001 DROP VIEW IF EXISTS `vw_cantidad_marcas_av8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cantidad_marcas_av8` AS select `prod`.`codigo` AS `codigo`,`a`.`marca` AS `marca`,`a`.`modelo` AS `modelo` from (`aplicaciones` `a` join `productos` `prod` on((`a`.`id` = `prod`.`id_aplicacion`))) where (`prod`.`codigo` like 'AV 8%') order by `a`.`marca` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pedidos_diam_int_menor_20`
--

/*!50001 DROP VIEW IF EXISTS `vw_pedidos_diam_int_menor_20`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pedidos_diam_int_menor_20` AS select `p`.`cliente` AS `cliente`,`p`.`codigo` AS `codigo`,`p`.`cantidad` AS `cantidad`,`prod`.`diam_interior` AS `diam_interior`,`m`.`codigo` AS `materia_prima` from ((`pedidos` `p` join `productos` `prod` on((`p`.`codigo` = `prod`.`codigo`))) join `materias_primas` `m` on((`prod`.`materia_prima` = `m`.`codigo`))) where (`m`.`diam_interior` < 20) order by `prod`.`diam_interior` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pedidos_fiat`
--

/*!50001 DROP VIEW IF EXISTS `vw_pedidos_fiat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pedidos_fiat` AS select `p`.`cliente` AS `cliente`,`p`.`codigo` AS `codigo`,`p`.`cantidad` AS `cantidad`,`a`.`marca` AS `marca` from ((`pedidos` `p` join `productos` `prod` on((`p`.`codigo` = `prod`.`codigo`))) join `aplicaciones` `a` on((`prod`.`id_aplicacion` = `a`.`id`))) where (`a`.`marca` = 'FIAT') order by `p`.`cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pedidos_mercado_interno`
--

/*!50001 DROP VIEW IF EXISTS `vw_pedidos_mercado_interno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pedidos_mercado_interno` AS select `p`.`cliente` AS `cliente`,`p`.`codigo` AS `codigo`,`p`.`cantidad` AS `cantidad`,`cl`.`mercado` AS `mercado` from (`pedidos` `p` join `clientes` `cl` on((`p`.`cliente` = `cl`.`razon_social`))) where (`cl`.`mercado` = 'interno') order by `p`.`cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pedidos_pendientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_pedidos_pendientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pedidos_pendientes` AS select `pedidos`.`cliente` AS `cliente`,`pedidos`.`codigo` AS `codigo`,`pedidos`.`cantidad` AS `cantidad`,date_format(`pedidos`.`fecha_objetivo`,'%d/%m/%Y') AS `fecha_objetivo` from `pedidos` where (`pedidos`.`fecha_objetivo` < curdate()) order by date_format(`pedidos`.`fecha_objetivo`,'%d/%m/%Y') desc */;
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

-- Dump completed on 2023-01-19 17:29:58
