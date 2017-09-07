SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `drop_data_global`;
CREATE TABLE `drop_data_global` (
  `id` bigint(20) NOT NULL,
  `continent` int(11) NOT NULL DEFAULT -1,
  `drop_type` tinyint(1) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `minimum_quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `maximum_quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `quest_id` int(11) NOT NULL DEFAULT 0,
  `chance` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '百萬分之',
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `drop_data_global` (`id`, `continent`, `drop_type`, `item_id`, `minimum_quantity`, `maximum_quantity`, `quest_id`, `chance`, `comments`) VALUES
(1, -1, 0, 4001126, 1, 1, 0, 50000, '楓葉'),
(2, -1, 0, 1122015, 1, 1, 0, 10, '楓葉頭巾'),
(3, -1, 0, 1002758, 1, 1, 0, 10, '楓葉頭盔'),
(4, -1, 0, 1102166, 1, 1, 0, 15, '楓葉披風'),
(5, -1, 0, 1102167, 1, 1, 0, 10, '楓葉披風'),
(6, -1, 0, 1102168, 1, 1, 0, 5, '楓葉披風'),
(7, -1, 0, 1092030, 1, 1, 0, 10, '楓葉之盾'),
(8, -1, 0, 1092045, 1, 1, 0, 10, '楓葉法盾'),
(9, -1, 0, 1092046, 1, 1, 0, 10, '楓葉戰盾'),
(10, -1, 0, 1092047, 1, 1, 0, 10, '楓葉護腕'),
(11, -1, 0, 1302020, 1, 1, 0, 10, '楓葉之劍'),
(12, -1, 0, 1302030, 1, 1, 0, 10, '楓葉戰劍'),
(13, -1, 0, 1332025, 1, 1, 0, 10, '楓葉短刀'),
(14, -1, 0, 1382009, 1, 1, 0, 10, '楓葉之杖'),
(15, -1, 0, 1382012, 1, 1, 0, 10, '楓葉法杖'),
(16, -1, 0, 1412011, 1, 1, 0, 10, '楓葉戰斧'),
(17, -1, 0, 1422014, 1, 1, 0, 10, '楓葉戰鎚'),
(18, -1, 0, 1432012, 1, 1, 0, 10, '楓葉之槍'),
(19, -1, 0, 1442024, 1, 1, 0, 10, '楓葉之矛'),
(20, -1, 0, 1452022, 1, 1, 0, 10, '楓葉之弓'),
(21, -1, 0, 1462019, 1, 1, 0, 10, '楓葉之弩'),
(22, -1, 0, 1472030, 1, 1, 0, 10, '楓葉指套'),
(23, -1, 0, 1472032, 1, 1, 0, 10, '楓葉拳套'),
(24, -1, 0, 1482020, 1, 1, 0, 10, '楓葉指虎'),
(25, -1, 0, 1462019, 1, 1, 0, 10, '楓葉火槍');


ALTER TABLE `drop_data_global`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chance` (`chance`);


ALTER TABLE `drop_data_global`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
