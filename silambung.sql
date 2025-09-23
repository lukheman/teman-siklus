/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: silambung
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_log_diagnosis`
--

DROP TABLE IF EXISTS `detail_log_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_log_diagnosis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_gejala` bigint(20) unsigned NOT NULL,
  `id_log_diagnosis` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detail_log_diagnosis_id_gejala_foreign` (`id_gejala`),
  KEY `detail_log_diagnosis_id_log_diagnosis_foreign` (`id_log_diagnosis`),
  CONSTRAINT `detail_log_diagnosis_id_gejala_foreign` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detail_log_diagnosis_id_log_diagnosis_foreign` FOREIGN KEY (`id_log_diagnosis`) REFERENCES `log_diagnosis` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_log_diagnosis`
--

LOCK TABLES `detail_log_diagnosis` WRITE;
/*!40000 ALTER TABLE `detail_log_diagnosis` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_log_diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `gejala`
--

DROP TABLE IF EXISTS `gejala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `gejala` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(4) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bobot` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gejala_kode_unique` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gejala`
--

LOCK TABLES `gejala` WRITE;
/*!40000 ALTER TABLE `gejala` DISABLE KEYS */;
INSERT INTO `gejala` VALUES
(24,'G01','Tubuh terasa lemas',0.6,NULL,'2025-05-22 09:36:07'),
(44,'G02','Demam',0.2,'2025-05-22 09:36:50','2025-05-22 09:36:50'),
(45,'GO3','Pembengkakan diarea perut',0.5,'2025-05-22 09:38:52','2025-05-22 10:24:19'),
(46,'G04','Nafsu makan berkurang',0.7,'2025-05-22 09:39:25','2025-05-22 10:33:01'),
(47,'G05','Perut tidak nyaman pasca makan berlemak',0.7,'2025-05-22 09:40:09','2025-05-22 10:24:43'),
(50,'G06','Nyeri perut setelah makan',0.9,'2025-05-22 09:41:20','2025-05-22 11:09:26'),
(51,'G07','Diare',0.2,'2025-05-22 09:41:49','2025-05-22 11:09:41'),
(52,'G08','Stres atau cemas berlebihan',0.4,'2025-05-22 09:42:15','2025-05-22 11:09:54'),
(53,'G09','Riwayat anoreksia (diet ekstrim)',0.4,'2025-05-22 09:42:53','2025-05-22 11:10:05'),
(54,'G10','Perut terasa panas dan tidak nyaman',0.8,'2025-05-22 09:43:27','2025-05-22 11:10:25'),
(55,'G11','Mual',0.8,'2025-05-22 09:43:54','2025-05-22 11:10:45'),
(56,'G12','Fases bercampur darah',0.7,'2025-05-22 09:44:22','2025-05-22 11:10:56'),
(57,'G13','Nyeri uluhati',0.9,'2025-05-22 09:44:40','2025-05-22 11:11:08'),
(58,'G14','Muntah makanan',0.7,'2025-05-22 09:45:02','2025-05-22 11:11:19'),
(59,'G15','Perut terasa sesak setelah makan',0.7,'2025-05-22 09:45:30','2025-05-22 11:12:54'),
(60,'G16','Sering mengkomsumsi makanan berlemak',0.6,'2025-05-22 09:45:50','2025-05-22 11:13:09'),
(61,'G17','Nyeri perut',0.9,'2025-05-22 09:46:15','2025-05-22 11:13:45'),
(62,'G18','Riwayat komsumsi obat antidepresi (Phenelzine,Fluoxetine)',0.5,'2025-05-22 09:53:48','2025-05-22 11:13:55'),
(63,'G19','Batuk kering',0.5,'2025-05-22 09:54:08','2025-05-22 11:14:14'),
(64,'G20','Sesak nafas',0.3,'2025-05-22 09:54:32','2025-05-22 11:14:25'),
(69,'G21','Nafas tetap bau setelah gosok gigi',0.5,'2025-05-22 09:57:47','2025-05-22 11:14:42'),
(70,'G22','Rasa terbakar didada',0.9,'2025-05-22 10:01:00','2025-05-22 11:14:52'),
(71,'G23','Muntah berwarna kuning dan pahit',0.8,'2025-05-22 10:01:39','2025-05-22 11:15:02'),
(72,'G24','Riwayat pengobatan kangker kemoterapi atau radioterapi',0.7,'2025-05-22 10:02:53','2025-05-22 11:15:14'),
(73,'G25','Nyeri tenggorokan',0.5,'2025-05-22 10:03:45','2025-05-22 11:15:26'),
(75,'G26','Cepat merasa kenyang saat sedikit makan',0.7,'2025-05-22 10:05:19','2025-05-22 11:15:37'),
(76,'G27','Muntah cairan asam/muntah air',0.7,'2025-05-22 10:05:47','2025-05-22 11:15:48'),
(78,'G28','Riwayat pasca operasi lambung',0.7,'2025-05-22 10:07:14','2025-05-22 11:15:59'),
(79,'G29','Perut terasa keras ketika ditekan',0.9,'2025-05-22 10:07:57','2025-05-22 11:16:13'),
(80,'G30','Sering bersendawah',0.6,'2025-05-22 10:09:10','2025-05-22 11:16:22'),
(81,'G31','Sering mengkomsumsi kopi,rokok dan minuman beralkohol',0.6,'2025-05-22 10:10:03','2025-05-22 11:16:49'),
(82,'G32','Buang gas berlebihan',0.6,'2025-05-22 10:10:43','2025-05-22 11:17:00'),
(83,'G33','Sembelit',0.3,'2025-05-22 10:11:10','2025-05-22 11:17:15'),
(84,'G34','Fases berwarna kegelapan',0.7,'2025-05-22 10:11:47','2025-05-22 11:17:29'),
(85,'G35','Nyeri dada',0.6,'2025-05-22 10:12:19','2025-05-22 11:17:44'),
(86,'G36','Perut terasa kembung',0.6,'2025-05-22 10:18:33','2025-05-22 11:17:58'),
(87,'G37','Rongga mulut terasa asam',0.6,'2025-05-22 10:20:47','2025-05-22 11:18:19'),
(88,'G38','Kesulitan menelan',0.5,'2025-05-22 10:27:11','2025-05-22 11:18:32'),
(89,'G39','Suara serak terutama waktu bangun tidur',0.5,'2025-05-22 10:40:36','2025-05-22 11:18:48'),
(92,'G40','Muntah darah',0.8,'2025-05-22 11:19:39','2025-05-22 11:19:39'),
(93,'G41','Kurang darah (anemia)',0.7,'2025-05-22 11:20:20','2025-05-22 11:20:20'),
(94,'G42','Penurunan berat badan secara drastis tanpa sebab',0.7,'2025-05-22 11:35:03','2025-05-22 11:35:03'),
(95,'G43','Cegukan berlebihan',0.6,'2025-05-22 11:35:39','2025-05-22 11:35:39'),
(96,'G44','Fases encer',0.8,'2025-05-23 14:18:33','2025-05-23 14:18:33');
/*!40000 ALTER TABLE `gejala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gejala_penyakit`
--

DROP TABLE IF EXISTS `gejala_penyakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `gejala_penyakit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_penyakit` bigint(20) unsigned NOT NULL,
  `id_gejala` bigint(20) unsigned NOT NULL,
  `bobot` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gejala_penyakit_id_penyakit_foreign` (`id_penyakit`),
  KEY `gejala_penyakit_id_gejala_foreign` (`id_gejala`),
  CONSTRAINT `gejala_penyakit_id_gejala_foreign` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gejala_penyakit_id_penyakit_foreign` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gejala_penyakit`
--

LOCK TABLES `gejala_penyakit` WRITE;
/*!40000 ALTER TABLE `gejala_penyakit` DISABLE KEYS */;
INSERT INTO `gejala_penyakit` VALUES
(40,2,24,NULL,NULL,NULL),
(169,1,44,NULL,NULL,NULL),
(170,1,58,NULL,NULL,NULL),
(171,1,51,NULL,NULL,NULL),
(172,1,55,NULL,NULL,NULL),
(173,1,80,NULL,NULL,NULL),
(174,1,61,NULL,NULL,NULL),
(175,1,86,NULL,NULL,NULL),
(177,1,87,NULL,NULL,NULL),
(178,1,47,NULL,NULL,NULL),
(179,1,73,NULL,NULL,NULL),
(180,1,63,NULL,NULL,NULL),
(181,1,60,NULL,NULL,NULL),
(182,1,71,NULL,NULL,NULL),
(183,1,76,NULL,NULL,NULL),
(184,1,24,NULL,NULL,NULL),
(185,1,89,NULL,NULL,NULL),
(186,1,52,NULL,NULL,NULL),
(187,1,62,NULL,NULL,NULL),
(188,2,45,NULL,NULL,NULL),
(189,2,64,NULL,NULL,NULL),
(190,2,85,NULL,NULL,NULL),
(191,2,55,NULL,NULL,NULL),
(192,2,58,NULL,NULL,NULL),
(193,2,57,NULL,NULL,NULL),
(194,2,86,NULL,NULL,NULL),
(195,2,92,NULL,NULL,NULL),
(196,2,84,NULL,NULL,NULL),
(197,2,93,NULL,NULL,NULL),
(198,2,94,NULL,NULL,NULL),
(199,2,46,NULL,NULL,NULL),
(200,2,75,NULL,NULL,NULL),
(201,2,44,NULL,NULL,NULL),
(202,2,61,NULL,NULL,NULL),
(203,1,57,NULL,NULL,NULL),
(204,3,56,NULL,NULL,NULL),
(205,3,61,NULL,NULL,NULL),
(206,3,55,NULL,NULL,NULL),
(207,3,58,NULL,NULL,NULL),
(208,3,57,NULL,NULL,NULL),
(209,3,86,NULL,NULL,NULL),
(210,3,84,NULL,NULL,NULL),
(211,3,95,NULL,NULL,NULL),
(212,3,75,NULL,NULL,NULL),
(213,3,76,NULL,NULL,NULL),
(214,3,54,NULL,NULL,NULL),
(215,3,50,NULL,NULL,NULL),
(216,3,24,NULL,NULL,NULL),
(217,4,70,NULL,NULL,NULL),
(218,4,55,NULL,NULL,NULL),
(219,4,58,NULL,NULL,NULL),
(220,4,57,NULL,NULL,NULL),
(221,4,86,NULL,NULL,NULL),
(222,4,94,NULL,NULL,NULL),
(223,4,71,NULL,NULL,NULL),
(224,4,80,NULL,NULL,NULL),
(225,4,75,NULL,NULL,NULL),
(226,4,76,NULL,NULL,NULL),
(227,4,24,NULL,NULL,NULL),
(228,4,61,NULL,NULL,NULL),
(229,4,47,NULL,NULL,NULL),
(230,4,60,NULL,NULL,NULL),
(231,4,72,NULL,NULL,NULL),
(232,4,92,NULL,NULL,NULL),
(233,5,54,NULL,NULL,NULL),
(234,5,55,NULL,NULL,NULL),
(235,5,85,NULL,NULL,NULL),
(236,5,58,NULL,NULL,NULL),
(237,5,80,NULL,NULL,NULL),
(238,5,64,NULL,NULL,NULL),
(239,5,57,NULL,NULL,NULL),
(240,5,86,NULL,NULL,NULL),
(241,5,81,NULL,NULL,NULL),
(242,5,94,NULL,NULL,NULL),
(243,5,71,NULL,NULL,NULL),
(244,5,50,NULL,NULL,NULL),
(245,5,76,NULL,NULL,NULL),
(246,5,82,NULL,NULL,NULL),
(247,5,51,NULL,NULL,NULL),
(248,5,83,NULL,NULL,NULL),
(249,6,71,NULL,NULL,NULL),
(250,6,55,NULL,NULL,NULL),
(251,6,58,NULL,NULL,NULL),
(252,6,80,NULL,NULL,NULL),
(253,6,64,NULL,NULL,NULL),
(254,6,57,NULL,NULL,NULL),
(255,6,92,NULL,NULL,NULL),
(256,6,84,NULL,NULL,NULL),
(257,6,56,NULL,NULL,NULL),
(258,6,93,NULL,NULL,NULL),
(259,6,46,NULL,NULL,NULL),
(260,6,78,NULL,NULL,NULL),
(261,6,94,NULL,NULL,NULL),
(262,6,53,NULL,NULL,NULL),
(263,6,61,NULL,NULL,NULL),
(264,6,76,NULL,NULL,NULL),
(265,6,54,NULL,NULL,NULL),
(266,7,61,NULL,NULL,NULL),
(267,7,55,NULL,NULL,NULL),
(268,7,79,NULL,NULL,NULL),
(269,7,56,NULL,NULL,NULL),
(270,7,93,NULL,NULL,NULL),
(271,7,57,NULL,NULL,NULL),
(272,7,44,NULL,NULL,NULL),
(273,7,58,NULL,NULL,NULL),
(274,7,59,NULL,NULL,NULL),
(275,7,92,NULL,NULL,NULL),
(276,7,84,NULL,NULL,NULL),
(277,7,46,NULL,NULL,NULL),
(278,1,88,NULL,NULL,NULL),
(279,1,69,NULL,NULL,NULL),
(280,1,96,NULL,NULL,NULL),
(281,3,96,NULL,NULL,NULL),
(282,5,96,NULL,NULL,NULL);
/*!40000 ALTER TABLE `gejala_penyakit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_diagnosis`
--

DROP TABLE IF EXISTS `log_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_diagnosis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_diagnosis`
--

LOCK TABLES `log_diagnosis` WRITE;
/*!40000 ALTER TABLE `log_diagnosis` DISABLE KEYS */;
INSERT INTO `log_diagnosis` VALUES
(4,'Akmal',12,'2025-07-05 23:01:54','2025-07-05 23:01:54'),
(5,'Akmal2',12,'2025-07-05 23:32:37','2025-07-05 23:32:37'),
(6,'Akmal2',12,'2025-07-05 23:58:31','2025-07-05 23:58:31');
/*!40000 ALTER TABLE `log_diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_diagnosis_gejala`
--

DROP TABLE IF EXISTS `log_diagnosis_gejala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_diagnosis_gejala` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_log_diagnosis` bigint(20) unsigned NOT NULL,
  `id_gejala` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_diagnosis_gejala_id_log_diagnosis_foreign` (`id_log_diagnosis`),
  KEY `log_diagnosis_gejala_id_gejala_foreign` (`id_gejala`),
  CONSTRAINT `log_diagnosis_gejala_id_gejala_foreign` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id`) ON DELETE CASCADE,
  CONSTRAINT `log_diagnosis_gejala_id_log_diagnosis_foreign` FOREIGN KEY (`id_log_diagnosis`) REFERENCES `log_diagnosis` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_diagnosis_gejala`
--

LOCK TABLES `log_diagnosis_gejala` WRITE;
/*!40000 ALTER TABLE `log_diagnosis_gejala` DISABLE KEYS */;
INSERT INTO `log_diagnosis_gejala` VALUES
(7,4,24,NULL,NULL),
(8,4,44,NULL,NULL),
(9,4,45,NULL,NULL),
(10,4,73,NULL,NULL),
(11,4,75,NULL,NULL),
(12,4,76,NULL,NULL),
(13,5,24,NULL,NULL),
(14,5,44,NULL,NULL),
(15,5,45,NULL,NULL),
(16,5,46,NULL,NULL),
(17,5,47,NULL,NULL),
(18,5,50,NULL,NULL),
(19,5,51,NULL,NULL),
(20,5,52,NULL,NULL),
(21,5,70,NULL,NULL),
(22,5,71,NULL,NULL),
(23,5,72,NULL,NULL),
(24,6,24,NULL,NULL),
(25,6,44,NULL,NULL);
/*!40000 ALTER TABLE `log_diagnosis_gejala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_diagnosis_penyakit`
--

DROP TABLE IF EXISTS `log_diagnosis_penyakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_diagnosis_penyakit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_log_diagnosis` bigint(20) unsigned NOT NULL,
  `id_penyakit` bigint(20) unsigned NOT NULL,
  `belief` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_diagnosis_penyakit_id_log_diagnosis_foreign` (`id_log_diagnosis`),
  KEY `log_diagnosis_penyakit_id_penyakit_foreign` (`id_penyakit`),
  CONSTRAINT `log_diagnosis_penyakit_id_log_diagnosis_foreign` FOREIGN KEY (`id_log_diagnosis`) REFERENCES `log_diagnosis` (`id`) ON DELETE CASCADE,
  CONSTRAINT `log_diagnosis_penyakit_id_penyakit_foreign` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_diagnosis_penyakit`
--

LOCK TABLES `log_diagnosis_penyakit` WRITE;
/*!40000 ALTER TABLE `log_diagnosis_penyakit` DISABLE KEYS */;
INSERT INTO `log_diagnosis_penyakit` VALUES
(8,4,3,54.28,NULL,NULL),
(9,4,4,54.28,NULL,NULL),
(10,4,1,31.78,NULL,NULL),
(11,4,2,19.53,NULL,NULL),
(12,4,5,19.18,NULL,NULL),
(13,4,6,19.18,NULL,NULL),
(14,4,7,0.18,NULL,NULL),
(15,5,4,91.12,NULL,NULL),
(16,5,5,14.41,NULL,NULL),
(17,5,1,13.94,NULL,NULL),
(18,5,6,13.28,NULL,NULL),
(19,5,3,0.16,NULL,NULL),
(20,5,2,0.01,NULL,NULL),
(21,5,7,0,NULL,NULL),
(22,6,1,68,NULL,NULL),
(23,6,2,68,NULL,NULL),
(24,6,3,48,NULL,NULL),
(25,6,4,48,NULL,NULL),
(26,6,7,8,NULL,NULL);
/*!40000 ALTER TABLE `log_diagnosis_penyakit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2025_05_03_143419_create_penyakit_table',1),
(5,'2025_05_03_143841_create_gejala_table',1),
(6,'2025_05_03_144719_create_gejala_penyakit_table',1),
(7,'2025_06_01_045038_create_log_diagnosis_table',1),
(8,'2025_06_03_111308_create_detail_log_diagnosis_table',1),
(9,'2025_07_06_062648_create_log_diagnosis_gejala_table',1),
(10,'2025_07_06_062654_create_log_diagnosis_penyakit_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penyakit`
--

DROP TABLE IF EXISTS `penyakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `penyakit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `solusi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `penyakit_kode_unique` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penyakit`
--

LOCK TABLES `penyakit` WRITE;
/*!40000 ALTER TABLE `penyakit` DISABLE KEYS */;
INSERT INTO `penyakit` VALUES
(1,'P01','GERD','GERD adalah penyakit yang menyebabkan rasa terbakar di dada akibat naiknya asam lambung ke esofagus','Ubahlah pola hidup, jadilah lebih sehat, berhenti merokok, hindari berbaring setelah makan, hindari makan berlebihan, hindari kegemukan, hindari stress, istirahat yang cukup, berolahragalah secara teratur, dan bila terjadi GERD segera ke puskesmas atau klinik terdekat untuk mendapatkan pertolongan medis. Pengobatan: Antasida, PPI (penghambat pompa proton) seperti omeprazole, lansoprazole, penghambat reseptor H2 seperti ranitidin, prokinetik seperti domperidon.','2025-05-16 16:37:05','2025-05-21 14:35:11'),
(2,'P02','Kangker Lambung','Kanker lambung adalah jenis kanker yang berkembang di area lambung. Penyebab utama kanker lambung adalah infeksi bakteri  helicobacter pylori yang dapat menyebabkan peradangan kronis pada lapisan lambung. ','Berolahragalah secara teratur, perbanyak minum air putih, perbanyak makan buah dan sayur, jangan merokok, hindari makan makanan yang diasinkan, hindari makan daging yang digoreng atau dipanggang, dan bila mendapati adanya kanker lambung sebaiknya segera memeriksakan diri ke klinik atau puskesmas terdekat untuk mendapatkan penanganan medis.  Perawatan: Terapi radiasi, kemoterapi, dan pembedahan.','2025-05-16 16:37:05','2025-05-16 17:29:53'),
(3,'P03','Gastritis','Gastritis merupakan kondisi peradangan pada mukosa lambung. Secara histopatologis, kondisi ini dapat dibuktikan dengan adanya infiltrasi sel-sel radang di area lambung yang terkena. ','Ubahlah kebiasaan makan, hindari minum minuman beralkohol, hindari makanan pedas, asam, dan bergas, kurangi atau hindari kopi, teh, dan minuman berkarbonasi, usahakan makan teratur dan jangan terlambat, kelola stres dengan berolahraga, bersantai, atau melakukan aktivitas favorit lainnya, dan segera periksakan diri ke klinik atau puskesmas terdekat untuk mendapatkan penanganan dokter. Pengobatan: Antasida Doen, ranitidin, omeprazole, dan Promag','2025-05-16 16:37:05','2025-05-16 17:32:08'),
(4,'P04','Gastroparesis','Gastroparesis adalah gangguan pada proses pengosongan makanan di lambung, yang diduga disebabkan oleh kerusakan saraf vagus, yaitu saraf yang mengatur kontraksi dan penyaluran makanan. Kondisi ini dapat menyebabkan berbagai komplikasi, termasuk risiko malnutrisi ','Pengobatan yang dilakukan yaitu dengan mengkomsumsi obat prokinetik. Bebrapa obat prokinetic seperti domperidone  dan metoclopramide,obat ini dapat merangsang pergerakan otot saluran pencernaa. Selain itu menjaga pola makan dengan makan porsi kecil lebih sering, mengunyah makanan sampai tuntas, minum air sekitar 1-1,5 liter air sehari, berolahraga ringan setelah makan seperti berjalan-jalan, hindari minum berkarbonasi,alcohol, dan merokok, cobalah menghindari berbaring selama 2 jam setelah makan,\nMinum multivitamin setiap hari. Jika memiliki gejala yang cukup parah seperti rasa terbakar dibagian dada, muntah berwarna kuning dan pahit disarankan untuk melakukan pemeriksaan langsung ke rumah sakit.\n','2025-05-16 16:37:05','2025-05-16 17:33:45'),
(5,'P05','Sindrom Dispepsia','Dispepsia adalah sindrom gejala yang umum ditemui di masyarakat, yang ditandai dengan rasa nyeri atau ketidaknyamanan pada bagian atas perut atau ulu hati. Penyakit dispepsia dapat dipengaruhi oleh berbagai faktor, baik yang berkaitan dengan pola makan maupun lingkungan.','Mengkonsumsi obat Antasida yang  dapat menetralisir asam lambung, Antikolinergik dapat menekan sekresi asam lambung,  Antagonis reseptor H2 seperti simetidin, roksatidin, ranitidin, dan famotidine, dapat menghilangkan nyeri ulu hati. Selain itu perlu menjaga status nutrisi dan hidrasi, dengan mengonsumsi gizi seimbang dan minum air putih yang cukup Mengatur gaya hidup, berupa:\nMengatur pola makan (jumlah, frekuensi, dan jenis makanan), Berhenti merokok dan mengonsumsi alcohol, Membatasi konsumsi kafein, Membatasi konsumsi makanan makanan pedas, asam, dan berlemak\nMempertahankan berat badan ideal.\n','2025-05-16 17:35:17','2025-05-16 17:35:17'),
(6,'P06','Ulkus Peptikum','Ulkus peptikum atau Peptic Ulcer adalah kondisi di mana terjadi luka atau borok pada lapisan dalam lambung. ','Pengobatan yang dilakukan yaitu dengan meminum antibiotik jika disebabkan oleh infeksi Helicobacter pylori, mengkomsumsi obat penekan asam lambung seperti Proton Pump Inhibitor (PPI), seperti omeprazole, lansoprazole, atau esomeprazole digunakan untuk menurunkan produksi asam lambung dan mempercepat penyembuhan ulkus peptikum, disertai perubahan gaya hidup seperti menghindari makanan pemicu asam, berhenti merokok, membatasi konsumsi alkohol. Jika gejala menetap atau memburuk, perlu dilakukan pemeriksaan lanjutan seperti endoskopi, Segera konsultasikan jika mengalami muntah darah, tinja berwarna hitam, nyeri perut hebat, mual terus-menerus, atau penurunan berat badan drastis.','2025-05-16 17:37:42','2025-05-16 17:37:42'),
(7,'P07','Polip Lambung','Polip adalah pertumbuhan jaringan secara abnormal pada lapisan dalam lambung. Polip ini dapat muncul di area tertentu pada lambung dan dapat dibedakan berdasarkan jenis atau tipenya.','disarankan untuk menjaga pola hidup sehat, seperti menghindari makanan penyebab asam lambung, berhenti merokok, dan menjaga pola makan sehat. Polip lambung biasanya memiliki risiko berkembang menjadi kanker lambung. Polip yang berukuran besar, menimbulkan gejala seperti nyeri atau perdarahan, polip jenis ini akan diangkat melalui prosedur endoskopi. Tindakan ini bertujuan untuk mencegah perkembangan lebih lanjut, termasuk potensi menjadi kanker. sehingga apabila mengalami gejala seperti nyeri hebat, muntah darah dan mengalami BAB berdarah segeralah pergi periksa ke dokter.pengobatan sementara antibiotic untuk menghilangkan infeksi bakteri dan obat penekan asam lambung seperti proton pump inhibitor (PPI) – misalnya omeprazole atau lansoprazole yang sering digunakan untuk mengurangi produksi asam lambung dan mencegah iritasi pada dinding lambung.','2025-05-16 17:38:55','2025-05-16 17:38:55');
/*!40000 ALTER TABLE `penyakit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('CFKv65mhPJDEEEcAtFU13YGhMCQBYe2DZXoF1R8Y',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:139.0) Gecko/20100101 Firefox/139.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiU1pjc2hHU1QwemZNQVdYWDN4RkpWUndPY1NOT281ZXhDbWJuM0xGUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjExOiJpbmZvX3Bhc2llbiI7YToyOntzOjQ6Im5hbWEiO3M6NjoiQWttYWwyIjtzOjQ6InVtdXIiO3M6MjoiMTIiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTU6Imhhc2lsX2RpYWdub3NpcyI7YToxOntzOjg6InBlbnlha2l0IjtPOjM5OiJJbGx1bWluYXRlXERhdGFiYXNlXEVsb3F1ZW50XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6NTp7aTowO086MTk6IkFwcFxNb2RlbHNcUGVueWFraXQiOjMyOntzOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjg6IgAqAHRhYmxlIjtzOjg6InBlbnlha2l0IjtzOjEzOiIAKgBwcmltYXJ5S2V5IjtzOjI6ImlkIjtzOjEwOiIAKgBrZXlUeXBlIjtzOjM6ImludCI7czoxMjoiaW5jcmVtZW50aW5nIjtiOjE7czo3OiIAKgB3aXRoIjthOjA6e31zOjEyOiIAKgB3aXRoQ291bnQiO2E6MDp7fXM6MTk6InByZXZlbnRzTGF6eUxvYWRpbmciO2I6MDtzOjEwOiIAKgBwZXJQYWdlIjtpOjE1O3M6NjoiZXhpc3RzIjtiOjE7czoxODoid2FzUmVjZW50bHlDcmVhdGVkIjtiOjA7czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6OTp7czoyOiJpZCI7aToxO3M6NDoia29kZSI7czozOiJQMDEiO3M6NDoibmFtYSI7czo0OiJHRVJEIjtzOjk6ImRlc2tyaXBzaSI7czo5OToiR0VSRCBhZGFsYWggcGVueWFraXQgeWFuZyBtZW55ZWJhYmthbiByYXNhIHRlcmJha2FyIGRpIGRhZGEgYWtpYmF0IG5haWtueWEgYXNhbSBsYW1idW5nIGtlIGVzb2ZhZ3VzIjtzOjY6InNvbHVzaSI7czo0NjQ6IlViYWhsYWggcG9sYSBoaWR1cCwgamFkaWxhaCBsZWJpaCBzZWhhdCwgYmVyaGVudGkgbWVyb2tvaywgaGluZGFyaSBiZXJiYXJpbmcgc2V0ZWxhaCBtYWthbiwgaGluZGFyaSBtYWthbiBiZXJsZWJpaGFuLCBoaW5kYXJpIGtlZ2VtdWthbiwgaGluZGFyaSBzdHJlc3MsIGlzdGlyYWhhdCB5YW5nIGN1a3VwLCBiZXJvbGFocmFnYWxhaCBzZWNhcmEgdGVyYXR1ciwgZGFuIGJpbGEgdGVyamFkaSBHRVJEIHNlZ2VyYSBrZSBwdXNrZXNtYXMgYXRhdSBrbGluaWsgdGVyZGVrYXQgdW50dWsgbWVuZGFwYXRrYW4gcGVydG9sb25nYW4gbWVkaXMuIFBlbmdvYmF0YW46IEFudGFzaWRhLCBQUEkgKHBlbmdoYW1iYXQgcG9tcGEgcHJvdG9uKSBzZXBlcnRpIG9tZXByYXpvbGUsIGxhbnNvcHJhem9sZSwgcGVuZ2hhbWJhdCByZXNlcHRvciBIMiBzZXBlcnRpIHJhbml0aWRpbiwgcHJva2luZXRpayBzZXBlcnRpIGRvbXBlcmlkb24uIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDI1LTA1LTE3IDAwOjM3OjA1IjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDI1LTA1LTIxIDIyOjM1OjExIjtzOjY6ImJlbGllZiI7ZDo2ODtzOjg6ImRlbnNpdGFzIjtkOjAuNjg7fXM6MTE6IgAqAG9yaWdpbmFsIjthOjc6e3M6MjoiaWQiO2k6MTtzOjQ6ImtvZGUiO3M6MzoiUDAxIjtzOjQ6Im5hbWEiO3M6NDoiR0VSRCI7czo5OiJkZXNrcmlwc2kiO3M6OTk6IkdFUkQgYWRhbGFoIHBlbnlha2l0IHlhbmcgbWVueWViYWJrYW4gcmFzYSB0ZXJiYWthciBkaSBkYWRhIGFraWJhdCBuYWlrbnlhIGFzYW0gbGFtYnVuZyBrZSBlc29mYWd1cyI7czo2OiJzb2x1c2kiO3M6NDY0OiJVYmFobGFoIHBvbGEgaGlkdXAsIGphZGlsYWggbGViaWggc2VoYXQsIGJlcmhlbnRpIG1lcm9rb2ssIGhpbmRhcmkgYmVyYmFyaW5nIHNldGVsYWggbWFrYW4sIGhpbmRhcmkgbWFrYW4gYmVybGViaWhhbiwgaGluZGFyaSBrZWdlbXVrYW4sIGhpbmRhcmkgc3RyZXNzLCBpc3RpcmFoYXQgeWFuZyBjdWt1cCwgYmVyb2xhaHJhZ2FsYWggc2VjYXJhIHRlcmF0dXIsIGRhbiBiaWxhIHRlcmphZGkgR0VSRCBzZWdlcmEga2UgcHVza2VzbWFzIGF0YXUga2xpbmlrIHRlcmRla2F0IHVudHVrIG1lbmRhcGF0a2FuIHBlcnRvbG9uZ2FuIG1lZGlzLiBQZW5nb2JhdGFuOiBBbnRhc2lkYSwgUFBJIChwZW5naGFtYmF0IHBvbXBhIHByb3Rvbikgc2VwZXJ0aSBvbWVwcmF6b2xlLCBsYW5zb3ByYXpvbGUsIHBlbmdoYW1iYXQgcmVzZXB0b3IgSDIgc2VwZXJ0aSByYW5pdGlkaW4sIHByb2tpbmV0aWsgc2VwZXJ0aSBkb21wZXJpZG9uLiI7czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAyNS0wNS0xNyAwMDozNzowNSI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAyNS0wNS0yMSAyMjozNToxMSI7fXM6MTA6IgAqAGNoYW5nZXMiO2E6MDp7fXM6ODoiACoAY2FzdHMiO2E6MDp7fXM6MTc6IgAqAGNsYXNzQ2FzdENhY2hlIjthOjA6e31zOjIxOiIAKgBhdHRyaWJ1dGVDYXN0Q2FjaGUiO2E6MDp7fXM6MTM6IgAqAGRhdGVGb3JtYXQiO047czoxMDoiACoAYXBwZW5kcyI7YTowOnt9czoxOToiACoAZGlzcGF0Y2hlc0V2ZW50cyI7YTowOnt9czoxNDoiACoAb2JzZXJ2YWJsZXMiO2E6MDp7fXM6MTI6IgAqAHJlbGF0aW9ucyI7YTowOnt9czoxMDoiACoAdG91Y2hlcyI7YTowOnt9czoyNzoiACoAcmVsYXRpb25BdXRvbG9hZENhbGxiYWNrIjtOO3M6MjY6IgAqAHJlbGF0aW9uQXV0b2xvYWRDb250ZXh0IjtOO3M6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjEzOiJ1c2VzVW5pcXVlSWRzIjtiOjA7czo5OiIAKgBoaWRkZW4iO2E6MDp7fXM6MTA6IgAqAHZpc2libGUiO2E6MDp7fXM6MTE6IgAqAGZpbGxhYmxlIjthOjA6e31zOjEwOiIAKgBndWFyZGVkIjthOjA6e319aToxO086MTk6IkFwcFxNb2RlbHNcUGVueWFraXQiOjMyOntzOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjg6IgAqAHRhYmxlIjtzOjg6InBlbnlha2l0IjtzOjEzOiIAKgBwcmltYXJ5S2V5IjtzOjI6ImlkIjtzOjEwOiIAKgBrZXlUeXBlIjtzOjM6ImludCI7czoxMjoiaW5jcmVtZW50aW5nIjtiOjE7czo3OiIAKgB3aXRoIjthOjA6e31zOjEyOiIAKgB3aXRoQ291bnQiO2E6MDp7fXM6MTk6InByZXZlbnRzTGF6eUxvYWRpbmciO2I6MDtzOjEwOiIAKgBwZXJQYWdlIjtpOjE1O3M6NjoiZXhpc3RzIjtiOjE7czoxODoid2FzUmVjZW50bHlDcmVhdGVkIjtiOjA7czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6OTp7czoyOiJpZCI7aToyO3M6NDoia29kZSI7czozOiJQMDIiO3M6NDoibmFtYSI7czoxNToiS2FuZ2tlciBMYW1idW5nIjtzOjk6ImRlc2tyaXBzaSI7czoyMDU6IkthbmtlciBsYW1idW5nIGFkYWxhaCBqZW5pcyBrYW5rZXIgeWFuZyBiZXJrZW1iYW5nIGRpIGFyZWEgbGFtYnVuZy4gUGVueWViYWIgdXRhbWEga2Fua2VyIGxhbWJ1bmcgYWRhbGFoIGluZmVrc2kgYmFrdGVyaSAgaGVsaWNvYmFjdGVyIHB5bG9yaSB5YW5nIGRhcGF0IG1lbnllYmFia2FuIHBlcmFkYW5nYW4ga3JvbmlzIHBhZGEgbGFwaXNhbiBsYW1idW5nLiAiO3M6Njoic29sdXNpIjtzOjM5NzoiQmVyb2xhaHJhZ2FsYWggc2VjYXJhIHRlcmF0dXIsIHBlcmJhbnlhayBtaW51bSBhaXIgcHV0aWgsIHBlcmJhbnlhayBtYWthbiBidWFoIGRhbiBzYXl1ciwgamFuZ2FuIG1lcm9rb2ssIGhpbmRhcmkgbWFrYW4gbWFrYW5hbiB5YW5nIGRpYXNpbmthbiwgaGluZGFyaSBtYWthbiBkYWdpbmcgeWFuZyBkaWdvcmVuZyBhdGF1IGRpcGFuZ2dhbmcsIGRhbiBiaWxhIG1lbmRhcGF0aSBhZGFueWEga2Fua2VyIGxhbWJ1bmcgc2ViYWlrbnlhIHNlZ2VyYSBtZW1lcmlrc2FrYW4gZGlyaSBrZSBrbGluaWsgYXRhdSBwdXNrZXNtYXMgdGVyZGVrYXQgdW50dWsgbWVuZGFwYXRrYW4gcGVuYW5nYW5hbiBtZWRpcy4gIFBlcmF3YXRhbjogVGVyYXBpIHJhZGlhc2ksIGtlbW90ZXJhcGksIGRhbiBwZW1iZWRhaGFuLiI7czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAyNS0wNS0xNyAwMDozNzowNSI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAyNS0wNS0xNyAwMToyOTo1MyI7czo2OiJiZWxpZWYiO2Q6Njg7czo4OiJkZW5zaXRhcyI7ZDowLjY4O31zOjExOiIAKgBvcmlnaW5hbCI7YTo3OntzOjI6ImlkIjtpOjI7czo0OiJrb2RlIjtzOjM6IlAwMiI7czo0OiJuYW1hIjtzOjE1OiJLYW5na2VyIExhbWJ1bmciO3M6OToiZGVza3JpcHNpIjtzOjIwNToiS2Fua2VyIGxhbWJ1bmcgYWRhbGFoIGplbmlzIGthbmtlciB5YW5nIGJlcmtlbWJhbmcgZGkgYXJlYSBsYW1idW5nLiBQZW55ZWJhYiB1dGFtYSBrYW5rZXIgbGFtYnVuZyBhZGFsYWggaW5mZWtzaSBiYWt0ZXJpICBoZWxpY29iYWN0ZXIgcHlsb3JpIHlhbmcgZGFwYXQgbWVueWViYWJrYW4gcGVyYWRhbmdhbiBrcm9uaXMgcGFkYSBsYXBpc2FuIGxhbWJ1bmcuICI7czo2OiJzb2x1c2kiO3M6Mzk3OiJCZXJvbGFocmFnYWxhaCBzZWNhcmEgdGVyYXR1ciwgcGVyYmFueWFrIG1pbnVtIGFpciBwdXRpaCwgcGVyYmFueWFrIG1ha2FuIGJ1YWggZGFuIHNheXVyLCBqYW5nYW4gbWVyb2tvaywgaGluZGFyaSBtYWthbiBtYWthbmFuIHlhbmcgZGlhc2lua2FuLCBoaW5kYXJpIG1ha2FuIGRhZ2luZyB5YW5nIGRpZ29yZW5nIGF0YXUgZGlwYW5nZ2FuZywgZGFuIGJpbGEgbWVuZGFwYXRpIGFkYW55YSBrYW5rZXIgbGFtYnVuZyBzZWJhaWtueWEgc2VnZXJhIG1lbWVyaWtzYWthbiBkaXJpIGtlIGtsaW5payBhdGF1IHB1c2tlc21hcyB0ZXJkZWthdCB1bnR1ayBtZW5kYXBhdGthbiBwZW5hbmdhbmFuIG1lZGlzLiAgUGVyYXdhdGFuOiBUZXJhcGkgcmFkaWFzaSwga2Vtb3RlcmFwaSwgZGFuIHBlbWJlZGFoYW4uIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDI1LTA1LTE3IDAwOjM3OjA1IjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDI1LTA1LTE3IDAxOjI5OjUzIjt9czoxMDoiACoAY2hhbmdlcyI7YTowOnt9czo4OiIAKgBjYXN0cyI7YTowOnt9czoxNzoiACoAY2xhc3NDYXN0Q2FjaGUiO2E6MDp7fXM6MjE6IgAqAGF0dHJpYnV0ZUNhc3RDYWNoZSI7YTowOnt9czoxMzoiACoAZGF0ZUZvcm1hdCI7TjtzOjEwOiIAKgBhcHBlbmRzIjthOjA6e31zOjE5OiIAKgBkaXNwYXRjaGVzRXZlbnRzIjthOjA6e31zOjE0OiIAKgBvYnNlcnZhYmxlcyI7YTowOnt9czoxMjoiACoAcmVsYXRpb25zIjthOjA6e31zOjEwOiIAKgB0b3VjaGVzIjthOjA6e31zOjI3OiIAKgByZWxhdGlvbkF1dG9sb2FkQ2FsbGJhY2siO047czoyNjoiACoAcmVsYXRpb25BdXRvbG9hZENvbnRleHQiO047czoxMDoidGltZXN0YW1wcyI7YjoxO3M6MTM6InVzZXNVbmlxdWVJZHMiO2I6MDtzOjk6IgAqAGhpZGRlbiI7YTowOnt9czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMToiACoAZmlsbGFibGUiO2E6MDp7fXM6MTA6IgAqAGd1YXJkZWQiO2E6MDp7fX1pOjI7TzoxOToiQXBwXE1vZGVsc1xQZW55YWtpdCI6MzI6e3M6MTM6IgAqAGNvbm5lY3Rpb24iO3M6NToibXlzcWwiO3M6ODoiACoAdGFibGUiO3M6ODoicGVueWFraXQiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxOToicHJldmVudHNMYXp5TG9hZGluZyI7YjowO3M6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czoxMzoiACoAYXR0cmlidXRlcyI7YTo5OntzOjI6ImlkIjtpOjM7czo0OiJrb2RlIjtzOjM6IlAwMyI7czo0OiJuYW1hIjtzOjk6Ikdhc3RyaXRpcyI7czo5OiJkZXNrcmlwc2kiO3M6MTgyOiJHYXN0cml0aXMgbWVydXBha2FuIGtvbmRpc2kgcGVyYWRhbmdhbiBwYWRhIG11a29zYSBsYW1idW5nLiBTZWNhcmEgaGlzdG9wYXRvbG9naXMsIGtvbmRpc2kgaW5pIGRhcGF0IGRpYnVrdGlrYW4gZGVuZ2FuIGFkYW55YSBpbmZpbHRyYXNpIHNlbC1zZWwgcmFkYW5nIGRpIGFyZWEgbGFtYnVuZyB5YW5nIHRlcmtlbmEuICI7czo2OiJzb2x1c2kiO3M6NDQ3OiJVYmFobGFoIGtlYmlhc2FhbiBtYWthbiwgaGluZGFyaSBtaW51bSBtaW51bWFuIGJlcmFsa29ob2wsIGhpbmRhcmkgbWFrYW5hbiBwZWRhcywgYXNhbSwgZGFuIGJlcmdhcywga3VyYW5naSBhdGF1IGhpbmRhcmkga29waSwgdGVoLCBkYW4gbWludW1hbiBiZXJrYXJib25hc2ksIHVzYWhha2FuIG1ha2FuIHRlcmF0dXIgZGFuIGphbmdhbiB0ZXJsYW1iYXQsIGtlbG9sYSBzdHJlcyBkZW5nYW4gYmVyb2xhaHJhZ2EsIGJlcnNhbnRhaSwgYXRhdSBtZWxha3VrYW4gYWt0aXZpdGFzIGZhdm9yaXQgbGFpbm55YSwgZGFuIHNlZ2VyYSBwZXJpa3Nha2FuIGRpcmkga2Uga2xpbmlrIGF0YXUgcHVza2VzbWFzIHRlcmRla2F0IHVudHVrIG1lbmRhcGF0a2FuIHBlbmFuZ2FuYW4gZG9rdGVyLiBQZW5nb2JhdGFuOiBBbnRhc2lkYSBEb2VuLCByYW5pdGlkaW4sIG9tZXByYXpvbGUsIGRhbiBQcm9tYWciO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjUtMDUtMTcgMDA6Mzc6MDUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjUtMDUtMTcgMDE6MzI6MDgiO3M6NjoiYmVsaWVmIjtkOjQ4O3M6ODoiZGVuc2l0YXMiO2Q6MC40ODt9czoxMToiACoAb3JpZ2luYWwiO2E6Nzp7czoyOiJpZCI7aTozO3M6NDoia29kZSI7czozOiJQMDMiO3M6NDoibmFtYSI7czo5OiJHYXN0cml0aXMiO3M6OToiZGVza3JpcHNpIjtzOjE4MjoiR2FzdHJpdGlzIG1lcnVwYWthbiBrb25kaXNpIHBlcmFkYW5nYW4gcGFkYSBtdWtvc2EgbGFtYnVuZy4gU2VjYXJhIGhpc3RvcGF0b2xvZ2lzLCBrb25kaXNpIGluaSBkYXBhdCBkaWJ1a3Rpa2FuIGRlbmdhbiBhZGFueWEgaW5maWx0cmFzaSBzZWwtc2VsIHJhZGFuZyBkaSBhcmVhIGxhbWJ1bmcgeWFuZyB0ZXJrZW5hLiAiO3M6Njoic29sdXNpIjtzOjQ0NzoiVWJhaGxhaCBrZWJpYXNhYW4gbWFrYW4sIGhpbmRhcmkgbWludW0gbWludW1hbiBiZXJhbGtvaG9sLCBoaW5kYXJpIG1ha2FuYW4gcGVkYXMsIGFzYW0sIGRhbiBiZXJnYXMsIGt1cmFuZ2kgYXRhdSBoaW5kYXJpIGtvcGksIHRlaCwgZGFuIG1pbnVtYW4gYmVya2FyYm9uYXNpLCB1c2FoYWthbiBtYWthbiB0ZXJhdHVyIGRhbiBqYW5nYW4gdGVybGFtYmF0LCBrZWxvbGEgc3RyZXMgZGVuZ2FuIGJlcm9sYWhyYWdhLCBiZXJzYW50YWksIGF0YXUgbWVsYWt1a2FuIGFrdGl2aXRhcyBmYXZvcml0IGxhaW5ueWEsIGRhbiBzZWdlcmEgcGVyaWtzYWthbiBkaXJpIGtlIGtsaW5payBhdGF1IHB1c2tlc21hcyB0ZXJkZWthdCB1bnR1ayBtZW5kYXBhdGthbiBwZW5hbmdhbmFuIGRva3Rlci4gUGVuZ29iYXRhbjogQW50YXNpZGEgRG9lbiwgcmFuaXRpZGluLCBvbWVwcmF6b2xlLCBkYW4gUHJvbWFnIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDI1LTA1LTE3IDAwOjM3OjA1IjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDI1LTA1LTE3IDAxOjMyOjA4Ijt9czoxMDoiACoAY2hhbmdlcyI7YTowOnt9czo4OiIAKgBjYXN0cyI7YTowOnt9czoxNzoiACoAY2xhc3NDYXN0Q2FjaGUiO2E6MDp7fXM6MjE6IgAqAGF0dHJpYnV0ZUNhc3RDYWNoZSI7YTowOnt9czoxMzoiACoAZGF0ZUZvcm1hdCI7TjtzOjEwOiIAKgBhcHBlbmRzIjthOjA6e31zOjE5OiIAKgBkaXNwYXRjaGVzRXZlbnRzIjthOjA6e31zOjE0OiIAKgBvYnNlcnZhYmxlcyI7YTowOnt9czoxMjoiACoAcmVsYXRpb25zIjthOjA6e31zOjEwOiIAKgB0b3VjaGVzIjthOjA6e31zOjI3OiIAKgByZWxhdGlvbkF1dG9sb2FkQ2FsbGJhY2siO047czoyNjoiACoAcmVsYXRpb25BdXRvbG9hZENvbnRleHQiO047czoxMDoidGltZXN0YW1wcyI7YjoxO3M6MTM6InVzZXNVbmlxdWVJZHMiO2I6MDtzOjk6IgAqAGhpZGRlbiI7YTowOnt9czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMToiACoAZmlsbGFibGUiO2E6MDp7fXM6MTA6IgAqAGd1YXJkZWQiO2E6MDp7fX1pOjM7TzoxOToiQXBwXE1vZGVsc1xQZW55YWtpdCI6MzI6e3M6MTM6IgAqAGNvbm5lY3Rpb24iO3M6NToibXlzcWwiO3M6ODoiACoAdGFibGUiO3M6ODoicGVueWFraXQiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxOToicHJldmVudHNMYXp5TG9hZGluZyI7YjowO3M6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czoxMzoiACoAYXR0cmlidXRlcyI7YTo5OntzOjI6ImlkIjtpOjQ7czo0OiJrb2RlIjtzOjM6IlAwNCI7czo0OiJuYW1hIjtzOjEzOiJHYXN0cm9wYXJlc2lzIjtzOjk6ImRlc2tyaXBzaSI7czoyNjM6Ikdhc3Ryb3BhcmVzaXMgYWRhbGFoIGdhbmdndWFuIHBhZGEgcHJvc2VzIHBlbmdvc29uZ2FuIG1ha2FuYW4gZGkgbGFtYnVuZywgeWFuZyBkaWR1Z2EgZGlzZWJhYmthbiBvbGVoIGtlcnVzYWthbiBzYXJhZiB2YWd1cywgeWFpdHUgc2FyYWYgeWFuZyBtZW5nYXR1ciBrb250cmFrc2kgZGFuIHBlbnlhbHVyYW4gbWFrYW5hbi4gS29uZGlzaSBpbmkgZGFwYXQgbWVueWViYWJrYW4gYmVyYmFnYWkga29tcGxpa2FzaSwgdGVybWFzdWsgcmlzaWtvIG1hbG51dHJpc2kgIjtzOjY6InNvbHVzaSI7czo3MDY6IlBlbmdvYmF0YW4geWFuZyBkaWxha3VrYW4geWFpdHUgZGVuZ2FuIG1lbmdrb21zdW1zaSBvYmF0IHByb2tpbmV0aWsuIEJlYnJhcGEgb2JhdCBwcm9raW5ldGljIHNlcGVydGkgZG9tcGVyaWRvbmUgIGRhbiBtZXRvY2xvcHJhbWlkZSxvYmF0IGluaSBkYXBhdCBtZXJhbmdzYW5nIHBlcmdlcmFrYW4gb3RvdCBzYWx1cmFuIHBlbmNlcm5hYS4gU2VsYWluIGl0dSBtZW5qYWdhIHBvbGEgbWFrYW4gZGVuZ2FuIG1ha2FuIHBvcnNpIGtlY2lsIGxlYmloIHNlcmluZywgbWVuZ3VueWFoIG1ha2FuYW4gc2FtcGFpIHR1bnRhcywgbWludW0gYWlyIHNla2l0YXIgMS0xLDUgbGl0ZXIgYWlyIHNlaGFyaSwgYmVyb2xhaHJhZ2EgcmluZ2FuIHNldGVsYWggbWFrYW4gc2VwZXJ0aSBiZXJqYWxhbi1qYWxhbiwgaGluZGFyaSBtaW51bSBiZXJrYXJib25hc2ksYWxjb2hvbCwgZGFuIG1lcm9rb2ssIGNvYmFsYWggbWVuZ2hpbmRhcmkgYmVyYmFyaW5nIHNlbGFtYSAyIGphbSBzZXRlbGFoIG1ha2FuLApNaW51bSBtdWx0aXZpdGFtaW4gc2V0aWFwIGhhcmkuIEppa2EgbWVtaWxpa2kgZ2VqYWxhIHlhbmcgY3VrdXAgcGFyYWggc2VwZXJ0aSByYXNhIHRlcmJha2FyIGRpYmFnaWFuIGRhZGEsIG11bnRhaCBiZXJ3YXJuYSBrdW5pbmcgZGFuIHBhaGl0IGRpc2FyYW5rYW4gdW50dWsgbWVsYWt1a2FuIHBlbWVyaWtzYWFuIGxhbmdzdW5nIGtlIHJ1bWFoIHNha2l0LgoiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjUtMDUtMTcgMDA6Mzc6MDUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjUtMDUtMTcgMDE6MzM6NDUiO3M6NjoiYmVsaWVmIjtkOjQ4O3M6ODoiZGVuc2l0YXMiO2Q6MC40ODt9czoxMToiACoAb3JpZ2luYWwiO2E6Nzp7czoyOiJpZCI7aTo0O3M6NDoia29kZSI7czozOiJQMDQiO3M6NDoibmFtYSI7czoxMzoiR2FzdHJvcGFyZXNpcyI7czo5OiJkZXNrcmlwc2kiO3M6MjYzOiJHYXN0cm9wYXJlc2lzIGFkYWxhaCBnYW5nZ3VhbiBwYWRhIHByb3NlcyBwZW5nb3NvbmdhbiBtYWthbmFuIGRpIGxhbWJ1bmcsIHlhbmcgZGlkdWdhIGRpc2ViYWJrYW4gb2xlaCBrZXJ1c2FrYW4gc2FyYWYgdmFndXMsIHlhaXR1IHNhcmFmIHlhbmcgbWVuZ2F0dXIga29udHJha3NpIGRhbiBwZW55YWx1cmFuIG1ha2FuYW4uIEtvbmRpc2kgaW5pIGRhcGF0IG1lbnllYmFia2FuIGJlcmJhZ2FpIGtvbXBsaWthc2ksIHRlcm1hc3VrIHJpc2lrbyBtYWxudXRyaXNpICI7czo2OiJzb2x1c2kiO3M6NzA2OiJQZW5nb2JhdGFuIHlhbmcgZGlsYWt1a2FuIHlhaXR1IGRlbmdhbiBtZW5na29tc3Vtc2kgb2JhdCBwcm9raW5ldGlrLiBCZWJyYXBhIG9iYXQgcHJva2luZXRpYyBzZXBlcnRpIGRvbXBlcmlkb25lICBkYW4gbWV0b2Nsb3ByYW1pZGUsb2JhdCBpbmkgZGFwYXQgbWVyYW5nc2FuZyBwZXJnZXJha2FuIG90b3Qgc2FsdXJhbiBwZW5jZXJuYWEuIFNlbGFpbiBpdHUgbWVuamFnYSBwb2xhIG1ha2FuIGRlbmdhbiBtYWthbiBwb3JzaSBrZWNpbCBsZWJpaCBzZXJpbmcsIG1lbmd1bnlhaCBtYWthbmFuIHNhbXBhaSB0dW50YXMsIG1pbnVtIGFpciBzZWtpdGFyIDEtMSw1IGxpdGVyIGFpciBzZWhhcmksIGJlcm9sYWhyYWdhIHJpbmdhbiBzZXRlbGFoIG1ha2FuIHNlcGVydGkgYmVyamFsYW4tamFsYW4sIGhpbmRhcmkgbWludW0gYmVya2FyYm9uYXNpLGFsY29ob2wsIGRhbiBtZXJva29rLCBjb2JhbGFoIG1lbmdoaW5kYXJpIGJlcmJhcmluZyBzZWxhbWEgMiBqYW0gc2V0ZWxhaCBtYWthbiwKTWludW0gbXVsdGl2aXRhbWluIHNldGlhcCBoYXJpLiBKaWthIG1lbWlsaWtpIGdlamFsYSB5YW5nIGN1a3VwIHBhcmFoIHNlcGVydGkgcmFzYSB0ZXJiYWthciBkaWJhZ2lhbiBkYWRhLCBtdW50YWggYmVyd2FybmEga3VuaW5nIGRhbiBwYWhpdCBkaXNhcmFua2FuIHVudHVrIG1lbGFrdWthbiBwZW1lcmlrc2FhbiBsYW5nc3VuZyBrZSBydW1haCBzYWtpdC4KIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDI1LTA1LTE3IDAwOjM3OjA1IjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDI1LTA1LTE3IDAxOjMzOjQ1Ijt9czoxMDoiACoAY2hhbmdlcyI7YTowOnt9czo4OiIAKgBjYXN0cyI7YTowOnt9czoxNzoiACoAY2xhc3NDYXN0Q2FjaGUiO2E6MDp7fXM6MjE6IgAqAGF0dHJpYnV0ZUNhc3RDYWNoZSI7YTowOnt9czoxMzoiACoAZGF0ZUZvcm1hdCI7TjtzOjEwOiIAKgBhcHBlbmRzIjthOjA6e31zOjE5OiIAKgBkaXNwYXRjaGVzRXZlbnRzIjthOjA6e31zOjE0OiIAKgBvYnNlcnZhYmxlcyI7YTowOnt9czoxMjoiACoAcmVsYXRpb25zIjthOjA6e31zOjEwOiIAKgB0b3VjaGVzIjthOjA6e31zOjI3OiIAKgByZWxhdGlvbkF1dG9sb2FkQ2FsbGJhY2siO047czoyNjoiACoAcmVsYXRpb25BdXRvbG9hZENvbnRleHQiO047czoxMDoidGltZXN0YW1wcyI7YjoxO3M6MTM6InVzZXNVbmlxdWVJZHMiO2I6MDtzOjk6IgAqAGhpZGRlbiI7YTowOnt9czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMToiACoAZmlsbGFibGUiO2E6MDp7fXM6MTA6IgAqAGd1YXJkZWQiO2E6MDp7fX1pOjQ7TzoxOToiQXBwXE1vZGVsc1xQZW55YWtpdCI6MzI6e3M6MTM6IgAqAGNvbm5lY3Rpb24iO3M6NToibXlzcWwiO3M6ODoiACoAdGFibGUiO3M6ODoicGVueWFraXQiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxOToicHJldmVudHNMYXp5TG9hZGluZyI7YjowO3M6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czoxMzoiACoAYXR0cmlidXRlcyI7YTo5OntzOjI6ImlkIjtpOjc7czo0OiJrb2RlIjtzOjM6IlAwNyI7czo0OiJuYW1hIjtzOjEzOiJQb2xpcCBMYW1idW5nIjtzOjk6ImRlc2tyaXBzaSI7czoxODI6IlBvbGlwIGFkYWxhaCBwZXJ0dW1idWhhbiBqYXJpbmdhbiBzZWNhcmEgYWJub3JtYWwgcGFkYSBsYXBpc2FuIGRhbGFtIGxhbWJ1bmcuIFBvbGlwIGluaSBkYXBhdCBtdW5jdWwgZGkgYXJlYSB0ZXJ0ZW50dSBwYWRhIGxhbWJ1bmcgZGFuIGRhcGF0IGRpYmVkYWthbiBiZXJkYXNhcmthbiBqZW5pcyBhdGF1IHRpcGVueWEuIjtzOjY6InNvbHVzaSI7czo4NTg6ImRpc2FyYW5rYW4gdW50dWsgbWVuamFnYSBwb2xhIGhpZHVwIHNlaGF0LCBzZXBlcnRpIG1lbmdoaW5kYXJpIG1ha2FuYW4gcGVueWViYWIgYXNhbSBsYW1idW5nLCBiZXJoZW50aSBtZXJva29rLCBkYW4gbWVuamFnYSBwb2xhIG1ha2FuIHNlaGF0LiBQb2xpcCBsYW1idW5nIGJpYXNhbnlhIG1lbWlsaWtpIHJpc2lrbyBiZXJrZW1iYW5nIG1lbmphZGkga2Fua2VyIGxhbWJ1bmcuIFBvbGlwIHlhbmcgYmVydWt1cmFuIGJlc2FyLCBtZW5pbWJ1bGthbiBnZWphbGEgc2VwZXJ0aSBueWVyaSBhdGF1IHBlcmRhcmFoYW4sIHBvbGlwIGplbmlzIGluaSBha2FuIGRpYW5na2F0IG1lbGFsdWkgcHJvc2VkdXIgZW5kb3Nrb3BpLiBUaW5kYWthbiBpbmkgYmVydHVqdWFuIHVudHVrIG1lbmNlZ2FoIHBlcmtlbWJhbmdhbiBsZWJpaCBsYW5qdXQsIHRlcm1hc3VrIHBvdGVuc2kgbWVuamFkaSBrYW5rZXIuIHNlaGluZ2dhIGFwYWJpbGEgbWVuZ2FsYW1pIGdlamFsYSBzZXBlcnRpIG55ZXJpIGhlYmF0LCBtdW50YWggZGFyYWggZGFuIG1lbmdhbGFtaSBCQUIgYmVyZGFyYWggc2VnZXJhbGFoIHBlcmdpIHBlcmlrc2Ega2UgZG9rdGVyLnBlbmdvYmF0YW4gc2VtZW50YXJhIGFudGliaW90aWMgdW50dWsgbWVuZ2hpbGFuZ2thbiBpbmZla3NpIGJha3RlcmkgZGFuIG9iYXQgcGVuZWthbiBhc2FtIGxhbWJ1bmcgc2VwZXJ0aSBwcm90b24gcHVtcCBpbmhpYml0b3IgKFBQSSkg4oCTIG1pc2FsbnlhIG9tZXByYXpvbGUgYXRhdSBsYW5zb3ByYXpvbGUgeWFuZyBzZXJpbmcgZGlndW5ha2FuIHVudHVrIG1lbmd1cmFuZ2kgcHJvZHVrc2kgYXNhbSBsYW1idW5nIGRhbiBtZW5jZWdhaCBpcml0YXNpIHBhZGEgZGluZGluZyBsYW1idW5nLiI7czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAyNS0wNS0xNyAwMTozODo1NSI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAyNS0wNS0xNyAwMTozODo1NSI7czo2OiJiZWxpZWYiO2Q6ODtzOjg6ImRlbnNpdGFzIjtkOjAuMDg7fXM6MTE6IgAqAG9yaWdpbmFsIjthOjc6e3M6MjoiaWQiO2k6NztzOjQ6ImtvZGUiO3M6MzoiUDA3IjtzOjQ6Im5hbWEiO3M6MTM6IlBvbGlwIExhbWJ1bmciO3M6OToiZGVza3JpcHNpIjtzOjE4MjoiUG9saXAgYWRhbGFoIHBlcnR1bWJ1aGFuIGphcmluZ2FuIHNlY2FyYSBhYm5vcm1hbCBwYWRhIGxhcGlzYW4gZGFsYW0gbGFtYnVuZy4gUG9saXAgaW5pIGRhcGF0IG11bmN1bCBkaSBhcmVhIHRlcnRlbnR1IHBhZGEgbGFtYnVuZyBkYW4gZGFwYXQgZGliZWRha2FuIGJlcmRhc2Fya2FuIGplbmlzIGF0YXUgdGlwZW55YS4iO3M6Njoic29sdXNpIjtzOjg1ODoiZGlzYXJhbmthbiB1bnR1ayBtZW5qYWdhIHBvbGEgaGlkdXAgc2VoYXQsIHNlcGVydGkgbWVuZ2hpbmRhcmkgbWFrYW5hbiBwZW55ZWJhYiBhc2FtIGxhbWJ1bmcsIGJlcmhlbnRpIG1lcm9rb2ssIGRhbiBtZW5qYWdhIHBvbGEgbWFrYW4gc2VoYXQuIFBvbGlwIGxhbWJ1bmcgYmlhc2FueWEgbWVtaWxpa2kgcmlzaWtvIGJlcmtlbWJhbmcgbWVuamFkaSBrYW5rZXIgbGFtYnVuZy4gUG9saXAgeWFuZyBiZXJ1a3VyYW4gYmVzYXIsIG1lbmltYnVsa2FuIGdlamFsYSBzZXBlcnRpIG55ZXJpIGF0YXUgcGVyZGFyYWhhbiwgcG9saXAgamVuaXMgaW5pIGFrYW4gZGlhbmdrYXQgbWVsYWx1aSBwcm9zZWR1ciBlbmRvc2tvcGkuIFRpbmRha2FuIGluaSBiZXJ0dWp1YW4gdW50dWsgbWVuY2VnYWggcGVya2VtYmFuZ2FuIGxlYmloIGxhbmp1dCwgdGVybWFzdWsgcG90ZW5zaSBtZW5qYWRpIGthbmtlci4gc2VoaW5nZ2EgYXBhYmlsYSBtZW5nYWxhbWkgZ2VqYWxhIHNlcGVydGkgbnllcmkgaGViYXQsIG11bnRhaCBkYXJhaCBkYW4gbWVuZ2FsYW1pIEJBQiBiZXJkYXJhaCBzZWdlcmFsYWggcGVyZ2kgcGVyaWtzYSBrZSBkb2t0ZXIucGVuZ29iYXRhbiBzZW1lbnRhcmEgYW50aWJpb3RpYyB1bnR1ayBtZW5naGlsYW5na2FuIGluZmVrc2kgYmFrdGVyaSBkYW4gb2JhdCBwZW5la2FuIGFzYW0gbGFtYnVuZyBzZXBlcnRpIHByb3RvbiBwdW1wIGluaGliaXRvciAoUFBJKSDigJMgbWlzYWxueWEgb21lcHJhem9sZSBhdGF1IGxhbnNvcHJhem9sZSB5YW5nIHNlcmluZyBkaWd1bmFrYW4gdW50dWsgbWVuZ3VyYW5naSBwcm9kdWtzaSBhc2FtIGxhbWJ1bmcgZGFuIG1lbmNlZ2FoIGlyaXRhc2kgcGFkYSBkaW5kaW5nIGxhbWJ1bmcuIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDI1LTA1LTE3IDAxOjM4OjU1IjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDI1LTA1LTE3IDAxOjM4OjU1Ijt9czoxMDoiACoAY2hhbmdlcyI7YTowOnt9czo4OiIAKgBjYXN0cyI7YTowOnt9czoxNzoiACoAY2xhc3NDYXN0Q2FjaGUiO2E6MDp7fXM6MjE6IgAqAGF0dHJpYnV0ZUNhc3RDYWNoZSI7YTowOnt9czoxMzoiACoAZGF0ZUZvcm1hdCI7TjtzOjEwOiIAKgBhcHBlbmRzIjthOjA6e31zOjE5OiIAKgBkaXNwYXRjaGVzRXZlbnRzIjthOjA6e31zOjE0OiIAKgBvYnNlcnZhYmxlcyI7YTowOnt9czoxMjoiACoAcmVsYXRpb25zIjthOjA6e31zOjEwOiIAKgB0b3VjaGVzIjthOjA6e31zOjI3OiIAKgByZWxhdGlvbkF1dG9sb2FkQ2FsbGJhY2siO047czoyNjoiACoAcmVsYXRpb25BdXRvbG9hZENvbnRleHQiO047czoxMDoidGltZXN0YW1wcyI7YjoxO3M6MTM6InVzZXNVbmlxdWVJZHMiO2I6MDtzOjk6IgAqAGhpZGRlbiI7YTowOnt9czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMToiACoAZmlsbGFibGUiO2E6MDp7fXM6MTA6IgAqAGd1YXJkZWQiO2E6MDp7fX19czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319fQ==',1751789173);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Admin') NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
INSERT INTO `users` VALUES
(1,'Akmal admin','admin@gmail.com','Admin','2025-07-05 22:52:13','$2y$12$tmWOEEOrO2jrcKAJ977NGeAHz6UWbXgZRvY65sMo4yxmH..tF9quu','tPsAJjV1gT','2025-07-05 22:52:14','2025-07-05 22:52:14');
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

-- Dump completed on 2025-07-06 17:08:24
