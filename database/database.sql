-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: skience
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Current Database: `skience`
--

/*!40000 DROP DATABASE IF EXISTS `skience`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `skience` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `skience`;

--
-- Temporary view structure for view `ages_view`
--

DROP TABLE IF EXISTS `ages_view`;
/*!50001 DROP VIEW IF EXISTS `ages_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ages_view` AS SELECT 
 1 AS `Edades`,
 1 AS `Cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gender_subject`
--

DROP TABLE IF EXISTS `gender_subject`;
/*!50001 DROP VIEW IF EXISTS `gender_subject`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gender_subject` AS SELECT 
 1 AS `Género`,
 1 AS `Biología`,
 1 AS `Química`,
 1 AS `Física`,
 1 AS `Ingeniería`,
 1 AS `Tecnología`,
 1 AS `Matemáticas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gender_view`
--

DROP TABLE IF EXISTS `gender_view`;
/*!50001 DROP VIEW IF EXISTS `gender_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gender_view` AS SELECT 
 1 AS `gender`,
 1 AS `count(gender)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schoollevel_subject`
--

DROP TABLE IF EXISTS `schoollevel_subject`;
/*!50001 DROP VIEW IF EXISTS `schoollevel_subject`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schoollevel_subject` AS SELECT 
 1 AS `schoolLevel`,
 1 AS `Biología`,
 1 AS `Química`,
 1 AS `Física`,
 1 AS `Ingeniería`,
 1 AS `Tecnología`,
 1 AS `Matemáticas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schoollevel_view`
--

DROP TABLE IF EXISTS `schoollevel_view`;
/*!50001 DROP VIEW IF EXISTS `schoollevel_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schoollevel_view` AS SELECT 
 1 AS `schoolLevel`,
 1 AS `count(schoolLevel)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `subjectinterest`
--

DROP TABLE IF EXISTS `subjectinterest`;
/*!50001 DROP VIEW IF EXISTS `subjectinterest`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `subjectinterest` AS SELECT 
 1 AS `Área STEM`,
 1 AS `Interés`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `alias` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `schoolLevel` varchar(30) DEFAULT NULL,
  `biology` int DEFAULT NULL,
  `chemistry` int DEFAULT NULL,
  `physics` int DEFAULT NULL,
  `engineering` int DEFAULT NULL,
  `tech` int DEFAULT NULL,
  `math` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `skience`
--

USE `skience`;

--
-- Final view structure for view `ages_view`
--

/*!50001 DROP VIEW IF EXISTS `ages_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ages_view` AS select '0-5' AS `Edades`,count(0) AS `Cantidad` from `users` where (`users`.`age` between 0 and 5) union select '6-10' AS `6-10`,count(0) AS `count(*)` from `users` where (`users`.`age` between 6 and 10) union select '11-15' AS `11-15`,count(0) AS `count(*)` from `users` where (`users`.`age` between 11 and 15) union select '16-20' AS `16-20`,count(0) AS `count(*)` from `users` where (`users`.`age` between 16 and 20) union select '21+' AS `20+`,count(0) AS `count(*)` from `users` where (`users`.`age` > 20) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gender_subject`
--

/*!50001 DROP VIEW IF EXISTS `gender_subject`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gender_subject` AS select 'Otro' AS `Género`,sum(`users`.`biology`) AS `Biología`,sum(`users`.`chemistry`) AS `Química`,sum(`users`.`physics`) AS `Física`,sum(`users`.`engineering`) AS `Ingeniería`,sum(`users`.`tech`) AS `Tecnología`,sum(`users`.`math`) AS `Matemáticas` from `users` where (`users`.`gender` = 'Otro') union select 'Femenino' AS `Femenino`,sum(`users`.`biology`) AS `sum(biology)`,sum(`users`.`chemistry`) AS `sum(chemistry)`,sum(`users`.`physics`) AS `sum(physics)`,sum(`users`.`engineering`) AS `sum(engineering)`,sum(`users`.`tech`) AS `sum(tech)`,sum(`users`.`math`) AS `sum(math)` from `users` where (`users`.`gender` = 'Femenino') union select 'Masculino' AS `Masculino`,sum(`users`.`biology`) AS `sum(biology)`,sum(`users`.`chemistry`) AS `sum(chemistry)`,sum(`users`.`physics`) AS `sum(physics)`,sum(`users`.`engineering`) AS `sum(engineering)`,sum(`users`.`tech`) AS `sum(tech)`,sum(`users`.`math`) AS `sum(math)` from `users` where (`users`.`gender` = 'Masculino') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gender_view`
--

/*!50001 DROP VIEW IF EXISTS `gender_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gender_view` AS select `users`.`gender` AS `gender`,count(`users`.`gender`) AS `count(gender)` from `users` group by `users`.`gender` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schoollevel_subject`
--

/*!50001 DROP VIEW IF EXISTS `schoollevel_subject`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schoollevel_subject` AS select `users`.`schoolLevel` AS `schoolLevel`,sum(`users`.`biology`) AS `Biología`,sum(`users`.`chemistry`) AS `Química`,sum(`users`.`physics`) AS `Física`,sum(`users`.`engineering`) AS `Ingeniería`,sum(`users`.`tech`) AS `Tecnología`,sum(`users`.`math`) AS `Matemáticas` from `users` group by `users`.`schoolLevel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schoollevel_view`
--

/*!50001 DROP VIEW IF EXISTS `schoollevel_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schoollevel_view` AS select `users`.`schoolLevel` AS `schoolLevel`,count(`users`.`schoolLevel`) AS `count(schoolLevel)` from `users` group by `users`.`schoolLevel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `subjectinterest`
--

/*!50001 DROP VIEW IF EXISTS `subjectinterest`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subjectinterest` AS select 'Biología' AS `Área STEM`,sum(`users`.`biology`) AS `Interés` from `users` union select 'Química' AS `Química`,sum(`users`.`chemistry`) AS `sum(chemistry)` from `users` union select 'Física' AS `Física`,sum(`users`.`physics`) AS `sum(physics)` from `users` union select 'Ingeniería' AS `Ingeniería`,sum(`users`.`engineering`) AS `sum(engineering)` from `users` union select 'Tecnología' AS `Tecnología`,sum(`users`.`tech`) AS `sum(tech)` from `users` union select 'Matemáticas' AS `Matemáticas`,sum(`users`.`math`) AS `sum(math)` from `users` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-15  0:13:13
