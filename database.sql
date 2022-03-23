-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: Anyflats
-- ------------------------------------------------------
-- Server version	5.7.36-cll-lve

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
-- Table structure for table `commentaries`
--

DROP TABLE IF EXISTS `commentaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commentaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('Maquinaria','Motocicletas','Bicicletas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_de_nacimiento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentaries`
--

LOCK TABLES `commentaries` WRITE;
/*!40000 ALTER TABLE `commentaries` DISABLE KEYS */;
INSERT INTO `commentaries` VALUES (1,'bulah15@schumm.biz','Maquinaria','2022-01-25 06:42:11','2022-01-25 06:42:11','2022-01-25 06:42:11'),(2,'mandy.lesch@bins.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(3,'hand.edyth@gmail.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(4,'qdickinson@hotmail.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(5,'leuschke.peter@hickle.org','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(6,'runolfsdottir.rebeka@nicolas.net','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(7,'ashlynn02@gmail.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(8,'iparker@mccullough.com','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(9,'effertz.rodrigo@yahoo.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(10,'fwisozk@jakubowski.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(11,'hpaucek@koch.info','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(12,'bcasper@runolfsdottir.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:12','2022-01-25 06:42:12'),(13,'jfay@yahoo.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(14,'ftoy@hotmail.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(15,'nella33@yahoo.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(16,'lakin.mauricio@ritchie.org','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(17,'birdie73@braun.com','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(18,'keara.walter@yahoo.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(19,'mritchie@schmidt.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(20,'mckenna.hilpert@hotmail.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(21,'bmaggio@altenwerth.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(22,'ward.alejandra@yahoo.com','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(23,'marlon.sporer@hotmail.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(24,'fernando44@gmail.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:13','2022-01-25 06:42:13'),(25,'olockman@hotmail.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(26,'hector.konopelski@hotmail.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(27,'tito.lang@stoltenberg.biz','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(28,'kamron.ziemann@skiles.org','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(29,'leffler.lorenzo@hotmail.com','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(30,'cristobal70@hill.com','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(31,'keenan91@schaefer.org','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(32,'labadie.zakary@yahoo.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(33,'bashirian.brando@hauck.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(34,'trycia30@koss.com','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(35,'bryon79@konopelski.com','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(36,'aiden.dooley@sporer.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:14','2022-01-25 06:42:14'),(37,'dorthy05@okuneva.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(38,'camille03@hotmail.com','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(39,'lisette.lang@waters.biz','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(40,'gavin.orn@yahoo.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(41,'ilene.flatley@medhurst.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(42,'bruen.juston@hotmail.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(43,'alison90@kutch.com','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(44,'wschumm@gmail.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(45,'ashtyn.heidenreich@okuneva.org','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(46,'myles.hahn@hotmail.com','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(47,'xabbott@streich.info','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(48,'gusikowski.imogene@hane.info','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:42:15','2022-01-25 06:42:15'),(49,'angie30@keebler.net','Motocicletas','0000-00-00 00:00:00','2022-01-25 06:42:16','2022-01-25 06:42:16'),(50,'darryl26@hotmail.com','Bicicletas','0000-00-00 00:00:00','2022-01-25 06:42:16','2022-01-25 06:42:16'),(51,'estrada-44@outlook.com','Maquinaria','0000-00-00 00:00:00','2022-01-25 06:46:31','2022-01-25 06:46:31'),(52,'jesus@mexiconow.mx','Maquinaria','0000-00-00 00:00:00','2022-02-02 03:20:53','2022-02-02 03:20:53'),(53,'jesus@mexiconow.com','Bicicletas','0000-00-00 00:00:00','2022-02-02 03:22:07','2022-02-02 03:22:07'),(54,'mario.diaz@gcollado.com','Motocicletas','0000-00-00 00:00:00','2022-02-04 14:22:25','2022-02-04 14:22:25'),(55,'mario.diaz@gcollado.com','Motocicletas','0000-00-00 00:00:00','2022-02-04 14:24:12','2022-02-04 14:24:12'),(56,'mario.diaz@gcollado.com','Motocicletas','0000-00-00 00:00:00','2022-02-04 14:25:00','2022-02-04 14:25:00'),(57,'arag.xd@gmail.com','Motocicletas','0000-00-00 00:00:00','2022-02-04 15:09:21','2022-02-04 15:09:21'),(58,'estrada-44@hotmail.com','Motocicletas','0000-00-00 00:00:00','2022-02-05 02:57:02','2022-02-05 02:57:02'),(59,'estrada-44@hotmail.com','Motocicletas','0000-00-00 00:00:00','2022-02-05 02:57:17','2022-02-05 02:57:17'),(60,'estrada-44@hotmail.com','Motocicletas','0000-00-00 00:00:00','2022-02-08 23:02:59','2022-02-08 23:02:59'),(61,'estrada-44@hotmail.com','Maquinaria','0000-00-00 00:00:00','2022-02-08 23:09:41','2022-02-08 23:09:41'),(62,'mario.diaz@gcollado.com','Bicicletas','0000-00-00 00:00:00','2022-02-08 23:19:58','2022-02-08 23:19:58'),(63,'prueba@gmail.com','Motocicletas','0000-00-00 00:00:00','2022-02-08 23:23:24','2022-02-08 23:23:24'),(64,'estrada-44@hotmail.com','Motocicletas','0000-00-00 00:00:00','2022-02-11 07:49:25','2022-02-11 07:49:25'),(65,'benjamin.sanchez@innovaria.com.mx','Maquinaria','0000-00-00 00:00:00','2022-02-16 23:56:22','2022-02-16 23:56:22'),(66,'estrada-44@exeample.com','Maquinaria','1995-12-22 07:00:00','2022-02-20 03:13:13','2022-02-20 03:13:13'),(67,'mario.diaz@gcollado.com','Motocicletas','2022-02-19 20:48:28','2022-02-20 03:48:28','2022-02-20 03:48:28'),(68,'mario.diaz@gcollado.com','Motocicletas','2022-02-19 20:49:40','2022-02-20 03:49:40','2022-02-20 03:49:40'),(69,'mario.diaz@gcollado.com','Maquinaria','2022-02-19 20:51:48','2022-02-20 03:51:48','2022-02-20 03:51:48'),(70,'mario.diaz@gcollado.com','Maquinaria','2022-02-05 07:00:00','2022-02-20 03:53:35','2022-02-20 03:53:35'),(71,'willwhiteapple@gmail.com','Maquinaria','2022-02-27 22:54:48','2022-02-28 05:54:48','2022-02-28 05:54:48'),(72,'jesus03932@gmail.com','Motocicletas','1993-03-27 07:00:00','2022-03-01 03:05:05','2022-03-01 03:05:05');
/*!40000 ALTER TABLE `commentaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_01_20_220714_create_commentaries_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jesus Estrada','estrada-44@hotmail.com',NULL,'$2y$10$QovkaMKcicUvX7AXGDTdA.mJDPbZxR3h6fgAXl9gpxsR1PDB0BkR2',NULL,'2022-01-25 06:42:27','2022-01-25 06:42:27');
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

-- Dump completed on 2022-03-22 22:35:43
