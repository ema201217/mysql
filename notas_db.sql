-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: notas_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'musica'),(2,'historia'),(3,'matematica'),(4,'geografia'),(5,'fisica'),(6,'programacion'),(7,'filosofia'),(8,'literatura'),(9,'idioma');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_note`
--

DROP TABLE IF EXISTS `category_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_note`
--

LOCK TABLES `category_note` WRITE;
/*!40000 ALTER TABLE `category_note` DISABLE KEYS */;
INSERT INTO `category_note` VALUES (1,1,1),(2,7,2),(3,6,3),(4,6,4),(5,1,5),(6,7,6);
/*!40000 ALTER TABLE `category_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_permission`
--

DROP TABLE IF EXISTS `note_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_permission`
--

LOCK TABLES `note_permission` WRITE;
/*!40000 ALTER TABLE `note_permission` DISABLE KEYS */;
INSERT INTO `note_permission` VALUES (1,1,1),(2,2,3),(3,2,4),(4,3,7),(5,1,8),(6,1,5);
/*!40000 ALTER TABLE `note_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `description` text DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'acordes','2010-05-10 10:00:50','2010-05-10 10:00:50','los acordes son un conjunto de notas tocadas simultaneamente',2,1),(2,'El Alma - PLATON','1983-05-10 10:00:50','2010-08-13 11:50:50','Existe pues un mundo inteligible, el de las Ideas, que posibilita el conocimiento, y un mundo sensible, el nuestro. Esa misma dualidad se da en el ser humano. El hombre es un compuesto de dos realidades distintas unidas accidentalmente: el cuerpo mortal (relacionado con el mundo sensible) y el alma inmortal (perteneciente al mundo de las Ideas, que contemplÃ³ antes de unirse al cuerpo). El cuerpo, formado con materia, es imperfecto y mutable; es, en definitiva, igual de despreciable que todo lo material. De hecho, la abismal diferencia entre el nulo valor del cuerpo y el altÃ­simo del alma lleva a PlatÃ³n a afirmar (en el AlcibÃ­ades) que el hombre es su alma.',1,2),(3,'JAVASCRIPT','1992-05-10 10:00:50','2010-08-13 11:50:50','Es un lenguaje de programacion muy utilizado en la creacion de aplicaciones web',1,2),(4,'html','2000-05-10 10:00:50','2010-08-13 11:50:50','Es un lenguaje de etiquetas que sirve para formar estructuras para paginas web',1,3),(5,'acordes','2010-05-10 10:00:50','2010-05-10 10:00:50','los acordes son un conjunto de notas tocadas simultaneamente',2,1),(6,'El PLATON','1983-05-10 10:00:50','2010-08-13 11:50:50','Existe pues un mundo inteligiblenirse al cuerpo). El cuerpo, formado con materia, es imperfecto y mutable; es, en definitiva, igual de despreciable que todo lo material. De hecho, la abismal diferencia entre el nulo valor del cuerpo y el altÃ­simo del alma lleva a PlatÃ³n a afirmar (en el AlcibÃ­ades) que el hombre es su alma.',1,2),(7,'JAVPT','1992-05-10 10:00:50','2010-08-13 11:50:50','Es un leeb',1,2),(8,'html','2000-05-10 10:00:50','2010-08-13 11:50:50','Es un lenguaje de etiquetas que sirve para formar estructuras para paginas web',1,3);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'editar'),(2,'editar - eliminar'),(3,'lectura');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'modificado'),(2,'eliminado'),(3,'creado');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `e-mail` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Emanuel','ema454@live.com'),(2,'Jonatan','jona10@live.com'),(3,'Matias','matute_gamer@gmail.com'),(4,'Francisco','arroyo@gmail.com'),(5,'Ema','ema454@live.com'),(6,'Jonn','ja10@live.com'),(7,'Matias','mater@gmail.com'),(8,'Franco','oyo@gmail.com'),(9,'Anuel','em54@live.com'),(10,'Joan','jon10@live.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'notas_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-28 22:09:51
