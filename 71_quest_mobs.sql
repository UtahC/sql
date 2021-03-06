SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `quest_mobs`;
CREATE TABLE `quest_mobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `quest_status_id` int(10) UNSIGNED NOT NULL,
  `mob_id` mediumint(7) UNSIGNED NOT NULL,
  `count` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime(3) NOT NULL,
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;


ALTER TABLE `quest_mobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quest_status_id_mob_id` (`quest_status_id`,`mob_id`) USING BTREE;


ALTER TABLE `quest_mobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
