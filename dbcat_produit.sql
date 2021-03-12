-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbcat
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
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `prix` double NOT NULL,
  `quantite` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (1,'Introduction à l\'economie','https://zupimages.net/up/21/06/70eh.jpg',30,9),(2,'Introduction générale à l\'économie','https://zupimages.net/up/21/06/08p5.jpg',45,3),(3,'Internet et l\'informatique','https://zupimages.net/up/21/06/e9zj.jpg',67,11),(4,'Débuter en l\'informatique','https://zupimages.net/up/21/06/amhu.jpg',150,3),(5,'Développement informatique','https://zupimages.net/up/21/06/q606.jpg',87,4),(6,'Economie de développement','https://zupimages.net/up/21/06/b69k.jpg',90,10),(7,'Math\'X','https://zupimages.net/up/21/06/ob75.jpg',65,11),(8,'Déclic Mathématique','https://zupimages.net/up/21/06/umsi.jpg',30,4),(9,'L\'anglais de A jusqu\'à Z','https://zupimages.net/up/21/06/4y07.jpg',30,7),(10,'Mon cahier de français','https://zupimages.net/up/21/06/5qkh.jpg',30,15),(11,'Physiqye, chimie','https://zupimages.net/up/21/06/af67.jpg',10,15),(12,'Physique','https://zupimages.net/up/21/06/am9w.jpg',35,15),(13,'Introduction à l\'economie','https://zupimages.net/up/21/06/70eh.jpg',30,9),(14,'Introduction générale à l\'économie','https://zupimages.net/up/21/06/08p5.jpg',45,3),(15,'Internet et l\'informatique','https://zupimages.net/up/21/06/e9zj.jpg',67,11),(16,'Débuter en l\'informatique','https://zupimages.net/up/21/06/amhu.jpg',150,3),(17,'Développement informatique','https://zupimages.net/up/21/06/q606.jpg',87,4),(18,'Economie de développement','https://zupimages.net/up/21/06/b69k.jpg',90,10),(19,'Math\'X','https://zupimages.net/up/21/06/ob75.jpg',65,11),(20,'Déclic Mathématique','https://zupimages.net/up/21/06/umsi.jpg',30,4),(21,'L\'anglais de A jusqu\'à Z','https://zupimages.net/up/21/06/4y07.jpg',30,7),(22,'Mon cahier de français','https://zupimages.net/up/21/06/5qkh.jpg',30,15),(23,'Physiqye, chimie','https://zupimages.net/up/21/06/af67.jpg',10,15),(24,'Physique','https://zupimages.net/up/21/06/am9w.jpg',35,15),(25,'Introduction à l\'economie','https://zupimages.net/up/21/06/70eh.jpg',30,9),(26,'Introduction générale à l\'économie','https://zupimages.net/up/21/06/08p5.jpg',45,3),(27,'Internet et l\'informatique','https://zupimages.net/up/21/06/e9zj.jpg',67,11),(28,'Débuter en l\'informatique','https://zupimages.net/up/21/06/amhu.jpg',150,3),(29,'Développement informatique','https://zupimages.net/up/21/06/q606.jpg',87,4),(30,'Economie de développement','https://zupimages.net/up/21/06/b69k.jpg',90,10),(31,'Math\'X','https://zupimages.net/up/21/06/ob75.jpg',65,11),(32,'Déclic Mathématique','https://zupimages.net/up/21/06/umsi.jpg',30,4),(33,'L\'anglais de A jusqu\'à Z','https://zupimages.net/up/21/06/4y07.jpg',30,7),(34,'Mon cahier de français','https://zupimages.net/up/21/06/5qkh.jpg',30,15),(35,'Physiqye, chimie','https://zupimages.net/up/21/06/af67.jpg',10,15),(36,'Physique','https://zupimages.net/up/21/06/am9w.jpg',35,15),(37,'Introduction à l\'economie','https://zupimages.net/up/21/06/70eh.jpg',30,9),(38,'Introduction générale à l\'économie','https://zupimages.net/up/21/06/08p5.jpg',45,3),(39,'Internet et l\'informatique','https://zupimages.net/up/21/06/e9zj.jpg',67,11),(40,'Débuter en l\'informatique','https://zupimages.net/up/21/06/amhu.jpg',150,3),(41,'Développement informatique','https://zupimages.net/up/21/06/q606.jpg',87,4),(42,'Economie de développement','https://zupimages.net/up/21/06/b69k.jpg',90,10),(43,'Math\'X','https://zupimages.net/up/21/06/ob75.jpg',65,11),(44,'Déclic Mathématique','https://zupimages.net/up/21/06/umsi.jpg',30,4),(45,'L\'anglais de A jusqu\'à Z','https://zupimages.net/up/21/06/4y07.jpg',30,7),(46,'Mon cahier de français','https://zupimages.net/up/21/06/5qkh.jpg',30,15),(47,'Physiqye, chimie','https://zupimages.net/up/21/06/af67.jpg',10,15),(48,'Physique','https://zupimages.net/up/21/06/am9w.jpg',35,15),(49,'Introduction à l\'economie','https://zupimages.net/up/21/06/70eh.jpg',30,9),(50,'Introduction générale à l\'économie','https://zupimages.net/up/21/06/08p5.jpg',45,3),(51,'Internet et l\'informatique','https://zupimages.net/up/21/06/e9zj.jpg',67,11),(52,'Débuter en l\'informatique','https://zupimages.net/up/21/06/amhu.jpg',150,3),(53,'Développement informatique','https://zupimages.net/up/21/06/q606.jpg',87,4),(54,'Economie de développement','https://zupimages.net/up/21/06/b69k.jpg',90,10),(55,'Math\'X','https://zupimages.net/up/21/06/ob75.jpg',65,11),(56,'Déclic Mathématique','https://zupimages.net/up/21/06/umsi.jpg',30,4),(57,'L\'anglais de A jusqu\'à Z','https://zupimages.net/up/21/06/4y07.jpg',30,7),(58,'Mon cahier de français','https://zupimages.net/up/21/06/5qkh.jpg',30,15),(59,'Physiqye, chimie','https://zupimages.net/up/21/06/af67.jpg',10,15),(60,'Physique','https://zupimages.net/up/21/06/am9w.jpg',35,15),(61,'Introduction à l\'economie','https://zupimages.net/up/21/06/70eh.jpg',30,9),(62,'Introduction générale à l\'économie','https://zupimages.net/up/21/06/08p5.jpg',45,3),(63,'Internet et l\'informatique','https://zupimages.net/up/21/06/e9zj.jpg',67,11),(64,'Débuter en l\'informatique','https://zupimages.net/up/21/06/amhu.jpg',150,3),(65,'Développement informatique','https://zupimages.net/up/21/06/q606.jpg',87,4),(66,'Economie de développement','https://zupimages.net/up/21/06/b69k.jpg',90,10),(67,'Math\'X','https://zupimages.net/up/21/06/ob75.jpg',65,11),(68,'Déclic Mathématique','https://zupimages.net/up/21/06/umsi.jpg',30,4),(69,'L\'anglais de A jusqu\'à Z','https://zupimages.net/up/21/06/4y07.jpg',30,7),(70,'Mon cahier de français','https://zupimages.net/up/21/06/5qkh.jpg',30,15),(71,'Physiqye, chimie','https://zupimages.net/up/21/06/af67.jpg',10,15),(72,'Physique','https://zupimages.net/up/21/06/am9w.jpg',35,15);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-12 12:53:49
