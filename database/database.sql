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
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `Femenino` int DEFAULT NULL,
  `Masculino` int DEFAULT NULL,
  `Otro` int DEFAULT NULL,
  KEY `fk_gen_f_idx` (`Femenino`),
  KEY `fk_gen_m_idx` (`Masculino`),
  KEY `fk_gen_o_idx` (`Otro`),
  CONSTRAINT `fk_gen_f` FOREIGN KEY (`Femenino`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_gen_m` FOREIGN KEY (`Masculino`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_gen_o` FOREIGN KEY (`Otro`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `schoolLevel`
--

DROP TABLE IF EXISTS `schoolLevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schoolLevel` (
  `Preescolar` int DEFAULT NULL,
  `Primaria` int DEFAULT NULL,
  `Secundaria` int DEFAULT NULL,
  `Preparatoria` int DEFAULT NULL,
  `Actualmente no estudio` int DEFAULT NULL,
  `Otro` int DEFAULT NULL,
  KEY `fk_sl_pre_idx` (`Preescolar`),
  KEY `fk_pri_idx` (`Primaria`),
  KEY `fk_sec_idx` (`Secundaria`),
  KEY `fk_prepa_idx` (`Preparatoria`),
  KEY `fk_uni_idx` (`Actualmente no estudio`),
  KEY `fk_other_idx` (`Otro`),
  CONSTRAINT `fk_other` FOREIGN KEY (`Otro`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_prepa` FOREIGN KEY (`Preparatoria`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pri` FOREIGN KEY (`Primaria`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sec` FOREIGN KEY (`Secundaria`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sl_pre` FOREIGN KEY (`Preescolar`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_uni` FOREIGN KEY (`Actualmente no estudio`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Temporary view structure for view `state_gender`
--

DROP TABLE IF EXISTS `state_gender`;
/*!50001 DROP VIEW IF EXISTS `state_gender`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `state_gender` AS SELECT 
 1 AS `state`,
 1 AS `Masculino`,
 1 AS `Femenino`,
 1 AS `Otro`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `state_schoollevel`
--

DROP TABLE IF EXISTS `state_schoollevel`;
/*!50001 DROP VIEW IF EXISTS `state_schoollevel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `state_schoollevel` AS SELECT 
 1 AS `state`,
 1 AS `Primaria`,
 1 AS `Secundaria`,
 1 AS `Preparatoria`,
 1 AS `Actualmente no estudio`,
 1 AS `Otro`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addGender` AFTER INSERT ON `users` FOR EACH ROW begin
			case new.gender
				when 'Masculino' then
					insert into gender(Masculino) values(new.userID);
				when 'Femenino' then
					insert into gender(Femenino) values(new.userID);
				when 'Otro' then
					insert into gender(Otro) values(new.userID);
			end case;
        end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `addSchoolLevel` AFTER INSERT ON `users` FOR EACH ROW begin
			case new.schoolLevel
				when 'Primaria' then
					insert into schoolLevel(Primaria) values(new.userID);
				when 'Secundaria' then
					insert into schoolLevel(Secundaria) values(new.userID);
				when 'Preparatoria' then
					insert into schoolLevel(Preparatoria) values(new.userID);
				when 'Actualmente no estudio' then 
					insert into schoolLevel(`Actualmente no estudio`) values(new.userID);
				when 'Otro' then
					insert into schoolLevel(Otro) values(new.userID);
			end case;
        end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
-- Final view structure for view `state_gender`
--

/*!50001 DROP VIEW IF EXISTS `state_gender`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `state_gender` AS select `users`.`state` AS `state`,count(`gender`.`Masculino`) AS `Masculino`,count(`gender`.`Femenino`) AS `Femenino`,count(`gender`.`Otro`) AS `Otro` from (`users` join `gender`) where ((`gender`.`Masculino` = `users`.`userID`) or (`gender`.`Femenino` = `users`.`userID`) or (`gender`.`Otro` = `users`.`userID`)) group by `users`.`state` order by `users`.`state` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `state_schoollevel`
--

/*!50001 DROP VIEW IF EXISTS `state_schoollevel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `state_schoollevel` AS select `users`.`state` AS `state`,count(`schoollevel`.`Primaria`) AS `Primaria`,count(`schoollevel`.`Secundaria`) AS `Secundaria`,count(`schoollevel`.`Preparatoria`) AS `Preparatoria`,count(`schoollevel`.`Actualmente no estudio`) AS `Actualmente no estudio`,count(`schoollevel`.`Otro`) AS `Otro` from (`users` join `schoollevel`) where ((`schoollevel`.`Preescolar` = `users`.`userID`) or (`schoollevel`.`Primaria` = `users`.`userID`) or (`schoollevel`.`Secundaria` = `users`.`userID`) or (`schoollevel`.`Preparatoria` = `users`.`userID`) or (`schoollevel`.`Actualmente no estudio` = `users`.`userID`) or (`schoollevel`.`Otro` = `users`.`userID`)) group by `users`.`state` */;
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

-- Dump completed on 2021-04-20  9:48:54
