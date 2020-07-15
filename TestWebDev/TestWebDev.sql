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
INSERT INTO `actors` VALUES (1,'2020-07-15 09:08:14','2020-07-15 09:08:14','Robert','De Niro','Robert-De Niro','storage\\uploads\\798b55df-Robert_De_Niro_Cannes_2016.jpg','Robert Anthony De Niro, couramment appel├® Robert De Niro (prononc├® en anglais : /╦ê╔╣╔æb╔Ö╔╣t d╔Ö ╦ên╔¬╔Ö╔╣o╩è/1) est un acteur, r├®alisateur et producteur de cin├®ma am├®ricain naturalis├® italien, n├® le 17 ao├╗t 1943 ├á New York dans l\'arrondissement de Manhattan.\r\n\r\nIl commence sa carri├¿re dans les ann├®es 1960 en collaborant avec des r├®alisateurs de renom, tels Brian De Palma et Martin Scorsese. De Niro compte une riche filmographie incluant de grands succ├¿s internationaux, notamment Taxi Driver (1976), 1900 (1976), Voyage au bout de l\'enfer (1978), Raging Bull (1980), La Valse des pantins (1983), Il ├®tait une fois en Am├®rique (1984), Brazil (1985), Mission (1986), Angel Heart (1987), Les Incorruptibles (1987), Midnight Run (1988), Les Affranchis (1990), L\'├ëveil (1990), Les Nerfs ├á vif (1991), La Liste noire (1991), Backdraft (1991), Hollywood Mistress (1992), Il ├®tait une fois le Bronx (1993), Blessures secr├¿tes (1993), Frankenstein (1994), Heat (1995), Casino (1995), Sleepers (1996), Le Fan (1996), Simples Secrets (1996), Jackie Brown (1997), Des hommes d\'influence (1997), Copland (1997), Ronin (1998), Mafia Blues (1999), The Score (2001), Raisons d\'├ëtat (2006), Limitless (2011), Happiness Therapy (2012), Joker (2019) et The Irishman (2019), avec certains films devenus ┬½ culte ┬╗.\r\n\r\nDe Niro remporte de nombreuses r├®compenses au cours de sa carri├¿re, notamment l\'Oscar du meilleur acteur pour son r├┤le de Jake LaMotta dans un drame biographique, Raging Bull (1981), l\'Oscar du meilleur acteur dans un second r├┤le pour son interpr├®tation de Vito Corleone dans Le Parrain 2 (1975), ainsi que deux Golden Globes. Depuis 1992, il participe occasionnellement au Saturday Night Live, jouant r├®cemment le procureur Robert Mueller. D\'origine italienne par son p├¿re, il devient citoyen italien en 20062,3.'),(2,'2020-07-15 09:09:47','2020-07-15 09:09:47','Leonardo','Dicaprio','Leonardo-Dicaprio','storage\\uploads\\dd7c3de3-Leonardo_Dicaprio_Cannes_2019.jpg','Leonardo DiCaprio [╦êli╦Éo╩èn╔Üdo╩è d╔¬╦êk├ªprio╩è]1, n├® le 11 novembre 1974 ├á Los Angeles, est un acteur, sc├®nariste et producteur de cin├®ma am├®ricain.\r\n\r\nGrandissant dans les quartiers populaires de Los Angeles tels que Los Feliz puis Hollywood, le jeune Leonardo DiCaprio prend comme mod├¿le le fils de sa belle-m├¿re Peggy Ann Saunders, Adam Farrar, qui commence d├¿s l\'enfance une carri├¿re d\'acteur. Il d├®cide alors de se lancer lui aussi, encourag├® par ses parents. Il montre rapidement un talent ├®vident pour la com├®die et se voit proposer des r├┤les ├á la t├®l├®vision, puis au cin├®ma. Apr├¿s avoir ├®t├® choisi parmi de tr├¿s nombreux candidats pour jouer face ├á son acteur pr├®f├®r├® Robert De Niro dans Blessures secr├¿tes en 1993, il se fait particuli├¿rement remarquer la m├¬me ann├®e gr├óce ├á son film suivant, Gilbert Grape, o├╣ il incarne face ├á Johnny Depp un jeune gar├ºon d├®ficient intellectuel, r├┤le pour lequel il est nomm├® ├á l\'Oscar du meilleur acteur dans un second r├┤le ├á l\'├óge de 19 ans.\r\n\r\nApr├¿s plusieurs films dans le circuit ind├®pendant, Leonardo DiCaprio est d├®couvert en 1996 par le grand public dans l\'adaptation moderne et rock dÔÇÖune pi├¿ce de Shakespeare : Rom├®o + Juliette. Un an plus tard, il devient une star plan├®taire en incarnant le h├®ros romantique Jack Dawson dans Titanic, un des plus gros succ├¿s de l\'histoire du cin├®ma et l\'un des films les plus oscaris├®s avec 11 statuettes. Sa carri├¿re prend alors un nouveau tournant dans les ann├®es 2000, durant lesquelles il travaille pour les plus grands r├®alisateurs et devient le nouvel acteur f├®tiche de Martin Scorsese - comme a pu l\'├¬tre Robert De Niro dans les ann├®es 1970-1990 - ├á l\'affiche de cinq de ses films : Gangs of New York, Aviator, Les Infiltr├®s, Shutter Island et Le Loup de Wall Street. Il remporte de nombreuses r├®compenses tout au long de sa carri├¿re pour des films tels que Aviator, Blood Diamond, Arr├¬te-moi si tu peux, J Edgar, Django Unchained ou encore Le Loup de Wall Street. Mais ce n\'est qu\'en f├®vrier 2016, qu\'il remporte pour la premi├¿re fois l\'Oscar du meilleur acteur, pour son interpr├®tation de Hugh Glass dans The Revenant.\r\n\r\nParall├¿lement ├á ses m├®tiers dans le cin├®ma, Leonardo DiCaprio est ├®galement connu pour son fort engagement en faveur de l\'├®cologie avec sa ┬½ Fondation Leonardo DiCaprio ┬╗. Il a li├® ses deux activit├®s en ├®crivant et produisant le film documentaire La Onzi├¿me heure, le dernier virage, sur le th├¿me du r├®chauffement climatique.'),(3,'2020-07-15 09:12:20','2020-07-15 09:12:20','Morgan','Freeman','Morgan-Freeman','storage\\uploads\\0f6d6ccf-Morgan_Freeman_Deauville_2018.jpg','Morgan Freeman (prononc├® en anglais : [╦êm╔ö╔╣╔í╔Ön ╦êf╔╣im╔Ön]1) est un acteur, r├®alisateur et producteur de cin├®ma am├®ricain, n├® le 1er juin 1937 ├á Memphis (Tennessee).\r\n\r\nIl commence sa carri├¿re th├®├ótrale et cin├®matographique en 1964, tenant essentiellement des seconds r├┤les pendant plus de vingt ans. Il gagne une premi├¿re nomination aux Oscars du cin├®ma pour La Rue en 1987, dans la cat├®gorie du meilleur acteur dans un second r├┤le, puis acquiert une large reconnaissance internationale gr├óce ├á Miss Daisy et son chauffeur (1989) et Les ├ëvad├®s (1994), deux films qui lui valent chacun une nomination ├á l\'Oscar du meilleur acteur. Freeman re├ºoit l\'Oscar du meilleur acteur dans un second r├┤le pour Million Dollar Baby en 2004, ainsi qu\'une nouvelle nomination ├á l\'Oscar du meilleur acteur en 2009, pour Invictus.\r\n\r\nIl prend part au fil de sa carri├¿re ├á de nombreuses grosses productions ├á succ├¿s, notamment Glory (1989), Robin des Bois, prince des voleurs (1991), Seven (1995), Deep Impact (1998), La somme de toutes les peurs (2002), Red (2010) et Insaisissables (2013). Il participe ├®galement ├á la trilogie The Dark Knight de Christopher Nolan, dont les films sortent en 2005, 2008 et 2012, dans laquelle il interpr├¿te Lucius Fox. Le long-m├®trage Bopha ! (1993), avec Danny Glover et Malcolm McDowell ├á la distribution, marque les d├®buts de Freeman ├á la r├®alisation. Il est aujourd\'hui l\'un des acteurs les plus populaires de sa g├®n├®ration, apparaissant dans des films qui rapportent un total de plus de 4,5 milliards de dollars au box-office mondial.');
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

-- Dump completed on 2020-07-15 13:57:30
