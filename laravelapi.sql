-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: laravelapi
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'{\"en\":\"color\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(2,'{\"en\":\"size\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(3,'{\"en\":\"material\"}','2024-01-25 23:52:04','2024-01-25 23:52:04');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'{\"en\":\"Chair\",\"uz\":\"Stoll\"}',NULL,NULL,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(2,'{\"en\":\"Table\",\"uz\":\"Xontaxta\"}',NULL,NULL,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(3,'{\"en\":\"Sofa\",\"uz\":\"Divan\"}',NULL,NULL,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(4,'{\"en\":\"Bed\",\"uz\":\"So\'ri\"}',NULL,NULL,'2024-01-25 23:52:04','2024-01-25 23:52:04');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_01_24_070000_create_categories_table',1),(6,'2024_01_24_082905_create_products_table',1),(7,'2024_01_24_082951_create_orders_table',1),(8,'2024_01_24_083010_create_roles_table',1),(9,'2024_01_24_083019_create_settings_table',1),(10,'2024_01_24_083032_create_reviews_table',1),(11,'2024_01_24_095439_create_role_user_table',1),(12,'2024_01_24_105104_create_attributes_table',1),(13,'2024_01_24_105123_create_stocks_table',1),(14,'2024_01_24_105143_create_values_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `expires_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `name` json NOT NULL,
  `price` int NOT NULL,
  `description` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,2,'{\"en\": \"English name\", \"uz\": \"Sint impedit illum.\"}',1942242,'{\"en\": \"Ad magnam facilis ex quas eaque. Atque voluptate est sit at quia tempore repellendus. Minima iusto explicabo aut impedit autem beatae dolores. Qui tenetur sit eius quas et velit eum. Vero labore delectus eum optio. Nulla suscipit facere vero qui consequuntur aut. Facilis quas ullam non.\", \"uz\": \"Consequatur sint placeat repudiandae velit. Quia est ut placeat et incidunt quos cum. Magnam sunt rerum qui ab reiciendis iure. Vitae eius dicta aut dolores rerum dolor soluta enim.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(2,4,'{\"en\": \"English name\", \"uz\": \"Vel officia ut.\"}',4849645,'{\"en\": \"Adipisci sed voluptatibus expedita ut possimus deleniti. Culpa aut odio ipsum provident eveniet. Alias labore delectus porro necessitatibus distinctio libero et. Ea ut quam exercitationem corrupti inventore esse cumque nisi. Vitae autem est nihil ipsum ex. Ipsa accusamus sint aut qui voluptas. Vel ut aperiam voluptatem.\", \"uz\": \"Blanditiis quia sed et delectus et magni ad eaque. Facilis dicta labore repellat fugiat aut incidunt. Magni tempora consectetur aperiam. Nam molestiae dolorum eos sed.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(3,3,'{\"en\": \"English name\", \"uz\": \"Dolorum voluptatem.\"}',6107109,'{\"en\": \"Et eos odio nisi aut voluptas rerum itaque. Non mollitia ea fugiat aperiam incidunt est dolores. Ipsa hic consequatur rerum earum ut aut ut. Nemo nulla eveniet suscipit quia itaque aut. Fuga delectus beatae totam sit aperiam maxime. Et delectus ducimus perspiciatis praesentium illum nostrum.\", \"uz\": \"Et veritatis quo assumenda itaque vel rerum. Nostrum fuga cupiditate nulla voluptatibus ipsum. Nam ea mollitia dolores autem exercitationem fugit. Excepturi enim blanditiis quia maxime fugiat ut.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(4,4,'{\"en\": \"English name\", \"uz\": \"Sed vero.\"}',1787330,'{\"en\": \"Est et voluptatum laudantium blanditiis nostrum qui autem et. Aspernatur sit consectetur quo dolore. Dicta ipsum distinctio sit hic corrupti voluptatem quis sit. Quas qui harum quia nesciunt cum. Ea soluta qui eos nobis eligendi qui iusto. Laborum minima eaque ipsum alias aut voluptatem unde. Est in corrupti sed voluptatem.\", \"uz\": \"Ea blanditiis et quia sint consequatur. Fugiat autem quia voluptatum ea rerum exercitationem. Ea esse et culpa ratione. Ab occaecati et ullam corrupti. Omnis expedita consectetur aspernatur facere saepe aut vitae sint. Debitis et corporis voluptatem asperiores itaque quia.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(5,2,'{\"en\": \"English name\", \"uz\": \"Officiis amet.\"}',4491785,'{\"en\": \"Distinctio sed saepe voluptatem necessitatibus. Sit laboriosam officiis et nihil vel dolorem. Tenetur sed voluptates rerum nihil consequatur. Dolorem exercitationem ut exercitationem quidem repellendus. Voluptas rem dolorem provident et at.\", \"uz\": \"Consequatur sint ut labore ut voluptatem. Eius ex eos aspernatur aliquam qui voluptatem animi praesentium. Consectetur suscipit aut vero nostrum et dolores. Praesentium tempora fugiat et ipsam quis nihil non. Eum hic itaque ut iusto eum est. Est quia sunt quaerat nam consequuntur qui velit. Adipisci cumque ut enim maiores vero.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(6,1,'{\"en\": \"English name\", \"uz\": \"Enim recusandae eos.\"}',9572698,'{\"en\": \"Quis voluptas aut qui rerum similique cum. Tenetur explicabo doloribus sit qui consectetur asperiores. Quibusdam dolores quia quod occaecati sint. Deleniti illo sit dolore officia non laborum et. Voluptates tempore qui laboriosam non. Voluptatem ducimus et eum. Commodi qui est expedita aut quis.\", \"uz\": \"Harum sunt et accusantium voluptatem. Corrupti reprehenderit deserunt quidem omnis porro et aspernatur. Maiores incidunt animi eos natus sunt. Nihil totam omnis ipsum.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(7,3,'{\"en\": \"English name\", \"uz\": \"Nulla magni est.\"}',7455589,'{\"en\": \"Illo est in quas dolorem. Enim at voluptatem ad est ullam est. Tempora ex repellendus eum. Minima facere ad est suscipit nulla odio neque.\", \"uz\": \"Cum itaque deserunt excepturi totam quia nihil consectetur. Autem vero occaecati illum vel accusamus ut. Eaque vero itaque totam vitae. Suscipit harum asperiores ipsum. Vel ut eos magnam repudiandae. Illo iste exercitationem saepe facilis deleniti accusamus.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(8,1,'{\"en\": \"English name\", \"uz\": \"Quaerat eos.\"}',2232015,'{\"en\": \"Sed odit incidunt blanditiis necessitatibus. Iure itaque itaque itaque optio molestiae. Illo ut reiciendis ut excepturi veniam. Soluta expedita delectus odit. Dolor possimus et corporis necessitatibus omnis sint aut. Non at reiciendis necessitatibus voluptatum odit itaque.\", \"uz\": \"Autem voluptates non minus quo qui veniam nisi. Iure vel ab aliquam dolorem libero provident tempora. Voluptatem sed quaerat in voluptate minus nihil. Et voluptatem in sint odit qui beatae. Animi sint minus et in. Et molestiae asperiores eum possimus sit recusandae distinctio.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(9,2,'{\"en\": \"English name\", \"uz\": \"Similique velit et.\"}',8728876,'{\"en\": \"Eum ex officia sed deserunt facilis maxime. Quia impedit porro quo laboriosam tenetur velit. Illum architecto est dolorem cupiditate a ea. Sunt non sapiente iure voluptatibus impedit quos expedita. In ea repellendus consequatur. Molestias illum voluptas tenetur. Consequatur consequuntur optio ad harum et accusantium.\", \"uz\": \"Est quo aut minima vel. Necessitatibus autem quos neque sed eius voluptatem aut. Maxime in quidem debitis et libero. Eum quasi odio quidem sed magni illo.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(10,1,'{\"en\": \"English name\", \"uz\": \"Minus quis enim.\"}',3115247,'{\"en\": \"Sunt recusandae consequatur eos veritatis. Enim qui hic perspiciatis et consequatur. Est velit veritatis et quod. Illo quam id at voluptatem. Cumque quia doloribus rem eveniet ipsa numquam aut.\", \"uz\": \"Laudantium quia sit omnis ex eveniet. Aut facilis eius natus neque sit. Ut voluptatem sed atque magnam odit. Dolore omnis praesentium dolore voluptas et. Molestiae repellat error neque omnis.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(11,4,'{\"en\": \"English name\", \"uz\": \"Et sed.\"}',4880617,'{\"en\": \"Aut rerum eos voluptatem. Esse sit aliquam aperiam eum dolor asperiores et. Vel rerum consectetur consectetur nemo. Mollitia aut id fugiat. Vitae quos dolorem dolorem est saepe animi aut.\", \"uz\": \"Et doloribus velit occaecati ratione id. Esse aspernatur doloribus et ut aut quis dolor. Itaque voluptatibus similique omnis. Ut fugit fugiat explicabo dicta repellendus consequatur. Voluptatum maiores repellendus voluptates nam exercitationem. Quod doloremque unde similique non officiis. Nobis facere qui consequatur.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(12,4,'{\"en\": \"English name\", \"uz\": \"Excepturi quos.\"}',7789881,'{\"en\": \"Est perferendis blanditiis sed laborum impedit veniam. Atque quis et quasi possimus aut assumenda velit. Dolorem mollitia vitae repellat. Eveniet ut aperiam iure fugit eius doloribus autem. Expedita perspiciatis doloremque quidem. Ducimus deleniti quis est et. Ipsam et placeat rerum doloremque.\", \"uz\": \"Voluptatem dolores aut aut laudantium quaerat accusantium sunt. Quia quibusdam aspernatur sunt delectus. A et incidunt error fugiat ut. Nostrum omnis rerum tempora.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(13,4,'{\"en\": \"English name\", \"uz\": \"Rerum voluptates.\"}',7783431,'{\"en\": \"Quos quas ut qui vitae suscipit cum omnis autem. Sit commodi qui eligendi quia asperiores eaque. Enim cumque aliquid accusamus excepturi. Et quos laudantium harum et.\", \"uz\": \"Illum nesciunt aperiam voluptas sed autem. Qui modi eligendi atque doloremque sint. Sequi officiis aut quia provident corporis laboriosam incidunt. Perferendis unde dignissimos nihil atque officia iusto delectus. Corporis voluptatum ut eveniet ratione perferendis doloribus velit. Aut voluptas voluptate qui eius nesciunt.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(14,4,'{\"en\": \"English name\", \"uz\": \"Quae non.\"}',5162046,'{\"en\": \"Ipsum velit aut non voluptates nihil quam cum praesentium. Ullam ex excepturi impedit quasi officia magni unde tempora. Aut numquam nostrum quod sit. Est alias soluta facilis atque voluptatem.\", \"uz\": \"Aut quae magni mollitia qui at. Molestiae voluptatem culpa sed et consequuntur veritatis. Cumque corrupti cupiditate autem illo voluptatem et magnam. Natus quia laboriosam et et. Quo quas aut et modi et et.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(15,3,'{\"en\": \"English name\", \"uz\": \"Aut ab.\"}',2908990,'{\"en\": \"Nulla provident rerum qui velit error beatae ullam sunt. Qui nihil architecto sunt nesciunt numquam similique et. Officiis totam consequatur omnis dolores est. Expedita ullam corporis est saepe. Ullam voluptatem excepturi enim dolor sunt omnis. Unde et dolore deleniti quis. Distinctio saepe tempore qui maxime voluptas eius aut.\", \"uz\": \"Expedita optio officia sed mollitia sed. Nemo ab et ut quasi aliquid vel quas qui. Illum sint excepturi voluptatem sit commodi accusantium. Quaerat necessitatibus consectetur voluptatem quos qui. Ut qui eligendi veritatis praesentium. Quisquam aut dolore pariatur qui velit molestiae nulla rerum. Accusantium excepturi exercitationem a ullam.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(16,2,'{\"en\": \"English name\", \"uz\": \"Magnam sint.\"}',749050,'{\"en\": \"Quis et deleniti labore quas sit accusantium. Voluptatem maiores quasi quis. Sed laborum rerum rem maxime doloremque quia rerum corporis. Minus eos ullam sequi aut fugit optio.\", \"uz\": \"Et ut perferendis qui possimus nam ea et. Quasi molestiae tempora et possimus dolor vero aut. Autem culpa id incidunt nesciunt ipsa. Eum quia est rem itaque maxime provident. Itaque recusandae doloribus qui inventore voluptas libero.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(17,2,'{\"en\": \"English name\", \"uz\": \"Veritatis quos.\"}',9250239,'{\"en\": \"Saepe accusamus voluptas quasi officia placeat veniam. Sit aut placeat voluptatum nobis quisquam ipsam dolore. Debitis ut sed omnis saepe corrupti dolore. Ducimus enim dolor excepturi cupiditate at quis nesciunt. Beatae optio quo voluptatem repellendus dicta. Eum veniam nihil et minus quasi aliquam.\", \"uz\": \"Aut aut iusto voluptates eveniet amet omnis. Quia est voluptatum cum adipisci magnam veritatis. Aliquam quia in corrupti unde laborum. Recusandae eum doloribus est ea quia. Sequi et suscipit saepe officia assumenda.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(18,1,'{\"en\": \"English name\", \"uz\": \"Et ut et.\"}',3114805,'{\"en\": \"Iste repudiandae tempora nostrum reprehenderit ut. Minus dolor molestiae dolorum repellat minima totam eum. Rerum voluptatem voluptatem doloribus eos quia eius placeat. Ipsa reprehenderit impedit nesciunt ut explicabo vel. Molestiae quis ea nobis cum recusandae fuga eaque.\", \"uz\": \"Placeat quisquam ipsam consequatur eos dolorum sit facere sed. Nulla vero et voluptatem vitae cum et non libero. Similique nam ullam voluptas adipisci laborum. Commodi mollitia et ut sunt.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(19,3,'{\"en\": \"English name\", \"uz\": \"Corporis tempora error.\"}',1669447,'{\"en\": \"Est cum cumque dolorem earum. Mollitia nihil fugit non ut pariatur. Soluta corrupti possimus esse iure nulla sed ex. Omnis expedita natus provident sit sed enim incidunt consequatur. Nostrum blanditiis natus nihil eos quas rerum quod. Alias quam voluptate voluptatem non voluptatum. Similique repellendus voluptatibus sit repellendus error incidunt.\", \"uz\": \"Vel corrupti aut voluptatem nihil et natus iure aut. Ut suscipit magnam et qui distinctio. Fugiat quo repudiandae alias officiis. Dolor aperiam ullam similique. Dolore nam veniam eum pariatur.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(20,2,'{\"en\": \"English name\", \"uz\": \"Rerum sint tenetur.\"}',5170904,'{\"en\": \"Laborum quia sequi explicabo qui aut dolore. Reprehenderit magnam eum veritatis est facilis iste. Ratione numquam provident nobis vitae dolore. Reprehenderit quo maiores ipsum praesentium veritatis ut. Reiciendis itaque et quia qui voluptatibus autem repellat.\", \"uz\": \"Fugiat minus magni beatae et. Nam quia debitis impedit excepturi. Adipisci amet numquam architecto omnis ducimus. Nisi rerum aliquam quia eum reiciendis rem. Iusto velit impedit excepturi. Nemo deserunt nesciunt et.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(21,4,'{\"en\": \"English name\", \"uz\": \"Perferendis doloremque odit.\"}',6303081,'{\"en\": \"Possimus ut quod aut vel. Est autem maiores quia officiis ducimus sit. Asperiores minus minus id molestiae aspernatur. Ut dolorum nostrum mollitia dolores ipsa eos. Vitae dicta eius dolorem quo eum. Quis iste nihil voluptatem dolor consequatur saepe.\", \"uz\": \"Ut necessitatibus rerum a dignissimos quia asperiores quis. Facere tempore quia quod voluptas cumque. Harum sit accusantium enim qui nisi sed eum. Adipisci et nihil repellendus quis distinctio. Voluptatibus iste iste nihil odio non.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(22,3,'{\"en\": \"English name\", \"uz\": \"Labore vero.\"}',8306792,'{\"en\": \"Beatae accusantium harum earum est voluptate voluptatibus a. Deserunt accusantium qui aperiam qui cumque doloremque minus. Modi sequi accusamus debitis velit ut aperiam sit. Qui et magni consequatur aperiam sapiente autem impedit consequatur.\", \"uz\": \"Et quo deleniti mollitia qui. Repellat et eaque pariatur provident aut repudiandae. Quia assumenda in mollitia debitis soluta quas. Suscipit eum nisi sint praesentium dolor veritatis.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(23,3,'{\"en\": \"English name\", \"uz\": \"Culpa iusto quia.\"}',3912535,'{\"en\": \"Fugit quia modi laboriosam quis voluptas velit. Sit quas saepe id consequatur officia aut. Earum non natus commodi ex qui quaerat culpa. Explicabo omnis ad minima qui. Est harum quos veritatis. Suscipit magni quia rerum dolores sit. Quod fugit dolores sint sit.\", \"uz\": \"Sit consequuntur vitae debitis similique id ducimus assumenda. Tempore facilis aliquam laborum non aspernatur enim fugiat. Qui non quae provident qui vitae labore unde. Aperiam et dolores eaque harum iure perspiciatis hic et.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(24,4,'{\"en\": \"English name\", \"uz\": \"Minus neque velit.\"}',8988329,'{\"en\": \"Id veniam enim rem rerum explicabo quo. Quia iure vero est. Dolorem voluptatem dicta et error distinctio omnis. Aut nam corporis nulla eligendi. Ratione ea commodi doloremque magni. Possimus aperiam aliquam amet quaerat.\", \"uz\": \"Rerum beatae numquam deserunt labore rerum aliquam illum. Ea dignissimos tempore ad aut ut ex possimus. Sed ipsa et eius iusto sed. Autem laudantium recusandae amet occaecati sapiente et distinctio. Rerum sed suscipit voluptatem culpa perspiciatis porro.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(25,4,'{\"en\": \"English name\", \"uz\": \"Ea non similique.\"}',2468120,'{\"en\": \"Qui temporibus earum et maxime ut sit officia in. Neque porro debitis sit minima et amet aliquam. Quaerat impedit vitae aut aperiam quia quod eligendi. Dolorem tempora autem laboriosam voluptatem quia. Voluptatem sunt ab consequatur est est aliquid non dolorum. Molestiae voluptatum reprehenderit aliquam omnis illo et nostrum. Delectus fugiat et rerum et voluptatum ut est accusantium.\", \"uz\": \"Quod molestiae laudantium maxime qui velit fugit maiores debitis. Ad aperiam non nemo commodi. Eius numquam laborum ab quod consequatur natus dolorem quasi. Est optio praesentium soluta.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(26,4,'{\"en\": \"English name\", \"uz\": \"Labore ea.\"}',9410365,'{\"en\": \"Omnis quisquam dolor explicabo sint nemo. Nihil commodi asperiores et. Possimus sint architecto aliquid repellat voluptate. Iusto fugiat qui cum qui quia molestias perferendis. Et vel dolorem nesciunt id sapiente.\", \"uz\": \"Tempora dolore eum iste qui veniam illo sequi. Molestiae rem qui est aperiam quos beatae ut voluptate. Adipisci delectus sunt accusantium cum quam ipsum. At facilis vel eum eos et quod qui voluptas. Consequatur quas enim vel quia similique debitis dignissimos. Commodi vel voluptatem voluptatibus aut mollitia. Rerum ex soluta et. Quis sunt aut saepe culpa ut soluta placeat.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(27,4,'{\"en\": \"English name\", \"uz\": \"Eius et consequuntur.\"}',8687848,'{\"en\": \"Perferendis culpa non consequatur officia consequatur itaque omnis. Dolorem id repellendus dolor. Nesciunt consequuntur iure provident error deserunt. Id voluptate nesciunt et enim.\", \"uz\": \"Et eos est aut aut a possimus dolor. Delectus velit perspiciatis magnam sed quibusdam. Autem ut nemo excepturi doloribus velit id. Nihil qui rerum eos cum.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(28,1,'{\"en\": \"English name\", \"uz\": \"Quasi iusto.\"}',9926540,'{\"en\": \"A in occaecati dolores officia sed. Esse vero provident est sed. Dolorem mollitia excepturi corporis unde voluptatem sed earum. Dolor facere delectus sequi officiis iusto.\", \"uz\": \"Et eveniet omnis non aut magnam voluptatem laborum. Aut harum nobis modi ab illum omnis non. Omnis et ullam quo aut eum. Hic laboriosam magni ex non. Earum sapiente consequatur quia qui est ipsam maxime.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(29,2,'{\"en\": \"English name\", \"uz\": \"Ex possimus doloremque.\"}',4792017,'{\"en\": \"Maxime porro aperiam dolor fugiat. Accusamus et qui provident expedita. Ut quisquam vel soluta soluta quod aperiam sed. Et numquam totam a amet dolor non saepe. Magni ipsum quibusdam ut quos assumenda et. Neque fugiat voluptatum qui quos. Nisi velit voluptatem corrupti aut numquam sint.\", \"uz\": \"Maiores nisi ipsa explicabo. Laboriosam molestias vitae numquam ut aut consectetur. Laborum id molestias et commodi quam aliquam cupiditate sunt. Quibusdam dicta reiciendis voluptatibus dicta quaerat sed excepturi.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(30,3,'{\"en\": \"English name\", \"uz\": \"Temporibus placeat.\"}',9018137,'{\"en\": \"Cum nihil molestiae odio dolores accusantium. Voluptas in est ipsa quis esse deserunt voluptatem. Eum accusamus nobis et dignissimos sint et. Aut neque omnis quod et voluptas quia aut repellat. Eum natus mollitia dolorem quibusdam amet. Architecto atque earum nemo a ut minima enim.\", \"uz\": \"Et nihil ut voluptas. Unde quam numquam quo. Dolor deleniti necessitatibus ratione minima natus excepturi eum quia. Et minus et fugit sit. Est a beatae a adipisci quas aperiam molestias. Quos excepturi autem aut non. Est velit eos repudiandae sapiente deleniti.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(31,4,'{\"en\": \"English name\", \"uz\": \"Fugiat nulla.\"}',5237160,'{\"en\": \"Vero ut impedit aut in et temporibus aperiam. Ducimus molestiae qui nemo. Dolorem ut recusandae beatae sit pariatur occaecati eveniet. Minus rerum quis assumenda ut corrupti. Molestiae qui rem et eligendi aut ea. Consequatur excepturi dolorem inventore est laboriosam et voluptatem. Non in natus sapiente molestiae doloremque cupiditate.\", \"uz\": \"Autem autem totam iusto ex. Nemo tempore et dignissimos tempore. Aperiam sunt voluptate quos veritatis et sed ratione. Perspiciatis nobis et libero deleniti qui. Aliquid doloribus voluptas voluptatibus. Consequatur voluptatibus asperiores consequatur nihil. Sit beatae officia et illum autem sed saepe.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(32,3,'{\"en\": \"English name\", \"uz\": \"Placeat inventore.\"}',1628718,'{\"en\": \"Et non placeat accusantium non expedita voluptas sed. Tenetur id sint in molestias. Aut esse aut ipsam est sunt eum rem sequi. Quia earum expedita est ut ut. Nihil quasi necessitatibus est. In nihil officia ut debitis et repudiandae.\", \"uz\": \"Molestiae occaecati iure unde fugit libero. Quisquam adipisci possimus optio. Consequuntur similique blanditiis ea non impedit illum. Nisi doloremque non voluptatum natus nesciunt repellendus modi. Sint voluptas eligendi omnis hic molestias est debitis.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(33,4,'{\"en\": \"English name\", \"uz\": \"Modi quam.\"}',5120247,'{\"en\": \"Nobis omnis officia quisquam et rerum voluptatibus aut qui. Temporibus minus fugit alias et error. Vel libero qui inventore dolore. Dolor et fugiat ut sed soluta enim. Et odio vero natus. Nisi esse consequatur totam. Eum accusantium quia vero quibusdam ea cum non voluptas.\", \"uz\": \"Porro ut itaque alias et perferendis voluptatem hic. Libero est est est ut animi ab sit adipisci. Itaque voluptatem quaerat iste eum consectetur doloremque. Nihil sed itaque fugit quia facilis placeat. Quia magni at qui laborum.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(34,3,'{\"en\": \"English name\", \"uz\": \"Perspiciatis voluptatibus.\"}',6942471,'{\"en\": \"Odio suscipit dignissimos sit at ipsam perferendis minima. Molestias et fugit aliquid. Earum reprehenderit expedita soluta qui et et explicabo. Quaerat qui sint dolor cum in placeat.\", \"uz\": \"Voluptatum placeat officiis quia. Numquam provident consequatur rerum necessitatibus occaecati. Deleniti est accusantium ut. Vero voluptatem unde quod quas omnis est ab odio.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(35,3,'{\"en\": \"English name\", \"uz\": \"In voluptatem atque.\"}',5247655,'{\"en\": \"Quis omnis laborum quidem nostrum. Provident est sapiente saepe recusandae quibusdam qui. Omnis voluptas ea neque itaque commodi qui quod iste. Aperiam et suscipit amet voluptates voluptatem. Repellat natus illo neque omnis rem occaecati. Dolores quos nostrum sunt dolor qui consequatur molestiae.\", \"uz\": \"Ea et sed modi et tempore nostrum sit. Voluptatem molestias rerum dolorem quia. Qui laboriosam excepturi eius provident sit. Reprehenderit ut sit at dolor aperiam. Provident dolorum quia impedit et. Et autem magni error.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(36,4,'{\"en\": \"English name\", \"uz\": \"Tempora beatae.\"}',3983827,'{\"en\": \"Numquam beatae molestias qui aperiam voluptatem quos. Voluptate laudantium id vero voluptatem sequi. Odit autem vitae possimus deleniti officia fuga. Quibusdam quod earum et dolorem architecto repellat.\", \"uz\": \"Rem pariatur nihil quos distinctio sequi illum in. Aut et harum maxime rerum. Impedit culpa culpa eos quia. Sint blanditiis quae inventore. Vitae sint in a ut maiores.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(37,3,'{\"en\": \"English name\", \"uz\": \"Id et assumenda.\"}',9255894,'{\"en\": \"Vel atque iste aut et ab ullam. Ipsum a repellendus voluptas. Ut eum illum dolore et. Porro possimus illo esse numquam dolores quae. Numquam dolor occaecati nisi.\", \"uz\": \"Ullam non quisquam sed laudantium blanditiis quae qui ducimus. Debitis id quasi eveniet amet fugit aspernatur. Incidunt cumque rem nostrum in in explicabo dolorem et. Et sed laboriosam autem rerum laborum. Beatae dolores blanditiis aut ut blanditiis. Placeat odio odit ullam ea. Quia exercitationem suscipit quidem sed officiis accusantium quis.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(38,3,'{\"en\": \"English name\", \"uz\": \"Ea quos.\"}',6712266,'{\"en\": \"Illo similique et non et ea. Totam maiores nihil aspernatur quis sit in debitis. Voluptatibus quia non odio suscipit praesentium eum aut quod. Aspernatur dolorem aperiam dignissimos dolorem voluptas tempora quia laboriosam. Animi consequatur tempore dolor omnis autem in dolorem sit.\", \"uz\": \"Distinctio esse velit incidunt corporis eos. Delectus rerum laudantium aspernatur nostrum consequatur quia consequatur. Iure commodi aliquam sit et qui reprehenderit qui. Aspernatur aut et cum et voluptas dolorum. Quis repellat porro ex quo ut labore. Ut non ea impedit vero rerum. Quae excepturi deserunt tempora modi.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(39,2,'{\"en\": \"English name\", \"uz\": \"Adipisci blanditiis laudantium.\"}',6762062,'{\"en\": \"Dicta est libero alias non occaecati voluptas molestiae. Modi dignissimos omnis repellat molestiae non porro atque. Omnis mollitia qui ex quaerat exercitationem occaecati. Delectus dicta qui id sunt inventore numquam velit consequatur. Et veniam autem ad voluptatem.\", \"uz\": \"Voluptas laboriosam in et. Ut rem repellendus quod sint. Eveniet sed modi ut cumque quia perferendis velit sequi. Sit quia enim totam omnis non laudantium. Consequuntur explicabo blanditiis est delectus ad.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(40,2,'{\"en\": \"English name\", \"uz\": \"Rerum aperiam.\"}',7731900,'{\"en\": \"Vel delectus quo autem et. Id et quos ipsa reiciendis aut. Nesciunt sed ipsum ut praesentium a animi. Sed expedita aperiam quia blanditiis rerum debitis distinctio odit.\", \"uz\": \"Pariatur quibusdam ut ut magni. Deleniti accusamus nulla est repellendus est optio. Exercitationem culpa qui molestiae doloremque amet saepe consequatur aut. Voluptatem quis consectetur praesentium nostrum harum. Debitis et vero aperiam accusantium dolorem est. Magnam aut eligendi minima praesentium aut vel. Laborum culpa eligendi et sint.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(41,1,'{\"en\": \"English name\", \"uz\": \"Eum ducimus quas.\"}',2407788,'{\"en\": \"Numquam consequuntur perspiciatis et nihil. Quidem rem est ut et aliquam. Cumque animi qui eligendi quidem. Aperiam maxime eum illo et. Omnis itaque dolorem facere esse voluptas deleniti.\", \"uz\": \"Odio consectetur qui et in. Id architecto dolores consequatur et praesentium ullam alias. Incidunt quia eligendi eum sint sunt a. Impedit repellat ut aut optio vel.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(42,3,'{\"en\": \"English name\", \"uz\": \"Et maiores.\"}',3452079,'{\"en\": \"Quia a voluptatem esse rerum eum sequi ut. Molestiae iure itaque accusantium earum magnam est consequuntur fugiat. Itaque enim sunt repellendus. Quidem vero rerum molestiae neque quis quibusdam. Et dolorum cupiditate ut cumque aut mollitia quas. Repellendus voluptatem necessitatibus voluptas est. Sapiente autem deserunt veritatis ut quae sapiente consequuntur.\", \"uz\": \"Vitae error adipisci dolore possimus ullam reiciendis. Velit quia ipsa dignissimos non facilis id quis. Et recusandae aperiam nobis minima et et eos. Deleniti quia eligendi sed eius architecto.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(43,4,'{\"en\": \"English name\", \"uz\": \"Qui ea.\"}',9920753,'{\"en\": \"Distinctio ut repellendus quas ipsum est nihil. Veniam omnis aut est explicabo sunt asperiores molestiae. Accusantium et soluta facere qui possimus in. Tempora aperiam optio quidem perspiciatis. Ducimus magnam ea molestias quibusdam voluptatem nulla.\", \"uz\": \"Neque est dolorum explicabo ut quasi quo eaque. Aut ratione reiciendis laboriosam nisi earum voluptatum. Cupiditate ullam corporis quo adipisci. Tempore quae est perferendis corrupti et. Est quo ipsam quae voluptatem provident nesciunt. Architecto minima officiis temporibus nostrum et tempora maxime.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(44,3,'{\"en\": \"English name\", \"uz\": \"Provident eos adipisci.\"}',9761648,'{\"en\": \"Sint explicabo sed ut nostrum laboriosam et illum. Debitis rerum omnis voluptatem ea et velit soluta voluptate. Aliquam et sequi aliquam nisi atque qui. Cum quo fugit molestiae rerum iure. Tenetur ipsam architecto dicta voluptatem. Qui rerum est assumenda dolorem placeat. Enim laborum sed quis ratione aut est.\", \"uz\": \"Debitis voluptate fugiat distinctio eum. Soluta temporibus ex molestiae voluptas ut eaque. Et repudiandae omnis et. Similique unde nihil a officia eos eos.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(45,4,'{\"en\": \"English name\", \"uz\": \"Vero nobis ratione.\"}',4988039,'{\"en\": \"Iusto consequatur non a est beatae id nostrum. Quod aut quibusdam velit. Autem quasi odio enim sit placeat perspiciatis. Dolorem dolor eum est omnis aut. Et ut vel eum quidem. Dignissimos cum consequatur voluptas. Ratione ut accusantium unde modi nihil.\", \"uz\": \"Assumenda nisi velit id nulla est inventore qui. Non et eligendi harum qui et totam ullam fugit. Doloribus quae aperiam atque vitae. Nisi nemo quos aut nihil. Quam sapiente ut sequi repellendus. Optio dolorem aspernatur enim tenetur accusamus eos.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(46,3,'{\"en\": \"English name\", \"uz\": \"Et placeat.\"}',6592295,'{\"en\": \"Et voluptas sed quis impedit. Consequuntur quo ut quas quis amet sunt. Impedit dolores eligendi quas recusandae vitae. Consequatur dolores ut recusandae ea magni voluptatem. Eum placeat et ratione quasi enim nostrum quia.\", \"uz\": \"Est sit libero iusto et quia ut. Ea voluptas est libero rerum quidem distinctio. Officiis labore vitae eos libero excepturi eaque. Voluptatem molestiae ut pariatur occaecati maxime iusto culpa molestiae. Et neque fugit ut eius molestiae laborum voluptatum. Itaque explicabo quo dolorem placeat iusto.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(47,4,'{\"en\": \"English name\", \"uz\": \"Rerum sed.\"}',6219863,'{\"en\": \"Modi at et eaque qui expedita. Reiciendis doloribus recusandae neque maxime magnam dolores. Voluptatem ut laudantium sit sint et. Corporis officia ex numquam odio ullam ducimus dolores. Libero omnis asperiores et sunt id. Et nam eaque laudantium.\", \"uz\": \"Commodi perferendis illo aut nihil repudiandae. Libero est minus rem fugit quo. Velit doloremque quia assumenda rerum excepturi cupiditate. Ex dicta vel qui iure error maxime architecto.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(48,3,'{\"en\": \"English name\", \"uz\": \"Adipisci molestiae error.\"}',4948046,'{\"en\": \"Dolore pariatur molestias qui ut quis nam corporis. Exercitationem voluptas atque et. Dolorum corrupti beatae neque. Veniam ut aut omnis ipsa ipsam explicabo vel. Dolorem quo voluptas aperiam deleniti. Quibusdam corporis accusamus eligendi.\", \"uz\": \"Dignissimos facere esse expedita asperiores ut. Vel nihil qui cum sequi. Iure aliquam minus enim et ipsam consequuntur et. Voluptas nobis nulla velit repellendus culpa et delectus voluptate. Deleniti voluptas blanditiis eius.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(49,2,'{\"en\": \"English name\", \"uz\": \"Sunt quia cum.\"}',6466261,'{\"en\": \"Voluptate totam perferendis aut. Est et praesentium deleniti saepe non. Dolorem ratione quis distinctio illo excepturi consequatur. Laboriosam consequatur nihil architecto odio illo dolore voluptate. Ab explicabo eum quia rerum laborum autem id eveniet. Voluptatem magnam facilis aspernatur quae alias est. Unde ut voluptate accusamus nobis dicta.\", \"uz\": \"Quas esse omnis aut voluptatibus. Est nihil recusandae ut et et quo itaque. Accusantium similique necessitatibus repellendus aut sed. Voluptatem quia tenetur doloremque exercitationem tenetur. Adipisci voluptatem fuga molestiae. Sed aut quo dolor amet ex consequuntur harum.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(50,3,'{\"en\": \"English name\", \"uz\": \"Occaecati ipsam modi.\"}',1647543,'{\"en\": \"Blanditiis omnis eos quas quia et et. Debitis eos et earum vel numquam veritatis. Sequi et enim qui doloribus ut. Ducimus distinctio molestias inventore iusto deserunt necessitatibus sit. Atque aut dicta ab ea. Dolorem consequatur voluptates placeat. Molestias molestiae vitae exercitationem ab.\", \"uz\": \"Maiores inventore error ratione similique. Sequi magnam assumenda pariatur sunt. Optio quasi harum voluptates est est culpa inventore non. Omnis qui et adipisci nihil modi voluptatem.\"}','2024-01-25 23:52:04','2024-01-25 23:52:04');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,1,NULL,NULL),(2,2,2,NULL,NULL),(3,3,3,NULL,NULL),(4,2,4,NULL,NULL),(5,2,5,NULL,NULL),(6,2,6,NULL,NULL),(7,2,7,NULL,NULL),(8,2,8,NULL,NULL),(9,2,9,NULL,NULL),(10,2,10,NULL,NULL),(11,2,11,NULL,NULL),(12,2,12,NULL,NULL),(13,2,13,NULL,NULL);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','2024-01-25 23:52:01','2024-01-25 23:52:01'),(2,'customer','2024-01-25 23:52:01','2024-01-25 23:52:01'),(3,'shop_manager','2024-01-25 23:52:01','2024-01-25 23:52:01');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `attributes` json DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stocks_product_id_foreign` (`product_id`),
  CONSTRAINT `stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,1,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',61,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(2,2,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',16,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(3,3,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 3, \"attribute_id\": 2}]',63,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(4,4,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',88,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(5,5,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',77,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(6,6,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',22,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(7,7,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',57,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(8,8,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',30,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(9,9,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',72,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(10,10,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',67,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(11,11,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',51,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(12,12,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',76,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(13,13,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',63,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(14,14,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',73,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(15,15,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',83,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(16,16,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',19,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(17,17,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',22,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(18,18,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',28,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(19,19,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',98,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(20,20,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',77,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(21,21,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',50,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(22,22,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',73,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(23,23,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',36,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(24,24,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',17,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(25,25,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',85,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(26,26,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',99,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(27,27,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',50,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(28,28,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',50,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(29,29,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',55,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(30,30,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',18,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(31,31,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',80,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(32,32,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',29,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(33,33,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',58,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(34,34,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',56,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(35,35,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',82,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(36,36,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',2,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(37,37,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',40,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(38,38,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',23,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(39,39,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',93,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(40,40,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',59,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(41,41,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',2,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(42,42,'[{\"value_id\": 2, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',79,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(43,43,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',97,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(44,44,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',26,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(45,45,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',2,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(46,46,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',98,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(47,47,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',89,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(48,48,'[{\"value_id\": 1, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',79,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(49,49,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 4, \"attribute_id\": 2}]',28,'2024-01-25 23:52:04','2024-01-25 23:52:04'),(50,50,'[{\"value_id\": 3, \"attribute_id\": 1}, {\"value_id\": 5, \"attribute_id\": 2}]',4,'2024-01-25 23:52:04','2024-01-25 23:52:04');
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','Adminlast','admin@mail.ru','+998979260757',NULL,'$2y$12$P0cGM3pXagnGhDMLJeJlvean2489L.h92nJGdtqyvEJCRB1S3WzsC',NULL,'2024-01-25 23:52:02','2024-01-25 23:52:02'),(2,'Customer','Customer','customer@mail.ru','+998979260745',NULL,'$2y$12$t2mgR.RsRia7hvQ1DIkS.elQLuXapJeIKSHj1QyC.K7FIGpiEkAxG',NULL,'2024-01-25 23:52:02','2024-01-25 23:52:02'),(3,'Shopmanager','Shopmanager','shopmanager@mail.ru','+998979260459',NULL,'$2y$12$.P5U.UjIVOjWPygL7dV07.8W1U2EekC/azmkk57aSMeugLhaCT5Ii',NULL,'2024-01-25 23:52:03','2024-01-25 23:52:03'),(4,'Grayson Bergstrom','Hadley Fay','ebony.marvin@example.net','+1.743.276.1254','2024-01-25 23:52:03','$2y$12$0VmWDUl0G/P16ttVbKOGjOI7rolvlg3ifxIXBNkUDi6Ucoqr70ua2','6gjLRCwTBt','2024-01-25 23:52:04','2024-01-25 23:52:04'),(5,'Hulda Greenholt II','Shany Reilly','bechtelar.brianne@example.org','+1 (715) 686-5368','2024-01-25 23:52:04','$2y$12$0VmWDUl0G/P16ttVbKOGjOI7rolvlg3ifxIXBNkUDi6Ucoqr70ua2','Wt1jpSAhai','2024-01-25 23:52:04','2024-01-25 23:52:04'),(6,'Izabella Auer Sr.','Dr. Liam Halvorson','harmony.harvey@example.net','+1-678-738-1892','2024-01-25 23:52:04','$2y$12$0VmWDUl0G/P16ttVbKOGjOI7rolvlg3ifxIXBNkUDi6Ucoqr70ua2','JETMyX4LJW','2024-01-25 23:52:04','2024-01-25 23:52:04'),(7,'Leon Wisozk','Phyllis Lockman','beier.domenic@example.com','1-281-412-8497','2024-01-25 23:52:04','$2y$12$0VmWDUl0G/P16ttVbKOGjOI7rolvlg3ifxIXBNkUDi6Ucoqr70ua2','5Ay4ODItm2','2024-01-25 23:52:04','2024-01-25 23:52:04'),(8,'Murl Koepp','Stuart Walsh','sonya06@example.com','951-950-2027','2024-01-25 23:52:04','$2y$12$0VmWDUl0G/P16ttVbKOGjOI7rolvlg3ifxIXBNkUDi6Ucoqr70ua2','87nNKjG4n7','2024-01-25 23:52:04','2024-01-25 23:52:04'),(9,'Dr. Kenyatta Strosin MD','Dr. Evert Ondricka','bartoletti.emiliano@example.org','1-786-259-9810','2024-01-25 23:52:04','$2y$12$0VmWDUl0G/P16ttVbKOGjOI7rolvlg3ifxIXBNkUDi6Ucoqr70ua2','NaFWZdukZB','2024-01-25 23:52:04','2024-01-25 23:52:04'),(10,'Mr. Jaime Carter','Rashawn Mayer','zieme.emie@example.net','1-303-325-3599','2024-01-25 23:52:04','$2y$12$0VmWDUl0G/P16ttVbKOGjOI7rolvlg3ifxIXBNkUDi6Ucoqr70ua2','JDGkru8Qn8','2024-01-25 23:52:04','2024-01-25 23:52:04'),(11,'Forrest Reinger II','Monica Crist','eheidenreich@example.net','445-345-7648','2024-01-25 23:52:04','$2y$12$0VmWDUl0G/P16ttVbKOGjOI7rolvlg3ifxIXBNkUDi6Ucoqr70ua2','y8NAqUhXuH','2024-01-25 23:52:04','2024-01-25 23:52:04'),(12,'Ms. Francisca Simonis','Carmine Moore','bbahringer@example.com','920-487-4388','2024-01-25 23:52:04','$2y$12$0VmWDUl0G/P16ttVbKOGjOI7rolvlg3ifxIXBNkUDi6Ucoqr70ua2','d34LKTFrWP','2024-01-25 23:52:04','2024-01-25 23:52:04'),(13,'Jarret Brown','Maggie Willms III','vada.renner@example.com','903-414-0144','2024-01-25 23:52:04','$2y$12$0VmWDUl0G/P16ttVbKOGjOI7rolvlg3ifxIXBNkUDi6Ucoqr70ua2','FUC9ayKtm9','2024-01-25 23:52:04','2024-01-25 23:52:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `values`
--

DROP TABLE IF EXISTS `values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `values_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `values`
--

LOCK TABLES `values` WRITE;
/*!40000 ALTER TABLE `values` DISABLE KEYS */;
INSERT INTO `values` VALUES (1,1,'{\"uz\":\"Qizil\",\"en\":\"Red\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(2,1,'{\"uz\":\"Yashil\",\"en\":\"Green\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(3,2,'{\"uz\":\"o`rta \",\"en\":\"medium\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(4,2,'{\"uz\":\"3x\",\"en\":\"3x\"}','2024-01-25 23:52:04','2024-01-25 23:52:04'),(5,3,'{\"uz\":\"Plastik\",\"en\":\"Plastic\"}','2024-01-25 23:52:04','2024-01-25 23:52:04');
/*!40000 ALTER TABLE `values` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-28 11:19:43
