/*
SQLyog Job Agent v12.09 (64 bit) Copyright(c) Webyog Inc. All Rights Reserved.


MySQL - 5.7.12 : Database - clubsports
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`clubsports` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `clubsports`;

/*View structure for view v_players_summary_stats */

/*!50001 DROP TABLE IF EXISTS `v_players_summary_stats` */;
/*!50001 DROP VIEW IF EXISTS `v_players_summary_stats` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_players_summary_stats` AS select `PS`.`measure_date` AS `measure_date`,`PS`.`player_id` AS `player_id`,`P`.`team_id` AS `team_id`,`P`.`last_name` AS `last_name`,`P`.`jersey_number` AS `jersey_number`,`P`.`position_description` AS `position_description`,`PS`.`statistic_id` AS `statistic_id`,`S`.`statistic_name` AS `statistic_name`,`S`.`stat_UI_short` AS `stat_UI_short`,`PS`.`statistic_value` AS `statistic_value`,`PS`.`is_active_YN` AS `is_active_YN`,`PS`.`is_most_recent` AS `is_most_recent`,`M`.`is_subscriber_YN` AS `is_subscriber_YN` from ((((`players_summary_stats` `PS` join `players` `P` on((`PS`.`player_id` = `P`.`player_id`))) join `statistics` `S` on((`S`.`statistic_id` = `PS`.`statistic_id`))) left join `member_associations` `MA` on(((`P`.`player_id` = convert(`MA`.`association_fk_id` using utf8)) and (`MA`.`association_id` = 1)))) left join `members` `M` on((convert(`MA`.`member_id` using utf8) = `M`.`member_id`))) where ((1 = 1) and (`PS`.`is_active_YN` = 1) and (`PS`.`is_most_recent` = 1)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
