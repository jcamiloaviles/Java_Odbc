-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: java_curso
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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Deporte'),(2,'Tecnologia'),(3,'Recreacion');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idproductos` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` int DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `categoria_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idproductos`),
  KEY `productos_categoria_idx` (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(2,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(3,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(4,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(5,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(6,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(7,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(8,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(9,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(10,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(11,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(12,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(13,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(14,'Teclado mecanico',500,'2022-06-30 00:00:00',NULL),(15,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(16,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(17,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(18,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(19,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(20,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(21,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(22,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(23,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(24,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(25,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(26,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(27,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(28,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(29,'Teclado mecanico',500,'2022-07-02 00:00:00',NULL),(30,'Teclado mecanico',500,'2022-07-03 00:00:00',NULL),(31,'Teclado mecanico',500,'2022-07-06 00:00:00',NULL),(32,'Teclado Razer Mecanico',500,'2022-07-06 00:00:00',NULL),(33,'Teclado Razer Mecanico',500,'2022-07-06 00:00:00',NULL),(34,'Teclado Mecanico',500,'2022-07-06 00:00:00',NULL),(35,'Teclado Mecanico',500,'2022-07-06 00:00:00',NULL),(36,'Teclado Mecanico',500,'2022-07-06 00:00:00',NULL),(37,'Teclado Mecanico',500,'2022-07-06 00:00:00',NULL),(38,'Teclado Mecanico',500,'2022-07-06 00:00:00',NULL),(39,'Productos prueba con Categorias',550,'2022-07-06 00:00:00',NULL),(40,'Productos prueba con categorias',550,'2022-07-06 00:00:00',NULL),(41,'Productos prueba con categorias',550,'2022-07-06 00:00:00',NULL),(42,'Productos prueba con categorias',550,'2022-07-07 00:00:00',NULL),(43,'Productos prueba con categorias',550,'2022-07-09 00:00:00',NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-12 18:00:48
