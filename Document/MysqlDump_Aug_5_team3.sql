-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` enum('all','home','product-list','product-detail') COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` enum('top','bottom','sidebar','slider') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisements`
--

LOCK TABLES `advertisements` WRITE;
/*!40000 ALTER TABLE `advertisements` DISABLE KEYS */;
INSERT INTO `advertisements` VALUES (1,'sidebar-1.jpg','All Sale','/product','product-list','sidebar',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(2,'sidebar-2.jpg','Limit Offer','/product?category=Casual','product-list','sidebar',NULL,'2022-08-04 23:24:21','2022-08-05 00:19:49'),(3,'sidebar-3.jpg','Girls Collection','/girls/product','product-list','sidebar',NULL,'2022-08-04 23:24:21','2022-08-05 00:17:18'),(4,'sidebar-4.jpg','Boys Collection','/boys/product','product-list','sidebar',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(5,'strap-1.jpg','All Sale','/product','product-detail','top',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(6,'strap-2.jpg','Limit Offer','/product?category=Casual','product-detail','top',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(7,'strap-3.jpg','Girls Collection','/girls/product','product-detail','top',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(8,'strap-4.jpg','Boys Collection','/boys/product','product-detail','top',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(9,'slider1.png','Summer Collection','/product?category=Leisure','home','slider',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(10,'slider2.jpg','Men Collection','/men/product','home','slider',NULL,'2022-08-04 23:24:21','2022-08-05 11:54:24'),(11,'slider3.jpg','Women Collection','/women/product','home','slider',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21');
/*!40000 ALTER TABLE `advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Top','o6iTLEA3SomgaVmdU2ZJKCzJ3fC0I9TF7s7vsq3r.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 11:25:51'),(2,'Bottom','mieybAtVwJmvdXslFW5RWYMKEiUAcdBfu47DoU4M.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 11:26:15'),(3,'One-piece','ewCCCXTvSMWVv7kmxN278XYaKpExouXixPEgYpXf.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 12:36:02'),(4,'Jeans','nGQsAdBom6qCBTg6BHw5yPntjkiAhFSecyjosQ04.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 14:30:00'),(5,'Casual','Lyh3s7uxiDlocdfrqRn55LzBgN8j6TvhFqHpcYK2.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 11:59:05'),(6,'Leisure','PkGvVbri3rh1NZSWRFJe5pxWmwbBi7kltLyF54bK.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 12:31:01'),(7,'Sports','s0UZrzvNLMTKVexdhDAfrEBnITTR85YibUsrqOIZ.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 12:38:29'),(8,'Featured','OlfKbexMNI9b1nNX8LXyLX3aWiAjRZA1EzKEVofg.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 14:38:30'),(9,'Co-ords','082oLBYquUfa4xjeF1Gbgo44wESmkFf7B7sXeGem.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 11:27:05'),(10,'Jackets','rEwhCKcIyyGM5EDHIHxdyhLWCfDND6Zi4OPdxNCM.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 11:27:18'),(11,'Shorts','07q2wQp9cDbCKbASybtuaDBTqXAScgHuvCw6br5o.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 11:26:07'),(12,'Shirts','7V7kR532y1szr2s7MXjxWVmnl9iRCMhE61wa24DH.jpg',NULL,'2022-08-04 10:30:53','2022-08-04 11:26:54'),(13,'test','MkVlkYLMewLHMbUQouNdrOiKQSbd5GMCBH0QGu5o.jpg','2022-08-04 22:22:33','2022-08-04 22:21:58','2022-08-04 22:22:33');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (1,1,1,'2022-07-30 03:28:09','2022-07-30 03:28:09'),(2,1,5,'2022-07-30 03:28:09','2022-07-30 03:28:09'),(4,2,1,'2022-07-30 03:31:19','2022-07-30 03:31:19'),(5,2,6,'2022-07-30 03:31:19','2022-07-30 03:31:19'),(6,2,8,'2022-07-30 03:31:19','2022-07-30 03:31:19'),(7,3,2,'2022-07-30 03:33:55','2022-07-30 03:33:55'),(8,3,5,'2022-07-30 03:33:55','2022-07-30 03:33:55'),(9,3,6,'2022-07-30 03:33:55','2022-07-30 03:33:55'),(10,4,2,'2022-07-30 03:36:41','2022-07-30 03:36:41'),(11,4,4,'2022-07-30 03:36:41','2022-07-30 03:36:41'),(12,4,5,'2022-07-30 03:36:41','2022-07-30 03:36:41'),(13,4,11,'2022-07-30 03:36:41','2022-07-30 03:36:41'),(14,5,5,'2022-07-30 03:57:03','2022-07-30 03:57:03'),(15,5,6,'2022-07-30 03:57:03','2022-07-30 03:57:03'),(16,5,10,'2022-07-30 03:57:03','2022-07-30 03:57:03'),(20,6,6,'2022-07-30 04:14:04','2022-07-30 04:14:04'),(21,6,8,'2022-07-30 04:14:04','2022-07-30 04:14:04'),(22,6,9,'2022-07-30 04:14:04','2022-07-30 04:14:04'),(23,7,2,'2022-07-30 04:18:58','2022-07-30 04:18:58'),(24,7,5,'2022-07-30 04:18:58','2022-07-30 04:18:58'),(25,7,7,'2022-07-30 04:18:58','2022-07-30 04:18:58'),(26,7,8,'2022-07-30 04:18:58','2022-07-30 04:18:58'),(27,8,1,'2022-07-30 04:53:13','2022-07-30 04:53:13'),(29,8,6,'2022-07-30 04:53:13','2022-07-30 04:53:13'),(30,8,7,'2022-07-30 04:53:13','2022-07-30 04:53:13'),(31,8,8,'2022-07-30 04:53:13','2022-07-30 04:53:13'),(32,8,10,'2022-07-30 04:53:13','2022-07-30 04:53:13'),(33,9,5,'2022-07-30 05:01:40','2022-07-30 05:01:40'),(34,9,6,'2022-07-30 05:01:40','2022-07-30 05:01:40'),(35,9,8,'2022-07-30 05:01:40','2022-07-30 05:01:40'),(37,10,3,'2022-07-30 05:07:05','2022-07-30 05:07:05'),(38,10,5,'2022-07-30 05:07:05','2022-07-30 05:07:05'),(39,10,8,'2022-07-30 05:07:05','2022-07-30 05:07:05'),(40,11,3,'2022-07-30 05:14:55','2022-07-30 05:14:55'),(41,11,6,'2022-07-30 05:14:55','2022-07-30 05:14:55'),(42,11,8,'2022-07-30 05:14:55','2022-07-30 05:14:55'),(43,12,1,'2022-07-30 05:17:36','2022-07-30 05:17:36'),(44,12,5,'2022-07-30 05:17:36','2022-07-30 05:17:36'),(45,12,8,'2022-07-30 05:17:36','2022-07-30 05:17:36'),(47,13,1,'2022-07-30 05:26:07','2022-07-30 05:26:07'),(48,13,6,'2022-07-30 05:26:07','2022-07-30 05:26:07'),(49,13,12,'2022-07-30 05:26:07','2022-07-30 05:26:07'),(50,14,2,'2022-07-30 05:32:15','2022-07-30 05:32:15'),(51,14,6,'2022-07-30 05:32:15','2022-07-30 05:32:15'),(52,14,11,'2022-07-30 05:32:15','2022-07-30 05:32:15'),(53,15,2,'2022-07-30 05:34:53','2022-07-30 05:34:53'),(54,15,4,'2022-07-30 05:34:53','2022-07-30 05:34:53'),(55,15,5,'2022-07-30 05:34:53','2022-07-30 05:34:53'),(56,15,8,'2022-07-30 05:34:53','2022-07-30 05:34:53'),(57,16,3,'2022-07-30 05:38:04','2022-07-30 05:38:04'),(58,16,5,'2022-07-30 05:38:04','2022-07-30 05:38:04'),(59,16,6,'2022-07-30 05:38:04','2022-07-30 05:38:04'),(60,17,1,'2022-07-30 20:37:43','2022-07-30 20:37:43'),(61,17,6,'2022-07-30 20:37:43','2022-07-30 20:37:43'),(62,17,8,'2022-07-30 20:37:43','2022-07-30 20:37:43'),(63,18,2,'2022-07-30 20:40:00','2022-07-30 20:40:00'),(64,18,8,'2022-07-30 20:40:00','2022-07-30 20:40:00'),(65,19,2,'2022-07-30 20:43:30','2022-07-30 20:43:30'),(66,19,4,'2022-07-30 20:43:30','2022-07-30 20:43:30'),(67,19,5,'2022-07-30 20:43:30','2022-07-30 20:43:30'),(68,19,11,'2022-07-30 20:43:30','2022-07-30 20:43:30'),(69,20,6,'2022-07-30 20:46:10','2022-07-30 20:46:10'),(70,20,8,'2022-07-30 20:46:10','2022-07-30 20:46:10'),(71,20,10,'2022-07-30 20:46:10','2022-07-30 20:46:10'),(72,21,6,'2022-07-30 21:02:15','2022-07-30 21:02:15'),(73,21,9,'2022-07-30 21:02:15','2022-07-30 21:02:15'),(74,22,2,'2022-07-30 21:04:38','2022-07-30 21:04:38'),(75,22,6,'2022-07-30 21:04:38','2022-07-30 21:04:38'),(76,22,7,'2022-07-30 21:04:38','2022-07-30 21:04:38'),(77,22,8,'2022-07-30 21:04:38','2022-07-30 21:04:38'),(78,23,1,'2022-07-30 21:11:13','2022-07-30 21:11:13'),(79,23,5,'2022-07-30 21:11:13','2022-07-30 21:11:13'),(80,23,6,'2022-07-30 21:11:13','2022-07-30 21:11:13'),(81,23,8,'2022-07-30 21:11:13','2022-07-30 21:11:13'),(82,23,12,'2022-07-30 21:11:13','2022-07-30 21:11:13'),(83,24,5,'2022-07-30 21:13:10','2022-07-30 21:13:10'),(84,24,8,'2022-07-30 21:13:10','2022-07-30 21:13:10'),(86,25,5,'2022-07-30 21:19:28','2022-07-30 21:19:28'),(87,25,7,'2022-07-30 21:19:28','2022-07-30 21:19:28'),(88,25,8,'2022-07-30 21:19:28','2022-07-30 21:19:28'),(90,26,3,'2022-07-30 21:21:27','2022-07-30 21:21:27'),(91,26,6,'2022-07-30 21:21:27','2022-07-30 21:21:27'),(92,27,2,'2022-07-30 21:23:49','2022-07-30 21:23:49'),(93,27,4,'2022-07-30 21:23:49','2022-07-30 21:23:49'),(94,27,6,'2022-07-30 21:23:49','2022-07-30 21:23:49'),(95,27,11,'2022-07-30 21:23:49','2022-07-30 21:23:49'),(96,28,1,'2022-07-30 21:26:24','2022-07-30 21:26:24'),(97,28,5,'2022-07-30 21:26:24','2022-07-30 21:26:24'),(98,28,8,'2022-07-30 21:26:24','2022-07-30 21:26:24'),(99,28,12,'2022-07-30 21:26:24','2022-07-30 21:26:24'),(100,29,1,'2022-07-30 21:31:14','2022-07-30 21:31:14'),(101,29,5,'2022-07-30 21:31:14','2022-07-30 21:31:14'),(102,29,12,'2022-07-30 21:31:14','2022-07-30 21:31:14'),(103,30,5,'2022-07-30 21:32:58','2022-07-30 21:32:58'),(104,30,8,'2022-07-30 21:32:58','2022-07-30 21:32:58'),(106,31,1,'2022-07-31 02:03:29','2022-07-31 02:03:29'),(107,31,5,'2022-07-31 02:03:29','2022-07-31 02:03:29'),(108,31,8,'2022-07-31 02:03:29','2022-07-31 02:03:29'),(109,31,12,'2022-07-31 02:03:29','2022-07-31 02:03:29'),(110,32,2,'2022-07-31 02:09:42','2022-07-31 02:09:42'),(111,32,4,'2022-07-31 02:09:42','2022-07-31 02:09:42'),(112,32,5,'2022-07-31 02:09:42','2022-07-31 02:09:42'),(113,33,1,'2022-07-31 02:15:48','2022-07-31 02:15:48'),(114,33,5,'2022-07-31 02:15:48','2022-07-31 02:15:48'),(115,33,6,'2022-07-31 02:15:48','2022-07-31 02:15:48'),(116,33,8,'2022-07-31 02:15:48','2022-07-31 02:15:48'),(117,33,12,'2022-07-31 02:15:48','2022-07-31 02:15:48'),(118,34,5,'2022-07-31 02:21:33','2022-07-31 02:21:33'),(119,34,12,'2022-07-31 02:21:33','2022-07-31 02:21:33'),(120,35,1,'2022-07-31 02:25:01','2022-07-31 02:25:01'),(121,35,6,'2022-07-31 02:25:01','2022-07-31 02:25:01'),(122,35,8,'2022-07-31 02:25:01','2022-07-31 02:25:01'),(123,35,10,'2022-07-31 02:25:01','2022-07-31 02:25:01'),(124,36,2,'2022-07-31 02:28:29','2022-07-31 02:28:29'),(125,36,6,'2022-07-31 02:28:29','2022-07-31 02:28:29'),(126,36,7,'2022-07-31 02:28:29','2022-07-31 02:28:29'),(127,36,11,'2022-07-31 02:28:29','2022-07-31 02:28:29'),(128,37,1,'2022-07-31 02:31:08','2022-07-31 02:31:08'),(129,37,6,'2022-07-31 02:31:08','2022-07-31 02:31:08'),(130,37,8,'2022-07-31 02:31:08','2022-07-31 02:31:08'),(132,38,2,'2022-07-31 02:40:01','2022-07-31 02:40:01'),(133,38,5,'2022-07-31 02:40:01','2022-07-31 02:40:01'),(134,38,8,'2022-07-31 02:40:01','2022-07-31 02:40:01'),(135,38,11,'2022-07-31 02:40:01','2022-07-31 02:40:01'),(136,39,2,'2022-07-31 02:43:45','2022-07-31 02:43:45'),(137,39,5,'2022-07-31 02:43:45','2022-07-31 02:43:45'),(138,39,8,'2022-07-31 02:43:45','2022-07-31 02:43:45'),(139,40,2,'2022-07-31 02:46:30','2022-07-31 02:46:30'),(140,40,4,'2022-07-31 02:46:30','2022-07-31 02:46:30'),(141,40,6,'2022-07-31 02:46:30','2022-07-31 02:46:30'),(142,41,1,'2022-07-31 02:49:00','2022-07-31 02:49:00'),(143,41,5,'2022-07-31 02:49:00','2022-07-31 02:49:00'),(144,41,8,'2022-07-31 02:49:00','2022-07-31 02:49:00'),(146,42,1,'2022-07-31 02:52:11','2022-07-31 02:52:11'),(147,42,5,'2022-07-31 02:52:11','2022-07-31 02:52:11'),(148,42,7,'2022-07-31 02:52:11','2022-07-31 02:52:11'),(149,42,12,'2022-07-31 02:52:11','2022-07-31 02:52:11'),(150,43,1,'2022-07-31 02:53:54','2022-07-31 02:53:54'),(151,43,6,'2022-07-31 02:53:54','2022-07-31 02:53:54'),(152,43,8,'2022-07-31 02:53:54','2022-07-31 02:53:54'),(153,43,12,'2022-07-31 02:53:54','2022-07-31 02:53:54'),(154,44,1,'2022-07-31 02:55:38','2022-07-31 02:55:38'),(155,44,6,'2022-07-31 02:55:38','2022-07-31 02:55:38'),(156,44,8,'2022-07-31 02:55:38','2022-07-31 02:55:38'),(159,45,5,'2022-07-31 02:58:30','2022-07-31 02:58:30'),(162,46,1,'2022-07-31 03:02:15','2022-07-31 03:02:15'),(163,46,5,'2022-07-31 03:02:15','2022-07-31 03:02:15'),(164,46,7,'2022-07-31 03:02:15','2022-07-31 03:02:15'),(165,47,2,'2022-07-31 03:04:10','2022-07-31 03:04:10'),(166,47,5,'2022-07-31 03:04:10','2022-07-31 03:04:10'),(168,48,1,'2022-07-31 03:06:38','2022-07-31 03:06:38'),(169,48,5,'2022-07-31 03:06:38','2022-07-31 03:06:38'),(170,48,7,'2022-07-31 03:06:38','2022-07-31 03:06:38'),(171,48,10,'2022-07-31 03:06:38','2022-07-31 03:06:38'),(172,49,1,'2022-07-31 03:09:36','2022-07-31 03:09:36'),(173,49,6,'2022-07-31 03:09:36','2022-07-31 03:09:36'),(174,50,2,'2022-07-31 03:11:37','2022-07-31 03:11:37'),(175,50,5,'2022-07-31 03:11:37','2022-07-31 03:11:37'),(176,50,11,'2022-07-31 03:11:37','2022-07-31 03:11:37'),(177,51,1,'2022-08-03 01:46:06','2022-08-03 01:46:06'),(178,51,5,'2022-08-03 01:46:06','2022-08-03 01:46:06'),(179,51,8,'2022-08-03 01:46:06','2022-08-03 01:46:06'),(180,51,12,'2022-08-03 01:46:06','2022-08-03 01:46:06'),(185,52,9,'2022-08-03 01:51:33','2022-08-03 01:51:33'),(187,52,12,'2022-08-03 01:51:33','2022-08-03 01:51:33'),(190,53,8,'2022-08-03 02:03:31','2022-08-03 02:03:31'),(191,54,6,'2022-08-03 02:07:07','2022-08-03 02:07:07'),(192,54,8,'2022-08-03 02:07:07','2022-08-03 02:07:07'),(198,56,1,'2022-08-03 02:17:56','2022-08-03 02:17:56'),(199,56,5,'2022-08-03 02:17:56','2022-08-03 02:17:56'),(200,57,1,'2022-08-03 02:20:58','2022-08-03 02:20:58'),(201,57,6,'2022-08-03 02:20:58','2022-08-03 02:20:58'),(203,58,1,'2022-08-03 02:29:07','2022-08-03 02:29:07'),(208,59,3,'2022-08-03 02:32:26','2022-08-03 02:32:26'),(209,59,6,'2022-08-03 02:32:26','2022-08-03 02:32:26'),(210,59,8,'2022-08-03 02:32:26','2022-08-03 02:32:26'),(212,60,6,'2022-08-03 02:40:33','2022-08-03 02:40:33'),(214,12,3,'2022-08-03 06:10:08','2022-08-03 06:10:08'),(215,27,9,'2022-08-03 20:31:14','2022-08-03 20:31:14'),(216,30,3,'2022-08-03 20:32:08','2022-08-03 20:32:08'),(217,25,10,'2022-08-03 20:33:56','2022-08-03 20:33:56'),(218,24,1,'2022-08-03 20:35:42','2022-08-03 20:35:42'),(219,24,10,'2022-08-03 20:35:42','2022-08-03 20:35:42'),(220,37,2,'2022-08-03 23:49:34','2022-08-03 23:49:34'),(221,37,9,'2022-08-03 23:49:34','2022-08-03 23:49:34'),(222,39,1,'2022-08-03 23:54:24','2022-08-03 23:54:24'),(223,39,9,'2022-08-03 23:54:24','2022-08-03 23:54:24'),(224,44,2,'2022-08-03 23:58:35','2022-08-03 23:58:35'),(227,44,7,'2022-08-04 00:01:01','2022-08-04 00:01:01'),(228,45,3,'2022-08-04 00:02:39','2022-08-04 00:02:39'),(229,45,6,'2022-08-04 00:02:39','2022-08-04 00:02:39'),(230,9,3,'2022-08-04 00:11:08','2022-08-04 00:11:08'),(231,49,8,'2022-08-04 00:49:33','2022-08-04 00:49:33'),(232,49,10,'2022-08-04 00:49:33','2022-08-04 00:49:33'),(233,52,1,'2022-08-04 00:52:18','2022-08-04 00:52:18'),(234,52,2,'2022-08-04 00:52:18','2022-08-04 00:52:18'),(235,52,4,'2022-08-04 00:52:18','2022-08-04 00:52:18'),(236,52,6,'2022-08-04 00:52:18','2022-08-04 00:52:18'),(237,52,8,'2022-08-04 00:52:18','2022-08-04 00:52:18'),(238,54,3,'2022-08-04 00:53:18','2022-08-04 00:53:18'),(239,47,4,'2022-08-04 00:55:27','2022-08-04 00:55:27'),(240,47,8,'2022-08-04 00:55:27','2022-08-04 00:55:27'),(241,47,11,'2022-08-04 00:55:27','2022-08-04 00:55:27'),(242,53,1,'2022-08-04 00:56:56','2022-08-04 00:56:56'),(243,53,6,'2022-08-04 00:56:56','2022-08-04 00:56:56'),(244,53,10,'2022-08-04 00:56:56','2022-08-04 00:56:56'),(245,55,3,'2022-08-04 01:00:14','2022-08-04 01:00:14'),(246,55,6,'2022-08-04 01:00:14','2022-08-04 01:00:14'),(247,55,8,'2022-08-04 01:00:14','2022-08-04 01:00:14'),(248,58,5,'2022-08-04 01:01:00','2022-08-04 01:01:00'),(249,58,8,'2022-08-04 01:01:00','2022-08-04 01:01:00'),(250,58,12,'2022-08-04 01:01:00','2022-08-04 01:01:00'),(251,57,12,'2022-08-04 01:02:50','2022-08-04 01:02:50'),(252,60,8,'2022-08-04 01:09:50','2022-08-04 01:09:50'),(253,60,9,'2022-08-04 01:09:50','2022-08-04 01:09:50'),(254,60,1,'2022-08-04 01:10:35','2022-08-04 01:10:35'),(255,60,2,'2022-08-04 01:10:35','2022-08-04 01:10:35'),(256,61,2,'2022-08-05 14:34:41','2022-08-05 14:34:41'),(257,61,7,'2022-08-05 14:34:41','2022-08-05 14:34:41'),(258,61,8,'2022-08-05 14:34:41','2022-08-05 14:34:41'),(259,62,2,'2022-08-05 15:36:36','2022-08-05 15:36:36'),(260,62,4,'2022-08-05 15:36:36','2022-08-05 15:36:36'),(261,62,8,'2022-08-05 15:36:36','2022-08-05 15:36:36'),(262,63,2,'2022-08-05 16:58:03','2022-08-05 16:58:03');
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'women','gender/women.jpg',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(2,'men','gender/men.jpg',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(3,'girls','gender/girls.jpg',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(4,'boys','gender/boys.jpg',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiries`
--

DROP TABLE IF EXISTS `inquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiries`
--

LOCK TABLES `inquiries` WRITE;
/*!40000 ALTER TABLE `inquiries` DISABLE KEYS */;
INSERT INTO `inquiries` VALUES (1,'Some Body','some@email.com','123-123-4789','This is a message.',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(2,'testing','abc@gmail.com','123-123-1234','hi','2022-08-05 10:51:19','2022-08-05 10:51:03','2022-08-05 10:51:19');
/*!40000 ALTER TABLE `inquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (127,'2014_10_12_000000_create_users_table',1),(128,'2014_10_12_100000_create_password_resets_table',1),(129,'2019_08_19_000000_create_failed_jobs_table',1),(130,'2019_12_14_000001_create_personal_access_tokens_table',1),(131,'2022_07_16_192911_create_shipping_charge_table',1),(132,'2022_07_16_204615_create_taxes_table',1),(133,'2022_07_16_215426_create_inquiries_table',1),(134,'2022_07_16_223829_create_user_addresses_table',1),(135,'2022_07_17_181231_create_orders_table',1),(136,'2022_07_17_185949_create_transactions_table',1),(137,'2022_07_17_203532_create_sizes_table',1),(138,'2022_07_17_205913_create_products_table',1),(139,'2022_07_17_220004_create_product_media_table',1),(140,'2022_07_17_220540_create_categories_table',1),(141,'2022_07_18_181928_create_genders_table',1),(142,'2022_07_18_195704_create_advertisements_table',1),(143,'2022_07_18_210108_create_category_product_table',1),(144,'2022_07_18_211853_create_order_product_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `line_price` decimal(8,2) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,1,1,7.99,1,7.99,'Default Product Name','L',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(2,1,2,6.99,2,13.98,'Default Product Name','M',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(3,2,23,16.99,3,52.38,'Nice Product Name 123456','S',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(4,2,12,25.99,1,25.99,'Awesome Product Name Bla bla','XL',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(5,2,35,43.69,2,87.58,'Fabulous Product Name Hahaha','XXL',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(6,3,12,25.99,1,25.99,'Awesome Product Name Bla bla','XL',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(7,3,35,43.69,2,87.58,'Fabulous Product Name Hahaha','XXL',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(8,4,12,25.99,1,25.99,'Awesome Product Name Bla bla','XL',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(9,4,35,43.69,2,87.58,'Fabulous Product Name Hahaha','XXL',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(10,5,2,50.00,1,50.00,'Women Ruffled Crop Top','S',NULL,'2022-08-04 23:35:57','2022-08-04 23:35:57'),(11,6,2,50.00,3,150.00,'Women Ruffled Crop Top','S',NULL,'2022-08-05 00:15:58','2022-08-05 00:15:58'),(12,7,1,40.00,1,40.00,'Women Embroidered Top','M',NULL,'2022-08-05 00:16:27','2022-08-05 00:16:27'),(13,8,47,19.90,1,19.90,'Boys Basic Plain Jeans','S',NULL,'2022-08-05 00:17:43','2022-08-05 00:17:43'),(14,9,1,40.00,1,40.00,'Women Embroidered Top','M',NULL,'2022-08-05 00:40:18','2022-08-05 00:40:18'),(15,10,31,25.69,1,25.69,'Men Basic Heavyweight T-Shirt','XL',NULL,'2022-08-05 08:55:21','2022-08-05 08:55:21'),(16,11,1,40.00,2,80.00,'Women Embroidered Top','M',NULL,'2022-08-05 09:45:41','2022-08-05 09:45:41'),(17,12,2,50.00,6,300.00,'Women Ruffled Crop Top','S',NULL,'2022-08-05 10:47:28','2022-08-05 10:47:28');
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `gst` decimal(8,2) NOT NULL,
  `pst` decimal(8,2) NOT NULL,
  `hst` decimal(8,2) NOT NULL,
  `sub_total` decimal(8,2) NOT NULL,
  `shipping_charge` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `order_status` enum('pending','confirmed','delivered','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1.15,1.36,0.00,42.36,5.00,51.69,'pending','85 Good Ave, Calgary, Alberta, Canada, E4G 9C7','85 Good Ave, Calgary, Alberta, Canada, E4G 9C7',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(2,1,9.58,7.64,0.00,162.38,9.63,209.12,'delivered','135 Nice Street, Lansord, British Columbia, Canada, D7X 8Y3','135 Nice Street, Lansord, British Columbia, Canada, D7X 8Y3',NULL,'2022-08-04 23:24:21','2022-08-04 23:37:32'),(3,1,9.58,7.64,0.00,162.38,9.63,209.12,'delivered','135 Nice Street, Lansord, British Columbia, Canada, D7X 8Y3','135 Nice Street, Lansord, British Columbia, Canada, D7X 8Y3',NULL,'2022-01-01 00:00:00','2022-08-05 09:53:02'),(4,1,9.58,7.64,0.00,162.38,9.63,209.12,'delivered','135 Nice Street, Lansord, British Columbia, Canada, D7X 8Y3','135 Nice Street, Lansord, British Columbia, Canada, D7X 8Y3',NULL,'2022-05-01 00:00:00','2022-08-05 09:52:30'),(5,1,2.50,3.50,0.00,50.00,5.99,61.99,'confirmed','78 Good Ave, Winnipeg, Manitoba, Canada, R3B 8D3','78 Good Ave, Winnipeg, Manitoba, Canada, R3B 8D3',NULL,'2022-08-04 23:35:57','2022-08-04 23:35:57'),(6,1,7.50,10.50,0.00,150.00,0.00,168.00,'pending','78 Good Ave, Winnipeg, Manitoba, Canada, R3B 8D3','78 Good Ave, Winnipeg, Manitoba, Canada, R3B 8D3',NULL,'2022-08-05 00:15:58','2022-08-05 00:15:58'),(7,1,2.00,2.80,0.00,40.00,5.99,50.79,'confirmed','78 Good Ave, Winnipeg, Manitoba, Canada, R3B 8D3','78 Good Ave, Winnipeg, Manitoba, Canada, R3B 8D3',NULL,'2022-08-05 00:16:27','2022-08-05 00:16:27'),(8,1,1.00,1.39,0.00,19.90,5.99,28.28,'cancelled','78 Good Ave, Winnipeg, Manitoba, Canada, R3B 8D3','78 Good Ave, Winnipeg, Manitoba, Canada, R3B 8D3',NULL,'2022-08-05 00:17:43','2022-08-05 09:53:16'),(9,1,2.00,2.80,0.00,40.00,5.99,50.79,'confirmed','78 Good Ave, Winnipeg, Manitoba, Canada, R3B 8D3','78 Good Ave, Winnipeg, Manitoba, Canada, R3B 8D3',NULL,'2022-08-05 00:40:18','2022-08-05 00:40:19'),(10,1,0.00,0.00,3.85,25.69,5.99,35.53,'confirmed','1354 Johnson Street, Brandon, Prince Edward Island, Canada, W0Z 8K2','1354 Johnson Street, Brandon, Prince Edward Island, Canada, W0Z 8K2',NULL,'2022-08-05 08:55:21','2022-08-05 08:55:21'),(11,1,0.00,0.00,12.00,80.00,5.99,97.99,'delivered','1354 Johnson Street, Brandon, Prince Edward Island, Canada, W0Z 8K2','1354 Johnson Street, Brandon, Prince Edward Island, Canada, W0Z 8K2',NULL,'2022-08-05 09:45:41','2022-08-05 09:46:15'),(12,1,15.00,21.00,0.00,300.00,0.00,336.00,'confirmed','23 good Ave, Winnipeg, Manitoba, Canada, A6A7A8','23 goodww Ave, Winnipeg, Manitoba, Canada, A6A7A8',NULL,'2022-08-05 10:47:28','2022-08-05 10:47:29');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('admin@gmail.com','$2y$10$tW7JJHsebOfH7grmqBXrhus60cRmGAH8g1ouxVbyLbtRRhFs301ru','2022-08-05 10:41:42');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_media`
--

DROP TABLE IF EXISTS `product_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_media`
--

LOCK TABLES `product_media` WRITE;
/*!40000 ALTER TABLE `product_media` DISABLE KEYS */;
INSERT INTO `product_media` VALUES (1,52,'fTeg2Ryi0l4pn6PaR2H8C6OLRNycjRCL8ZTsqJtb.png','2022-08-03 19:51:12','2022-08-03 04:38:42','2022-08-03 19:51:12'),(2,58,'1TlDVUM3AqFGBCQ45SyedfaBJhQpY1wFNVlCcXxt.png','2022-08-03 20:00:22','2022-08-03 04:39:12','2022-08-03 20:00:22'),(3,58,'lp3i7Y1htqed4n9WRhFfZVLeacgQsWQHb2HXzuWo.png','2022-08-03 20:00:20','2022-08-03 04:39:41','2022-08-03 20:00:20'),(4,52,'R7gVOEyOYASpFWWaln6Y5YzGvi5ljdIfJZyF4xzP.png','2022-08-03 19:51:09','2022-08-03 04:40:26','2022-08-03 19:51:09'),(5,55,'HIYvYo78MXfgaQQvH0db8JjrwtgAUA1FpYbHoChG.png','2022-08-03 19:59:17','2022-08-03 04:40:49','2022-08-03 19:59:17'),(6,1,'o5lsNjpcajhsI5TZmQsNWVB7pogoboDBdw0wLKAB.png',NULL,'2022-08-03 05:35:36','2022-08-03 05:35:36'),(7,2,'OyEwqJQgMW8JCnROGtfyOYrElLgsgRdZJERipliK.jpg',NULL,'2022-08-03 05:50:32','2022-08-03 05:50:32'),(8,3,'93pFjylAe2oXZHlRP6InYcDCWZRDbb7nyFkHmkHX.jpg',NULL,'2022-08-03 05:50:57','2022-08-03 05:50:57'),(9,4,'70xJqERofVKzdcONM6nn009lwiUqOjDREXWR0mGi.jpg',NULL,'2022-08-03 05:51:23','2022-08-03 05:51:23'),(10,5,'CwHtPt2h5ugkeXpl6V4AS2JaBQUAeHcDkGNYSMvC.jpg','2022-08-03 01:11:57','2022-08-03 05:51:53','2022-08-03 01:11:57'),(11,6,'2qgEmRjzW2ICN67wISIcBrlBvX6CcA0gEWkfS7Od.jpg',NULL,'2022-08-03 05:52:25','2022-08-03 05:52:25'),(12,7,'qg9IvMruRSPsr6FAgFSdCJnq3HkdlMDwIcb2I3rG.jpg',NULL,'2022-08-03 05:53:04','2022-08-03 05:53:04'),(13,8,'RwTIkIhAWukttastldGvK7mN7RH7tQXFPDfzMISz.jpg',NULL,'2022-08-03 05:53:21','2022-08-03 05:53:21'),(14,9,'ORM4MAab6Db3PvJq3OTmcp1eJHG4ZfusdKdDVhII.jpg','2022-08-03 01:04:04','2022-08-03 05:53:35','2022-08-03 01:04:04'),(15,10,'YzGK5OFvMkLbYUMr7rUrpzHR4zY3Jp70mbES4kQI.jpg',NULL,'2022-08-03 05:53:52','2022-08-03 05:53:52'),(16,11,'ytvKvAaCggzkAfcvWIBcKBqYehLfvU39hrFrJSib.jpg',NULL,'2022-08-03 05:54:07','2022-08-03 05:54:07'),(17,12,'SEix5ICFpvxQd7Nksm0EJbIz7ao4R46TbMI0PkWI.jpg','2022-08-03 01:09:12','2022-08-03 05:54:41','2022-08-03 01:09:12'),(18,14,'HA6zhzUUZzF7uQPnubaKYnVjsJPShkP4DfxTwmT8.jpg',NULL,'2022-08-03 05:54:57','2022-08-03 05:54:57'),(19,15,'fm6t0vjdjpNDwQsKvwzd8AQqi3NX7dWfAxprx9ox.jpg',NULL,'2022-08-03 05:55:17','2022-08-03 05:55:17'),(20,13,'QSYaYLJaK1hHe2cFIxcwsj6C5ff4WB8lbH8eoIIg.jpg',NULL,'2022-08-03 05:56:37','2022-08-03 05:56:37'),(21,9,'w5Bl5210B3Ziuf9TS7tvIIlqzX1Hvz833Jpel25Z.jpg','2022-08-03 01:05:55','2022-08-03 06:04:12','2022-08-03 01:05:55'),(22,9,'BSQdAC3YMsMcketS52hyrIoOgZdp73cInAHj5eul.jpg','2022-08-03 19:10:30','2022-08-03 06:06:08','2022-08-03 19:10:30'),(23,12,'ySNmrUVeO93u1UVTGCbvnqAn9blNb085TaWleciz.jpg',NULL,'2022-08-03 06:10:08','2022-08-03 06:10:08'),(24,5,'vUivDg5cKS37uo3J53sIj8CWghzC3gCo1tyQfwH9.jpg',NULL,'2022-08-03 06:12:06','2022-08-03 06:12:06'),(25,16,'9Al6BICY5iBJPIO2nG0dMki9mwwBLKqSSYuNcRDK.jpg',NULL,'2022-08-03 20:08:06','2022-08-03 20:08:06'),(26,17,'zvnmtrJO1CjCkDgrnN7Bg65ZXYGMwATDNv7Ptf6l.jpg',NULL,'2022-08-03 20:23:27','2022-08-03 20:23:27'),(27,18,'GcMfwx0udud6RAziCzdusLHYWd2eCvtKVjMBoULO.jpg',NULL,'2022-08-03 20:23:59','2022-08-03 20:23:59'),(28,19,'yiiSichUCceOaWagF5BvwRXAhVLUpRMBVArEsUru.jpg',NULL,'2022-08-03 20:25:35','2022-08-03 20:25:35'),(29,20,'vcP0Zt2EBBXBgaTVwI7UtflkjfQ0CI4L3GC42Djn.jpg',NULL,'2022-08-03 20:26:01','2022-08-03 20:26:01'),(30,21,'sXmKTKe2Hjh8XczIOtoN9o1QKn2Azxf7AnC5k2kb.jpg',NULL,'2022-08-03 20:26:38','2022-08-03 20:26:38'),(31,23,'SXSlVu6tmL2BQ4ht9AhSN0WBze6gtFJjeBAFHexE.jpg',NULL,'2022-08-03 20:26:57','2022-08-03 20:26:57'),(32,26,'lhzPCdGTbJRjWXBzkwHr72H8KgkFCm8cf3MeNUD9.jpg',NULL,'2022-08-03 20:27:22','2022-08-03 20:27:22'),(33,28,'gXpxQSu2JmAqVf7IqFsIA3ImHxghiXRdOofcRwZD.jpg',NULL,'2022-08-03 20:28:31','2022-08-03 20:28:31'),(34,29,'8xNiRC8Jp1D1Budt93Nf7aFYCfSiN8ObLcrX8olR.jpg',NULL,'2022-08-03 20:29:55','2022-08-03 20:29:55'),(35,27,'PpLGhjB58P1j9W2WgIHkpe8nwRp0fDRdju09yl0b.jpg',NULL,'2022-08-03 20:31:14','2022-08-03 20:31:14'),(36,30,'wAMA0t7j56PvZDewAY9JeTWr9I7SjR3TSNh4SA2f.jpg',NULL,'2022-08-03 20:32:08','2022-08-03 20:32:08'),(37,25,'h8yAQ4hYpj8C62mU5gCdARIQY0gIWiwY09a3EPUo.jpg',NULL,'2022-08-03 20:33:56','2022-08-03 20:33:56'),(38,24,'Opt8YhVofnsXtlIAtBMXmgHPR5jQZQL1Qnx8lZpn.jpg',NULL,'2022-08-03 20:35:42','2022-08-03 20:35:42'),(39,22,'s8FQfX1HZBpShTloFcJ5LeqzdjAjzMFbj1OBE0KZ.jpg',NULL,'2022-08-03 20:36:52','2022-08-03 20:36:52'),(40,31,'oBbSJqB3jeYHvLTAG3T8XYv5FyiuGtdjo4TZCZ9c.jpg',NULL,'2022-08-03 23:45:03','2022-08-03 23:45:03'),(41,32,'4zYOj1XCWQzfmHIka2tAYahiQdEqh4hs54P3D2iK.jpg',NULL,'2022-08-03 23:45:51','2022-08-03 23:45:51'),(42,33,'olHP7bnrACFtPYrJWrfJYt6B5FM7WICfiyKegE0a.jpg',NULL,'2022-08-03 23:46:31','2022-08-03 23:46:31'),(43,34,'vQwiMHaZWBLxnBJDSbJ1jL23cS7x1AIDFwcJ2CoE.jpg',NULL,'2022-08-03 23:47:28','2022-08-03 23:47:28'),(44,37,'Q9vdGRy8DYdeL2zEE6gJJUOr9crHejGifNmgNAHl.jpg',NULL,'2022-08-03 23:49:34','2022-08-03 23:49:34'),(45,38,'67pXkLo2WFuP7eKzfcKJ0o8DceHaUbYfIGbhaUVt.jpg',NULL,'2022-08-03 23:51:49','2022-08-03 23:51:49'),(46,57,'iK5rZKPYnaGFYfg11qLWREXdU99unV73uotgGKk1.jpg','2022-08-03 18:52:50','2022-08-03 23:52:22','2022-08-03 18:52:50'),(47,35,'iH3XSzUzFjtD8aRZOKq6y2aCKDl8XaG7N6rSQKOO.jpg',NULL,'2022-08-03 23:53:30','2022-08-03 23:53:30'),(48,39,'bKU2eRBlZbRZ9ZEoBp9dH7R6EbGJpXjUN61f94Gt.jpg',NULL,'2022-08-03 23:54:24','2022-08-03 23:54:24'),(49,36,'IjzZvcEr2lMuNn9wgcqulOjg1sTsoNOW72BAu2ku.jpg',NULL,'2022-08-03 23:56:42','2022-08-03 23:56:42'),(50,42,'xZhouVvHBEVtCmFQVsVAscKJsPIvep5bqzm5NPR1.jpg',NULL,'2022-08-03 23:57:11','2022-08-03 23:57:11'),(51,44,'ZzwF6THnFRh9WtGjAur0mXr5j7IqN2G9AaLfUZnE.jpg',NULL,'2022-08-03 23:58:35','2022-08-03 23:58:35'),(52,45,'G2nEYdXdF6HxctbNOJYCXbr2Rhv5pZI3eQmdZQ1y.jpg',NULL,'2022-08-04 00:02:39','2022-08-04 00:02:39'),(53,41,'eQ5BRrTqLNjSLbg7ercFfRiEMktQttfUAgplCPVa.jpg',NULL,'2022-08-04 00:04:11','2022-08-04 00:04:11'),(54,43,'mwwzALKBf8gf1mcG7Nuc3bIXLRIw27pNcyGjVXLE.jpg',NULL,'2022-08-04 00:05:24','2022-08-04 00:05:24'),(55,40,'Jy7wY4SXEYeT1f0JdgLXq6ruDfxpNt1wUpUJQlE0.jpg',NULL,'2022-08-04 00:06:06','2022-08-04 00:06:06'),(56,9,'buHxMSK5cjUHeCKziijfWRU91HNmw14pGeCx8yyb.jpg',NULL,'2022-08-04 00:11:08','2022-08-04 00:11:08'),(57,46,'5k7T608hKIUxuxnUYWQVfUBeCKjlmJAHxApyEdZK.jpg',NULL,'2022-08-04 00:48:01','2022-08-04 00:48:01'),(58,48,'QkXlnIT8g3lbxunOnOkTKaqwz0URr9P0KGd8mdYl.jpg',NULL,'2022-08-04 00:48:40','2022-08-04 00:48:40'),(59,49,'luhUVYcaDEEWqfIWFkIPBXRXJnU9XpjJvoSB0xoK.jpg',NULL,'2022-08-04 00:49:33','2022-08-04 00:49:33'),(60,50,'T4mkyqIlRjjU9K89wH3Qup4Fy0sPoX8HT6KfZg1G.jpg','2022-08-03 20:06:00','2022-08-04 00:49:55','2022-08-03 20:06:00'),(61,51,'yqa9AYXM0u9olvwJj99Gohb8skqWrvF9r9BEAmnO.jpg',NULL,'2022-08-04 00:50:59','2022-08-04 00:50:59'),(62,52,'Jzqru6IwW3wcP4cBGybe7UI04rKoafbKcwVF6Gnn.jpg',NULL,'2022-08-04 00:52:18','2022-08-04 00:52:18'),(63,54,'c88Xib2jSHgVtsaU2R52XyxUidK20betqFAWeiVs.jpg',NULL,'2022-08-04 00:53:18','2022-08-04 00:53:18'),(64,56,'klCKnEv3BziqiUduByxcwOA6UML4yAykrDDO11sN.jpg',NULL,'2022-08-04 00:53:41','2022-08-04 00:53:41'),(65,47,'9lOUIfYD2BOP0JZ4GMSegG3pknulrC5vxB9oMOmc.jpg',NULL,'2022-08-04 00:55:27','2022-08-04 00:55:27'),(66,53,'Rxd7B8y4NKYFHGVvQDJrsu5PkJJ66LIbLAurSiUt.jpg',NULL,'2022-08-04 00:56:56','2022-08-04 00:56:56'),(67,59,'lu9nwomFkPKSESWFN6JUcySOWmn5XZ074A1OjX1J.jpg',NULL,'2022-08-04 00:59:07','2022-08-04 00:59:07'),(68,55,'WV8csLiPLQ5PwrqAy7oAjNg1roeEK4aNAlmYOPmW.jpg',NULL,'2022-08-04 01:00:14','2022-08-04 01:00:14'),(69,58,'W1WA0UgJ1DscJ13pZAZAbRRmFYp25zI0zPFrM78h.jpg',NULL,'2022-08-04 01:01:00','2022-08-04 01:01:00'),(70,57,'wWQMCFN4dUaulfoAkS6kHAVzcIIqjjPcibbSpDrL.jpg',NULL,'2022-08-04 01:02:50','2022-08-04 01:02:50'),(71,50,'7K24YYI7kjDyOOi7X91RyEfAbJG8tjdCvbsHM90P.jpg',NULL,'2022-08-04 01:07:38','2022-08-04 01:07:38'),(72,60,'rW9c2fgXOq5heg6xhLESjtYV1pSf8omnIOvl2pzm.jpg',NULL,'2022-08-04 01:09:12','2022-08-04 01:09:12'),(73,1,'crSusKZTnPv65Wi6PGVeaTVYLX1AuQJ2iTVLWlAp.jpg','2022-08-05 08:58:30','2022-08-05 13:53:05','2022-08-05 08:58:30'),(74,1,'TZX6pY5UDND0BFLqe29ugVzIi7GllGnya2JsNreM.jpg','2022-08-05 08:58:31','2022-08-05 13:53:05','2022-08-05 08:58:31'),(75,60,'L0HU7IVqya0k4Ml2DcO68A8hKsxuX85zNQOAxdMz.jpg',NULL,'2022-08-05 13:58:06','2022-08-05 13:58:06'),(76,60,'uHOFDn6YLIZzG0PJnU2EPWtsj1LbnnJws34iTD9Y.jpg',NULL,'2022-08-05 13:58:06','2022-08-05 13:58:06'),(77,60,'8XrOWRdWan1R1mwDehgkDxTqyYWzr5YHjZ1Q0H0j.jpg',NULL,'2022-08-05 13:58:06','2022-08-05 13:58:06'),(78,1,'ZHnvC92tQ8nErWRKYM0mEyUtjUng6CRiLerCcjnl.jpg',NULL,'2022-08-05 13:58:54','2022-08-05 13:58:54'),(79,1,'ukcbZLVlThJ9RppaquDZfYvP7ECElRayMOzNnYgZ.jpg',NULL,'2022-08-05 13:58:54','2022-08-05 13:58:54'),(80,1,'xQbHeryDhsfiylDZ1laV7tEtw5CyKcQxInmIsM9k.jpg',NULL,'2022-08-05 13:59:27','2022-08-05 13:59:27'),(81,61,'BjQyJ4gNxBRhtTyNFXqp9PC3CZkgwMmnXL9kZcUz.jpg',NULL,'2022-08-05 14:34:41','2022-08-05 14:34:41'),(82,62,'OK3dU8CTbJE1HEnFEbl34zziFbRo3bsVhab7roAP.jpg',NULL,'2022-08-05 15:36:36','2022-08-05 15:36:36'),(83,62,'N41Lz2gfjSp6yxj8jvOHJCzTArnyD9l01WJC3TM4.jpg',NULL,'2022-08-05 15:36:36','2022-08-05 15:36:36'),(84,62,'ZacwcxKLZzBnKaRtVcJY6vPeznLfED1IRDKm5xcg.jpg',NULL,'2022-08-05 15:36:36','2022-08-05 15:36:36'),(85,62,'xf6i40luGkmsQReFdmybrWTDDcaoM7JDJ64sOYi1.jpg',NULL,'2022-08-05 15:36:36','2022-08-05 15:36:36'),(86,62,'G7PDq2z2VXjKaZux08tPkdGAeuVqlYu7RskQv5fr.png',NULL,'2022-08-05 15:36:36','2022-08-05 15:36:36'),(87,63,'tGNMIvJuXjKiRUb1hW1c5J3dNc06qjqEO1wLBhHb.jpg',NULL,'2022-08-05 16:58:03','2022-08-05 16:58:03');
/*!40000 ALTER TABLE `product_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `gender_id` int NOT NULL,
  `size_id` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Women Embroidered Top','women-embroidered-top-2','Black & White','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',40.00,25,1,3,NULL,'2022-07-29 22:28:09','2022-08-05 09:45:41'),(2,'Women Ruffled Crop Top','women-ruffled-crop-top-2','Pink','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',50.00,0,1,2,NULL,'2022-07-29 22:31:19','2022-08-05 10:47:28'),(3,'Women High-Rise Trousers','women-high-rise-trousers-2','Light Brown','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',55.00,15,1,4,NULL,'2022-07-29 22:33:55','2022-08-03 00:50:57'),(4,'Women Denim Shorts','women-denim-shorts-2','Black','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',48.99,13,1,7,NULL,'2022-07-29 22:36:41','2022-08-03 00:51:23'),(5,'Women Printed Tailored Jacket','women-printed-tailored-jacket-2','Cream','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',70.00,22,1,8,NULL,'2022-07-29 22:57:03','2022-08-03 00:51:53'),(6,'Women Printed Top with Palazzos','women-printed-top-with-palazzos-2','Blue','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',39.99,23,1,5,NULL,'2022-07-29 23:14:04','2022-08-03 00:52:24'),(7,'Women Solid Active Joggers','women-solid-active-joggers-2','Black','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',35.99,50,1,6,NULL,'2022-07-29 23:18:58','2022-08-03 00:53:04'),(8,'Women Solid Lightweight Padded Jacket','women-solid-lightweight-padded-jacket-2','Pink','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',46.58,28,1,3,NULL,'2022-07-29 23:53:13','2022-08-03 00:53:21'),(9,'Women Stunning Sleek Jumpsuit','women-stunning-sleek-jumpsuit-2','Black','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',47.77,38,1,1,NULL,'2022-07-30 00:01:40','2022-08-03 19:11:08'),(10,'Women Floral Print Empire Dress','women-floral-print-empire-dress-2','Blue & Off-White','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',62.45,22,1,2,NULL,'2022-07-30 00:07:05','2022-08-03 00:53:52'),(11,'Women Printed Power Shoulder Bodycon Dress','women-printed-power-shoulder-bodycon-dress-2','Green','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',63.89,42,1,4,NULL,'2022-07-30 00:14:55','2022-08-03 00:54:07'),(12,'Women Plain Jumpsuit','women-plain-jumpsuit','White','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',36.89,36,1,1,NULL,'2022-07-30 00:17:36','2022-08-03 01:10:08'),(13,'Women Regular Sweatshirt','women-regular-sweatshirt','Grey','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',56.00,21,1,1,NULL,'2022-07-30 00:26:07','2022-08-03 00:56:37'),(14,'Women Flared Mini Skirt','women-flared-mini-skirt-2','Multicolor','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',15.45,9,1,3,NULL,'2022-07-30 00:32:15','2022-08-03 00:54:57'),(15,'Women Flared Mid-Rise Slash Knee Stretchable Jeans','women-flared-mid-rise-slash-knee-stretchable-jeans-2','Blue','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',59.99,35,1,6,NULL,'2022-07-30 00:34:53','2022-08-03 00:55:17'),(16,'Girls Floral  High Low Crepe Dress','girls-floral-high-low-crepe-dress','White','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',45.56,25,3,2,NULL,'2022-07-30 00:38:04','2022-08-03 15:08:06'),(17,'Girls Georgette Tiered Top','girls-georgette-tiered-top-2','Green','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',24.56,35,3,3,NULL,'2022-07-30 15:37:43','2022-08-03 15:23:27'),(18,'Girls High-Rise Pleated Trousers','girls-high-rise-pleated-trousers-2','Black','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',54.99,60,3,4,NULL,'2022-07-30 15:40:00','2022-08-03 15:23:58'),(19,'Girls Washed Mid-Rise Denim Shorts','girls-washed-mid-rise-denim-shorts-2','Charcoal Grey & White','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',36.55,14,3,5,NULL,'2022-07-30 15:43:30','2022-08-03 15:25:35'),(20,'Girls Solid Oversized Zip-Through Hoodie','girls-solid-oversized-zip-through-hoodie-2','Beige','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',49.99,48,3,6,NULL,'2022-07-30 15:46:10','2022-08-03 15:34:04'),(21,'Girls Printed Dungarees with Top','girls-printed-dungarees-with-top-2','Off-White','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',45.00,7,3,7,NULL,'2022-07-30 16:02:15','2022-08-03 15:26:38'),(22,'Girls Rapid-Dry, Antimicrobial Lycra Active Jeans','girls-rapid-dry-antimicrobial-lycra-active-jeans','Black','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',68.55,40,3,8,NULL,'2022-07-30 16:04:38','2022-08-03 15:36:52'),(23,'Girls Floral Print Casual Shirt','girls-floral-print-casual-shirt-2','Yellow & Pink','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',30.20,24,3,4,NULL,'2022-07-30 16:11:13','2022-08-03 15:26:57'),(24,'Girls Extra Light Sweatshirt','girls-extra-light-sweatshirt','Pink','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',82.55,44,3,1,NULL,'2022-07-30 16:13:10','2022-08-03 15:35:41'),(25,'Girls Active High Risk Rapid-Dry Jacket','girls-active-high-risk-rapid-dry-jacket','Grey','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',99.99,48,3,3,NULL,'2022-07-30 16:19:28','2022-08-03 15:33:56'),(26,'Girls Chiffon Empire Dress','girls-chiffon-empire-dress-2','Yellow','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',88.90,10,3,2,NULL,'2022-07-30 16:21:27','2022-08-03 15:27:22'),(27,'Girls Conversational Top With Jeans','girls-conversational-top-with-jeans','Blue','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',62.88,18,3,4,NULL,'2022-07-30 16:23:49','2022-08-03 15:31:14'),(28,'Girls Polka Dot Printed Casual Sweater','girls-polka-dot-printed-casual-sweater','Black','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',23.99,44,3,1,NULL,'2022-07-30 16:26:24','2022-08-03 15:28:31'),(29,'Girls Pure Cotton Style Top','girls-pure-cotton-style-top','White','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',50.89,17,3,3,NULL,'2022-07-30 16:31:14','2022-08-03 15:29:55'),(30,'Girls Striped Dress','girls-striped-dress','Pink','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',69.99,50,3,5,NULL,'2022-07-30 16:32:58','2022-08-03 15:32:08'),(31,'Men Basic Heavyweight T-Shirt','men-basic-heavyweight-t-shirt-2','White','<p>Quisque tempus eget nisi sit amet faucibus. Nullam tempor neque nibh, sit amet ultricies arcu iaculis a. Ut sollicitudin nisi et justo elementum, a luctus elit sodales. Aliquam eget pharetra magna. Donec vel urna eget est aliquam dignissim.</p>',25.69,29,2,5,NULL,'2022-07-30 21:03:29','2022-08-05 08:55:21'),(32,'Men Flexible Jeans','men-flexible-jeans-2','Dark Blue','<p>Nulla vitae odio nisl. Fusce sed lorem ac turpis luctus semper et a risus. Nunc eget arcu lobortis, porttitor arcu at, volutpat dui. Maecenas id congue neque.</p>',59.90,65,2,6,NULL,'2022-07-30 21:09:42','2022-08-03 21:53:26'),(33,'Men 100% Transparent Shirt','men-100-transparent-shirt-2','Sky Blue','<p>In purus nulla, sollicitudin quis feugiat at, cursus vitae ex. Etiam vehicula facilisis lectus et ultricies. Cras et tempus felis. Quisque ac mi lectus. Nullam condimentum quam et condimentum mattis.</p>',129.99,16,2,8,NULL,'2022-07-30 21:15:48','2022-08-03 21:53:08'),(34,'Men Easy Care Textured T-Shirt','men-easy-care-textured-t-shirt-2','Navy Blue','<p>In hac habitasse platea dictumst. Aliquam erat volutpat. Vivamus rhoncus pharetra velit. Curabitur ac est tortor. Praesent et cursus enim, a varius massa. Curabitur dapibus nec mi eget dictum.</p>',45.90,89,2,4,NULL,'2022-07-30 21:21:33','2022-08-03 21:52:03'),(35,'Men Combination Patches Bomber Jacket','men-combination-patches-bomber-jacket-2','Purple','<p>Donec facilisis semper interdum. Quisque nunc elit, lacinia dapibus arcu eu, mattis feugiat risus. Donec facilisis odio a ex finibus, nec tempus libero finibus. Morbi sed malesuada mi. In sed risus ultricies, ultricies augue eget, hendrerit ante.</p>',139.00,32,2,7,NULL,'2022-07-30 21:25:01','2022-08-03 21:51:47'),(36,'Men Plain Sport Shorts','men-plain-sport-shorts','Grey','<p>Mauris sit amet lectus in orci euismod venenatis. Donec a turpis sit amet ligula sodales tempor. Vivamus condimentum condimentum velit non dignissim. Sed sit amet eros mollis, viverra metus a, tincidunt urna.</p>',69.99,58,2,3,NULL,'2022-07-30 21:28:29','2022-08-03 18:56:42'),(37,'Men Birdseye Tuxedo','men-birdseye-tuxedo-2','Bluish','<p>Fusce eu mauris at eros tempus bibendum ac ac lorem. Praesent egestas lectus turpis. Nullam dapibus quam tellus, sit amet lobortis ante maximus eu. Nam fermentum eros vitae leo consequat gravida.</p>',169.00,67,2,4,NULL,'2022-07-30 21:31:08','2022-08-03 21:51:32'),(38,'Men Striped Jacquard Shorts','men-striped-jacquard-shorts-2','Striped','<p>Sed finibus consectetur turpis, vitae eleifend justo suscipit at. Morbi semper odio ac lacus iaculis rhoncus. Donec feugiat libero elementum neque blandit tristique sed id arcu.</p>',59.90,58,2,5,NULL,'2022-07-30 21:40:01','2022-08-03 21:51:21'),(39,'Men Slim Fit Tracksuit','men-slim-fit-tracksuit-2','Mid Grey','<p>Nam dapibus semper ipsum, at tempor nisi posuere vel. Phasellus porta, tellus finibus feugiat pharetra, tortor lacus tempus sem, quis pretium lorem ligula a enim. Proin dictum, massa in volutpat pulvin.</p>',79.90,63,2,6,NULL,'2022-07-30 21:43:45','2022-08-03 21:51:06'),(40,'Men Straight Fit Jeans','men-straight-fit-jeans-2','Black','<p>Ptellus metus rutrum orci, at pharetra justo mauris vel elit. Fusce in turpis pellentesque, sagittis neque eu, euismod ante. Curabitur eget lorem vel orci porta dapibus sit amet quis nisi.</p>',59.90,66,2,7,NULL,'2022-07-30 21:46:30','2022-08-03 21:50:37'),(41,'Men Tie-dye Print Sweater','men-tie-dye-print-sweater-2','Juggle','<p>Aliquam eget lorem sed felis imperdiet mattis sed nec tortor. Phasellus tincidunt risus ac elit fermentum, id iaculis justo tincidunt. Duis consectetur lacus at mi placerat auctor.</p>',57.90,61,2,3,NULL,'2022-07-30 21:49:00','2022-08-03 21:50:20'),(42,'Men Abstract Jacquard Sweater','men-abstract-jacquard-sweater-2','Oyster White','<p>Morbi tristique velit ac turpis imperdiet blandit quis ac arcu. Susprna, a fringilla ipsum. Nam ac eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',53.90,90,2,4,NULL,'2022-07-30 21:52:11','2022-08-03 21:50:07'),(43,'Men Crochet Oversized Shirt','men-crochet-oversized-shirt','Green','<p>Morbi feugiat vulputate urna ut ornare. Vivamus vehicula neque enim, et pharetra risus condimentum lacinia. Sed enim lacus, efficitur congue egestas at, congue eget sapien.</p>',99.90,43,2,6,NULL,'2022-07-30 21:53:54','2022-08-03 19:05:24'),(44,'Men Suit Set','men-suit-set-2','Green','<p>Phasellus non finibus diam. Suspendisse efficitur velit elementum nisi aliquam viverra. Praesent et cursus enim, a varius massa. Curabitur dapibus nec mi eget dictum. Donec facilisis semper interdum. Quisque nunc elit, lacin.</p>',169.00,55,2,7,NULL,'2022-07-30 21:55:38','2022-08-03 21:49:24'),(45,'Men Flexible Jumpsuit','men-flexible-jumpsuit','Red','<p>Asectetur adipiscing elit. Maecenas luctus suscipit neque eu rutrum. Phasellus malesuada rhoncus augue, sit amet efficitur dolor. Sed tempor nibh vitae velit scelerisque consectetur.</p>',65.90,39,2,8,NULL,'2022-07-30 21:58:30','2022-08-03 19:02:39'),(46,'Boys Fine Gauge Knit Sports Sweater','boys-fine-gauge-knit-sports-sweater','Grey','<p>Praesent interdum condimentum vulputate. Suspendisse et tortor sed nisl lobortis dictum. Aliquam sollicitudin scelerisque enim, et facilisis ante aliquam sed. Nam ac purus quam.</p>',29.90,75,4,3,NULL,'2022-07-30 22:02:15','2022-08-03 19:48:01'),(47,'Boys Basic Plain Jeans','boys-basic-plain-jeans','Black','<p>Fusce ornare ex ac nisl semper pellentesque. Nulla facilisi. Phasellus maximus, metus sed posuere eleifend, lacus sapien pharetra nulla, eget scelerisque ipsum nulla eget nunc.</p>',19.90,66,4,2,NULL,'2022-07-30 22:04:10','2022-08-05 00:17:43'),(48,'Boys Nylon Varsity Denim Jacket','boys-nylon-varsity-denim-jacket','White','<p>Aenean feugiat eget lectus ac bibendum. Sed auctor sapien libero, et iaculis risus imperdiet eget. Duis lacinia purus et quam elementum vestibulum. Fusce eget lorem.</p>',42.90,82,4,1,NULL,'2022-07-30 22:06:38','2022-08-03 19:50:21'),(49,'Boys Hoodie Jacket','boys-hoodie-jacket-2','Khaki','<p>Lconvallis, ultricies nisl id, hendrerit tellus. Vestibulum sed eros interdum, consectetur justo eu, vehicula quam. Phasellus semper turpis et luctus laoreet. Praesent ullamcorper vel lorem auctor tincidunt.</p>',29.90,75,4,3,NULL,'2022-07-30 22:09:36','2022-08-03 21:47:59'),(50,'Boys Indigo Denim Shorts','boys-indigo-denim-shorts-2','Light Blue','<p>Sed neque justo, pulvinar eu blandit sed, molestie a diam. Suspendisse sollicitudin, felis id placerat aliquet, turpis augue pellentesque elit, in convallis ex nibh sed arcu.</p>',35.90,66,4,1,NULL,'2022-07-30 22:11:37','2022-08-03 21:47:49'),(51,'Boys Printed Pure Cotton Casual T-Shirt','boys-printed-pure-cotton-casual-t-shirt','Navy Blue','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>',45.99,20,4,4,NULL,'2022-08-02 20:46:06','2022-08-03 19:50:59'),(52,'Boys Printed Pure Cotton Shirt with Jeans','boys-printed-pure-cotton-shirt-with-jeans','White & Blue','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus<br />\r\n&nbsp;</p>',73.58,15,4,6,NULL,'2022-08-02 20:51:33','2022-08-03 19:52:18'),(53,'Boys Half Waist Jacket','boys-half-waist-jacket','Black','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus<br />\r\n&nbsp;</p>',110.00,50,4,8,NULL,'2022-08-02 21:03:31','2022-08-03 19:56:56'),(54,'Boys 2-Piece Cotton Costume Set','boys-2-piece-cotton-costume-set','Grey','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus<br />\r\n&nbsp;</p>',90.77,15,4,7,NULL,'2022-08-02 21:07:07','2022-08-03 19:53:18'),(55,'Boys Regular Fit  Costume Set','boys-regular-fit-costume-set','Black','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus<br />\r\n&nbsp;</p>',88.70,22,4,2,NULL,'2022-08-02 21:09:28','2022-08-03 20:01:41'),(56,'Boys Graphic Printed Round-Neck T-shirt','boys-graphic-printed-round-neck-t-shirt-2','White','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus<br />\r\n&nbsp;</p>',90.50,55,4,3,NULL,'2022-08-02 21:17:56','2022-08-03 19:53:41'),(57,'Boys Solid Bomber T-Shirt','boys-solid-bomber-t-shirt','Black','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus<br />\r\n&nbsp;</p>',48.69,43,4,2,NULL,'2022-08-02 21:20:58','2022-08-03 20:02:50'),(58,'Boys Sporty Cotton Shirt','boys-sporty-cotton-shirt','Red','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus<br />\r\n&nbsp;</p>',53.88,30,4,1,NULL,'2022-08-02 21:29:07','2022-08-03 20:01:00'),(59,'Boys Printed Costume Jumpsuit','boys-printed-costume-jumpsuit','Peach','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus<br />\r\n&nbsp;</p>',50.60,27,4,2,NULL,'2022-08-02 21:32:26','2022-08-03 19:59:07'),(60,'Boys Magic Joker Shirt with Trouser','boys-magic-joker-shirt-with-trouser-2','Red and Black','<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus<br />\r\n&nbsp;</p>',44.90,40,4,4,NULL,'2022-08-02 21:40:33','2022-08-05 08:58:06'),(61,'test','test','admin','<p>TEST</p>',10.00,12,2,2,'2022-08-05 10:17:17','2022-08-05 09:34:41','2022-08-05 10:17:17'),(62,'Girl','girl','red','<p>Test&nbsp;<br />\r\n<strong>Tes</strong></p>',10.00,100,1,1,NULL,'2022-08-05 10:36:36','2022-08-05 10:36:36'),(63,'dbsbb','dbsbb','fbsbs','<p>&nbsp;vnftyiti</p>',67.00,67,1,1,'2022-08-05 11:58:08','2022-08-05 11:58:03','2022-08-05 11:58:08');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_charges`
--

DROP TABLE IF EXISTS `shipping_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_charges` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `continent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_charges`
--

LOCK TABLES `shipping_charges` WRITE;
/*!40000 ALTER TABLE `shipping_charges` DISABLE KEYS */;
INSERT INTO `shipping_charges` VALUES (1,'North America','Canada',5.99,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(2,'Overseas','Overseas',29.99,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21');
/*!40000 ALTER TABLE `shipping_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'XS',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(2,'S',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(3,'M',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(4,'L',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(5,'XL',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(6,'XXL',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(7,'XXXL',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(8,'XXXXL',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_short` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst` decimal(8,2) NOT NULL,
  `pst` decimal(8,2) NOT NULL,
  `hst` decimal(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,'Alberta','AB',0.05,0.00,0.00,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(2,'British Columbia','BC',0.05,0.07,0.00,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(3,'Manitoba','MB',0.05,0.07,0.00,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(4,'New Brunswick','NB',0.00,0.00,0.15,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(5,'Newfoundland and Labrador','NL',0.00,0.00,0.15,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(6,'Northwest Territories','NT',0.05,0.00,0.00,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(7,'Nova Scotia','NS',0.00,0.00,0.15,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(8,'Nunavut','NU',0.05,0.00,0.00,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(9,'Ontario','ON',0.00,0.00,0.13,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(10,'Prince Edward Island','PE',0.00,0.00,0.15,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(11,'Quebec','QC',0.05,0.10,0.00,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(12,'Saskatchewan','SK',0.05,0.06,0.00,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(13,'Yukon','YT',0.05,0.00,0.00,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21');
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `response` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_card_info` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,'1','200','0356',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(2,2,'1','200','1158',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(3,3,'1','200','4568',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(4,4,'1','200','6657',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(5,5,'1','200','1111',NULL,'2022-08-04 23:35:57','2022-08-04 23:35:57'),(6,7,'1','200','1111',NULL,'2022-08-05 00:16:27','2022-08-05 00:16:27'),(7,8,'1','200','1111',NULL,'2022-08-05 00:17:58','2022-08-05 00:17:58'),(8,9,'1','200','1111',NULL,'2022-08-05 00:40:19','2022-08-05 00:40:19'),(9,10,'1','200','1111',NULL,'2022-08-05 08:55:21','2022-08-05 08:55:21'),(10,11,'1','200','1111',NULL,'2022-08-05 09:46:04','2022-08-05 09:46:04'),(11,12,'1','200','1111',NULL,'2022-08-05 10:47:29','2022-08-05 10:47:29');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_addresses`
--

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
INSERT INTO `user_addresses` VALUES (1,1,'78 Good Ave','Winnipeg','Manitoba','Canada','R3B 8D3',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(2,2,'135 Main Street','Ottawa','Ontario','Canada','T4F 9H7',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(3,2,'256 Nice Ave','Calgary','Alberta','Canada','A7C 3S4',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(4,2,'37 Awesome Ave','Lansord','Nova Scotia','Canada','E7X 3G4',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(5,1,'1354 Johnson Street','Brandon','Prince Edward Island','Canada','W0Z 8K2',NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(6,3,'23 good Ave','Winnipeg','Manitoba','Canada','A6A7A8',NULL,'2022-08-05 09:36:30','2022-08-05 09:36:30'),(7,3,'23 goodww Ave','Winnipeg','Manitoba','Canada','A6A7A8',NULL,'2022-08-05 09:36:48','2022-08-05 09:36:48'),(8,1,'23 good Ave','Winnipeg','Manitoba','Canada','A6A7A8',NULL,'2022-08-05 09:40:34','2022-08-05 09:40:34'),(9,4,'23 good Ave','Winnipeg','Manitoba','Canada','A6A7A8',NULL,'2022-08-05 10:39:07','2022-08-05 10:39:07'),(10,4,'23 goodww Ave','brandon','Manitoba','Canada','A6A7G8',NULL,'2022-08-05 10:39:45','2022-08-05 10:39:45'),(11,1,'23 good Ave','Winnipeg','Manitoba','Canada','A6A7A8',NULL,'2022-08-05 10:45:37','2022-08-05 10:45:37');
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_address_id` int DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Adminsss','Manager','123-123-1234','admin@gmail.com',NULL,'$2y$10$PmwvqGtHhbK2dflURrsO3ujuPs955xMUIUyAHGMtUyDl8gEm/of0.',5,1,NULL,NULL,'2022-08-04 23:24:21','2022-08-05 10:40:40'),(2,'Test','User','321-321-4321','test@gmail.com',NULL,'$2y$10$JZGzuyccfR1JTQmZ9TX46.ixJ2w08RGLCwtaUf/tXpS5JtKVgUDAu',3,0,NULL,NULL,'2022-08-04 23:24:21','2022-08-04 23:24:21'),(3,'Amyfff','Brown','123-123-1234','amy@gmail.com',NULL,'$2y$10$OjY9HnHK1hQKZr5zUDFoIOcBEhVQsdE0CTMD5C0c6XNcKmTT..ZnG',7,0,NULL,NULL,'2022-08-05 09:36:30','2022-08-05 09:37:53'),(4,'Timmy','Green','123-123-1234','tim@gmail.com',NULL,'$2y$10$OgQ9tmGgOEALnHHCP96GU.j60MgXIdYeb0Jznut/lBwjYxlUrch5m',9,0,NULL,'0vyncaDVjpc1WpWqdD9ayqJa79gF2tv8clh3MifhejSQAzfu6b7rX73VR22W','2022-08-05 10:39:07','2022-08-05 15:42:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-05 18:13:24
