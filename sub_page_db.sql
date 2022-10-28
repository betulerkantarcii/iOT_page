CREATE DATABASE  IF NOT EXISTS `sub_page_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sub_page_db`;
-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: sub_page_db
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_activations`
--

DROP TABLE IF EXISTS `admin_activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_activations` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_activations_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_activations`
--

LOCK TABLES `admin_activations` WRITE;
/*!40000 ALTER TABLE `admin_activations` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_password_resets`
--

LOCK TABLES `admin_password_resets` WRITE;
/*!40000 ALTER TABLE `admin_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_email_deleted_at_unique` (`email`,`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Administrator','Administrator','cms.admin@agu.edu.tr','$2a$12$GgJA8Ictjv0UBpURTIOxl.YQbMEr2rMf84wmqOmqF19Q4Nd.XN3C.','sgH6NXUiknNnzdComuKiVCznV5p7Q82dP6R3vuMak0VnUaXRlLJckvjN93rZ',1,0,'en',NULL,'2022-08-12 05:18:28','2022-08-29 11:07:30','2022-08-29 11:07:30');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` json NOT NULL,
  `published_at` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES (1,'{\"en\": \"<p>2022-2023 Eğitim-Öğretim Yılı Güz Yarıyılı 3. Başvuru Dönemi Lisansüstü Başvuruları<br></p>\", \"tr\": \"<p>2022-2023 Eğitim-Öğretim Yılı Güz Yarıyılı 3. Başvuru Dönemi Lisansüstü Başvuruları<br></p>\"}',NULL,1,'2022-08-12 09:20:01','2022-08-24 13:38:13','http://www.agu.edu.tr/duyurular/6696/2022-2023%20Eğitim-Öğretim%20Yılı%20Güz%20Yarıyılı%203.%20Başvuru%20Dönemi%20Lisansüstü%20Başvuruları'),(2,'{\"en\": \"<p>2022-2023 Eğitim-Öğretim Yılı Güz Yarıyılı 100/2000 YÖK Doktora Bursu Başvuruları<br></p>\", \"tr\": \"<p>2022-2023 Eğitim-Öğretim Yılı Güz Yarıyılı 100/2000 YÖK Doktora Bursu Başvuruları<br></p>\"}',NULL,1,'2022-08-12 09:20:13','2022-08-24 13:38:25','http://www.agu.edu.tr/duyurular/6695/2022-2023%20Eğitim-Öğretim%20Yılı%20Güz%20Yarıyılı%20100/2000%20YÖK%20Doktora%20Bursu%20Başvuruları'),(3,'{\"en\": \"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam magnam earum in, accusamus dolore reiciendis sed, ab nisi quasi animi eligendi et quae sapiente ratione maiores delectus quibusdam vero ducimus.<br></p>\", \"tr\": \"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam magnam earum in, accusamus dolore reiciendis sed, ab nisi quasi animi eligendi et quae sapiente ratione maiores delectus quibusdam vero ducimus.<br></p>\"}',NULL,1,'2022-08-12 09:20:19','2022-08-12 09:20:22','\'\''),(4,'{\"en\": \"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam magnam earum in, accusamus dolore reiciendis sed, ab nisi quasi animi eligendi et quae sapiente ratione maiores delectus quibusdam vero ducimus.<br></p>\", \"tr\": \"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam magnam earum in, accusamus dolore reiciendis sed, ab nisi quasi animi eligendi et quae sapiente ratione maiores delectus quibusdam vero ducimus.<br></p>\"}',NULL,1,'2022-08-12 09:20:32','2022-08-12 09:20:33','\'\'');
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dna`
--

DROP TABLE IF EXISTS `dna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dna` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` json DEFAULT NULL,
  `description` json NOT NULL,
  `published_at` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dna`
--

LOCK TABLES `dna` WRITE;
/*!40000 ALTER TABLE `dna` DISABLE KEYS */;
INSERT INTO `dna` VALUES (1,'{\"en\": \"Third Generation University\", \"tr\": \"Üçüncü Nesil Üniversite\"}','{\"en\": \"<p>It is a university that attaches great importance to university-industry cooperation by establishing creative industries and innovation centers such as Model Factory, Technology Transfer Office, Youth Factory, AGU Academy, ensuring that industrialists as well as students and academic staff benefit from these opportunities.&nbsp;<span style=\\\"font-size: 0.875rem;\\\">It is a university that attaches great importance to university-industry cooperation</span><br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Üniversiteler genel olarak eğitim, araştırma ve topluma katkı olarak üç temel fonksiyonu yerine getirmektedir. AGÜ’nün ortaya koyduğu “Üçüncü Nesil Üniversite” kavramı, eğitim ve araştırma fonksiyonlarının topluma katkı üzerinden yeniden tanımlanmasını içerir. Buna göre, AGÜ’de topluma katkı odaklı ve eğitim-araştırmayla bütünleşik bir üniversite modeli tasarımı geliştirildi. Aynı zamanda, AGÜ özgün bir Ar-Ge projesi olarak Kalkınma Bakanlığı tarafından da Türkiye için örnek bir üniversite modeli geliştirmek üzere desteklenmekte.</span><br></p>\"}',NULL,1,'2022-08-12 09:14:56','2022-08-23 07:51:30'),(2,'{\"en\": \"100% English Education\", \"tr\": \"%100 İngilizce Eğitim\"}','{\"en\": \"<p>It is a university that attaches great importance to university-industry cooperation by establishing creative industries and innovation centers such as Model Factory, Technology Transfer Office, Youth Factory, AGU Academy, ensuring that industrialists as well as students and academic staff benefit from these opportunities.<br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Tüm bölümlerinde %100 İngilizce eğitim veren bir devlet üniversitesi olan AGÜ, yenilikçi ve öğrenen odaklı eğitim modeli uyguluyor. AGÜ’de öğrenciler İngilizce okur, yazar, dinler ve dünya çapında önemli olan birçok konuyu tartışır. Bu sayede öğrenciler İngilizceye en yetkin şekilde hakim olur.</span><br></p>\"}',NULL,1,'2022-08-12 09:15:39','2022-08-23 07:44:25'),(3,'{\"en\": \"AGU Values\", \"tr\": \"AGÜ Değerleri\"}','{\"en\": \"<p>It is a university that attaches great importance to university-industry cooperation by establishing creative industries and innovation centers such as Model Factory, Technology Transfer Office, Youth Factory, AGU Academy, ensuring that industrialists as well as students and academic staff benefit from these opportunities.<br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">AGÜ, geleceğin, hayallerinin güzelliğine güvenenlere ait olduğuna inanır ve üyeleri ve paydaşlarını, daha iyi bir geleceğe doğru kalıpların dışında ve gerçekliğin ötesinde düşünmeye, normlara meydan okumaya ve beklenenin ötesine geçmeye teşvik eder. AGÜ, engellerin veya sınırların üstesinden gelmek ve yeni model ve fikirlerin öncüsü olmak için çeşitli, yaratıcı, yenilikçi ve öngörülü yaklaşımları benimsemeye çalışır.</span><br></p>\"}',NULL,1,'2022-08-12 09:16:06','2022-08-23 07:45:36'),(4,'{\"en\": \"Courses Seeking Solutions to Global Problems\", \"tr\": \"Küresel Sorunlara Çözüm Arayan Dersler\"}','{\"en\": \"<p>It is a university that attaches great importance to university-industry cooperation by establishing creative industries and innovation centers such as Model Factory, Technology Transfer Office, Youth Factory, AGU Academy, ensuring that industrialists as well as students and academic staff benefit from these opportunities.<br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Abdullah Gül Üniversitesi’nde öğrenciler, benzeri hiçbir üniversitede olmayan ve küresel sorunlara çözüm arayan dersler alıyor. Bu derslerde açlıktan fakirliğe, savaşlardan sürdürülebilirliğe kadar birçok küresel sorun öğrenciler tarafından ele alınıyor ve çözüm önerileri tartışılıyor.</span><br></p>\"}',NULL,1,'2022-08-12 09:16:27','2022-08-23 07:50:52'),(5,'{\"en\": \"Model Factory\", \"tr\": \"Model Fabrika\"}','{\"en\": \"<p>It is a university that attaches great importance to university-industry cooperation by establishing creative industries and innovation centers such as Model Factory, Technology Transfer Office, Youth Factory, AGU Academy, ensuring that industrialists as well as students and academic staff benefit from these opportunities.<br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Türkiye’de ilk defa üniversite kampüsünde kurulan Model Fabrika, Sanayi ve Teknoloji Bakanlığı, Birleşmiş Milletler Kalkınma Programı, Kayseri Sanayi Odası, Kayseri Ticaret Odası ve Abdullah Gül Üniversitesi iş birliğiyle yürütülen “Uygulamalı KOBİ Yetkinlik Merkezi-Model Fabrika Projesi” kapsamında Alman Kalkınma Bankası tarafından sağlanan kaynakla Ocak 2020’de bir anonim şirket olarak faaliyete geçti. Model Fabrika, hem Kayseri sanayisine üretim verimliliği ve dijital dönüşüm konularında hizmet veriyor hem de öğrencilere uygulamalı eğitim, part-time iş ve staj imkânı sağlıyor.</span><br></p>\"}',NULL,1,'2022-08-12 09:16:52','2022-08-23 07:47:28'),(6,'{\"en\": \"Non-Academic Transcript\", \"tr\": \"Non-Academic Transkript:\"}','{\"en\": \"<p>It is a university that attaches great importance to university-industry cooperation by establishing creative industries and innovation centers such as Model Factory, Technology Transfer Office, Youth Factory, AGU Academy, ensuring that industrialists as well as students and academic staff benefit from these opportunities.<br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">AGÜ, Türk ve dünya üniversitelerine örnek ve model olacak bir uygulama ile öğrencilerine mezun olurken “Non-Academic Transkript” adı altında bir transkript veriyor. Bu transkript ile öğrencilerin iletişim becerileri, sosyal becerileri, ekip çalışması gibi yetenekleri belgeleniyor. Böylelikle bu belge öğrencilerin staj ve iş yaşamına referans oluyor.</span><br></p>\"}',NULL,1,'2022-08-12 09:17:18','2022-08-23 07:48:13'),(7,'{\"en\": \"Student Village\", \"tr\": \"Öğrenci Köyü\"}','{\"en\": \"<p>It is a university that attaches great importance to university-industry cooperation by establishing creative industries and innovation centers such as Model Factory, Technology Transfer Office, Youth Factory, AGU Academy, ensuring that industrialists as well as students and academic staff benefit from these opportunities.<br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">3. nesil bir devlet üniversitesi olan, öğrenen odaklı yaklaşımıyla geleceği şekillendirecek bireyler yetiştirmeyi hedefleyen Abdullah Gül Üniversitesi, öğrencilerine modern, konforlu, çağın gereksinimlerine uygun geleneksel yurt tanımının çok ötesinde bir konaklama hizmeti sunuyor.</span><br></p>\"}',NULL,1,'2022-08-12 09:17:48','2022-08-23 07:48:58'),(8,'{\"en\": \"Historic and Award-Winning Campus\", \"tr\": \"Tarihi ve Ödüllü Kampüs\"}','{\"en\": \"<p>It is a university that attaches great importance to university-industry cooperation by establishing creative industries and innovation centers such as Model Factory, Technology Transfer Office, Youth Factory, AGU Academy, ensuring that industrialists as well as students and academic staff benefit from these opportunities.<br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">AGÜ Sümer Kampüsü, Türkiye Cumhuriyeti’nin ilk ve en büyük sanayi yerleşkelerinden biri olan Sümerbank Bez Fabrikası’nın eğitim kampüsüne dönüşümü projesidir. Kayseri’de 1935 yılında üretime başlayan ve Cumhuriyetin ilk sanayi tesisi olan Sümerbank Bez Fabrikası, 1999 yılına kadar modernleşmenin, sanayileşmenin ve kalkınmanın önemli lokomotiflerinden oldu. Dünyanın birçok yerinde bu özelliklerde fabrika yerleşkeleri eğitim kurumları olarak değerlendirilmektedir. Kayseri Sümerbank Bez Fabrikası da aynı geleneğe uyarak 2012’de yeniden yaşama döndürülmek üzere AGÜ’ye tahsis edilmiştir. Sümer Kampüsü tarihi olmasının yanında kazandığı ödüllerle de öne çıkmakta. 2012 yılında Singapur’da düzenlenen Dünya Mimarlık Festivali’nde Eğitim Yapılarının Dönüşümü kategorisinde dünya 1’incisi olan kampüs ayrıca ulusal alanda da Capital ve Ekonomist dergilerinin düzenlediği yarışmada “Türkiye’deki En İyi Kampüs” ödülünü aldı.</span><br></p>\"}',NULL,1,'2022-08-12 09:18:20','2022-08-23 07:50:10'),(9,'{\"en\": \"AGUV\", \"tr\": \"AGUV\"}','{\"en\": \"<p>It is a university that attaches great importance to university-industry cooperation by establishing creative industries and innovation centers such as Model Factory, Technology Transfer Office, Youth Factory, AGU Academy, ensuring that industrialists as well as students and academic staff benefit from these opportunities.<br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Tek amacı, dünya üniversitesi olma yolunda Abdullah Gül Üniversitesi’ne destek sağlamak olan Abdullah Gül Üniversitesini Destekleme Vakfı (AGÜV), ülkemizin saygın sanayicileri ve iş insanları tarafından kurulmuş geniş katılımlı bir vakıftır. AGÜV, finansal destek sağlamanın yanı sıra, üniversite ile ortak misyon ve vizyon çerçevesinde aynı amaca odaklanmış, AGÜ’nün hedeflerine ulaşmasını sağlayacak bir iş birliği modeline sahiptir.</span><br></p>\"}',NULL,1,'2022-08-12 09:18:49','2022-08-23 07:50:36');
/*!40000 ALTER TABLE `dna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `title` json NOT NULL,
  `event_time` date NOT NULL,
  `location` json NOT NULL,
  `published_at` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES ('{\"en\": \"IV. Life Sciences Congress\", \"tr\": \"IV. Yaşam Bilimleri Kongresi\"}','2022-08-14','{\"en\": \"Sumer Campus\", \"tr\": \"Sümer Kampüsü\"}',NULL,1,'2022-08-12 09:22:48','2022-08-12 09:22:48'),('{\"en\": \"IV. Life Sciences Congress\", \"tr\": \"IV. Yaşam Bilimleri Kongresi\"}','2022-08-14','{\"en\": \"Sumer Campus\", \"tr\": \"Sümer Kampüsü\"}',NULL,1,'2022-08-12 09:36:45','2022-08-12 09:36:45');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_calendar`
--

DROP TABLE IF EXISTS `event_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_calendar` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` json NOT NULL,
  `event_time` datetime NOT NULL,
  `event_location` json NOT NULL,
  `published_at` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_calendar`
--

LOCK TABLES `event_calendar` WRITE;
/*!40000 ALTER TABLE `event_calendar` DISABLE KEYS */;
INSERT INTO `event_calendar` VALUES (1,'{\"en\": \"4th Life Sciences Congress\", \"tr\": \"4. Yaşam Bilimleri Kongresi\"}','2022-08-14 08:00:00','{\"en\": \"Sumer Campus\", \"tr\": \"Sümer Kampüsü\"}',NULL,1,'2022-08-12 10:25:13','2022-08-13 14:07:09'),(2,'{\"en\": \"III. International Conference on Higher Education Studies\", \"tr\": \"III. Uluslararası Yükseköğretim Çalışmaları Konferansı\"}','2022-09-09 09:00:00','{\"en\": \"Sumer Campus\", \"tr\": \"Sümer Kampüsü\"}',NULL,1,'2022-08-12 16:34:47','2022-08-13 14:07:44'),(3,'{\"en\": \"Event No:3\", \"tr\": \"Etkinlik No:3\"}','2022-08-15 20:00:00','{\"en\": \"Sumer Campus\", \"tr\": \"Sümer Kampüsü\"}',NULL,1,'2022-08-12 17:11:28','2022-08-13 14:08:07'),(4,'{\"en\": \"Event No:4\", \"tr\": \"Etkinlik No:4\"}','2022-09-07 08:00:00','{\"en\": \"Sumer Campus\", \"tr\": \"Sümer Kampüsü\"}',NULL,1,'2022-08-12 17:13:00','2022-08-13 14:08:31');
/*!40000 ALTER TABLE `event_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `headline`
--

DROP TABLE IF EXISTS `headline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `headline` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` json NOT NULL,
  `summary` json NOT NULL,
  `button_title` json NOT NULL,
  `published_at` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headline`
--

LOCK TABLES `headline` WRITE;
/*!40000 ALTER TABLE `headline` DISABLE KEYS */;
INSERT INTO `headline` VALUES (1,'{\"en\": \"REMOVED THE LIMITS AND INSTALLED IMAGINATION!\", \"tr\": \"SINIRLARI KALDIRDIK YERİNE HAYAL GÜCÜNÜ KOYDUK!\"}','{\"en\": \"As a 3rd generation state university, AGU is preparing to shape the future with its classless, open and dynamic architecture that supports common imagination.\", \"tr\": \"3. nesil bir devlet üniversitesi olan AGÜ müşterek hayal gücünü destekleyen sınıfsız, açık ve                             dinamik mimarisiyle geleceği şekillendirmeye hazırlanıyor.\"}','{\"en\": \"Discover Campus\", \"tr\": \"Kampüsü Keşfet\"}',NULL,1,'2022-08-12 07:09:30','2022-08-12 12:49:20');
/*!40000 ALTER TABLE `headline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` json NOT NULL,
  `description1` json NOT NULL,
  `description2` json NOT NULL,
  `description3` json NOT NULL,
  `description4` json NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main`
--

LOCK TABLES `main` WRITE;
/*!40000 ALTER TABLE `main` DISABLE KEYS */;
INSERT INTO `main` VALUES (1,'{\"en\": \"Announcements\", \"tr\": \"Duyurular\"}','{\"en\": \"What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\", \"tr\": \"Lorem Ipsum nedir? Lorem Ipsum, baskı ve dizgi endüstrisinin basit bir sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaacının bir tip numune kitabı yapmak için bir yazı galerisini alıp karıştırdığı 1500\'lerden beri endüstrinin standart sahte metni olmuştur. Sadece beş yüzyıl boyunca hayatta kalmayıp, aynı zamanda esasen değişmeden elektronik dizgiye sıçradı. 1960\'larda Lorem Ipsum pasajları içeren Letraset sayfalarının yayınlanmasıyla ve daha yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümlerini içeren masaüstü yayıncılık yazılımlarıyla popüler hale geldi. Nereden geliyor? Popüler inanışın aksine, Lorem Ipsum rastgele bir metin değildir. 45\'ten kalma bir klasik Latin edebiyatı parçasında kökleri vardır ve 2000 yıldan daha eskidir. Virginia\'daki Hampden-Sydney College\'da Latince profesörü olan Richard McClintock, bir Lorem Ipsum pasajındaki daha anlaşılması güç Latince sözcüklerden biri olan consectetur\'u aradı ve kelimenin klasik edebiyattaki alıntılarını gözden geçirerek, şüphesiz kaynağı keşfetti. Lorem Ipsum, Cicero\'nun MÖ 45 yılında yazdığı \\\"de Finibus Bonorum et Malorum\\\" (İyi ve Kötünün Uç Noktaları) kitabının 1.10.32 ve 1.10.33 bölümlerinden gelmektedir. Bu kitap, Rönesans döneminde çok popüler olan etik teorisi üzerine bir incelemedir. Lorem Ipsum\'un ilk satırı \\\"Lorem ipsum dolor sit amet..\\\", bölüm 1.10.32\'deki bir satırdan gelmektedir. 1500\'lerden beri kullanılan standart Lorem Ipsum yığını, ilgilenenler için aşağıda yeniden verilmiştir. Cicero\'nun \\\"de Finibus Bonorum et Malorum\\\"dan 1.10.32 ve 1.10.33 bölümleri de, H. Rackham\'ın 1914 çevirisinin İngilizce versiyonlarıyla birlikte, tam orijinal halleriyle yeniden üretilmiştir.\"}','{\"en\": \"This card has supporting text below as a natural lead-in to additional content.\", \"tr\": \"Bu kartın, ek içeriğe doğal bir giriş olarak aşağıdaki destekleyici metni vardır.\"}','{\"en\": \"This card has supporting text below as a natural lead-in to additional content.\", \"tr\": \"Bu kartın, ek içeriğe doğal bir giriş olarak aşağıdaki destekleyici metni vardır.\"}','{\"en\": \"What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\", \"tr\": \"Lorem Ipsum nedir? Lorem Ipsum, baskı ve dizgi endüstrisinin basit bir sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaacının bir tip numune kitabı yapmak için bir yazı galerisini alıp karıştırdığı 1500\'lerden beri endüstrinin standart sahte metni olmuştur. Sadece beş yüzyıl boyunca hayatta kalmayıp, aynı zamanda esasen değişmeden elektronik dizgiye sıçradı. 1960\'larda Lorem Ipsum pasajları içeren Letraset sayfalarının yayınlanmasıyla ve daha yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümlerini içeren masaüstü yayıncılık yazılımlarıyla popüler hale geldi.\"}',1,'2022-08-28 17:09:10','2022-08-28 17:09:10');
/*!40000 ALTER TABLE `main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `media_order_column_index` (`order_column`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'Brackets\\AdminAuth\\Models\\AdminUser',1,'465dc642-49f9-421c-b742-b4bbb69dc29a','avatar','avatar','avatar.png','image/png','media','media',23924,'[]','[]','{\"thumb_75\": true, \"thumb_150\": true, \"thumb_200\": true}','[]',1,'2022-08-12 05:18:28','2022-08-12 05:18:29'),(3,'App\\Models\\Success',1,'ba1ed751-a6cd-4422-a937-94a91b3c6285','gallery','YxcvPRAJDVSAtplSd8nMWoM9eBGykxtUC6o6TBFo','YxcvPRAJDVSAtplSd8nMWoM9eBGykxtUC6o6TBFo.jpg','image/jpeg','media','media',352383,'[]','{\"name\": \"websayfasi basarilar01.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"websayfasi basarilar01.jpg\"}','[]','[]',3,'2022-08-12 09:13:18','2022-08-12 09:13:18'),(4,'App\\Models\\Success',1,'d075bbb5-9a30-4ddc-8a25-7703fd0437a3','gallery','AJMNsxpfsAoCFOGa0o8OmpzELgHBVRgvv5SxbUgr','AJMNsxpfsAoCFOGa0o8OmpzELgHBVRgvv5SxbUgr.jpg','image/jpeg','media','media',359743,'[]','{\"name\": \"websayfasi basarilar02.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"websayfasi basarilar02.jpg\"}','[]','[]',4,'2022-08-12 09:13:18','2022-08-12 09:13:18'),(5,'App\\Models\\Success',1,'2c4254fb-bb74-40bd-82d6-9649b259cf89','gallery','ZKsLG0B5rBeeaJZktOzh5JMUa8LKQJiY3jIcXAHb','ZKsLG0B5rBeeaJZktOzh5JMUa8LKQJiY3jIcXAHb.jpg','image/jpeg','media','media',343682,'[]','{\"name\": \"websayfasi basarilar03.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"websayfasi basarilar03.jpg\"}','[]','[]',5,'2022-08-12 09:13:18','2022-08-12 09:13:18'),(6,'App\\Models\\Success',1,'9bcc872d-29ff-4037-b286-03f5777baf28','gallery','soyJowoVw29tVr163YFf6HI7s1YJp1DkO1tgXaqH','soyJowoVw29tVr163YFf6HI7s1YJp1DkO1tgXaqH.jpg','image/jpeg','media','media',348921,'[]','{\"name\": \"websayfasi basarilar04.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"websayfasi basarilar04.jpg\"}','[]','[]',6,'2022-08-12 09:13:18','2022-08-12 09:13:18'),(7,'App\\Models\\Success',1,'90610eda-f39c-4f39-8dd8-7e60b9f1a89f','gallery','K3qzlLpV6uepzBjwuc2kzvaLzmJMDY2zdWQSCCcy','K3qzlLpV6uepzBjwuc2kzvaLzmJMDY2zdWQSCCcy.jpg','image/jpeg','media','media',373978,'[]','{\"name\": \"websayfasi basarilar05.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"websayfasi basarilar05.jpg\"}','[]','[]',7,'2022-08-12 09:13:18','2022-08-12 09:13:18'),(8,'App\\Models\\Dna',1,'f5425537-b7ac-4101-a1db-436e321e4c95','cover','J0XOY91VpnY95Zo8aeCzwyKm3rXgqeWZL4eNiL86','J0XOY91VpnY95Zo8aeCzwyKm3rXgqeWZL4eNiL86.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',8,'2022-08-12 09:14:56','2022-08-12 09:14:56'),(9,'App\\Models\\Dna',2,'2ce10118-7983-4e1c-a2fd-d45c08c629a5','cover','1N7mDJIFslZuGyNys0RiLhJEKdM5e0pkI8snw539','1N7mDJIFslZuGyNys0RiLhJEKdM5e0pkI8snw539.jpg','image/jpeg','media','media',242484,'[]','{\"name\": \"web_alt_agudegerleri.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_agudegerleri.jpg\"}','[]','[]',9,'2022-08-12 09:15:39','2022-08-12 09:15:39'),(10,'App\\Models\\Dna',3,'eec59d52-fe41-40a7-b577-70d7f0fd951d','cover','nk4uJYgDCQGYt75AQrYsmFDkfkiAH5yO61kt2Lmm','nk4uJYgDCQGYt75AQrYsmFDkfkiAH5yO61kt2Lmm.jpg','image/jpeg','media','media',526992,'[]','{\"name\": \"web_alt_aguv.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_aguv.jpg\"}','[]','[]',10,'2022-08-12 09:16:06','2022-08-12 09:16:06'),(11,'App\\Models\\Dna',4,'22326d77-a126-423f-8409-2834827f1ab9','cover','wMIqz5876c5c1dfHOxtzFM7uegE3xgZQELMCp7tL','wMIqz5876c5c1dfHOxtzFM7uegE3xgZQELMCp7tL.jpg','image/jpeg','media','media',479616,'[]','{\"name\": \"web_alt_ingilizceegitim.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_ingilizceegitim.jpg\"}','[]','[]',11,'2022-08-12 09:16:27','2022-08-12 09:16:27'),(12,'App\\Models\\Dna',5,'c10abdc2-2e5a-4ad5-99eb-5d973f4e48b2','cover','emieIfUyD5ZeJejVbxvCuU9PUYFAj500aSZPk7cs','emieIfUyD5ZeJejVbxvCuU9PUYFAj500aSZPk7cs.jpg','image/jpeg','media','media',258815,'[]','{\"name\": \"web_alt_kureselsorun.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_kureselsorun.jpg\"}','[]','[]',12,'2022-08-12 09:16:52','2022-08-12 09:16:52'),(13,'App\\Models\\Dna',6,'73dbaf05-d554-4e68-9961-081673d7d2f4','cover','XDQhLPKj96pfYANtuIs6YTu1pVUFTLTxLcKU8DJq','XDQhLPKj96pfYANtuIs6YTu1pVUFTLTxLcKU8DJq.jpg','image/jpeg','media','media',531079,'[]','{\"name\": \"web_alt_modelfabrika.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_modelfabrika.jpg\"}','[]','[]',13,'2022-08-12 09:17:18','2022-08-12 09:17:18'),(14,'App\\Models\\Dna',7,'f2e22958-3b3a-4313-b848-4416c4a4e249','cover','6ucuHrq1ZziOsLF5qmHx3NeMPF7t9XfDa492os7d','6ucuHrq1ZziOsLF5qmHx3NeMPF7t9XfDa492os7d.jpg','image/jpeg','media','media',508969,'[]','{\"name\": \"web_alt_NAT_V2.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_NAT_V2.jpg\"}','[]','[]',14,'2022-08-12 09:17:48','2022-08-12 09:17:48'),(15,'App\\Models\\Dna',8,'5105e3c9-cedf-4c70-93d8-deb01bb3d759','cover','y1xPvWP9veamm9wlSeAk9K2OXoMLzB0jWk3zR3xu','y1xPvWP9veamm9wlSeAk9K2OXoMLzB0jWk3zR3xu.jpg','image/jpeg','media','media',527186,'[]','{\"name\": \"web_alt_ogrencikoyu.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_ogrencikoyu.jpg\"}','[]','[]',15,'2022-08-12 09:18:20','2022-08-12 09:18:20'),(16,'App\\Models\\Dna',9,'ac673f26-39f7-4570-b626-743b3c07d1d4','cover','GxV5XBTzPFcELmoA5GHYGUm3gCaafnx370dkXKlS','GxV5XBTzPFcELmoA5GHYGUm3gCaafnx370dkXKlS.jpg','image/jpeg','media','media',990510,'[]','{\"name\": \"web_alt_tarihiodullukampus.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_tarihiodullukampus.jpg\"}','[]','[]',16,'2022-08-12 09:18:49','2022-08-12 09:18:49'),(17,'App\\Models\\Event',0,'c4cb7e4a-db78-4f08-b32e-eb3921f7dde8','cover','raxRbUvQB0enzzExuhgtABNJ1SMy461ONqotzdnP','raxRbUvQB0enzzExuhgtABNJ1SMy461ONqotzdnP.jpg','image/jpeg','media','media',1803630,'[]','{\"name\": \"etkinlikb01.jpg\", \"width\": 6146, \"height\": 8267, \"file_name\": \"etkinlikb01.jpg\"}','[]','[]',17,'2022-08-12 09:22:48','2022-08-12 09:22:48'),(18,'App\\Models\\EventCalendar',1,'faa19509-3a95-413a-9a55-dc580a90b46e','cover','ddR1zsxbHlMTQ15sPOTu5GCD7k5eUv42rCgGpTkw','ddR1zsxbHlMTQ15sPOTu5GCD7k5eUv42rCgGpTkw.jpg','image/jpeg','media','media',36363,'[]','{\"name\": \"etkinlik01.jpg\", \"width\": 230, \"height\": 323, \"file_name\": \"etkinlik01.jpg\"}','[]','[]',18,'2022-08-12 10:34:26','2022-08-12 10:34:26'),(19,'App\\Models\\EventCalendar',2,'c1c1bf2f-ee61-4d2c-9fdf-615c88075de8','cover','Q5WoXxIifVABgdLrsADQqVgoMNCCXAHjvn3DW5cc','Q5WoXxIifVABgdLrsADQqVgoMNCCXAHjvn3DW5cc.jpg','image/jpeg','media','media',34113,'[]','{\"name\": \"etkinlik03.jpg\", \"width\": 230, \"height\": 323, \"file_name\": \"etkinlik03.jpg\"}','[]','[]',19,'2022-08-12 16:34:47','2022-08-12 16:34:47'),(20,'App\\Models\\EventCalendar',3,'387e9926-7f57-4bf0-b8cc-623f524092af','cover','pmiTCxfQxrrsWmT6FDVGb066OOB5CNsrSFCNcpir','pmiTCxfQxrrsWmT6FDVGb066OOB5CNsrSFCNcpir.jpg','image/jpeg','media','media',33757,'[]','{\"name\": \"etkinlik02.jpg\", \"width\": 230, \"height\": 323, \"file_name\": \"etkinlik02.jpg\"}','[]','[]',20,'2022-08-12 17:11:28','2022-08-12 17:11:28'),(21,'App\\Models\\EventCalendar',4,'6f8034d9-8b87-48d9-bd18-738d86abeb4f','cover','IbU3HRJ4lwqdxWeMGNvhx77kIXif09qqWVvzgWlx','IbU3HRJ4lwqdxWeMGNvhx77kIXif09qqWVvzgWlx.jpg','image/jpeg','media','media',1365871,'[]','{\"name\": \"etkinlikb04.jpg\", \"width\": 5512, \"height\": 7874, \"file_name\": \"etkinlikb04.jpg\"}','[]','[]',21,'2022-08-12 17:13:00','2022-08-12 17:13:00'),(32,'App\\Models\\Dna',1,'9c0bf378-db38-46c1-9940-22522edae12c','coverTR','ej3nOuC829fKoH4mdAywTz76ZnonxqDffjs7J8cG','ej3nOuC829fKoH4mdAywTz76ZnonxqDffjs7J8cG.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',27,'2022-08-13 13:19:14','2022-08-13 13:19:14'),(39,'App\\Models\\Dna',1,'c00e9140-f9d3-447d-9d6c-4470dd22fdb4','coverEN','NhMfHVOanuwU7H1wXyzShJzM5OjlKUwnQs0NlUIy','NhMfHVOanuwU7H1wXyzShJzM5OjlKUwnQs0NlUIy.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',28,'2022-08-13 13:54:25','2022-08-13 13:54:25'),(40,'App\\Models\\Success',1,'57771137-a89b-47b7-bf26-ec35eb4fe159','galleryEN','UlLcaC9YnNNZuUdXFGEFxKMprZvxs0fD1vw2uk62','UlLcaC9YnNNZuUdXFGEFxKMprZvxs0fD1vw2uk62.jpg','image/jpeg','media','media',352383,'[]','{\"name\": \"wb01.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"wb01.jpg\"}','[]','[]',29,'2022-08-13 14:05:51','2022-08-13 14:05:51'),(41,'App\\Models\\Success',1,'769156b1-f126-486d-86d0-0b827e879ad8','galleryEN','P9d6eS79O4AmNy3Nz5v6mooYAmU9VvZ6pObOmu5w','P9d6eS79O4AmNy3Nz5v6mooYAmU9VvZ6pObOmu5w.jpg','image/jpeg','media','media',352383,'[]','{\"name\": \"wb01.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"wb01.jpg\"}','[]','[]',30,'2022-08-13 14:05:51','2022-08-13 14:05:51'),(42,'App\\Models\\Success',1,'322fa1e5-a64d-4b50-80a1-8ed6234c32ba','galleryEN','8F6S60IOMQVS6lbyjr2NrgFwTlQnXGM1jaFhHRUm','8F6S60IOMQVS6lbyjr2NrgFwTlQnXGM1jaFhHRUm.jpg','image/jpeg','media','media',352383,'[]','{\"name\": \"wb01.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"wb01.jpg\"}','[]','[]',31,'2022-08-13 14:05:51','2022-08-13 14:05:51'),(43,'App\\Models\\Success',1,'6c084ea9-9b0b-4f0a-87b3-8f3d02b5d5ce','galleryEN','7g0DBAFKGsWMNAzTJDG3GY95NRPMogYLoRn3mQuZ','7g0DBAFKGsWMNAzTJDG3GY95NRPMogYLoRn3mQuZ.jpg','image/jpeg','media','media',352383,'[]','{\"name\": \"wb01.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"wb01.jpg\"}','[]','[]',32,'2022-08-13 14:05:51','2022-08-13 14:05:51'),(44,'App\\Models\\Success',1,'d90bc7b9-f5b5-4eda-9e06-ef45d35dbc6f','galleryEN','Xf8YpKxCeQI1xR1rNngQqGWl5Bxs8rmkOHJp67jc','Xf8YpKxCeQI1xR1rNngQqGWl5Bxs8rmkOHJp67jc.jpg','image/jpeg','media','media',352383,'[]','{\"name\": \"wb01.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"wb01.jpg\"}','[]','[]',33,'2022-08-13 14:05:51','2022-08-13 14:05:51'),(45,'App\\Models\\Success',1,'afed6694-25f6-42d5-a283-06812f0eeb91','galleryTR','nB0oSv38N8kSxtyUAEahwMmzZL9si6XL3DBzdOc7','nB0oSv38N8kSxtyUAEahwMmzZL9si6XL3DBzdOc7.jpg','image/jpeg','media','media',352383,'[]','{\"name\": \"wb01.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"wb01.jpg\"}','[]','[]',34,'2022-08-13 14:05:51','2022-08-13 14:05:51'),(46,'App\\Models\\Success',1,'beb95fd1-3fed-47f0-9f74-3dcc3cb1f0af','galleryTR','stwn2weGAyB5ApJLSOAs2O30OIfrg5jed9MazfTZ','stwn2weGAyB5ApJLSOAs2O30OIfrg5jed9MazfTZ.jpg','image/jpeg','media','media',359743,'[]','{\"name\": \"wb02.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"wb02.jpg\"}','[]','[]',35,'2022-08-13 14:05:51','2022-08-13 14:05:51'),(47,'App\\Models\\Success',1,'f39ae415-70a6-4a12-8481-23df4667292a','galleryTR','gYQ8c6obpf4i2M1DBVbBHekW7XFGEefAuK4H1YFX','gYQ8c6obpf4i2M1DBVbBHekW7XFGEefAuK4H1YFX.jpg','image/jpeg','media','media',343682,'[]','{\"name\": \"wb03.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"wb03.jpg\"}','[]','[]',36,'2022-08-13 14:05:51','2022-08-13 14:05:51'),(48,'App\\Models\\Success',1,'4e450235-7c9e-48e8-bc5c-d545c23a41ee','galleryTR','CHXffkNA8zBYQSQuWurfhmHR0hYLKWNDsbjILlj4','CHXffkNA8zBYQSQuWurfhmHR0hYLKWNDsbjILlj4.jpg','image/jpeg','media','media',348921,'[]','{\"name\": \"wb04.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"wb04.jpg\"}','[]','[]',37,'2022-08-13 14:05:51','2022-08-13 14:05:51'),(49,'App\\Models\\Success',1,'14bc261b-12a0-4c35-8de8-5947d6c20547','galleryTR','v6DV5CbbDwgEwplBf8JqRvlduixfLLzXEXJyC7oh','v6DV5CbbDwgEwplBf8JqRvlduixfLLzXEXJyC7oh.jpg','image/jpeg','media','media',373978,'[]','{\"name\": \"wb05.jpg\", \"width\": 1251, \"height\": 1251, \"file_name\": \"wb05.jpg\"}','[]','[]',38,'2022-08-13 14:05:51','2022-08-13 14:05:51'),(50,'App\\Models\\EventCalendar',1,'ddfd8b31-e24c-43e6-94f8-678c5be2d995','coverEN','90YUofj00CuqVsZClGyA2hiJSdBNMdTEmTI3hsx6','90YUofj00CuqVsZClGyA2hiJSdBNMdTEmTI3hsx6.jpg','image/jpeg','media','media',33757,'[]','{\"name\": \"etkinlik02.jpg\", \"width\": 230, \"height\": 323, \"file_name\": \"etkinlik02.jpg\"}','[]','[]',39,'2022-08-13 14:07:09','2022-08-13 14:07:09'),(51,'App\\Models\\EventCalendar',1,'94c273e3-c78c-4b96-9211-7f598969a5fd','coverTR','Hv0CfPq1bH57ZeSBsjn14a49t5io7gYrEaQ8vB14','Hv0CfPq1bH57ZeSBsjn14a49t5io7gYrEaQ8vB14.jpg','image/jpeg','media','media',36363,'[]','{\"name\": \"etkinlik01.jpg\", \"width\": 230, \"height\": 323, \"file_name\": \"etkinlik01.jpg\"}','[]','[]',40,'2022-08-13 14:07:09','2022-08-13 14:07:09'),(52,'App\\Models\\EventCalendar',2,'a19d3a23-09b3-4a3e-bfb1-f0d8fb97fd43','coverEN','dOIxs4De67dYNcfXPDYwWF060IOXg19wkCZPM7as','dOIxs4De67dYNcfXPDYwWF060IOXg19wkCZPM7as.jpg','image/jpeg','media','media',33757,'[]','{\"name\": \"etkinlik02.jpg\", \"width\": 230, \"height\": 323, \"file_name\": \"etkinlik02.jpg\"}','[]','[]',41,'2022-08-13 14:07:44','2022-08-13 14:07:44'),(53,'App\\Models\\EventCalendar',2,'0fb9eef3-d60b-4236-b762-e71b9307728f','coverTR','vFbwkOcBLBBa4hTvceNWYWZC7aMa4jc7WAK0sTmQ','vFbwkOcBLBBa4hTvceNWYWZC7aMa4jc7WAK0sTmQ.jpg','image/jpeg','media','media',36363,'[]','{\"name\": \"etkinlik01.jpg\", \"width\": 230, \"height\": 323, \"file_name\": \"etkinlik01.jpg\"}','[]','[]',42,'2022-08-13 14:07:44','2022-08-13 14:07:44'),(54,'App\\Models\\EventCalendar',3,'659eaa6d-3cca-452e-8461-e9654ac128ad','coverEN','d9Ot3fSng7D8NfRY4b7e0HQP60yagr1Qv6foknhQ','d9Ot3fSng7D8NfRY4b7e0HQP60yagr1Qv6foknhQ.jpg','image/jpeg','media','media',33757,'[]','{\"name\": \"etkinlik02.jpg\", \"width\": 230, \"height\": 323, \"file_name\": \"etkinlik02.jpg\"}','[]','[]',43,'2022-08-13 14:08:07','2022-08-13 14:08:07'),(55,'App\\Models\\EventCalendar',3,'0052c363-e5d1-49b0-8929-5b4cb4535199','coverTR','kPAylcxHMW1XyC2HkqcR2WD7ZYO98kB2gNOHYd9y','kPAylcxHMW1XyC2HkqcR2WD7ZYO98kB2gNOHYd9y.jpg','image/jpeg','media','media',36363,'[]','{\"name\": \"etkinlik01.jpg\", \"width\": 230, \"height\": 323, \"file_name\": \"etkinlik01.jpg\"}','[]','[]',44,'2022-08-13 14:08:07','2022-08-13 14:08:07'),(56,'App\\Models\\EventCalendar',4,'8bf2eb92-719f-45bb-b882-4e42c67890ca','coverEN','E7VmGRX91tXT1CTSH6KytmroyRRk2hPSH3OnKZGf','E7VmGRX91tXT1CTSH6KytmroyRRk2hPSH3OnKZGf.jpg','image/jpeg','media','media',307663,'[]','{\"name\": \"etkinlikb03.jpg\", \"width\": 1181, \"height\": 1654, \"file_name\": \"etkinlikb03.jpg\"}','[]','[]',45,'2022-08-13 14:08:31','2022-08-13 14:08:31'),(57,'App\\Models\\EventCalendar',4,'6d6aa078-8095-4e34-9e17-e00cb1cf92ca','coverTR','h8OWWXdF2jwx6r929BV3NU6H4bdAbBmGhyiKIhgl','h8OWWXdF2jwx6r929BV3NU6H4bdAbBmGhyiKIhgl.jpg','image/jpeg','media','media',368303,'[]','{\"name\": \"etkinlikb05.jpg\", \"width\": 905, \"height\": 1280, \"file_name\": \"etkinlikb05.jpg\"}','[]','[]',46,'2022-08-13 14:08:31','2022-08-13 14:08:31'),(74,'App\\Models\\Headline',1,'a073e35b-c21a-40e2-bfaa-fc6737924b35','cover','32c8d65yBPvtn5zqeW3N4CSAAqfSDMU1ZRv8UAKt','32c8d65yBPvtn5zqeW3N4CSAAqfSDMU1ZRv8UAKt.jpg','image/jpeg','media','media',1519207,'[]','{\"name\": \"anasayfa.jpg\", \"width\": 3543, \"height\": 1685, \"file_name\": \"anasayfa.jpg\"}','[]','[]',63,'2022-08-13 16:21:11','2022-08-13 16:21:11'),(76,'App\\Models\\Dna',2,'41604127-a931-4971-b2fb-0609036a0307','coverEN','Vg7UGsv9A601CPousabCjQcOuMplihzlpX37rVsB','Vg7UGsv9A601CPousabCjQcOuMplihzlpX37rVsB.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',65,'2022-08-14 17:38:07','2022-08-14 17:38:07'),(78,'App\\Models\\Dna',3,'66ba425b-15eb-4ce0-9112-224ddcddd46d','coverEN','0zOv55OlZyQQ3hjfMC8coIFbVS0sd3TsUK9PNIgA','0zOv55OlZyQQ3hjfMC8coIFbVS0sd3TsUK9PNIgA.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',67,'2022-08-14 17:38:35','2022-08-14 17:38:35'),(79,'App\\Models\\Dna',4,'e4126a11-21d0-4eb5-9a17-f38d3f821e80','coverEN','4s0tdFgYiCKe2jU0j7plzuA8bZo74wKfXMaoNEUW','4s0tdFgYiCKe2jU0j7plzuA8bZo74wKfXMaoNEUW.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',68,'2022-08-14 17:38:45','2022-08-14 17:38:45'),(80,'App\\Models\\Dna',5,'b8a07e47-bf42-4ac4-b6cb-22b158a3f143','coverEN','mUcDEYM2cqDbwmY7FHSJrmPiaOyU2UWBqWOydfKD','mUcDEYM2cqDbwmY7FHSJrmPiaOyU2UWBqWOydfKD.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',69,'2022-08-14 17:38:56','2022-08-14 17:38:56'),(81,'App\\Models\\Dna',6,'a7ea483c-e980-4074-9404-3869bf765f08','coverEN','7XsXJysmEtqtmIL9ga5e0m9DNy2AliqzLLZXlolx','7XsXJysmEtqtmIL9ga5e0m9DNy2AliqzLLZXlolx.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',70,'2022-08-14 17:39:06','2022-08-14 17:39:06'),(82,'App\\Models\\Dna',7,'a0a4fff4-55db-4c64-b73f-1e7c27d5dda7','coverEN','ZWm6sV0oIzl8SJDvC5gtGN5vbXYGb5Ecrd3vh8WS','ZWm6sV0oIzl8SJDvC5gtGN5vbXYGb5Ecrd3vh8WS.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',71,'2022-08-14 17:39:17','2022-08-14 17:39:17'),(83,'App\\Models\\Dna',8,'a825d760-e34b-4d55-bb93-a93f33f4f62c','coverEN','tq4NzIW2l7Y3aRgZusnAN88KPwtsWra6Uzpscv29','tq4NzIW2l7Y3aRgZusnAN88KPwtsWra6Uzpscv29.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',72,'2022-08-14 17:39:27','2022-08-14 17:39:27'),(84,'App\\Models\\Dna',9,'7dd5c1ae-b06e-4de3-ab51-55f3b1472428','coverEN','wbyOHZLFGqHnHUxSw6Q3kTb1sBgwkWpxEDYm1lCU','wbyOHZLFGqHnHUxSw6Q3kTb1sBgwkWpxEDYm1lCU.jpg','image/jpeg','media','media',326015,'[]','{\"name\": \"web_alt_3nesil.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_3nesil.jpg\"}','[]','[]',73,'2022-08-14 17:39:39','2022-08-14 17:39:39'),(88,'App\\Models\\News',6,'b243dc57-b8f5-4935-ba2d-486a1e26c28f','cover','X4VzlYThhX88k1lB1KRBLjBOLX5XTAHCG7xHlNJW','X4VzlYThhX88k1lB1KRBLjBOLX5XTAHCG7xHlNJW.png','image/png','media','media',24762,'[]','{\"name\": \"ATHENA.jpg\", \"width\": 1024, \"height\": 462, \"file_name\": \"ATHENA.jpg\"}','[]','[]',76,'2022-08-23 07:08:17','2022-08-23 07:08:17'),(89,'App\\Models\\News',7,'4a32baba-a065-4760-b953-93b9f694789f','cover','sv0ZpvwRd2pq1IDr0i2gerVLyeMYbMjdHYBHLREC','sv0ZpvwRd2pq1IDr0i2gerVLyeMYbMjdHYBHLREC.jpg','image/jpeg','media','media',578137,'[]','{\"name\": \"imsad2.jpeg\", \"width\": 2048, \"height\": 1536, \"file_name\": \"imsad2.jpeg\"}','[]','[]',77,'2022-08-23 07:08:54','2022-08-23 07:08:54'),(90,'App\\Models\\News',8,'9bc36415-e600-418a-b53d-d44969582272','cover','2eqe3bNIc8Qf48Klbd8nd9Wc3CIxAeb5YEt7vhw3','2eqe3bNIc8Qf48Klbd8nd9Wc3CIxAeb5YEt7vhw3.jpg','image/jpeg','media','media',524472,'[]','{\"name\": \"sliderhalkaacikseminer.jpeg\", \"width\": 3000, \"height\": 1084, \"file_name\": \"sliderhalkaacikseminer.jpeg\"}','[]','[]',78,'2022-08-23 07:09:27','2022-08-23 07:09:27'),(91,'App\\Models\\News',9,'061f21b4-08d7-426a-8363-8bf3646887c8','cover','v8xJxugTdpSUWyN9Oxl40euSn2adwI1oKSFzf6wy','v8xJxugTdpSUWyN9Oxl40euSn2adwI1oKSFzf6wy.jpg','image/jpeg','media','media',336044,'[]','{\"name\": \"endustri1.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"endustri1.jpeg\"}','[]','[]',79,'2022-08-23 07:10:30','2022-08-23 07:10:30'),(92,'App\\Models\\News',10,'b7da5b81-225f-4a26-8c22-aee1a5f49407','cover','BfNcUP03KdfRMFyUS7fzrLkXIL1ADdDbdYvCA6jQ','BfNcUP03KdfRMFyUS7fzrLkXIL1ADdDbdYvCA6jQ.jpg','image/jpeg','media','media',374870,'[]','{\"name\": \"protokol1.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol1.jpeg\"}','[]','[]',80,'2022-08-23 07:11:00','2022-08-23 07:11:00'),(93,'App\\Models\\Dna',2,'eebd52e9-342a-410d-bbb0-0a7a3596aee0','coverTR','o39jsVPPYHZS8CgDT3gvumVKhTwvoRTq3WXBFUtL','o39jsVPPYHZS8CgDT3gvumVKhTwvoRTq3WXBFUtL.jpg','image/jpeg','media','media',479616,'[]','{\"name\": \"web_alt_ingilizceegitim.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_ingilizceegitim.jpg\"}','[]','[]',81,'2022-08-23 07:44:25','2022-08-23 07:44:25'),(94,'App\\Models\\Dna',3,'da97c390-c346-4bea-9def-ee2230705b24','coverTR','iiG0LdgrRH7GWvvhWuGDp9Q13YmIy4L4v0Fw7RhO','iiG0LdgrRH7GWvvhWuGDp9Q13YmIy4L4v0Fw7RhO.jpg','image/jpeg','media','media',242484,'[]','{\"name\": \"web_alt_agudegerleri.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_agudegerleri.jpg\"}','[]','[]',82,'2022-08-23 07:45:36','2022-08-23 07:45:36'),(95,'App\\Models\\Dna',4,'cb57f9a5-8dfc-486c-a318-c28a3947bb99','coverTR','GNcY9nUUHFrqmTtp9EhV5PZk00OrYw9nmkavasLF','GNcY9nUUHFrqmTtp9EhV5PZk00OrYw9nmkavasLF.jpg','image/jpeg','media','media',258815,'[]','{\"name\": \"web_alt_kureselsorun.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_kureselsorun.jpg\"}','[]','[]',83,'2022-08-23 07:46:27','2022-08-23 07:46:27'),(96,'App\\Models\\Dna',5,'2e86f428-69ec-4dcb-82c3-399e72894343','coverTR','1iWnMR0Ijem0mVtFffDM7xsboEji7Q92GfHiZVaJ','1iWnMR0Ijem0mVtFffDM7xsboEji7Q92GfHiZVaJ.jpg','image/jpeg','media','media',531079,'[]','{\"name\": \"web_alt_modelfabrika.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_modelfabrika.jpg\"}','[]','[]',84,'2022-08-23 07:46:50','2022-08-23 07:46:50'),(97,'App\\Models\\Dna',6,'2b42336d-3a45-4dde-9914-2bc676da0557','coverTR','V1ztfJCHoG9HGLWh2NuPOJV5uV6V0t0LuZ7VRyjc','V1ztfJCHoG9HGLWh2NuPOJV5uV6V0t0LuZ7VRyjc.jpg','image/jpeg','media','media',508969,'[]','{\"name\": \"web_alt_NAT_V2.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_NAT_V2.jpg\"}','[]','[]',85,'2022-08-23 07:48:13','2022-08-23 07:48:13'),(98,'App\\Models\\Dna',7,'1d6eeecb-028f-4eab-981d-b41cf18e83bb','coverTR','Fm4beYQlFhxhUe9COPLKE0HLvAR3jt2j8VyXzT39','Fm4beYQlFhxhUe9COPLKE0HLvAR3jt2j8VyXzT39.jpg','image/jpeg','media','media',527186,'[]','{\"name\": \"web_alt_ogrencikoyu.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_ogrencikoyu.jpg\"}','[]','[]',86,'2022-08-23 07:48:58','2022-08-23 07:48:58'),(99,'App\\Models\\Dna',8,'3f6d87db-d1b1-4dc4-8234-abdeea3a9c73','coverTR','0gzuFsXnBOO022Wwh2DDzv06z7WZCywrec16Tzj7','0gzuFsXnBOO022Wwh2DDzv06z7WZCywrec16Tzj7.jpg','image/jpeg','media','media',990510,'[]','{\"name\": \"web_alt_tarihiodullukampus.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_tarihiodullukampus.jpg\"}','[]','[]',87,'2022-08-23 07:50:10','2022-08-23 07:50:10'),(100,'App\\Models\\Dna',9,'fd0e9d03-4536-4491-a3a7-2a90788d3b69','coverTR','8vHMye1fYEGsgL7iE905daLP93PdPFsO2oh4IoCN','8vHMye1fYEGsgL7iE905daLP93PdPFsO2oh4IoCN.jpg','image/jpeg','media','media',526992,'[]','{\"name\": \"web_alt_aguv.jpg\", \"width\": 1890, \"height\": 1122, \"file_name\": \"web_alt_aguv.jpg\"}','[]','[]',88,'2022-08-23 07:50:36','2022-08-23 07:50:36'),(101,'App\\Models\\News',6,'42be4a83-2371-4138-8140-153b2b0d7f37','gallery','vCkUFvdNHHdlUjrQmEp35a4c2SYIiaU7xsyXkpu7','vCkUFvdNHHdlUjrQmEp35a4c2SYIiaU7xsyXkpu7.jpg','image/jpeg','media','media',338713,'[]','{\"name\": \"2D6A6105.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"2D6A6105.jpeg\"}','[]','[]',89,'2022-08-23 08:33:10','2022-08-23 08:33:10'),(102,'App\\Models\\News',6,'0913cc8c-3448-4352-a9e7-cd8ff77c79ea','gallery','BxuibLxsnd6h0133g5gN3pAKfP5Iqnbhn6OGaX90','BxuibLxsnd6h0133g5gN3pAKfP5Iqnbhn6OGaX90.png','image/png','media','media',24762,'[]','{\"name\": \"ATHENA.jpg\", \"width\": 1024, \"height\": 462, \"file_name\": \"ATHENA.jpg\"}','[]','[]',90,'2022-08-23 08:33:10','2022-08-23 08:33:10'),(103,'App\\Models\\News',6,'b7c110d4-6c0b-46a5-8cf7-234a5696d5b3','gallery','oONuiqa56ioWtHr8nHylcnjtl3zCELS2pEU16Vux','oONuiqa56ioWtHr8nHylcnjtl3zCELS2pEU16Vux.jpg','image/jpeg','media','media',275864,'[]','{\"name\": \"athenaslider17042022.jpeg\", \"width\": 1772, \"height\": 554, \"file_name\": \"athenaslider17042022.jpeg\"}','[]','[]',91,'2022-08-23 08:33:10','2022-08-23 08:33:10'),(104,'App\\Models\\News',7,'3156a0dd-e1db-4418-ae79-eed0a918e8cf','gallery','K1LLy0XEVp9Mvf6OqwCwWZUHseLzLh69gHB6qNM5','K1LLy0XEVp9Mvf6OqwCwWZUHseLzLh69gHB6qNM5.jpg','image/jpeg','media','media',290281,'[]','{\"name\": \"imsad1.jpeg\", \"width\": 2048, \"height\": 1536, \"file_name\": \"imsad1.jpeg\"}','[]','[]',92,'2022-08-23 09:51:28','2022-08-23 09:51:28'),(105,'App\\Models\\News',7,'8a5a6f9a-6bdd-4bed-88e3-2e0042a6e1e2','gallery','8ydsuGgjYFizz4rha5OVDSEYONEnEA84OUpTLCXw','8ydsuGgjYFizz4rha5OVDSEYONEnEA84OUpTLCXw.jpg','image/jpeg','media','media',578137,'[]','{\"name\": \"imsad2.jpeg\", \"width\": 2048, \"height\": 1536, \"file_name\": \"imsad2.jpeg\"}','[]','[]',93,'2022-08-23 09:51:28','2022-08-23 09:51:28'),(106,'App\\Models\\News',7,'ebeee8bd-c0e2-483b-bd66-800b7fcc2825','gallery','W9CRqjgsmcOTWC6YBRDlGguO2D880lqXrO0rpQCw','W9CRqjgsmcOTWC6YBRDlGguO2D880lqXrO0rpQCw.jpg','image/jpeg','media','media',215038,'[]','{\"name\": \"imsadburakuzalslider.jpeg\", \"width\": 1440, \"height\": 450, \"file_name\": \"imsadburakuzalslider.jpeg\"}','[]','[]',94,'2022-08-23 09:51:28','2022-08-23 09:51:28'),(107,'App\\Models\\News',8,'cf4cfce2-f820-4f8d-9d97-70ea0f8e5f55','gallery','NQAsODMA8BgL8JPUj5jW6EIaxkyRhxmqDcv6bhNe','NQAsODMA8BgL8JPUj5jW6EIaxkyRhxmqDcv6bhNe.png','image/png','media','media',202769,'[]','{\"name\": \"seminerlistesi.png\", \"width\": 1360, \"height\": 930, \"file_name\": \"seminerlistesi.png\"}','[]','[]',95,'2022-08-23 09:51:45','2022-08-23 09:51:45'),(108,'App\\Models\\News',8,'138bb64b-a126-4259-8222-acc32a2a259f','gallery','IRtcq3USHZxrR4zlrCTKno0nspm9VJJ8gkrPLg8F','IRtcq3USHZxrR4zlrCTKno0nspm9VJJ8gkrPLg8F.jpg','image/jpeg','media','media',524472,'[]','{\"name\": \"sliderhalkaacikseminer.jpeg\", \"width\": 3000, \"height\": 1084, \"file_name\": \"sliderhalkaacikseminer.jpeg\"}','[]','[]',96,'2022-08-23 09:51:45','2022-08-23 09:51:45'),(109,'App\\Models\\News',9,'febf93f2-7821-4aea-9646-d4aa4536a2ad','gallery','CFaIBDhRx5TlXcyJ6G6BPWRidHvII21lFO6UPxPk','CFaIBDhRx5TlXcyJ6G6BPWRidHvII21lFO6UPxPk.jpg','image/jpeg','media','media',336044,'[]','{\"name\": \"endustri1.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"endustri1.jpeg\"}','[]','[]',97,'2022-08-23 09:52:06','2022-08-23 09:52:06'),(110,'App\\Models\\News',9,'2575eea1-327c-48f3-b7f4-5dd05af29a90','gallery','hbUfYfimWlpx5yYLgywNBE7YdSyeLLeaRjI0Gdcv','hbUfYfimWlpx5yYLgywNBE7YdSyeLLeaRjI0Gdcv.jpg','image/jpeg','media','media',300933,'[]','{\"name\": \"endustri2.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"endustri2.jpeg\"}','[]','[]',98,'2022-08-23 09:52:06','2022-08-23 09:52:06'),(111,'App\\Models\\News',9,'7d2696d0-e63b-447c-86ff-3a976df75caa','gallery','8OvvI8b57HHn3Mehl2kyKDeJ4hKd1Fi3nnavw72j','8OvvI8b57HHn3Mehl2kyKDeJ4hKd1Fi3nnavw72j.jpg','image/jpeg','media','media',322562,'[]','{\"name\": \"endustri3.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"endustri3.jpeg\"}','[]','[]',99,'2022-08-23 09:52:06','2022-08-23 09:52:06'),(112,'App\\Models\\News',10,'11f3386c-02af-486f-8991-0d8d3c233dc0','gallery','R2ZretUmnXV0VdakSK7vaEf9WXY1xV5vJQDXKrac','R2ZretUmnXV0VdakSK7vaEf9WXY1xV5vJQDXKrac.jpg','image/jpeg','media','media',201076,'[]','{\"name\": \"protokol2.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol2.jpeg\"}','[]','[]',100,'2022-08-23 09:52:34','2022-08-23 09:52:34'),(113,'App\\Models\\News',10,'afdff92f-8ba9-4789-9d2c-43ba6c44eeee','gallery','dJN9u3Fw7ghqp4UAVD17OULX0jmYTOgJgvj99n5I','dJN9u3Fw7ghqp4UAVD17OULX0jmYTOgJgvj99n5I.jpg','image/jpeg','media','media',216650,'[]','{\"name\": \"protokol3.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol3.jpeg\"}','[]','[]',101,'2022-08-23 09:52:34','2022-08-23 09:52:34'),(114,'App\\Models\\News',10,'423bdd8a-07b2-4c30-adeb-e1b4583e413c','gallery','OwMfwoVELo3185e5kRUdpeDrKTxPSiJQqqZUsB59','OwMfwoVELo3185e5kRUdpeDrKTxPSiJQqqZUsB59.jpg','image/jpeg','media','media',205469,'[]','{\"name\": \"protokol4.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol4.jpeg\"}','[]','[]',102,'2022-08-23 09:52:34','2022-08-23 09:52:34'),(115,'App\\Models\\News',8,'9d499229-4d19-4dd1-b0db-d7204a01b2e2','gallery','okfA1ERWsWoBVtnfgpr7eMmX6XEZs2qnpgUhyL83','okfA1ERWsWoBVtnfgpr7eMmX6XEZs2qnpgUhyL83.jpg','image/jpeg','media','media',199218,'[]','{\"name\": \"protokol5.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol5.jpeg\"}','[]','[]',103,'2022-08-23 10:26:33','2022-08-23 10:26:33'),(116,'App\\Models\\Menu',3,'141492b1-3571-4825-8436-20cda1a386ac','gallery','XPvSg5bPIP7DuG7BMfTc5b42dR53UljzWaSPwU73','XPvSg5bPIP7DuG7BMfTc5b42dR53UljzWaSPwU73.jpg','image/jpeg','media','media',374870,'[]','{\"name\": \"protokol1.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol1.jpeg\"}','[]','[]',104,'2022-08-29 11:07:54','2022-08-29 11:07:54'),(117,'App\\Models\\Menu',3,'ea42c8a6-5839-437c-afa3-89fceed05475','gallery','JRQFMfbLZnTKEwa5EWOutONrA6sCuHNw2CF5ea0t','JRQFMfbLZnTKEwa5EWOutONrA6sCuHNw2CF5ea0t.jpg','image/jpeg','media','media',201076,'[]','{\"name\": \"protokol2.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol2.jpeg\"}','[]','[]',105,'2022-08-29 11:07:54','2022-08-29 11:07:54'),(118,'App\\Models\\Menu',3,'0b55c30b-3064-4c07-8995-474daa997344','gallery','ssIw1jFQeqE2L7Pai9488tU7X7m7JS7eHVbNP8mT','ssIw1jFQeqE2L7Pai9488tU7X7m7JS7eHVbNP8mT.jpg','image/jpeg','media','media',216650,'[]','{\"name\": \"protokol3.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol3.jpeg\"}','[]','[]',106,'2022-08-29 11:07:54','2022-08-29 11:07:54'),(119,'App\\Models\\Menu',3,'0d96599b-e485-4af8-a7a6-be5de6991ba2','gallery','37uUOPZdq3OEOSmOQidrH0paGvNLOGgtB1FS5bTe','37uUOPZdq3OEOSmOQidrH0paGvNLOGgtB1FS5bTe.jpg','image/jpeg','media','media',205469,'[]','{\"name\": \"protokol4.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol4.jpeg\"}','[]','[]',107,'2022-08-29 11:07:54','2022-08-29 11:07:54'),(120,'App\\Models\\Menu',4,'87c7296e-d263-4358-bbd8-582e202d8594','gallery','JgUx3bgagHdvn08oDfqZgTlf0CkcDpj8zi52XbGe','JgUx3bgagHdvn08oDfqZgTlf0CkcDpj8zi52XbGe.jpg','image/jpeg','media','media',374870,'[]','{\"name\": \"protokol1.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol1.jpeg\"}','[]','[]',108,'2022-08-29 11:08:04','2022-08-29 11:08:04'),(121,'App\\Models\\Menu',4,'c1bdb6da-cc4b-4f11-8977-fc60f56106ee','gallery','gChWY6l9vfPRKuMEPZWNER3lgnjTerN1BTx4HyU0','gChWY6l9vfPRKuMEPZWNER3lgnjTerN1BTx4HyU0.jpg','image/jpeg','media','media',201076,'[]','{\"name\": \"protokol2.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol2.jpeg\"}','[]','[]',109,'2022-08-29 11:08:04','2022-08-29 11:08:04'),(122,'App\\Models\\Menu',4,'9874cd63-b6bd-46af-bf3c-1654f58625aa','gallery','KOh5St9Ok0XWkFPh7bczfePyeufdUMuq8TUWgbRO','KOh5St9Ok0XWkFPh7bczfePyeufdUMuq8TUWgbRO.jpg','image/jpeg','media','media',216650,'[]','{\"name\": \"protokol3.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol3.jpeg\"}','[]','[]',110,'2022-08-29 11:08:04','2022-08-29 11:08:04'),(123,'App\\Models\\Menu',4,'e2ec45ca-3ffa-48d0-9635-fd59cf7ab30e','gallery','lIOqIugAu8SuT1PghTpvH5gxOoxGzTYIYvTlUpAa','lIOqIugAu8SuT1PghTpvH5gxOoxGzTYIYvTlUpAa.jpg','image/jpeg','media','media',205469,'[]','{\"name\": \"protokol4.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol4.jpeg\"}','[]','[]',111,'2022-08-29 11:08:04','2022-08-29 11:08:04'),(124,'App\\Models\\Menu',6,'9944de23-2c50-4a33-8f24-0d5b94379e44','gallery','ceYrIklg3WxrNvezldIv47xriWDv1mBkNSUdn7VZ','ceYrIklg3WxrNvezldIv47xriWDv1mBkNSUdn7VZ.jpg','image/jpeg','media','media',374870,'[]','{\"name\": \"protokol1.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol1.jpeg\"}','[]','[]',112,'2022-08-29 11:09:01','2022-08-29 11:09:01'),(125,'App\\Models\\Menu',6,'fdbf0603-3ffc-43d3-9833-045917968b1e','gallery','RuPOegGHCsb9OsqSG6RSQiL9V70CvM2OWwducszA','RuPOegGHCsb9OsqSG6RSQiL9V70CvM2OWwducszA.jpg','image/jpeg','media','media',201076,'[]','{\"name\": \"protokol2.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol2.jpeg\"}','[]','[]',113,'2022-08-29 11:09:01','2022-08-29 11:09:01'),(126,'App\\Models\\Menu',6,'2db5759c-1231-4b32-bfcc-77f375a2a3fb','gallery','lbQDeg9G3uXwtbSxoj97qohQ9y9Artk4xKESTtTL','lbQDeg9G3uXwtbSxoj97qohQ9y9Artk4xKESTtTL.jpg','image/jpeg','media','media',216650,'[]','{\"name\": \"protokol3.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol3.jpeg\"}','[]','[]',114,'2022-08-29 11:09:01','2022-08-29 11:09:01'),(127,'App\\Models\\Menu',6,'1048f4a9-5b7b-453b-a37a-e36701addc85','gallery','fn7WUuvk0j8lELGjAM10CdIVmoJZRPggdTuIHIlz','fn7WUuvk0j8lELGjAM10CdIVmoJZRPggdTuIHIlz.jpg','image/jpeg','media','media',205469,'[]','{\"name\": \"protokol4.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol4.jpeg\"}','[]','[]',115,'2022-08-29 11:09:01','2022-08-29 11:09:01'),(128,'App\\Models\\Main',1,'a3c8c063-f057-4656-9cee-9228616d1203','gallery','Jd70L4LUU8qjKayAb1iC2WJLJTMFtiXYKdaiGsU4','Jd70L4LUU8qjKayAb1iC2WJLJTMFtiXYKdaiGsU4.jpg','image/jpeg','media','media',374870,'[]','{\"name\": \"protokol1.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol1.jpeg\"}','[]','[]',116,'2022-08-29 11:09:14','2022-08-29 11:09:14'),(129,'App\\Models\\Main',1,'b58d59df-94e3-4811-b0da-9177b5da628b','gallery','WUnQZISH0S05X1cKlrAYdddk0i5P8ZZRmmZo30Em','WUnQZISH0S05X1cKlrAYdddk0i5P8ZZRmmZo30Em.jpg','image/jpeg','media','media',201076,'[]','{\"name\": \"protokol2.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol2.jpeg\"}','[]','[]',117,'2022-08-29 11:09:14','2022-08-29 11:09:14'),(130,'App\\Models\\Main',1,'fc43f615-ccfc-4071-b950-440bb86098f0','gallery','b6otgWAFOVjatUY97olvGu3A8exwcO30LjH95UCh','b6otgWAFOVjatUY97olvGu3A8exwcO30LjH95UCh.jpg','image/jpeg','media','media',216650,'[]','{\"name\": \"protokol3.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol3.jpeg\"}','[]','[]',118,'2022-08-29 11:09:14','2022-08-29 11:09:14'),(131,'App\\Models\\Main',1,'ed838334-ffdb-4a9d-bb89-1a0f838fc895','gallery','8vrxZs5XEuqxA5CTaqwK24XcCEvsZx3nwlASyMqp','8vrxZs5XEuqxA5CTaqwK24XcCEvsZx3nwlASyMqp.jpg','image/jpeg','media','media',205469,'[]','{\"name\": \"protokol4.jpeg\", \"width\": 1280, \"height\": 853, \"file_name\": \"protokol4.jpeg\"}','[]','[]',119,'2022-08-29 11:09:14','2022-08-29 11:09:14');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` json NOT NULL,
  `menu_id` int unsigned NOT NULL,
  `description1` json NOT NULL,
  `description2` json NOT NULL,
  `description3` json NOT NULL,
  `description4` json NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `menu_title` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (3,'{\"en\": \"List of Alumni\", \"tr\": \"Mezunlar Listesi\"}',1,'{\"en\": \"List of Alumni\", \"tr\": \"Mezunlar Listesi\"}','{\"en\": \"List of Alumni\", \"tr\": \"Mezunlar Listesi\"}','{\"en\": \"List of Alumni\", \"tr\": \"Mezunlar Listesi\"}','{\"en\": \"List of Alumni\", \"tr\": \"Mezunlar Listesi\"}',1,'2022-08-28 03:44:51','2022-08-28 19:28:50','{\"en\": \"Academic\", \"tr\": \"Akademik\"}'),(4,'{\"en\": \"Student\", \"tr\": \"Öğrenci\"}',2,'{\"en\": \"Student\", \"tr\": \"Öğrenci\"}','{\"en\": \"Student\", \"tr\": \"Öğrenci\"}','{\"en\": \"Student\", \"tr\": \"Öğrenci\"}','{\"en\": \"Student\", \"tr\": \"Öğrenci\"}',1,'2022-08-28 03:51:14','2022-08-28 17:19:41','{\"en\": \"Student\", \"tr\": \"Öğrenci\"}'),(6,'{\"en\": \"Another\", \"tr\": \"Başka\"}',1,'{\"en\": \"Another\", \"tr\": \"Başka\"}','{\"en\": \"Another\", \"tr\": \"Başka\"}','{\"en\": \"Another\", \"tr\": \"Başka\"}','{\"en\": \"Another\", \"tr\": \"Başka\"}',1,'2022-08-28 19:44:17','2022-08-28 19:54:54','{\"en\": \"Academic\", \"tr\": \"Akademik\"}');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_08_24_000000_create_activations_table',1),(4,'2017_08_24_000000_create_admin_activations_table',1),(5,'2017_08_24_000000_create_admin_password_resets_table',1),(6,'2017_08_24_000000_create_admin_users_table',1),(7,'2018_07_18_000000_create_wysiwyg_media_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2020_10_21_000000_add_last_login_at_timestamp_to_admin_users_table',1),(11,'2022_08_12_081825_create_media_table',1),(12,'2022_08_12_081825_create_permission_tables',1),(13,'2022_08_12_081830_fill_default_admin_user_and_permissions',1),(14,'2022_08_12_081825_create_translations_table',2),(15,'2022_08_12_082933_create_headline_table',3),(16,'2022_08_12_083627_fill_permissions_for_headline',4),(17,'2022_08_12_084107_create_success_table',5),(18,'2022_08_12_084334_fill_permissions_for_success',6),(19,'2022_08_12_084610_create_dna_table',7),(20,'2022_08_12_084825_fill_permissions_for_dna',8),(21,'2022_08_12_085504_create_announcement_table',9),(22,'2022_08_12_085658_fill_permissions_for_announcement',10),(23,'2022_08_12_085818_create_event_table',11),(24,'2022_08_12_090959_fill_permissions_for_event',12),(25,'2022_08_12_130927_create_event_calendar_table',13),(26,'2022_08_12_131022_fill_permissions_for_event-calendar',14),(27,'2022_08_15_205252_create_news_table',15),(28,'2022_08_15_205450_fill_permissions_for_news',16);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'Brackets\\AdminAuth\\Models\\AdminUser',1);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` json NOT NULL,
  `description` json NOT NULL,
  `published_at` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `summary` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (6,'{\"en\": \"AGÜ, ATHENA’ya Üye Oldu\", \"tr\": \"AGÜ, ATHENA’ya Üye Oldu\"}','{\"en\": \"<p>Abdullah Gül Üniversitesi (AGÜ), Avrupa Birliği’nin Avrupa Üniversiteleri İnisiyatifi (European Universities Initiative) çatısı altında yer alan yükseköğretim federasyonlarından ATHENA’ya (Advanced Technology Higher Education Network Alliance - İleri Teknoloji Yüksek Öğretim Ağı İttifakı) davet edilerek iş birliği anlaşması imzaladı.<br></p><p>AGÜ adına Rektör Prof. Dr. Cengiz Yılmaz’ın imzaladığı beş yıllık anlaşma çerçevesinde öğretim ve araştırma alanlarında küresel iş birliği teşvik edilerek yükseköğretimin uluslararasılaşması amaçlanıyor.</p><p>Üniversitelerin, yüksek eğitiminin niteliğini en ileri seviyeye çıkarmak için kapasitelerini birleştirerek eğitim, araştırma ve topluma katkı platformları ile yenilikçi çözümler geliştirdiği ATHENA bünyesinde üye üniversitelerin farklı bölüm ve birimlerinden öğrenci, öğretim üyesi ve idari personel ile dış paydaşların katıldığı çalışma grupları bulunuyor. AGÜ de eğitim, araştırma ve topluma katkıdaki yenilikçi yaklaşımı ile bu çalışma gruplarında yer alarak, toplumsal sorunların ele alınıp çözülmesine yönelik çok kültürlü ve disiplinler arası bir ortam yaratılmasına önemli bir katkı sağlayacak.</p><p>Abdullah Gül Üniversitesi, Avrupa Üniversiteleri İnisiyatifinde yer alan ATHENA Yüksek Öğretim Federasyonu içinde Politécnico Do Porto Enstitüsü (Portekiz), Hellenic Mediterranean Üniversitesi (Yunanistan), Siegen Üniversitesi (Almanya), Maribor Üniversitesi (Slovenya), Niccolò Cusano Üniversitesi (Italya), Orleans Üniversitesi (Fransa) ve Vilnius Gediminas Teknik Üniversitesi (Litvanya) ile iş birliği içerisinde olacak.</p>\", \"tr\": \"<p>Abdullah Gül Üniversitesi (AGÜ), Avrupa Birliği’nin Avrupa Üniversiteleri İnisiyatifi (European Universities Initiative) çatısı altında yer alan yükseköğretim federasyonlarından ATHENA’ya (Advanced Technology Higher Education Network Alliance - İleri Teknoloji Yüksek Öğretim Ağı İttifakı) davet edilerek iş birliği anlaşması imzaladı.<br></p><p>AGÜ adına Rektör Prof. Dr. Cengiz Yılmaz’ın imzaladığı beş yıllık anlaşma çerçevesinde öğretim ve araştırma alanlarında küresel iş birliği teşvik edilerek yükseköğretimin uluslararasılaşması amaçlanıyor.</p><p>Üniversitelerin, yüksek eğitiminin niteliğini en ileri seviyeye çıkarmak için kapasitelerini birleştirerek eğitim, araştırma ve topluma katkı platformları ile yenilikçi çözümler geliştirdiği ATHENA bünyesinde üye üniversitelerin farklı bölüm ve birimlerinden öğrenci, öğretim üyesi ve idari personel ile dış paydaşların katıldığı çalışma grupları bulunuyor. AGÜ de eğitim, araştırma ve topluma katkıdaki yenilikçi yaklaşımı ile bu çalışma gruplarında yer alarak, toplumsal sorunların ele alınıp çözülmesine yönelik çok kültürlü ve disiplinler arası bir ortam yaratılmasına önemli bir katkı sağlayacak.</p><p>Abdullah Gül Üniversitesi, Avrupa Üniversiteleri İnisiyatifinde yer alan ATHENA Yüksek Öğretim Federasyonu içinde Politécnico Do Porto Enstitüsü (Portekiz), Hellenic Mediterranean Üniversitesi (Yunanistan), Siegen Üniversitesi (Almanya), Maribor Üniversitesi (Slovenya), Niccolò Cusano Üniversitesi (Italya), Orleans Üniversitesi (Fransa) ve Vilnius Gediminas Teknik Üniversitesi (Litvanya) ile iş birliği içerisinde olacak.</p>\"}',NULL,1,'2022-08-15 18:15:12','2022-08-24 09:13:19','{\"en\": \"Abdullah Gül Üniversitesi (AGÜ), Avrupa Birliği’nin Avrupa Üniversiteleri İnisiyatifi (European Universities Initiative) çatısı altında yer alan yükseköğretim federasyonlarından ATHENA’ya (Advanced Technology Higher Education Network Alliance - İleri Teknoloji Yüksek Öğretim Ağı İttifakı) davet edilerek iş birliği anlaşması imzaladı.\", \"tr\": \"Abdullah Gül Üniversitesi (AGÜ), Avrupa Birliği’nin Avrupa Üniversiteleri İnisiyatifi (European Universities Initiative) çatısı altında yer alan yükseköğretim federasyonlarından ATHENA’ya (Advanced Technology Higher Education Network Alliance - İleri Teknoloji Yüksek Öğretim Ağı İttifakı) davet edilerek iş birliği anlaşması imzaladı.\"}'),(7,'{\"en\": \"Sürdürülebilir Kalkınma Diyalog Günü\", \"tr\": \"Sürdürülebilir Kalkınma Diyalog Günü\"}','{\"en\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">İnşaat malzemeleri sektörünün çatı kuruluşu Türkiye İMSAD (Türkiye İnşaat Malzemesi Sanayicileri Derneği) ve ÇEDBİK (Çevre Dostu Binalar Derneği) ortaklığında, Avrupa Birliği Başkanlığı’nın koordinasyonu ve desteği ile hayata geçen “Sürdürülebilir Kalkınma için STK’lar” isimli proje kapsamında “Diyalog Günü” düzenlendi.</span><br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">İnşaat malzemeleri sektörünün çatı kuruluşu Türkiye İMSAD (Türkiye İnşaat Malzemesi Sanayicileri Derneği) ve ÇEDBİK (Çevre Dostu Binalar Derneği) ortaklığında, Avrupa Birliği Başkanlığı’nın koordinasyonu ve desteği ile hayata geçen “Sürdürülebilir Kalkınma için STK’lar” isimli proje kapsamında “Diyalog Günü” düzenlendi.</span><br></p>\"}',NULL,1,'2022-08-23 06:44:13','2022-08-24 09:13:57','{\"en\": \"İnşaat malzemeleri sektörünün çatı kuruluşu Türkiye İMSAD (Türkiye İnşaat Malzemesi Sanayicileri Derneği) ve ÇEDBİK (Çevre Dostu Binalar Derneği) ortaklığında, Avrupa Birliği Başkanlığı’nın koordinasyonu ve desteği ile hayata geçen “Sürdürülebilir Kalkınma için STK’lar” isimli proje kapsamında “Diyalog Günü” düzenlendi.\", \"tr\": \"İnşaat malzemeleri sektörünün çatı kuruluşu Türkiye İMSAD (Türkiye İnşaat Malzemesi Sanayicileri Derneği) ve ÇEDBİK (Çevre Dostu Binalar Derneği) ortaklığında, Avrupa Birliği Başkanlığı’nın koordinasyonu ve desteği ile hayata geçen “Sürdürülebilir Kalkınma için STK’lar” isimli proje kapsamında “Diyalog Günü” düzenlendi.\"}'),(8,'{\"en\": \"AGÜ’den Halka Açık Eğitim Seminerleri\", \"tr\": \"AGÜ’den Halka Açık Eğitim Seminerleri\"}','{\"en\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Abdullah Gül Üniversitesi (AGÜ), savunma sanayiinden sağlığa, ekonomiden dijital teknolojilere kadar çeşitli konularda topluma katkı odaklı halka açık seminerler serisi başlattı. Halka açık 7’den 70’e herkesin ilgi duyabileceği çok çeşitli konularda eğitim seminerleri YouTube’tan canlı (online) olarak gerçekleştiriliyor. Sümer Kampüsü Konferans Salonu’ndan yapılacak seminerlere isteyenler yüz yüze olarak da katılabiliyor.</span><br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Abdullah Gül Üniversitesi (AGÜ), savunma sanayiinden sağlığa, ekonomiden dijital teknolojilere kadar çeşitli konularda topluma katkı odaklı halka açık seminerler serisi başlattı. Halka açık 7’den 70’e herkesin ilgi duyabileceği çok çeşitli konularda eğitim seminerleri YouTube’tan canlı (online) olarak gerçekleştiriliyor. Sümer Kampüsü Konferans Salonu’ndan yapılacak seminerlere isteyenler yüz yüze olarak da katılabiliyor.</span><br></p>\"}',NULL,1,'2022-08-23 07:09:27','2022-08-24 09:14:13','{\"en\": \"Abdullah Gül Üniversitesi (AGÜ), savunma sanayiinden sağlığa, ekonomiden dijital teknolojilere kadar çeşitli konularda topluma katkı odaklı halka açık seminerler serisi başlattı.                                 Halka açık 7’den 70’e herkesin ilgi duyabileceği çok çeşitli konularda eğitim seminerleri YouTube’tan canlı (online) olarak gerçekleştiriliyor. Sümer Kampüsü Konferans Salonu’ndan yapılacak seminerlere isteyenler yüz yüze olarak da katılabiliyor.\", \"tr\": \"Abdullah Gül Üniversitesi (AGÜ), savunma sanayiinden sağlığa, ekonomiden dijital teknolojilere kadar çeşitli konularda topluma katkı odaklı halka açık seminerler serisi başlattı.                                 Halka açık 7’den 70’e herkesin ilgi duyabileceği çok çeşitli konularda eğitim seminerleri YouTube’tan canlı (online) olarak gerçekleştiriliyor. Sümer Kampüsü Konferans Salonu’ndan yapılacak seminerlere isteyenler yüz yüze olarak da katılabiliyor.\"}'),(9,'{\"en\": \"AGÜ Endüstri Mühendisliği’nden Sanayi Odaklı Öğrenci Projeleri Fuarı\", \"tr\": \"AGÜ Endüstri Mühendisliği’nden Sanayi Odaklı Öğrenci Projeleri Fuarı\"}','{\"en\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Abdullah Gül Üniversitesi (AGÜ) Endüstri Mühendisliği Bölümü tarafından Sanayi Odaklı Öğrenci Projeleri Fuarı düzenlendi. Bu yıl üçüncüsü yapılan fuarda, Endüstri Mühendisliği Bölümü lisans ve lisansüstü öğrencileri, AK Frigo, Aspilsan, Bamen, Bellona, Boyçelik, Delphi metal, Devlet Hava Meydanları İşletmesi Kayseri Havalimanı, Doqu Home, Durlum, Ferre, HES Kablo, Insider, İstikbal, Kumtel, LC Waikiki, Mars Logistics, Migall, Mundo, Mondihome, Ödül Trophy, Simfer, Selçuk Ecza Deposu ve Yataş firmaları ile gerçekleştirdiği 35 farklı projeyi sergiledi.</span><br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Abdullah Gül Üniversitesi (AGÜ) Endüstri Mühendisliği Bölümü tarafından Sanayi Odaklı Öğrenci Projeleri Fuarı düzenlendi. Bu yıl üçüncüsü yapılan fuarda, Endüstri Mühendisliği Bölümü lisans ve lisansüstü öğrencileri, AK Frigo, Aspilsan, Bamen, Bellona, Boyçelik, Delphi metal, Devlet Hava Meydanları İşletmesi Kayseri Havalimanı, Doqu Home, Durlum, Ferre, HES Kablo, Insider, İstikbal, Kumtel, LC Waikiki, Mars Logistics, Migall, Mundo, Mondihome, Ödül Trophy, Simfer, Selçuk Ecza Deposu ve Yataş firmaları ile gerçekleştirdiği 35 farklı projeyi sergiledi.</span><br></p>\"}',NULL,1,'2022-08-23 07:10:30','2022-08-24 09:14:57','{\"en\": \"Abdullah Gül Üniversitesi (AGÜ) Endüstri Mühendisliği Bölümü tarafından Sanayi Odaklı Öğrenci Projeleri Fuarı düzenlendi. Bu yıl üçüncüsü yapılan fuarda, Endüstri Mühendisliği Bölümü lisans ve lisansüstü öğrencileri, AK Frigo, Aspilsan, Bamen, Bellona, Boyçelik, Delphi metal, Devlet Hava Meydanları İşletmesi Kayseri Havalimanı, Doqu Home, Durlum, Ferre, HES Kablo, Insider, İstikbal, Kumtel, LC Waikiki, Mars Logistics, Migall, Mundo, Mondihome, Ödül Trophy, Simfer, Selçuk Ecza Deposu ve Yataş firmaları ile gerçekleştirdiği 35 farklı projeyi sergiledi.\", \"tr\": \"Abdullah Gül Üniversitesi (AGÜ) Endüstri Mühendisliği Bölümü tarafından Sanayi Odaklı Öğrenci Projeleri Fuarı düzenlendi. Bu yıl üçüncüsü yapılan fuarda, Endüstri Mühendisliği Bölümü lisans ve lisansüstü öğrencileri, AK Frigo, Aspilsan, Bamen, Bellona, Boyçelik, Delphi metal, Devlet Hava Meydanları İşletmesi Kayseri Havalimanı, Doqu Home, Durlum, Ferre, HES Kablo, Insider, İstikbal, Kumtel, LC Waikiki, Mars Logistics, Migall, Mundo, Mondihome, Ödül Trophy, Simfer, Selçuk Ecza Deposu ve Yataş firmaları ile gerçekleştirdiği 35 farklı projeyi sergiledi.\"}'),(10,'{\"en\": \"Göreme Belediyesi ile İş Birliği Protokolü İmzalandı\", \"tr\": \"Göreme Belediyesi ile İş Birliği Protokolü İmzalandı\"}','{\"en\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Abdullah Gül Üniversitesi (AGÜ) ile Türkiye’nin önemli turizm merkezlerinden olan Nevşehir’in Göreme Belediyesi eğitimden bilime, sanattan kültüre birçok alanda ortak çalışmalar yapacak. AGÜ ile Göreme Belediyesi arasında iş birliği protokolü imzalandı. Göreme Belediye Başkanı Ömer Eren AGÜ Rektörü Prof. Dr. Cengiz Yılmaz’ı makamında ziyaret etti. Protkol ziyarette Başkan Eren ile Rektör Yılmaz arasında imzalandı. Protokole göre AGÜ ile Göreme Belediyesi eğitim, bilim, sanat, kültür, sağlık, spor, araştırma, iş birliğine dayalı proje geliştirme ve uygulama faaliyetleri gibi alanlarda iş birliği çalışmaları yürütecek.</span><br></p>\", \"tr\": \"<p><span style=\\\"caret-color: rgb(10, 2, 3); color: rgb(10, 2, 3); font-family: RuckSack, sans-serif;\\\">Abdullah Gül Üniversitesi (AGÜ) ile Türkiye’nin önemli turizm merkezlerinden olan Nevşehir’in Göreme Belediyesi eğitimden bilime, sanattan kültüre birçok alanda ortak çalışmalar yapacak. AGÜ ile Göreme Belediyesi arasında iş birliği protokolü imzalandı. Göreme Belediye Başkanı Ömer Eren AGÜ Rektörü Prof. Dr. Cengiz Yılmaz’ı makamında ziyaret etti. Protkol ziyarette Başkan Eren ile Rektör Yılmaz arasında imzalandı. Protokole göre AGÜ ile Göreme Belediyesi eğitim, bilim, sanat, kültür, sağlık, spor, araştırma, iş birliğine dayalı proje geliştirme ve uygulama faaliyetleri gibi alanlarda iş birliği çalışmaları yürütecek.</span><br></p>\"}',NULL,1,'2022-08-23 07:11:00','2022-08-24 09:15:22','{\"en\": \"Abdullah Gül Üniversitesi (AGÜ) ile Türkiye’nin önemli turizm merkezlerinden olan Nevşehir’in Göreme Belediyesi eğitimden bilime, sanattan kültüre birçok alanda ortak çalışmalar yapacak. AGÜ ile Göreme Belediyesi arasında iş birliği protokolü imzalandı. Göreme Belediye Başkanı Ömer Eren AGÜ Rektörü Prof. Dr. Cengiz Yılmaz’ı makamında ziyaret etti. Protkol ziyarette Başkan Eren ile Rektör Yılmaz arasında imzalandı. Protokole göre AGÜ ile Göreme Belediyesi eğitim, bilim, sanat, kültür, sağlık, spor, araştırma, iş birliğine dayalı proje geliştirme ve uygulama faaliyetleri gibi alanlarda iş birliği çalışmaları yürütecek.\", \"tr\": \"Abdullah Gül Üniversitesi (AGÜ) ile Türkiye’nin önemli turizm merkezlerinden olan Nevşehir’in Göreme Belediyesi eğitimden bilime, sanattan kültüre birçok alanda ortak çalışmalar yapacak. AGÜ ile Göreme Belediyesi arasında iş birliği protokolü imzalandı. Göreme Belediye Başkanı Ömer Eren AGÜ Rektörü Prof. Dr. Cengiz Yılmaz’ı makamında ziyaret etti. Protkol ziyarette Başkan Eren ile Rektör Yılmaz arasında imzalandı. Protokole göre AGÜ ile Göreme Belediyesi eğitim, bilim, sanat, kültür, sağlık, spor, araştırma, iş birliğine dayalı proje geliştirme ve uygulama faaliyetleri gibi alanlarda iş birliği çalışmaları yürütecek.\"}');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin','admin','2022-08-12 05:18:28','2022-08-12 05:18:28'),(2,'admin.translation.index','admin','2022-08-12 05:18:28','2022-08-12 05:18:28'),(3,'admin.translation.edit','admin','2022-08-12 05:18:28','2022-08-12 05:18:28'),(4,'admin.translation.rescan','admin','2022-08-12 05:18:28','2022-08-12 05:18:28'),(5,'admin.admin-user.index','admin','2022-08-12 05:18:28','2022-08-12 05:18:28'),(6,'admin.admin-user.create','admin','2022-08-12 05:18:28','2022-08-12 05:18:28'),(7,'admin.admin-user.edit','admin','2022-08-12 05:18:28','2022-08-12 05:18:28'),(8,'admin.admin-user.delete','admin','2022-08-12 05:18:28','2022-08-12 05:18:28'),(9,'admin.upload','admin','2022-08-12 05:18:28','2022-08-12 05:18:28'),(10,'admin.admin-user.impersonal-login','admin','2022-08-12 05:18:28','2022-08-12 05:18:28'),(11,'admin.headline','admin','2022-08-12 05:36:29','2022-08-12 05:36:29'),(12,'admin.headline.index','admin','2022-08-12 05:36:29','2022-08-12 05:36:29'),(13,'admin.headline.create','admin','2022-08-12 05:36:29','2022-08-12 05:36:29'),(14,'admin.headline.show','admin','2022-08-12 05:36:29','2022-08-12 05:36:29'),(15,'admin.headline.edit','admin','2022-08-12 05:36:29','2022-08-12 05:36:29'),(16,'admin.headline.delete','admin','2022-08-12 05:36:29','2022-08-12 05:36:29'),(17,'admin.headline.bulk-delete','admin','2022-08-12 05:36:29','2022-08-12 05:36:29'),(18,'admin.success','admin','2022-08-12 05:43:37','2022-08-12 05:43:37'),(19,'admin.success.index','admin','2022-08-12 05:43:37','2022-08-12 05:43:37'),(20,'admin.success.create','admin','2022-08-12 05:43:37','2022-08-12 05:43:37'),(21,'admin.success.show','admin','2022-08-12 05:43:37','2022-08-12 05:43:37'),(22,'admin.success.edit','admin','2022-08-12 05:43:37','2022-08-12 05:43:37'),(23,'admin.success.delete','admin','2022-08-12 05:43:37','2022-08-12 05:43:37'),(24,'admin.success.bulk-delete','admin','2022-08-12 05:43:37','2022-08-12 05:43:37'),(25,'admin.dna','admin','2022-08-12 05:49:24','2022-08-12 05:49:24'),(26,'admin.dna.index','admin','2022-08-12 05:49:24','2022-08-12 05:49:24'),(27,'admin.dna.create','admin','2022-08-12 05:49:24','2022-08-12 05:49:24'),(28,'admin.dna.show','admin','2022-08-12 05:49:24','2022-08-12 05:49:24'),(29,'admin.dna.edit','admin','2022-08-12 05:49:24','2022-08-12 05:49:24'),(30,'admin.dna.delete','admin','2022-08-12 05:49:24','2022-08-12 05:49:24'),(31,'admin.dna.bulk-delete','admin','2022-08-12 05:49:24','2022-08-12 05:49:24'),(32,'admin.announcement','admin','2022-08-12 05:56:59','2022-08-12 05:56:59'),(33,'admin.announcement.index','admin','2022-08-12 05:56:59','2022-08-12 05:56:59'),(34,'admin.announcement.create','admin','2022-08-12 05:56:59','2022-08-12 05:56:59'),(35,'admin.announcement.show','admin','2022-08-12 05:56:59','2022-08-12 05:56:59'),(36,'admin.announcement.edit','admin','2022-08-12 05:56:59','2022-08-12 05:56:59'),(37,'admin.announcement.delete','admin','2022-08-12 05:56:59','2022-08-12 05:56:59'),(38,'admin.announcement.bulk-delete','admin','2022-08-12 05:56:59','2022-08-12 05:56:59'),(39,'admin.event','admin','2022-08-12 06:10:01','2022-08-12 06:10:01'),(40,'admin.event.index','admin','2022-08-12 06:10:01','2022-08-12 06:10:01'),(41,'admin.event.create','admin','2022-08-12 06:10:01','2022-08-12 06:10:01'),(42,'admin.event.show','admin','2022-08-12 06:10:01','2022-08-12 06:10:01'),(43,'admin.event.edit','admin','2022-08-12 06:10:01','2022-08-12 06:10:01'),(44,'admin.event.delete','admin','2022-08-12 06:10:01','2022-08-12 06:10:01'),(45,'admin.event.bulk-delete','admin','2022-08-12 06:10:01','2022-08-12 06:10:01'),(46,'admin.event-calendar','admin','2022-08-12 10:10:24','2022-08-12 10:10:24'),(47,'admin.event-calendar.index','admin','2022-08-12 10:10:24','2022-08-12 10:10:24'),(48,'admin.event-calendar.create','admin','2022-08-12 10:10:24','2022-08-12 10:10:24'),(49,'admin.event-calendar.show','admin','2022-08-12 10:10:24','2022-08-12 10:10:24'),(50,'admin.event-calendar.edit','admin','2022-08-12 10:10:24','2022-08-12 10:10:24'),(51,'admin.event-calendar.delete','admin','2022-08-12 10:10:24','2022-08-12 10:10:24'),(52,'admin.event-calendar.bulk-delete','admin','2022-08-12 10:10:24','2022-08-12 10:10:24'),(53,'admin.news','admin','2022-08-15 17:55:09','2022-08-15 17:55:09'),(54,'admin.news.index','admin','2022-08-15 17:55:09','2022-08-15 17:55:09'),(55,'admin.news.create','admin','2022-08-15 17:55:09','2022-08-15 17:55:09'),(56,'admin.news.show','admin','2022-08-15 17:55:09','2022-08-15 17:55:09'),(57,'admin.news.edit','admin','2022-08-15 17:55:09','2022-08-15 17:55:09'),(58,'admin.news.delete','admin','2022-08-15 17:55:09','2022-08-15 17:55:09'),(59,'admin.news.bulk-delete','admin','2022-08-15 17:55:09','2022-08-15 17:55:09');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator','admin','2022-08-12 05:18:28','2022-08-12 05:18:28');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `success`
--

DROP TABLE IF EXISTS `success`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `success` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` json DEFAULT NULL,
  `published_at` date DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `success`
--

LOCK TABLES `success` WRITE;
/*!40000 ALTER TABLE `success` DISABLE KEYS */;
INSERT INTO `success` VALUES (1,'{\"en\": \"AGU SUCCESS\", \"tr\": \"AGU BAŞARILAR\"}',NULL,1,'2022-08-12 09:08:35','2022-08-12 09:08:35');
/*!40000 ALTER TABLE `success` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` json NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_namespace_index` (`namespace`),
  KEY `translations_group_index` (`group`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'brackets/admin-ui','admin','operation.succeeded','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(2,'brackets/admin-ui','admin','operation.failed','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(3,'brackets/admin-ui','admin','operation.not_allowed','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(4,'*','admin','admin-user.columns.first_name','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(5,'*','admin','admin-user.columns.last_name','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(6,'*','admin','admin-user.columns.email','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(7,'*','admin','admin-user.columns.password','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(8,'*','admin','admin-user.columns.password_repeat','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(9,'*','admin','admin-user.columns.activated','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(10,'*','admin','admin-user.columns.forbidden','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(11,'*','admin','admin-user.columns.language','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(12,'brackets/admin-ui','admin','forms.select_an_option','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(13,'*','admin','admin-user.columns.roles','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(14,'brackets/admin-ui','admin','forms.select_options','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(15,'*','admin','admin-user.actions.create','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(16,'brackets/admin-ui','admin','btn.save','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(17,'*','admin','admin-user.actions.edit','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(18,'*','admin','admin-user.actions.index','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(19,'brackets/admin-ui','admin','placeholder.search','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(20,'brackets/admin-ui','admin','btn.search','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(21,'*','admin','admin-user.columns.id','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(22,'*','admin','admin-user.columns.last_login_at','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(23,'brackets/admin-ui','admin','btn.edit','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(24,'brackets/admin-ui','admin','btn.delete','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(25,'brackets/admin-ui','admin','pagination.overview','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(26,'brackets/admin-ui','admin','index.no_items','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(27,'brackets/admin-ui','admin','index.try_changing_items','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(28,'brackets/admin-ui','admin','btn.new','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(29,'brackets/admin-ui','admin','profile_dropdown.account','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(30,'brackets/admin-auth','admin','profile_dropdown.profile','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(31,'brackets/admin-auth','admin','profile_dropdown.password','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(32,'brackets/admin-auth','admin','profile_dropdown.logout','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(33,'brackets/admin-ui','admin','sidebar.content','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(34,'brackets/admin-ui','admin','sidebar.settings','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(35,'*','admin','admin-user.actions.edit_password','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(36,'*','admin','admin-user.actions.edit_profile','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:22',NULL),(37,'brackets/admin-auth','admin','activation_form.title','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(38,'brackets/admin-auth','admin','activation_form.note','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(39,'brackets/admin-auth','admin','auth_global.email','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(40,'brackets/admin-auth','admin','activation_form.button','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(41,'brackets/admin-auth','admin','login.title','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(42,'brackets/admin-auth','admin','login.sign_in_text','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(43,'brackets/admin-auth','admin','auth_global.password','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(44,'brackets/admin-auth','admin','login.button','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(45,'brackets/admin-auth','admin','login.forgot_password','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(46,'brackets/admin-auth','admin','forgot_password.title','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(47,'brackets/admin-auth','admin','forgot_password.note','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(48,'brackets/admin-auth','admin','forgot_password.button','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(49,'brackets/admin-auth','admin','password_reset.title','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(50,'brackets/admin-auth','admin','password_reset.note','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(51,'brackets/admin-auth','admin','auth_global.password_confirm','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(52,'brackets/admin-auth','admin','password_reset.button','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(53,'brackets/admin-auth','activations','email.line','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(54,'brackets/admin-auth','activations','email.action','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(55,'brackets/admin-auth','activations','email.notRequested','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(56,'brackets/admin-auth','admin','activations.activated','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(57,'brackets/admin-auth','admin','activations.invalid_request','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(58,'brackets/admin-auth','admin','activations.disabled','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(59,'brackets/admin-auth','admin','activations.sent','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(60,'brackets/admin-auth','admin','passwords.sent','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(61,'brackets/admin-auth','admin','passwords.reset','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(62,'brackets/admin-auth','admin','passwords.invalid_token','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(63,'brackets/admin-auth','admin','passwords.invalid_user','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(64,'brackets/admin-auth','admin','passwords.invalid_password','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(65,'brackets/admin-auth','resets','email.line','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(66,'brackets/admin-auth','resets','email.action','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(67,'brackets/admin-auth','resets','email.notRequested','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(68,'*','auth','failed','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(69,'*','auth','throttle','[]',NULL,'2022-08-12 05:19:24','2022-08-25 09:03:23',NULL),(70,'*','*','Manage access','[]',NULL,'2022-08-12 05:19:25','2022-08-25 09:03:23',NULL),(71,'*','*','Translations','[]',NULL,'2022-08-12 05:19:25','2022-08-25 09:03:23',NULL),(72,'*','*','Configuration','[]',NULL,'2022-08-12 05:19:25','2022-08-25 09:03:23',NULL),(73,'brackets/admin-ui','admin','forms.publish','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(74,'*','admin','announcement.columns.published_at','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(75,'brackets/admin-ui','admin','forms.currently_editing_translation','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(76,'brackets/admin-ui','admin','forms.more_can_be_managed','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(77,'brackets/admin-ui','admin','forms.manage_translations','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(78,'brackets/admin-ui','admin','forms.choose_translation_to_edit','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(79,'brackets/admin-ui','admin','forms.hide','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(80,'*','admin','announcement.columns.title','{\"en\": \"Link\", \"tr\": \"Link\"}',NULL,'2022-08-12 17:54:54','2022-08-24 11:42:58','2022-08-24 11:42:58'),(81,'*','admin','announcement.columns.description','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(82,'*','admin','announcement.columns.enabled','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(83,'*','admin','announcement.actions.create','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(84,'brackets/admin-ui','admin','btn.saved','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(85,'*','admin','announcement.actions.edit','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(86,'*','admin','announcement.actions.index','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(87,'*','admin','announcement.columns.id','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(88,'brackets/admin-ui','admin','listing.selected_items','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(89,'brackets/admin-ui','admin','listing.check_all_items','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(90,'brackets/admin-ui','admin','listing.uncheck_all_items','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(91,'*','admin','announcement.actions.will_be_published','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(92,'brackets/admin-ui','admin','operation.publish_later','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(93,'brackets/admin-ui','admin','operation.publish_now','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(94,'brackets/admin-ui','admin','operation.unpublish_now','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(95,'*','admin','dna.columns.published_at','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(96,'*','admin','dna.columns.title','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(97,'*','admin','dna.columns.description','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(98,'*','admin','dna.columns.enabled','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(99,'*','admin','dna.actions.create','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(100,'*','admin','dna.actions.edit','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(101,'*','admin','dna.actions.index','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(102,'*','admin','dna.columns.id','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(103,'*','admin','dna.actions.will_be_published','[]',NULL,'2022-08-12 17:54:54','2022-08-25 09:03:22',NULL),(104,'*','admin','event-calendar.columns.published_at','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(105,'*','admin','event-calendar.columns.title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(106,'*','admin','event-calendar.columns.event_location','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(107,'*','admin','event-calendar.columns.event_time','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(108,'brackets/admin-ui','admin','forms.select_date_and_time','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(109,'*','admin','event-calendar.columns.enabled','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(110,'*','admin','event-calendar.actions.create','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(111,'*','admin','event-calendar.actions.edit','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(112,'*','admin','event-calendar.actions.index','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(113,'*','admin','event-calendar.columns.id','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(114,'*','admin','event-calendar.actions.will_be_published','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(115,'*','admin','headline.columns.published_at','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(116,'*','admin','headline.columns.title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(117,'*','admin','headline.columns.summary','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(118,'*','admin','headline.columns.button_title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(119,'*','admin','headline.columns.enabled','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(120,'*','admin','headline.actions.create','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(121,'*','admin','headline.actions.edit','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(122,'*','admin','headline.actions.index','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(123,'*','admin','headline.columns.id','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(124,'*','admin','headline.actions.will_be_published','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(125,'*','admin','headline.title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(126,'*','admin','success.title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(127,'*','admin','dna.title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(128,'*','admin','announcement.title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(129,'*','admin','event-calendar.title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(130,'*','admin','success.columns.published_at','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(131,'*','admin','success.columns.title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(132,'*','admin','success.columns.enabled','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(133,'*','admin','success.actions.create','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(134,'*','admin','success.actions.edit','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(135,'*','admin','success.actions.index','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(136,'*','admin','success.columns.id','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(137,'*','admin','success.actions.will_be_published','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:22',NULL),(138,'brackets/admin-translations','admin','title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(139,'brackets/admin-translations','admin','index.all_groups','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(140,'brackets/admin-translations','admin','index.edit','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(141,'brackets/admin-translations','admin','index.default_text','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(142,'brackets/admin-translations','admin','index.translation','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(143,'brackets/admin-translations','admin','index.translation_for_language','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(144,'brackets/admin-translations','admin','import.title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(145,'brackets/admin-translations','admin','import.notice','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(146,'brackets/admin-translations','admin','import.upload_file','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(147,'brackets/admin-translations','admin','import.choose_file','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(148,'brackets/admin-translations','admin','import.language_to_import','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(149,'brackets/admin-translations','admin','fields.select_language','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(150,'brackets/admin-translations','admin','import.do_not_override','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(151,'brackets/admin-translations','admin','import.conflict_notice_we_have_found','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(152,'brackets/admin-translations','admin','import.conflict_notice_translations_to_be_imported','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(153,'brackets/admin-translations','admin','import.conflict_notice_differ','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(154,'brackets/admin-translations','admin','fields.group','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(155,'brackets/admin-translations','admin','fields.default','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(156,'brackets/admin-translations','admin','fields.current_value','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(157,'brackets/admin-translations','admin','fields.imported_value','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(158,'brackets/admin-translations','admin','import.sucesfully_notice','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(159,'brackets/admin-translations','admin','import.sucesfully_notice_update','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(160,'brackets/admin-translations','admin','index.export','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(161,'brackets/admin-translations','admin','export.notice','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(162,'brackets/admin-translations','admin','export.language_to_export','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(163,'brackets/admin-translations','admin','btn.export','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(164,'brackets/admin-translations','admin','index.title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(165,'brackets/admin-translations','admin','btn.import','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(166,'brackets/admin-translations','admin','btn.re_scan','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(167,'brackets/admin-translations','admin','fields.created_at','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(168,'brackets/admin-translations','admin','index.no_items','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(169,'brackets/admin-translations','admin','index.try_changing_items','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(170,'brackets/admin-ui','admin','media_uploader.max_number_of_files','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(171,'brackets/admin-ui','admin','media_uploader.max_size_pre_file','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(172,'brackets/admin-ui','admin','media_uploader.private_title','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(173,'brackets/admin-ui','admin','page_title_suffix','{\"en\": \"AGÜCMS\", \"tr\": \"AGÜCMS\"}',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(174,'brackets/admin-ui','admin','footer.powered_by','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(175,'*','*','Close','[]',NULL,'2022-08-12 17:54:55','2022-08-25 09:03:23',NULL),(176,'*','public','home.adayogrenci','{\"en\": \"Prospesctive Student\", \"tr\": \"Aday Öğrenci\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(177,'*','public','home.arastirma','{\"en\": \"Research\", \"tr\": \"Araştırma\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(178,'*','public','home.toplumakatki','{\"en\": \"Contribute to Society\", \"tr\": \"Topluma Katkı\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(179,'*','public','home.egitim','{\"en\": \"Education\", \"tr\": \"Eğitim\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(180,'*','public','home.uluslararasi','{\"en\": \"International\", \"tr\": \"Uluslararası\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(181,'*','public','home.mezun','{\"en\": \"Alumni\", \"tr\": \"Mezun\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(182,'*','public','home.agutv','{\"en\": \"AGU TV\", \"tr\": \"AGÜ TV\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(183,'*','public','home.akademik','{\"en\": \"Academic\", \"tr\": \"Akademik\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(184,'*','public','home.idari','{\"en\": \"Administrative\", \"tr\": \"İdari\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(185,'*','public','home.ogrenci','{\"en\": \"Student\", \"tr\": \"Öğrenci\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(186,'*','public','home.myagu','{\"en\": \"My AGU\", \"tr\": \"My AGÜ\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(187,'*','public','home.aguv','{\"en\": \"AGUV\", \"tr\": \"AGUV\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(188,'*','public','home.hakkinda','{\"en\": \"About\", \"tr\": \"Hakkında\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(189,'*','public','home.fakulte','{\"en\": \"public.home.fakulte\", \"tr\": \"Fakülteler ve Bölümler\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(190,'*','public','home.fenbilimleri','{\"en\": \"public.home.fenbilimleri\", \"tr\": \"Fen Bilimleri Enstitüsü\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(191,'*','public','home.dilokulu','{\"en\": \"public.home.dilokulu\", \"tr\": \"Dil Okulu\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(192,'*','public','home.turkdili','{\"en\": \"public.home.turkdili\", \"tr\": \"Türk Dili Bölümü\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(193,'*','public','home.akademikkadro','{\"en\": \"public.home.akademikkadro\", \"tr\": \"Akademik Kadro\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(194,'*','public','home.egitimogretim','{\"en\": \"public.home.egitimogretim\", \"tr\": \"Eğitim Öğretim Bilgi Sistemi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(195,'*','public','home.erasmus','{\"en\": \"public.home.erasmus\", \"tr\": \"Erasmus Ofisi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(196,'*','public','home.avesis','{\"en\": \"public.home.avesis\", \"tr\": \"AVESİS\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(197,'*','public','home.akademikveri','{\"en\": \"public.home.akademikveri\", \"tr\": \"Akademik Veri Yönetim Sistemi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(198,'*','public','home.akademiktakvim','{\"en\": \"public.home.akademiktakvim\", \"tr\": \"Akademik Takvim\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(199,'*','public','home.akademiktakvim','{\"en\": \"\", \"tr\": \"\"}',NULL,'2022-08-11 08:41:01','2022-08-24 07:10:48','2022-08-24 07:10:48'),(200,'*','public','home.akademikatama','{\"en\": \"public.home.akademikatama\", \"tr\": \"Akademik Atama ve Yükseltme Yönergesi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(201,'*','public','home.akademikdurustluk','{\"en\": \"public.home.akademikdurustluk\", \"tr\": \"Akademik Dürüstlük Politika Belgesi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(202,'*','public','home.ogrenciisleri','{\"en\": \"public.home.ogrenciisleri\", \"tr\": \"Öğrenci İşleri Daire Başkanlığı\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(203,'*','public','home.personel','{\"en\": \"public.home.personel\", \"tr\": \"Personel\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(204,'*','public','home.kutuphane','{\"en\": \"public.home.kutuphane\", \"tr\": \"Kütüphane\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(205,'*','public','home.bilgiislem','{\"en\": \"public.home.bilgiislem\", \"tr\": \"Bilgi İşlem\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(206,'*','public','home.strateji','{\"en\": \"public.home.strateji\", \"tr\": \"Strateji\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(207,'*','public','home.yapiisleri','{\"en\": \"public.home.yapiisleri\", \"tr\": \"Yapı İşleri\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(208,'*','public','home.saglikkultur','{\"en\": \"public.home.saglikkultur\", \"tr\": \"Sağlık Kültür ve Spor Daire Başkanlığı\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(209,'*','public','home.yaziisleri','{\"en\": \"public.home.yaziisleri\", \"tr\": \"Yazı İşleri\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(210,'*','public','home.guvenlik','{\"en\": \"public.home.guvenlik\", \"tr\": \"Güvenlik\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(211,'*','public','home.hukuk','{\"en\": \"public.home.hukuk\", \"tr\": \"Hukuk Müşavirliği\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(212,'*','public','home.icdenetim','{\"en\": \"public.home.icdenetim\", \"tr\": \"İç Denetim Birimi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(213,'*','public','home.issagligi','{\"en\": \"public.home.issagligi\", \"tr\": \"İş Sağlığı ve Güvenliği\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(214,'*','public','home.donersermaye','{\"en\": \"public.home.donersermaye\", \"tr\": \"Döner Sermaye\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(215,'*','public','home.uis','{\"en\": \"public.home.uis\", \"tr\": \"UIS\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(216,'*','public','home.verilenkurslar','{\"en\": \"public.home.verilenkurslar\", \"tr\": \"Verilen Kurslar\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(217,'*','public','home.akademikkatalog','{\"en\": \"public.home.akademikkatalog\", \"tr\": \"Akademik Katalog\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(218,'*','public','home.ogrencidekanligi','{\"en\": \"public.home.ogrencidekanligi\", \"tr\": \"Öğrenci Dekanlığı\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(219,'*','public','home.yurtlar','{\"en\": \"public.home.yurtlar\", \"tr\": \"Yurtlar\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(220,'*','public','home.genclikfabrikasi','{\"en\": \"public.home.genclikfabrikasi\", \"tr\": \"Gençlik Fabrikası\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(221,'*','public','home.kariyermerkezi','{\"en\": \"public.home.kariyermerkezi\", \"tr\": \"Kariyer Merkezi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(222,'*','public','home.kampusler','{\"en\": \"public.home.kampusler\", \"tr\": \"Kampüsler\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(223,'*','public','home.ogrencikulupleri','{\"en\": \"public.home.ogrencikulupleri\", \"tr\": \"Öğrenci Kulüpleri ve Organizasyonlar\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(224,'*','public','home.spor','{\"en\": \"public.home.spor\", \"tr\": \"Spor ve Aktiviteler\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(225,'*','public','home.myaguogrenci','{\"en\": \"\", \"tr\": \"\"}',NULL,'2022-08-11 08:41:01','2022-08-24 07:10:48','2022-08-24 07:10:48'),(226,'*','public','home.myaguogretimuyesi','{\"en\": \"\", \"tr\": \"\"}',NULL,'2022-08-11 08:41:01','2022-08-24 07:10:48','2022-08-24 07:10:48'),(227,'*','public','home.myaguidari','{\"en\": \"\", \"tr\": \"\"}',NULL,'2022-08-11 08:41:01','2022-08-24 07:10:48','2022-08-24 07:10:48'),(228,'*','public','home.rektor','{\"en\": \"public.home.rektor\", \"tr\": \"Rektör\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(229,'*','public','home.tarihimiras','{\"en\": \"public.home.tarihimiras\", \"tr\": \"Tarihi Miras\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(230,'*','public','home.vizyonvemisyon','{\"en\": \"public.home.vizyonvemisyon\", \"tr\": \"Vizyon ve Misyon\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(231,'*','public','home.agudegerleri','{\"en\": \"public.home.agudegerleri\", \"tr\": \"AGÜ Değerleri & Eşitlik ve Özgürlük Politikası\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(232,'*','public','home.akademikdurustluk','{\"en\": \"\", \"tr\": \"\"}',NULL,'2022-08-11 08:41:01','2022-08-24 07:10:48','2022-08-24 07:10:48'),(233,'*','public','home.yonetim','{\"en\": \"public.home.yonetim\", \"tr\": \"Yönetim\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(234,'*','public','home.idaribirimler','{\"en\": \"public.home.idaribirimler\", \"tr\": \"İdari Birimler\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(235,'*','public','home.aguvakfi','{\"en\": \"public.home.aguvakfi\", \"tr\": \"AGÜ Vakfı\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(236,'*','public','home.kalitekomisyonu','{\"en\": \"public.home.kalitekomisyonu\", \"tr\": \"Kalite Komisyonu\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(237,'*','public','home.yokkurum','{\"en\": \"\", \"tr\": \"\"}',NULL,'2022-08-11 08:41:01','2022-08-24 07:10:48','2022-08-24 07:10:48'),(238,'*','public','home.kampusler','{\"en\": \"\", \"tr\": \"\"}',NULL,'2022-08-11 08:41:01','2022-08-24 07:10:48','2022-08-24 07:10:48'),(239,'*','public','home.organizasyon','{\"en\": \"public.home.organizasyon\", \"tr\": \"Organizasyon Şeması\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(240,'*','public','home.komisyonlar','{\"en\": \"public.home.komisyonlar\", \"tr\": \"Komisyonlar\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(241,'*','public','home.aguguvenlik','{\"en\": \"public.home.aguguvenlik\", \"tr\": \"AGÜ Güvenlik Soruşturması Yönergesi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(242,'*','public','home.agudnasi','{\"en\": \"AGU DNA\", \"tr\": \"AGÜ DNA\'sı\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:22',NULL),(243,'*','public','home.habeler','{\"en\": \"\", \"tr\": \"\"}',NULL,'2022-08-11 08:41:01','2022-08-24 07:10:48','2022-08-24 07:10:48'),(244,'*','public','home.duyurular','{\"en\": \"ANNOUNCEMENTS\", \"tr\": \"DUYURULAR\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:22',NULL),(245,'*','public','home.etkinliktakvimi','{\"en\": \"Event Calendar\", \"tr\": \"Etkinlik Takvimi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:22',NULL),(246,'*','public','home.abdullahguluniversitesi','{\"en\": \"Abdullah Gul University\", \"tr\": \"Abdullah Gül Üniversitesi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:22',NULL),(247,'*','public','home.santral','{\"en\": \"Central\", \"tr\": \"Santral\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:22',NULL),(248,'*','public','home.faks','{\"en\": \"Fax\", \"tr\": \"Faks\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:22',NULL),(249,'*','public','home.aloagu','{\"en\": \"Alo AGU\", \"tr\": \"Alo AGÜ\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:22',NULL),(250,'*','public','home.epostagirin','{\"en\": \"public.home.epostagirin\", \"tr\": \"Üniversitemizi yakından takip etmek için e-posta adresinizi girin.\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:22',NULL),(251,'*','public','home.kayitol','{\"en\": \"Register\", \"tr\": \"Kayıt Ol\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(252,'*','public','home.bilgiedinmekanunu','{\"en\": \"public.home.bilgiedinmekanunu\", \"tr\": \"Bilgi Edinme Kanunu\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(253,'*','public','home.tumduyurular','{\"en\": \"ALL ANNOUNCEMENTS\", \"tr\": \"TÜM DUYURULAR\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:22',NULL),(254,'*','public','home.tumhaberler','{\"en\": \"ALL NEWS\", \"tr\": \"TÜM HABERLER\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(255,'*','public','home.adayogrencimenu','{\"en\": \"public.home.adayogrencimenu\", \"tr\": \"public.home.adayogrencimenu\"}',NULL,'2022-08-11 08:41:01','2022-08-24 07:10:48','2022-08-24 07:10:48'),(256,'*','public','home.projeler','{\"en\": \"public.home.projeler\", \"tr\": \"Projeler\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(257,'*','public','home.bilimselarastirma','{\"en\": \"public.home.bilimselarastirma\", \"tr\": \"Bilimsel Araştırma Projeleri Birimi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(258,'*','public','home.teknolojitransfer','{\"en\": \"public.home.teknolojitransfer\", \"tr\": \"Teknoloji Transfer Ofisi (AGÜ TTO)\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(259,'*','public','home.merkeziarastirma','{\"en\": \"public.home.merkeziarastirma\", \"tr\": \"Merkezi Araştırma Laboratuvarı\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(260,'*','public','home.basarihikayelerimiz','{\"en\": \"public.home.basarihikayelerimiz\", \"tr\": \"Başarı Hikayelerimiz\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(261,'*','public','home.agukalkinma','{\"en\": \"public.home.agukalkinma\", \"tr\": \"AGÜ Kalkınma Bakanlığı Projesi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(262,'*','public','home.mezunogrenci','{\"en\": \"public.home.mezunogrenci\", \"tr\": \"Mezun Öğrenci Ofisi\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(263,'*','public','home.haberler','{\"en\": \"News\", \"tr\": \"Haberler\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:23',NULL),(264,'*','public','home.sumerkampusu','{\"en\": \"Sumer Campus, Kayseri Turkey\", \"tr\": \"Sümer Kampüsü, Kayseri TÜRKİYE\"}',NULL,'2022-08-11 08:41:01','2022-08-25 09:03:22',NULL),(265,'*','admin','news.title','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(266,'*','admin','news.columns.published_at','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(267,'*','admin','news.columns.title','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(268,'*','admin','news.columns.summary','{\"en\": \"Summary\", \"tr\": \"admin.news.columns.summary\"}',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(269,'*','admin','news.columns.description','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(270,'*','admin','news.columns.enabled','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(271,'*','admin','news.actions.create','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(272,'*','admin','news.actions.edit','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(273,'*','admin','news.actions.index','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(274,'*','admin','news.columns.id','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(275,'*','admin','news.actions.will_be_published','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22',NULL),(276,'*','public','home.fakulteler','{\"en\": \"public.home.fakulteler\", \"tr\": \"Fakülteler ve Bölümler\"}',NULL,'2022-08-24 07:10:49','2022-08-24 15:02:14','2022-08-24 15:02:14'),(277,'*','public','home.ogretimuyesi','{\"en\": \"public.home.ogretimuyesi\", \"tr\": \"Öğretim Üyesi\"}',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:23',NULL),(278,'*','public','home.idaribilimler','[]',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:22','2022-08-25 09:03:22'),(279,'*','public','home.yok','{\"en\": \"public.home.yok\", \"tr\": \"YÖK Kurum İç Değerlendirme Raporları\"}',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:23',NULL),(280,'*','public','home.ogranizasyon','[]',NULL,'2022-08-24 07:10:49','2022-08-24 09:23:47','2022-08-24 09:23:47'),(281,'*','public','home.kurumsal','{\"en\": \"public.home.kurumsal\", \"tr\": \"Kurumsal İletişim Koordinatörlüğü\"}',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:23',NULL),(282,'*','public','home.kurumsaliletisim','{\"en\": \"public.home.kurumsaliletisim\", \"tr\": \"Kurumsal İletişim Koordinatörlüğü\"}',NULL,'2022-08-24 07:10:49','2022-08-25 09:03:23',NULL),(283,'*','public','myaguogretimuyesi','{\"en\": \"public.myaguogretimuyesi\", \"tr\": \"Öğretim Üyesi\"}',NULL,'2022-08-24 09:23:48','2022-08-25 09:03:23',NULL),(284,'*','admin','event-calendar.columns.link','{\"en\": \"Link\", \"tr\": \"Link\"}',NULL,'2022-08-24 11:42:58','2022-08-24 13:31:25','2022-08-24 13:31:25'),(285,'*','admin','announcement.columns.link','{\"en\": \"Link\", \"tr\": \"Link\"}',NULL,'2022-08-24 13:31:25','2022-08-25 09:03:22',NULL),(286,'*','public','home.haberdevamı','{\"en\": \"MORE...\", \"tr\": \"DEVAMI...\"}',NULL,'2022-08-24 15:02:14','2022-08-25 09:03:23',NULL),(287,'*','public','home.haberclose','{\"en\": \"Close\", \"tr\": \"Kapat\"}',NULL,'2022-08-24 15:04:20','2022-08-25 09:03:23',NULL),(288,'*','public','home.ogrencielkitapcigi','{\"en\": \"public.home.ogrencielkitapcigi\", \"tr\": \"Öğrenci El Kitapçığı\"}',NULL,'2022-08-25 09:03:23','2022-08-25 09:03:31',NULL);
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wysiwyg_media`
--

DROP TABLE IF EXISTS `wysiwyg_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wysiwyg_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wysiwygable_id` int unsigned DEFAULT NULL,
  `wysiwygable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wysiwyg_media_wysiwygable_id_index` (`wysiwygable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wysiwyg_media`
--

LOCK TABLES `wysiwyg_media` WRITE;
/*!40000 ALTER TABLE `wysiwyg_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `wysiwyg_media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 23:27:30
