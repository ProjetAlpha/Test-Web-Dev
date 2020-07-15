-- MariaDB dump 10.17  Distrib 10.5.4-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: TestWebDev
-- ------------------------------------------------------
-- Server version	10.5.4-MariaDB

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


DROP DATABASE IF EXISTS `TestWebDev`;
CREATE DATABASE `TestWebDev`;
USE `TestWebDev`;

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'2020-07-15 09:08:14','2020-07-15 09:08:14','Robert','De Niro','Robert-De Niro','storage\\uploads\\798b55df-Robert_De_Niro_Cannes_2016.jpg','Robert Anthony De Niro, couramment appelé Robert De Niro (prononcé en anglais : /ˈɹɑbəɹt də ˈnɪəɹoʊ/1) est un acteur, réalisateur et producteur de cinéma américain naturalisé italien, né le 17 août 1943 à New York dans l\'arrondissement de Manhattan.\r\n\r\nIl commence sa carrière dans les années 1960 en collaborant avec des réalisateurs de renom, tels Brian De Palma et Martin Scorsese. De Niro compte une riche filmographie incluant de grands succès internationaux, notamment Taxi Driver (1976), 1900 (1976), Voyage au bout de l\'enfer (1978), Raging Bull (1980), La Valse des pantins (1983), Il était une fois en Amérique (1984), Brazil (1985), Mission (1986), Angel Heart (1987), Les Incorruptibles (1987), Midnight Run (1988), Les Affranchis (1990), L\'Éveil (1990), Les Nerfs à vif (1991), La Liste noire (1991), Backdraft (1991), Hollywood Mistress (1992), Il était une fois le Bronx (1993), Blessures secrètes (1993), Frankenstein (1994), Heat (1995), Casino (1995), Sleepers (1996), Le Fan (1996), Simples Secrets (1996), Jackie Brown (1997), Des hommes d\'influence (1997), Copland (1997), Ronin (1998), Mafia Blues (1999), The Score (2001), Raisons d\'État (2006), Limitless (2011), Happiness Therapy (2012), Joker (2019) et The Irishman (2019), avec certains films devenus « culte ».\r\n\r\nDe Niro remporte de nombreuses récompenses au cours de sa carrière, notamment l\'Oscar du meilleur acteur pour son rôle de Jake LaMotta dans un drame biographique, Raging Bull (1981), l\'Oscar du meilleur acteur dans un second rôle pour son interprétation de Vito Corleone dans Le Parrain 2 (1975), ainsi que deux Golden Globes. Depuis 1992, il participe occasionnellement au Saturday Night Live, jouant récemment le procureur Robert Mueller. D\'origine italienne par son père, il devient citoyen italien en 20062,3.'),(2,'2020-07-15 09:09:47','2020-07-15 09:09:47','Leonardo','Dicaprio','Leonardo-Dicaprio','storage\\uploads\\dd7c3de3-Leonardo_Dicaprio_Cannes_2019.jpg','Leonardo DiCaprio [ˈliːoʊnɚdoʊ dɪˈkæprioʊ]1, né le 11 novembre 1974 à Los Angeles, est un acteur, scénariste et producteur de cinéma américain.\r\n\r\nGrandissant dans les quartiers populaires de Los Angeles tels que Los Feliz puis Hollywood, le jeune Leonardo DiCaprio prend comme modèle le fils de sa belle-mère Peggy Ann Saunders, Adam Farrar, qui commence dès l\'enfance une carrière d\'acteur. Il décide alors de se lancer lui aussi, encouragé par ses parents. Il montre rapidement un talent évident pour la comédie et se voit proposer des rôles à la télévision, puis au cinéma. Après avoir été choisi parmi de très nombreux candidats pour jouer face à son acteur préféré Robert De Niro dans Blessures secrètes en 1993, il se fait particulièrement remarquer la même année grâce à son film suivant, Gilbert Grape, où il incarne face à Johnny Depp un jeune garçon déficient intellectuel, rôle pour lequel il est nommé à l\'Oscar du meilleur acteur dans un second rôle à l\'âge de 19 ans.\r\n\r\nAprès plusieurs films dans le circuit indépendant, Leonardo DiCaprio est découvert en 1996 par le grand public dans l\'adaptation moderne et rock d’une pièce de Shakespeare : Roméo + Juliette. Un an plus tard, il devient une star planétaire en incarnant le héros romantique Jack Dawson dans Titanic, un des plus gros succès de l\'histoire du cinéma et l\'un des films les plus oscarisés avec 11 statuettes. Sa carrière prend alors un nouveau tournant dans les années 2000, durant lesquelles il travaille pour les plus grands réalisateurs et devient le nouvel acteur fétiche de Martin Scorsese - comme a pu l\'être Robert De Niro dans les années 1970-1990 - à l\'affiche de cinq de ses films : Gangs of New York, Aviator, Les Infiltrés, Shutter Island et Le Loup de Wall Street. Il remporte de nombreuses récompenses tout au long de sa carrière pour des films tels que Aviator, Blood Diamond, Arrête-moi si tu peux, J Edgar, Django Unchained ou encore Le Loup de Wall Street. Mais ce n\'est qu\'en février 2016, qu\'il remporte pour la première fois l\'Oscar du meilleur acteur, pour son interprétation de Hugh Glass dans The Revenant.\r\n\r\nParallèlement à ses métiers dans le cinéma, Leonardo DiCaprio est également connu pour son fort engagement en faveur de l\'écologie avec sa « Fondation Leonardo DiCaprio ». Il a lié ses deux activités en écrivant et produisant le film documentaire La Onzième heure, le dernier virage, sur le thème du réchauffement climatique.'),(3,'2020-07-15 09:12:20','2020-07-15 09:12:20','Morgan','Freeman','Morgan-Freeman','storage\\uploads\\0f6d6ccf-Morgan_Freeman_Deauville_2018.jpg','Morgan Freeman (prononcé en anglais : [ˈmɔɹɡən ˈfɹimən]1) est un acteur, réalisateur et producteur de cinéma américain, né le 1er juin 1937 à Memphis (Tennessee).\r\n\r\nIl commence sa carrière théâtrale et cinématographique en 1964, tenant essentiellement des seconds rôles pendant plus de vingt ans. Il gagne une première nomination aux Oscars du cinéma pour La Rue en 1987, dans la catégorie du meilleur acteur dans un second rôle, puis acquiert une large reconnaissance internationale grâce à Miss Daisy et son chauffeur (1989) et Les Évadés (1994), deux films qui lui valent chacun une nomination à l\'Oscar du meilleur acteur. Freeman reçoit l\'Oscar du meilleur acteur dans un second rôle pour Million Dollar Baby en 2004, ainsi qu\'une nouvelle nomination à l\'Oscar du meilleur acteur en 2009, pour Invictus.\r\n\r\nIl prend part au fil de sa carrière à de nombreuses grosses productions à succès, notamment Glory (1989), Robin des Bois, prince des voleurs (1991), Seven (1995), Deep Impact (1998), La somme de toutes les peurs (2002), Red (2010) et Insaisissables (2013). Il participe également à la trilogie The Dark Knight de Christopher Nolan, dont les films sortent en 2005, 2008 et 2012, dans laquelle il interprète Lucius Fox. Le long-métrage Bopha ! (1993), avec Danny Glover et Malcolm McDowell à la distribution, marque les débuts de Freeman à la réalisation. Il est aujourd\'hui l\'un des acteurs les plus populaires de sa génération, apparaissant dans des films qui rapportent un total de plus de 4,5 milliards de dollars au box-office mondial.');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (13,'2014_10_12_000000_create_users_table',1),(14,'2014_10_12_100000_create_password_resets_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2020_07_14_090924_create_actors_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
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
INSERT INTO `users` VALUES (1,'test','test@gmail.com',NULL,'$2y$10$ZaiiqcM95PR5rps0Gkt2uO6GUTPHvoahiiSYZMkjLICMd4IDSmFnu',NULL,'admin','2020-07-15 09:05:41','2020-07-15 09:05:41');
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

-- Dump completed on 2020-07-15 15:51:02
