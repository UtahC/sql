-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2016-11-03 01:58:55
-- 伺服器版本: 5.7.15-log
-- PHP 版本： 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `maplestory`
--

-- --------------------------------------------------------

--
-- 資料表結構 `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `salt` varchar(32) DEFAULT NULL,
  `2ndpassword` varchar(134) DEFAULT NULL,
  `salt2` varchar(32) DEFAULT NULL,
  `loggedin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `lastlogin` timestamp NULL DEFAULT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `banreason` text,
  `gm` tinyint(1) NOT NULL DEFAULT '0',
  `email` tinytext,
  `macs` tinytext,
  `tempban` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `greason` tinyint(4) UNSIGNED DEFAULT NULL,
  `ACash` int(11) DEFAULT NULL,
  `mPoints` int(11) DEFAULT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SessionIP` varchar(64) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `vpoints` int(11) NOT NULL DEFAULT '0',
  `lastlogon` timestamp NULL DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT '',
  `password_otp` varchar(255) DEFAULT '',
  `expiration` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 資料表結構 `achievements`
--

CREATE TABLE `achievements` (
  `achievementid` int(9) NOT NULL DEFAULT '0',
  `charid` int(9) NOT NULL DEFAULT '0',
  `accountid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `alliances`
--

CREATE TABLE `alliances` (
  `id` int(11) NOT NULL,
  `name` varchar(13) NOT NULL,
  `leaderid` int(11) NOT NULL,
  `guild1` int(11) NOT NULL,
  `guild2` int(11) NOT NULL,
  `guild3` int(11) NOT NULL DEFAULT '0',
  `guild4` int(11) NOT NULL DEFAULT '0',
  `guild5` int(11) NOT NULL DEFAULT '0',
  `rank1` varchar(13) NOT NULL DEFAULT '公會長',
  `rank2` varchar(13) NOT NULL DEFAULT '公會副會長',
  `rank3` varchar(13) NOT NULL DEFAULT '公會成員',
  `rank4` varchar(13) NOT NULL DEFAULT '公會成員',
  `rank5` varchar(13) NOT NULL DEFAULT '公會成員',
  `capacity` int(11) NOT NULL DEFAULT '2',
  `notice` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_server_channel`
--

CREATE TABLE `auth_server_channel` (
  `channelid` int(10) UNSIGNED NOT NULL,
  `world` int(11) NOT NULL DEFAULT '0',
  `number` int(11) DEFAULT NULL,
  `key` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

--
-- 資料表的匯出資料 `auth_server_channel`
--

INSERT INTO `auth_server_channel` (`channelid`, `world`, `number`, `key`) VALUES
(1, 0, 1, '64cc5ec141f3d07fb076ba87c5c46825c44a997c'),
(2, 0, 2, '71278272bd03d969454d32211592f6660a11b8ee'),
(3, 0, 3, 'ce1a2a86d8f4f5bab9e600dcac20388d54403915'),
(4, 0, 4, '0c508d5b595790b9af143d5ea98973c58d34a0b8'),
(5, 0, 5, 'afe0f764a60b96c0265966b45091680c520b791b'),
(6, 0, 6, 'a63c74dfb6dd62c2caef06184c1f41fa75eed514'),
(7, 0, 7, 'e05a1b16f8b24d43cdf50a242b5641e33f275a21'),
(8, 0, 8, '4183d0b0ef17d9130433523b6d7c845755782e87'),
(9, 0, 9, '05a7864614180db4d3374e680039d55279ebdb8c'),
(10, 0, 10, '7ce024fdb03cf3ef03171828bff527269d01f08f'),
(11, 0, 11, '7e1994fe975472f827ecc71188cb5d64bdc24c1d'),
(12, 0, 12, '462538d6ee0a15c0ff52f4bf09da6d60bc3a657d'),
(13, 0, 13, 'd82cfcb1edcb2e31b751b3ccfeb7464500bb30dc'),
(14, 0, 14, '2f32eeea3628e70980dab4e6ec2f9d27a3313b96'),
(15, 0, 15, 'f5bf68e8d67b5e5f3f2ebe684a85fe72166db8f2'),
(16, 0, 16, 'cf97404e96937aa89557a3af5c0d252b654e1b3a'),
(17, 0, 17, '00edfe19b7f9c1b5303ce7a679452b3b6d3fe381'),
(18, 0, 18, 'a9e267e5bdad70925db1729acd38f93b6edff9d4'),
(19, 0, 19, '518fa6b3a88ce3ab6d688d2ac1e42a0754720664'),
(20, 0, 20, '923dcc504ed557f563fe52c82517a2b1feceeba1');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_server_channel_ip`
--

CREATE TABLE `auth_server_channel_ip` (
  `channelconfigid` int(10) UNSIGNED NOT NULL,
  `channelid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` tinytext NOT NULL,
  `value` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `auth_server_channel_ip`
--

INSERT INTO `auth_server_channel_ip` (`channelconfigid`, `channelid`, `name`, `value`) VALUES
(1, 2, 'net.sf.odinms.channel.net.port', '8587'),
(2, 3, 'net.sf.odinms.channel.net.port', '8588'),
(3, 4, 'net.sf.odinms.channel.net.port', '8589'),
(4, 5, 'net.sf.odinms.channel.net.port', '8590'),
(5, 6, 'net.sf.odinms.channel.net.port', '8591'),
(6, 7, 'net.sf.odinms.channel.net.port', '8592'),
(7, 8, 'net.sf.odinms.channel.net.port', '8593'),
(8, 9, 'net.sf.odinms.channel.net.port', '8594'),
(9, 10, 'net.sf.odinms.channel.net.port', '8595'),
(10, 11, 'net.sf.odinms.channel.net.port', '7585'),
(11, 12, 'net.sf.odinms.channel.net.port', '7586'),
(12, 13, 'net.sf.odinms.channel.net.port', '7587'),
(13, 14, 'net.sf.odinms.channel.net.port', '7588'),
(14, 15, 'net.sf.odinms.channel.net.port', '7589'),
(15, 16, 'net.sf.odinms.channel.net.port', '7590'),
(16, 17, 'net.sf.odinms.channel.net.port', '7591'),
(17, 18, 'net.sf.odinms.channel.net.port', '7592'),
(18, 19, 'net.sf.odinms.channel.net.port', '7593'),
(19, 20, 'net.sf.odinms.channel.net.port', '7594');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_server_cs`
--

CREATE TABLE `auth_server_cs` (
  `CashShopServerId` int(10) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL,
  `world` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `auth_server_cs`
--

INSERT INTO `auth_server_cs` (`CashShopServerId`, `key`, `world`) VALUES
(1, '9eafbf39c3d7a53f7dab1f1dc4d380ce9314f7a4', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `auth_server_login`
--

CREATE TABLE `auth_server_login` (
  `loginserverid` int(10) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `world` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `auth_server_login`
--

INSERT INTO `auth_server_login` (`loginserverid`, `key`, `world`) VALUES
(1, 'e709b6bfc9eda84c166514ec9784739c6cc201bd', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `auth_server_mts`
--

CREATE TABLE `auth_server_mts` (
  `MTSServerId` int(10) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL,
  `world` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `auth_server_mts`
--

INSERT INTO `auth_server_mts` (`MTSServerId`, `key`, `world`) VALUES
(1, '9eafbf39c3d7a53f7dab1f1dc4d380ce9314f7a4', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `bbs_replies`
--

CREATE TABLE `bbs_replies` (
  `replyid` int(10) UNSIGNED NOT NULL,
  `threadid` int(10) UNSIGNED NOT NULL,
  `postercid` int(10) UNSIGNED NOT NULL,
  `timestamp` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(26) NOT NULL DEFAULT '',
  `guildid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 資料表結構 `bbs_threads`
--

CREATE TABLE `bbs_threads` (
  `threadid` int(10) UNSIGNED NOT NULL,
  `postercid` int(10) UNSIGNED NOT NULL,
  `name` varchar(26) NOT NULL DEFAULT '',
  `timestamp` bigint(20) UNSIGNED NOT NULL,
  `icon` smallint(5) UNSIGNED NOT NULL,
  `startpost` text NOT NULL,
  `guildid` int(10) UNSIGNED NOT NULL,
  `localthreadid` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 資料表結構 `blocklogin`
--

CREATE TABLE `blocklogin` (
  `account` varchar(255) DEFAULT NULL,
  `blocktime` varchar(255) DEFAULT NULL,
  `unblocktime` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `blockuse`
--

CREATE TABLE `blockuse` (
  `account` varchar(255) DEFAULT NULL,
  `blocktime` varchar(255) DEFAULT NULL,
  `unblocktime` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `usetype` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `bosslog`
--

CREATE TABLE `bosslog` (
  `bosslogid` int(10) UNSIGNED NOT NULL,
  `characterid` int(10) UNSIGNED NOT NULL,
  `bossid` varchar(20) NOT NULL,
  `lastattempt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 資料表結構 `buddies`
--

CREATE TABLE `buddies` (
  `id` int(11) NOT NULL,
  `characterid` int(11) NOT NULL,
  `buddyid` int(11) NOT NULL,
  `pending` tinyint(4) NOT NULL DEFAULT '0',
  `groupname` varchar(16) NOT NULL DEFAULT '其他'
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

--
-- 資料表的匯出資料 `buddies`
--


-- --------------------------------------------------------

--
-- 資料表結構 `cashshop_limit_sell`
--

CREATE TABLE `cashshop_limit_sell` (
  `serial` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `accountid` int(11) NOT NULL DEFAULT '0',
  `world` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `level` int(3) UNSIGNED NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `str` int(5) NOT NULL DEFAULT '0',
  `dex` int(5) NOT NULL DEFAULT '0',
  `luk` int(5) NOT NULL DEFAULT '0',
  `int` int(5) NOT NULL DEFAULT '0',
  `hp` int(5) NOT NULL DEFAULT '0',
  `mp` int(5) NOT NULL DEFAULT '0',
  `maxhp` int(5) NOT NULL DEFAULT '0',
  `maxmp` int(5) NOT NULL DEFAULT '0',
  `meso` int(11) NOT NULL DEFAULT '0',
  `hpApUsed` int(5) NOT NULL DEFAULT '0',
  `job` int(5) NOT NULL DEFAULT '0',
  `skincolor` tinyint(1) NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `fame` int(5) NOT NULL DEFAULT '0',
  `hair` int(11) NOT NULL DEFAULT '0',
  `face` int(11) NOT NULL DEFAULT '0',
  `ap` int(5) NOT NULL DEFAULT '0',
  `map` int(11) NOT NULL DEFAULT '0',
  `spawnpoint` int(3) NOT NULL DEFAULT '0',
  `gm` int(3) NOT NULL DEFAULT '0',
  `party` int(11) NOT NULL DEFAULT '0',
  `buddyCapacity` int(3) NOT NULL DEFAULT '25',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guildid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `guildrank` tinyint(1) UNSIGNED NOT NULL DEFAULT '5',
  `allianceRank` tinyint(1) UNSIGNED NOT NULL DEFAULT '5',
  `monsterbookcover` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `dojo_pts` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `dojoRecord` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `pets` varchar(13) NOT NULL DEFAULT '-1,-1,-1',
  `sp` varchar(255) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0',
  `subcategory` int(11) NOT NULL DEFAULT '0',
  `Jaguar` int(3) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '1',
  `rankMove` int(11) NOT NULL DEFAULT '0',
  `jobRank` int(11) NOT NULL DEFAULT '1',
  `jobRankMove` int(11) NOT NULL DEFAULT '0',
  `marriageId` int(11) NOT NULL DEFAULT '0',
  `familyid` int(11) NOT NULL DEFAULT '0',
  `seniorid` int(11) NOT NULL DEFAULT '0',
  `junior1` int(11) NOT NULL DEFAULT '0',
  `junior2` int(11) NOT NULL DEFAULT '0',
  `currentrep` int(11) NOT NULL DEFAULT '0',
  `totalrep` int(11) NOT NULL DEFAULT '0',
  `charmessage` varchar(128) NOT NULL DEFAULT '安安',
  `expression` int(11) NOT NULL DEFAULT '0',
  `constellation` int(11) NOT NULL DEFAULT '0',
  `blood` int(11) NOT NULL DEFAULT '0',
  `month` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  `beans` int(11) NOT NULL DEFAULT '0',
  `prefix` int(255) DEFAULT '0',
  `gachexp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 資料表結構 `character_slots`
--

CREATE TABLE `character_slots` (
  `id` int(11) NOT NULL,
  `accid` int(11) NOT NULL DEFAULT '0',
  `worldid` int(11) NOT NULL DEFAULT '0',
  `charslots` int(11) NOT NULL DEFAULT '6'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `cheatlog`
--

CREATE TABLE `cheatlog` (
  `id` int(11) NOT NULL,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `offense` tinytext NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `lastoffensetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `param` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `csequipment`
--

CREATE TABLE `csequipment` (
  `inventoryequipmentid` int(10) UNSIGNED NOT NULL,
  `inventoryitemid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `csitems`
--

CREATE TABLE `csitems` (
  `inventoryitemid` int(10) UNSIGNED NOT NULL,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(13) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- 資料表結構 `dueyequipment`
--

CREATE TABLE `dueyequipment` (
  `inventoryequipmentid` int(10) UNSIGNED NOT NULL,
  `inventoryitemid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `dueyitems`
--

CREATE TABLE `dueyitems` (
  `inventoryitemid` int(10) UNSIGNED NOT NULL,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `dueypackages`
--

CREATE TABLE `dueypackages` (
  `PackageId` int(10) UNSIGNED NOT NULL,
  `RecieverId` int(10) NOT NULL,
  `SenderName` varchar(15) NOT NULL,
  `Mesos` int(10) UNSIGNED DEFAULT '0',
  `TimeStamp` bigint(20) UNSIGNED DEFAULT NULL,
  `Checked` tinyint(1) UNSIGNED DEFAULT '1',
  `Type` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `eventstats`
--

CREATE TABLE `eventstats` (
  `eventstatid` int(10) UNSIGNED NOT NULL,
  `event` varchar(30) NOT NULL,
  `instance` varchar(30) NOT NULL,
  `characterid` int(11) NOT NULL,
  `channel` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `famelog`
--

CREATE TABLE `famelog` (
  `famelogid` int(11) NOT NULL,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `characterid_to` int(11) NOT NULL DEFAULT '0',
  `when` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 資料表結構 `families`
--

CREATE TABLE `families` (
  `familyid` int(11) NOT NULL,
  `leaderid` int(11) NOT NULL DEFAULT '0',
  `notice` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 資料表結構 `game_poll_reply`
--

CREATE TABLE `game_poll_reply` (
  `id` int(10) UNSIGNED NOT NULL,
  `AccountId` int(10) UNSIGNED NOT NULL,
  `SelectAns` tinyint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `gifts`
--

CREATE TABLE `gifts` (
  `giftid` int(10) UNSIGNED NOT NULL,
  `recipient` int(11) NOT NULL DEFAULT '0',
  `from` varchar(13) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `sn` int(11) NOT NULL DEFAULT '0',
  `uniqueid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `gmlog`
--

CREATE TABLE `gmlog` (
  `gmlogid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `command` tinytext NOT NULL,
  `mapid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `guilds`
--

CREATE TABLE `guilds` (
  `guildid` int(10) UNSIGNED NOT NULL,
  `leader` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `GP` int(11) NOT NULL DEFAULT '0',
  `logo` int(10) UNSIGNED DEFAULT NULL,
  `logoColor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL,
  `rank1title` varchar(45) NOT NULL DEFAULT '公會長',
  `rank2title` varchar(45) NOT NULL DEFAULT '公會副會長',
  `rank3title` varchar(45) NOT NULL DEFAULT '公會成員',
  `rank4title` varchar(45) NOT NULL DEFAULT '公會成員',
  `rank5title` varchar(45) NOT NULL DEFAULT '公會成員',
  `capacity` int(10) UNSIGNED NOT NULL DEFAULT '10',
  `logoBG` int(10) UNSIGNED DEFAULT NULL,
  `logoBGColor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `notice` varchar(101) DEFAULT NULL,
  `signature` int(11) NOT NULL DEFAULT '0',
  `alliance` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `hiredmerch`
--

CREATE TABLE `hiredmerch` (
  `PackageId` int(10) UNSIGNED NOT NULL,
  `characterid` int(10) UNSIGNED DEFAULT '0',
  `accountid` int(10) UNSIGNED DEFAULT NULL,
  `Mesos` int(10) UNSIGNED DEFAULT '0',
  `time` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `hiredmerchequipment`
--

CREATE TABLE `hiredmerchequipment` (
  `inventoryequipmentid` int(10) UNSIGNED NOT NULL,
  `inventoryitemid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `hiredmerchitems`
--

CREATE TABLE `hiredmerchitems` (
  `inventoryitemid` int(10) UNSIGNED NOT NULL,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- 資料表結構 `hiredfishing`
--

CREATE TABLE `hiredfishing` (
  `PackageId` int(10) UNSIGNED NOT NULL,
  `characterid` int(10) UNSIGNED DEFAULT '0',
  `accountid` int(10) UNSIGNED DEFAULT NULL,
  `Mesos` int(10) UNSIGNED DEFAULT '0',
  `time` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `hiredfishingequipment`
--

CREATE TABLE `hiredfishingequipment` (
  `inventoryequipmentid` int(10) UNSIGNED NOT NULL,
  `inventoryitemid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `hiredfishingitems`
--

CREATE TABLE `hiredfishingitems` (
  `inventoryitemid` int(10) UNSIGNED NOT NULL,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `htsquads`
--

CREATE TABLE `htsquads` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `leaderid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `members` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `inventoryequipment`
--

CREATE TABLE `inventoryequipment` (
  `inventoryequipmentid` int(10) UNSIGNED NOT NULL,
  `inventoryitemid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upgradeslots` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `str` smallint(6) NOT NULL DEFAULT '0',
  `dex` smallint(6) NOT NULL DEFAULT '0',
  `int` smallint(6) NOT NULL DEFAULT '0',
  `luk` smallint(6) NOT NULL DEFAULT '0',
  `hp` smallint(6) NOT NULL DEFAULT '0',
  `mp` smallint(6) NOT NULL DEFAULT '0',
  `watk` smallint(6) NOT NULL DEFAULT '0',
  `matk` smallint(6) NOT NULL DEFAULT '0',
  `wdef` smallint(6) NOT NULL DEFAULT '0',
  `mdef` smallint(6) NOT NULL DEFAULT '0',
  `acc` smallint(6) NOT NULL DEFAULT '0',
  `avoid` smallint(6) NOT NULL DEFAULT '0',
  `hands` smallint(6) NOT NULL DEFAULT '0',
  `speed` smallint(6) NOT NULL DEFAULT '0',
  `jump` smallint(6) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` mediumint(9) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `inventoryitems`
--

CREATE TABLE `inventoryitems` (
  `inventoryitemid` int(10) UNSIGNED NOT NULL,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `inventorylog`
--

CREATE TABLE `inventorylog` (
  `inventorylogid` int(10) UNSIGNED NOT NULL,
  `inventoryitemid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msg` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `inventoryslot`
--

CREATE TABLE `inventoryslot` (
  `id` int(10) UNSIGNED NOT NULL,
  `characterid` int(10) UNSIGNED DEFAULT NULL,
  `equip` tinyint(3) UNSIGNED DEFAULT NULL,
  `use` tinyint(3) UNSIGNED DEFAULT NULL,
  `setup` tinyint(3) UNSIGNED DEFAULT NULL,
  `etc` tinyint(3) UNSIGNED DEFAULT NULL,
  `cash` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 資料表結構 `invitecodedata`
--

CREATE TABLE `invitecodedata` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `active` int(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `ipbans`
--

CREATE TABLE `ipbans` (
  `ipbanid` int(10) UNSIGNED NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `ipvotelog`
--

CREATE TABLE `ipvotelog` (
  `vid` int(10) UNSIGNED NOT NULL,
  `accid` varchar(45) NOT NULL DEFAULT '0',
  `ipaddress` varchar(30) NOT NULL DEFAULT '127.0.0.1',
  `votetime` varchar(100) NOT NULL DEFAULT '0',
  `votetype` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `keymap`
--

CREATE TABLE `keymap` (
  `id` int(11) NOT NULL,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `key` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `loginlog`
--

CREATE TABLE `loginlog` (
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `logintype` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `macbans`
--

CREATE TABLE `macbans` (
  `macbanid` int(10) UNSIGNED NOT NULL,
  `mac` varchar(30) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 資料表結構 `macfilters`
--

CREATE TABLE `macfilters` (
  `macfilterid` int(10) UNSIGNED NOT NULL,
  `filter` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `monsterbook`
--

CREATE TABLE `monsterbook` (
  `id` int(10) NOT NULL,
  `charid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cardid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `level` tinyint(2) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `mountdata`
--

CREATE TABLE `mountdata` (
  `id` int(10) UNSIGNED NOT NULL,
  `characterid` int(10) UNSIGNED DEFAULT NULL,
  `Level` int(3) UNSIGNED NOT NULL DEFAULT '0',
  `Exp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Fatigue` int(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `mtsequipment`
--

CREATE TABLE `mtsequipment` (
  `inventoryequipmentid` int(10) UNSIGNED NOT NULL,
  `inventoryitemid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `mtsitems`
--

CREATE TABLE `mtsitems` (
  `inventoryitemid` int(10) UNSIGNED NOT NULL,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageId` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `mtstransfer`
--

CREATE TABLE `mtstransfer` (
  `inventoryitemid` int(10) UNSIGNED NOT NULL,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `mtstransferequipment`
--

CREATE TABLE `mtstransferequipment` (
  `inventoryequipmentid` int(10) UNSIGNED NOT NULL,
  `inventoryitemid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `mts_cart`
--

CREATE TABLE `mts_cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `mts_items`
--

CREATE TABLE `mts_items` (
  `id` int(11) NOT NULL,
  `tab` tinyint(1) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL DEFAULT '0',
  `characterid` int(11) NOT NULL DEFAULT '0',
  `seller` varchar(15) NOT NULL DEFAULT '',
  `expiration` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `mulungdojo`
--

CREATE TABLE `mulungdojo` (
  `id` int(10) UNSIGNED NOT NULL,
  `charid` int(11) NOT NULL DEFAULT '0',
  `stage` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `to` varchar(15) NOT NULL DEFAULT '',
  `from` varchar(15) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `timestamp` bigint(20) UNSIGNED NOT NULL,
  `gift` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 資料表結構 `nxcode`
--

CREATE TABLE `nxcode` (
  `code` varchar(15) NOT NULL,
  `valid` int(11) NOT NULL DEFAULT '1',
  `user` varchar(15) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `item` int(11) NOT NULL DEFAULT '10000'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `pets`
--

CREATE TABLE `pets` (
  `petid` int(10) UNSIGNED NOT NULL,
  `name` varchar(13) DEFAULT NULL,
  `level` int(3) UNSIGNED NOT NULL,
  `closeness` int(6) UNSIGNED NOT NULL,
  `fullness` int(3) UNSIGNED NOT NULL,
  `seconds` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

--
-- 資料表的匯出資料 `pets`
--


-- --------------------------------------------------------

--
-- 資料表結構 `playernpcs`
--

CREATE TABLE `playernpcs` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `hair` int(11) NOT NULL,
  `face` int(11) NOT NULL,
  `skin` int(11) NOT NULL,
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `map` int(11) NOT NULL,
  `charid` int(11) NOT NULL,
  `scriptid` int(11) NOT NULL,
  `foothold` int(11) NOT NULL,
  `dir` tinyint(1) NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `pets` varchar(25) DEFAULT '0,0,0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `playernpcs_equip`
--

CREATE TABLE `playernpcs_equip` (
  `id` int(11) NOT NULL,
  `npcid` int(11) NOT NULL,
  `equipid` int(11) NOT NULL,
  `equippos` int(11) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `reactordrops`
--

CREATE TABLE `reactordrops` (
  `reactordropid` int(10) UNSIGNED NOT NULL,
  `reactorid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `chance` int(11) NOT NULL,
  `questid` int(5) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=big5 PACK_KEYS=1;

--
-- 資料表的匯出資料 `reactordrops`
--

INSERT INTO `reactordrops` (`reactordropid`, `reactorid`, `itemid`, `chance`, `questid`) VALUES
(126, 1022002, 4001340, 1, 28167),
(127, 1202000, 4001366, 1, 28194),
(128, 1202003, 4001346, 1, 28225),
(129, 1202004, 4001346, 1, 28225),
(130, 1032000, 4032362, 1, 28252),
(131, 1032000, 4032363, 1, 28252),
(132, 1202004, 4032494, 1, 28255),
(1, 2001, 4031161, 1, 1008),
(2, 2001, 4031162, 1, 1008),
(3, 2001, 2010009, 2, -1),
(4, 2001, 2010000, 4, -1),
(5, 2001, 2000000, 4, -1),
(6, 2001, 2000001, 7, -1),
(7, 2001, 2000002, 10, -1),
(8, 2001, 2000003, 15, -1),
(9, 1012000, 2000000, 6, -1),
(10, 1012000, 4000003, 6, -1),
(11, 1012000, 4031150, 3, -1),
(12, 1072000, 4031165, 4, -1),
(13, 1102000, 4000136, 1, -1),
(14, 1102001, 4000136, 1, -1),
(15, 1102002, 4000136, 1, -1),
(16, 2002000, 2000002, 4, -1),
(17, 2002000, 2000001, 2, -1),
(18, 2002000, 4031198, 2, -1),
(19, 2112000, 2000004, 1, -1),
(20, 2112001, 2020001, 1, -1),
(21, 2112004, 4001016, 1, -1),
(22, 2112005, 4001015, 1, -1),
(23, 2112003, 2000005, 1, -1),
(24, 2112007, 2022001, 1, -1),
(25, 2112008, 2000004, 1, -1),
(26, 2112009, 2020001, 1, -1),
(27, 2112010, 2000005, 1, -1),
(28, 2112011, 4001016, 1, -1),
(29, 2112012, 4001015, 1, -1),
(30, 2112014, 4001018, 1, -1),
(31, 2112016, 4001113, 1, -1),
(32, 2112017, 4001114, 1, -1),
(33, 2202000, 4031094, 1, -1),
(34, 2212000, 4031142, 2, -1),
(35, 2212000, 2000002, 3, -1),
(36, 2212001, 2000002, 3, -1),
(37, 2212002, 2000002, 3, -1),
(38, 2212001, 4031141, 2, -1),
(39, 2212002, 4031143, 2, -1),
(40, 2212003, 4031107, 2, -1),
(41, 2212004, 4031116, 2, -1),
(42, 2212004, 2000001, 2, -1),
(43, 2212005, 4031136, 8, -1),
(44, 2222000, 4031231, 2, -1),
(45, 2222000, 4031258, 2, -1),
(46, 2222000, 2000002, 3, -1),
(47, 2302000, 2000001, 3, -1),
(48, 2302000, 2022040, 6, -1),
(49, 2302000, 4031274, 50, -1),
(50, 2302000, 4031275, 50, -1),
(51, 2302000, 4031276, 50, -1),
(52, 2302000, 4031277, 50, -1),
(53, 2302000, 4031278, 50, -1),
(54, 2302001, 2000002, 3, -1),
(55, 2302001, 2022040, 4, -1),
(56, 2302002, 2000001, 3, -1),
(57, 2302002, 2022040, 8, -1),
(58, 2302003, 4161017, 1, -1),
(59, 2302005, 4031508, 1, -1),
(60, 2502000, 2022116, 1, -1),
(61, 2052001, 2022116, 1, -1),
(62, 9202000, 1032033, 1, -1),
(63, 9202009, 1032033, 1, -1),
(64, 2202001, 4031092, 1, -1),
(65, 9202001, 4001025, 1, -1),
(66, 9202002, 4001037, 1, -1),
(67, 9202003, 4001029, 1, -1),
(68, 9202004, 4001030, 1, -1),
(69, 9202005, 4001031, 1, -1),
(70, 9202006, 4001032, 1, -1),
(71, 9202007, 4001033, 1, -1),
(72, 9202008, 4001034, 1, -1),
(73, 9202012, 2020014, 3, -1),
(74, 9202012, 2020015, 3, -1),
(75, 9202012, 2001001, 3, -1),
(76, 9202012, 2000004, 3, -1),
(77, 9202012, 2000005, 3, -1),
(78, 9202012, 2000001, 3, -1),
(79, 9202012, 2000002, 3, -1),
(80, 9202012, 2000006, 3, -1),
(81, 9202012, 2001002, 3, -1),
(82, 9202012, 2040504, 40, -1),
(83, 9202012, 2040501, 40, -1),
(84, 9202012, 2040513, 40, -1),
(85, 9202012, 2040516, 40, -1),
(86, 9202012, 2041007, 40, -1),
(87, 9202012, 2041010, 40, -1),
(88, 9202012, 2041004, 40, -1),
(89, 9202012, 2041001, 40, -1),
(90, 9202012, 2041019, 40, -1),
(91, 9202012, 2041022, 40, -1),
(92, 9202012, 2041013, 40, -1),
(93, 9202012, 2041016, 40, -1),
(94, 9202012, 2040301, 40, -1),
(95, 9202012, 2040704, 40, -1),
(96, 9202012, 2040707, 40, -1),
(97, 9202012, 2040701, 40, -1),
(98, 9202012, 2040804, 40, -1),
(99, 9202012, 2040801, 40, -1),
(100, 9202012, 2040004, 40, -1),
(101, 9202012, 2040001, 40, -1),
(102, 9202012, 2290009, 60, -1),
(103, 9202012, 2290031, 60, -1),
(104, 9202012, 2290039, 60, -1),
(105, 9202012, 2290033, 60, -1),
(106, 9202012, 2290045, 60, -1),
(107, 9202012, 2290081, 60, -1),
(108, 9202012, 2290083, 60, -1),
(109, 9202012, 2290087, 60, -1),
(110, 9202012, 2290060, 60, -1),
(111, 9202012, 2290073, 60, -1),
(112, 9202012, 2100000, 250, -1),
(113, 2612004, 4031703, 1, -1),
(114, 1302000, 2010000, 30, -1),
(115, 1302000, 2010009, 30, -1),
(116, 1302000, 4032268, 1, 20013),
(117, 1302000, 4032267, 1, 20013),
(118, 1052000, 4031471, 1, 6153),
(119, 2112015, 2280000, 1, -1),
(120, 1022000, 4031452, 1, -1),
(121, 2202003, 4001022, 1, -1),
(122, 2201001, 4001022, 1, -1),
(123, 1402000, 4032309, 1, -1),
(124, 1402000, 4032310, 1, -1),
(125, 1022001, 4032319, 7, -1),
(133, 1052001, 3010126, 100, -1),
(134, 1052002, 3010126, 100, -1),
(135, 1052001, 1072375, 3, -1),
(136, 1052001, 1072376, 3, -1),
(137, 1052001, 2049100, 3, -1),
(138, 1052001, 2049001, 3, -1),
(139, 1052001, 1382068, 3, -1),
(140, 1052001, 1402062, 3, -1),
(141, 1052001, 1442078, 3, -1),
(142, 1052001, 1452071, 3, -1),
(143, 1052001, 1472086, 3, -1),
(144, 1052001, 1492037, 3, -1),
(145, 1052001, 2040728, 3, -1),
(146, 1052001, 2040729, 3, -1),
(147, 1052001, 2040730, 3, -1),
(148, 1052001, 2040731, 3, -1),
(149, 1052001, 2040732, 3, -1),
(150, 1052001, 2040733, 3, -1),
(151, 1052001, 2040734, 3, -1),
(152, 1052001, 2040735, 3, -1),
(153, 1052001, 2040736, 3, -1),
(154, 1052001, 2040737, 3, -1),
(155, 1052001, 2040738, 3, -1),
(156, 1052001, 2040739, 3, -1),
(157, 1052001, 1302112, 3, -1),
(158, 1052001, 1302113, 3, -1),
(159, 1052001, 1312042, 3, -1),
(160, 1052001, 1312043, 3, -1),
(161, 1052001, 1322068, 3, -1),
(162, 1052001, 1322069, 3, -1),
(163, 1052001, 1332084, 3, -1),
(164, 1052001, 1332085, 3, -1),
(165, 1052001, 1332086, 3, -1),
(166, 1052001, 1332087, 3, -1),
(167, 1052001, 1342019, 3, -1),
(168, 1052001, 1342020, 3, -1),
(169, 1052001, 1372050, 3, -1),
(170, 1052001, 1372051, 3, -1),
(171, 1052001, 1382066, 3, -1),
(172, 1052001, 1382067, 3, -1),
(173, 1052001, 1402056, 3, -1),
(174, 1052001, 1402057, 3, -1),
(175, 1052001, 1402058, 3, -1),
(176, 1052001, 1402059, 3, -1),
(177, 1052001, 1412038, 3, -1),
(178, 1052001, 1412039, 3, -1),
(179, 1052001, 1422042, 3, -1),
(180, 1052001, 1422043, 3, -1),
(181, 1052002, 1072375, 3, -1),
(182, 1052002, 1072376, 3, -1),
(183, 1052002, 2040728, 3, -1),
(184, 1052002, 2040729, 3, -1),
(185, 1052002, 2040730, 3, -1),
(186, 1052002, 2040731, 3, -1),
(187, 1052002, 2040732, 3, -1),
(188, 1052002, 2040733, 3, -1),
(189, 1052002, 2040734, 3, -1),
(190, 1052002, 2040735, 3, -1),
(191, 1052002, 2040736, 3, -1),
(192, 1052002, 2040737, 3, -1),
(193, 1052002, 2040738, 3, -1),
(194, 1052002, 2040739, 3, -1),
(195, 1052002, 1302112, 3, -1),
(196, 1052002, 1302113, 3, -1),
(197, 1052002, 1312042, 3, -1),
(198, 1052002, 1312043, 3, -1),
(199, 1052002, 1322068, 3, -1),
(200, 1052002, 1322069, 3, -1),
(201, 1052002, 1332084, 3, -1),
(202, 1052002, 1332085, 3, -1),
(203, 1052002, 1332086, 3, -1),
(204, 1052002, 1332087, 3, -1),
(205, 1052002, 1342019, 3, -1),
(206, 1052002, 1342020, 3, -1),
(207, 1052002, 1372050, 3, -1),
(208, 1052002, 1372051, 3, -1),
(209, 1052002, 1382066, 3, -1),
(210, 1052002, 1382067, 3, -1),
(211, 1052002, 1402056, 3, -1),
(212, 1052002, 1402057, 3, -1),
(213, 1052002, 1402058, 3, -1),
(214, 1052002, 1402059, 3, -1),
(215, 1052002, 1412038, 3, -1),
(216, 1052002, 1412039, 3, -1),
(217, 1052002, 1422042, 3, -1),
(218, 1052002, 1422043, 3, -1),
(219, 1002008, 4032452, 1, 22502),
(220, 6102001, 4001260, 1, -1),
(221, 6102002, 1472051, 25, -1),
(222, 6102002, 1442056, 25, -1),
(223, 6102002, 1072228, 25, -1),
(224, 6102002, 1322062, 25, -1),
(225, 6102002, 1092061, 25, -1),
(226, 6102002, 1452019, 25, -1),
(227, 6102002, 1492012, 25, -1),
(228, 6102002, 1092050, 25, -1),
(229, 6102002, 1402005, 25, -1),
(230, 6102002, 1052131, 25, -1),
(231, 6102002, 1462016, 25, -1),
(232, 6102002, 1332051, 25, -1),
(233, 6102002, 1102043, 50, -1),
(234, 6102002, 1102206, 50, -1),
(235, 6102002, 1102260, 50, -1),
(236, 6102002, 3010010, 25, -1),
(237, 6102002, 4032015, 25, -1),
(238, 6102002, 4032016, 25, -1),
(239, 6102002, 4032017, 25, -1),
(240, 6102002, 4161018, 25, -1),
(241, 6102002, 4161021, 25, -1),
(242, 6102002, 4001107, 25, -1),
(243, 6102002, 4161015, 25, -1),
(244, 6102002, 4161016, 25, -1),
(245, 6102002, 2022121, 25, -1),
(246, 6102002, 2044803, 25, -1),
(247, 6102002, 2044903, 25, -1),
(248, 6102002, 2290071, 50, -1),
(249, 6102002, 2290027, 50, -1),
(250, 6102002, 2290111, 50, -1),
(251, 6102002, 2290118, 50, -1),
(252, 6102002, 2290103, 50, -1),
(253, 6102002, 2290047, 50, -1),
(254, 6102002, 2290091, 50, -1),
(255, 6102002, 2290053, 50, -1),
(256, 6102002, 2290061, 50, -1),
(257, 6102002, 2290011, 50, -1),
(258, 6102002, 2290089, 50, -1),
(259, 6102003, 1472051, 25, -1),
(260, 6102003, 1442056, 25, -1),
(261, 6102003, 1072228, 25, -1),
(262, 6102003, 1322062, 25, -1),
(263, 6102003, 1092061, 25, -1),
(264, 6102003, 1452019, 25, -1),
(265, 6102003, 1492012, 25, -1),
(266, 6102003, 1092050, 25, -1),
(267, 6102003, 1402005, 25, -1),
(268, 6102003, 1052131, 25, -1),
(269, 6102003, 1462016, 25, -1),
(270, 6102003, 1332051, 25, -1),
(271, 6102003, 1102043, 50, -1),
(272, 6102003, 1102206, 50, -1),
(273, 6102003, 1102260, 50, -1),
(274, 6102003, 3010010, 25, -1),
(275, 6102003, 4032015, 25, -1),
(276, 6102003, 4032016, 25, -1),
(277, 6102003, 4032017, 25, -1),
(278, 6102003, 4161018, 25, -1),
(279, 6102003, 4161021, 25, -1),
(280, 6102003, 4001107, 25, -1),
(281, 6102003, 4161015, 25, -1),
(282, 6102003, 4161016, 25, -1),
(283, 6102003, 2022121, 25, -1),
(284, 6102003, 2044803, 25, -1),
(285, 6102003, 2044903, 25, -1),
(286, 6102003, 2290071, 50, -1),
(287, 6102003, 2290027, 50, -1),
(288, 6102003, 2290111, 50, -1),
(289, 6102003, 2290118, 50, -1),
(290, 6102003, 2290103, 50, -1),
(291, 6102003, 2290047, 50, -1),
(292, 6102003, 2290091, 50, -1),
(293, 6102003, 2290053, 50, -1),
(294, 6102003, 2290061, 50, -1),
(295, 6102003, 2290011, 50, -1),
(296, 6102003, 2290089, 50, -1),
(297, 6102004, 1472051, 25, -1),
(298, 6102004, 1442056, 25, -1),
(299, 6102004, 1072228, 25, -1),
(300, 6102004, 1322062, 25, -1),
(301, 6102004, 1092061, 25, -1),
(302, 6102004, 1452019, 25, -1),
(303, 6102004, 1492012, 25, -1),
(304, 6102004, 1092050, 25, -1),
(305, 6102004, 1402005, 25, -1),
(306, 6102004, 1052131, 25, -1),
(307, 6102004, 1462016, 25, -1),
(308, 6102004, 1332051, 25, -1),
(309, 6102004, 1102043, 50, -1),
(310, 6102004, 1102206, 50, -1),
(311, 6102004, 1102260, 50, -1),
(312, 6102004, 3010010, 25, -1),
(313, 6102004, 4032015, 25, -1),
(314, 6102004, 4032016, 25, -1),
(315, 6102004, 4032017, 25, -1),
(316, 6102004, 4161018, 25, -1),
(317, 6102004, 4161021, 25, -1),
(318, 6102004, 4001107, 25, -1),
(319, 6102004, 4161015, 25, -1),
(320, 6102004, 4161016, 25, -1),
(321, 6102004, 2022121, 25, -1),
(322, 6102004, 2044803, 25, -1),
(323, 6102004, 2044903, 25, -1),
(324, 6102004, 2290071, 50, -1),
(325, 6102004, 2290027, 50, -1),
(326, 6102004, 2290111, 50, -1),
(327, 6102004, 2290118, 50, -1),
(328, 6102004, 2290103, 50, -1),
(329, 6102004, 2290047, 50, -1),
(330, 6102004, 2290091, 50, -1),
(331, 6102004, 2290053, 50, -1),
(332, 6102004, 2290061, 50, -1),
(333, 6102004, 2290011, 50, -1),
(334, 6102004, 2290089, 50, -1),
(335, 6102005, 1472051, 25, -1),
(336, 6102005, 1442056, 25, -1),
(337, 6102005, 1072228, 25, -1),
(338, 6102005, 1322062, 25, -1),
(339, 6102005, 1092061, 25, -1),
(340, 6102005, 1452019, 25, -1),
(341, 6102005, 1492012, 25, -1),
(342, 6102005, 1092050, 25, -1),
(343, 6102005, 1402005, 25, -1),
(344, 6102005, 1052131, 25, -1),
(345, 6102005, 1462016, 25, -1),
(346, 6102005, 1332051, 25, -1),
(347, 6102005, 1102043, 50, -1),
(348, 6102005, 1102206, 50, -1),
(349, 6102005, 1102260, 50, -1),
(350, 6102005, 3010010, 25, -1),
(351, 6102005, 4032015, 25, -1),
(352, 6102005, 4032016, 25, -1),
(353, 6102005, 4032017, 25, -1),
(354, 6102005, 4161018, 25, -1),
(355, 6102005, 4161021, 25, -1),
(356, 6102005, 4001107, 25, -1),
(357, 6102005, 4161015, 25, -1),
(358, 6102005, 4161016, 25, -1),
(359, 6102005, 2022121, 25, -1),
(360, 6102005, 2044803, 25, -1),
(361, 6102005, 2044903, 25, -1),
(362, 6102005, 2290071, 50, -1),
(363, 6102005, 2290027, 50, -1),
(364, 6102005, 2290111, 50, -1),
(365, 6102005, 2290118, 50, -1),
(366, 6102005, 2290103, 50, -1),
(367, 6102005, 2290047, 50, -1),
(368, 6102005, 2290091, 50, -1),
(369, 6102005, 2290053, 50, -1),
(370, 6102005, 2290061, 50, -1),
(371, 6102005, 2290011, 50, -1),
(372, 6102005, 2290089, 50, -1),
(373, 3002000, 4001162, 1, -1),
(374, 3002001, 4001163, 1, -1),
(375, 6702000, 4031595, 1, -1),
(376, 6702003, 1032043, 5, -1),
(377, 6702003, 1032044, 5, -1),
(378, 6702003, 1032045, 5, -1),
(379, 6702003, 1102099, 20, -1),
(380, 6702003, 1102100, 20, -1),
(381, 6702003, 1102101, 50, -1),
(382, 6702003, 1102102, 50, -1),
(383, 6702003, 1102103, 50, -1),
(384, 6702003, 1102104, 50, -1),
(385, 6702003, 1102105, 50, -1),
(386, 6702003, 1102106, 50, -1),
(387, 6702003, 4021007, 5, -1),
(388, 6702003, 4021008, 5, -1),
(389, 6702003, 4020007, 5, -1),
(390, 6702003, 4020007, 5, -1),
(391, 6702003, 4011006, 5, -1),
(392, 6702003, 2040759, 50, -1),
(393, 6702003, 2041035, 20, -1),
(394, 6702003, 2041037, 20, -1),
(395, 6702003, 2041039, 20, -1),
(396, 6702003, 2041041, 20, -1),
(397, 6702003, 2000005, 5, -1),
(398, 6702003, 2022179, 4, -1),
(399, 6702003, 2022180, 5, -1),
(400, 6702003, 2022181, 5, -1),
(401, 6702003, 2022182, 5, -1),
(402, 6702003, 2000005, 5, -1),
(403, 6702003, 2020010, 5, -1),
(404, 6702003, 2020013, 5, -1),
(405, 6702003, 3010011, 50, -1),
(406, 6702003, 3012000, 100, -1),
(407, 6702003, 3012005, 100, -1),
(408, 6702004, 1032043, 5, -1),
(409, 6702004, 1032044, 5, -1),
(410, 6702004, 1032045, 5, -1),
(411, 6702004, 1102099, 20, -1),
(412, 6702004, 1102100, 20, -1),
(413, 6702004, 1102101, 50, -1),
(414, 6702004, 1102102, 50, -1),
(415, 6702004, 1102103, 50, -1),
(416, 6702004, 1102104, 50, -1),
(417, 6702004, 1102105, 50, -1),
(418, 6702004, 1102106, 50, -1),
(419, 6702004, 4021007, 5, -1),
(420, 6702004, 4021008, 5, -1),
(421, 6702004, 4020007, 5, -1),
(422, 6702004, 4020007, 5, -1),
(423, 6702004, 4011006, 5, -1),
(424, 6702004, 2040759, 50, -1),
(425, 6702004, 2041035, 20, -1),
(426, 6702004, 2041037, 20, -1),
(427, 6702004, 2041039, 20, -1),
(428, 6702004, 2041041, 20, -1),
(429, 6702004, 2000005, 5, -1),
(430, 6702004, 2022179, 4, -1),
(431, 6702004, 2022180, 5, -1),
(432, 6702004, 2022181, 5, -1),
(433, 6702004, 2022182, 5, -1),
(434, 6702004, 2000005, 5, -1),
(435, 6702004, 2020010, 5, -1),
(436, 6702004, 2020013, 5, -1),
(437, 6702004, 3010011, 50, -1),
(438, 6702004, 3012000, 100, -1),
(439, 6702004, 3012005, 100, -1),
(440, 6702005, 1032043, 5, -1),
(441, 6702005, 1032044, 5, -1),
(442, 6702005, 1032045, 5, -1),
(443, 6702005, 1102099, 20, -1),
(444, 6702005, 1102100, 20, -1),
(445, 6702005, 1102101, 50, -1),
(446, 6702005, 1102102, 50, -1),
(447, 6702005, 1102103, 50, -1),
(448, 6702005, 1102104, 50, -1),
(449, 6702005, 1102105, 50, -1),
(450, 6702005, 1102106, 50, -1),
(451, 6702005, 4021007, 5, -1),
(452, 6702005, 4021008, 5, -1),
(453, 6702005, 4020007, 5, -1),
(454, 6702005, 4020007, 5, -1),
(455, 6702005, 4011006, 5, -1),
(456, 6702005, 2040759, 50, -1),
(457, 6702005, 2041035, 20, -1),
(458, 6702005, 2041037, 20, -1),
(459, 6702005, 2041039, 20, -1),
(460, 6702005, 2041041, 20, -1),
(461, 6702005, 2000005, 5, -1),
(462, 6702005, 2022179, 4, -1),
(463, 6702005, 2022180, 5, -1),
(464, 6702005, 2022181, 5, -1),
(465, 6702005, 2022182, 5, -1),
(466, 6702005, 2000005, 5, -1),
(467, 6702005, 2020010, 5, -1),
(468, 6702005, 2020013, 5, -1),
(469, 6702005, 3010011, 50, -1),
(470, 6702005, 3012000, 100, -1),
(471, 6702005, 3012005, 100, -1),
(472, 6702006, 1032043, 5, -1),
(473, 6702006, 1032044, 5, -1),
(474, 6702006, 1032045, 5, -1),
(475, 6702006, 1102099, 20, -1),
(476, 6702006, 1102100, 20, -1),
(477, 6702006, 1102101, 50, -1),
(478, 6702006, 1102102, 50, -1),
(479, 6702006, 1102103, 50, -1),
(480, 6702006, 1102104, 50, -1),
(481, 6702006, 1102105, 50, -1),
(482, 6702006, 1102106, 50, -1),
(483, 6702006, 4021007, 5, -1),
(484, 6702006, 4021008, 5, -1),
(485, 6702006, 4020007, 5, -1),
(486, 6702006, 4020007, 5, -1),
(487, 6702006, 4011006, 5, -1),
(488, 6702006, 2040759, 50, -1),
(489, 6702006, 2041035, 20, -1),
(490, 6702006, 2041037, 20, -1),
(491, 6702006, 2041039, 20, -1),
(492, 6702006, 2041041, 20, -1),
(493, 6702006, 2000005, 5, -1),
(494, 6702006, 2022179, 4, -1),
(495, 6702006, 2022180, 5, -1),
(496, 6702006, 2022181, 5, -1),
(497, 6702006, 2022182, 5, -1),
(498, 6702006, 2000005, 5, -1),
(499, 6702006, 2020010, 5, -1),
(500, 6702006, 2020013, 5, -1),
(501, 6702006, 3010011, 50, -1),
(502, 6702006, 3012000, 100, -1),
(503, 6702006, 3012005, 100, -1),
(504, 6702007, 1032043, 5, -1),
(505, 6702007, 1032044, 5, -1),
(506, 6702007, 1032045, 5, -1),
(507, 6702007, 1102099, 20, -1),
(508, 6702007, 1102100, 20, -1),
(509, 6702007, 1102101, 50, -1),
(510, 6702007, 1102102, 50, -1),
(511, 6702007, 1102103, 50, -1),
(512, 6702007, 1102104, 50, -1),
(513, 6702007, 1102105, 50, -1),
(514, 6702007, 1102106, 50, -1),
(515, 6702007, 4021007, 5, -1),
(516, 6702007, 4021008, 5, -1),
(517, 6702007, 4020007, 5, -1),
(518, 6702007, 4020007, 5, -1),
(519, 6702007, 4011006, 5, -1),
(520, 6702007, 2040759, 50, -1),
(521, 6702007, 2041035, 20, -1),
(522, 6702007, 2041037, 20, -1),
(523, 6702007, 2041039, 20, -1),
(524, 6702007, 2041041, 20, -1),
(525, 6702007, 2000005, 5, -1),
(526, 6702007, 2022179, 4, -1),
(527, 6702007, 2022180, 5, -1),
(528, 6702007, 2022181, 5, -1),
(529, 6702007, 2022182, 5, -1),
(530, 6702007, 2000005, 5, -1),
(531, 6702007, 2020010, 5, -1),
(532, 6702007, 2020013, 5, -1),
(533, 6702007, 3010011, 50, -1),
(534, 6702007, 3012000, 100, -1),
(535, 6702007, 3012005, 100, -1),
(536, 6702008, 1032043, 5, -1),
(537, 6702008, 1032044, 5, -1),
(538, 6702008, 1032045, 5, -1),
(539, 6702008, 1102099, 20, -1),
(540, 6702008, 1102100, 20, -1),
(541, 6702008, 1102101, 50, -1),
(542, 6702008, 1102102, 50, -1),
(543, 6702008, 1102103, 50, -1),
(544, 6702008, 1102104, 50, -1),
(545, 6702008, 1102105, 50, -1),
(546, 6702008, 1102106, 50, -1),
(547, 6702008, 4021007, 5, -1),
(548, 6702008, 4021008, 5, -1),
(549, 6702008, 4020007, 5, -1),
(550, 6702008, 4020007, 5, -1),
(551, 6702008, 4011006, 5, -1),
(552, 6702008, 2040759, 50, -1),
(553, 6702008, 2041035, 20, -1),
(554, 6702008, 2041037, 20, -1),
(555, 6702008, 2041039, 20, -1),
(556, 6702008, 2041041, 20, -1),
(557, 6702008, 2000005, 5, -1),
(558, 6702008, 2022179, 4, -1),
(559, 6702008, 2022180, 5, -1),
(560, 6702008, 2022181, 5, -1),
(561, 6702008, 2022182, 5, -1),
(562, 6702008, 2000005, 5, -1),
(563, 6702008, 2020010, 5, -1),
(564, 6702008, 2020013, 5, -1),
(565, 6702008, 3010011, 50, -1),
(566, 6702008, 3012000, 100, -1),
(567, 6702008, 3012005, 100, -1),
(568, 6702009, 1032043, 5, -1),
(569, 6702009, 1032044, 5, -1),
(570, 6702009, 1032045, 5, -1),
(571, 6702009, 1102099, 20, -1),
(572, 6702009, 1102100, 20, -1),
(573, 6702009, 1102101, 50, -1),
(574, 6702009, 1102102, 50, -1),
(575, 6702009, 1102103, 50, -1),
(576, 6702009, 1102104, 50, -1),
(577, 6702009, 1102105, 50, -1),
(578, 6702009, 1102106, 50, -1),
(579, 6702009, 4021007, 5, -1),
(580, 6702009, 4021008, 5, -1),
(581, 6702009, 4020007, 5, -1),
(582, 6702009, 4020007, 5, -1),
(583, 6702009, 4011006, 5, -1),
(584, 6702009, 2040759, 50, -1),
(585, 6702009, 2041035, 20, -1),
(586, 6702009, 2041037, 20, -1),
(587, 6702009, 2041039, 20, -1),
(588, 6702009, 2041041, 20, -1),
(589, 6702009, 2000005, 5, -1),
(590, 6702009, 2022179, 4, -1),
(591, 6702009, 2022180, 5, -1),
(592, 6702009, 2022181, 5, -1),
(593, 6702009, 2022182, 5, -1),
(594, 6702009, 2000005, 5, -1),
(595, 6702009, 2020010, 5, -1),
(596, 6702009, 2020013, 5, -1),
(597, 6702009, 3010011, 50, -1),
(598, 6702009, 3012000, 100, -1),
(599, 6702009, 3012005, 100, -1),
(600, 6702010, 1032043, 5, -1),
(601, 6702010, 1032044, 5, -1),
(602, 6702010, 1032045, 5, -1),
(603, 6702010, 1102099, 20, -1),
(604, 6702010, 1102100, 20, -1),
(605, 6702010, 1102101, 50, -1),
(606, 6702010, 1102102, 50, -1),
(607, 6702010, 1102103, 50, -1),
(608, 6702010, 1102104, 50, -1),
(609, 6702010, 1102105, 50, -1),
(610, 6702010, 1102106, 50, -1),
(611, 6702010, 4021007, 5, -1),
(612, 6702010, 4021008, 5, -1),
(613, 6702010, 4020007, 5, -1),
(614, 6702010, 4020007, 5, -1),
(615, 6702010, 4011006, 5, -1),
(616, 6702010, 2040759, 50, -1),
(617, 6702010, 2041035, 20, -1),
(618, 6702010, 2041037, 20, -1),
(619, 6702010, 2041039, 20, -1),
(620, 6702010, 2041041, 20, -1),
(621, 6702010, 2000005, 5, -1),
(622, 6702010, 2022179, 4, -1),
(623, 6702010, 2022180, 5, -1),
(624, 6702010, 2022181, 5, -1),
(625, 6702010, 2022182, 5, -1),
(626, 6702010, 2000005, 5, -1),
(627, 6702010, 2020010, 5, -1),
(628, 6702010, 2020013, 5, -1),
(629, 6702010, 3010011, 50, -1),
(630, 6702010, 3012000, 100, -1),
(631, 6702010, 3012005, 100, -1),
(632, 6702011, 1032043, 5, -1),
(633, 6702011, 1032044, 5, -1),
(634, 6702011, 1032045, 5, -1),
(635, 6702011, 1102099, 20, -1),
(636, 6702011, 1102100, 20, -1),
(637, 6702011, 1102101, 50, -1),
(638, 6702011, 1102102, 50, -1),
(639, 6702011, 1102103, 50, -1),
(640, 6702011, 1102104, 50, -1),
(641, 6702011, 1102105, 50, -1),
(642, 6702011, 1102106, 50, -1),
(643, 6702011, 4021007, 5, -1),
(644, 6702011, 4021008, 5, -1),
(645, 6702011, 4020007, 5, -1),
(646, 6702011, 4020007, 5, -1),
(647, 6702011, 4011006, 5, -1),
(648, 6702011, 2040759, 50, -1),
(649, 6702011, 2041035, 20, -1),
(650, 6702011, 2041037, 20, -1),
(651, 6702011, 2041039, 20, -1),
(652, 6702011, 2041041, 20, -1),
(653, 6702011, 2000005, 5, -1),
(654, 6702011, 2022179, 4, -1),
(655, 6702011, 2022180, 5, -1),
(656, 6702011, 2022181, 5, -1),
(657, 6702011, 2022182, 5, -1),
(658, 6702011, 2000005, 5, -1),
(659, 6702011, 2020010, 5, -1),
(660, 6702011, 2020013, 5, -1),
(661, 6702011, 3010011, 50, -1),
(662, 6702011, 3012000, 100, -1),
(663, 6702011, 3012005, 100, -1),
(664, 6702012, 1032043, 5, -1),
(665, 6702012, 1032044, 5, -1),
(666, 6702012, 1032045, 5, -1),
(667, 6702012, 1102099, 20, -1),
(668, 6702012, 1102100, 20, -1),
(669, 6702012, 1102101, 50, -1),
(670, 6702012, 1102102, 50, -1),
(671, 6702012, 1102103, 50, -1),
(672, 6702012, 1102104, 50, -1),
(673, 6702012, 1102105, 50, -1),
(674, 6702012, 1102106, 50, -1),
(675, 6702012, 4021007, 5, -1),
(676, 6702012, 4021008, 5, -1),
(677, 6702012, 4020007, 5, -1),
(678, 6702012, 4020007, 5, -1),
(679, 6702012, 4011006, 5, -1),
(680, 6702012, 2040759, 50, -1),
(681, 6702012, 2041035, 20, -1),
(682, 6702012, 2041037, 20, -1),
(683, 6702012, 2041039, 20, -1),
(684, 6702012, 2041041, 20, -1),
(685, 6702012, 2000005, 5, -1),
(686, 6702012, 2022179, 5, -1),
(687, 6702012, 2022180, 5, -1),
(688, 6702012, 2022181, 5, -1),
(689, 6702012, 2022182, 5, -1),
(690, 6702012, 2000005, 5, -1),
(691, 6702012, 2020010, 5, -1),
(692, 6702012, 2020013, 5, -1),
(693, 6702012, 3010011, 50, -1),
(694, 6702012, 3012000, 100, -1),
(695, 6702012, 3012005, 100, -1),
(696, 1032000, 4001363, 1, -1),
(697, 1032000, 4001362, 1, -1),
(698, 2512000, 2022131, 1, -1),
(699, 2512000, 2022132, 1, -1),
(700, 2612002, 4001134, 1, -1),
(701, 2612001, 4001135, 1, -1),
(702, 9102002, 4001100, 3, -1),
(703, 9102002, 4001095, 3, -1),
(704, 9102003, 4001095, 3, -1),
(705, 9102003, 4001096, 3, -1),
(706, 9102004, 4001096, 3, -1),
(707, 9102004, 4001097, 3, -1),
(708, 9102005, 4001097, 3, -1),
(709, 9102005, 4001098, 3, -1),
(710, 9102006, 4001098, 3, -1),
(711, 9102006, 4001099, 3, -1),
(712, 9102007, 4001099, 3, -1),
(713, 9102007, 4001100, 3, -1),
(714, 2002001, 4001063, 1, -1),
(715, 2002002, 4001052, 1, -1),
(716, 2002003, 4001055, 1, -1),
(717, 2002004, 4001056, 1, -1),
(718, 2002005, 4001057, 1, -1),
(719, 2002006, 4001058, 1, -1),
(720, 2002007, 4001059, 1, -1),
(721, 2002008, 4001060, 1, -1),
(722, 2002009, 4001061, 1, -1),
(723, 2002010, 4001062, 1, -1),
(724, 2002011, 4001046, 1, -1),
(725, 2002012, 4001047, 1, -1),
(726, 2002013, 4001049, 1, -1),
(727, 2002017, 4001158, 1, -1),
(728, 2002018, 4001158, 1, -1),
(729, 2202004, 2000004, 5, -1),
(730, 2202004, 2000005, 10, -1),
(731, 2202004, 2020008, 1, -1),
(732, 2202004, 2020009, 1, -1),
(733, 2202004, 2020012, 1, -1),
(734, 2202004, 2020013, 1, -1),
(735, 2202004, 2020014, 1, -1),
(736, 2202004, 2020015, 1, -1),
(737, 2202004, 2001000, 1, -1),
(738, 2202004, 2001001, 1, -1),
(739, 2202004, 2001002, 1, -1),
(740, 2202004, 1102000, 100, -1),
(741, 2202004, 1102001, 100, -1),
(742, 2202004, 1102002, 100, -1),
(743, 2202004, 1102003, 100, -1),
(744, 2202004, 1102004, 100, -1),
(745, 2202004, 1102040, 300, -1),
(746, 2202004, 1102041, 300, -1),
(747, 2202004, 1102042, 300, -1),
(748, 2202004, 1102043, 100, -1),
(770, 9102000, 4031157, 1, 2074),
(750, 2202004, 1032012, 30, -1),
(751, 2202004, 1032013, 30, -1),
(752, 2202004, 2020009, 1, -1),
(753, 2202004, 2020010, 1, -1),
(754, 2202004, 2022003, 1, -1),
(755, 2202004, 1302020, 200, -1),
(756, 2202004, 1302030, 200, -1),
(757, 2202004, 1332025, 200, -1),
(758, 2202004, 1382009, 200, -1),
(759, 2202004, 1382012, 200, -1),
(760, 2202004, 1412011, 200, -1),
(761, 2202004, 1422014, 200, -1),
(762, 2202004, 1432012, 200, -1),
(763, 2202004, 1442024, 200, -1),
(764, 2202004, 1452016, 200, -1),
(765, 2202004, 1452022, 200, -1),
(766, 2202004, 1462014, 200, -1),
(767, 2202004, 1462019, 200, -1),
(768, 2202004, 1472030, 200, -1),
(769, 2202004, 1472032, 200, -1),
(771, 9102001, 4031158, 1, 2074),
(772, 2002014, 1102021, 200, -1),
(773, 2002014, 1102022, 200, -1),
(774, 2002014, 1102023, 200, -1),
(775, 2002014, 1102024, 200, -1),
(776, 2002014, 1002186, 200, -1),
(777, 2002014, 1102026, 200, -1),
(778, 2002014, 1102027, 200, -1),
(779, 2002014, 1102028, 200, -1),
(780, 2002014, 1102029, 200, -1),
(781, 2002014, 1102030, 200, -1),
(782, 2002014, 1102081, 200, -1),
(783, 2002014, 1102082, 200, -1),
(784, 2002014, 1102084, 200, -1),
(785, 2002014, 1102085, 200, -1),
(786, 2002014, 1102086, 200, -1),
(787, 2002014, 1102079, 200, -1),
(788, 2002014, 1432015, 200, -1),
(789, 2002014, 1432016, 200, -1),
(790, 2002014, 1432017, 200, -1),
(791, 2002014, 1432018, 200, -1),
(792, 2002014, 1302064, 300, -1),
(793, 2002014, 1312032, 300, -1),
(794, 2002014, 1322054, 300, -1),
(795, 2002014, 1332055, 300, -1),
(796, 2002014, 1332056, 300, -1),
(797, 2002014, 1372034, 300, -1),
(798, 2002014, 1382038, 300, -1),
(799, 2002014, 1382039, 300, -1),
(800, 2002014, 1402039, 300, -1),
(801, 2002014, 1412027, 300, -1),
(802, 2002014, 1422029, 300, -1),
(803, 2002014, 1432040, 300, -1),
(804, 2002014, 1442051, 300, -1),
(805, 2002014, 1452045, 300, -1),
(806, 2002014, 1462040, 300, -1),
(807, 2002014, 1472055, 300, -1),
(808, 2002014, 1442021, 300, -1),
(809, 2002014, 1442022, 300, -1),
(810, 2002014, 1442023, 300, -1),
(811, 2002014, 2012001, 200, -1),
(812, 2002014, 2041201, 200, -1),
(830, 2002014, 2041202, 200, -1),
(831, 2002014, 2041203, 200, -1),
(832, 2002014, 2041204, 200, -1),
(833, 2002014, 2041205, 200, -1),
(834, 2002014, 2041206, 200, -1),
(835, 2002014, 2041207, 200, -1),
(836, 2002014, 2041208, 200, -1),
(837, 2002014, 2041209, 200, -1),
(838, 2002014, 2041210, 200, -1),
(839, 2002014, 2041300, 200, -1),
(840, 2002014, 2041301, 200, -1),
(841, 2002014, 2041302, 200, -1),
(842, 2002014, 2041303, 200, -1),
(843, 2002014, 2041304, 200, -1),
(844, 2002014, 2041305, 200, -1),
(845, 2002014, 2041306, 200, -1),
(846, 2002014, 2041307, 200, -1),
(847, 2002014, 2041308, 200, -1),
(848, 2002014, 2041309, 200, -1),
(849, 2002014, 2041310, 200, -1),
(850, 2002014, 2041311, 200, -1),
(851, 2002014, 2041312, 200, -1),
(852, 2002014, 2041313, 200, -1),
(853, 2002014, 2041314, 200, -1),
(854, 2002014, 2041315, 200, -1),
(855, 2002014, 2041316, 200, -1),
(856, 2002014, 2041317, 200, -1),
(857, 2002014, 2041318, 200, -1),
(858, 2002014, 2041319, 200, -1),
(859, 2002014, 2041310, 200, -1),
(860, 2002014, 2000005, 200, -1),
(861, 2002014, 1112907, 200, -1),
(862, 2002014, 1332053, 300, -1),
(863, 2002014, 1092045, 300, -1),
(864, 2002014, 1092046, 300, -1),
(865, 2002014, 1092047, 300, -1),
(866, 2002014, 1402013, 300, -1),
(867, 2202004, 1482020, 300, -1),
(868, 2202004, 1482021, 300, -1),
(869, 2202004, 1492020, 300, -1),
(870, 2202004, 1492021, 300, -1),
(871, 6802000, 3010009, 1, -1),
(872, 6802000, 3994003, 1, -1),
(873, 6802000, 3994005, 1, -1),
(874, 6802000, 3994058, 1, -1),
(875, 6802000, 3994001, 1, -1),
(876, 6802000, 3994010, 1, -1),
(877, 6802000, 3994005, 1, -1),
(878, 6802000, 3994057, 1, -1),
(879, 6802001, 3994003, 1, -1),
(880, 6802001, 3994005, 1, -1),
(881, 6802001, 3994058, 1, -1),
(882, 7422000, 4031655, 1, 8689);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `readable_cheatlog`
-- (請參考以下實際畫面)
--
CREATE TABLE `readable_cheatlog` (
`accountname` varchar(30)
,`accountid` int(11)
,`name` varchar(20)
,`characterid` int(11)
,`offense` tinytext
,`count` int(11)
,`lastoffensetime` timestamp
,`param` tinytext
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `readable_last_hour_cheatlog`
-- (請參考以下實際畫面)
--
CREATE TABLE `readable_last_hour_cheatlog` (
`accountname` varchar(30)
,`accountid` int(11)
,`name` varchar(20)
,`characterid` int(11)
,`numrepos` decimal(32,0)
);

-- --------------------------------------------------------

--
-- 資料表結構 `regrocklocations`
--

CREATE TABLE `regrocklocations` (
  `trockid` int(11) NOT NULL,
  `characterid` int(11) DEFAULT NULL,
  `mapid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `regrocklocations`
--



-- --------------------------------------------------------

--
-- 資料表結構 `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `reporttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reporterid` int(11) NOT NULL,
  `victimid` int(11) NOT NULL,
  `reason` tinyint(4) NOT NULL,
  `chatlog` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `rings`
--

CREATE TABLE `rings` (
  `ringid` int(11) NOT NULL,
  `partnerRingId` int(11) NOT NULL DEFAULT '0',
  `partnerChrId` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `partnername` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `savedlocations`
--

CREATE TABLE `savedlocations` (
  `id` int(11) NOT NULL,
  `characterid` int(11) NOT NULL,
  `locationtype` int(11) NOT NULL DEFAULT '0',
  `map` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

--
-- 資料表的匯出資料 `savedlocations`
--


-- --------------------------------------------------------

--
-- 資料表結構 `shopitems`
--

CREATE TABLE `shopitems` (
  `shopitemid` int(10) UNSIGNED NOT NULL,
  `shopid` int(10) UNSIGNED NOT NULL,
  `itemid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `pitch` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL COMMENT 'sort is an arbitrary field designed to give leeway when modifying shops. The lowest number is 104 and it increments by 4 for each item to allow decent space for swapping/inserting/removing items.',
  `reqitem` int(11) NOT NULL,
  `reqitemq` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `shopitems`
--

INSERT INTO `shopitems` (`shopitemid`, `shopid`, `itemid`, `price`, `pitch`, `position`, `reqitem`, `reqitemq`) VALUES
(20024, 1, 1302000, 50, 1, 0, 0, 0),
(1, 1, 1312004, 50, 2, 0, 0, 0),
(2, 1, 1322005, 50, 3, 0, 0, 0),
(3, 1, 1332005, 50, 4, 0, 0, 0),
(4, 2, 2000000, 30, 1, 0, 0, 0),
(5, 2, 2000001, 150, 2, 0, 0, 0),
(6, 2, 2000002, 280, 3, 0, 0, 0),
(7, 2, 2010000, 30, 4, 0, 0, 0),
(8, 2, 2010002, 50, 5, 0, 0, 0),
(9, 3, 1040002, 50, 1, 0, 0, 0),
(10, 3, 1040006, 50, 2, 0, 0, 0),
(11, 3, 1040010, 50, 3, 0, 0, 0),
(12, 3, 1041002, 50, 4, 0, 0, 0),
(13, 3, 1041006, 50, 5, 0, 0, 0),
(14, 3, 1041010, 50, 6, 0, 0, 0),
(15, 3, 1041011, 50, 7, 0, 0, 0),
(16, 3, 1060002, 50, 8, 0, 0, 0),
(17, 3, 1060006, 50, 9, 0, 0, 0),
(18, 3, 1061002, 50, 10, 0, 0, 0),
(19, 3, 1061008, 50, 11, 0, 0, 0),
(20, 3, 1072001, 50, 12, 0, 0, 0),
(21, 3, 1072005, 50, 13, 0, 0, 0),
(22, 4, 1452002, 3000, 1, 0, 0, 0),
(23, 4, 1452003, 6000, 2, 0, 0, 0),
(24, 4, 1452001, 10000, 3, 0, 0, 0),
(25, 4, 1452000, 20000, 4, 0, 0, 0),
(26, 4, 1452005, 40000, 5, 0, 0, 0),
(183, 6, 2330000, 800, 1, 1, 0, 0),
(182, 6, 2070000, 500, 2, 0, 0, 0),
(29, 4, 1462001, 4000, 6, 0, 0, 0),
(30, 4, 1462002, 8000, 7, 0, 0, 0),
(31, 4, 1462003, 12000, 8, 0, 0, 0),
(32, 4, 1462000, 30000, 9, 0, 0, 0),
(33, 4, 1462004, 40000, 10, 0, 0, 0),
(180, 6, 2050001, 200, 3, 0, 0, 0),
(181, 6, 2050002, 300, 4, 0, 0, 0),
(36, 4, 1302007, 3000, 11, 0, 0, 0),
(37, 4, 1322007, 6000, 12, 0, 0, 0),
(38, 4, 1322008, 12000, 13, 0, 0, 0),
(39, 4, 1422004, 20000, 14, 0, 0, 0),
(40, 4, 1442004, 24000, 15, 0, 0, 0),
(41, 5, 1002008, 500, 1, 0, 0, 0),
(42, 5, 1002033, 3000, 2, 0, 0, 0),
(43, 5, 1002012, 3000, 3, 0, 0, 0),
(44, 5, 1002060, 3000, 4, 0, 0, 0),
(45, 5, 1002061, 3000, 5, 0, 0, 0),
(46, 5, 1002062, 3000, 6, 0, 0, 0),
(47, 5, 1002063, 3000, 7, 0, 0, 0),
(48, 5, 1002112, 4000, 8, 0, 0, 0),
(49, 5, 1002113, 4000, 9, 0, 0, 0),
(50, 5, 1002114, 4000, 10, 0, 0, 0),
(51, 5, 1002115, 4000, 11, 0, 0, 0),
(52, 5, 1002116, 4000, 12, 0, 0, 0),
(53, 5, 1002117, 9000, 13, 0, 0, 0),
(54, 5, 1002118, 9000, 14, 0, 0, 0),
(55, 5, 1002119, 9000, 15, 0, 0, 0),
(56, 5, 1002120, 9000, 16, 0, 0, 0),
(57, 5, 1002121, 9000, 17, 0, 0, 0),
(58, 5, 1002117, 30000, 18, 0, 0, 0),
(59, 5, 1002118, 30000, 19, 0, 0, 0),
(60, 5, 1002119, 30000, 20, 0, 0, 0),
(61, 5, 1002120, 30000, 21, 0, 0, 0),
(62, 5, 1002121, 30000, 22, 0, 0, 0),
(170, 6, 2010002, 50, 0, 0, 0, 0),
(171, 6, 2010001, 150, 0, 0, 0, 0),
(172, 6, 2010003, 60, 0, 0, 0, 0),
(173, 6, 2010004, 180, 0, 0, 0, 0),
(174, 6, 2020028, 3000, 0, 0, 0, 0),
(175, 6, 2030000, 400, 0, 0, 0, 0),
(176, 6, 2030004, 500, 0, 0, 0, 0),
(177, 6, 2060000, 1, 0, 0, 0, 0),
(178, 6, 2061000, 1, 0, 0, 0, 0),
(179, 6, 2050000, 200, 0, 0, 0, 0),
(73, 5, 1002010, 800, 0, 0, 0, 0),
(74, 5, 1002057, 800, 0, 0, 0, 0),
(75, 5, 1002156, 20000, 0, 0, 0, 0),
(76, 5, 1002157, 20000, 0, 0, 0, 0),
(77, 5, 1002158, 20000, 0, 0, 0, 0),
(78, 5, 1002159, 20000, 0, 0, 0, 0),
(79, 5, 1002160, 20000, 0, 0, 0, 0),
(80, 5, 1032001, 7000, 0, 0, 0, 0),
(81, 5, 1032003, 7000, 0, 0, 0, 0),
(82, 5, 1040008, 3200, 0, 0, 0, 0),
(83, 5, 1040071, 3200, 0, 0, 0, 0),
(84, 5, 1040007, 5500, 0, 0, 0, 0),
(85, 5, 1040011, 5500, 0, 0, 0, 0),
(86, 5, 1040003, 9000, 0, 0, 0, 0),
(87, 5, 1040022, 15000, 0, 0, 0, 0),
(88, 5, 1040023, 15000, 0, 0, 0, 0),
(89, 5, 1040024, 15000, 0, 0, 0, 0),
(90, 5, 1040025, 15000, 0, 0, 0, 0),
(91, 5, 1040067, 45000, 0, 0, 0, 0),
(92, 5, 1040068, 45000, 0, 0, 0, 0),
(93, 5, 1040069, 45000, 0, 0, 0, 0),
(94, 5, 1040070, 45000, 0, 0, 0, 0),
(95, 5, 1041007, 3200, 0, 0, 0, 0),
(96, 5, 1041061, 3200, 0, 0, 0, 0),
(97, 5, 1041062, 5500, 0, 0, 0, 0),
(98, 5, 1041063, 5500, 0, 0, 0, 0),
(99, 5, 1041013, 9000, 0, 0, 0, 0),
(100, 5, 1041027, 9000, 0, 0, 0, 0),
(101, 5, 1041028, 9000, 0, 0, 0, 0),
(102, 5, 1041032, 15000, 0, 0, 0, 0),
(103, 5, 1041033, 15000, 0, 0, 0, 0),
(104, 5, 1041034, 15000, 0, 0, 0, 0),
(105, 5, 1041035, 15000, 0, 0, 0, 0),
(106, 5, 1041054, 45000, 0, 0, 0, 0),
(107, 5, 1041055, 45000, 0, 0, 0, 0),
(108, 5, 1041056, 45000, 0, 0, 0, 0),
(157, 7, 2120000, 30, 0, 0, 0, 0),
(158, 7, 2260000, 1000, 0, 0, 0, 0),
(159, 6, 2000000, 30, 0, 0, 0, 0),
(160, 6, 2000001, 150, 0, 0, 0, 0),
(161, 6, 2000002, 280, 0, 0, 0, 0),
(162, 6, 2000003, 150, 0, 0, 0, 0),
(163, 6, 2000006, 385, 0, 0, 0, 0),
(164, 6, 2002000, 400, 0, 0, 0, 0),
(165, 6, 2002001, 400, 0, 0, 0, 0),
(166, 6, 2002002, 500, 0, 0, 0, 0),
(167, 6, 2002004, 500, 0, 0, 0, 0),
(168, 6, 2002005, 500, 0, 0, 0, 0),
(169, 6, 2010000, 30, 0, 0, 0, 0),
(122, 5, 1060005, 14000, 0, 0, 0, 0),
(123, 5, 1060056, 44000, 0, 0, 0, 0),
(124, 5, 1060057, 44000, 0, 0, 0, 0),
(125, 5, 1060058, 44000, 0, 0, 0, 0),
(126, 5, 1060059, 44000, 0, 0, 0, 0),
(127, 5, 1061009, 3000, 0, 0, 0, 0),
(128, 5, 1061057, 3000, 0, 0, 0, 0),
(129, 5, 1061006, 5000, 0, 0, 0, 0),
(130, 5, 1061058, 5000, 0, 0, 0, 0),
(131, 5, 1061059, 5000, 0, 0, 0, 0),
(132, 5, 1061050, 44000, 0, 0, 0, 0),
(133, 5, 1061051, 44000, 0, 0, 0, 0),
(134, 5, 1061052, 44000, 0, 0, 0, 0),
(135, 5, 1062002, 9000, 0, 0, 0, 0),
(136, 5, 1062006, 13000, 0, 0, 0, 0),
(137, 5, 1072015, 1800, 0, 0, 0, 0),
(138, 5, 1072059, 1800, 0, 0, 0, 0),
(139, 5, 1072016, 4500, 0, 0, 0, 0),
(140, 5, 1072060, 4500, 0, 0, 0, 0),
(141, 5, 1072061, 4500, 0, 0, 0, 0),
(142, 5, 1072025, 9000, 0, 0, 0, 0),
(143, 5, 1072026, 9000, 0, 0, 0, 0),
(144, 5, 1072068, 9000, 0, 0, 0, 0),
(145, 5, 1072034, 20000, 0, 0, 0, 0),
(146, 5, 1072069, 20000, 0, 0, 0, 0),
(147, 5, 1072079, 30000, 0, 0, 0, 0),
(148, 5, 1072080, 30000, 0, 0, 0, 0),
(149, 5, 1072081, 30000, 0, 0, 0, 0),
(150, 5, 1072082, 30000, 0, 0, 0, 0),
(151, 5, 1072083, 30000, 0, 0, 0, 0),
(152, 5, 1072012, 15000, 0, 0, 0, 0),
(153, 5, 1072054, 15000, 0, 0, 0, 0),
(154, 5, 1072055, 15000, 0, 0, 0, 0),
(155, 5, 1072018, 30000, 0, 0, 0, 0),
(156, 5, 1072064, 30000, 0, 0, 0, 0),
(184, 10, 2000000, 30, 0, 0, 0, 0),
(185, 10, 2000001, 150, 0, 0, 0, 0),
(186, 10, 2000002, 280, 0, 0, 0, 0),
(187, 10, 2000003, 150, 0, 0, 0, 0),
(188, 10, 2000006, 385, 0, 0, 0, 0),
(189, 10, 2002000, 500, 0, 0, 0, 0),
(190, 10, 2002001, 400, 0, 0, 0, 0),
(191, 10, 2002002, 500, 0, 0, 0, 0),
(192, 10, 2002004, 500, 0, 0, 0, 0),
(193, 10, 2002005, 500, 0, 0, 0, 0),
(194, 10, 2010000, 30, 0, 0, 0, 0),
(195, 10, 2010002, 50, 0, 0, 0, 0),
(196, 10, 2010001, 60, 0, 0, 0, 0),
(197, 10, 2010003, 150, 0, 0, 0, 0),
(198, 10, 2010004, 180, 0, 0, 0, 0),
(199, 10, 2020028, 3000, 0, 0, 0, 0),
(200, 10, 2030000, 400, 0, 0, 0, 0),
(201, 10, 2030002, 500, 0, 0, 0, 0),
(202, 10, 2060000, 1, 0, 0, 0, 0),
(203, 10, 2061000, 1, 0, 0, 0, 0),
(204, 10, 2050000, 200, 0, 0, 0, 0),
(205, 10, 2050001, 200, 0, 0, 0, 0),
(206, 10, 2050002, 300, 0, 0, 0, 0),
(207, 10, 2070000, 500, 0, 0, 0, 0),
(208, 10, 2330000, 800, 0, 1, 0, 0),
(209, 8, 1372005, 2000, 0, 0, 0, 0),
(210, 8, 1372006, 5000, 0, 0, 0, 0),
(211, 8, 1372002, 9000, 0, 0, 0, 0),
(212, 8, 1372004, 18000, 0, 0, 0, 0),
(213, 8, 1372003, 38000, 0, 0, 0, 0),
(214, 8, 1372005, 3000, 0, 0, 0, 0),
(215, 8, 1382003, 6000, 0, 0, 0, 0),
(216, 8, 1382005, 6000, 0, 0, 0, 0),
(217, 8, 1382004, 10000, 0, 0, 0, 0),
(218, 8, 1382002, 20000, 0, 0, 0, 0),
(219, 8, 1322002, 10000, 0, 0, 0, 0),
(220, 9, 1002017, 1200, 0, 0, 0, 0),
(221, 9, 1002102, 3000, 0, 0, 0, 0),
(222, 9, 1002103, 3000, 0, 0, 0, 0),
(223, 9, 1002104, 3000, 0, 0, 0, 0),
(224, 9, 1002105, 3000, 0, 0, 0, 0),
(225, 9, 1002106, 3000, 0, 0, 0, 0),
(226, 9, 1002016, 20000, 0, 0, 0, 0),
(1958, 43, 2330000, 800, 0, 1, 0, 0),
(1959, 43, 2070000, 500, 0, 1, 0, 0),
(1960, 43, 2061001, 10, 0, 0, 0, 0),
(1961, 43, 2060001, 10, 0, 0, 0, 0),
(1964, 43, 2061000, 1, 0, 0, 0, 0),
(232, 9, 1040004, 2000, 0, 0, 0, 0),
(233, 9, 1040017, 2000, 0, 0, 0, 0),
(234, 9, 1040018, 8500, 0, 0, 0, 0),
(235, 9, 1040019, 8500, 0, 0, 0, 0),
(236, 9, 1040020, 8500, 0, 0, 0, 0),
(237, 9, 1041015, 2000, 0, 0, 0, 0),
(238, 9, 1041016, 2000, 0, 0, 0, 0),
(239, 9, 1041017, 4000, 0, 0, 0, 0),
(240, 9, 1041018, 4000, 0, 0, 0, 0),
(241, 9, 1041025, 4000, 0, 0, 0, 0),
(242, 9, 1041026, 4000, 0, 0, 0, 0),
(243, 9, 1040018, 8500, 0, 0, 0, 0),
(244, 9, 1040020, 8500, 0, 0, 0, 0),
(245, 9, 1041031, 8500, 0, 0, 0, 0),
(246, 9, 1041041, 42000, 0, 0, 0, 0),
(247, 9, 1041042, 42000, 0, 0, 0, 0),
(248, 9, 1041043, 42000, 0, 0, 0, 0),
(249, 9, 1050008, 7000, 0, 0, 0, 0),
(250, 9, 1050009, 7000, 0, 0, 0, 0),
(251, 9, 1050010, 7000, 0, 0, 0, 0),
(252, 9, 1050001, 16000, 0, 0, 0, 0),
(253, 9, 1050023, 16000, 0, 0, 0, 0),
(254, 9, 1050024, 16000, 0, 0, 0, 0),
(255, 9, 1050025, 16000, 0, 0, 0, 0),
(256, 9, 1050003, 60000, 0, 0, 0, 0),
(257, 9, 1050026, 60000, 0, 0, 0, 0),
(258, 9, 1050027, 60000, 0, 0, 0, 0),
(259, 9, 1050028, 60000, 0, 0, 0, 0),
(260, 9, 1051004, 16000, 0, 0, 0, 0),
(261, 9, 1051005, 16000, 0, 0, 0, 0),
(262, 9, 1051003, 16000, 0, 0, 0, 0),
(263, 9, 1060012, 2000, 0, 0, 0, 0),
(264, 9, 1060013, 2000, 0, 0, 0, 0),
(265, 9, 1060014, 8000, 0, 0, 0, 0),
(266, 9, 1060015, 8000, 0, 0, 0, 0),
(267, 9, 1061010, 2000, 0, 0, 0, 0),
(268, 9, 1061011, 2000, 0, 0, 0, 0),
(269, 9, 1061012, 4000, 0, 0, 0, 0),
(270, 9, 1061013, 4000, 0, 0, 0, 0),
(271, 9, 1061021, 4000, 0, 0, 0, 0),
(272, 9, 1061022, 4000, 0, 0, 0, 0),
(273, 9, 1061027, 8000, 0, 0, 0, 0),
(274, 9, 1061028, 8000, 0, 0, 0, 0),
(275, 9, 1061034, 40000, 0, 0, 0, 0),
(276, 9, 1061035, 40000, 0, 0, 0, 0),
(277, 9, 1061036, 40000, 0, 0, 0, 0),
(278, 9, 1072006, 1500, 0, 0, 0, 0),
(279, 9, 1072044, 1500, 0, 0, 0, 0),
(280, 9, 1072045, 1500, 0, 0, 0, 0),
(281, 9, 1072023, 4000, 0, 0, 0, 0),
(282, 9, 1072024, 4000, 0, 0, 0, 0),
(283, 9, 1072019, 9000, 0, 0, 0, 0),
(284, 9, 1072020, 9000, 0, 0, 0, 0),
(285, 9, 1072021, 9000, 0, 0, 0, 0),
(286, 9, 1072072, 20000, 0, 0, 0, 0),
(287, 9, 1072073, 20000, 0, 0, 0, 0),
(288, 9, 1072074, 20000, 0, 0, 0, 0),
(289, 11, 2020001, 150, 0, 0, 0, 0),
(290, 11, 2020005, 320, 0, 0, 0, 0),
(291, 11, 2020003, 225, 0, 0, 0, 0),
(292, 11, 2020004, 225, 0, 0, 0, 0),
(293, 11, 2022003, 770, 0, 0, 0, 0),
(294, 11, 2020000, 420, 0, 0, 0, 0),
(295, 11, 2022000, 1155, 0, 0, 0, 0),
(296, 11, 2020002, 320, 0, 0, 0, 0),
(297, 11, 2060000, 1, 0, 0, 0, 0),
(298, 11, 2061000, 1, 0, 0, 0, 0),
(299, 11, 2030000, 400, 0, 0, 0, 0),
(300, 11, 2070000, 500, 0, 0, 0, 0),
(301, 11, 2330000, 800, 0, 1, 0, 0),
(302, 12, 2000000, 30, 0, 0, 0, 0),
(303, 12, 2000001, 150, 0, 0, 0, 0),
(304, 12, 2000002, 260, 0, 0, 0, 0),
(305, 12, 2000003, 150, 0, 0, 0, 0),
(306, 12, 2000006, 385, 0, 0, 0, 0),
(307, 12, 2010000, 30, 0, 0, 0, 0),
(308, 12, 2010002, 50, 0, 0, 0, 0),
(309, 12, 2010001, 60, 0, 0, 0, 0),
(310, 12, 2010003, 150, 0, 0, 0, 0),
(311, 12, 2010004, 180, 0, 0, 0, 0),
(312, 12, 2022000, 1155, 0, 0, 0, 0),
(313, 12, 2022003, 770, 0, 0, 0, 0),
(314, 12, 2030000, 400, 0, 0, 0, 0),
(315, 12, 2030006, 600, 0, 0, 0, 0),
(316, 12, 2061000, 1, 0, 0, 0, 0),
(317, 12, 2060000, 1, 0, 0, 0, 0),
(318, 12, 2070000, 500, 0, 0, 0, 0),
(319, 12, 2330000, 800, 0, 1, 0, 0),
(320, 13, 2040000, 35000, 1, 0, 0, 0),
(321, 13, 2040400, 35000, 2, 0, 0, 0),
(322, 13, 2040600, 35000, 3, 0, 0, 0),
(323, 13, 2040700, 35000, 4, 0, 0, 0),
(324, 13, 2040300, 35000, 5, 0, 0, 0),
(325, 13, 2044500, 70000, 6, 0, 0, 0),
(326, 13, 2044600, 70000, 7, 0, 0, 0),
(327, 13, 2043800, 70000, 8, 0, 0, 0),
(328, 15, 1442007, 12000, 0, 108, 0, 0),
(329, 15, 1442006, 8000, 0, 112, 0, 0),
(330, 15, 1442000, 3000, 0, 116, 0, 0),
(331, 15, 1432001, 7000, 0, 120, 0, 0),
(332, 15, 1432000, 3000, 0, 124, 0, 0),
(333, 15, 1422004, 20000, 0, 128, 0, 0),
(334, 15, 1422006, 10000, 0, 132, 0, 0),
(335, 15, 1422003, 10000, 0, 136, 0, 0),
(336, 15, 1422002, 6000, 0, 140, 0, 0),
(337, 15, 1422000, 3000, 0, 144, 0, 0),
(338, 15, 1412006, 45000, 0, 148, 0, 0),
(339, 15, 1412000, 22000, 0, 152, 0, 0),
(340, 15, 1412002, 10000, 0, 156, 0, 0),
(341, 15, 1412001, 3000, 0, 160, 0, 0),
(342, 15, 1402008, 22000, 0, 164, 0, 0),
(343, 15, 1402000, 12000, 0, 168, 0, 0),
(344, 15, 1402001, 3000, 0, 172, 0, 0),
(345, 15, 1322014, 40000, 0, 176, 0, 0),
(346, 15, 1322004, 22000, 0, 180, 0, 0),
(347, 15, 1322002, 10000, 0, 184, 0, 0),
(348, 15, 1322000, 6000, 0, 188, 0, 0),
(349, 15, 1312005, 40000, 0, 192, 0, 0),
(350, 15, 1312003, 20000, 0, 196, 0, 0),
(351, 15, 1312001, 6000, 0, 200, 0, 0),
(352, 15, 1332010, 22000, 0, 204, 0, 0),
(353, 15, 1332008, 10000, 0, 208, 0, 0),
(354, 15, 1332006, 7000, 0, 212, 0, 0),
(355, 15, 1302008, 40000, 0, 216, 0, 0),
(356, 15, 1302003, 20000, 0, 220, 0, 0),
(357, 15, 1302006, 10000, 0, 224, 0, 0),
(358, 15, 1302002, 10000, 0, 228, 0, 0),
(359, 15, 1302005, 6000, 0, 232, 0, 0),
(360, 15, 1302007, 3000, 0, 236, 0, 0),
(361, 14, 1092000, 6000, 0, 104, 0, 0),
(362, 14, 1092005, 4000, 0, 108, 0, 0),
(363, 14, 1072011, 15000, 0, 112, 0, 0),
(364, 14, 1072047, 10000, 0, 116, 0, 0),
(365, 14, 1072046, 10000, 0, 120, 0, 0),
(366, 14, 1072007, 10000, 0, 124, 0, 0),
(367, 14, 1072050, 5000, 0, 128, 0, 0),
(368, 14, 1072009, 5000, 0, 132, 0, 0),
(369, 14, 1061020, 14000, 0, 136, 0, 0),
(370, 14, 1061019, 14000, 0, 140, 0, 0),
(371, 14, 1061015, 14000, 0, 144, 0, 0),
(372, 14, 1061018, 9000, 0, 148, 0, 0),
(373, 14, 1061017, 9000, 0, 152, 0, 0),
(374, 14, 1061016, 9000, 0, 156, 0, 0),
(375, 14, 1061023, 3000, 0, 160, 0, 0),
(376, 14, 1061014, 3000, 0, 164, 0, 0),
(377, 14, 1060019, 38000, 0, 168, 0, 0),
(378, 14, 1060018, 38000, 0, 172, 0, 0),
(379, 14, 1060017, 38000, 0, 176, 0, 0),
(380, 14, 1060016, 38000, 0, 180, 0, 0),
(381, 14, 1060060, 14000, 0, 184, 0, 0),
(382, 14, 1060030, 14000, 0, 188, 0, 0),
(383, 14, 1060011, 14000, 0, 192, 0, 0),
(384, 14, 1060029, 9000, 0, 196, 0, 0),
(385, 14, 1060010, 9000, 0, 200, 0, 0),
(386, 14, 1060027, 5000, 0, 204, 0, 0),
(387, 14, 1060009, 5000, 0, 208, 0, 0),
(388, 14, 1060028, 3000, 0, 212, 0, 0),
(389, 14, 1051013, 60000, 0, 220, 0, 0),
(390, 14, 1051012, 60000, 0, 224, 0, 0),
(391, 14, 1051011, 60000, 0, 228, 0, 0),
(392, 14, 1051010, 60000, 0, 232, 0, 0),
(393, 14, 1051000, 8000, 0, 236, 0, 0),
(394, 14, 1050011, 70000, 0, 240, 0, 0),
(395, 14, 1050007, 15000, 0, 244, 0, 0),
(396, 14, 1050006, 15000, 0, 248, 0, 0),
(397, 14, 1050005, 15000, 0, 252, 0, 0),
(398, 14, 1041024, 16000, 0, 256, 0, 0),
(399, 14, 1041023, 16000, 0, 260, 0, 0),
(400, 14, 1041022, 16000, 0, 264, 0, 0),
(401, 14, 1041021, 9000, 0, 268, 0, 0),
(402, 14, 1041020, 9000, 0, 272, 0, 0),
(403, 14, 1041019, 9000, 0, 276, 0, 0),
(404, 14, 1041064, 3200, 0, 280, 0, 0),
(405, 14, 1041014, 3200, 0, 284, 0, 0),
(406, 14, 1040026, 40000, 0, 288, 0, 0),
(407, 14, 1040021, 40000, 0, 292, 0, 0),
(408, 14, 1040041, 16000, 0, 296, 0, 0),
(409, 14, 1040016, 16000, 0, 300, 0, 0),
(410, 14, 1040040, 16000, 0, 304, 0, 0),
(411, 14, 1040039, 9000, 0, 308, 0, 0),
(412, 14, 1040012, 9000, 0, 312, 0, 0),
(413, 14, 1040037, 5500, 0, 316, 0, 0),
(414, 14, 1040009, 5500, 0, 320, 0, 0),
(415, 14, 1040038, 3200, 0, 324, 0, 0),
(416, 14, 1040015, 3200, 0, 328, 0, 0),
(417, 14, 1002005, 19000, 0, 332, 0, 0),
(418, 14, 1002027, 11500, 0, 336, 0, 0),
(419, 14, 1002059, 8500, 0, 340, 0, 0),
(420, 14, 1002055, 8700, 0, 344, 0, 0),
(421, 14, 1002051, 3500, 0, 348, 0, 0),
(422, 14, 1002039, 2700, 0, 352, 0, 0),
(423, 14, 1002043, 2400, 0, 356, 0, 0),
(424, 15, 1442004, 24000, 0, 104, 0, 0),
(425, 15, 1442007, 12000, 0, 108, 0, 0),
(426, 16, 2330000, 800, 0, 1, 0, 0),
(427, 16, 2070000, 500, 0, 1, 0, 0),
(428, 16, 2050002, 300, 0, 0, 0, 0),
(429, 16, 2050001, 200, 0, 0, 0, 0),
(430, 16, 2050000, 200, 0, 0, 0, 0),
(431, 16, 2061000, 1, 0, 0, 0, 0),
(432, 16, 2060000, 1, 0, 0, 0, 0),
(433, 16, 2030003, 500, 0, 0, 0, 0),
(434, 16, 2030000, 400, 0, 0, 0, 0),
(435, 16, 2010004, 180, 0, 0, 0, 0),
(436, 16, 2010003, 60, 0, 0, 0, 0),
(437, 16, 2010001, 150, 0, 0, 0, 0),
(438, 16, 2010002, 50, 0, 0, 0, 0),
(439, 16, 2010000, 30, 0, 0, 0, 0),
(450, 16, 2002005, 500, 0, 0, 0, 0),
(451, 16, 2002004, 500, 0, 0, 0, 0),
(452, 16, 2002002, 500, 0, 0, 0, 0),
(453, 16, 2002001, 400, 0, 0, 0, 0),
(454, 16, 2002000, 500, 0, 0, 0, 0),
(455, 16, 2000006, 385, 0, 0, 0, 0),
(456, 16, 2000003, 150, 0, 0, 0, 0),
(457, 16, 2000002, 280, 0, 0, 0, 0),
(458, 16, 2000001, 150, 0, 0, 0, 0),
(459, 16, 2000000, 30, 0, 0, 0, 0),
(460, 17, 1472000, 3000, 0, 104, 0, 0),
(461, 17, 1442000, 3000, 0, 108, 0, 0),
(462, 17, 1432001, 7000, 0, 112, 0, 0),
(463, 17, 1432000, 3000, 0, 116, 0, 0),
(464, 17, 1422000, 3000, 0, 120, 0, 0),
(465, 17, 1412001, 3000, 0, 124, 0, 0),
(466, 17, 1402001, 3000, 0, 128, 0, 0),
(467, 17, 1322009, 20000, 0, 132, 0, 0),
(468, 17, 1332009, 42000, 0, 136, 0, 0),
(469, 17, 1332012, 40000, 0, 140, 0, 0),
(470, 17, 1332004, 38000, 0, 144, 0, 0),
(471, 17, 1332010, 22000, 0, 148, 0, 0),
(472, 17, 1332013, 15000, 0, 152, 0, 0),
(473, 17, 1332008, 10000, 0, 156, 0, 0),
(474, 17, 1332002, 8000, 0, 160, 0, 0),
(475, 17, 1332006, 7000, 0, 164, 0, 0),
(476, 17, 1332000, 4000, 0, 168, 0, 0),
(477, 17, 1302007, 3000, 0, 172, 0, 0),
(478, 18, 1072066, 9000, 0, 104, 0, 0),
(479, 18, 1072065, 9000, 0, 108, 0, 0),
(480, 18, 1072022, 9000, 0, 112, 0, 0),
(481, 18, 1072031, 4500, 0, 116, 0, 0),
(482, 18, 1072030, 4500, 0, 120, 0, 0),
(483, 18, 1072029, 4500, 0, 124, 0, 0),
(484, 18, 1072028, 4500, 0, 128, 0, 0),
(485, 18, 1072043, 2000, 0, 132, 0, 0),
(486, 18, 1072042, 2000, 0, 136, 0, 0),
(487, 18, 1072004, 2000, 0, 140, 0, 0),
(488, 18, 1072071, 1800, 0, 144, 0, 0),
(489, 18, 1072070, 1800, 0, 148, 0, 0),
(490, 18, 1061046, 40000, 0, 152, 0, 0),
(491, 18, 1061045, 40000, 0, 156, 0, 0),
(492, 18, 1061044, 40000, 0, 160, 0, 0),
(493, 18, 1061043, 40000, 0, 164, 0, 0),
(494, 18, 1061056, 18000, 0, 168, 0, 0),
(495, 18, 1061055, 18000, 0, 172, 0, 0),
(496, 18, 1061054, 18000, 0, 176, 0, 0),
(497, 18, 1061053, 18000, 0, 180, 0, 0),
(498, 18, 1061042, 12000, 0, 184, 0, 0),
(499, 18, 1061041, 12000, 0, 188, 0, 0),
(500, 18, 1061040, 12000, 0, 192, 0, 0),
(501, 18, 1061033, 8000, 0, 196, 0, 0),
(502, 18, 1061032, 8000, 0, 200, 0, 0),
(503, 18, 1061003, 8000, 0, 204, 0, 0),
(504, 18, 1061038, 4800, 0, 208, 0, 0),
(505, 18, 1061037, 4800, 0, 212, 0, 0),
(506, 18, 1061031, 2800, 0, 216, 0, 0),
(507, 18, 1061030, 2800, 0, 220, 0, 0),
(508, 18, 1061029, 2800, 0, 224, 0, 0),
(509, 18, 1060046, 40000, 0, 228, 0, 0),
(510, 18, 1060045, 40000, 0, 232, 0, 0),
(511, 18, 1060044, 40000, 0, 236, 0, 0),
(512, 18, 1060043, 40000, 0, 240, 0, 0),
(513, 18, 1060039, 19000, 0, 244, 0, 0),
(514, 18, 1060038, 19000, 0, 248, 0, 0),
(515, 18, 1060037, 19000, 0, 252, 0, 0),
(516, 18, 1060033, 8000, 0, 256, 0, 0),
(517, 18, 1060032, 8000, 0, 260, 0, 0),
(518, 18, 1060031, 8000, 0, 264, 0, 0),
(519, 18, 1060025, 4800, 0, 268, 0, 0),
(520, 18, 1060024, 4800, 0, 272, 0, 0),
(521, 18, 1060023, 2800, 0, 276, 0, 0),
(522, 18, 1060022, 2800, 0, 280, 0, 0),
(523, 18, 1060021, 2800, 0, 284, 0, 0),
(524, 18, 1041050, 45000, 0, 288, 0, 0),
(525, 18, 1041049, 45000, 0, 292, 0, 0),
(526, 18, 1041048, 45000, 0, 296, 0, 0),
(527, 18, 1041047, 45000, 0, 300, 0, 0),
(528, 18, 1041060, 18000, 0, 304, 0, 0),
(529, 18, 1041059, 18000, 0, 308, 0, 0),
(530, 18, 1041058, 18000, 0, 312, 0, 0),
(531, 18, 1041057, 18000, 0, 316, 0, 0),
(532, 18, 1041040, 9000, 0, 320, 0, 0),
(533, 18, 1041039, 9000, 0, 324, 0, 0),
(534, 18, 1041003, 9000, 0, 328, 0, 0),
(535, 18, 1041045, 5000, 0, 332, 0, 0),
(536, 18, 1041044, 5000, 0, 336, 0, 0),
(537, 18, 1041038, 3000, 0, 340, 0, 0),
(538, 18, 1041037, 3000, 0, 344, 0, 0),
(539, 18, 1041036, 3000, 0, 348, 0, 0),
(540, 18, 1040060, 45000, 0, 352, 0, 0),
(541, 18, 1040059, 45000, 0, 356, 0, 0),
(542, 18, 1040058, 45000, 0, 360, 0, 0),
(543, 18, 1040057, 45000, 0, 364, 0, 0),
(544, 18, 1040050, 16000, 0, 368, 0, 0),
(545, 18, 1040049, 16000, 0, 372, 0, 0),
(546, 18, 1040048, 16000, 0, 376, 0, 0),
(547, 18, 1040044, 9000, 0, 380, 0, 0),
(548, 18, 1040043, 9000, 0, 384, 0, 0),
(549, 18, 1040042, 9000, 0, 388, 0, 0),
(550, 18, 1040035, 5000, 0, 392, 0, 0),
(551, 18, 1040034, 5000, 0, 396, 0, 0),
(552, 18, 1040033, 3000, 0, 400, 0, 0),
(553, 18, 1040032, 3000, 0, 404, 0, 0),
(554, 18, 1040031, 3000, 0, 408, 0, 0),
(555, 18, 1002175, 30000, 0, 412, 0, 0),
(556, 18, 1002174, 30000, 0, 416, 0, 0),
(557, 18, 1002173, 30000, 0, 420, 0, 0),
(558, 18, 1002172, 30000, 0, 424, 0, 0),
(559, 18, 1002171, 30000, 0, 428, 0, 0),
(560, 18, 1002150, 20000, 0, 432, 0, 0),
(561, 18, 1002149, 20000, 0, 436, 0, 0),
(562, 18, 1002148, 20000, 0, 440, 0, 0),
(563, 18, 1002147, 20000, 0, 444, 0, 0),
(564, 18, 1002146, 20000, 0, 448, 0, 0),
(565, 18, 1002097, 7400, 0, 452, 0, 0),
(566, 18, 1002096, 7400, 0, 456, 0, 0),
(567, 18, 1002020, 7400, 0, 460, 0, 0),
(568, 18, 1002131, 12000, 0, 464, 0, 0),
(569, 18, 1002130, 12000, 0, 468, 0, 0),
(570, 18, 1002129, 12000, 0, 472, 0, 0),
(571, 18, 1002128, 12000, 0, 476, 0, 0),
(572, 18, 1002127, 12000, 0, 480, 0, 0),
(573, 18, 1002111, 4000, 0, 484, 0, 0),
(574, 18, 1002110, 4000, 0, 488, 0, 0),
(575, 18, 1002109, 4000, 0, 492, 0, 0),
(576, 18, 1002108, 4000, 0, 496, 0, 0),
(577, 18, 1002107, 4000, 0, 500, 0, 0),
(578, 18, 1002001, 3000, 0, 504, 0, 0),
(579, 18, 1002126, 900, 0, 508, 0, 0),
(580, 18, 1002125, 900, 0, 512, 0, 0),
(581, 18, 1002124, 900, 0, 516, 0, 0),
(582, 18, 1002123, 900, 0, 520, 0, 0),
(583, 18, 1002122, 900, 0, 524, 0, 0),
(584, 19, 2330000, 800, 0, 1, 0, 0),
(585, 19, 2070000, 500, 0, 1, 0, 0),
(586, 19, 2050002, 300, 0, 0, 0, 0),
(587, 19, 2050001, 200, 0, 0, 0, 0),
(588, 19, 2050000, 200, 0, 0, 0, 0),
(589, 19, 2061000, 1, 0, 0, 0, 0),
(590, 19, 2060000, 1, 0, 0, 0, 0),
(591, 19, 2030005, 500, 0, 0, 0, 0),
(592, 19, 2030000, 400, 0, 0, 0, 0),
(593, 19, 2010004, 180, 0, 0, 0, 0),
(594, 19, 2010003, 60, 0, 0, 0, 0),
(595, 19, 2010001, 150, 0, 0, 0, 0),
(596, 19, 2010002, 50, 0, 0, 0, 0),
(597, 19, 2010000, 30, 0, 0, 0, 0),
(598, 19, 2002005, 500, 0, 0, 0, 0),
(599, 19, 2002004, 500, 0, 0, 0, 0),
(600, 19, 2002002, 500, 0, 0, 0, 0),
(601, 19, 2002001, 400, 0, 0, 0, 0),
(602, 19, 2002000, 500, 0, 0, 0, 0),
(603, 19, 2000006, 385, 0, 0, 0, 0),
(604, 19, 2000003, 150, 0, 0, 0, 0),
(605, 19, 2000002, 280, 0, 0, 0, 0),
(606, 19, 2000001, 150, 0, 0, 0, 0),
(607, 19, 2000000, 30, 0, 0, 0, 0),
(608, 20, 2330000, 800, 0, 1, 0, 0),
(609, 20, 2000000, 30, 0, 0, 0, 0),
(610, 20, 2070000, 500, 0, 1, 0, 0),
(611, 20, 2061000, 1, 0, 0, 0, 0),
(612, 20, 2060000, 1, 0, 0, 0, 0),
(613, 20, 2030001, 500, 0, 0, 0, 0),
(614, 20, 2030000, 400, 0, 0, 0, 0),
(615, 20, 2020028, 3000, 0, 0, 0, 0),
(616, 20, 2010004, 180, 0, 0, 0, 0),
(617, 20, 2010003, 60, 0, 0, 0, 0),
(618, 20, 2010001, 106, 0, 0, 0, 0),
(619, 20, 2010002, 50, 0, 0, 0, 0),
(620, 20, 2010000, 30, 0, 0, 0, 0),
(621, 20, 2002005, 500, 0, 0, 0, 0),
(622, 20, 2002004, 500, 0, 0, 0, 0),
(623, 20, 2002002, 500, 0, 0, 0, 0),
(624, 20, 2002001, 400, 0, 0, 0, 0),
(625, 20, 2002000, 500, 0, 0, 0, 0),
(626, 20, 2000006, 385, 0, 0, 0, 0),
(627, 20, 2000003, 150, 0, 0, 0, 0),
(628, 20, 2000002, 280, 0, 0, 0, 0),
(629, 20, 2000001, 150, 0, 0, 0, 0),
(630, 21, 1332007, 1000, 0, 104, 0, 0),
(631, 21, 1312000, 3000, 0, 108, 0, 0),
(632, 21, 1302007, 3000, 0, 112, 0, 0),
(633, 21, 1322005, 50, 0, 116, 0, 0),
(634, 21, 1312004, 50, 0, 120, 0, 0),
(635, 21, 1302000, 50, 0, 124, 0, 0),
(636, 22, 3010001, 1000, 0, 104, 0, 0),
(637, 22, 1092003, 2000, 0, 108, 0, 0),
(638, 22, 1072063, 10000, 0, 112, 0, 0),
(639, 22, 1072062, 10000, 0, 116, 0, 0),
(640, 22, 1072017, 10000, 0, 120, 0, 0),
(641, 22, 1072049, 5000, 0, 124, 0, 0),
(642, 22, 1072048, 5000, 0, 128, 0, 0),
(643, 22, 1072008, 5000, 0, 132, 0, 0),
(644, 22, 1072005, 50, 0, 136, 0, 0),
(645, 22, 1072038, 50, 0, 140, 0, 0),
(646, 22, 1072037, 50, 0, 144, 0, 0),
(647, 22, 1072001, 50, 0, 148, 0, 0),
(648, 22, 1062001, 4800, 0, 152, 0, 0),
(649, 22, 1062000, 4800, 0, 156, 0, 0),
(650, 22, 1060004, 2800, 0, 160, 0, 0),
(651, 22, 1060007, 1000, 0, 164, 0, 0),
(652, 22, 1041012, 3000, 0, 168, 0, 0),
(653, 22, 1041004, 3000, 0, 172, 0, 0),
(654, 22, 1040014, 3000, 0, 176, 0, 0),
(655, 22, 1040013, 3000, 0, 180, 0, 0),
(656, 22, 1002001, 3000, 0, 184, 0, 0),
(657, 22, 1002019, 2000, 0, 188, 0, 0),
(658, 22, 1002134, 800, 0, 192, 0, 0),
(659, 22, 1002133, 800, 0, 196, 0, 0),
(660, 22, 1002132, 800, 0, 200, 0, 0),
(661, 22, 1002069, 450, 0, 204, 0, 0),
(662, 22, 1002068, 450, 0, 208, 0, 0),
(663, 22, 1002067, 450, 0, 212, 0, 0),
(664, 22, 1002066, 450, 0, 216, 0, 0),
(665, 22, 1002014, 1000, 0, 220, 0, 0),
(666, 22, 1002008, 500, 0, 224, 0, 0),
(667, 23, 2330000, 800, 0, 1, 0, 0),
(668, 23, 2070000, 500, 0, 1, 0, 0),
(669, 23, 2061000, 1, 0, 0, 0, 0),
(670, 23, 2060000, 1, 0, 0, 0, 0),
(671, 23, 2030019, 500, 0, 0, 0, 0),
(672, 23, 2030000, 400, 0, 0, 0, 0),
(673, 23, 2020028, 3000, 0, 0, 0, 0),
(674, 23, 2010004, 180, 0, 0, 0, 0),
(675, 23, 2010003, 60, 0, 0, 0, 0),
(676, 23, 2010001, 150, 0, 0, 0, 0),
(677, 23, 2010002, 50, 0, 0, 0, 0),
(678, 23, 2010000, 30, 0, 0, 0, 0),
(679, 23, 2002005, 500, 0, 0, 0, 0),
(680, 23, 2002004, 500, 0, 0, 0, 0),
(681, 23, 2002002, 500, 0, 0, 0, 0),
(682, 23, 2002001, 400, 0, 0, 0, 0),
(683, 23, 2002000, 500, 0, 0, 0, 0),
(684, 23, 2000006, 385, 0, 0, 0, 0),
(685, 23, 2000003, 180, 0, 0, 0, 0),
(686, 23, 2000002, 280, 0, 0, 0, 0),
(687, 23, 2000001, 150, 0, 0, 0, 0),
(688, 23, 2000000, 30, 0, 0, 0, 0),
(689, 25, 1322007, 6000, 0, 104, 0, 0),
(690, 25, 1302007, 3000, 0, 108, 0, 0),
(691, 25, 1442004, 24000, 0, 112, 0, 0),
(692, 25, 1482004, 52000, 0, 116, 0, 0),
(693, 25, 1482003, 20000, 0, 120, 0, 0),
(694, 25, 1482002, 10000, 0, 124, 0, 0),
(695, 25, 1482001, 6000, 0, 128, 0, 0),
(696, 25, 1482000, 3000, 0, 132, 0, 0),
(697, 25, 1492004, 50000, 0, 136, 0, 0),
(698, 25, 1492003, 22000, 0, 140, 0, 0),
(699, 25, 1492002, 10000, 0, 144, 0, 0),
(700, 25, 1492001, 6000, 0, 148, 0, 0),
(701, 25, 1492000, 3000, 0, 152, 0, 0),
(702, 24, 1072288, 8000, 0, 104, 0, 0),
(703, 24, 1072285, 5000, 0, 108, 0, 0),
(704, 24, 1052107, 60000, 0, 112, 0, 0),
(705, 24, 1052104, 30000, 0, 116, 0, 0),
(706, 24, 1052101, 16000, 0, 120, 0, 0),
(707, 24, 1052098, 8000, 0, 124, 0, 0),
(708, 24, 1052095, 4000, 0, 128, 0, 0),
(709, 24, 1002619, 20000, 0, 132, 0, 0),
(710, 24, 1002616, 12000, 0, 136, 0, 0),
(711, 24, 1002613, 4000, 0, 140, 0, 0),
(712, 24, 1002610, 900, 0, 144, 0, 0),
(713, 26, 2330000, 800, 0, 1, 0, 0),
(714, 26, 2070000, 500, 0, 1, 0, 0),
(715, 26, 2050002, 300, 0, 0, 0, 0),
(716, 26, 2050001, 200, 0, 0, 0, 0),
(717, 26, 2050000, 200, 0, 0, 0, 0),
(718, 26, 2061000, 1, 0, 0, 0, 0),
(719, 26, 2060000, 1, 0, 0, 0, 0),
(720, 26, 2030000, 400, 0, 0, 0, 0),
(721, 26, 2120008, 200, 0, 0, 0, 0),
(722, 26, 2010004, 180, 0, 0, 0, 0),
(723, 26, 2010003, 60, 0, 0, 0, 0),
(724, 26, 2010001, 150, 0, 0, 0, 0),
(725, 26, 2010002, 50, 0, 0, 0, 0),
(726, 26, 2010000, 30, 0, 0, 0, 0),
(727, 26, 2002005, 500, 0, 0, 0, 0),
(728, 26, 2002004, 500, 0, 0, 0, 0),
(729, 26, 2002002, 500, 0, 0, 0, 0),
(730, 26, 2002001, 400, 0, 0, 0, 0),
(731, 26, 2002000, 500, 0, 0, 0, 0),
(732, 26, 2000006, 385, 0, 0, 0, 0),
(733, 26, 2000003, 150, 0, 0, 0, 0),
(734, 26, 2000002, 280, 0, 0, 0, 0),
(735, 26, 2000001, 150, 0, 0, 0, 0),
(736, 26, 2000000, 30, 0, 0, 0, 0),
(737, 27, 1072005, 50, 0, 104, 0, 0),
(738, 27, 1072001, 50, 0, 108, 0, 0),
(739, 27, 1061008, 50, 0, 112, 0, 0),
(740, 27, 1061002, 50, 0, 116, 0, 0),
(741, 27, 1060006, 50, 0, 120, 0, 0),
(742, 27, 1060002, 50, 0, 124, 0, 0),
(743, 27, 1041011, 50, 0, 128, 0, 0),
(744, 27, 1041010, 50, 0, 132, 0, 0),
(745, 27, 1041006, 50, 0, 136, 0, 0),
(746, 27, 1041002, 50, 0, 140, 0, 0),
(747, 27, 1040010, 50, 0, 144, 0, 0),
(748, 27, 1040006, 50, 0, 148, 0, 0),
(749, 27, 1040002, 50, 0, 152, 0, 0),
(750, 27, 1332005, 500, 0, 156, 0, 0),
(751, 27, 1322005, 50, 0, 160, 0, 0),
(752, 27, 1312004, 50, 0, 164, 0, 0),
(753, 27, 1302000, 50, 0, 168, 0, 0),
(754, 28, 2330000, 800, 0, 1, 0, 0),
(755, 28, 2070000, 500, 0, 1, 0, 0),
(756, 28, 2050002, 300, 0, 0, 0, 0),
(757, 28, 2050001, 200, 0, 0, 0, 0),
(758, 28, 2050000, 200, 0, 0, 0, 0),
(759, 28, 2061000, 1, 0, 0, 0, 0),
(760, 28, 2060000, 1, 0, 0, 0, 0),
(761, 28, 2000000, 30, 0, 0, 0, 0),
(762, 28, 2030000, 400, 0, 0, 0, 0),
(763, 28, 2020028, 3000, 0, 0, 0, 0),
(764, 28, 2010004, 180, 0, 0, 0, 0),
(765, 28, 2010003, 60, 0, 0, 0, 0),
(766, 28, 2010001, 150, 0, 0, 0, 0),
(767, 28, 2010002, 50, 0, 0, 0, 0),
(768, 28, 2010000, 30, 0, 0, 0, 0),
(769, 28, 2002005, 500, 0, 0, 0, 0),
(770, 28, 2002004, 500, 0, 0, 0, 0),
(771, 28, 2002002, 500, 0, 0, 0, 0),
(772, 28, 2002001, 400, 0, 0, 0, 0),
(773, 28, 2002000, 500, 0, 0, 0, 0),
(774, 28, 2000006, 385, 0, 0, 0, 0),
(775, 28, 2000003, 150, 0, 0, 0, 0),
(776, 28, 2000002, 280, 0, 0, 0, 0),
(777, 28, 2000001, 150, 0, 0, 0, 0),
(778, 29, 1442000, 3000, 0, 0, 0, 0),
(779, 29, 1442006, 8000, 0, 0, 0, 0),
(780, 29, 1442007, 12000, 0, 0, 0, 0),
(781, 29, 1040002, 50, 0, 0, 0, 0),
(782, 29, 1040006, 50, 0, 0, 0, 0),
(783, 29, 1040010, 50, 0, 0, 0, 0),
(784, 29, 1041002, 50, 0, 0, 0, 0),
(785, 29, 1041006, 50, 0, 0, 0, 0),
(786, 29, 1041010, 50, 0, 0, 0, 0),
(787, 29, 1041011, 50, 0, 0, 0, 0),
(788, 29, 1060002, 50, 0, 0, 0, 0),
(789, 29, 1060006, 50, 0, 0, 0, 0),
(790, 29, 1061002, 50, 0, 0, 0, 0),
(791, 29, 1061008, 50, 0, 0, 0, 0),
(792, 29, 1072001, 50, 0, 0, 0, 0),
(793, 29, 1072005, 50, 0, 0, 0, 0),
(794, 30, 2000000, 30, 0, 0, 0, 0),
(795, 30, 2000001, 150, 0, 0, 0, 0),
(796, 30, 2000002, 280, 0, 0, 0, 0),
(797, 30, 2000003, 150, 0, 0, 0, 0),
(798, 30, 2000006, 385, 0, 0, 0, 0),
(799, 30, 2002000, 500, 0, 0, 0, 0),
(800, 30, 2002001, 400, 0, 0, 0, 0),
(801, 30, 2002002, 500, 0, 0, 0, 0),
(802, 30, 2002004, 500, 0, 0, 0, 0),
(803, 30, 2002005, 500, 0, 0, 0, 0),
(805, 30, 2010002, 50, 0, 0, 0, 0),
(806, 30, 2010001, 150, 0, 0, 0, 0),
(807, 30, 2010003, 60, 0, 0, 0, 0),
(808, 30, 2010004, 180, 0, 0, 0, 0),
(809, 30, 2030000, 400, 0, 0, 0, 0),
(810, 30, 2050000, 200, 0, 0, 0, 0),
(811, 30, 2050001, 200, 0, 0, 0, 0),
(812, 30, 2050002, 300, 0, 0, 0, 0),
(813, 30, 2070000, 500, 0, 1, 0, 0),
(814, 30, 2330000, 800, 0, 1, 0, 0),
(804, 30, 2010000, 30, 0, 0, 0, 0),
(815, 31, 2330000, 800, 0, 1, 0, 0),
(816, 31, 2070000, 500, 0, 1, 0, 0),
(817, 31, 2061001, 10, 0, 0, 0, 0),
(818, 31, 2060001, 10, 0, 0, 0, 0),
(819, 31, 2061000, 1, 0, 0, 0, 0),
(820, 31, 2060000, 1, 0, 0, 0, 0),
(821, 31, 2030000, 400, 0, 0, 0, 0),
(822, 31, 2022000, 1155, 0, 0, 0, 0),
(823, 31, 2022003, 770, 0, 0, 0, 0),
(824, 31, 2020015, 10608, 0, 0, 0, 0),
(825, 31, 2020014, 8424, 0, 0, 0, 0),
(826, 31, 2020013, 5600, 0, 0, 0, 0),
(827, 31, 2020012, 4680, 0, 0, 0, 0),
(828, 31, 2010004, 180, 0, 0, 0, 0),
(829, 31, 2010003, 60, 0, 0, 0, 0),
(830, 31, 2010002, 50, 0, 0, 0, 0),
(831, 31, 2010001, 150, 0, 0, 0, 0),
(832, 31, 2010000, 30, 0, 0, 0, 0),
(833, 31, 2001002, 4000, 0, 0, 0, 0),
(834, 31, 2001001, 2300, 0, 0, 0, 0),
(835, 31, 2001000, 3200, 0, 0, 0, 0),
(836, 31, 2002011, 1200, 0, 0, 0, 0),
(837, 31, 2002005, 400, 0, 0, 0, 0),
(838, 31, 2002004, 500, 0, 0, 0, 0),
(839, 31, 2002002, 400, 0, 0, 0, 0),
(840, 31, 2002001, 400, 0, 0, 0, 0),
(841, 31, 2002000, 400, 0, 0, 0, 0),
(842, 31, 2000006, 385, 0, 0, 0, 0),
(843, 31, 2000003, 150, 0, 0, 0, 0),
(844, 31, 2000002, 280, 0, 0, 0, 0),
(845, 31, 2000001, 150, 0, 0, 0, 0),
(846, 31, 2000000, 30, 0, 0, 0, 0),
(847, 32, 1002625, 75000, 0, 104, 0, 0),
(848, 32, 1052113, 120000, 0, 108, 0, 0),
(849, 32, 1052110, 100000, 0, 112, 0, 0),
(850, 32, 1061069, 160000, 0, 116, 0, 0),
(851, 32, 1061070, 160000, 0, 120, 0, 0),
(852, 32, 1060072, 160000, 0, 124, 0, 0),
(853, 32, 1060071, 160000, 0, 128, 0, 0),
(854, 32, 1060052, 108000, 0, 132, 0, 0),
(855, 32, 1060050, 108000, 0, 136, 0, 0),
(856, 32, 1060051, 108000, 0, 140, 0, 0),
(857, 32, 1051009, 111000, 0, 144, 0, 0),
(858, 32, 1051008, 111000, 0, 148, 0, 0),
(859, 32, 1051007, 111000, 0, 152, 0, 0),
(860, 32, 1041074, 180000, 0, 156, 0, 0),
(861, 32, 1041075, 180000, 0, 160, 0, 0),
(862, 32, 1040083, 180000, 0, 164, 0, 0),
(863, 32, 1040082, 180000, 0, 168, 0, 0),
(864, 32, 1040061, 114000, 0, 172, 0, 0),
(865, 32, 1040062, 114000, 0, 176, 0, 0),
(866, 32, 1040063, 114000, 0, 180, 0, 0),
(867, 32, 1002180, 100000, 0, 184, 0, 0),
(868, 32, 1002179, 100000, 0, 188, 0, 0),
(869, 32, 1002178, 100000, 0, 192, 0, 0),
(870, 32, 1002177, 100000, 0, 196, 0, 0),
(871, 32, 1002176, 100000, 0, 200, 0, 0),
(872, 32, 1061080, 160000, 0, 204, 0, 0),
(873, 32, 1061081, 160000, 0, 208, 0, 0),
(874, 32, 1061062, 108000, 0, 212, 0, 0),
(875, 32, 1061060, 108000, 0, 216, 0, 0),
(876, 32, 1061064, 108000, 0, 220, 0, 0),
(877, 32, 1061061, 108000, 0, 224, 0, 0),
(878, 32, 1060069, 160000, 0, 228, 0, 0),
(879, 32, 1060070, 160000, 0, 232, 0, 0),
(880, 32, 1060063, 108000, 0, 236, 0, 0),
(881, 32, 1060061, 108000, 0, 240, 0, 0),
(882, 32, 1060065, 108000, 0, 244, 0, 0),
(883, 32, 1060062, 108000, 0, 248, 0, 0),
(884, 32, 1041081, 180000, 0, 252, 0, 0),
(885, 32, 1041082, 180000, 0, 256, 0, 0),
(886, 32, 1041067, 114000, 0, 260, 0, 0),
(887, 32, 1041065, 114000, 0, 264, 0, 0),
(888, 32, 1041069, 114000, 0, 268, 0, 0),
(889, 32, 1041066, 114000, 0, 272, 0, 0),
(890, 32, 1040079, 180000, 0, 276, 0, 0),
(891, 32, 1040081, 180000, 0, 280, 0, 0),
(892, 32, 1040076, 114000, 0, 284, 0, 0),
(893, 32, 1040074, 114000, 0, 288, 0, 0),
(894, 32, 1040073, 114000, 0, 292, 0, 0),
(895, 32, 1040072, 114000, 0, 296, 0, 0),
(896, 32, 1002137, 100000, 0, 300, 0, 0),
(897, 32, 1002135, 100000, 0, 304, 0, 0),
(898, 32, 1002139, 100000, 0, 308, 0, 0),
(899, 32, 1002138, 100000, 0, 312, 0, 0),
(900, 32, 1061047, 120000, 0, 316, 0, 0),
(901, 32, 1061048, 120000, 0, 320, 0, 0),
(902, 32, 1051027, 450000, 0, 324, 0, 0),
(903, 32, 1051024, 450000, 0, 328, 0, 0),
(904, 32, 1051025, 450000, 0, 332, 0, 0),
(905, 32, 1051023, 450000, 0, 336, 0, 0),
(906, 32, 1050037, 450000, 0, 340, 0, 0),
(907, 32, 1050036, 450000, 0, 344, 0, 0),
(908, 32, 1050038, 450000, 0, 348, 0, 0),
(909, 32, 1050035, 450000, 0, 352, 0, 0),
(910, 32, 1050002, 300000, 0, 356, 0, 0),
(911, 32, 1050031, 300000, 0, 360, 0, 0),
(912, 32, 1041051, 120000, 0, 364, 0, 0),
(913, 32, 1041052, 120000, 0, 368, 0, 0),
(914, 32, 1002144, 96000, 0, 372, 0, 0),
(915, 32, 1002143, 96000, 0, 376, 0, 0),
(916, 32, 1002142, 96000, 0, 380, 0, 0),
(917, 32, 1002141, 96000, 0, 384, 0, 0),
(918, 32, 1092002, 200000, 0, 388, 0, 0),
(919, 32, 1092001, 100000, 0, 392, 0, 0),
(920, 32, 1061084, 180000, 0, 396, 0, 0),
(921, 32, 1061083, 180000, 0, 400, 0, 0),
(922, 32, 1060074, 180000, 0, 404, 0, 0),
(923, 32, 1060075, 180000, 0, 408, 0, 0),
(924, 32, 1051014, 112500, 0, 412, 0, 0),
(925, 32, 1051001, 112500, 0, 416, 0, 0),
(926, 32, 1050021, 112500, 0, 420, 0, 0),
(927, 32, 1050000, 112500, 0, 424, 0, 0),
(928, 32, 1041085, 200000, 0, 428, 0, 0),
(929, 32, 1041084, 200000, 0, 432, 0, 0),
(930, 32, 1040085, 200000, 0, 436, 0, 0),
(931, 32, 1040000, 200000, 0, 440, 0, 0),
(932, 32, 1002004, 160000, 0, 444, 0, 0),
(933, 33, 2061001, 10, 0, 104, 0, 0),
(934, 33, 2060001, 10, 0, 108, 0, 0),
(935, 33, 2061000, 1, 0, 120, 0, 0),
(936, 33, 2060000, 1, 0, 124, 0, 0),
(937, 33, 2120000, 30, 0, 128, 0, 0),
(938, 33, 2020015, 10608, 0, 132, 0, 0),
(939, 33, 2020014, 8424, 0, 136, 0, 0),
(940, 33, 2020013, 5824, 0, 140, 0, 0),
(941, 33, 2020012, 4680, 0, 144, 0, 0),
(942, 33, 2022000, 1155, 0, 148, 0, 0),
(943, 33, 2022003, 1144, 0, 152, 0, 0),
(944, 33, 2020006, 503, 0, 156, 0, 0),
(945, 33, 2020005, 304, 0, 160, 0, 0),
(946, 33, 2020004, 427, 0, 164, 0, 0),
(947, 33, 2020003, 427, 0, 168, 0, 0),
(948, 33, 2020002, 304, 0, 172, 0, 0),
(949, 33, 2020001, 209, 0, 176, 0, 0),
(950, 33, 2010002, 50, 0, 180, 0, 0),
(951, 33, 2010001, 150, 0, 184, 0, 0),
(952, 33, 2002010, 475, 0, 188, 0, 0),
(953, 33, 2002009, 570, 0, 192, 0, 0),
(954, 33, 2002008, 570, 0, 196, 0, 0),
(955, 33, 2002007, 570, 0, 200, 0, 0),
(956, 33, 2002006, 570, 0, 204, 0, 0),
(957, 33, 2001002, 4000, 0, 208, 0, 0),
(958, 33, 2001001, 2300, 0, 212, 0, 0),
(959, 33, 2000006, 385, 0, 216, 0, 0),
(960, 33, 2000011, 385, 0, 220, 0, 0),
(961, 33, 2000003, 150, 0, 224, 0, 0),
(962, 33, 2000010, 150, 0, 228, 0, 0),
(963, 33, 2000002, 280, 0, 232, 0, 0),
(964, 33, 2000009, 280, 0, 236, 0, 0),
(965, 33, 2000001, 150, 0, 240, 0, 0),
(966, 33, 2000008, 150, 0, 244, 0, 0),
(967, 33, 2000000, 30, 0, 248, 0, 0),
(968, 33, 2000007, 50, 0, 252, 0, 0),
(969, 34, 2044700, 70000, 0, 104, 0, 0),
(970, 34, 2043300, 70000, 0, 108, 0, 0),
(971, 34, 2044400, 70000, 0, 112, 0, 0),
(972, 34, 2044300, 70000, 0, 116, 0, 0),
(973, 34, 2044200, 70000, 0, 120, 0, 0),
(974, 34, 2044100, 70000, 0, 124, 0, 0),
(975, 34, 2044000, 70000, 0, 128, 0, 0),
(976, 34, 2043200, 70000, 0, 132, 0, 0),
(977, 34, 2043100, 70000, 0, 136, 0, 0),
(978, 34, 2043000, 70000, 0, 140, 0, 0),
(979, 34, 2040703, 35000, 0, 144, 0, 0),
(980, 34, 2040700, 35000, 0, 148, 0, 0),
(981, 34, 2040600, 35000, 0, 152, 0, 0),
(982, 34, 2040500, 35000, 0, 156, 0, 0),
(983, 34, 2040003, 35000, 0, 160, 0, 0),
(984, 34, 2040000, 35000, 0, 164, 0, 0),
(985, 35, 2044900, 70000, 0, 104, 0, 0),
(986, 35, 2044800, 70000, 0, 108, 0, 0),
(987, 35, 2044700, 70000, 0, 112, 0, 0),
(988, 35, 2044600, 70000, 0, 116, 0, 0),
(989, 35, 2044500, 70000, 0, 120, 0, 0),
(990, 35, 2044400, 70000, 0, 124, 0, 0),
(991, 35, 2044300, 70000, 0, 128, 0, 0),
(992, 35, 2044200, 70000, 0, 132, 0, 0),
(993, 35, 2044100, 70000, 0, 136, 0, 0),
(994, 35, 2044000, 70000, 0, 140, 0, 0),
(995, 35, 2043800, 70000, 0, 144, 0, 0),
(996, 35, 2043700, 70000, 0, 148, 0, 0),
(997, 35, 2043300, 70000, 0, 152, 0, 0),
(998, 35, 2043200, 70000, 0, 156, 0, 0),
(999, 35, 2043100, 70000, 0, 160, 0, 0),
(1000, 35, 2043000, 70000, 0, 164, 0, 0),
(1001, 35, 2041003, 35000, 0, 168, 0, 0),
(1002, 35, 2041000, 35000, 0, 172, 0, 0),
(1003, 35, 2040900, 35000, 0, 176, 0, 0),
(1004, 35, 2040800, 35000, 0, 180, 0, 0),
(1005, 35, 2040700, 35000, 0, 184, 0, 0),
(1006, 35, 2040600, 35000, 0, 188, 0, 0),
(1007, 35, 2040503, 35000, 0, 192, 0, 0),
(1008, 35, 2040400, 35000, 0, 196, 0, 0),
(1009, 35, 2040300, 35000, 0, 200, 0, 0),
(1010, 35, 2040003, 35000, 0, 204, 0, 0),
(1011, 36, 2044900, 70000, 0, 104, 0, 0),
(1012, 36, 2044800, 70000, 0, 108, 0, 0),
(1013, 36, 2044700, 70000, 0, 112, 0, 0),
(1014, 36, 2044600, 70000, 0, 116, 0, 0),
(1015, 36, 2044500, 70000, 0, 120, 0, 0),
(1016, 36, 2044400, 70000, 0, 124, 0, 0),
(1017, 36, 2044300, 70000, 0, 128, 0, 0),
(1018, 36, 2044200, 70000, 0, 132, 0, 0),
(1019, 36, 2044100, 70000, 0, 136, 0, 0),
(1020, 36, 2044000, 70000, 0, 140, 0, 0),
(1021, 36, 2043800, 70000, 0, 144, 0, 0),
(1022, 36, 2043700, 70000, 0, 148, 0, 0),
(1023, 36, 2043300, 70000, 0, 152, 0, 0),
(1024, 36, 2043200, 70000, 0, 156, 0, 0),
(1025, 36, 2043100, 70000, 0, 160, 0, 0),
(1026, 36, 2043000, 70000, 0, 164, 0, 0),
(1027, 36, 2040706, 35000, 0, 168, 0, 0),
(1028, 36, 2040703, 35000, 0, 172, 0, 0),
(1029, 36, 2041003, 35000, 0, 176, 0, 0),
(1030, 36, 2041000, 35000, 0, 180, 0, 0),
(1031, 36, 2040900, 35000, 0, 184, 0, 0),
(1032, 36, 2040600, 35000, 0, 188, 0, 0),
(1033, 36, 2040400, 35000, 0, 192, 0, 0),
(1034, 36, 2040300, 35000, 0, 196, 0, 0),
(1035, 36, 2040000, 35000, 0, 200, 0, 0),
(1037, 37, 2070000, 500, 0, 1, 0, 0),
(1039, 37, 2060001, 10, 0, 0, 0, 0),
(1038, 37, 2061001, 10, 0, 0, 0, 0),
(1041, 37, 2060000, 1, 0, 0, 0, 0),
(1040, 37, 2061000, 1, 0, 0, 0, 0),
(1036, 37, 2330000, 800, 0, 1, 0, 0),
(1042, 37, 2030000, 400, 0, 0, 0, 0),
(1043, 37, 2022000, 1650, 0, 0, 0, 0),
(1044, 37, 2022003, 770, 0, 0, 0, 0),
(1045, 37, 2020015, 10200, 0, 0, 0, 0),
(1046, 37, 2020014, 8424, 0, 0, 0, 0),
(1047, 37, 2020013, 5824, 0, 0, 0, 0),
(1048, 37, 2020012, 4680, 0, 0, 0, 0),
(1049, 37, 2010004, 180, 0, 0, 0, 0),
(1050, 37, 2010003, 60, 0, 0, 0, 0),
(1051, 37, 2010001, 150, 0, 0, 0, 0),
(1052, 37, 2010002, 50, 0, 0, 0, 0),
(1053, 37, 2010000, 30, 0, 0, 0, 0),
(1054, 37, 2001002, 4000, 0, 0, 0, 0),
(1055, 37, 2001001, 2300, 0, 0, 0, 0),
(1056, 37, 2001000, 3200, 0, 0, 0, 0),
(1057, 37, 2002005, 500, 0, 0, 0, 0),
(1058, 37, 2002004, 500, 0, 0, 0, 0),
(1059, 37, 2002002, 500, 0, 0, 0, 0),
(1060, 37, 2002001, 400, 0, 0, 0, 0),
(1061, 37, 2002000, 500, 0, 0, 0, 0),
(1062, 37, 2000006, 385, 0, 0, 0, 0),
(1063, 37, 2000003, 150, 0, 0, 0, 0),
(1064, 37, 2000002, 320, 0, 0, 0, 0),
(1065, 37, 2000001, 150, 0, 0, 0, 0),
(1066, 37, 2000000, 50, 0, 0, 0, 0),
(1067, 39, 1492006, 160000, 0, 104, 0, 0),
(1068, 39, 1492005, 100000, 0, 108, 0, 0),
(1069, 39, 1482006, 150000, 0, 112, 0, 0),
(1070, 39, 1482005, 100000, 0, 116, 0, 0),
(1071, 39, 1472007, 60000, 0, 120, 0, 0),
(1072, 39, 1472004, 30000, 0, 124, 0, 0),
(1073, 39, 1462005, 250000, 0, 128, 0, 0),
(1074, 39, 1462004, 200000, 0, 132, 0, 0),
(1075, 39, 1452007, 375000, 0, 136, 0, 0),
(1076, 39, 1452006, 250000, 0, 140, 0, 0),
(1077, 39, 1442009, 300000, 0, 144, 0, 0),
(1078, 39, 1442003, 175000, 0, 148, 0, 0),
(1079, 39, 1432005, 225000, 0, 152, 0, 0),
(1080, 39, 1432003, 175000, 0, 156, 0, 0),
(1081, 39, 1422007, 250000, 0, 160, 0, 0),
(1082, 39, 1422008, 200000, 0, 164, 0, 0),
(1083, 39, 1412005, 250000, 0, 168, 0, 0),
(1084, 39, 1412004, 200000, 0, 172, 0, 0),
(1085, 39, 1402007, 450000, 0, 176, 0, 0),
(1086, 39, 1402006, 350000, 0, 180, 0, 0),
(1087, 39, 1372000, 400000, 0, 184, 0, 0),
(1088, 39, 1372001, 175000, 0, 188, 0, 0),
(1089, 39, 1332011, 425000, 0, 192, 0, 0),
(1090, 39, 1332014, 375000, 0, 196, 0, 0),
(1091, 39, 1332001, 200000, 0, 200, 0, 0),
(1092, 39, 1322016, 175000, 0, 204, 0, 0),
(1093, 39, 1322015, 100000, 0, 208, 0, 0),
(1094, 39, 1312007, 175000, 0, 212, 0, 0),
(1095, 39, 1312006, 100000, 0, 216, 0, 0),
(1096, 39, 1302009, 225000, 0, 220, 0, 0),
(1097, 39, 1302004, 100000, 0, 224, 0, 0),
(1098, 38, 1002625, 75000, 0, 104, 0, 0),
(1099, 38, 1052113, 120000, 0, 108, 0, 0),
(1100, 38, 1052110, 100000, 0, 112, 0, 0),
(1101, 38, 1052107, 90000, 0, 116, 0, 0),
(1102, 38, 1061069, 160000, 0, 120, 0, 0),
(1103, 38, 1061070, 160000, 0, 124, 0, 0),
(1104, 38, 1060072, 160000, 0, 128, 0, 0),
(1105, 38, 1060071, 160000, 0, 132, 0, 0),
(1106, 38, 1060052, 108000, 0, 136, 0, 0),
(1107, 38, 1060050, 108000, 0, 140, 0, 0),
(1108, 38, 1060051, 108000, 0, 144, 0, 0),
(1109, 38, 1051009, 111000, 0, 148, 0, 0),
(1110, 38, 1051008, 111000, 0, 152, 0, 0),
(1111, 38, 1051007, 111000, 0, 156, 0, 0),
(1112, 38, 1041074, 180000, 0, 160, 0, 0),
(1113, 38, 1041075, 180000, 0, 164, 0, 0),
(1114, 38, 1040083, 180000, 0, 168, 0, 0),
(1115, 38, 1040082, 180000, 0, 172, 0, 0),
(1116, 38, 1040061, 114000, 0, 176, 0, 0),
(1117, 38, 1040062, 114000, 0, 180, 0, 0),
(1118, 38, 1040063, 114000, 0, 184, 0, 0),
(1119, 38, 1002180, 100000, 0, 188, 0, 0),
(1120, 38, 1002179, 100000, 0, 192, 0, 0),
(1121, 38, 1002178, 100000, 0, 196, 0, 0),
(1122, 38, 1002177, 100000, 0, 200, 0, 0),
(1123, 38, 1002176, 100000, 0, 204, 0, 0),
(1124, 38, 1061080, 160000, 0, 208, 0, 0),
(1125, 38, 1061081, 160000, 0, 212, 0, 0),
(1126, 38, 1061062, 108000, 0, 216, 0, 0),
(1127, 38, 1061060, 108000, 0, 220, 0, 0),
(1128, 38, 1061064, 108000, 0, 224, 0, 0),
(1129, 38, 1061061, 108000, 0, 228, 0, 0),
(1130, 38, 1060069, 160000, 0, 232, 0, 0),
(1131, 38, 1060070, 160000, 0, 236, 0, 0),
(1132, 38, 1060063, 108000, 0, 240, 0, 0),
(1133, 38, 1060061, 108000, 0, 244, 0, 0),
(1134, 38, 1060065, 108000, 0, 248, 0, 0),
(1135, 38, 1060062, 108000, 0, 252, 0, 0),
(1136, 38, 1041081, 180000, 0, 256, 0, 0),
(1137, 38, 1041082, 180000, 0, 260, 0, 0),
(1138, 38, 1041067, 114000, 0, 264, 0, 0),
(1139, 38, 1041065, 114000, 0, 268, 0, 0),
(1140, 38, 1041069, 114000, 0, 272, 0, 0),
(1141, 38, 1041066, 114000, 0, 276, 0, 0),
(1142, 38, 1040079, 180000, 0, 280, 0, 0),
(1143, 38, 1040081, 180000, 0, 284, 0, 0),
(1144, 38, 1040076, 114000, 0, 288, 0, 0),
(1145, 38, 1040074, 114000, 0, 292, 0, 0),
(1146, 38, 1040073, 114000, 0, 296, 0, 0),
(1147, 38, 1040072, 114000, 0, 300, 0, 0),
(1148, 38, 1002137, 100000, 0, 304, 0, 0),
(1149, 38, 1002135, 100000, 0, 308, 0, 0),
(1150, 38, 1002139, 100000, 0, 312, 0, 0),
(1151, 38, 1002138, 100000, 0, 316, 0, 0),
(1152, 38, 1061047, 120000, 0, 320, 0, 0),
(1153, 38, 1061048, 120000, 0, 324, 0, 0),
(1154, 38, 1051027, 450000, 0, 328, 0, 0),
(1155, 38, 1051024, 450000, 0, 332, 0, 0),
(1156, 38, 1051025, 450000, 0, 336, 0, 0),
(1157, 38, 1051023, 450000, 0, 340, 0, 0),
(1158, 38, 1050037, 450000, 0, 344, 0, 0),
(1159, 38, 1050036, 450000, 0, 348, 0, 0),
(1160, 38, 1050038, 450000, 0, 352, 0, 0),
(1161, 38, 1050035, 450000, 0, 356, 0, 0),
(1162, 38, 1050002, 300000, 0, 360, 0, 0),
(1163, 38, 1050031, 300000, 0, 364, 0, 0),
(1164, 38, 1041051, 120000, 0, 368, 0, 0),
(1165, 38, 1041052, 120000, 0, 372, 0, 0),
(1166, 38, 1002144, 96000, 0, 376, 0, 0),
(1167, 38, 1002143, 96000, 0, 380, 0, 0),
(1168, 38, 1002142, 96000, 0, 384, 0, 0),
(1169, 38, 1002141, 96000, 0, 388, 0, 0),
(1170, 38, 1092002, 200000, 0, 392, 0, 0),
(1171, 38, 1092001, 100000, 0, 396, 0, 0),
(1172, 38, 1061084, 180000, 0, 400, 0, 0),
(1173, 38, 1061083, 180000, 0, 404, 0, 0),
(1174, 38, 1060074, 180000, 0, 408, 0, 0),
(1175, 38, 1060075, 180000, 0, 412, 0, 0),
(1176, 38, 1051014, 112500, 0, 416, 0, 0),
(1177, 38, 1051001, 112500, 0, 420, 0, 0),
(1178, 38, 1050021, 112500, 0, 424, 0, 0),
(1179, 38, 1050000, 112500, 0, 428, 0, 0),
(1180, 38, 1041085, 200000, 0, 432, 0, 0),
(1181, 38, 1041084, 200000, 0, 436, 0, 0),
(1182, 38, 1040085, 200000, 0, 440, 0, 0),
(1183, 38, 1040000, 200000, 0, 444, 0, 0),
(1184, 38, 1002004, 160000, 0, 448, 0, 0),
(1608, 41, 1002625, 75000, 0, 104, 0, 0),
(1609, 41, 1052113, 120000, 0, 108, 0, 0),
(1610, 41, 1052110, 100000, 0, 112, 0, 0),
(1611, 41, 1052107, 90000, 0, 116, 0, 0),
(1612, 41, 1002622, 40000, 0, 120, 0, 0),
(1613, 41, 1061070, 160000, 0, 124, 0, 0),
(1614, 41, 1061069, 160000, 0, 128, 0, 0),
(1615, 41, 1041075, 180000, 0, 132, 0, 0),
(1616, 41, 1041074, 180000, 0, 136, 0, 0),
(1617, 41, 1060072, 160000, 0, 140, 0, 0),
(1618, 41, 1060071, 160000, 0, 144, 0, 0),
(1619, 41, 1040083, 180000, 0, 148, 0, 0),
(1620, 41, 1040082, 180000, 0, 152, 0, 0),
(1621, 41, 1051009, 111000, 0, 156, 0, 0),
(1622, 41, 1051008, 111000, 0, 160, 0, 0),
(1623, 41, 1051007, 111000, 0, 164, 0, 0),
(1624, 41, 1060051, 108000, 0, 168, 0, 0),
(1625, 41, 1060050, 108000, 0, 172, 0, 0),
(1626, 41, 1040062, 114000, 0, 176, 0, 0),
(1627, 41, 1040061, 114000, 0, 180, 0, 0),
(1628, 41, 1060045, 40000, 0, 184, 0, 0),
(1629, 41, 1060043, 40000, 0, 188, 0, 0),
(1630, 41, 1040059, 45000, 0, 192, 0, 0),
(1631, 41, 1040057, 45000, 0, 196, 0, 0),
(1632, 41, 1061046, 40000, 0, 200, 0, 0),
(1633, 41, 1061045, 40000, 0, 204, 0, 0),
(1634, 41, 1061043, 40000, 0, 208, 0, 0),
(1635, 41, 1041050, 45000, 0, 212, 0, 0),
(1636, 41, 1041049, 45000, 0, 216, 0, 0),
(1637, 41, 1041047, 45000, 0, 220, 0, 0),
(1638, 41, 1061081, 160000, 0, 224, 0, 0),
(1639, 41, 1061080, 160000, 0, 228, 0, 0),
(1640, 41, 1041082, 180000, 0, 232, 0, 0),
(1641, 41, 1041081, 180000, 0, 236, 0, 0),
(1642, 41, 1060070, 160000, 0, 240, 0, 0),
(1643, 41, 1060069, 160000, 0, 244, 0, 0),
(1644, 41, 1040081, 180000, 0, 248, 0, 0),
(1645, 41, 1040079, 180000, 0, 252, 0, 0),
(1646, 41, 1060063, 108000, 0, 256, 0, 0),
(1647, 41, 1060062, 108000, 0, 260, 0, 0),
(1648, 41, 1060061, 108000, 0, 264, 0, 0),
(1649, 41, 1040074, 114000, 0, 268, 0, 0),
(1650, 41, 1040073, 114000, 0, 272, 0, 0),
(1651, 41, 1040072, 114000, 0, 276, 0, 0),
(1652, 41, 1061062, 108000, 0, 280, 0, 0),
(1653, 41, 1061061, 108000, 0, 284, 0, 0),
(1654, 41, 1061060, 108000, 0, 288, 0, 0),
(1655, 41, 1041067, 114000, 0, 292, 0, 0),
(1656, 41, 1041066, 114000, 0, 296, 0, 0),
(1657, 41, 1041065, 114000, 0, 300, 0, 0),
(1658, 41, 1060058, 44000, 0, 304, 0, 0),
(1659, 41, 1060056, 44000, 0, 308, 0, 0),
(1660, 41, 1040069, 50000, 0, 312, 0, 0),
(1661, 41, 1040067, 50000, 0, 316, 0, 0),
(1662, 41, 1061052, 44000, 0, 320, 0, 0),
(1663, 41, 1061050, 44000, 0, 324, 0, 0),
(1664, 41, 1041056, 50000, 0, 328, 0, 0),
(1665, 41, 1041054, 50000, 0, 332, 0, 0),
(1666, 41, 1050038, 450000, 0, 336, 0, 0),
(1667, 41, 1050037, 450000, 0, 340, 0, 0),
(1668, 41, 1050036, 450000, 0, 344, 0, 0),
(1669, 41, 1051025, 450000, 0, 348, 0, 0),
(1670, 41, 1051024, 450000, 0, 352, 0, 0),
(1671, 41, 1051023, 450000, 0, 356, 0, 0),
(1672, 41, 1050031, 300000, 0, 360, 0, 0),
(1673, 41, 1050030, 300000, 0, 364, 0, 0),
(1674, 41, 1050002, 300000, 0, 368, 0, 0),
(1675, 41, 1061048, 120000, 0, 372, 0, 0),
(1676, 41, 1061047, 120000, 0, 376, 0, 0),
(1677, 41, 1041052, 120000, 0, 380, 0, 0),
(1678, 41, 1041051, 120000, 0, 384, 0, 0),
(1679, 41, 1050028, 40000, 0, 388, 0, 0),
(1680, 41, 1050026, 40000, 0, 392, 0, 0),
(1681, 41, 1050003, 40000, 0, 396, 0, 0),
(1682, 41, 1061036, 40000, 0, 400, 0, 0),
(1683, 41, 1061035, 40000, 0, 404, 0, 0),
(1684, 41, 1061034, 40000, 0, 408, 0, 0),
(1685, 41, 1041043, 42000, 0, 412, 0, 0),
(1686, 41, 1041042, 42000, 0, 416, 0, 0),
(1687, 41, 1041041, 42000, 0, 420, 0, 0),
(1688, 41, 1061084, 180000, 0, 424, 0, 0),
(1689, 41, 1061083, 180000, 0, 428, 0, 0),
(1690, 41, 1060075, 180000, 0, 432, 0, 0),
(1691, 41, 1060074, 180000, 0, 436, 0, 0),
(1692, 41, 1041085, 200000, 0, 440, 0, 0),
(1693, 41, 1041084, 200000, 0, 444, 0, 0),
(1694, 41, 1040086, 200000, 0, 448, 0, 0),
(1695, 41, 1040085, 200000, 0, 452, 0, 0),
(1696, 41, 1051015, 112500, 0, 456, 0, 0),
(1697, 41, 1051014, 112500, 0, 460, 0, 0),
(1698, 41, 1051001, 112500, 0, 464, 0, 0),
(1699, 41, 1050021, 112500, 0, 468, 0, 0),
(1700, 41, 1050000, 112500, 0, 472, 0, 0),
(1701, 41, 1060017, 38000, 0, 476, 0, 0),
(1702, 41, 1060016, 38000, 0, 480, 0, 0),
(1703, 41, 1040026, 40000, 0, 484, 0, 0),
(1704, 41, 1040021, 40000, 0, 488, 0, 0),
(1705, 41, 1050011, 70000, 0, 492, 0, 0),
(1706, 41, 1051013, 60000, 0, 496, 0, 0),
(1707, 41, 1051012, 60000, 0, 500, 0, 0),
(1708, 41, 1051011, 60000, 0, 504, 0, 0),
(1709, 41, 1002177, 100000, 0, 508, 0, 0),
(1710, 41, 1002172, 60000, 0, 512, 0, 0),
(1711, 41, 1002138, 100000, 0, 516, 0, 0),
(1712, 41, 1002162, 60000, 0, 520, 0, 0),
(1713, 41, 1002142, 96000, 0, 524, 0, 0),
(1714, 41, 1002034, 60000, 0, 528, 0, 0),
(1715, 41, 1002048, 160000, 0, 532, 0, 0),
(1716, 41, 1002023, 120000, 0, 536, 0, 0),
(1717, 40, 2330000, 800, 0, 1, 0, 0),
(1718, 40, 2070000, 500, 0, 1, 0, 0),
(1719, 40, 2061001, 10, 0, 0, 0, 0),
(1720, 40, 2060001, 10, 0, 0, 0, 0),
(1723, 40, 2061000, 1, 0, 0, 0, 0),
(1724, 40, 2060000, 1, 0, 0, 0, 0),
(1725, 40, 2030000, 400, 0, 0, 0, 0),
(1726, 40, 2022000, 1155, 0, 0, 0, 0),
(1727, 40, 2022003, 770, 0, 0, 0, 0),
(1728, 40, 2020015, 10608, 0, 0, 0, 0),
(1729, 40, 2020014, 8424, 0, 0, 0, 0),
(1730, 40, 2020013, 5824, 0, 0, 0, 0),
(1731, 40, 2020012, 5680, 0, 0, 0, 0),
(1732, 40, 2010004, 180, 0, 0, 0, 0),
(1733, 40, 2010003, 60, 0, 0, 0, 0),
(1734, 40, 2010001, 150, 0, 0, 0, 0),
(1735, 40, 2010002, 50, 0, 0, 0, 0),
(1736, 40, 2010000, 30, 0, 0, 0, 0),
(1737, 40, 2001002, 4000, 0, 0, 0, 0),
(1738, 40, 2001001, 2300, 0, 0, 0, 0),
(1739, 40, 2001000, 3200, 0, 0, 0, 0),
(1740, 40, 2022041, 1600, 0, 0, 0, 0),
(1741, 40, 2022040, 300, 0, 0, 0, 0),
(1742, 40, 2002005, 500, 0, 0, 0, 0),
(1743, 40, 2002004, 500, 0, 0, 0, 0),
(1744, 40, 2002002, 500, 0, 0, 0, 0),
(1745, 40, 2002001, 400, 0, 0, 0, 0),
(1746, 40, 2002000, 500, 0, 0, 0, 0),
(1747, 40, 2000006, 385, 0, 0, 0, 0),
(1748, 40, 2000003, 150, 0, 0, 0, 0),
(1749, 40, 2000002, 280, 0, 0, 0, 0),
(1750, 40, 2000001, 150, 0, 0, 0, 0),
(1751, 40, 2000000, 50, 0, 0, 0, 0),
(1752, 42, 1492006, 160000, 0, 104, 0, 0),
(1753, 42, 1492005, 100000, 0, 108, 0, 0),
(1754, 42, 1492004, 75000, 0, 112, 0, 0),
(1755, 42, 1482006, 150000, 0, 116, 0, 0),
(1756, 42, 1482005, 100000, 0, 120, 0, 0),
(1757, 42, 1482004, 75000, 0, 124, 0, 0),
(1758, 42, 1472007, 60000, 0, 128, 0, 0),
(1759, 42, 1462005, 250000, 0, 132, 0, 0),
(1760, 42, 1462004, 200000, 0, 136, 0, 0),
(1761, 42, 1462000, 30000, 0, 140, 0, 0),
(1762, 42, 1462003, 12000, 0, 144, 0, 0),
(1763, 42, 1452007, 375000, 0, 148, 0, 0),
(1764, 42, 1452006, 250000, 0, 152, 0, 0),
(1765, 42, 1452005, 150000, 0, 156, 0, 0),
(1766, 42, 1452000, 20000, 0, 160, 0, 0),
(1767, 42, 1442009, 300000, 0, 164, 0, 0),
(1768, 42, 1442003, 175000, 0, 168, 0, 0),
(1769, 42, 1442001, 60000, 0, 172, 0, 0),
(1770, 42, 1442004, 24000, 0, 176, 0, 0),
(1771, 42, 1432005, 225000, 0, 180, 0, 0),
(1772, 42, 1432003, 175000, 0, 184, 0, 0),
(1773, 42, 1432002, 60000, 0, 188, 0, 0),
(1774, 42, 1422007, 250000, 0, 192, 0, 0),
(1775, 42, 1422008, 200000, 0, 196, 0, 0),
(1776, 42, 1422001, 45000, 0, 200, 0, 0),
(1777, 42, 1422004, 20000, 0, 204, 0, 0),
(1778, 42, 1412005, 250000, 0, 208, 0, 0),
(1779, 42, 1412006, 45000, 0, 212, 0, 0),
(1780, 42, 1412004, 200000, 0, 216, 0, 0),
(1781, 42, 1412000, 22000, 0, 220, 0, 0),
(1782, 42, 1402007, 450000, 0, 224, 0, 0),
(1783, 42, 1402006, 350000, 0, 228, 0, 0),
(1784, 42, 1402002, 150000, 0, 232, 0, 0),
(1785, 42, 1402008, 22000, 0, 236, 0, 0),
(1786, 42, 1372000, 400000, 0, 240, 0, 0),
(1787, 42, 1372001, 175000, 0, 244, 0, 0),
(1788, 42, 1372003, 38000, 0, 248, 0, 0),
(1789, 42, 1382002, 20000, 0, 252, 0, 0),
(1790, 42, 1372004, 18000, 0, 256, 0, 0),
(1791, 42, 1332011, 425000, 0, 260, 0, 0),
(1792, 42, 1332014, 375000, 0, 264, 0, 0),
(1793, 42, 1332012, 40000, 0, 268, 0, 0);
INSERT INTO `shopitems` (`shopitemid`, `shopid`, `itemid`, `price`, `pitch`, `position`, `reqitem`, `reqitemq`) VALUES
(1794, 42, 1332004, 38000, 0, 272, 0, 0),
(1795, 42, 1322016, 175000, 0, 276, 0, 0),
(1796, 42, 1322015, 100000, 0, 280, 0, 0),
(1797, 42, 1322014, 40000, 0, 284, 0, 0),
(1798, 42, 1322004, 22000, 0, 288, 0, 0),
(1799, 42, 1312007, 175000, 0, 292, 0, 0),
(1800, 42, 1312006, 100000, 0, 296, 0, 0),
(1801, 42, 1312005, 40000, 0, 300, 0, 0),
(1802, 42, 1312003, 20000, 0, 304, 0, 0),
(1803, 42, 1302009, 225000, 0, 308, 0, 0),
(1804, 42, 1302004, 100000, 0, 312, 0, 0),
(1805, 42, 1302008, 40000, 0, 316, 0, 0),
(1806, 42, 1302003, 20000, 0, 320, 0, 0),
(1965, 43, 2060000, 1, 0, 0, 0, 0),
(1966, 43, 2030000, 400, 0, 0, 0, 0),
(1967, 43, 2020015, 10608, 0, 0, 0, 0),
(1968, 43, 2020014, 8424, 0, 0, 0, 0),
(1969, 43, 2020013, 5824, 0, 0, 0, 0),
(1970, 43, 2020012, 4680, 0, 0, 0, 0),
(1971, 43, 2010004, 180, 0, 0, 0, 0),
(1972, 43, 2010003, 60, 0, 0, 0, 0),
(1973, 43, 2010001, 150, 0, 0, 0, 0),
(1974, 43, 2010002, 50, 0, 0, 0, 0),
(1975, 43, 2010000, 30, 0, 0, 0, 0),
(1976, 43, 2001002, 4000, 0, 0, 0, 0),
(1977, 43, 2001001, 2300, 0, 0, 0, 0),
(1978, 43, 2001000, 3200, 0, 0, 0, 0),
(1979, 43, 2022089, 3400, 0, 0, 0, 0),
(1980, 43, 2002005, 500, 0, 0, 0, 0),
(1981, 43, 2002004, 500, 0, 0, 0, 0),
(1982, 43, 2002002, 500, 0, 0, 0, 0),
(1983, 43, 2002001, 400, 0, 0, 0, 0),
(1984, 43, 2002000, 500, 0, 0, 0, 0),
(1985, 43, 2000006, 385, 0, 0, 0, 0),
(1986, 43, 2000003, 150, 0, 0, 0, 0),
(1987, 43, 2000002, 280, 0, 0, 0, 0),
(1988, 43, 2000001, 150, 0, 0, 0, 0),
(1989, 43, 2000000, 50, 0, 0, 0, 0),
(1990, 45, 1002625, 75000, 0, 104, 0, 0),
(1991, 45, 1052113, 120000, 0, 108, 0, 0),
(1992, 45, 1052110, 100000, 0, 112, 0, 0),
(1993, 45, 1061069, 160000, 0, 116, 0, 0),
(1994, 45, 1061070, 160000, 0, 120, 0, 0),
(1995, 45, 1060072, 160000, 0, 124, 0, 0),
(1996, 45, 1060071, 160000, 0, 128, 0, 0),
(1997, 45, 1060052, 108000, 0, 132, 0, 0),
(1998, 45, 1060050, 108000, 0, 136, 0, 0),
(1999, 45, 1060051, 108000, 0, 140, 0, 0),
(2000, 45, 1051009, 111000, 0, 144, 0, 0),
(2001, 45, 1051008, 111000, 0, 148, 0, 0),
(2002, 45, 1051007, 111000, 0, 152, 0, 0),
(2003, 45, 1041074, 180000, 0, 156, 0, 0),
(2004, 45, 1041075, 180000, 0, 160, 0, 0),
(2005, 45, 1040083, 180000, 0, 164, 0, 0),
(2006, 45, 1040082, 180000, 0, 168, 0, 0),
(2007, 45, 1040061, 114000, 0, 172, 0, 0),
(2008, 45, 1040062, 114000, 0, 176, 0, 0),
(2009, 45, 1040063, 114000, 0, 180, 0, 0),
(2010, 45, 1002180, 100000, 0, 184, 0, 0),
(2011, 45, 1002179, 100000, 0, 188, 0, 0),
(2012, 45, 1002178, 100000, 0, 192, 0, 0),
(2013, 45, 1002177, 100000, 0, 196, 0, 0),
(2014, 45, 1002176, 100000, 0, 200, 0, 0),
(2015, 45, 1061080, 160000, 0, 204, 0, 0),
(2016, 45, 1061081, 160000, 0, 208, 0, 0),
(2017, 45, 1061062, 108000, 0, 212, 0, 0),
(2018, 45, 1061060, 108000, 0, 216, 0, 0),
(2130, 44, 2260000, 1000, 0, 220, 0, 0),
(2131, 44, 2120000, 30, 0, 224, 0, 0),
(2019, 45, 1061064, 108000, 0, 220, 0, 0),
(2020, 45, 1061061, 108000, 0, 224, 0, 0),
(2021, 45, 1060069, 160000, 0, 228, 0, 0),
(2022, 45, 1060070, 160000, 0, 232, 0, 0),
(2023, 45, 1060063, 108000, 0, 236, 0, 0),
(2024, 45, 1060061, 108000, 0, 240, 0, 0),
(2025, 45, 1060065, 108000, 0, 244, 0, 0),
(2026, 45, 1060062, 108000, 0, 248, 0, 0),
(2027, 45, 1041081, 180000, 0, 252, 0, 0),
(2028, 45, 1041082, 180000, 0, 256, 0, 0),
(2029, 45, 1041067, 114000, 0, 260, 0, 0),
(2030, 45, 1041065, 114000, 0, 264, 0, 0),
(2031, 45, 1041069, 114000, 0, 268, 0, 0),
(2032, 45, 1041066, 114000, 0, 272, 0, 0),
(2033, 45, 1040079, 180000, 0, 276, 0, 0),
(2034, 45, 1040081, 180000, 0, 280, 0, 0),
(2035, 45, 1040076, 114000, 0, 284, 0, 0),
(2036, 45, 1040074, 114000, 0, 288, 0, 0),
(2037, 45, 1040073, 114000, 0, 292, 0, 0),
(2038, 45, 1040072, 114000, 0, 296, 0, 0),
(2039, 45, 1002137, 100000, 0, 300, 0, 0),
(2040, 45, 1002135, 100000, 0, 304, 0, 0),
(2041, 45, 1002139, 100000, 0, 308, 0, 0),
(2042, 45, 1002138, 100000, 0, 312, 0, 0),
(2043, 45, 1061047, 120000, 0, 316, 0, 0),
(2044, 45, 1061048, 120000, 0, 320, 0, 0),
(2045, 45, 1051027, 450000, 0, 324, 0, 0),
(2046, 45, 1051024, 450000, 0, 328, 0, 0),
(2047, 45, 1051025, 450000, 0, 332, 0, 0),
(2048, 45, 1051023, 450000, 0, 336, 0, 0),
(2049, 45, 1050037, 450000, 0, 340, 0, 0),
(2050, 45, 1050036, 450000, 0, 344, 0, 0),
(2051, 45, 1050038, 450000, 0, 348, 0, 0),
(2052, 45, 1050035, 450000, 0, 352, 0, 0),
(2053, 45, 1050002, 300000, 0, 356, 0, 0),
(2054, 45, 1050031, 300000, 0, 360, 0, 0),
(2055, 45, 1041051, 120000, 0, 364, 0, 0),
(2056, 45, 1041052, 120000, 0, 368, 0, 0),
(2057, 45, 1002144, 96000, 0, 372, 0, 0),
(2058, 45, 1002143, 96000, 0, 376, 0, 0),
(2059, 45, 1002142, 96000, 0, 380, 0, 0),
(2060, 45, 1002141, 96000, 0, 384, 0, 0),
(2061, 45, 1092002, 200000, 0, 388, 0, 0),
(2062, 45, 1092001, 100000, 0, 392, 0, 0),
(2063, 45, 1061084, 180000, 0, 396, 0, 0),
(2064, 45, 1061083, 180000, 0, 400, 0, 0),
(2065, 45, 1060074, 180000, 0, 404, 0, 0),
(2066, 45, 1060075, 180000, 0, 408, 0, 0),
(2067, 45, 1051014, 112500, 0, 412, 0, 0),
(2068, 45, 1051001, 112500, 0, 416, 0, 0),
(2069, 45, 1050021, 112500, 0, 420, 0, 0),
(2070, 45, 1050000, 112500, 0, 424, 0, 0),
(2071, 45, 1041085, 200000, 0, 428, 0, 0),
(2072, 45, 1041084, 200000, 0, 432, 0, 0),
(2073, 45, 1040085, 200000, 0, 436, 0, 0),
(2074, 45, 1040000, 200000, 0, 440, 0, 0),
(2075, 45, 1002004, 160000, 0, 444, 0, 0),
(2327, 46, 2260000, 1000, 0, 220, 0, 0),
(2328, 46, 2120000, 30, 0, 224, 0, 0),
(2132, 47, 1492006, 160000, 0, 104, 0, 0),
(2133, 47, 1492005, 100000, 0, 108, 0, 0),
(2134, 47, 1482006, 150000, 0, 112, 0, 0),
(2135, 47, 1482005, 100000, 0, 116, 0, 0),
(2136, 47, 1472007, 60000, 0, 120, 0, 0),
(2137, 47, 1472004, 30000, 0, 124, 0, 0),
(2138, 47, 1472001, 20000, 0, 128, 0, 0),
(2139, 47, 1462005, 250000, 0, 132, 0, 0),
(2140, 47, 1462004, 200000, 0, 136, 0, 0),
(2141, 47, 1462000, 30000, 0, 140, 0, 0),
(2142, 47, 1452007, 375000, 0, 144, 0, 0),
(2143, 47, 1452006, 250000, 0, 148, 0, 0),
(2144, 47, 1452005, 150000, 0, 152, 0, 0),
(2145, 47, 1442009, 300000, 0, 156, 0, 0),
(2146, 47, 1442003, 175000, 0, 160, 0, 0),
(2147, 47, 1442001, 60000, 0, 164, 0, 0),
(2148, 47, 1432005, 225000, 0, 168, 0, 0),
(2149, 47, 1432003, 175000, 0, 172, 0, 0),
(2150, 47, 1432002, 60000, 0, 176, 0, 0),
(2151, 47, 1422007, 250000, 0, 180, 0, 0),
(2152, 47, 1422008, 200000, 0, 184, 0, 0),
(2153, 47, 1422001, 45000, 0, 188, 0, 0),
(2154, 47, 1412005, 250000, 0, 192, 0, 0),
(2155, 47, 1412004, 200000, 0, 196, 0, 0),
(2156, 47, 1412006, 45000, 0, 200, 0, 0),
(2157, 47, 1402007, 450000, 0, 204, 0, 0),
(2158, 47, 1402006, 350000, 0, 208, 0, 0),
(2159, 47, 1402002, 150000, 0, 212, 0, 0),
(2160, 47, 1382002, 20000, 0, 216, 0, 0),
(2161, 47, 1372000, 400000, 0, 220, 0, 0),
(2162, 47, 1372001, 175000, 0, 224, 0, 0),
(2163, 47, 1372003, 38000, 0, 228, 0, 0),
(2164, 47, 1332011, 425000, 0, 232, 0, 0),
(2165, 47, 1332014, 375000, 0, 236, 0, 0),
(2166, 47, 1332001, 200000, 0, 240, 0, 0),
(2167, 47, 1332012, 40000, 0, 244, 0, 0),
(2168, 47, 1332009, 42000, 0, 248, 0, 0),
(2169, 47, 1322016, 175000, 0, 252, 0, 0),
(2170, 47, 1322015, 100000, 0, 256, 0, 0),
(2171, 47, 1322014, 40000, 0, 260, 0, 0),
(2172, 47, 1312007, 175000, 0, 264, 0, 0),
(2173, 47, 1312006, 100000, 0, 268, 0, 0),
(2174, 47, 1312005, 40000, 0, 272, 0, 0),
(2175, 47, 1302009, 225000, 0, 276, 0, 0),
(2176, 47, 1302004, 100000, 0, 280, 0, 0),
(2177, 47, 1302008, 40000, 0, 284, 0, 0),
(2178, 48, 1002625, 75000, 0, 104, 0, 0),
(2179, 48, 1052113, 120000, 0, 108, 0, 0),
(2180, 48, 1052110, 100000, 0, 112, 0, 0),
(2181, 48, 1061069, 160000, 0, 116, 0, 0),
(2182, 48, 1061070, 160000, 0, 120, 0, 0),
(2183, 48, 1060072, 160000, 0, 124, 0, 0),
(2184, 48, 1060071, 160000, 0, 128, 0, 0),
(2185, 48, 1060052, 108000, 0, 132, 0, 0),
(2186, 48, 1060050, 108000, 0, 136, 0, 0),
(2187, 48, 1060051, 108000, 0, 140, 0, 0),
(2188, 48, 1051009, 111000, 0, 144, 0, 0),
(2189, 48, 1051008, 111000, 0, 148, 0, 0),
(2190, 48, 1051007, 111000, 0, 152, 0, 0),
(2191, 48, 1041074, 180000, 0, 156, 0, 0),
(2192, 48, 1041075, 180000, 0, 160, 0, 0),
(2193, 48, 1040083, 180000, 0, 164, 0, 0),
(2194, 48, 1040082, 180000, 0, 168, 0, 0),
(2195, 48, 1040061, 114000, 0, 172, 0, 0),
(2196, 48, 1040062, 114000, 0, 176, 0, 0),
(2197, 48, 1040063, 114000, 0, 180, 0, 0),
(2198, 48, 1002180, 100000, 0, 184, 0, 0),
(2199, 48, 1002179, 100000, 0, 188, 0, 0),
(2200, 48, 1002178, 100000, 0, 192, 0, 0),
(2201, 48, 1002177, 100000, 0, 196, 0, 0),
(2202, 48, 1002176, 100000, 0, 200, 0, 0),
(2203, 48, 1061080, 160000, 0, 204, 0, 0),
(2204, 48, 1061081, 160000, 0, 208, 0, 0),
(2205, 48, 1061062, 108000, 0, 212, 0, 0),
(2206, 48, 1061060, 108000, 0, 216, 0, 0),
(2207, 48, 1061064, 108000, 0, 220, 0, 0),
(2208, 48, 1061061, 108000, 0, 224, 0, 0),
(2209, 48, 1060069, 160000, 0, 228, 0, 0),
(2210, 48, 1060070, 160000, 0, 232, 0, 0),
(2211, 48, 1060063, 108000, 0, 236, 0, 0),
(2212, 48, 1060061, 108000, 0, 240, 0, 0),
(2213, 48, 1060065, 108000, 0, 244, 0, 0),
(2214, 48, 1060062, 108000, 0, 248, 0, 0),
(2215, 48, 1041081, 180000, 0, 252, 0, 0),
(2216, 48, 1041082, 180000, 0, 256, 0, 0),
(2217, 48, 1041067, 114000, 0, 260, 0, 0),
(2218, 48, 1041065, 114000, 0, 264, 0, 0),
(2219, 48, 1041069, 114000, 0, 268, 0, 0),
(2220, 48, 1041066, 114000, 0, 272, 0, 0),
(2221, 48, 1040079, 180000, 0, 276, 0, 0),
(2222, 48, 1040081, 180000, 0, 280, 0, 0),
(2223, 48, 1040076, 114000, 0, 284, 0, 0),
(2224, 48, 1040074, 114000, 0, 288, 0, 0),
(2225, 48, 1040073, 114000, 0, 292, 0, 0),
(2226, 48, 1040072, 114000, 0, 296, 0, 0),
(2227, 48, 1002137, 100000, 0, 300, 0, 0),
(2228, 48, 1002135, 100000, 0, 304, 0, 0),
(2229, 48, 1002139, 100000, 0, 308, 0, 0),
(2230, 48, 1002138, 100000, 0, 312, 0, 0),
(2231, 48, 1061047, 120000, 0, 316, 0, 0),
(2232, 48, 1061048, 120000, 0, 320, 0, 0),
(2233, 48, 1051027, 450000, 0, 324, 0, 0),
(2234, 48, 1051024, 450000, 0, 328, 0, 0),
(2235, 48, 1051025, 450000, 0, 332, 0, 0),
(2236, 48, 1051023, 450000, 0, 336, 0, 0),
(2237, 48, 1050037, 450000, 0, 340, 0, 0),
(2238, 48, 1050036, 450000, 0, 344, 0, 0),
(2239, 48, 1050038, 450000, 0, 348, 0, 0),
(2240, 48, 1050035, 450000, 0, 352, 0, 0),
(2241, 48, 1050002, 300000, 0, 356, 0, 0),
(2242, 48, 1050031, 300000, 0, 360, 0, 0),
(2243, 48, 1041051, 120000, 0, 364, 0, 0),
(2244, 48, 1041052, 120000, 0, 368, 0, 0),
(2245, 48, 1002144, 96000, 0, 372, 0, 0),
(2246, 48, 1002143, 96000, 0, 376, 0, 0),
(2247, 48, 1002142, 96000, 0, 380, 0, 0),
(2248, 48, 1002141, 96000, 0, 384, 0, 0),
(2249, 48, 1092002, 200000, 0, 388, 0, 0),
(2250, 48, 1092001, 100000, 0, 392, 0, 0),
(2251, 48, 1061084, 180000, 0, 396, 0, 0),
(2252, 48, 1061083, 180000, 0, 400, 0, 0),
(2253, 48, 1060074, 180000, 0, 404, 0, 0),
(2254, 48, 1060075, 180000, 0, 408, 0, 0),
(2255, 48, 1051014, 112500, 0, 412, 0, 0),
(2256, 48, 1051001, 112500, 0, 416, 0, 0),
(2257, 48, 1050021, 112500, 0, 420, 0, 0),
(2258, 48, 1050000, 112500, 0, 424, 0, 0),
(2259, 48, 1041085, 200000, 0, 428, 0, 0),
(2260, 48, 1041084, 200000, 0, 432, 0, 0),
(2261, 48, 1040085, 200000, 0, 436, 0, 0),
(2262, 48, 1040000, 200000, 0, 440, 0, 0),
(2263, 48, 1002004, 160000, 0, 444, 0, 0),
(2265, 49, 2070000, 500, 0, 1, 0, 0),
(2268, 49, 2061000, 1, 0, 0, 0, 0),
(2269, 49, 2060000, 1, 0, 0, 0, 0),
(2270, 49, 2030000, 400, 0, 0, 0, 0),
(2271, 49, 2050002, 300, 0, 0, 0, 0),
(2272, 49, 2050001, 200, 0, 0, 0, 0),
(2273, 49, 2050000, 200, 0, 0, 0, 0),
(2274, 49, 2020015, 10608, 0, 0, 0, 0),
(2275, 49, 2020014, 8424, 0, 0, 0, 0),
(2276, 49, 2020013, 5824, 0, 0, 0, 0),
(2277, 49, 2020012, 4680, 0, 0, 0, 0),
(2278, 49, 2001002, 4000, 0, 0, 0, 0),
(2279, 49, 2001001, 2300, 0, 0, 0, 0),
(2280, 49, 2001000, 3200, 0, 0, 0, 0),
(2281, 49, 2022000, 1155, 0, 0, 0, 0),
(2282, 49, 2022003, 770, 0, 0, 0, 0),
(2283, 49, 2010004, 180, 0, 0, 0, 0),
(2284, 49, 2010003, 60, 0, 0, 0, 0),
(2285, 49, 2010001, 150, 0, 0, 0, 0),
(2286, 49, 2010002, 50, 0, 0, 0, 0),
(2287, 49, 2010000, 30, 0, 0, 0, 0),
(2288, 49, 2002005, 500, 0, 0, 0, 0),
(2289, 49, 2002004, 500, 0, 0, 0, 0),
(2290, 49, 2002002, 500, 0, 0, 0, 0),
(2291, 49, 2002001, 400, 0, 0, 0, 0),
(2292, 49, 2002000, 500, 0, 0, 0, 0),
(2293, 49, 2000006, 620, 0, 0, 0, 0),
(2294, 49, 2000003, 200, 0, 0, 0, 0),
(2295, 49, 2000002, 280, 0, 0, 0, 0),
(2296, 49, 2000001, 150, 0, 0, 0, 0),
(2297, 49, 2000000, 30, 0, 0, 0, 0),
(2264, 49, 2330000, 800, 0, 1, 0, 0),
(2329, 51, 1492004, 75000, 0, 104, 0, 0),
(2330, 51, 1482004, 75000, 0, 108, 0, 0),
(2331, 51, 1472001, 20000, 0, 112, 0, 0),
(2332, 51, 1462000, 30000, 0, 116, 0, 0),
(2333, 51, 1452005, 150000, 0, 120, 0, 0),
(2334, 51, 1442001, 60000, 0, 124, 0, 0),
(2335, 51, 1432002, 60000, 0, 128, 0, 0),
(2336, 51, 1422001, 45000, 0, 132, 0, 0),
(2337, 51, 1412006, 45000, 0, 136, 0, 0),
(2338, 51, 1402002, 150000, 0, 140, 0, 0),
(2339, 51, 1382002, 20000, 0, 144, 0, 0),
(2340, 51, 1372003, 38000, 0, 148, 0, 0),
(2341, 51, 1332012, 40000, 0, 152, 0, 0),
(2342, 51, 1332009, 42000, 0, 156, 0, 0),
(2343, 51, 1322014, 40000, 0, 160, 0, 0),
(2344, 51, 1312005, 40000, 0, 164, 0, 0),
(2345, 51, 1302008, 40000, 0, 168, 0, 0),
(2346, 50, 1052107, 90000, 0, 104, 0, 0),
(2347, 50, 1002622, 40000, 0, 108, 0, 0),
(2348, 50, 1061046, 40000, 0, 112, 0, 0),
(2349, 50, 1061045, 40000, 0, 116, 0, 0),
(2350, 50, 1061044, 40000, 0, 120, 0, 0),
(2351, 50, 1061043, 40000, 0, 124, 0, 0),
(2352, 50, 1060046, 40000, 0, 128, 0, 0),
(2353, 50, 1060045, 40000, 0, 132, 0, 0),
(2354, 50, 1060044, 40000, 0, 136, 0, 0),
(2355, 50, 1060043, 40000, 0, 140, 0, 0),
(2356, 50, 1041050, 45000, 0, 144, 0, 0),
(2357, 50, 1041049, 45000, 0, 148, 0, 0),
(2358, 50, 1041048, 45000, 0, 152, 0, 0),
(2359, 50, 1041047, 45000, 0, 156, 0, 0),
(2360, 50, 1040060, 45000, 0, 160, 0, 0),
(2361, 50, 1040059, 45000, 0, 164, 0, 0),
(2362, 50, 1040058, 45000, 0, 168, 0, 0),
(2363, 50, 1040057, 45000, 0, 172, 0, 0),
(2364, 50, 1002175, 30000, 0, 176, 0, 0),
(2365, 50, 1002174, 30000, 0, 180, 0, 0),
(2366, 50, 1002173, 30000, 0, 184, 0, 0),
(2367, 50, 1002172, 30000, 0, 188, 0, 0),
(2368, 50, 1002171, 30000, 0, 192, 0, 0),
(2369, 50, 1061051, 44000, 0, 196, 0, 0),
(2370, 50, 1061050, 44000, 0, 200, 0, 0),
(2371, 50, 1061052, 44000, 0, 204, 0, 0),
(2372, 50, 1060057, 44000, 0, 208, 0, 0),
(2373, 50, 1060056, 44000, 0, 212, 0, 0),
(2374, 50, 1060058, 44000, 0, 216, 0, 0),
(2375, 50, 1060059, 44000, 0, 220, 0, 0),
(2376, 50, 1041055, 50000, 0, 224, 0, 0),
(2377, 50, 1041054, 50000, 0, 228, 0, 0),
(2378, 50, 1041056, 50000, 0, 232, 0, 0),
(2379, 50, 1040068, 50000, 0, 236, 0, 0),
(2380, 50, 1040067, 50000, 0, 240, 0, 0),
(2381, 50, 1040070, 50000, 0, 244, 0, 0),
(2382, 50, 1040069, 50000, 0, 248, 0, 0),
(2383, 50, 1002165, 30000, 0, 252, 0, 0),
(2384, 50, 1002164, 30000, 0, 256, 0, 0),
(2385, 50, 1002163, 30000, 0, 260, 0, 0),
(2386, 50, 1002162, 30000, 0, 264, 0, 0),
(2387, 50, 1002161, 30000, 0, 268, 0, 0),
(2388, 50, 1061036, 40000, 0, 272, 0, 0),
(2389, 50, 1061035, 40000, 0, 276, 0, 0),
(2390, 50, 1061034, 40000, 0, 280, 0, 0),
(2391, 50, 1050028, 40000, 0, 284, 0, 0),
(2392, 50, 1050027, 40000, 0, 288, 0, 0),
(2393, 50, 1050026, 40000, 0, 292, 0, 0),
(2394, 50, 1050003, 40000, 0, 296, 0, 0),
(2395, 50, 1041043, 42000, 0, 300, 0, 0),
(2396, 50, 1041042, 42000, 0, 304, 0, 0),
(2397, 50, 1041041, 42000, 0, 308, 0, 0),
(2398, 50, 1002064, 40000, 0, 312, 0, 0),
(2399, 50, 1092006, 60000, 0, 316, 0, 0),
(2400, 50, 1060019, 38000, 0, 320, 0, 0),
(2401, 50, 1060018, 38000, 0, 324, 0, 0),
(2402, 50, 1060017, 38000, 0, 328, 0, 0),
(2403, 50, 1060016, 38000, 0, 332, 0, 0),
(2404, 50, 1051013, 60000, 0, 336, 0, 0),
(2405, 50, 1051012, 60000, 0, 340, 0, 0),
(2406, 50, 1051011, 60000, 0, 344, 0, 0),
(2407, 50, 1051010, 60000, 0, 348, 0, 0),
(2408, 50, 1040026, 40000, 0, 352, 0, 0),
(2409, 50, 1040021, 40000, 0, 356, 0, 0),
(2410, 50, 1002023, 120000, 0, 360, 0, 0),
(2411, 52, 2330000, 800, 0, 1, 0, 0),
(2412, 52, 2070000, 500, 0, 1, 0, 0),
(2415, 52, 2061000, 1, 0, 0, 0, 0),
(2416, 52, 2060000, 1, 0, 0, 0, 0),
(2417, 52, 2030000, 400, 0, 0, 0, 0),
(2418, 52, 2050003, 500, 0, 0, 0, 0),
(2419, 52, 2050002, 300, 0, 0, 0, 0),
(2420, 52, 2050001, 200, 0, 0, 0, 0),
(2421, 52, 2050000, 200, 0, 0, 0, 0),
(2422, 52, 2020028, 3000, 0, 0, 0, 0),
(2423, 52, 2010004, 310, 0, 0, 0, 0),
(2424, 52, 2010003, 100, 0, 0, 0, 0),
(2425, 52, 2010001, 150, 0, 0, 0, 0),
(2426, 52, 2010002, 50, 0, 0, 0, 0),
(2427, 52, 2010000, 30, 0, 0, 0, 0),
(2428, 52, 2001002, 4000, 0, 0, 0, 0),
(2429, 52, 2001001, 2300, 0, 0, 0, 0),
(2430, 52, 2001000, 3200, 0, 0, 0, 0),
(2431, 52, 2022000, 1155, 0, 0, 0, 0),
(2432, 52, 2022003, 770, 0, 0, 0, 0),
(2433, 52, 2002005, 500, 0, 0, 0, 0),
(2434, 52, 2002004, 500, 0, 0, 0, 0),
(2435, 52, 2002002, 500, 0, 0, 0, 0),
(2436, 52, 2002001, 400, 0, 0, 0, 0),
(2437, 52, 2002000, 500, 0, 0, 0, 0),
(2438, 52, 2000006, 385, 0, 0, 0, 0),
(2439, 52, 2000003, 200, 0, 0, 0, 0),
(2440, 52, 2000002, 280, 0, 0, 0, 0),
(2441, 52, 2000001, 150, 0, 0, 0, 0),
(2442, 52, 2000000, 30, 0, 0, 0, 0),
(2443, 53, 1492004, 75000, 0, 104, 0, 0),
(2444, 53, 1482004, 75000, 0, 108, 0, 0),
(2445, 53, 1472001, 20000, 0, 112, 0, 0),
(2446, 53, 1462000, 30000, 0, 116, 0, 0),
(2447, 53, 1452005, 150000, 0, 120, 0, 0),
(2448, 53, 1442001, 60000, 0, 124, 0, 0),
(2449, 53, 1432002, 60000, 0, 128, 0, 0),
(2450, 53, 1422001, 45000, 0, 132, 0, 0),
(2451, 53, 1412006, 45000, 0, 136, 0, 0),
(2452, 53, 1402002, 150000, 0, 140, 0, 0),
(2453, 53, 1382002, 20000, 0, 144, 0, 0),
(2454, 53, 1372003, 38000, 0, 148, 0, 0),
(2455, 53, 1332012, 40000, 0, 152, 0, 0),
(2456, 53, 1332009, 42000, 0, 156, 0, 0),
(2457, 53, 1322014, 40000, 0, 160, 0, 0),
(2458, 53, 1312005, 40000, 0, 164, 0, 0),
(2459, 53, 1302008, 40000, 0, 168, 0, 0),
(2460, 54, 1052107, 90000, 0, 104, 0, 0),
(2461, 54, 1002622, 40000, 0, 108, 0, 0),
(2462, 54, 1061046, 40000, 0, 112, 0, 0),
(2463, 54, 1061045, 40000, 0, 116, 0, 0),
(2464, 54, 1061044, 40000, 0, 120, 0, 0),
(2465, 54, 1061043, 40000, 0, 124, 0, 0),
(2466, 54, 1060046, 40000, 0, 128, 0, 0),
(2467, 54, 1060045, 40000, 0, 132, 0, 0),
(2468, 54, 1060044, 40000, 0, 136, 0, 0),
(2469, 54, 1060043, 40000, 0, 140, 0, 0),
(2470, 54, 1041050, 45000, 0, 144, 0, 0),
(2471, 54, 1041049, 45000, 0, 148, 0, 0),
(2472, 54, 1041048, 45000, 0, 152, 0, 0),
(2473, 54, 1041047, 45000, 0, 156, 0, 0),
(2474, 54, 1040060, 45000, 0, 160, 0, 0),
(2475, 54, 1040059, 45000, 0, 164, 0, 0),
(2476, 54, 1040058, 45000, 0, 168, 0, 0),
(2477, 54, 1040057, 45000, 0, 172, 0, 0),
(2478, 54, 1002175, 30000, 0, 176, 0, 0),
(2479, 54, 1002174, 30000, 0, 180, 0, 0),
(2480, 54, 1002173, 30000, 0, 184, 0, 0),
(2481, 54, 1002172, 30000, 0, 188, 0, 0),
(2482, 54, 1002171, 30000, 0, 192, 0, 0),
(2483, 54, 1061051, 44000, 0, 196, 0, 0),
(2484, 54, 1061050, 44000, 0, 200, 0, 0),
(2485, 54, 1061052, 44000, 0, 204, 0, 0),
(2486, 54, 1060057, 44000, 0, 208, 0, 0),
(2487, 54, 1060056, 44000, 0, 212, 0, 0),
(2488, 54, 1060058, 44000, 0, 216, 0, 0),
(2489, 54, 1060059, 44000, 0, 220, 0, 0),
(2490, 54, 1041055, 50000, 0, 224, 0, 0),
(2491, 54, 1041054, 50000, 0, 228, 0, 0),
(2492, 54, 1041056, 50000, 0, 232, 0, 0),
(2493, 54, 1040068, 50000, 0, 236, 0, 0),
(2494, 54, 1040067, 50000, 0, 240, 0, 0),
(2495, 54, 1040070, 50000, 0, 244, 0, 0),
(2496, 54, 1040069, 50000, 0, 248, 0, 0),
(2497, 54, 1002165, 30000, 0, 252, 0, 0),
(2498, 54, 1002164, 30000, 0, 256, 0, 0),
(2499, 54, 1002163, 30000, 0, 260, 0, 0),
(2500, 54, 1002162, 30000, 0, 264, 0, 0),
(2501, 54, 1002161, 30000, 0, 268, 0, 0),
(2502, 54, 1061036, 40000, 0, 272, 0, 0),
(2503, 54, 1061035, 40000, 0, 276, 0, 0),
(2504, 54, 1061034, 40000, 0, 280, 0, 0),
(2505, 54, 1050028, 40000, 0, 284, 0, 0),
(2506, 54, 1050027, 40000, 0, 288, 0, 0),
(2507, 54, 1050026, 40000, 0, 292, 0, 0),
(2508, 54, 1050003, 40000, 0, 296, 0, 0),
(2509, 54, 1041043, 42000, 0, 300, 0, 0),
(2510, 54, 1041042, 42000, 0, 304, 0, 0),
(2511, 54, 1041041, 42000, 0, 308, 0, 0),
(2512, 54, 1002064, 40000, 0, 312, 0, 0),
(2513, 54, 1092006, 60000, 0, 316, 0, 0),
(2514, 54, 1060019, 38000, 0, 320, 0, 0),
(2515, 54, 1060018, 38000, 0, 324, 0, 0),
(2516, 54, 1060017, 38000, 0, 328, 0, 0),
(2517, 54, 1060016, 38000, 0, 332, 0, 0),
(2518, 54, 1051013, 60000, 0, 336, 0, 0),
(2519, 54, 1051012, 60000, 0, 340, 0, 0),
(2520, 54, 1051011, 60000, 0, 344, 0, 0),
(2521, 54, 1051010, 60000, 0, 348, 0, 0),
(2522, 54, 1040026, 40000, 0, 352, 0, 0),
(2523, 54, 1040021, 40000, 0, 356, 0, 0),
(2524, 54, 1002023, 120000, 0, 360, 0, 0),
(2525, 54, 1002004, 160000, 0, 364, 0, 0),
(2526, 55, 2330000, 800, 0, 1, 0, 0),
(2527, 55, 2070000, 500, 0, 1, 0, 0),
(2528, 55, 2120000, 30, 0, 0, 0, 0),
(2531, 55, 2061000, 1, 0, 0, 0, 0),
(2532, 55, 2060000, 1, 0, 0, 0, 0),
(2533, 55, 2030000, 400, 0, 0, 0, 0),
(2534, 55, 2050003, 500, 0, 0, 0, 0),
(2535, 55, 2050002, 300, 0, 0, 0, 0),
(2536, 55, 2050001, 200, 0, 0, 0, 0),
(2537, 55, 2050000, 200, 0, 0, 0, 0),
(2538, 55, 2020028, 3000, 0, 0, 0, 0),
(2539, 55, 2010004, 180, 0, 0, 0, 0),
(2540, 55, 2010003, 60, 0, 0, 0, 0),
(2541, 55, 2010001, 150, 0, 0, 0, 0),
(2542, 55, 2010002, 50, 0, 0, 0, 0),
(2543, 55, 2010000, 30, 0, 0, 0, 0),
(2544, 55, 2001002, 4000, 0, 0, 0, 0),
(2545, 55, 2001001, 2300, 0, 0, 0, 0),
(2546, 55, 2001000, 3200, 0, 0, 0, 0),
(2547, 55, 2022000, 1150, 0, 0, 0, 0),
(2548, 55, 2022003, 770, 0, 0, 0, 0),
(2549, 55, 2002005, 500, 0, 0, 0, 0),
(2550, 55, 2002004, 500, 0, 0, 0, 0),
(2551, 55, 2002002, 500, 0, 0, 0, 0),
(2552, 55, 2002001, 400, 0, 0, 0, 0),
(2553, 55, 2002000, 500, 0, 0, 0, 0),
(2554, 55, 2000006, 385, 0, 0, 0, 0),
(2555, 55, 2000003, 150, 0, 0, 0, 0),
(2556, 55, 2000002, 280, 0, 0, 0, 0),
(2557, 55, 2000001, 150, 0, 0, 0, 0),
(2558, 55, 2000000, 30, 0, 0, 0, 0),
(2559, 56, 2330000, 800, 0, 1, 0, 0),
(2560, 56, 2070000, 500, 0, 1, 0, 0),
(2561, 56, 2120000, 30, 0, 0, 0, 0),
(2564, 56, 2061000, 1, 0, 0, 0, 0),
(2565, 56, 2060000, 1, 0, 0, 0, 0),
(2566, 56, 2030000, 400, 0, 0, 0, 0),
(2567, 56, 2050003, 500, 0, 0, 0, 0),
(2568, 56, 2050002, 300, 0, 0, 0, 0),
(2569, 56, 2050001, 200, 0, 0, 0, 0),
(2570, 56, 2050000, 200, 0, 0, 0, 0),
(2571, 56, 2020028, 3000, 0, 0, 0, 0),
(2572, 56, 2010004, 310, 0, 0, 0, 0),
(2573, 56, 2010003, 100, 0, 0, 0, 0),
(2574, 56, 2010001, 150, 0, 0, 0, 0),
(2575, 56, 2010002, 50, 0, 0, 0, 0),
(2576, 56, 2010000, 30, 0, 0, 0, 0),
(2577, 56, 2001002, 4000, 0, 0, 0, 0),
(2578, 56, 2001001, 2300, 0, 0, 0, 0),
(2579, 56, 2001000, 3200, 0, 0, 0, 0),
(2580, 56, 2022000, 1650, 0, 0, 0, 0),
(2581, 56, 2022003, 1100, 0, 0, 0, 0),
(2582, 56, 2002005, 500, 0, 0, 0, 0),
(2583, 56, 2002004, 500, 0, 0, 0, 0),
(2584, 56, 2002002, 500, 0, 0, 0, 0),
(2585, 56, 2002001, 400, 0, 0, 0, 0),
(2586, 56, 2002000, 500, 0, 0, 0, 0),
(2587, 56, 2000006, 385, 0, 0, 0, 0),
(2588, 56, 2000003, 150, 0, 0, 0, 0),
(2589, 56, 2000002, 280, 0, 0, 0, 0),
(2590, 56, 2000001, 160, 0, 0, 0, 0),
(2591, 56, 2000000, 30, 0, 0, 0, 0),
(2758, 57, 2000000, 30, 1, 0, 0, 0),
(2759, 57, 2000001, 150, 2, 0, 0, 0),
(2760, 57, 2000002, 280, 3, 0, 0, 0),
(2761, 57, 2000003, 150, 4, 0, 0, 0),
(2762, 57, 2000006, 385, 5, 0, 0, 0),
(2763, 57, 2002016, 5000, 6, 0, 0, 0),
(2764, 57, 2002017, 7500, 7, 0, 0, 0),
(2765, 57, 2002018, 5000, 8, 0, 0, 0),
(2766, 57, 2002019, 5000, 9, 0, 0, 0),
(2767, 57, 2002020, 6800, 10, 0, 0, 0),
(2768, 57, 2002021, 6800, 11, 0, 0, 0),
(2769, 57, 2002022, 8100, 12, 0, 0, 0),
(2770, 57, 2002023, 13800, 13, 0, 0, 0),
(2771, 57, 2002024, 1500, 14, 0, 0, 0),
(2772, 57, 2002025, 1500, 15, 0, 0, 0),
(2773, 57, 2010000, 30, 16, 0, 0, 0),
(2774, 57, 2010002, 50, 17, 0, 0, 0),
(2775, 57, 2010001, 150, 18, 0, 0, 0),
(2776, 57, 2010003, 100, 19, 0, 0, 0),
(2777, 57, 2010004, 180, 20, 0, 0, 0),
(2778, 57, 2022189, 1000, 21, 0, 0, 0),
(2779, 57, 2022191, 1000, 22, 0, 0, 0),
(2780, 57, 2022192, 600, 23, 0, 0, 0),
(2781, 57, 2022003, 770, 24, 0, 0, 0),
(2782, 57, 2022000, 1150, 25, 0, 0, 0),
(2783, 57, 2001000, 3200, 57, 0, 0, 0),
(2784, 57, 2001001, 2300, 27, 0, 0, 0),
(2785, 57, 2001002, 4000, 28, 0, 0, 0),
(2786, 57, 2022190, 3000, 29, 0, 0, 0),
(2787, 57, 2020012, 4500, 30, 0, 0, 0),
(2788, 57, 2020013, 5600, 31, 0, 0, 0),
(2789, 57, 2020014, 8100, 32, 0, 0, 0),
(2790, 57, 2020015, 10200, 33, 0, 0, 0),
(2791, 57, 2022195, 15000, 34, 0, 0, 0),
(2792, 57, 2030000, 400, 35, 0, 0, 0),
(2793, 57, 2060000, 1, 36, 0, 0, 0),
(2794, 57, 2061000, 1, 37, 0, 0, 0),
(6566, 57, 2070000, 500, 40, 0, 0, 0),
(2742, 58, 1472001, 22500, 0, 104, 0, 0),
(2743, 58, 1462000, 32500, 0, 108, 0, 0),
(2744, 58, 1452005, 152500, 0, 112, 0, 0),
(2745, 58, 1442001, 62500, 0, 116, 0, 0),
(2746, 58, 1432002, 62500, 0, 120, 0, 0),
(2747, 58, 1422001, 47500, 0, 124, 0, 0),
(2748, 58, 1412006, 47500, 0, 128, 0, 0),
(2749, 58, 1402002, 152500, 0, 132, 0, 0),
(2750, 58, 1382002, 22500, 0, 136, 0, 0),
(2751, 58, 1372003, 40500, 0, 140, 0, 0),
(2752, 58, 1332012, 42500, 0, 144, 0, 0),
(2753, 58, 1332009, 44500, 0, 148, 0, 0),
(2754, 58, 1322014, 42500, 0, 152, 0, 0),
(2755, 58, 1312005, 42500, 0, 156, 0, 0),
(2756, 58, 1302068, 352500, 0, 160, 0, 0),
(2680, 59, 1061045, 42500, 0, 108, 0, 0),
(2681, 59, 1061044, 42500, 0, 112, 0, 0),
(2682, 59, 1061043, 42500, 0, 116, 0, 0),
(2683, 59, 1060046, 42500, 0, 120, 0, 0),
(2684, 59, 1060045, 42500, 0, 124, 0, 0),
(2685, 59, 1060044, 42500, 0, 128, 0, 0),
(2686, 59, 1060043, 42500, 0, 132, 0, 0),
(2687, 59, 1041050, 47500, 0, 136, 0, 0),
(2688, 59, 1041049, 47500, 0, 140, 0, 0),
(2689, 59, 1041048, 47500, 0, 144, 0, 0),
(2690, 59, 1041047, 47500, 0, 148, 0, 0),
(2691, 59, 1040060, 47500, 0, 152, 0, 0),
(2692, 59, 1040059, 47500, 0, 156, 0, 0),
(2693, 59, 1040058, 47500, 0, 160, 0, 0),
(2694, 59, 1040057, 47500, 0, 164, 0, 0),
(2695, 59, 1002175, 32500, 0, 168, 0, 0),
(2696, 59, 1002174, 32500, 0, 172, 0, 0),
(2697, 59, 1002173, 32500, 0, 176, 0, 0),
(2698, 59, 1002172, 32500, 0, 180, 0, 0),
(2699, 59, 1002171, 32500, 0, 184, 0, 0),
(2700, 59, 1061051, 46500, 0, 188, 0, 0),
(2701, 59, 1061050, 46500, 0, 192, 0, 0),
(2702, 59, 1061052, 46500, 0, 196, 0, 0),
(2703, 59, 1060057, 46500, 0, 200, 0, 0),
(2704, 59, 1060056, 46500, 0, 204, 0, 0),
(2705, 59, 1060058, 46500, 0, 208, 0, 0),
(2706, 59, 1060059, 46500, 0, 212, 0, 0),
(2707, 59, 1041055, 52500, 0, 216, 0, 0),
(2708, 59, 1041054, 52500, 0, 220, 0, 0),
(2709, 59, 1041056, 52500, 0, 224, 0, 0),
(2710, 59, 1040068, 52500, 0, 228, 0, 0),
(2711, 59, 1040067, 52500, 0, 232, 0, 0),
(2712, 59, 1040070, 52500, 0, 236, 0, 0),
(2713, 59, 1040069, 52500, 0, 240, 0, 0),
(2714, 59, 1002165, 32500, 0, 244, 0, 0),
(2715, 59, 1002164, 32500, 0, 248, 0, 0),
(2716, 59, 1002163, 32500, 0, 252, 0, 0),
(2717, 59, 1002162, 32500, 0, 256, 0, 0),
(2718, 59, 1002161, 32500, 0, 260, 0, 0),
(2719, 59, 1061036, 42500, 0, 264, 0, 0),
(2720, 59, 1061035, 42500, 0, 268, 0, 0),
(2721, 59, 1061034, 42500, 0, 272, 0, 0),
(2722, 59, 1050028, 42500, 0, 276, 0, 0),
(2723, 59, 1050027, 42500, 0, 280, 0, 0),
(2724, 59, 1050026, 42500, 0, 284, 0, 0),
(2725, 59, 1050003, 42500, 0, 288, 0, 0),
(2726, 59, 1041043, 44500, 0, 292, 0, 0),
(2727, 59, 1041042, 44500, 0, 296, 0, 0),
(2728, 59, 1041041, 44500, 0, 300, 0, 0),
(2729, 59, 1002064, 42500, 0, 304, 0, 0),
(2730, 59, 1092006, 62500, 0, 308, 0, 0),
(2731, 59, 1060019, 40500, 0, 312, 0, 0),
(2732, 59, 1060018, 40500, 0, 316, 0, 0),
(2733, 59, 1060017, 40500, 0, 320, 0, 0),
(2734, 59, 1060016, 40500, 0, 324, 0, 0),
(2735, 59, 1051013, 62500, 0, 328, 0, 0),
(2736, 59, 1051012, 62500, 0, 332, 0, 0),
(2737, 59, 1051011, 62500, 0, 336, 0, 0),
(2738, 59, 1051010, 62500, 0, 340, 0, 0),
(2739, 59, 1040026, 42500, 0, 344, 0, 0),
(2740, 59, 1040021, 42500, 0, 348, 0, 0),
(2741, 59, 1002023, 122500, 0, 352, 0, 0),
(2950, 60, 2070000, 500, 0, 1, 0, 0),
(2951, 60, 2061000, 1, 0, 0, 0, 0),
(2952, 60, 2060000, 1, 0, 0, 0, 0),
(2953, 60, 2030000, 400, 0, 0, 0, 0),
(2954, 60, 2050003, 500, 0, 0, 0, 0),
(2955, 60, 2050002, 300, 0, 0, 0, 0),
(2956, 60, 2050001, 200, 0, 0, 0, 0),
(2957, 60, 2050000, 200, 0, 0, 0, 0),
(2958, 60, 2020028, 3000, 0, 0, 0, 0),
(2959, 60, 2010004, 180, 0, 0, 0, 0),
(2960, 60, 2010003, 100, 0, 0, 0, 0),
(2961, 60, 2010001, 150, 0, 0, 0, 0),
(2962, 60, 2010002, 50, 0, 0, 0, 0),
(2963, 60, 2010000, 30, 0, 0, 0, 0),
(2964, 60, 2001002, 4000, 0, 0, 0, 0),
(2965, 60, 2001001, 2300, 0, 0, 0, 0),
(2966, 60, 2001000, 3200, 0, 0, 0, 0),
(2967, 60, 2022000, 1150, 0, 0, 0, 0),
(2968, 60, 2022003, 770, 0, 0, 0, 0),
(2969, 60, 2002005, 500, 0, 0, 0, 0),
(2970, 60, 2002004, 500, 0, 0, 0, 0),
(2971, 60, 2002002, 500, 0, 0, 0, 0),
(2972, 60, 2002001, 400, 0, 0, 0, 0),
(2973, 60, 2002000, 500, 0, 0, 0, 0),
(2974, 60, 2000006, 620, 0, 0, 0, 0),
(2975, 60, 2000003, 150, 0, 0, 0, 0),
(2976, 60, 2000002, 280, 0, 0, 0, 0),
(2977, 60, 2000001, 150, 0, 0, 0, 0),
(2978, 60, 2000000, 30, 0, 0, 0, 0),
(2979, 60, 2330000, 800, 0, 1, 0, 0),
(2980, 61, 2022214, 3200, 0, 108, 0, 0),
(2981, 61, 2022211, 6400, 0, 112, 0, 0),
(2982, 61, 2022210, 3200, 0, 116, 0, 0),
(2983, 61, 2022209, 1600, 0, 120, 0, 0),
(2984, 61, 2022208, 1000, 0, 124, 0, 0),
(2985, 61, 2022207, 2600, 0, 128, 0, 0),
(2986, 61, 2022206, 2200, 0, 132, 0, 0),
(2987, 61, 2022205, 1800, 0, 136, 0, 0),
(2988, 61, 2022204, 1200, 0, 140, 0, 0),
(2989, 61, 2022203, 800, 0, 144, 0, 0),
(2795, 62, 1472007, 60000, 0, 104, 0, 0),
(2796, 62, 1472004, 30000, 0, 108, 0, 0),
(2797, 62, 1472001, 20000, 0, 112, 0, 0),
(2798, 62, 1462005, 250000, 0, 116, 0, 0),
(2799, 62, 1462004, 200000, 0, 120, 0, 0),
(2800, 62, 1462000, 30000, 0, 124, 0, 0),
(2801, 62, 1452007, 375000, 0, 128, 0, 0),
(2802, 62, 1452006, 250000, 0, 132, 0, 0),
(2803, 62, 1452005, 150000, 0, 136, 0, 0),
(2804, 62, 1442009, 300000, 0, 140, 0, 0),
(2805, 62, 1442003, 175000, 0, 144, 0, 0),
(2806, 62, 1442001, 60000, 0, 148, 0, 0),
(2807, 62, 1432005, 225000, 0, 152, 0, 0),
(2808, 62, 1432003, 175000, 0, 156, 0, 0),
(2809, 62, 1432002, 60000, 0, 160, 0, 0),
(2810, 62, 1422007, 250000, 0, 164, 0, 0),
(2811, 62, 1422008, 200000, 0, 168, 0, 0),
(2812, 62, 1422001, 45000, 0, 172, 0, 0),
(2813, 62, 1412005, 250000, 0, 176, 0, 0),
(2814, 62, 1412004, 200000, 0, 180, 0, 0),
(2815, 62, 1412006, 45000, 0, 184, 0, 0),
(2816, 62, 1402007, 450000, 0, 188, 0, 0),
(2817, 62, 1402006, 350000, 0, 192, 0, 0),
(2818, 62, 1402002, 150000, 0, 196, 0, 0),
(2819, 62, 1382002, 20000, 0, 200, 0, 0),
(2820, 62, 1372000, 400000, 0, 204, 0, 0),
(2821, 62, 1372001, 175000, 0, 208, 0, 0),
(2822, 62, 1372003, 38000, 0, 212, 0, 0),
(2823, 62, 1332011, 425000, 0, 216, 0, 0),
(2824, 62, 1332014, 375000, 0, 220, 0, 0),
(2825, 62, 1332001, 200000, 0, 224, 0, 0),
(2826, 62, 1332012, 40000, 0, 228, 0, 0),
(2827, 62, 1332009, 42000, 0, 232, 0, 0),
(2828, 62, 1322016, 175000, 0, 236, 0, 0),
(2829, 62, 1322015, 100000, 0, 240, 0, 0),
(2830, 62, 1322014, 40000, 0, 244, 0, 0),
(2831, 62, 1312007, 175000, 0, 248, 0, 0),
(2832, 62, 1312006, 100000, 0, 252, 0, 0),
(2833, 62, 1312005, 40000, 0, 256, 0, 0),
(2834, 62, 1302009, 225000, 0, 260, 0, 0),
(2835, 62, 1302004, 100000, 0, 264, 0, 0),
(2836, 62, 1302008, 40000, 0, 268, 0, 0),
(2837, 63, 1061069, 160000, 0, 104, 0, 0),
(2838, 63, 1061070, 160000, 0, 108, 0, 0),
(2839, 63, 1060072, 160000, 0, 112, 0, 0),
(2840, 63, 1060071, 160000, 0, 116, 0, 0),
(2841, 63, 1060052, 108000, 0, 120, 0, 0),
(2842, 63, 1060050, 108000, 0, 124, 0, 0),
(2843, 63, 1060051, 108000, 0, 128, 0, 0),
(2844, 63, 1051009, 111000, 0, 132, 0, 0),
(2845, 63, 1051008, 111000, 0, 136, 0, 0),
(2846, 63, 1051007, 111000, 0, 140, 0, 0),
(2847, 63, 1041074, 180000, 0, 144, 0, 0),
(2848, 63, 1041075, 180000, 0, 148, 0, 0),
(2849, 63, 1040083, 180000, 0, 152, 0, 0),
(2850, 63, 1040082, 180000, 0, 156, 0, 0),
(2851, 63, 1040061, 114000, 0, 160, 0, 0),
(2852, 63, 1040062, 114000, 0, 164, 0, 0),
(2853, 63, 1040063, 114000, 0, 168, 0, 0),
(2854, 63, 1002180, 100000, 0, 172, 0, 0),
(2855, 63, 1002179, 100000, 0, 176, 0, 0),
(2856, 63, 1002178, 100000, 0, 180, 0, 0),
(2857, 63, 1002177, 100000, 0, 184, 0, 0),
(2858, 63, 1002176, 100000, 0, 188, 0, 0),
(2859, 63, 1061080, 160000, 0, 192, 0, 0),
(2860, 63, 1061081, 160000, 0, 196, 0, 0),
(2861, 63, 1061062, 108000, 0, 200, 0, 0),
(2862, 63, 1061060, 108000, 0, 204, 0, 0),
(2863, 63, 1061064, 108000, 0, 208, 0, 0),
(2864, 63, 1061061, 108000, 0, 212, 0, 0),
(2865, 63, 1060069, 160000, 0, 216, 0, 0),
(2866, 63, 1060070, 160000, 0, 220, 0, 0),
(2867, 63, 1060063, 108000, 0, 224, 0, 0),
(2868, 63, 1060061, 108000, 0, 228, 0, 0),
(2869, 63, 1060065, 108000, 0, 232, 0, 0),
(2870, 63, 1060062, 108000, 0, 236, 0, 0),
(2871, 63, 1041081, 180000, 0, 240, 0, 0),
(2872, 63, 1041082, 180000, 0, 244, 0, 0),
(2873, 63, 1041067, 114000, 0, 248, 0, 0),
(2874, 63, 1041065, 114000, 0, 252, 0, 0),
(2875, 63, 1041069, 114000, 0, 256, 0, 0),
(2876, 63, 1041066, 114000, 0, 260, 0, 0),
(2877, 63, 1040079, 180000, 0, 264, 0, 0),
(2878, 63, 1040081, 180000, 0, 268, 0, 0),
(2879, 63, 1040076, 114000, 0, 272, 0, 0),
(2880, 63, 1040074, 114000, 0, 276, 0, 0),
(2881, 63, 1040073, 114000, 0, 280, 0, 0),
(2882, 63, 1040072, 114000, 0, 284, 0, 0),
(2883, 63, 1002137, 100000, 0, 288, 0, 0),
(2884, 63, 1002135, 100000, 0, 292, 0, 0),
(2885, 63, 1002139, 100000, 0, 296, 0, 0),
(2886, 63, 1002138, 100000, 0, 300, 0, 0),
(2887, 63, 1061047, 120000, 0, 304, 0, 0),
(2888, 63, 1061048, 120000, 0, 308, 0, 0),
(2889, 63, 1051027, 450000, 0, 312, 0, 0),
(2890, 63, 1051024, 450000, 0, 316, 0, 0),
(2891, 63, 1051025, 450000, 0, 320, 0, 0),
(2892, 63, 1051023, 450000, 0, 324, 0, 0),
(2893, 63, 1050037, 450000, 0, 328, 0, 0),
(2894, 63, 1050036, 450000, 0, 332, 0, 0),
(2895, 63, 1050038, 450000, 0, 336, 0, 0),
(2896, 63, 1050035, 450000, 0, 340, 0, 0),
(2897, 63, 1050002, 300000, 0, 344, 0, 0),
(2898, 63, 1050031, 300000, 0, 348, 0, 0),
(2899, 63, 1041051, 120000, 0, 352, 0, 0),
(2900, 63, 1041052, 120000, 0, 356, 0, 0),
(2901, 63, 1002144, 96000, 0, 360, 0, 0),
(2902, 63, 1002143, 96000, 0, 364, 0, 0),
(2903, 63, 1002142, 96000, 0, 368, 0, 0),
(2904, 63, 1002141, 96000, 0, 372, 0, 0),
(2905, 63, 1092002, 200000, 0, 376, 0, 0),
(2906, 63, 1092001, 100000, 0, 380, 0, 0),
(2907, 63, 1061084, 180000, 0, 384, 0, 0),
(2908, 63, 1061083, 180000, 0, 388, 0, 0),
(2909, 63, 1060074, 180000, 0, 392, 0, 0),
(2910, 63, 1060075, 180000, 0, 396, 0, 0),
(2911, 63, 1051014, 112500, 0, 400, 0, 0),
(2912, 63, 1051001, 112500, 0, 404, 0, 0),
(2913, 63, 1050021, 112500, 0, 408, 0, 0),
(2914, 63, 1050000, 112500, 0, 412, 0, 0),
(2915, 63, 1041085, 200000, 0, 416, 0, 0),
(2916, 63, 1041084, 200000, 0, 420, 0, 0),
(2917, 63, 1040085, 200000, 0, 424, 0, 0),
(2918, 63, 1040000, 200000, 0, 428, 0, 0),
(2919, 63, 1002004, 160000, 0, 0, 0, 0),
(2920, 64, 2022476, 4200, 0, 0, 0, 0),
(2921, 64, 2022477, 9200, 0, 0, 0, 0),
(2922, 64, 2022478, 3200, 0, 0, 0, 0),
(2923, 64, 2022479, 3800, 0, 0, 0, 0),
(2924, 64, 2022480, 12000, 0, 0, 0, 0),
(2925, 64, 2022203, 800, 0, 0, 0, 0),
(2926, 64, 2022204, 1200, 0, 0, 0, 0),
(2927, 64, 2022205, 1800, 0, 0, 0, 0),
(2928, 64, 2022206, 2200, 0, 0, 0, 0),
(2929, 64, 2022207, 2600, 0, 0, 0, 0),
(2930, 64, 2022208, 1000, 0, 0, 0, 0),
(2931, 64, 2022209, 1600, 0, 0, 0, 0),
(2932, 64, 2022210, 3200, 0, 0, 0, 0),
(2933, 64, 2022211, 6400, 0, 0, 0, 0),
(2934, 64, 2022214, 3200, 0, 0, 0, 0),
(2935, 64, 2022215, 6800, 0, 0, 0, 0),
(2936, 64, 2050000, 200, 0, 0, 0, 0),
(2937, 64, 2050001, 200, 0, 0, 0, 0),
(2938, 64, 2050002, 300, 0, 0, 0, 0),
(2939, 64, 2050003, 500, 0, 0, 0, 0),
(2940, 64, 2030000, 400, 0, 0, 0, 0),
(2941, 64, 2060000, 1, 0, 0, 0, 0),
(2942, 64, 2061000, 1, 0, 0, 0, 0),
(2596, 65, 2061000, 1, 0, 120, 0, 0),
(2597, 65, 2060000, 1, 0, 124, 0, 0),
(2598, 65, 2030000, 400, 0, 128, 0, 0),
(2599, 65, 2050002, 300, 0, 132, 0, 0),
(2600, 65, 2050001, 200, 0, 136, 0, 0),
(2601, 65, 2050000, 200, 0, 140, 0, 0),
(2602, 65, 2020015, 10608, 0, 144, 0, 0),
(2603, 65, 2020014, 8424, 0, 148, 0, 0),
(2604, 65, 2020013, 5824, 0, 152, 0, 0),
(2605, 65, 2020012, 4680, 0, 156, 0, 0),
(2606, 65, 2001002, 4000, 0, 160, 0, 0),
(2607, 65, 2001001, 2300, 0, 164, 0, 0),
(2608, 65, 2001000, 3200, 0, 168, 0, 0),
(2609, 65, 2022000, 1155, 0, 172, 0, 0),
(2610, 65, 2022003, 770, 0, 176, 0, 0),
(2611, 65, 2010004, 310, 0, 180, 0, 0),
(2612, 65, 2010003, 60, 0, 184, 0, 0),
(2613, 65, 2010001, 150, 0, 188, 0, 0),
(2614, 65, 2010002, 50, 0, 192, 0, 0),
(2615, 65, 2010000, 30, 0, 196, 0, 0),
(2616, 65, 2002005, 500, 0, 200, 0, 0),
(2617, 65, 2002004, 500, 0, 204, 0, 0),
(2618, 65, 2002002, 500, 0, 208, 0, 0),
(2619, 65, 2002001, 400, 0, 212, 0, 0),
(2620, 65, 2002000, 500, 0, 216, 0, 0),
(2621, 65, 2000006, 385, 0, 220, 0, 0),
(2622, 65, 2000003, 150, 0, 224, 0, 0),
(2623, 65, 2000002, 280, 0, 228, 0, 0),
(2624, 65, 2000001, 150, 0, 232, 0, 0),
(2625, 65, 2000000, 30, 0, 236, 0, 0),
(2990, 66, 2260000, 1000, 0, 220, 0, 0),
(2991, 66, 2120000, 30, 0, 224, 0, 0),
(2992, 68, 1492004, 75000, 0, 104, 0, 0),
(2993, 68, 1482004, 75000, 0, 108, 0, 0),
(2994, 68, 1472001, 20000, 0, 112, 0, 0),
(2995, 68, 1462000, 30000, 0, 116, 0, 0),
(2996, 68, 1452005, 150000, 0, 120, 0, 0),
(2997, 68, 1442001, 60000, 0, 124, 0, 0),
(2998, 68, 1432002, 60000, 0, 128, 0, 0),
(2999, 68, 1422001, 45000, 0, 132, 0, 0),
(3000, 68, 1412006, 45000, 0, 136, 0, 0),
(3001, 68, 1402002, 150000, 0, 140, 0, 0),
(3002, 68, 1382002, 20000, 0, 144, 0, 0),
(3003, 68, 1372003, 38000, 0, 148, 0, 0),
(3004, 68, 1332012, 40000, 0, 152, 0, 0),
(3005, 68, 1332009, 42000, 0, 156, 0, 0),
(3006, 68, 1322014, 40000, 0, 160, 0, 0),
(3007, 68, 1302008, 40000, 0, 168, 0, 0),
(3008, 67, 1052107, 90000, 0, 104, 0, 0),
(3009, 67, 1002622, 40000, 0, 108, 0, 0),
(3010, 67, 1061046, 40000, 0, 112, 0, 0),
(3011, 67, 1061045, 40000, 0, 116, 0, 0),
(3012, 67, 1061044, 40000, 0, 120, 0, 0),
(3013, 67, 1061043, 40000, 0, 124, 0, 0),
(3014, 67, 1060046, 40000, 0, 128, 0, 0),
(3015, 67, 1060045, 40000, 0, 132, 0, 0),
(3016, 67, 1060044, 40000, 0, 136, 0, 0),
(3017, 67, 1060043, 40000, 0, 140, 0, 0),
(3018, 67, 1041050, 45000, 0, 144, 0, 0),
(3019, 67, 1041049, 45000, 0, 148, 0, 0),
(3020, 67, 1041048, 45000, 0, 152, 0, 0),
(3021, 67, 1041047, 45000, 0, 156, 0, 0),
(3022, 67, 1040060, 45000, 0, 160, 0, 0),
(3023, 67, 1040059, 45000, 0, 164, 0, 0),
(3024, 67, 1040058, 45000, 0, 168, 0, 0),
(3025, 67, 1040057, 45000, 0, 172, 0, 0),
(3026, 67, 1002175, 30000, 0, 176, 0, 0),
(3027, 67, 1002174, 30000, 0, 180, 0, 0),
(3028, 67, 1002173, 30000, 0, 184, 0, 0),
(3029, 67, 1002172, 30000, 0, 188, 0, 0),
(3030, 67, 1002171, 30000, 0, 192, 0, 0),
(3031, 67, 1061051, 44000, 0, 196, 0, 0),
(3032, 67, 1061050, 44000, 0, 200, 0, 0),
(3033, 67, 1061052, 44000, 0, 204, 0, 0),
(3034, 67, 1060057, 44000, 0, 208, 0, 0),
(3035, 67, 1060056, 44000, 0, 212, 0, 0),
(3036, 67, 1060058, 44000, 0, 216, 0, 0),
(3037, 67, 1060059, 44000, 0, 220, 0, 0),
(3038, 67, 1041055, 50000, 0, 224, 0, 0),
(3039, 67, 1041054, 50000, 0, 228, 0, 0),
(3040, 67, 1041056, 50000, 0, 232, 0, 0),
(3041, 67, 1040068, 50000, 0, 236, 0, 0),
(3042, 67, 1040067, 50000, 0, 240, 0, 0),
(3043, 67, 1040070, 50000, 0, 244, 0, 0),
(3044, 67, 1040069, 50000, 0, 248, 0, 0),
(3045, 67, 1002165, 30000, 0, 252, 0, 0),
(3046, 67, 1002164, 30000, 0, 256, 0, 0),
(3047, 67, 1002163, 30000, 0, 260, 0, 0),
(3048, 67, 1002162, 30000, 0, 264, 0, 0),
(3049, 67, 1002161, 30000, 0, 268, 0, 0),
(3050, 67, 1061036, 40000, 0, 272, 0, 0),
(3051, 67, 1061035, 40000, 0, 276, 0, 0),
(3052, 67, 1061034, 40000, 0, 280, 0, 0),
(3053, 67, 1050028, 40000, 0, 284, 0, 0),
(3054, 67, 1050027, 40000, 0, 288, 0, 0),
(3055, 67, 1050026, 40000, 0, 292, 0, 0),
(3056, 67, 1050003, 40000, 0, 296, 0, 0),
(3057, 67, 1041043, 42000, 0, 300, 0, 0),
(3058, 67, 1041042, 42000, 0, 304, 0, 0),
(3059, 67, 1041041, 42000, 0, 308, 0, 0),
(3060, 67, 1002064, 40000, 0, 312, 0, 0),
(3061, 67, 1092006, 60000, 0, 316, 0, 0),
(3062, 67, 1060019, 38000, 0, 320, 0, 0),
(3063, 67, 1060018, 38000, 0, 324, 0, 0),
(3064, 67, 1060017, 38000, 0, 328, 0, 0),
(3065, 67, 1060016, 38000, 0, 332, 0, 0),
(3066, 67, 1051013, 60000, 0, 336, 0, 0),
(3067, 67, 1051012, 60000, 0, 340, 0, 0),
(3068, 67, 1051011, 60000, 0, 344, 0, 0),
(3069, 67, 1051010, 60000, 0, 348, 0, 0),
(3070, 67, 1040026, 40000, 0, 352, 0, 0),
(3071, 67, 1040021, 40000, 0, 356, 0, 0),
(3072, 67, 1002023, 120000, 0, 360, 0, 0),
(3073, 68, 1312005, 40000, 0, 164, 0, 0),
(3074, 69, 2330000, 800, 0, 1, 0, 0),
(3075, 69, 2070000, 500, 0, 1, 0, 0),
(3076, 69, 2061000, 1, 0, 0, 0, 0),
(3077, 69, 2060000, 1, 0, 0, 0, 0),
(3078, 69, 2030000, 400, 0, 0, 0, 0),
(3079, 69, 2050003, 500, 0, 0, 0, 0),
(3080, 69, 2050002, 300, 0, 0, 0, 0),
(3081, 69, 2050001, 200, 0, 0, 0, 0),
(3082, 69, 2050000, 200, 0, 0, 0, 0),
(3083, 69, 2020028, 3000, 0, 0, 0, 0),
(3084, 69, 2010004, 180, 0, 0, 0, 0),
(3085, 69, 2010003, 100, 0, 0, 0, 0),
(3086, 69, 2010001, 150, 0, 0, 0, 0),
(3087, 69, 2010002, 50, 0, 0, 0, 0),
(3088, 69, 2010000, 30, 0, 0, 0, 0),
(3089, 69, 2001002, 4000, 0, 0, 0, 0),
(3090, 69, 2001001, 2300, 0, 0, 0, 0),
(3091, 69, 2001000, 3200, 0, 0, 0, 0),
(3092, 69, 2022000, 1150, 0, 0, 0, 0),
(3093, 69, 2022003, 770, 0, 0, 0, 0),
(3094, 69, 2002005, 500, 0, 0, 0, 0),
(3095, 69, 2002004, 500, 0, 0, 0, 0),
(3096, 69, 2002002, 500, 0, 0, 0, 0),
(3097, 69, 2002001, 400, 0, 0, 0, 0),
(3098, 69, 2002000, 500, 0, 0, 0, 0),
(3099, 69, 2000006, 385, 0, 0, 0, 0),
(3100, 69, 2000003, 200, 0, 0, 0, 0),
(3101, 69, 2000002, 320, 0, 0, 0, 0),
(3102, 69, 2000001, 150, 0, 0, 0, 0),
(3103, 69, 2000000, 30, 0, 0, 0, 0),
(3104, 70, 1492006, 160000, 0, 104, 0, 0),
(3105, 70, 1492005, 100000, 0, 108, 0, 0),
(3106, 70, 1482006, 150000, 0, 112, 0, 0),
(3107, 70, 1482005, 100000, 0, 116, 0, 0),
(3108, 70, 1472007, 60000, 0, 120, 0, 0),
(3109, 70, 1472004, 30000, 0, 124, 0, 0),
(3110, 70, 1462005, 250000, 0, 128, 0, 0),
(3111, 70, 1462004, 200000, 0, 132, 0, 0),
(3112, 70, 1452007, 375000, 0, 136, 0, 0),
(3113, 70, 1452006, 250000, 0, 140, 0, 0),
(3114, 70, 1442009, 300000, 0, 144, 0, 0),
(3115, 70, 1442003, 175000, 0, 148, 0, 0),
(3116, 70, 1432005, 225000, 0, 152, 0, 0),
(3117, 70, 1432003, 175000, 0, 156, 0, 0),
(3118, 70, 1422007, 250000, 0, 160, 0, 0),
(3119, 70, 1422008, 200000, 0, 164, 0, 0),
(3120, 70, 1412005, 250000, 0, 168, 0, 0),
(3121, 70, 1412004, 200000, 0, 172, 0, 0),
(3122, 70, 1402007, 450000, 0, 176, 0, 0),
(3123, 70, 1402006, 350000, 0, 180, 0, 0),
(3124, 70, 1372000, 400000, 0, 184, 0, 0),
(3125, 70, 1372001, 175000, 0, 188, 0, 0),
(3126, 70, 1332011, 425000, 0, 192, 0, 0),
(3127, 70, 1332014, 375000, 0, 196, 0, 0),
(3128, 70, 1332001, 200000, 0, 200, 0, 0),
(3129, 70, 1322016, 175000, 0, 204, 0, 0),
(3130, 70, 1322015, 100000, 0, 208, 0, 0),
(3131, 70, 1312007, 175000, 0, 212, 0, 0),
(3132, 70, 1312006, 100000, 0, 216, 0, 0),
(3133, 70, 1302009, 225000, 0, 220, 0, 0),
(3134, 70, 1302004, 100000, 0, 224, 0, 0),
(3135, 71, 1002625, 75000, 0, 104, 0, 0),
(3136, 71, 1052113, 120000, 0, 108, 0, 0),
(3137, 71, 1052110, 100000, 0, 112, 0, 0),
(3138, 71, 1061069, 160000, 0, 116, 0, 0),
(3139, 71, 1061070, 160000, 0, 120, 0, 0),
(3140, 71, 1060072, 160000, 0, 124, 0, 0),
(3141, 71, 1060071, 160000, 0, 128, 0, 0),
(3142, 71, 1060052, 108000, 0, 132, 0, 0),
(3143, 71, 1060050, 108000, 0, 136, 0, 0),
(3144, 71, 1060051, 108000, 0, 140, 0, 0),
(3145, 71, 1051009, 111000, 0, 144, 0, 0),
(3146, 71, 1051008, 111000, 0, 148, 0, 0),
(3147, 71, 1051007, 111000, 0, 152, 0, 0),
(3148, 71, 1041074, 180000, 0, 156, 0, 0),
(3149, 71, 1041075, 180000, 0, 160, 0, 0),
(3150, 71, 1040083, 180000, 0, 164, 0, 0),
(3151, 71, 1040082, 180000, 0, 168, 0, 0),
(3152, 71, 1040061, 114000, 0, 172, 0, 0),
(3153, 71, 1040062, 114000, 0, 176, 0, 0),
(3154, 71, 1040063, 114000, 0, 180, 0, 0),
(3155, 71, 1002180, 100000, 0, 184, 0, 0),
(3156, 71, 1002179, 100000, 0, 188, 0, 0),
(3157, 71, 1002178, 100000, 0, 192, 0, 0),
(3158, 71, 1002177, 100000, 0, 196, 0, 0),
(3159, 71, 1002176, 100000, 0, 200, 0, 0),
(3160, 71, 1061080, 160000, 0, 204, 0, 0),
(3161, 71, 1061081, 160000, 0, 208, 0, 0),
(3162, 71, 1061062, 108000, 0, 212, 0, 0),
(3163, 71, 1061060, 108000, 0, 216, 0, 0),
(3164, 71, 1061064, 108000, 0, 220, 0, 0),
(3165, 71, 1061061, 108000, 0, 224, 0, 0),
(3166, 71, 1060069, 160000, 0, 228, 0, 0),
(3167, 71, 1060070, 160000, 0, 232, 0, 0),
(3168, 71, 1060063, 108000, 0, 236, 0, 0),
(3169, 71, 1060061, 108000, 0, 240, 0, 0),
(3170, 71, 1060065, 108000, 0, 244, 0, 0),
(3171, 71, 1060062, 108000, 0, 248, 0, 0),
(3172, 71, 1041081, 180000, 0, 252, 0, 0),
(3173, 71, 1041082, 180000, 0, 256, 0, 0),
(3174, 71, 1041067, 114000, 0, 260, 0, 0),
(3175, 71, 1041065, 114000, 0, 264, 0, 0),
(3176, 71, 1041069, 114000, 0, 268, 0, 0),
(3177, 71, 1041066, 114000, 0, 272, 0, 0),
(3178, 71, 1040079, 180000, 0, 276, 0, 0),
(3179, 71, 1040081, 180000, 0, 280, 0, 0),
(3180, 71, 1040076, 114000, 0, 284, 0, 0),
(3181, 71, 1040074, 114000, 0, 288, 0, 0),
(3182, 71, 1040073, 114000, 0, 292, 0, 0),
(3183, 71, 1040072, 114000, 0, 296, 0, 0),
(3184, 71, 1002137, 100000, 0, 300, 0, 0),
(3185, 71, 1002135, 100000, 0, 304, 0, 0),
(3186, 71, 1002139, 100000, 0, 308, 0, 0),
(3187, 71, 1002138, 100000, 0, 312, 0, 0),
(3188, 71, 1061047, 120000, 0, 316, 0, 0),
(3189, 71, 1061048, 120000, 0, 320, 0, 0),
(3190, 71, 1051027, 450000, 0, 324, 0, 0),
(3191, 71, 1051024, 450000, 0, 328, 0, 0),
(3192, 71, 1051025, 450000, 0, 332, 0, 0),
(3193, 71, 1051023, 450000, 0, 336, 0, 0),
(3194, 71, 1050037, 450000, 0, 340, 0, 0),
(3195, 71, 1050036, 450000, 0, 344, 0, 0),
(3196, 71, 1050038, 450000, 0, 348, 0, 0),
(3197, 71, 1050035, 450000, 0, 352, 0, 0),
(3198, 71, 1050002, 300000, 0, 356, 0, 0),
(3199, 71, 1050031, 300000, 0, 360, 0, 0),
(3200, 71, 1041051, 120000, 0, 364, 0, 0),
(3201, 71, 1041052, 120000, 0, 368, 0, 0),
(3202, 71, 1002144, 96000, 0, 372, 0, 0),
(3203, 71, 1002143, 96000, 0, 376, 0, 0),
(3204, 71, 1002142, 96000, 0, 380, 0, 0),
(3205, 71, 1002141, 96000, 0, 384, 0, 0),
(3206, 71, 1092002, 200000, 0, 388, 0, 0),
(3207, 71, 1092001, 100000, 0, 392, 0, 0),
(3208, 71, 1061084, 180000, 0, 396, 0, 0),
(3209, 71, 1061083, 180000, 0, 400, 0, 0),
(3210, 71, 1060074, 180000, 0, 404, 0, 0),
(3211, 71, 1060075, 180000, 0, 408, 0, 0),
(3212, 71, 1051014, 112500, 0, 412, 0, 0),
(3213, 71, 1051001, 112500, 0, 416, 0, 0),
(3214, 71, 1050021, 112500, 0, 420, 0, 0),
(3215, 71, 1050000, 112500, 0, 424, 0, 0),
(3216, 71, 1041085, 200000, 0, 428, 0, 0),
(3217, 71, 1041084, 200000, 0, 432, 0, 0),
(3218, 71, 1040085, 200000, 0, 436, 0, 0),
(3219, 71, 1040000, 200000, 0, 440, 0, 0),
(3220, 71, 1002004, 160000, 0, 444, 0, 0),
(3221, 71, 1072338, 29000, 0, 448, 0, 0),
(3222, 71, 1072171, 29000, 0, 452, 0, 0),
(3223, 71, 1072170, 29000, 0, 456, 0, 0),
(3224, 71, 1072169, 28000, 0, 460, 0, 0),
(3225, 71, 1072168, 30000, 0, 464, 0, 0),
(3226, 72, 2330000, 800, 0, 1, 0, 0),
(3227, 72, 2070000, 500, 0, 1, 0, 0),
(3228, 72, 2061000, 1, 0, 0, 0, 0),
(3229, 72, 2060000, 1, 0, 0, 0, 0),
(3230, 72, 2030000, 400, 0, 0, 0, 0),
(3231, 72, 2050002, 300, 0, 0, 0, 0),
(3232, 72, 2050001, 200, 0, 0, 0, 0),
(3233, 72, 2050000, 200, 0, 0, 0, 0),
(3234, 72, 2020015, 10608, 0, 0, 0, 0),
(3235, 72, 2020014, 8424, 0, 0, 0, 0),
(3236, 72, 2020013, 5824, 0, 0, 0, 0),
(3237, 72, 2020012, 4680, 0, 0, 0, 0),
(3238, 72, 2001002, 4000, 0, 0, 0, 0),
(3239, 72, 2001001, 2300, 0, 0, 0, 0),
(3240, 72, 2001000, 3200, 0, 0, 0, 0),
(3241, 72, 2022000, 1155, 0, 0, 0, 0),
(3242, 72, 2022003, 770, 0, 0, 0, 0),
(3243, 72, 2010004, 180, 0, 0, 0, 0),
(3244, 72, 2010003, 60, 0, 0, 0, 0),
(3245, 72, 2010001, 150, 0, 0, 0, 0),
(3246, 72, 2010002, 50, 0, 0, 0, 0),
(3247, 72, 2010000, 30, 0, 0, 0, 0),
(3248, 72, 2002005, 500, 0, 0, 0, 0),
(3249, 72, 2002004, 500, 0, 0, 0, 0),
(3250, 72, 2002002, 500, 0, 0, 0, 0),
(3251, 72, 2002001, 400, 0, 0, 0, 0),
(3252, 72, 2002000, 500, 0, 0, 0, 0),
(3253, 72, 2000006, 620, 0, 0, 0, 0),
(3254, 72, 2000003, 200, 0, 0, 0, 0),
(3255, 72, 2000002, 320, 0, 0, 0, 0),
(3256, 72, 2000001, 160, 0, 0, 0, 0),
(3257, 72, 2000000, 30, 0, 0, 0, 0),
(3258, 72, 2022186, 2400, 0, 0, 0, 0),
(3259, 73, 2330000, 800, 0, 104, 0, 0),
(3260, 73, 2070000, 500, 0, 108, 0, 0),
(3261, 73, 2061000, 1, 0, 120, 0, 0),
(3262, 73, 2060000, 1, 0, 124, 0, 0),
(3263, 73, 2030000, 400, 0, 128, 0, 0),
(3264, 73, 2020015, 10608, 0, 132, 0, 0),
(3265, 73, 2020014, 8424, 0, 136, 0, 0),
(3266, 73, 2020013, 5824, 0, 140, 0, 0),
(3267, 73, 2020012, 4680, 0, 144, 0, 0),
(3268, 73, 2022000, 1155, 0, 148, 0, 0),
(3269, 73, 2022003, 770, 0, 152, 0, 0),
(3270, 73, 2020006, 551, 0, 156, 0, 0),
(3271, 73, 2020004, 468, 0, 160, 0, 0),
(3272, 73, 2020003, 468, 0, 164, 0, 0),
(3273, 73, 2020001, 228, 0, 168, 0, 0),
(3274, 73, 2010004, 280, 0, 172, 0, 0),
(3275, 73, 2020005, 332, 0, 176, 0, 0),
(3276, 73, 2001002, 4160, 0, 180, 0, 0),
(3277, 73, 2001001, 2392, 0, 184, 0, 0),
(3278, 73, 2001000, 3328, 0, 188, 0, 0),
(3279, 73, 2002005, 520, 0, 192, 0, 0),
(3280, 73, 2002004, 520, 0, 196, 0, 0),
(3281, 73, 2002002, 520, 0, 200, 0, 0),
(3282, 73, 2002001, 416, 0, 204, 0, 0),
(3283, 73, 2002000, 520, 0, 208, 0, 0),
(3284, 73, 2000006, 385, 0, 212, 0, 0),
(3285, 73, 2000003, 150, 0, 216, 0, 0),
(3286, 73, 2000002, 332, 0, 220, 0, 0),
(3287, 73, 2000001, 150, 0, 224, 0, 0),
(3288, 73, 2002011, 1200, 0, 0, 0, 0),
(3289, 74, 1492006, 160000, 0, 104, 0, 0),
(3290, 74, 1492005, 100000, 0, 108, 0, 0),
(3291, 74, 1492004, 75000, 0, 112, 0, 0),
(3292, 74, 1482006, 150000, 0, 116, 0, 0),
(3293, 74, 1482005, 100000, 0, 120, 0, 0),
(3294, 74, 1482004, 75000, 0, 124, 0, 0),
(3295, 74, 1472007, 60000, 0, 128, 0, 0),
(3296, 74, 1472004, 30000, 0, 132, 0, 0),
(3297, 74, 1472001, 20000, 0, 136, 0, 0),
(3298, 74, 1462005, 250000, 0, 140, 0, 0),
(3299, 74, 1462004, 200000, 0, 144, 0, 0),
(3300, 74, 1462000, 30000, 0, 148, 0, 0),
(3301, 74, 1452007, 375000, 0, 152, 0, 0),
(3302, 74, 1452006, 250000, 0, 156, 0, 0),
(3303, 74, 1452005, 150000, 0, 160, 0, 0),
(3304, 74, 1442009, 300000, 0, 164, 0, 0),
(3305, 74, 1442003, 175000, 0, 168, 0, 0),
(3306, 74, 1442001, 60000, 0, 172, 0, 0),
(3307, 74, 1432005, 225000, 0, 176, 0, 0),
(3308, 74, 1432003, 175000, 0, 180, 0, 0),
(3309, 74, 1432002, 60000, 0, 184, 0, 0),
(3310, 74, 1422007, 250000, 0, 188, 0, 0),
(3311, 74, 1422008, 200000, 0, 192, 0, 0),
(3312, 74, 1422001, 45000, 0, 196, 0, 0),
(3313, 74, 1412005, 250000, 0, 200, 0, 0),
(3314, 74, 1412004, 200000, 0, 204, 0, 0),
(3315, 74, 1412006, 45000, 0, 208, 0, 0),
(3316, 74, 1402007, 450000, 0, 212, 0, 0),
(3317, 74, 1402006, 350000, 0, 216, 0, 0),
(3318, 74, 1402002, 150000, 0, 220, 0, 0),
(3319, 74, 1382002, 20000, 0, 224, 0, 0),
(3320, 74, 1372000, 400000, 0, 228, 0, 0),
(3321, 74, 1372001, 175000, 0, 232, 0, 0),
(3322, 74, 1372003, 38000, 0, 236, 0, 0),
(3323, 74, 1332011, 425000, 0, 240, 0, 0),
(3324, 74, 1332014, 375000, 0, 244, 0, 0),
(3325, 74, 1332001, 200000, 0, 248, 0, 0),
(3326, 74, 1332012, 40000, 0, 252, 0, 0),
(3327, 74, 1332009, 42000, 0, 256, 0, 0),
(3328, 74, 1322016, 175000, 0, 260, 0, 0),
(3329, 74, 1322015, 100000, 0, 264, 0, 0),
(3330, 74, 1322014, 40000, 0, 268, 0, 0),
(3331, 74, 1312007, 175000, 0, 272, 0, 0),
(3332, 74, 1312006, 100000, 0, 276, 0, 0),
(3333, 74, 1312005, 40000, 0, 280, 0, 0),
(3334, 74, 1302009, 225000, 0, 284, 0, 0),
(3335, 74, 1302004, 100000, 0, 288, 0, 0),
(3336, 74, 1302008, 40000, 0, 292, 0, 0),
(3337, 75, 1002625, 75000, 0, 104, 0, 0),
(3338, 75, 1052113, 120000, 0, 108, 0, 0),
(3339, 75, 1052110, 100000, 0, 112, 0, 0),
(3340, 75, 1061069, 160000, 0, 116, 0, 0),
(3341, 75, 1061070, 160000, 0, 120, 0, 0),
(3342, 75, 1060072, 160000, 0, 124, 0, 0),
(3343, 75, 1060071, 160000, 0, 128, 0, 0),
(3344, 75, 1060052, 108000, 0, 132, 0, 0),
(3345, 75, 1060050, 108000, 0, 136, 0, 0),
(3346, 75, 1060051, 108000, 0, 140, 0, 0),
(3347, 75, 1051009, 111000, 0, 144, 0, 0),
(3348, 75, 1051008, 111000, 0, 148, 0, 0),
(3349, 75, 1051007, 111000, 0, 152, 0, 0),
(3350, 75, 1041074, 180000, 0, 156, 0, 0),
(3351, 75, 1041075, 180000, 0, 160, 0, 0),
(3352, 75, 1040083, 180000, 0, 164, 0, 0),
(3353, 75, 1040082, 180000, 0, 168, 0, 0),
(3354, 75, 1040061, 114000, 0, 172, 0, 0),
(3355, 75, 1040062, 114000, 0, 176, 0, 0),
(3356, 75, 1040063, 114000, 0, 180, 0, 0),
(3357, 75, 1002180, 100000, 0, 184, 0, 0),
(3358, 75, 1002179, 100000, 0, 188, 0, 0),
(3359, 75, 1002178, 100000, 0, 192, 0, 0),
(3360, 75, 1002177, 100000, 0, 196, 0, 0),
(3361, 75, 1002176, 100000, 0, 200, 0, 0),
(3362, 75, 1061080, 160000, 0, 204, 0, 0),
(3363, 75, 1061081, 160000, 0, 208, 0, 0),
(3364, 75, 1061062, 108000, 0, 212, 0, 0),
(3365, 75, 1061060, 108000, 0, 216, 0, 0),
(3366, 75, 1061064, 108000, 0, 220, 0, 0),
(3367, 75, 1061061, 108000, 0, 224, 0, 0),
(3368, 75, 1060069, 160000, 0, 228, 0, 0),
(3369, 75, 1060070, 160000, 0, 232, 0, 0),
(3370, 75, 1060063, 108000, 0, 236, 0, 0),
(3371, 75, 1060061, 108000, 0, 240, 0, 0),
(3372, 75, 1060065, 108000, 0, 244, 0, 0),
(3373, 75, 1060062, 108000, 0, 248, 0, 0),
(3374, 75, 1041081, 180000, 0, 252, 0, 0);
INSERT INTO `shopitems` (`shopitemid`, `shopid`, `itemid`, `price`, `pitch`, `position`, `reqitem`, `reqitemq`) VALUES
(3375, 75, 1041082, 180000, 0, 256, 0, 0),
(3376, 75, 1041067, 114000, 0, 260, 0, 0),
(3377, 75, 1041065, 114000, 0, 264, 0, 0),
(3378, 75, 1041069, 114000, 0, 268, 0, 0),
(3379, 75, 1041066, 114000, 0, 272, 0, 0),
(3380, 75, 1040079, 180000, 0, 276, 0, 0),
(3381, 75, 1040081, 180000, 0, 280, 0, 0),
(3382, 75, 1040076, 114000, 0, 284, 0, 0),
(3383, 75, 1040074, 114000, 0, 288, 0, 0),
(3384, 75, 1040073, 114000, 0, 292, 0, 0),
(3385, 75, 1040072, 114000, 0, 296, 0, 0),
(3386, 75, 1002137, 100000, 0, 300, 0, 0),
(3387, 75, 1002135, 100000, 0, 304, 0, 0),
(3388, 75, 1002139, 100000, 0, 308, 0, 0),
(3389, 75, 1002138, 100000, 0, 312, 0, 0),
(3390, 75, 1061047, 120000, 0, 316, 0, 0),
(3391, 75, 1061048, 120000, 0, 320, 0, 0),
(3392, 75, 1051027, 450000, 0, 324, 0, 0),
(3393, 75, 1051024, 450000, 0, 328, 0, 0),
(3394, 75, 1051025, 450000, 0, 332, 0, 0),
(3395, 75, 1051023, 450000, 0, 336, 0, 0),
(3396, 75, 1050037, 450000, 0, 340, 0, 0),
(3397, 75, 1050036, 450000, 0, 344, 0, 0),
(3398, 75, 1050038, 450000, 0, 348, 0, 0),
(3399, 75, 1050035, 450000, 0, 352, 0, 0),
(3400, 75, 1050002, 300000, 0, 356, 0, 0),
(3401, 75, 1050031, 300000, 0, 360, 0, 0),
(3402, 75, 1041051, 120000, 0, 364, 0, 0),
(3403, 75, 1041052, 120000, 0, 368, 0, 0),
(3404, 75, 1002144, 96000, 0, 372, 0, 0),
(3405, 75, 1002143, 96000, 0, 376, 0, 0),
(3406, 75, 1002142, 96000, 0, 380, 0, 0),
(3407, 75, 1002141, 96000, 0, 384, 0, 0),
(3408, 75, 1092002, 200000, 0, 388, 0, 0),
(3409, 75, 1092001, 100000, 0, 392, 0, 0),
(3410, 75, 1061084, 180000, 0, 396, 0, 0),
(3411, 75, 1061083, 180000, 0, 400, 0, 0),
(3412, 75, 1060074, 180000, 0, 404, 0, 0),
(3413, 75, 1060075, 180000, 0, 408, 0, 0),
(3414, 75, 1051014, 112500, 0, 412, 0, 0),
(3415, 75, 1051001, 112500, 0, 416, 0, 0),
(3416, 75, 1050021, 112500, 0, 420, 0, 0),
(3417, 75, 1050000, 112500, 0, 424, 0, 0),
(3418, 75, 1041085, 200000, 0, 428, 0, 0),
(3419, 75, 1041084, 200000, 0, 432, 0, 0),
(3420, 75, 1040085, 200000, 0, 436, 0, 0),
(3421, 75, 1040000, 200000, 0, 440, 0, 0),
(3422, 75, 1002004, 160000, 0, 444, 0, 0),
(3423, 76, 2330000, 600, 0, 1, 0, 0),
(3424, 76, 2070000, 500, 0, 1, 0, 0),
(3425, 76, 2061001, 10, 0, 0, 0, 0),
(3426, 76, 2060001, 10, 0, 0, 0, 0),
(3427, 76, 2061000, 1, 0, 0, 0, 0),
(3428, 76, 2060000, 1, 0, 0, 0, 0),
(3429, 76, 2030000, 400, 0, 0, 0, 0),
(3430, 76, 2020028, 2850, 0, 0, 0, 0),
(3431, 76, 2020006, 503, 0, 0, 0, 0),
(3432, 76, 2020005, 304, 0, 0, 0, 0),
(3433, 76, 2020004, 427, 0, 0, 0, 0),
(3434, 76, 2020003, 427, 0, 0, 0, 0),
(3435, 76, 2020002, 304, 0, 0, 0, 0),
(3436, 76, 2020001, 209, 0, 0, 0, 0),
(3437, 76, 2010002, 47, 0, 0, 0, 0),
(3438, 76, 2010001, 106, 0, 0, 0, 0),
(3439, 76, 2002010, 500, 0, 0, 0, 0),
(3440, 76, 2002009, 500, 0, 0, 0, 0),
(3441, 76, 2002008, 500, 0, 0, 0, 0),
(3442, 76, 2002007, 500, 0, 0, 0, 0),
(3443, 76, 2002006, 500, 0, 0, 0, 0),
(3444, 76, 2001002, 3800, 0, 0, 0, 0),
(3445, 76, 2001001, 2185, 0, 0, 0, 0),
(3446, 76, 2000006, 589, 0, 0, 0, 0),
(3447, 76, 2000011, 620, 0, 0, 0, 0),
(3448, 76, 2000003, 190, 0, 0, 0, 0),
(3449, 76, 2000010, 200, 0, 0, 0, 0),
(3450, 76, 2000002, 304, 0, 0, 0, 0),
(3451, 76, 2000009, 320, 0, 0, 0, 0),
(3452, 76, 2000001, 152, 0, 0, 0, 0),
(3453, 76, 2000008, 160, 0, 0, 0, 0),
(3454, 76, 2000000, 47, 0, 0, 0, 0),
(3455, 76, 2000007, 50, 0, 0, 0, 0),
(3456, 77, 4031348, 10000000, 0, 104, 0, 0),
(3457, 77, 2044900, 69000, 0, 108, 0, 0),
(3458, 77, 2044800, 69000, 0, 112, 0, 0),
(3459, 77, 2044700, 69000, 0, 116, 0, 0),
(3460, 77, 2044600, 69000, 0, 120, 0, 0),
(3461, 77, 2044500, 69000, 0, 124, 0, 0),
(3462, 77, 2043800, 69000, 0, 128, 0, 0),
(3463, 77, 2043700, 69000, 0, 132, 0, 0),
(3464, 77, 2044400, 69000, 0, 136, 0, 0),
(3465, 77, 2044300, 69000, 0, 140, 0, 0),
(3466, 77, 2044200, 69000, 0, 144, 0, 0),
(3467, 77, 2044100, 69000, 0, 148, 0, 0),
(3468, 77, 2044000, 69000, 0, 152, 0, 0),
(3469, 77, 2043300, 69000, 0, 156, 0, 0),
(3470, 77, 2043200, 69000, 0, 160, 0, 0),
(3471, 77, 2043100, 69000, 0, 164, 0, 0),
(3472, 77, 2043000, 69000, 0, 168, 0, 0),
(3473, 77, 2041003, 34000, 0, 172, 0, 0),
(3474, 77, 2041000, 34000, 0, 176, 0, 0),
(3475, 77, 2040900, 34000, 0, 180, 0, 0),
(3476, 77, 2040800, 34000, 0, 184, 0, 0),
(3477, 77, 2040706, 34000, 0, 188, 0, 0),
(3478, 77, 2040703, 34000, 0, 192, 0, 0),
(3479, 77, 2040700, 34000, 0, 196, 0, 0),
(3480, 77, 2040600, 34000, 0, 200, 0, 0),
(3481, 77, 2040503, 34000, 0, 204, 0, 0),
(3482, 77, 2040400, 34000, 0, 208, 0, 0),
(3483, 77, 2040000, 34000, 0, 212, 0, 0),
(3484, 77, 2040300, 34000, 0, 216, 0, 0),
(3485, 81, 2070000, 500, 0, 1, 0, 0),
(3486, 81, 2030010, 500, 0, 0, 0, 0),
(3487, 81, 2030009, 500, 0, 0, 0, 0),
(3488, 81, 2030008, 400, 0, 0, 0, 0),
(3489, 81, 1050100, 30000, 0, 0, 0, 0),
(3490, 82, 2070000, 500, 0, 1, 0, 0),
(3491, 82, 2030010, 500, 0, 0, 0, 0),
(3492, 82, 2030009, 500, 0, 0, 0, 0),
(3493, 82, 2030008, 400, 0, 0, 0, 0),
(3494, 82, 1051098, 30000, 0, 0, 0, 0),
(3495, 83, 2070000, 500, 0, 1, 0, 0),
(3496, 83, 1472008, 250000, 0, 0, 0, 0),
(3497, 83, 1312013, 100000, 0, 0, 0, 0),
(3498, 83, 1322012, 15000, 0, 0, 0, 0),
(3499, 83, 1402009, 30000, 0, 0, 0, 0),
(3500, 83, 1432008, 150000, 0, 0, 0, 0),
(3501, 83, 1402010, 150000, 0, 0, 0, 0),
(3502, 83, 1462006, 500000, 0, 0, 0, 0),
(3503, 83, 1302021, 1250000, 0, 0, 0, 0),
(3504, 83, 1302022, 80000, 0, 0, 0, 0),
(3505, 83, 1332024, 2000000, 0, 0, 0, 0),
(3506, 83, 1382011, 2000000, 0, 0, 0, 0),
(3507, 84, 2070000, 500, 0, 104, 0, 0),
(3508, 84, 2020014, 8100, 0, 108, 0, 0),
(3509, 84, 2022002, 1000, 0, 112, 0, 0),
(3510, 84, 2001002, 4000, 0, 116, 0, 0),
(3511, 84, 2000006, 620, 0, 120, 0, 0),
(3512, 84, 2000003, 200, 0, 124, 0, 0),
(3513, 84, 2020012, 4500, 0, 128, 0, 0),
(3514, 84, 2001001, 2300, 0, 132, 0, 0),
(3515, 84, 2000002, 320, 0, 136, 0, 0),
(3516, 84, 2000001, 160, 0, 140, 0, 0),
(3517, 84, 2060003, 40, 0, 144, 0, 0),
(3518, 85, 1002136, 100000, 0, 0, 0, 0),
(3519, 85, 1032002, 110000, 0, 0, 0, 0),
(3520, 85, 1040029, 110000, 0, 0, 0, 0),
(3521, 85, 1060020, 110000, 0, 0, 0, 0),
(3522, 85, 1051006, 110000, 0, 0, 0, 0),
(3523, 85, 1072051, 25000, 0, 0, 0, 0),
(3524, 85, 1072034, 25000, 0, 0, 0, 0),
(3525, 85, 1072086, 25000, 0, 0, 0, 0),
(3526, 85, 1072020, 30000, 0, 0, 0, 0),
(3527, 85, 2070012, 100000, 0, 0, 0, 0),
(3528, 85, 2070013, 100000, 0, 0, 0, 0),
(3529, 80, 2060000, 1, 0, 0, 0, 0),
(3530, 80, 2030000, 400, 0, 0, 0, 0),
(3531, 80, 2020015, 10608, 0, 0, 0, 0),
(3532, 80, 2020014, 8424, 0, 0, 0, 0),
(3533, 80, 2020013, 5824, 0, 0, 0, 0),
(3534, 80, 2020012, 4680, 0, 0, 0, 0),
(3535, 80, 2010004, 180, 0, 0, 0, 0),
(3536, 80, 2010003, 60, 0, 0, 0, 0),
(3537, 80, 2010001, 150, 0, 0, 0, 0),
(3538, 80, 2010002, 50, 0, 0, 0, 0),
(3539, 80, 2010000, 30, 0, 0, 0, 0),
(3540, 80, 2001002, 4000, 0, 0, 0, 0),
(3541, 80, 2001001, 2300, 0, 0, 0, 0),
(3542, 80, 2001000, 3200, 0, 0, 0, 0),
(3555, 78, 1492006, 160000, 0, 104, 0, 0),
(3544, 80, 2002005, 500, 0, 0, 0, 0),
(3545, 80, 2002004, 500, 0, 0, 0, 0),
(3546, 80, 2002002, 500, 0, 0, 0, 0),
(3547, 80, 2002001, 400, 0, 0, 0, 0),
(3548, 80, 2002000, 500, 0, 0, 0, 0),
(3549, 80, 2000006, 620, 0, 0, 0, 0),
(3550, 80, 2000003, 150, 0, 0, 0, 0),
(3551, 80, 2000002, 280, 0, 0, 0, 0),
(3552, 80, 2000001, 150, 0, 0, 0, 0),
(3553, 80, 2000000, 30, 0, 0, 0, 0),
(3554, 80, 2061000, 1, 0, 0, 0, 0),
(3556, 78, 1492005, 100000, 0, 108, 0, 0),
(3557, 78, 1492004, 79000, 0, 112, 0, 0),
(3558, 78, 1482006, 150000, 0, 116, 0, 0),
(3559, 78, 1482005, 100000, 0, 120, 0, 0),
(3560, 78, 1482004, 79000, 0, 124, 0, 0),
(3561, 78, 1472007, 60000, 0, 128, 0, 0),
(3562, 78, 1472004, 30000, 0, 132, 0, 0),
(3563, 78, 1472001, 20000, 0, 136, 0, 0),
(3564, 78, 1462005, 250000, 0, 140, 0, 0),
(3565, 78, 1462004, 200000, 0, 144, 0, 0),
(3566, 78, 1462000, 30000, 0, 148, 0, 0),
(3567, 78, 1452007, 379000, 0, 152, 0, 0),
(3568, 78, 1452006, 250000, 0, 156, 0, 0),
(3569, 78, 1452005, 150000, 0, 160, 0, 0),
(3570, 78, 1442009, 300000, 0, 164, 0, 0),
(3571, 78, 1442003, 179000, 0, 168, 0, 0),
(3572, 78, 1442001, 60000, 0, 172, 0, 0),
(3573, 78, 1432005, 225000, 0, 176, 0, 0),
(3574, 78, 1432003, 179000, 0, 180, 0, 0),
(3575, 78, 1432002, 60000, 0, 184, 0, 0),
(3576, 78, 1422007, 250000, 0, 188, 0, 0),
(3577, 78, 1422008, 200000, 0, 192, 0, 0),
(3578, 78, 1422001, 45000, 0, 196, 0, 0),
(3579, 78, 1412005, 250000, 0, 200, 0, 0),
(3580, 78, 1412004, 200000, 0, 204, 0, 0),
(3581, 78, 1412006, 45000, 0, 208, 0, 0),
(3582, 78, 1402007, 450000, 0, 212, 0, 0),
(3583, 78, 1402006, 350000, 0, 216, 0, 0),
(3584, 78, 1402002, 150000, 0, 220, 0, 0),
(3585, 78, 1382002, 20000, 0, 224, 0, 0),
(3586, 78, 1372000, 400000, 0, 228, 0, 0),
(3587, 78, 1372001, 179000, 0, 232, 0, 0),
(3588, 78, 1372003, 38000, 0, 236, 0, 0),
(3589, 78, 1332011, 425000, 0, 240, 0, 0),
(3590, 78, 1332014, 379000, 0, 244, 0, 0),
(3591, 78, 1332001, 200000, 0, 248, 0, 0),
(3592, 78, 1332012, 40000, 0, 252, 0, 0),
(3593, 78, 1332009, 42000, 0, 256, 0, 0),
(3594, 78, 1322016, 179000, 0, 260, 0, 0),
(3595, 78, 1322015, 100000, 0, 264, 0, 0),
(3596, 78, 1322014, 40000, 0, 268, 0, 0),
(3597, 78, 1312007, 179000, 0, 272, 0, 0),
(3598, 78, 1312006, 100000, 0, 276, 0, 0),
(3599, 78, 1312005, 40000, 0, 280, 0, 0),
(3600, 78, 1302009, 225000, 0, 284, 0, 0),
(3601, 78, 1302004, 100000, 0, 288, 0, 0),
(3602, 78, 1302008, 40000, 0, 292, 0, 0),
(3603, 79, 1002625, 79000, 0, 104, 0, 0),
(3604, 79, 1052113, 120000, 0, 108, 0, 0),
(3605, 79, 1052110, 100000, 0, 112, 0, 0),
(3606, 79, 1061069, 160000, 0, 116, 0, 0),
(3607, 79, 1061070, 160000, 0, 120, 0, 0),
(3608, 79, 1060072, 160000, 0, 124, 0, 0),
(3609, 79, 1060071, 160000, 0, 128, 0, 0),
(3610, 79, 1060052, 108000, 0, 132, 0, 0),
(3611, 79, 1060050, 108000, 0, 136, 0, 0),
(3612, 79, 1060051, 108000, 0, 140, 0, 0),
(3613, 79, 1051009, 111000, 0, 144, 0, 0),
(3614, 79, 1051008, 111000, 0, 148, 0, 0),
(3615, 79, 1051007, 111000, 0, 152, 0, 0),
(3616, 79, 1041078, 180000, 0, 156, 0, 0),
(3617, 79, 1041079, 180000, 0, 160, 0, 0),
(3618, 79, 1040083, 180000, 0, 164, 0, 0),
(3619, 79, 1040082, 180000, 0, 168, 0, 0),
(3620, 79, 1040061, 114000, 0, 172, 0, 0),
(3621, 79, 1040062, 114000, 0, 176, 0, 0),
(3622, 79, 1040063, 114000, 0, 180, 0, 0),
(3623, 79, 1002180, 100000, 0, 184, 0, 0),
(3624, 79, 1002179, 100000, 0, 188, 0, 0),
(3625, 79, 1002178, 100000, 0, 192, 0, 0),
(3626, 79, 1002177, 100000, 0, 196, 0, 0),
(3627, 79, 1002176, 100000, 0, 200, 0, 0),
(3628, 79, 1061080, 160000, 0, 204, 0, 0),
(3629, 79, 1061081, 160000, 0, 208, 0, 0),
(3630, 79, 1061062, 108000, 0, 212, 0, 0),
(3631, 79, 1061060, 108000, 0, 216, 0, 0),
(3632, 79, 1061064, 108000, 0, 220, 0, 0),
(3633, 79, 1061061, 108000, 0, 224, 0, 0),
(3634, 79, 1060069, 160000, 0, 228, 0, 0),
(3635, 79, 1060070, 160000, 0, 232, 0, 0),
(3636, 79, 1060063, 108000, 0, 236, 0, 0),
(3637, 79, 1060061, 108000, 0, 240, 0, 0),
(3638, 79, 1060065, 108000, 0, 244, 0, 0),
(3639, 79, 1060062, 108000, 0, 248, 0, 0),
(3640, 79, 1041081, 180000, 0, 252, 0, 0),
(3641, 79, 1041082, 180000, 0, 256, 0, 0),
(3642, 79, 1041067, 114000, 0, 260, 0, 0),
(3643, 79, 1041065, 114000, 0, 264, 0, 0),
(3644, 79, 1041069, 114000, 0, 268, 0, 0),
(3645, 79, 1041066, 114000, 0, 272, 0, 0),
(3646, 79, 1040079, 180000, 0, 276, 0, 0),
(3647, 79, 1040081, 180000, 0, 280, 0, 0),
(3648, 79, 1040076, 114000, 0, 284, 0, 0),
(3649, 79, 1040079, 114000, 0, 288, 0, 0),
(3650, 79, 1040073, 114000, 0, 292, 0, 0),
(3651, 79, 1040072, 114000, 0, 296, 0, 0),
(3652, 79, 1002137, 100000, 0, 300, 0, 0),
(3653, 79, 1002135, 100000, 0, 304, 0, 0),
(3654, 79, 1002139, 100000, 0, 308, 0, 0),
(3655, 79, 1002138, 100000, 0, 312, 0, 0),
(3656, 79, 1061047, 120000, 0, 316, 0, 0),
(3657, 79, 1061048, 120000, 0, 320, 0, 0),
(3658, 79, 1051027, 450000, 0, 324, 0, 0),
(3659, 79, 1051024, 450000, 0, 328, 0, 0),
(3660, 79, 1051025, 450000, 0, 332, 0, 0),
(3661, 79, 1051023, 450000, 0, 336, 0, 0),
(3662, 79, 1050037, 450000, 0, 340, 0, 0),
(3663, 79, 1050036, 450000, 0, 344, 0, 0),
(3664, 79, 1050038, 450000, 0, 348, 0, 0),
(3665, 79, 1050035, 450000, 0, 352, 0, 0),
(3666, 79, 1050002, 300000, 0, 356, 0, 0),
(3667, 79, 1050031, 300000, 0, 360, 0, 0),
(3668, 79, 1041051, 120000, 0, 364, 0, 0),
(3669, 79, 1041052, 120000, 0, 368, 0, 0),
(3670, 79, 1002144, 96000, 0, 372, 0, 0),
(3671, 79, 1002143, 96000, 0, 376, 0, 0),
(3672, 79, 1002142, 96000, 0, 380, 0, 0),
(3673, 79, 1002141, 96000, 0, 384, 0, 0),
(3674, 79, 1092002, 200000, 0, 388, 0, 0),
(3675, 79, 1092001, 100000, 0, 392, 0, 0),
(3676, 79, 1061084, 180000, 0, 396, 0, 0),
(3677, 79, 1061083, 180000, 0, 400, 0, 0),
(3678, 79, 1060078, 180000, 0, 404, 0, 0),
(3679, 79, 1060079, 180000, 0, 408, 0, 0),
(3680, 79, 1051014, 112500, 0, 412, 0, 0),
(3681, 79, 1051001, 112500, 0, 416, 0, 0),
(3682, 79, 1050021, 112500, 0, 420, 0, 0),
(3683, 79, 1050000, 112500, 0, 424, 0, 0),
(3684, 79, 1041085, 200000, 0, 428, 0, 0),
(3685, 79, 1041084, 200000, 0, 432, 0, 0),
(3686, 79, 1040085, 200000, 0, 436, 0, 0),
(3687, 79, 1040000, 200000, 0, 440, 0, 0),
(3688, 79, 1002004, 160000, 0, 444, 0, 0),
(3689, 91, 2022023, 1350, 0, 104, 0, 0),
(3690, 91, 2022014, 650, 0, 108, 0, 0),
(3691, 89, 2022025, 4200, 0, 104, 0, 0),
(3692, 89, 2022024, 2000, 0, 108, 0, 0),
(3693, 88, 2022027, 3800, 0, 104, 0, 0),
(3694, 88, 2022026, 1800, 0, 108, 0, 0),
(3695, 90, 2022020, 550, 0, 104, 0, 0),
(3696, 90, 2022019, 850, 0, 108, 0, 0),
(3697, 90, 2022018, 1600, 0, 112, 0, 0),
(3698, 90, 2022017, 1100, 0, 116, 0, 0),
(6565, 90, 2022015, 12000, 0, 32, 0, 0),
(3699, 87, 2022022, 1300, 0, 104, 0, 0),
(3700, 87, 2022021, 550, 0, 108, 0, 0),
(3701, 86, 1432009, 60000, 0, 108, 0, 0),
(3702, 92, 2000001, 150, 0, 0, 0, 0),
(3703, 92, 2000002, 280, 0, 0, 0, 0),
(3704, 92, 2000003, 150, 0, 0, 0, 0),
(3705, 92, 2000006, 180, 0, 0, 0, 0),
(3706, 92, 2010004, 180, 0, 0, 0, 0),
(3707, 92, 2020000, 420, 0, 0, 0, 0),
(3708, 92, 2020001, 206, 0, 0, 0, 0),
(3709, 92, 2020005, 332, 0, 0, 0, 0),
(3710, 92, 2020003, 427, 0, 0, 0, 0),
(3711, 92, 2020007, 1200, 0, 0, 0, 0),
(3712, 92, 2001000, 3328, 0, 0, 0, 0),
(3713, 92, 2020008, 2000, 0, 0, 0, 0),
(3714, 92, 2001001, 2185, 0, 0, 0, 0),
(3715, 92, 2001002, 4000, 0, 0, 0, 0),
(3716, 92, 2022021, 2300, 0, 0, 0, 0),
(3717, 92, 2022022, 2600, 0, 0, 0, 0),
(3718, 92, 2022017, 1100, 0, 0, 0, 0),
(3719, 92, 2022018, 1600, 0, 0, 0, 0),
(3720, 92, 2022020, 550, 0, 0, 0, 0),
(3721, 92, 2022014, 650, 0, 0, 0, 0),
(3722, 93, 1302021, 1250000, 0, 0, 0, 0),
(6533, 94, 2000000, 30, 0, 1, 0, 0),
(6534, 94, 2000001, 150, 0, 2, 0, 0),
(6535, 94, 2000002, 280, 0, 3, 0, 0),
(6536, 94, 2000003, 150, 0, 4, 0, 0),
(6538, 94, 2002000, 400, 0, 6, 0, 0),
(6539, 94, 2002001, 400, 0, 7, 0, 0),
(6540, 94, 2002002, 400, 0, 8, 0, 0),
(6541, 94, 2002003, 400, 0, 9, 0, 0),
(6542, 94, 2002004, 500, 0, 10, 0, 0),
(6543, 94, 2002005, 400, 0, 11, 0, 0),
(6544, 94, 2001000, 3200, 0, 12, 0, 0),
(6545, 94, 2001001, 2300, 0, 13, 0, 0),
(6546, 94, 2001002, 4000, 0, 14, 0, 0),
(6547, 94, 2010000, 50, 0, 15, 0, 0),
(6548, 94, 2010001, 150, 0, 16, 0, 0),
(6549, 94, 2010002, 50, 0, 17, 0, 0),
(6550, 94, 2010003, 60, 0, 18, 0, 0),
(6551, 94, 2010004, 180, 0, 19, 0, 0),
(6552, 94, 2020012, 4680, 0, 20, 0, 0),
(6553, 94, 2020013, 5824, 0, 21, 0, 0),
(6554, 94, 2020014, 8424, 0, 22, 0, 0),
(6555, 94, 2020015, 10608, 0, 23, 0, 0),
(6556, 94, 2022003, 770, 0, 24, 0, 0),
(6557, 94, 2022000, 1155, 0, 25, 0, 0),
(6558, 94, 2060000, 1, 0, 26, 0, 0),
(6559, 94, 2061000, 1, 0, 27, 0, 0),
(6560, 94, 2060001, 10, 0, 28, 0, 0),
(6561, 94, 2061001, 10, 0, 29, 0, 0),
(6562, 94, 2030000, 250, 0, 30, 0, 0),
(6563, 94, 2330000, 800, 0, 31, 0, 0),
(6564, 94, 2070000, 500, 0, 32, 0, 0),
(6567, 57, 2330000, 800, 0, 1, 0, 0),
(6568, 95, 2000000, 30, 0, 0, 0, 0),
(6569, 95, 2000001, 150, 0, 0, 0, 0),
(6570, 95, 2000002, 280, 0, 0, 0, 0),
(6571, 95, 2000003, 150, 0, 0, 0, 0),
(6572, 95, 2000006, 385, 0, 0, 0, 0),
(6573, 95, 2001000, 3200, 0, 0, 0, 0),
(6574, 95, 2001001, 2300, 0, 0, 0, 0),
(6575, 95, 2001002, 4000, 0, 0, 0, 0),
(6576, 95, 2002000, 400, 0, 0, 0, 0),
(6577, 95, 2002001, 400, 0, 0, 0, 0),
(9578, 95, 2002002, 500, 0, 0, 0, 0),
(9579, 95, 2002003, 600, 0, 0, 0, 0),
(9580, 95, 2002004, 500, 0, 0, 0, 0),
(9581, 95, 2010000, 30, 0, 0, 0, 0),
(9582, 95, 2010001, 150, 0, 0, 0, 0),
(9583, 95, 2010002, 50, 0, 0, 0, 0),
(9584, 95, 2010003, 60, 0, 0, 0, 0),
(9585, 95, 2010004, 180, 0, 0, 0, 0),
(9586, 95, 2020028, 3000, 0, 0, 0, 0),
(9587, 95, 2022000, 1155, 0, 0, 0, 0),
(9588, 95, 2022003, 770, 0, 0, 0, 0),
(9589, 95, 2030000, 400, 0, 0, 0, 0),
(9590, 95, 2050000, 200, 0, 0, 0, 0),
(9591, 95, 2050001, 200, 0, 0, 0, 0),
(9592, 95, 2050002, 300, 0, 0, 0, 0),
(9593, 95, 2050003, 500, 0, 0, 0, 0),
(9594, 95, 2060000, 1, 0, 0, 0, 0),
(9595, 95, 2061000, 1, 0, 0, 0, 0),
(9596, 95, 2070000, 500, 0, 1, 0, 0),
(9597, 95, 2330000, 800, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `shops`
--

CREATE TABLE `shops` (
  `shopid` int(10) UNSIGNED NOT NULL,
  `npcid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `shops`
--

INSERT INTO `shops` (`shopid`, `npcid`) VALUES
(1, 11000),
(2, 11100),
(3, 21000),
(4, 1011000),
(5, 1011001),
(6, 1011100),
(7, 1012004),
(8, 1031000),
(9, 1031001),
(10, 1031100),
(11, 1061001),
(12, 1061002),
(13, 1032103),
(14, 1021001),
(15, 1021000),
(16, 1021100),
(17, 1051000),
(18, 1051001),
(19, 1051002),
(20, 1001100),
(21, 1001000),
(22, 1001001),
(23, 1091002),
(24, 1091001),
(25, 1091000),
(26, 1100002),
(27, 1100001),
(28, 1301000),
(29, 1200001),
(30, 1200002),
(31, 2051000),
(32, 2050003),
(33, 2040049),
(34, 1052104),
(35, 2022002),
(36, 2080003),
(37, 2070001),
(38, 2070003),
(39, 2070002),
(40, 2060004),
(41, 2060003),
(42, 2060007),
(43, 2080001),
(44, 2080004),
(45, 2080002),
(46, 2090006),
(47, 2090001),
(48, 2090002),
(49, 2090003),
(50, 2093001),
(51, 2093000),
(52, 2093002),
(53, 2100002),
(54, 2100003),
(55, 2100004),
(56, 2110001),
(57, 9201060),
(58, 9201059),
(59, 9201058),
(60, 9270022),
(61, 9270027),
(62, 9270019),
(63, 9270020),
(64, 9270065),
(65, 2130000),
(66, 2010004),
(67, 2012004),
(68, 2012003),
(69, 2012005),
(70, 2020001),
(71, 2022000),
(72, 2022001),
(73, 2030009),
(74, 2041002),
(75, 2041003),
(76, 2041006),
(77, 2041016),
(78, 9330048),
(79, 9330047),
(80, 9330053),
(81, 9120004),
(82, 9120019),
(83, 9120000),
(84, 9120002),
(85, 9120001),
(86, 9110001),
(87, 9110003),
(88, 9110006),
(89, 9110005),
(90, 9110007),
(91, 9110004),
(92, 9330029),
(93, 9110100),
(94, 9110102),
(95, 9270021);

-- --------------------------------------------------------

--
-- 資料表結構 `skillmacros`
--

CREATE TABLE `skillmacros` (
  `id` int(11) NOT NULL,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `position` tinyint(11) NOT NULL DEFAULT '0',
  `skill1` int(11) NOT NULL DEFAULT '0',
  `skill2` int(11) NOT NULL DEFAULT '0',
  `skill3` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `shout` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skillid` int(11) NOT NULL DEFAULT '0',
  `characterid` int(11) NOT NULL DEFAULT '0',
  `skilllevel` tinyint(4) NOT NULL DEFAULT '0',
  `masterlevel` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` bigint(20) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

--
-- 資料表的匯出資料 `skills`
--


-- --------------------------------------------------------

--
-- 資料表結構 `skills_cooldowns`
--

CREATE TABLE `skills_cooldowns` (
  `id` int(11) NOT NULL,
  `charid` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL,
  `length` bigint(20) NOT NULL,
  `StartTime` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `speedruns`
--

CREATE TABLE `speedruns` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(13) NOT NULL,
  `leader` varchar(13) NOT NULL,
  `timestring` varchar(1024) NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  `members` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `storages`
--

CREATE TABLE `storages` (
  `storageid` int(10) UNSIGNED NOT NULL,
  `accountid` int(11) NOT NULL DEFAULT '0',
  `slots` int(11) NOT NULL DEFAULT '0',
  `meso` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `storages`
--


-- --------------------------------------------------------

--
-- 資料表結構 `trocklocations`
--

CREATE TABLE `trocklocations` (
  `trockid` int(11) NOT NULL,
  `characterid` int(11) DEFAULT NULL,
  `mapid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `uselog`
--

CREATE TABLE `uselog` (
  `account` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `usetype` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `newpassword` varchar(255) DEFAULT NULL,
  `oldpassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 資料表結構 `wishlist`
--

CREATE TABLE `wishlist` (
  `characterid` int(11) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `wishlist`
--


-- --------------------------------------------------------

--
-- 資料表結構 `wz_mobskilldata`
--

CREATE TABLE `wz_mobskilldata` (
  `id` int(11) NOT NULL,
  `skillid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `hp` int(11) NOT NULL DEFAULT '100',
  `mpcon` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '1',
  `y` int(11) NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  `prop` int(11) NOT NULL DEFAULT '100',
  `limit` int(11) NOT NULL DEFAULT '0',
  `spawneffect` int(11) NOT NULL DEFAULT '0',
  `interval` int(11) NOT NULL DEFAULT '0',
  `summons` varchar(1024) NOT NULL DEFAULT '',
  `ltx` int(11) NOT NULL DEFAULT '0',
  `lty` int(11) NOT NULL DEFAULT '0',
  `rbx` int(11) NOT NULL DEFAULT '0',
  `rby` int(11) NOT NULL DEFAULT '0',
  `once` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `wz_mobskilldata`
--

INSERT INTO `wz_mobskilldata` (`id`, `skillid`, `level`, `hp`, `mpcon`, `x`, `y`, `time`, `prop`, `limit`, `spawneffect`, `interval`, `summons`, `ltx`, `lty`, `rbx`, `rby`, `once`) VALUES
(4339, 100, 1, 100, 5, 115, 1, 30, 100, 0, 0, 40, '', 0, 0, 0, 0, 0),
(4340, 100, 2, 100, 5, 130, 1, 30, 100, 0, 0, 40, '', 0, 0, 0, 0, 0),
(4341, 100, 3, 50, 5, 130, 1, 30, 100, 0, 0, 40, '', 0, 0, 0, 0, 0),
(4342, 100, 4, 100, 5, 100, 1, 60, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4343, 100, 5, 100, 5, 100, 1, 60, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4344, 100, 6, 100, 1, 100, 1, 1, 100, 0, 0, 5, '', 0, 0, 0, 0, 0),
(4345, 100, 7, 100, 1, 1, 1, 1, 100, 0, 0, 8, '', 0, 0, 0, 0, 0),
(4346, 100, 8, 100, 1, 100, 1, 10, 100, 0, 0, 90, '', 0, 0, 0, 0, 0),
(4347, 100, 9, 100, 0, 110, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4348, 100, 10, 100, 0, 120, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4349, 100, 11, 100, 0, 130, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4350, 100, 12, 100, 0, 140, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4351, 100, 13, 100, 0, 150, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4352, 100, 14, 100, 0, 160, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4353, 100, 15, 100, 0, 170, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4354, 100, 16, 100, 0, 170, 1, 15, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4355, 101, 1, 100, 5, 115, 1, 30, 100, 0, 0, 35, '', 0, 0, 0, 0, 0),
(4356, 101, 2, 100, 5, 130, 1, 30, 100, 0, 0, 40, '', 0, 0, 0, 0, 0),
(4357, 101, 3, 100, 1, 100, 1, 10, 100, 0, 0, 90, '', 0, 0, 0, 0, 0),
(4358, 101, 4, 100, 0, 110, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4359, 101, 5, 100, 0, 120, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4360, 101, 6, 100, 0, 130, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4361, 101, 7, 100, 0, 140, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4362, 101, 8, 100, 0, 150, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4363, 101, 9, 100, 0, 160, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4364, 101, 10, 100, 0, 170, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4365, 101, 11, 100, 0, 180, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4366, 101, 12, 100, 0, 190, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4367, 101, 13, 100, 0, 200, 1, 6000, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4368, 102, 1, 100, 5, 85, 1, 30, 100, 0, 0, 40, '', 0, 0, 0, 0, 0),
(4369, 102, 2, 100, 5, 60, 1, 30, 100, 0, 0, 40, '', 0, 0, 0, 0, 0),
(4370, 102, 3, 100, 5, 85, 1, 20, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4371, 102, 4, 100, 1, 100, 1, 10, 100, 0, 0, 90, '', 0, 0, 0, 0, 0),
(4372, 103, 1, 100, 5, 85, 1, 30, 100, 0, 0, 40, '', 0, 0, 0, 0, 0),
(4373, 103, 2, 100, 5, 60, 1, 30, 100, 0, 0, 40, '', 0, 0, 0, 0, 0),
(4374, 103, 3, 100, 1, 100, 1, 10, 100, 0, 0, 90, '', 0, 0, 0, 0, 0),
(4375, 110, 1, 100, 5, 115, 1, 30, 100, 0, 0, 10, '', -300, -200, 300, 200, 0),
(4376, 110, 2, 100, 5, 115, 1, 30, 100, 0, 0, 35, '', -300, -200, 300, 200, 0),
(4377, 110, 3, 100, 5, 115, 1, 30, 100, 0, 0, 60, '', -400, -350, 400, 250, 0),
(4378, 110, 4, 100, 5, 130, 1, 30, 100, 0, 0, 40, '', -400, -350, 400, 250, 0),
(4379, 110, 5, 100, 5, 130, 1, 30, 100, 0, 0, 40, '', -800, -800, 800, 50, 0),
(4380, 110, 6, 100, 5, 115, 1, 15, 100, 0, 0, 60, '', -800, -800, 800, 50, 0),
(4381, 110, 7, 100, 1, 100, 1, 10, 100, 0, 0, 90, '', 0, 0, 0, 0, 0),
(4382, 111, 1, 100, 5, 115, 1, 30, 100, 0, 0, 10, '', -300, -200, 300, 200, 0),
(4383, 111, 2, 100, 5, 115, 1, 30, 100, 0, 0, 40, '', -300, -200, 300, 200, 0),
(4384, 111, 3, 100, 5, 115, 1, 30, 100, 0, 0, 60, '', -400, -350, 400, 250, 0),
(4385, 111, 4, 100, 5, 130, 1, 30, 100, 0, 0, 40, '', -800, -800, 800, 50, 0),
(4386, 111, 5, 100, 5, 140, 1, 30, 100, 0, 0, 60, '', -400, -350, 400, 250, 0),
(4387, 111, 6, 100, 1, 100, 1, 10, 100, 0, 0, 90, '', 0, 0, 0, 0, 0),
(4388, 112, 1, 100, 5, 85, 1, 30, 100, 0, 0, 10, '', -300, -200, 300, 200, 0),
(4389, 112, 2, 100, 5, 85, 1, 30, 100, 0, 0, 35, '', -300, -200, 300, 200, 0),
(4390, 112, 3, 100, 5, 85, 1, 30, 100, 0, 0, 50, '', -400, -350, 400, 250, 0),
(4391, 112, 4, 100, 5, 85, 1, 20, 100, 0, 0, 30, '', -400, -350, 400, 250, 0),
(4392, 112, 5, 100, 1, 100, 1, 10, 100, 0, 0, 90, '', 0, 0, 0, 0, 0),
(4393, 113, 1, 100, 5, 85, 1, 30, 100, 0, 0, 10, '', -300, -200, 300, 200, 0),
(4394, 113, 2, 100, 5, 85, 1, 30, 100, 0, 0, 40, '', -300, -200, 300, 200, 0),
(4395, 113, 3, 100, 5, 85, 1, 30, 100, 0, 0, 50, '', -400, -350, 400, 250, 0),
(4396, 113, 4, 100, 5, 85, 1, 30, 100, 0, 0, 50, '', -800, -800, 800, 50, 0),
(4397, 114, 1, 100, 10, 50000, 5000, 1, 100, 0, 0, 20, '', -400, -350, 400, 250, 0),
(4398, 114, 2, 99, 5, 30000, 20000, 1, 100, 0, 0, 25, '', -400, -350, 400, 250, 0),
(4399, 114, 3, 99, 5, 30000, 20000, 1, 100, 0, 0, 30, '', -400, -350, 400, 250, 0),
(4400, 114, 4, 99, 10, 30000, 10000, 1, 100, 0, 0, 1, '', -400, -350, 400, 250, 0),
(4401, 114, 5, 99, 10, 30000, 10000, 1, 100, 0, 0, 3, '', -1220, -410, 220, 50, 0),
(4402, 114, 6, 99, 10, 30000, 10000, 1, 100, 0, 0, 3, '', -210, -400, 960, 50, 0),
(4403, 114, 7, 99, 10, 30000, 20000, 1, 100, 0, 0, 11, '', -400, -205, 570, 60, 0),
(4404, 114, 8, 99, 5, 20000, 10000, 1, 100, 0, 0, 23, '', -730, -190, 370, 115, 0),
(4405, 114, 9, 90, 5, 50000, 20000, 1, 100, 0, 0, 30, '', -800, -800, 800, 50, 0),
(4406, 114, 10, 30, 5, 150000, 50000, 1, 100, 0, 0, 30, '', -800, -800, 800, 50, 0),
(4407, 114, 11, 99, 5, 100000, 30000, 1, 100, 0, 0, 20, '', -800, -800, 800, 800, 0),
(4408, 114, 12, 70, 10, 5000, 500, 1, 100, 0, 0, 90, '', -400, -350, 400, 250, 0),
(4409, 114, 14, 80, 10, 700, 200, 1, 100, 0, 0, 30, '', -400, -350, 400, 250, 0),
(4410, 114, 15, 80, 10, 700, 200, 1, 100, 0, 0, 30, '', -400, -350, 400, 250, 0),
(4411, 114, 16, 80, 10, 10000, 1000, 1, 100, 0, 0, 20, '', -400, -350, 400, 250, 0),
(4412, 114, 17, 90, 10, 5000, 500, 1, 100, 0, 0, 20, '', -400, -350, 400, 250, 0),
(4413, 114, 18, 90, 10, 3000, 200, 1, 100, 0, 0, 10, '', -400, -350, 400, 250, 0),
(4414, 114, 19, 70, 10, 1000, 200, 1, 100, 0, 0, 20, '', -400, -350, 400, 250, 0),
(4415, 114, 20, 70, 10, 1000, 200, 1, 100, 0, 0, 20, '', -400, -350, 400, 250, 0),
(4416, 114, 21, 70, 10, 1000, 200, 1, 100, 0, 0, 20, '', -400, -350, 400, 250, 0),
(4417, 114, 22, 70, 5, 20000, 10000, 1, 100, 0, 0, 60, '', -400, -350, 400, 250, 0),
(4418, 114, 23, 80, 5, 500, 50, 1, 100, 0, 0, 300, '', -400, -350, 400, 250, 0),
(4419, 114, 24, 80, 10, 150000, 50000, 1, 100, 0, 0, 30, '', -400, -350, 400, 250, 0),
(4420, 114, 25, 100, 10, 200000, 50000, 1, 100, 0, 0, 30, '', -800, -350, 800, 250, 0),
(4421, 114, 13, 80, 10, 700, 200, 1, 100, 0, 0, 30, '', -400, -350, 400, 250, 0),
(4422, 115, 1, 100, 1, 30, 1, 10, 100, 0, 0, 3, '', -400, -350, 400, 250, 0),
(4423, 120, 1, 100, 5, 1, 1, 30, 50, 0, 0, 10, '', -300, -120, 300, 120, 0),
(4424, 120, 2, 100, 5, 1, 1, 30, 50, 0, 0, 35, '', -300, -120, 300, 120, 0),
(4425, 120, 3, 100, 5, 1, 1, 30, 70, 0, 0, 35, '', -450, -300, 450, 300, 0),
(4426, 120, 4, 100, 5, 1, 1, 30, 100, 0, 0, 10, '', -450, -300, 450, 300, 0),
(4427, 120, 5, 100, 5, 1, 1, 30, 100, 0, 0, 22, '', -1220, -490, 200, 60, 0),
(4428, 120, 6, 100, 5, 1, 1, 30, 100, 0, 0, 22, '', -20, -480, 1210, 50, 0),
(4429, 120, 7, 100, 5, 1, 1, 30, 100, 0, 0, 25, '', -1090, -190, 1210, 50, 0),
(4430, 120, 8, 100, 5, 1, 1, 30, 90, 0, 0, 25, '', -800, -800, 800, 50, 0),
(4431, 120, 9, 100, 5, 1, 1, 30, 50, 0, 0, 50, '', -300, -120, 300, 120, 0),
(4432, 120, 10, 100, 0, 1, 1, 15, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4433, 120, 11, 100, 5, 1, 1, 10, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4434, 120, 12, 100, 5, 1, 1, 10, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4435, 120, 13, 100, 5, 1, 1, 10, 70, 0, 0, 30, '', -800, -800, 800, 50, 0),
(4436, 121, 1, 100, 5, 1, 1, 30, 50, 0, 0, 10, '', -300, -120, 300, 120, 0),
(4437, 121, 2, 100, 5, 1, 1, 30, 50, 0, 0, 35, '', -300, -120, 300, 120, 0),
(4438, 121, 3, 100, 5, 1, 1, 30, 70, 0, 0, 10, '', -450, -300, 450, 300, 0),
(4439, 121, 4, 100, 5, 1, 1, 30, 90, 0, 0, 15, '', -800, -800, 800, 50, 0),
(4440, 121, 5, 100, 5, 1, 1, 30, 50, 0, 0, 25, '', -300, -120, 300, 120, 0),
(4441, 121, 6, 100, 0, 1, 1, 15, 80, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4442, 121, 7, 100, 5, 1, 1, 10, 80, 0, 0, 15, '', -300, -120, 300, 120, 0),
(4443, 121, 8, 100, 5, 1, 1, 10, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4444, 124, 1, 100, 5, 1, 1, 60, 50, 0, 0, 10, '', -300, -120, 300, 120, 0),
(4445, 124, 2, 100, 5, 1, 1, 60, 50, 0, 0, 35, '', -300, -120, 300, 120, 0),
(4446, 124, 3, 100, 5, 1, 1, 60, 70, 0, 0, 50, '', -450, -300, 450, 300, 0),
(4447, 124, 4, 100, 5, 1, 1, 15, 30, 0, 0, 50, '', -300, -120, 300, 120, 0),
(4448, 124, 5, 100, 5, 1, 1, 60, 50, 0, 0, 30, '', -200, -120, 200, 30, 0),
(4449, 124, 6, 100, 5, 1, 1, 60, 15, 0, 0, 30, '', -200, -120, 200, 30, 0),
(4450, 124, 7, 100, 0, 1, 1, 15, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4451, 124, 8, 100, 0, 1, 1, 300, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4452, 124, 9, 100, 5, 1, 1, 10, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4453, 125, 1, 100, 5, 15, 1, 60, 50, 0, 0, 10, '', -150, -90, 0, 0, 0),
(4454, 125, 2, 100, 5, 15, 1, 60, 50, 0, 0, 35, '', -150, -90, 0, 0, 0),
(4455, 125, 3, 100, 5, 30, 1, 60, 100, 0, 0, 10, '', -150, -90, 0, 0, 0),
(4456, 125, 4, 100, 2, 15, 1, 30, 60, 0, 0, 5, '', -150, -90, 0, 0, 0),
(4457, 125, 5, 100, 1, 300, 1, 5, 20, 0, 0, 10, '', -150, -90, 0, 0, 0),
(4458, 125, 6, 100, 0, 25, 1, 15, 80, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4459, 125, 7, 100, 0, 50, 1, 300, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4460, 125, 8, 100, 5, 25, 1, 25, 80, 0, 0, 60, '', -150, -90, 0, 0, 0),
(4461, 125, 9, 100, 5, 20, 1, 10, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4462, 127, 1, 100, 5, 1, 1, 0, 100, 0, 0, 1, '', -300, -120, 300, 120, 0),
(4463, 127, 2, 100, 5, 1, 1, 0, 100, 0, 0, 15, '', -1220, -490, 200, 60, 0),
(4464, 127, 3, 100, 5, 1, 1, 0, 100, 0, 0, 5, '', -300, -120, 300, 120, 0),
(4465, 127, 4, 100, 5, 1, 1, 0, 100, 0, 0, 15, '', -20, -480, 1210, 50, 0),
(4466, 127, 5, 100, 5, 1, 1, 0, 100, 0, 0, 10, '', -800, -210, 800, 50, 0),
(4467, 127, 6, 100, 5, 1, 1, 0, 80, 0, 0, 30, '', -300, -150, 300, 30, 0),
(4468, 127, 7, 60, 5, 1, 1, 0, 90, 0, 0, 300, '', -800, -800, 800, 50, 0),
(4469, 127, 8, 100, 5, 1, 1, 0, 60, 0, 0, 65, '', -1220, -490, 200, 60, 0),
(4470, 127, 9, 100, 0, 1, 1, 0, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4471, 127, 10, 30, 5, 1, 1, 0, 90, 0, 0, 180, '', -800, -800, 800, 50, 0),
(4472, 127, 11, 100, 5, 1, 1, 0, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4473, 127, 12, 100, 5, 1, 1, 0, 33, 0, 0, 0, '', -318, -416, -49, 0, 0),
(4474, 128, 1, 100, 5, 1, 1, 10, 100, 0, 0, 180, '', -800, -800, 800, 50, 0),
(4475, 128, 2, 100, 5, 2, 1, 10, 100, 0, 0, 180, '', -800, -800, 800, 50, 0),
(4476, 128, 3, 100, 5, 3, 1, 10, 100, 0, 0, 180, '', -800, -800, 800, 50, 0),
(4477, 128, 4, 30, 5, 1, 1, 10, 100, 0, 0, 60, '', -800, -800, 800, 50, 0),
(4478, 128, 5, 30, 5, 2, 1, 10, 100, 0, 0, 60, '', -800, -800, 800, 50, 0),
(4479, 128, 6, 100, 5, 3, 1, 10, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4480, 128, 7, 100, 5, 6, 1, 10, 80, 0, 0, 20, '', -310, -400, 500, 300, 0),
(4481, 128, 8, 100, 5, 1, 1, 30, 100, 0, 0, 40, '', -800, -800, 800, 300, 0),
(4482, 128, 9, 100, 5, 6, 1, 30, 100, 0, 0, 45, '', -800, -800, 800, 300, 0),
(4483, 128, 10, 100, 5, 7, 1, 30, 100, 0, 0, 50, '', -800, -800, 800, 300, 0),
(4484, 128, 11, 100, 5, 4, 1, 7, 70, 0, 0, 60, '', -800, -800, 800, 300, 0),
(4485, 128, 12, 100, 5, 2, 1, 3, 70, 0, 0, 30, '', -800, -800, 800, 300, 0),
(4486, 128, 13, 100, 5, 2, 1, 30, 70, 0, 0, 30, '', -800, -800, 800, 300, 0),
(4487, 129, 1, 100, 0, 1, 1, 1, 100, 0, 0, 3, '', -200, -150, 200, 50, 0),
(4488, 129, 2, 100, 0, 1, 1, 1, 80, 0, 0, 50, '', -64, -150, 58, 44, 0),
(4489, 129, 3, 30, 0, 1, 1, 1, 100, 0, 0, 25, '', -64, -150, 58, 44, 0),
(4490, 129, 4, 100, 0, 1, 1, 1, 100, 0, 0, 3, '', -200, -150, 200, 50, 0),
(4491, 129, 5, 100, 0, 1, 1, 1, 100, 0, 0, 3, '', -200, -150, 200, 50, 0),
(4492, 129, 6, 100, 0, 1, 1, 1, 100, 0, 0, 3, '', -200, -150, 200, 50, 0),
(4493, 129, 7, 100, 0, 1, 1, 1, 100, 0, 0, 3, '', -200, -150, 200, 50, 0),
(4494, 129, 8, 100, 0, 1, 1, 1, 100, 0, 0, 3, '', -200, -150, 200, 50, 0),
(4495, 129, 9, 100, 0, 1, 1, 1, 100, 0, 0, 3, '', -200, -150, 200, 50, 0),
(4496, 129, 10, 100, 0, 1, 1, 1, 100, 0, 0, 3, '', -200, -150, 200, 50, 0),
(4497, 129, 11, 100, 0, 1, 1, 1, 100, 0, 0, 3, '', -200, -150, 200, 50, 0),
(4498, 131, 1, 100, 5, 800, 1, 10, 80, 0, 0, 60, '', -50, -160, 300, 40, 0),
(4499, 131, 2, 100, 5, 150, 1, 15, 70, 0, 0, 15, '', -135, -80, 135, 40, 0),
(4500, 131, 3, 100, 5, 150, 1, 5, 70, 0, 0, 15, '', -135, -80, 135, 40, 0),
(4501, 131, 4, 100, 5, 2000, 1, 20, 90, 0, 0, 40, '', 100, -246, 550, 0, 0),
(4502, 131, 5, 100, 5, 200, 1, 15, 70, 0, 0, 15, '', -135, -80, 135, 40, 0),
(4503, 131, 6, 100, 5, 150, 1, 15, 80, 0, 0, 20, '', -135, -80, 135, 40, 0),
(4504, 131, 7, 100, 5, 500, 1, 10, 80, 0, 0, 30, '', -50, -160, 300, 40, 0),
(4505, 131, 8, 100, 5, 50, 1, 15, 70, 0, 0, 25, '', -135, -80, 135, 40, 0),
(4506, 133, 1, 100, 1, 70, 1, 20, 70, 0, 0, 60, '', -800, -600, 800, 250, 0),
(4507, 133, 2, 100, 1, 50, 1, 7, 100, 0, 0, 60, '', -800, -600, 800, 250, 0),
(4508, 133, 3, 25, 1, 50, 1, 7, 100, 0, 0, 60, '', -800, -600, 800, 250, 0),
(4509, 140, 1, 99, 5, 1, 1, 30, 100, 0, 0, 45, '', 0, 0, 0, 0, 0),
(4510, 140, 2, 99, 5, 1, 1, 2, 100, 0, 0, 40, '', 0, 0, 0, 0, 0),
(4511, 140, 3, 50, 5, 1, 1, 10, 100, 0, 0, 35, '', 0, 0, 0, 0, 0),
(4512, 140, 4, 99, 5, 1, 1, 8, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4513, 140, 5, 99, 5, 1, 1, 35, 100, 0, 0, 11, '', 0, 0, 0, 0, 0),
(4514, 140, 6, 99, 3, 1, 1, 10, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4515, 140, 7, 99, 3, 1, 1, 30, 100, 0, 0, 17, '', 0, 0, 0, 0, 0),
(4516, 140, 8, 80, 3, 1, 1, 5, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4517, 140, 9, 99, 1, 1, 1, 40, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4518, 140, 10, 100, 0, 1, 1, 1200, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4519, 140, 11, 80, 1, 1, 1, 20, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4520, 140, 12, 100, 5, 1, 1, 10, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4521, 140, 13, 40, 1, 1, 1, 20, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4522, 140, 14, 70, 5, 1, 1, 10, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4523, 140, 15, 99, 5, 1, 1, 30, 100, 0, 0, 45, '', 0, 0, 0, 0, 0),
(4524, 141, 1, 99, 5, 1, 1, 30, 100, 0, 0, 45, '', 0, 0, 0, 0, 0),
(4525, 141, 2, 99, 5, 1, 1, 2, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4526, 141, 3, 50, 5, 1, 1, 10, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4527, 141, 4, 99, 5, 1, 1, 35, 100, 0, 0, 17, '', 0, 0, 0, 0, 0),
(4528, 141, 5, 99, 3, 1, 1, 10, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4529, 141, 6, 99, 3, 1, 1, 30, 100, 0, 0, 19, '', 0, 0, 0, 0, 0),
(4530, 141, 7, 80, 3, 1, 1, 5, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4531, 141, 8, 99, 1, 1, 1, 40, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4532, 141, 9, 100, 0, 1, 1, 1200, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4533, 141, 10, 80, 1, 1, 1, 20, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4534, 141, 11, 100, 5, 1, 1, 10, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4535, 141, 12, 99, 5, 1, 1, 30, 100, 0, 0, 45, '', 0, 0, 0, 0, 0),
(4536, 143, 1, 95, 1, 10000, 10000, 20, 100, 0, 0, 45, '', 0, 0, 0, 0, 0),
(4537, 143, 2, 60, 1, 5000, 5000, 7, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4538, 143, 3, 60, 1, 3000, 3000, 7, 100, 0, 0, 30, '', 0, 0, 0, 0, 0),
(4539, 144, 1, 100, 1, 10000, 10000, 20, 100, 0, 0, 80, '', 0, 0, 0, 0, 0),
(4540, 144, 2, 50, 1, 5000, 5000, 7, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4541, 145, 1, 50, 5, 2000, 1500, 10, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4542, 145, 2, 90, 1, 10000, 10000, 20, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4543, 145, 3, 95, 1, 5000, 8000, 7, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4544, 145, 4, 50, 1, 1000, 400, 7, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4545, 150, 1, 100, 0, 40, 1, 1200, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4546, 151, 1, 100, 0, 50, 1, 1200, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4547, 152, 1, 100, 0, 50, 1, 1200, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4548, 153, 1, 100, 0, 50, 1, 1200, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4549, 154, 1, 100, 0, 50, 1, 1200, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4550, 155, 1, 100, 0, 30, 1, 1200, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4551, 155, 2, 100, 0, -990, 1, 180, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4552, 156, 1, 100, 0, 50, 1, 1200, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4553, 157, 1, 100, 0, 1, 1, 180, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4554, 200, 1, 75, 0, 1, 1, 0, 100, 5, 2, 45, '7130200', 0, 0, 0, 0, 0),
(4555, 200, 2, 50, 0, 1, 1, 0, 100, 15, 3, 50, '210100, 210100, 210100', 0, 0, 0, 0, 0),
(4556, 200, 3, 50, 0, 1, 1, 0, 100, 4, 4, 40, '7130100, 7130100', 0, 0, 0, 0, 0),
(4557, 200, 4, 99, 0, 1, 1, 0, 100, 5000, 5, 11, '6130104, 6130104, 6130104, 6130104, 6130104', 0, 0, 0, 0, 0),
(4558, 200, 5, 75, 0, 1, 1, 0, 100, 5000, 5, 9, '6230101, 6230101, 6230101, 6230101, 6230101', 0, 0, 0, 0, 0),
(4559, 200, 6, 55, 0, 1, 1, 0, 100, 5000, 5, 7, '6300003, 6300003, 6300003, 6300003, 6300003', 0, 0, 0, 0, 0),
(4560, 200, 7, 35, 0, 1, 1, 0, 100, 5000, 5, 5, '6400003, 6400003, 6400003, 6400003, 6400003', 0, 0, 0, 0, 0),
(4561, 200, 8, 95, 0, 1, 1, 0, 100, 1, 7, 40, '9400100', 0, 0, 0, 0, 0),
(4562, 200, 9, 90, 0, 1, 1, 0, 100, 1, 7, 40, '9400101', 0, 0, 0, 0, 0),
(4563, 200, 10, 85, 0, 1, 1, 0, 100, 1, 7, 40, '9400102', 0, 0, 0, 0, 0),
(4564, 200, 11, 80, 0, 1, 1, 0, 100, 2, 7, 40, '9400100, 9400101', 0, 0, 0, 0, 0),
(4565, 200, 12, 75, 0, 1, 1, 0, 100, 2, 7, 40, '9400100, 9400102', 0, 0, 0, 0, 0),
(4566, 200, 13, 70, 0, 1, 1, 0, 100, 2, 7, 40, '9400101, 9400102', 0, 0, 0, 0, 0),
(4567, 200, 14, 65, 0, 1, 1, 0, 100, 4, 7, 40, '9400100, 9400101, 9400102', 0, 0, 0, 0, 0),
(4568, 200, 15, 60, 0, 1, 1, 0, 100, 4, 7, 40, '9400110', 0, 0, 0, 0, 0),
(4569, 200, 16, 55, 0, 1, 1, 0, 100, 4, 7, 40, '9400111', 0, 0, 0, 0, 0),
(4570, 200, 17, 50, 0, 1, 1, 0, 100, 4, 7, 40, '9400102, 9400110', 0, 0, 0, 0, 0),
(4571, 200, 18, 45, 0, 1, 1, 0, 100, 4, 7, 40, '9400101, 9400111', 0, 0, 0, 0, 0),
(4572, 200, 19, 40, 0, 1, 1, 0, 100, 4, 7, 40, '9400110, 9400111', 0, 0, 0, 0, 0),
(4573, 200, 20, 35, 0, 1, 1, 0, 100, 4, 7, 40, '9400111, 9400110, 9400101', 0, 0, 0, 0, 0),
(4574, 200, 21, 30, 0, 1, 1, 0, 100, 4, 7, 40, '9400110, 9400111, 9400102', 0, 0, 0, 0, 0),
(4575, 200, 22, 25, 0, 1, 1, 0, 100, 4, 7, 40, '9400100, 9400110, 9400111, 9400102', 0, 0, 0, 0, 0),
(4576, 200, 23, 20, 0, 1, 1, 0, 100, 4, 7, 40, '9400100, 9400110', 0, 0, 0, 0, 0),
(4577, 200, 24, 15, 0, 1, 1, 0, 100, 4, 7, 40, '9400110, 9400111', 0, 0, 0, 0, 0),
(4578, 200, 25, 10, 0, 1, 1, 0, 100, 4, 7, 40, '9400110', 0, 0, 0, 0, 0),
(4579, 200, 26, 5, 0, 1, 1, 0, 100, 4, 7, 40, '9400100, 9400101, 9400102, 9400110, 9400111', 0, 0, 0, 0, 0),
(4580, 200, 27, 75, 0, 1, 1, 0, 100, 3, 6, 30, '4230116', 0, 0, 0, 0, 0),
(4581, 200, 28, 75, 0, 1, 1, 0, 100, 20, 1, 30, '9300009, 9300009', 0, 0, 0, 0, 0),
(4582, 200, 29, 75, 0, 1, 1, 0, 100, 30, 1, 30, '9300015, 9300015, 9300015, 9300015, 9300015', 0, 0, 0, 0, 0),
(4583, 200, 30, 50, 0, 1, 1, 0, 100, 30, 1, 30, '9300016, 9300016, 9300016, 9300016, 9300016', 0, 0, 0, 0, 0),
(4584, 200, 31, 25, 0, 1, 1, 0, 100, 30, 1, 30, '9300017, 9300017, 9300017, 9300017, 9300017', 0, 0, 0, 0, 0),
(4585, 200, 32, 99, 0, 1, 1, 0, 100, 5000, 5, 9, '6230101, 6230101, 6230101, 6230101, 6230101', 0, 0, 0, 0, 0),
(4586, 200, 33, 75, 0, 1, 1, 0, 100, 5000, 5, 7, '6300003, 6300003, 6300003, 6300003, 6300003', 0, 0, 0, 0, 0),
(4587, 200, 34, 55, 0, 1, 1, 0, 100, 5000, 5, 5, '6400003, 6400003, 6400003, 6400003, 6400003', 0, 0, 0, 0, 0),
(4588, 200, 35, 35, 0, 1, 1, 0, 100, 5000, 5, 5, '6400004, 6400004, 6400004, 6400004, 6400004', 0, 0, 0, 0, 0),
(4589, 200, 36, 99, 0, 1, 1, 0, 100, 5000, 5, 7, '6300003, 6300003, 6300003, 6300003, 6300003', 0, 0, 0, 0, 0),
(4590, 200, 37, 75, 0, 1, 1, 0, 100, 5000, 5, 5, '6400003, 6400003, 6400003, 6400003, 6400003', 0, 0, 0, 0, 0),
(4591, 200, 38, 55, 0, 1, 1, 0, 100, 5000, 5, 5, '6400004, 6400004, 6400004, 6400004, 6400004', 0, 0, 0, 0, 0),
(4592, 200, 39, 95, 0, 1, 1, 0, 100, 5000, 1, 1, '8500003, 8500003, 8500003, 8500003', -500, -500, 500, -150, 0),
(4593, 200, 40, 95, 0, 1, 1, 0, 100, 5000, 1, 1, '8500004, 8500004, 8500004, 8500004', -500, -150, 500, 0, 0),
(4594, 200, 41, 99, 0, 1, 1, 0, 100, 5000, 1, 7, '8510100, 8510100, 8510100, 8510100, 8510100', -1220, -480, -100, 40, 0),
(4595, 200, 42, 90, 0, 1, 1, 0, 100, 5000, 1, 19, '8510100, 8510100, 8510100, 8510100, 8510100', -1220, -480, -100, 40, 0),
(4596, 200, 43, 99, 0, 1, 1, 0, 100, 5000, 1, 7, '8510100, 8510100, 8510100, 8510100, 8510100', 100, -510, 1200, 40, 0),
(4597, 200, 44, 90, 0, 1, 1, 0, 100, 5000, 1, 19, '8510100, 8510100, 8510100, 8510100, 8510100', 100, -510, 1200, 40, 0),
(4598, 200, 45, 100, 0, 1, 1, 0, 100, 20, 1, 7, '9300020, 9300020, 9300020, 9300020', -440, -120, 380, 130, 0),
(4599, 200, 46, 100, 0, 1, 1, 0, 100, 40, 1, 21, '9300026, 9300026, 9300026, 9300026, 9300026, 9300026', -595, 330, 595, 400, 0),
(4600, 200, 47, 100, 0, 1, 1, 0, 100, 80, 1, 23, '9300035, 9300035, 9300035, 9300035, 9300035', -900, 50, 300, 80, 0),
(4601, 200, 48, 90, 0, 1, 1, 0, 100, 80, 1, 17, '9300034, 9300034, 9300034, 9300034, 9300034', -730, -190, 370, 115, 0),
(4602, 200, 49, 75, 0, 1, 1, 0, 100, 30, 1, 45, '9300055, 9300055', 0, 0, 0, 0, 0),
(4603, 200, 50, 50, 0, 1, 1, 0, 100, 30, 1, 45, '9300054, 9300054', 0, 0, 0, 0, 0),
(4604, 200, 51, 25, 0, 1, 1, 0, 100, 30, 1, 45, '9300056, 9300056, 9300056', 0, 0, 0, 0, 0),
(4605, 200, 52, 99, 0, 1, 1, 0, 100, 2, 11, 10, '7130602', -16, -81, 16, 0, 0),
(4606, 200, 53, 95, 0, 1, 1, 0, 100, 30, 12, 60, '8810019, 8810019, 8810019, 8810019, 8810019', 0, 0, 0, 0, 0),
(4607, 200, 54, 75, 0, 1, 1, 0, 100, 30, 12, 55, '8810020, 8810020, 8810020, 8810020, 8810020', 0, 0, 0, 0, 0),
(4608, 200, 55, 45, 0, 1, 1, 0, 100, 30, 12, 50, '8810021, 8810021, 8810021, 8810021, 8810021', 0, 0, 0, 0, 0),
(4609, 200, 56, 85, 0, 1, 1, 0, 100, 20, 12, 90, '8810022, 8810022', 0, 0, 0, 0, 0),
(4610, 200, 57, 55, 0, 1, 1, 0, 100, 20, 12, 80, '8810023, 8810023', 0, 0, 0, 0, 0),
(4611, 200, 58, 95, 0, 1, 1, 0, 100, 30, 12, 30, '8810019, 8810019', 0, 0, 0, 0, 0),
(4612, 200, 59, 75, 0, 1, 1, 0, 100, 30, 12, 25, '8810020, 8810020', 0, 0, 0, 0, 0),
(4613, 200, 60, 45, 0, 1, 1, 0, 100, 30, 12, 20, '8810021, 8810021', 0, 0, 0, 0, 0),
(4614, 200, 61, 50, 0, 1, 1, 0, 100, 2, 12, 0, '9300080, 9300080', 0, 0, 0, 0, 0),
(4615, 200, 62, 70, 0, 1, 1, 0, 100, 10, 12, 10, '9300124, 9300124, 9300124', 0, 0, 0, 0, 0),
(4616, 200, 63, 50, 0, 1, 1, 0, 100, 10, 12, 7, '9300125, 9300125, 9300125', 0, 0, 0, 0, 0),
(4617, 200, 64, 99, 0, 1, 1, 0, 100, 6, 1, 0, '9400407, 9400407', 0, 0, 0, 0, 0),
(4618, 200, 65, 75, 0, 1, 1, 0, 100, 10, 1, 0, '9400407, 9400407', 0, 0, 0, 0, 0),
(4619, 200, 66, 50, 0, 1, 1, 0, 100, 10, 1, 0, '9400407, 9400407', 0, 0, 0, 0, 0),
(4620, 200, 67, 30, 0, 1, 1, 0, 100, 10, 1, 0, '9400407, 9400407', 0, 0, 0, 0, 0),
(4621, 200, 68, 15, 0, 1, 1, 0, 100, 10, 1, 0, '9400407, 9400407', 0, 0, 0, 0, 0),
(4622, 200, 69, 10, 0, 1, 1, 0, 100, 10, 1, 0, '9400407, 9400407', 0, 0, 0, 0, 0),
(4623, 200, 70, 7, 0, 1, 1, 0, 100, 10, 1, 0, '9400407, 9400407', 0, 0, 0, 0, 0),
(4624, 200, 71, 2, 0, 1, 1, 0, 100, 10, 1, 0, '9400407, 9400407', 0, 0, 0, 0, 0),
(4625, 200, 72, 50, 0, 1, 1, 0, 100, 30, 12, 0, '9420011, 9420011', 0, 0, 0, 0, 0),
(4626, 200, 73, 100, 0, 1, 1, 0, 100, 2, 1, 7, '9400550', 0, 0, 0, 0, 0),
(4627, 200, 74, 75, 0, 1, 1, 0, 100, 30, 1, 45, '9300143, 9300143', 0, 0, 0, 0, 0),
(4628, 200, 75, 50, 0, 1, 1, 0, 100, 30, 1, 45, '9300144, 9300144', 0, 0, 0, 0, 0),
(4629, 200, 76, 25, 0, 1, 1, 0, 100, 30, 1, 45, '9300144, 9300143', 0, 0, 0, 0, 0),
(4630, 200, 77, 70, 0, 1, 1, 0, 100, 30, 1, 10, '5100000, 5100000', 0, 0, 0, 0, 0),
(4631, 200, 78, 90, 0, 1, 1, 0, 100, 30, 1, 10, '100100, 100100, 100101, 100101, 130101, 130101', 0, 0, 0, 0, 0),
(4632, 200, 79, 99, 0, 1, 1, 0, 100, 12, 1, 20, '9420511, 9420511, 9420511, 9420512, 9420512, 9420511', 0, 0, 0, 0, 0),
(4633, 200, 80, 80, 0, 1, 1, 0, 100, 20, 1, 15, '6230401, 6230401, 6230401, 6230401, 6230401', 0, 0, 0, 0, 0),
(4634, 200, 81, 80, 0, 1, 1, 0, 100, 3, 1, 15, '9410100', 0, 0, 0, 0, 0),
(4635, 200, 82, 80, 0, 1, 1, 0, 100, 30, 1, 10, '3230102, 3230102, 4230104, 4230104, 4230104', 0, 0, 0, 0, 0),
(4636, 200, 83, 80, 0, 1, 1, 0, 100, 15, 1, 10, '5120500, 5120500, 5120500', 0, 0, 0, 0, 0),
(4637, 200, 84, 80, 0, 1, 1, 0, 100, 15, 1, 10, '4230101, 4230101, 4230101', 0, 0, 0, 0, 0),
(4638, 200, 85, 99, 0, 1, 1, 0, 100, 5000, 1, 40, '9001008', 0, 0, 0, 0, 0),
(4639, 200, 86, 50, 0, 1, 1, 0, 100, 10, 12, 7, '9300125, 9300125, 9300125', 0, 0, 0, 0, 0),
(4640, 200, 87, 50, 0, 1, 1, 0, 100, 10, 12, 7, '9300125, 9300125, 9300125', 0, 0, 0, 0, 0),
(4641, 200, 88, 80, 0, 1, 1, 0, 100, 15, 1, 10, '9300167, 9300167, 9300167, 9300168, 9300168, 9300168', 0, 0, 0, 0, 0),
(4642, 200, 89, 80, 0, 1, 1, 0, 100, 6, 1, 40, '8150300, 8150300', 0, 0, 0, 0, 0),
(4643, 200, 90, 50, 0, 1, 1, 0, 100, 4, 1, 30, '8150301, 8150301', 0, 0, 0, 0, 0),
(4644, 200, 91, 30, 0, 1, 1, 0, 100, 4, 1, 15, '8150302, 8150302', 0, 0, 0, 0, 0),
(4645, 200, 92, 50, 0, 1, 1, 0, 100, 12, 1, 20, '9420523, 9420524, 9420523, 9420524, 9420523, 9420524, 9420523, 9420524', 0, 0, 0, 0, 0),
(4646, 200, 93, 30, 0, 1, 1, 0, 100, 4, 1, 15, '8150302, 8150302', 0, 0, 0, 0, 0),
(4647, 200, 94, 50, 0, 1, 1, 0, 100, 15, 1, 10, '9300177, 9300177, 9300177, 9300177, 9300177', 0, 0, 0, 0, 0),
(4648, 200, 95, 80, 0, 1, 1, 0, 100, 15, 1, 30, '9300177, 9300177, 9300177, 9300177, 9300177', 0, 0, 0, 0, 0),
(4649, 200, 96, 50, 0, 1, 1, 0, 100, 15, 1, 20, '9300178, 9300178, 9300178, 9300178, 9300178', 0, 0, 0, 0, 0),
(4650, 200, 97, 30, 0, 1, 1, 0, 100, 15, 1, 15, '9300179, 9300179, 9300179, 9300179, 9300179', 0, 0, 0, 0, 0),
(4651, 200, 98, 30, 0, 1, 1, 0, 100, 15, 1, 15, '9300179, 9300179, 9300179, 9300179, 9300179', 0, 0, 0, 0, 0),
(4652, 200, 99, 30, 0, 1, 1, 0, 100, 15, 1, 15, '9300179, 9300179, 9300179, 9300179, 9300179', 0, 0, 0, 0, 0),
(4653, 200, 100, 30, 0, 1, 1, 0, 100, 15, 1, 15, '9300179, 9300179, 9300179, 9300179, 9300179', 0, 0, 0, 0, 0),
(4654, 200, 101, 80, 0, 1, 1, 0, 100, 5000, 12, 60, '8820007, 8820007, 8820007, 8820007, 8820007, 8820007, 8820007, 8820007, 8820007, 8820007, 8820007, 8820007', 0, 0, 0, 0, 0),
(4655, 200, 102, 100, 0, 1, 1, 0, 100, 5000, 12, 120, '8820007, 8820007, 8820007, 8820007, 8820007, 8820007', 0, 0, 0, 0, 0),
(4656, 200, 103, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300217, 9300218, 9300217, 9300218', 0, 0, 0, 0, 0),
(4657, 200, 104, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300219, 9300220, 9300219, 9300220', 0, 0, 0, 0, 0),
(4658, 200, 105, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300221, 9300222, 9300221, 9300222', 0, 0, 0, 0, 0),
(4659, 200, 106, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300223, 9300223, 9300223, 9300223', 0, 0, 0, 0, 0),
(4660, 200, 107, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300224, 9300224, 9300224, 9300224', 0, 0, 0, 0, 0),
(4661, 200, 108, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300225, 9300226, 9300225, 9300226', 0, 0, 0, 0, 0),
(4662, 200, 109, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300227, 9300228, 9300227, 9300228', 0, 0, 0, 0, 0),
(4663, 200, 110, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300229, 9300229, 9300229, 9300229', 0, 0, 0, 0, 0),
(4664, 200, 111, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300230, 9300231, 9300230, 9300231', 0, 0, 0, 0, 0),
(4665, 200, 112, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300232, 9300233, 9300232, 9300233', 0, 0, 0, 0, 0),
(4666, 200, 113, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300234, 9300235, 9300234, 9300235', 0, 0, 0, 0, 0),
(4667, 200, 114, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300236, 9300236, 9300236, 9300236', 0, 0, 0, 0, 0),
(4668, 200, 115, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300238, 9300238, 9300238, 9300238', 0, 0, 0, 0, 0),
(4669, 200, 116, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300239, 9300240, 9300239, 9300240', 0, 0, 0, 0, 0),
(4670, 200, 117, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300241, 9300242, 9300241, 9300242', 0, 0, 0, 0, 0),
(4671, 200, 118, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300243, 9300243, 9300243, 9300243', 0, 0, 0, 0, 0),
(4672, 200, 119, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300244, 9300245, 9300244, 9300245', 0, 0, 0, 0, 0),
(4673, 200, 120, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300246, 9300247, 9300246, 9300247', 0, 0, 0, 0, 0),
(4674, 200, 121, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300248, 9300248, 9300248, 9300248', 0, 0, 0, 0, 0),
(4675, 200, 122, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300249, 9300250, 9300249, 9300250', 0, 0, 0, 0, 0),
(4676, 200, 123, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300251, 9300251, 9300251, 9300251', 0, 0, 0, 0, 0),
(4677, 200, 124, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300252, 9300253, 9300252, 9300253', 0, 0, 0, 0, 0),
(4678, 200, 125, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300254, 9300255, 9300254, 9300255', 0, 0, 0, 0, 0),
(4679, 200, 126, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300256, 9300256, 9300256, 9300256', 0, 0, 0, 0, 0),
(4680, 200, 127, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300258, 9300258, 9300258, 9300258', 0, 0, 0, 0, 0),
(4681, 200, 128, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300259, 9300259, 9300259, 9300259', 0, 0, 0, 0, 0),
(4682, 200, 129, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300260, 9300260, 9300260, 9300260', 0, 0, 0, 0, 0),
(4683, 200, 130, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300261, 9300263, 9300261, 9300263', 0, 0, 0, 0, 0),
(4684, 200, 131, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300261, 9300262, 9300261, 9300262', 0, 0, 0, 0, 0),
(4685, 200, 132, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300264, 9300265, 9300264, 9300265', 0, 0, 0, 0, 0),
(4686, 200, 133, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300266, 9300267, 9300266, 9300267', 0, 0, 0, 0, 0),
(4687, 200, 134, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300270, 9300270, 9300270, 9300270, 9300270, 9300270, 9300270, 9300270', 0, 0, 0, 0, 0),
(4688, 200, 135, 70, 0, 1, 1, 0, 100, 10, 1, 1, '9400706, 9400706, 9400706, 9400706, 9400706, 9400706', 0, 0, 0, 0, 0),
(4689, 200, 136, 50, 0, 1, 1, 0, 100, 10, 12, 7, '9400259, 9400259', 0, 0, 0, 0, 0),
(4690, 200, 137, 50, 0, 1, 1, 0, 100, 10, 12, 7, '9400262, 9400262', 0, 0, 0, 0, 0),
(4691, 200, 138, 10, 0, 1, 1, 0, 100, 10, 1, 0, '9420545, 9420545, 9420545', 0, 0, 0, 0, 0),
(4692, 200, 139, 100, 0, 1, 1, 0, 100, 4, 12, 150, '6400006', 0, 0, 0, 0, 0),
(4693, 200, 140, 100, 0, 1, 1, 0, 100, 1200, 12, 150000, '6400007, 6400007, 6400007', 0, 0, 0, 0, 0),
(4694, 200, 141, 10, 0, 1, 1, 0, 100, 10, 1, 0, '9420550, 9420550, 9420550', 0, 0, 0, 0, 0),
(4695, 200, 142, 10, 0, 1, 1, 0, 100, 10, 1, 0, '9420550, 9420550, 9420550', 0, 0, 0, 0, 0),
(4696, 200, 143, 10, 0, 1, 1, 0, 100, 10, 1, 0, '9420550, 9420550, 9420550', 0, 0, 0, 0, 0),
(4697, 200, 144, 10, 0, 1, 1, 0, 100, 10, 1, 0, '9420550, 9420550, 9420550', 0, 0, 0, 0, 0),
(4698, 200, 145, 10, 0, 1, 1, 0, 100, 10, 1, 0, '9420550, 9420550, 9420550', 0, 0, 0, 0, 0),
(4699, 200, 146, 10, 0, 1, 1, 0, 100, 10, 1, 0, '9420550, 9420550, 9420550', 0, 0, 0, 0, 0),
(4700, 200, 147, 10, 0, 1, 1, 0, 100, 10, 1, 0, '9420550, 9420550, 9420550', 0, 0, 0, 0, 0),
(4701, 200, 148, 90, 0, 1, 1, 0, 100, 10, 1, 0, '9420545, 9420545, 9420545, 9420545, 9420545, 9420545, 9420545, 9420545, 9420545', 0, 0, 0, 0, 0),
(4702, 200, 149, 90, 0, 1, 1, 0, 100, 10, 1, 0, '9420550, 9420550, 9420550, 9420550, 9420550, 9420550, 9420550, 9420550, 9420550', 0, 0, 0, 0, 0),
(4703, 200, 150, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300256, 9300256, 9300256, 9300256', 0, 0, 0, 0, 0),
(4704, 200, 151, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300258, 9300258, 9300258, 9300258', 0, 0, 0, 0, 0),
(4705, 200, 152, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300259, 9300259, 9300259, 9300259', 0, 0, 0, 0, 0),
(4706, 200, 153, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300260, 9300260, 9300260, 9300260', 0, 0, 0, 0, 0),
(4707, 200, 154, 45, 0, 1, 1, 0, 100, 10, 21, 80, '9400287, 9400287, 9400287', 0, 0, 0, 0, 0),
(4708, 200, 155, 50, 0, 1, 1, 0, 100, 1, 22, 0, '9400290', 0, 0, 0, 0, 0),
(4709, 200, 156, 40, 0, 1, 1, 0, 100, 1, 22, 0, '9400291', 0, 0, 0, 0, 0),
(4710, 200, 157, 30, 0, 1, 1, 0, 100, 1, 22, 0, '9400292', 0, 0, 0, 0, 0),
(4711, 200, 158, 90, 0, 1, 1, 0, 100, 10, 6, 15, '9300266, 9300267, 9300266, 9300267', 0, 0, 0, 0, 0),
(4712, 200, 159, 100, 0, 1, 1, 0, 100, 6, 12, 90, '6400005', 0, 0, 0, 0, 0),
(4713, 200, 160, 100, 0, 1, 1, 0, 100, 4, 12, 150, '6400006', 0, 0, 0, 0, 0),
(4714, 200, 161, 100, 0, 1, 1, 0, 100, 1200, 12, 150000, '6400007, 6400007, 6400007', 0, 0, 0, 0, 0),
(4715, 200, 162, 100, 0, 1, 1, 0, 100, 3, 12, 100, '6400008', 0, 0, 0, 0, 0),
(4716, 200, 163, 100, 0, 1, 1, 0, 100, 3, 12, 180, '6400009', 0, 0, 0, 0, 0),
(4717, 200, 164, 60, 0, 1, 1, 0, 100, 200, 12, 80, '3300000, 3300000, 3300000, 3300001, 3300001', 0, 0, 0, 0, 0),
(4718, 200, 165, 80, 0, 1, 1, 0, 100, 200, 12, 40, '3300003, 3300003, 3300003, 3300004, 3300004, 3300004', 0, 0, 0, 0, 0),
(4719, 122, 1, 100, 5, 1, 1, 30, 50, 0, 0, 10, '', -300, -120, 300, 120, 0),
(4720, 122, 2, 100, 5, 1, 1, 30, 50, 0, 0, 35, '', -300, -120, 300, 120, 0),
(4721, 122, 3, 100, 5, 1, 1, 30, 70, 0, 0, 45, '', -450, -300, 450, 300, 0),
(4722, 122, 4, 100, 5, 1, 1, 30, 70, 0, 0, 45, '', -200, -120, 200, 30, 0),
(4723, 122, 5, 100, 2, 1, 1, 30, 30, 0, 0, 45, '', -200, -120, 200, 30, 0),
(4724, 122, 6, 100, 2, 1, 1, 30, 70, 0, 0, 45, '', -800, -800, 800, 50, 0),
(4725, 122, 7, 100, 0, 1, 1, 15, 80, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4726, 122, 8, 100, 0, 1, 1, 300, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4727, 122, 9, 100, 5, 1, 1, 10, 50, 0, 0, 90, '', -200, -120, 200, 30, 0),
(4728, 122, 10, 100, 5, 1, 1, 10, 80, 0, 0, 30, '', -200, -120, 200, 30, 0),
(4729, 122, 11, 100, 5, 1, 1, 10, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4730, 122, 12, 100, 5, 1, 1, 5, 100, 0, 0, 1, '', -450, -300, 450, 300, 0),
(4731, 123, 1, 100, 5, 1, 1, 5, 50, 0, 0, 10, '', -300, -120, 300, 120, 0),
(4732, 123, 2, 100, 5, 1, 1, 5, 50, 0, 0, 35, '', -300, -120, 300, 120, 0),
(4733, 123, 3, 100, 5, 1, 1, 5, 100, 0, 0, 10, '', -300, -120, 300, 120, 0),
(4734, 123, 4, 100, 5, 1, 1, 3, 100, 0, 0, 1, '', -300, -120, 300, 120, 0),
(4735, 123, 5, 100, 5, 1, 1, 3, 60, 0, 0, 1, '', -300, -120, 300, 120, 0),
(4736, 123, 6, 100, 5, 1, 1, 1, 100, 0, 0, 10, '', -300, -120, 300, 120, 0),
(4737, 123, 7, 100, 2, 1, 1, 5, 60, 0, 0, 30, '', -350, -150, 30, 25, 0),
(4738, 123, 8, 100, 3, 1, 1, 2, 60, 0, 0, 15, '', -200, -120, 200, 20, 0),
(4739, 123, 9, 100, 1, 1, 1, 2, 20, 0, 0, 10, '', -300, -120, 300, 120, 0),
(4740, 123, 10, 100, 1, 1, 1, 2, 90, 0, 0, 1, '', -800, -110, 800, 10, 0),
(4741, 123, 11, 100, 0, 1, 1, 5, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4742, 123, 12, 100, 5, 1, 1, 10, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4743, 123, 13, 100, 0, 1, 1, 2, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4744, 123, 14, 100, 0, 1, 1, 5, 100, 0, 0, 1, '', -250, -80, 10, 10, 0),
(4745, 123, 15, 100, 0, 1, 1, 4, 100, 0, 0, 1, '', -250, -80, 10, 10, 0),
(4746, 126, 1, 100, 5, 80, 1, 10, 100, 0, 0, 5, '', -300, -120, 300, 120, 0),
(4747, 126, 2, 100, 5, 80, 1, 15, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4748, 126, 3, 100, 5, 80, 1, 15, 100, 0, 0, 20, '', -700, -440, 240, 55, 0),
(4749, 126, 4, 100, 3, 80, 1, 15, 100, 0, 0, 11, '', -730, -190, 580, 110, 0),
(4750, 126, 5, 100, 5, 80, 1, 15, 100, 0, 0, 50, '', -300, -120, 300, 120, 0),
(4751, 126, 6, 100, 0, 80, 1, 15, 80, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4752, 126, 7, 100, 5, 80, 1, 15, 100, 0, 0, 15, '', -300, -120, 300, 120, 0),
(4753, 126, 8, 100, 5, 80, 1, 10, 100, 0, 0, 20, '', -300, -120, 300, 120, 0),
(4754, 126, 9, 100, 0, 80, 1, 5, 100, 0, 0, 1, '', -120, -80, 120, 10, 0),
(4755, 126, 10, 100, 0, 80, 1, 5, 100, 0, 0, 1, '', -120, -80, 120, 10, 0),
(4756, 142, 1, 70, 1, 1, 1, 30, 100, 0, 0, 60, '', 0, 0, 0, 0, 0),
(4757, 132, 1, 100, 0, 1, 1, 15, 100, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4758, 132, 2, 100, 1, 1, 1, 15, 100, 0, 0, 0, '', -300, -120, 300, 120, 0),
(4759, 132, 3, 100, 0, 1, 1, 3, 8, 0, 0, 0, '', 0, 0, 0, 0, 0),
(4760, 132, 4, 100, 0, 1, 1, 5, 100, 0, 0, 0, '', -150, -100, 150, 100, 0),
(4761, 132, 5, 100, 0, 1, 1, 12, 100, 0, 0, 0, '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `wz_oxdata`
--

CREATE TABLE `wz_oxdata` (
  `questionset` smallint(6) NOT NULL DEFAULT '0',
  `questionid` smallint(6) NOT NULL DEFAULT '0',
  `question` varchar(200) NOT NULL DEFAULT '',
  `display` varchar(200) NOT NULL DEFAULT '',
  `answer` enum('o','x') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 資料表的匯出資料 `wz_oxdata`
--

INSERT INTO `wz_oxdata` (`questionset`, `questionid`, `question`, `display`, `answer`) VALUES
(1, 1, 'The weakest monster in MapleStory is the BLUE SNAIL.', 'The weakest monster is the GREEN SNAIL. (LV. 1)', 'x'),
(1, 2, 'The most powerful monster in MapleStory is the JR. BALROG.', 'Currently the most powerful monster is the CRIMSON BALROG.', 'x'),
(1, 3, 'RED SNAILS can only be found at the Maple Island, where the beginners play.', 'There\'s quite a lot of them at Victoria Island, too.', 'x'),
(1, 4, 'You\'ll occasionaly obtain [Pig Tail] after defeating the PIG.', 'You\'ll occasionally obtain [Pig Head].', 'x'),
(1, 5, 'You\'ll obtain [Blue Ribbon] by defeating the RIBBONED PIG.', 'You\'ll obtain [Red Ribbon].', 'x'),
(1, 6, 'The weakest among the mushrooms is the ORANGE MUSHROOM.', 'The weakest among the mushrooms is the SPORE. (LV. 2)', 'x'),
(1, 7, 'You\'ll obtain [Lupin\'s Doll] by defeating the cute monkey monster called LUPIN.', 'You\'ll obtain Lupin\'s Doll, banana, and others.', 'o'),
(1, 8, 'DRAKE is a monster that lives deep in the Dungeon. You\'ll occasionally obtain [Drake\'s Toenail] by defeating it.', 'You\'ll obtain [Drake\'s Skin].', 'x'),
(1, 9, 'When you defeat the PIG, WILD BOAR, or the HORNED MUSHROOM, you\'ll obtain [leather].', 'HORNED MUSHROOM does not provide [leather].', 'x'),
(1, 10, 'The slimes you\'ll see often at the beginner\'s map or around Ellinia are the BLUE SLIMES.', 'At the beginner\'s map, you\'ll see the GREEN SLIMES.', 'x'),
(1, 11, 'The GREEN MUSHROOM that you\'ll see often around the field, forrest, or the construction site has a grey horn on its cap.', 'GREEN MUSHROOMS do not have horns.', 'x'),
(1, 12, 'The WILD CARGO that lives deep in the Dungeon is very adept at attacking both up-close and long-range.', 'WILD CARGO only attacks up-close.', 'x'),
(1, 13, 'EVIL EYE, CURSE EYE, and COLD EYE all look similar, but only EVIL EYE has two eyes.', 'They all have one eye.', 'x'),
(1, 14, 'The LIGATORS that live around the swamps look a lot like spiders.', 'They resemble alligators.', 'x'),
(1, 15, 'The WILD CARGO that live deep in the Dungeon is the mutant version of a cat with a single horn at the center of its head.', 'WILD CARGO has 2 huge horns.', 'x'),
(1, 16, 'The JR. BALROG that lives in the cursed altar is a LV. 80 monster.', 'JR. BALROG is a LV. 80 monster.', 'o'),
(1, 17, 'The fastest monster in MapleStory is the STONE GOLLEM.', 'STONE GOLLEM and DARK STONE GOLLEM is considered the slowest monsters in the game.', 'x'),
(1, 18, 'The nasty ZOMBIE LUPIN\'s are made of black magic and the cursed doll through Grendel the Really Old. ', 'It\'s a monster made out of Grendel the Really Old\'s black magic.', 'o'),
(1, 19, 'MUSHMOM, a humongous mushroom monster, is basically a giant version of the ORANGE MUSHROOM.', 'MUSHMOM is a giant version of the ORANGE MUSHROOM.', 'o'),
(1, 20, 'BUBBLINGS that reside in subways attack by firing bubbles from long range.', 'BUBBLINGS only attack up-close.', 'x'),
(1, 21, 'STIRGE, a flying monster, usually flies around for a long time, and then takes a break by hanging on the ceiling.', 'They never stop flying.', 'x'),
(1, 22, 'You\'ll obtain [Jr. Necki\'s Skin] by defeating the JR. NECKI, and when eaten, you\'ll recover some of your MP.', '[Jr. Necki\'s Skin] is not edible.', 'x'),
(1, 23, 'JR. WRAITH, a monster that resembles ghost, occasionally offers a [Blue Tablecloth].', 'They only offer [White Tablecloth].', 'x'),
(1, 24, 'LORANG, a crab-resembling monster around Florina Beach, occasionally attacks while jumping.', 'They do resemble crabs, but they do attack while jumping, too.', 'o'),
(1, 25, 'LORANG, a crab-resembling monster, digs the sand and hides in there if they are near death.', 'They\'ll fight til they die. (Bravo...)', 'x'),
(1, 26, 'UMTI, the monster that resembles a sea turtle, usually attacks long-range with force.', 'UMTI\'s attack long-range.', 'o'),
(1, 27, '[Iron Hog\'s Metal Hoof] is obtainable through IRON HOG, a metal armor-dressed monster that resembles a horse.', 'IRON HOG is a pig.', 'x'),
(1, 28, '[Medicine with Weird Vibes], an item given by Wraith, will make you really feel weird if consumed.', '[Medicine with Weird Vibes] cannot be consumed.', 'x'),
(1, 29, 'MALADY, a monster that flies around with the broom, fires away laser beams from far out.', 'MALADY only attacks up-close.', 'x'),
(1, 100, 'RED DRAKE is the only Drake that attacks long-range.', 'RED DRAKE attacks long-range with force.', 'o'),
(1, 101, 'CROKO, which lives around swamps, is higher leveled than COPPER DRAKE.', 'CROKO is LV. 52, and COPPER DRAKE is LV. 45.', 'o'),
(1, 102, 'COPPER DRAKE can be found near Perion, and is known for attacking from long-range.', 'It only attacks from up-close.', 'x'),
(1, 103, 'Every monster from El Nath is weak against fire-based attacks.', 'DARK YETI and DARK PEPE are weak against religious attacks.', 'x'),
(1, 104, 'JR. YETI and the Transforming JR. YETI have the same level and HP.', 'They are both LV. 50 with HP 3700.', 'o'),
(1, 105, 'CRIMSON BALROG, LV 100, does not get poisoned from posion-based attacks.', 'It cancels out poison-based attacks, but is vulnerable against religious attacks.', 'o'),
(1, 106, 'MALADY, the monster flying around in broom, is an undead monster.', 'It\'s weak against religious attacks, but is NOT an undead monster.', 'x'),
(1, 107, 'The monsters that offer [Stiff Feather] are HECTOR, DARK YETI, and LYCANTHROPE.', 'HECTOR, DARK YETI, and LYCANTHROPE offer [Stiff Feather].', 'x'),
(1, 108, 'The monsters that offer [Soft Feather] are YETI, JR. YETI, WHITE FANG, LYCANTHROPE, AND LUPIN.', 'LUPIN offers [Stiff Feather].', 'x'),
(1, 109, 'AXE STUMP is a monster borne of rage towards a lumberjack that forgot to take off the axe from the tree.', 'There\'s a legend where AXE STUMP is a monster borne of rage towards a lumberjack that forgot to take off the axe from the tree.', 'o'),
(1, 110, 'WEREWOLF summons its other self to attack.', 'WEREWOLF does not have its other self.', 'x'),
(1, 111, 'NEPENDEATH and DARK NEPENDEATH are the only monsters that do not move around.', 'NEPENDEATH does not move around and attack.', 'o'),
(1, 112, '', '', 'x'),
(1, 113, '', '', 'x'),
(1, 114, '', '', 'x'),
(1, 115, '', '', 'o'),
(1, 116, '', '', 'x'),
(1, 117, '', '', 'o'),
(1, 118, '', '', 'o'),
(1, 119, '', '', 'x'),
(1, 120, '', '', 'x'),
(2, 1, 'You\'ll need 15 tree branches to make 1 Processed Wood. ', '10 tree branches is enough.', 'x'),
(2, 2, 'You\'ll make a set of screws, 15 screws in total, with a Bronze Plate and a Steel Plate.', 'Screws are useful for making or upgrading items.', 'o'),
(2, 3, 'Fusion Mace, a one-handed blunt weapon, is only available to Warriors and Magicians.', 'It\'s only available to Warriors and Magicians.', 'o'),
(2, 4, 'Mace, a one-handed blunt weapon, is only available to Warriors and Magicians.', 'Mace is only available to Warriors and Magicians.', 'o'),
(2, 5, 'Long Sword, a one-handed sword, is available to everyone BUT the beginners.', 'Beginners can use it, too.', 'x'),
(2, 6, 'Balanche, a weapon for Bowman sold at Henesys, has an item option of STR + 2 attached to it.', 'Balanche has an item option of STR + 1 attached to it.', 'x'),
(2, 7, 'The One-side Only Earring is available through stores, but NOT the Amethyst Earring.', 'Amethyst Earring can be purchased at the Henesys Department Store.', 'x'),
(2, 8, 'The Blue Whitebottom Shoes that can be worn from LV. 26 on, is available to everyone, including the beginners.', 'It is available to everyone.', 'o'),
(2, 9, 'The Armor Scroll consists of two types - the one for DEF, and the one for HP.', 'You can check through the Perion Department Store.', 'o'),
(2, 10, 'When purchasing a 100% scroll at the store, the scroll for two-handed weapon is more expensive than the one for one-handed weapon.', 'The price for the scrolls for both the two-handed or one-handed weapon are the same.', 'x'),
(2, 11, 'The weapon store at Ellinia only sells scrolls for Staff and Wand.', 'The scrolls for earrings are also available.', 'x'),
(2, 12, 'The weapon store at Lith Harbor is the only place without the Subi Throwing-Star.', 'The Subi Throwing-Star is also available at Lith Harbor.', 'x'),
(2, 13, 'The Stolen Fence is only available at Lith Harbor.', 'The Square Wooden Shield is available at Lith Harbor.', 'o'),
(2, 14, 'The item options for the White & Black Korean Rubber Shoes are diferent.', 'The colors are different, but the options are the same.', 'x'),
(2, 15, 'If you use the 100% Scroll for Claw for ATT, then the ATT will be +1, as will be the accuracy.', 'Only the ATT goes up by 1. The accuracy stays the same.', 'x'),
(2, 16, 'A single item slot can hold upto 100 ores of same kind at once.', 'The ores can be stored up to 100 per slot.', 'o'),
(2, 17, 'The item that\'s dropped onto the field will not disappear, even after a long period of time.', 'It disappears after a certain amount of time.', 'x'),
(2, 100, 'To make the Mithril Tower Shield, you\'ll need Steel Tower Shield, 10 Mithril Plates, and 50,000 mesos.', 'Not 50,000 mesos, but 100,000 mesos.', 'x'),
(2, 101, 'To make the Moon Rock, you\'ll need to take the a Plate of Mithril, Steel, Bronze, Adamantium, Silver, Orihalcon, and Gold each at Arwen the Fairy.', 'You also need 10,000 mesos along with the items.', 'x'),
(2, 102, 'To make the Mithril Brist, you\'ll need Steel Brist, 5 Mithril Plates, and 55,000 mesos.', 'Mr. Smith of Perion makes it.', 'o'),
(2, 103, 'Steel Pride, a hat for Magicians, has the item option of INT + 1 and LUK + 1', 'Only INT + 1 is available.', 'x'),
(2, 104, 'To make Steel Trigger, which can be worn at LV. 30 for Warriors, you\'ll need 30 pieces of Drake\'s Skin.', 'It\'ll take 30 leathers and 20 pieces of Drake\'s Skin.', 'x'),
(2, 105, 'Green Jack Boots, which is available for Bowman over LV. 25, has the item option of DEX + 2', 'An option of DEX + 1 is attached to it.', 'x'),
(2, 106, 'Blue White-Lined Boots, which is available for thieves over LV. 35, has the item option of LUK + 1 and DEX + 1.', 'It\'s available through Chrishrama of Sleepywood.', 'o'),
(2, 107, 'To make Metal Koif, a helmet for Warriors, you\'ll need a Bronze Koif, a Steel Plate, and 500 mesos.', 'Mr. Thunder of Perion makes it.', 'o'),
(2, 108, 'To make Green Diros, a glove for Bowman, you\'ll need Red Diros as one of the materials.', 'Not Red Diros, but Blue Diros.', 'x'),
(2, 109, 'To make the Basic Archer Glove, you\'ll need 20 leathers.', 'To make the Basic Archer Glove, you\'ll need 15 leathers.', 'x'),
(2, 110, 'To make Work Glove, a glove for thieves, you\'ll need 20 leathers and 1,000 mesos.', 'You need 15 leathers and 1,000 mesos.', 'x'),
(2, 111, 'To make Dark Wolfskin, a Thief glove, you\'ll need Steel Wolfskin as one of the materials.', 'Not Steel Wolfskin, but Bronze Wolfskin.', 'x'),
(2, 112, 'To make Steel Titans, a claw for thieves, you\'ll need 5 screws as one of the materials. ', 'JM from tha Streetz of Kerning City makes it.', 'o'),
(2, 113, 'To make Steel Igor, a claw for thieves, you\'ll need Bronze Igor, 2 Steel Plates, and 3,000 mesos. ', 'JM from tha Streetz of Kerning City makes it.', 'o'),
(2, 114, 'To make Red Lutia, a glove for Magicians, you\'ll need 60 leathers.', 'Francois of Ellinia makes it.', 'o'),
(2, 115, 'Dark Arten, a glove for Magicians, has the item option of INT + 2 and LUK + 1.', 'The only option attached to it is INT + 3.', 'x'),
(2, 116, 'The level limit for Juno, a glove for Warriors, is 15.', 'The level limit is 10.', 'x'),
(2, 117, 'To make Yellow Briggon, a glove for Warriors, you\'ll need 2 Topaz\'s.', 'Not 2, but 3 Topaz\'s', 'x'),
(2, 118, 'All weapons that can be used by everyone are only limited by levels, not stats.', 'There are weapons that are affected by the stats.', 'x'),
(2, 119, 'To make Bronze Husk, a glove for Warriors, you\'ll need 2 Power Crystals as one of the materials.', 'An option of STR + 2 is attached to it.', 'o'),
(2, 120, 'Snowshoes, which enables you not to slip through snow, is available to everyone with the level limit of 30.', 'The boots differ from different jobs.', 'x'),
(2, 121, 'To make a crossbow called Rower, you\'ll need 45 screws.', 'You need 40 screws.', 'x'),
(2, 122, 'The most expensive one to refine is the Star Rock.', 'The most expensive one to refine is Dark Crystal, which will cost you 50,000 mesos.', 'x'),
(2, 123, 'At the Repair Shop, you\'ll be able to acquire a Steel Plate with 100 pieces of Iron Hog\'s Metal Hoof and 1,000 mesos.', 'The Repair Shop is at Kerning City.', 'o'),
(2, 124, 'The Bronze Arrows and Steel Arrows are available through Vicious of Henesys.', 'Vicious only makes Bronze Arrows.', 'x'),
(3, 1, 'You get 5 mesos for selling one Mushroom Spore.', 'You get 3 mesos for selling one Mushroom Spore.', 'x'),
(3, 2, 'Slime Bubble costs more than the Squishy Liquid.', 'Slime Bubble DOES cost more than the Squishy Liquid.', 'o'),
(3, 3, 'You get 100 mesos for selling 1 ore of Bronze.', 'You get 100 mesos for selling 1 ore of Bronze.', 'o'),
(3, 4, 'Drake\'s Skull from Red Drake costs more than the Drake\'s Skull of other Drakes.', 'They all cost the same.', 'x'),
(3, 5, 'To refine one Black Crystal, it\'ll cost you 3,000 mesos.', 'It costs 3,000 mesos to refine a black crystal.', 'o'),
(3, 6, 'You get 8 mesos for selling one Orange Mushroom Cap.', 'You get 4 mesos for selling one Orange Mushroom Cap.', 'x'),
(3, 7, 'You get 50 mesos for selling 10 tree branches.', 'You get 4 mesos for selling 1 tree branch.', 'x'),
(3, 8, 'You get 300 mesos for selling 3 leathers.', 'You get 100 mesos for selling 1 leather.', 'o'),
(3, 9, 'The price of 10 ores of Gold and one Gold Plate is of same price.', 'You\'ll get 3,000 mesos for selling 10 ores of Gold, 1,200 mesos for a Gold Plate.', 'x'),
(3, 10, 'The most expensive Return Scroll is the one to Sleepywood.', 'The Return Scroll : Sleepywood costs 600 mesos.', 'o'),
(3, 11, 'Sell 5 of Malady\'s Experiemental Frogs, buy Arrows for Bow, sell them back to the store, and you\'ll get 300 mesos.', 'You don\'t get anything for selling arrows at the store. Doesn\'t that blow?', 'x'),
(3, 12, 'To purchase [Old Wisconsin], you\'ll need 3,000 mesos.', '[Old Wisconsin] is available through the weapon store at Henesys.', 'o'),
(3, 13, 'If you purchase Arrow for Bow at the store, it\'ll cost you 1 meso per arrow, but you won\'t be able to sell the arrows for any money.', 'Arrow for Bow and Crossbow will not get you any money for selling them at the store.', 'o'),
(3, 14, 'The Watermelon at MapleStory costs 3,100 mesos.', 'It costs 3,200 mesos.', 'x'),
(3, 15, 'The Red Bean Sundae at MapleStory costs 4,000 mesos.', 'You can buy it from an NPC for 4,000 mesos.', 'o'),
(3, 16, 'The Ice Cream Suckers at MapleStory costs 2,100 mesos.', 'It costs 2,300 mesos.', 'x'),
(3, 17, 'The price of 150 Huge Bubbles of Bubbling is LOWER than 200 Slime Bubbles.', '200 Slime Bubbles : 10,000 mesos. 150 Huge Bubbles of Bubbling : 1,500 mesos.', 'o'),
(3, 18, '', '', 'x'),
(3, 19, '', '', 'o'),
(3, 20, '', '', 'x'),
(3, 21, '', '', 'x'),
(3, 22, '', '', 'x'),
(3, 23, '', '', 'x'),
(3, 100, 'The price of Jr. Neck Skin and Stirge Wing is the same.', 'They both go for 12 mesos.', 'o'),
(3, 101, 'The price of 2 Jr. Necki skins is LOWER than 1 Ligator skin.', '2 Jr. Neck Skins = 24 mesos. 1 Ligator Skin = 25 mesos.', 'o'),
(3, 102, 'Sell 10 Tablecloths from Jr. Wraith, and you\'ll be able to buy a Lemon with it.', 'Lemon costs 305 mesos, so you\'ll be short of 5 mesos.', 'x'),
(3, 103, '1 Lorang Claw has the same price as 1 Cold Eye Tail.', 'Lorang Claw = 32 mesos. Cold Eye Tail = 35 mesos.', 'x'),
(3, 104, '1 Clang Claw has the same price as the price of 5 Blue Mushroom Caps.', 'Clang Claw = 60 mesos. Blue Mushroom Cap = 12.', 'o'),
(3, 105, 'The price of Umti Shell and Slime Bubble is the same.', 'They both go for 50 mesos.', 'o'),
(3, 106, 'If you sell 100 pieces of Iron Hog\'s Metal Hoof, you\'ll be able to buy a Dark Moon Conehat.', '100 pieces of Iron Hog\'s Metal Hoof = 3,800 mesos. Yes, you can buy Dark Moon Conehat with that.', 'o'),
(3, 107, 'The Medicine with Weird Vibes from Wraith will go for the same price as 1 Processed Wood.', 'Medicine with Weird Vibes = 50 mesos. Processed Wood = 20 mesos.', 'x'),
(3, 108, 'The price of 128 pieces of Croko Skin is 6,500 mesos.', '128 x 50 = 6,400, not 6,500.', 'x'),
(3, 109, 'If you sell 10 Pig Ribbons to the store, you can buy a Red Potion with those mesos.', '10 Pig Ribbons = 50 mesos.', 'o'),
(3, 110, 'A Mushmom Spore has the same price as a Tauromacis Horn.', 'They both go for 100 mesos.', 'o'),
(3, 111, 'If you sell the Star Rock at the store, you\'ll get 10,000 mesos per.', 'You\'ll get 10,000 mesos per Star Rock.', 'o'),
(3, 112, 'If you sell 2 Red Snail Shells, 2 Pig Heads, and 1 Slime Bubble at the store, you\'ll get 140 mesos.', 'You\'ll get 30+60+50=140 mesos.', 'o'),
(3, 113, 'Both the Yellow Umbrella and the Sky-Blue Umbrella will get you 1 meso if you sell them at the stores.', '1 meso for Sky-Blue Umbrella, but 50,000 mesos for Yellow Umbrella. ', 'x'),
(3, 114, 'It costs the same whereever in MapleStory to refine the ores.', 'It\'s a little bit cheaper at Kerning City.', 'x'),
(3, 115, 'If you sell your screws at the store, it\'ll fetch you 100 mesos per screw.', 'It goes fo 50 mesos.', 'x'),
(3, 116, '', '', 'x'),
(3, 117, '', '', 'x'),
(3, 118, '', '', 'x'),
(3, 119, '', '', 'x'),
(3, 120, '', '', 'x'),
(3, 121, '', '', 'x'),
(3, 122, '', '', 'x'),
(3, 123, '', '', 'x'),
(3, 124, '', '', 'x'),
(3, 125, '', '', 'x'),
(3, 126, '', '', 'x'),
(3, 127, '', '', 'x'),
(3, 128, '', '', 'x'),
(3, 129, '', '', 'o'),
(3, 130, '', '', 'x'),
(3, 131, '', '', 'x'),
(3, 132, '', '', 'o'),
(3, 133, '', '', 'o'),
(3, 134, '', '', 'o'),
(3, 135, '', '', 'o'),
(3, 136, '', '', 'o'),
(3, 137, '', '', 'o'),
(3, 138, '', '', 'o'),
(3, 139, '', '', 'o'),
(3, 140, '', '', 'o'),
(3, 141, '', '', 'o'),
(3, 142, '', '', 'o'),
(3, 143, '', '', 'o'),
(3, 144, '', '', 'o'),
(3, 145, '', '', 'o'),
(3, 146, '', '', 'x'),
(3, 147, '', '', 'x'),
(3, 148, '', '', 'x'),
(3, 149, '', '', 'x'),
(3, 150, '', '', 'x'),
(3, 151, '', '', 'x'),
(3, 152, '', '', 'x'),
(3, 153, '', '', 'x'),
(3, 154, '', '', 'x'),
(3, 155, '', '', 'x'),
(3, 156, '', '', 'x'),
(3, 157, '', '', 'x'),
(3, 158, '', '', 'x'),
(3, 159, '', '', 'x'),
(3, 160, '', '', 'x'),
(3, 161, '', '', 'o'),
(3, 162, '', '', 'o'),
(3, 163, '', '', 'x'),
(3, 164, '', '', 'x'),
(3, 165, '', '', 'x'),
(3, 166, '', '', 'x'),
(3, 167, '', '', 'o'),
(3, 168, '', '', 'o'),
(3, 169, '', '', 'x'),
(3, 170, '', '', 'x'),
(3, 171, '', '', 'x'),
(3, 172, '', '', 'o'),
(3, 173, '', '', 'x'),
(3, 174, '', '', 'o'),
(3, 175, '', '', 'x'),
(3, 176, '', '', 'x'),
(3, 177, '', '', 'x'),
(3, 178, '', '', 'o'),
(3, 179, '', '', 'x'),
(3, 180, '', '', 'o'),
(3, 181, '', '', 'x'),
(3, 182, '', '', 'o'),
(3, 183, '', '', 'o'),
(4, 1, 'Red Potion increases the HP by 100.', 'Increases the HP by 50.', 'x'),
(4, 2, 'Lemon increases the MP by 150.', 'Increases the MP by 150.', 'o'),
(4, 3, 'The Warrior Potion increases the Weapon ATT by 10 for 3 min.', 'Increases the Weapon ATT by 5 for 3 min.', 'x'),
(4, 4, 'Blue Potion is 8 mesos cheaper at the Ellinia Department Store than other places.', 'The Blue Potion is cheaper in Ellinia Department Store.', 'o'),
(4, 5, 'If you take the Orange Potion, it\'ll improve your HP by 150, and it costs 150 mesos at stores.', 'It costs 160 mesos.', 'x'),
(4, 6, 'The Speed Potion will increase your speed for 5 min.', 'Increases the speed for 3 min.', 'x'),
(4, 7, 'The Wizard Potion will increase your Magic ATT by 10 for 5 min.', 'Increases the Magic ATT by 5 for 3 min.', 'x'),
(4, 8, 'The Sap of an Ancient Tree will increase your Magic ATT by 10 for 5 min.', 'Increases the Magic ATT by 10 for 5 min.', 'o'),
(4, 9, 'The Drake\'s Meat will increase your Weapon DEF by 10 for 3 min.', 'Increases the Weapon DEF by 10 for 3 min.', 'o'),
(4, 10, 'Drake\'s Blood will increase your Weapon ATT by 10 for 5 min.', 'Increases the Weapon ATT by 8 for 5 min.', 'x'),
(4, 11, 'Take one Power Elixir, and it\'ll restore your HP and MP back to 100%.', 'Power Elixir recovers all HP and MP.', 'o'),
(4, 12, 'Meat can be bought at stores for 106 mesos, and it recovers HP 100.', 'Increases the HP by 100.', 'o'),
(4, 100, 'Sniper Potion will increase your accuracy by 5 for 5 min.', 'Increases accuracy by 5 for 5 min.', 'o'),
(4, 101, 'Pizza costs 420 mesos, and one slice will recover HP 400.', 'Pizza costs 450 mesos.', 'x'),
(4, 102, 'Cake costs 320 mesos, and one piece will recover HP 100 and MP 100.', 'Check the 24 Hr Mobile Store', 'o'),
(4, 103, 'The Pure Water that can be purchased at 24 Hr Mobile Store costs 1600 mesos and recovers MP 800.', 'The Pure Water that can be purchased at 24 Hr Mobile Store costs 1650 mesos', 'x'),
(4, 104, 'Hot Dog costs 320 mesos and one will recover HP 300.', 'Check the 24 Hr Mobile Store', 'o'),
(4, 105, 'Hamburger costs 430 mesos and one will recover HP 400.', 'Hamburger costs 450 mesos.', 'x'),
(4, 106, 'You\'ll get 2,750 mesos from the stores if you sell your Power Elixir.', 'It fetches 2,500 mesos.', 'x'),
(4, 107, 'DEX Potion increases your avoidability by 5 for 3 min.', 'Increases the avoidability by 5 for 3 min.', 'o'),
(4, 108, 'Sunset Dew recovers MP 5000', 'It recovers MP 5,000.', 'o'),
(4, 109, 'Sunrise Dew recovers HP 4000.', 'It recovers MP 4,000.', 'x'),
(4, 110, 'Sunrise Dew can be sold to the stores for 4,050 mesos.', 'It\'s sold for 4,050 mesos.', 'o'),
(4, 111, 'Sunset Dew can be sold to the stores for 5,050 mesos.', 'It\'s sold for 5,100 mesos.', 'x'),
(4, 112, 'Pure Water can be bought through 24 Hr Mobile Store, Jane, Valen, Hana, or Mr. Sweatbottom.', 'Hana of El Nath does NOT sell pure water.', 'x'),
(5, 1, 'Once you complete the quest of "Sera and Her Mirror" at the Maple Island, you\'ll gain a little bit of EXP and mesos.', 'Only EXP, not mesos.', 'x'),
(5, 2, 'During the quest of "Nina & Sen\'s Dinner" at the Maple Island, Sen asks for the Mushroom Soup.', 'Sen wants the Mushroom Soup.', 'o'),
(5, 3, 'Once you complete the quest of "Roger and the Apple" at the Maple Island, you\'ll get a watermelon from him.', 'Gives away an apple.', 'x'),
(5, 4, 'Once you complete the quest of "Deliver the Letter to the Chief" at the Maple Island, you\'ll gain Wooden Shield.', 'Gives away a bandana.', 'x'),
(5, 5, 'Once you complete the quest of "Biggs\' Collection of Items" at the Maple Island, you\'ll gain a Wooden Sword.', 'You\'ll get either a Fruit Knife or a Razor.', 'x'),
(5, 6, 'The quest of "Fixing Blackbull\'s House" at Perion can only be cleared by the ones that have gone through the 1st job adv.', 'The quest can be completed even without a job adv.', 'x'),
(5, 7, 'To clear the quest of "Pia and the Blue Mushroom" at Henesys, you\'ll need 60 Horned Mushroom Caps and 60 Blue Mushroom Caps.', 'Not Horned Mushroom Caps, but Green Mushroom Caps.', 'x'),
(5, 8, 'Once you complete the quest of "Jane and the Wild Boar" at Lith Harbor, you\'ll gain a Scroll for Armor DEF.', 'Not the scroll for armor, but the scroll for weapon.', 'x'),
(5, 9, 'To clear the quest of "Alex the Runaway Kid" at Kerning City, you\'ll need to get a gold watch from Chief Stan and deliver it back to Alex.', 'Chief Stan is at Henesys, Alex at Kerning City.', 'o'),
(5, 10, 'The quest of "Arwen and the Glass Shoes" at Ellinia can only be completed once.', 'The "Glass Shoes" quest can be repeated over and over again.', 'x'),
(5, 11, 'To clear the quest of "Fixing Blackbull\'s House," you\'ll need 50 tree branches and 30 firewoods.', 'You need 30 tree branches and 50 firewoods.', 'x'),
(5, 12, 'The time limit for Party Quest at Kerning City is 30 min.', 'Has to be cleared within the 30 min. time limit.', 'o'),
(5, 13, 'If you\'re over LV. 40, even without the 2nd job adv., you\'ll be able to take on the quest of "Jane the Alchemist"', 'You need to have 2nd job adv. in order to take on the quest.', 'x'),
(5, 14, 'You won\'t be able to enter the Party Quest at Kerning City if some other party is already in there.', 'Only one party can enter the map to take on the Party Quest at a time.', 'o'),
(5, 15, 'Alex the runaway kid from Kerning City\'s father is Mr. Wetbottom of the VIP sauna at Sleepywood.', 'Alex\'s father is Chief Stan of Henesys.', 'x'),
(5, 16, 'Once you clear the quest of "John\'s Pink Flower Basket," you\'ll receive 30 screws from him as a reward.', 'You\'ll receive 30 screws from John.', 'o'),
(5, 17, 'Mr. Wetbottom\'s Secret Book is blue.', 'It\'s in red.', 'x'),
(5, 18, 'The ticket sold at the subway construction site for B1, B2, and B3 all cost 2,000 mesos.', 'B1 - 500 mesos. B2 - 1,200 mesos. B3 - 2,000 mesos.', 'x'),
(5, 19, 'The level limit for Party Quest at Kerning City is between 20 and 30.', 'The level limit is between 21 and 30.', 'x'),
(5, 20, 'To take on the quest of "Building a New House for Blackbull," your fame level needs to be at least 5.', 'The fame level has to be at least 10.', 'x'),
(5, 21, 'Every time you clear Shumi\'s quest, your fame level will increase by 1, all 3 times.', 'You\'ll earn a total of +3 on fame level through her quests.', 'o'),
(5, 22, 'Once the quest of "Sabirtrama and the Anti-Aging Medicine" is cleared, you\'ll be able to gain either a Star Rock or a Moon Rock.', 'If the items are NOT of the ones Sabitrama requested, you\'ll get a Moon Rock instead.', 'o'),
(5, 23, 'For the quest of "Sabitrama and the Diet Medicine," the color of the flowers he asks for are the same throughout.', 'The color of flowers differ everytime you ask him.', 'x'),
(5, 24, 'The Party Quest of Kerning City consists of 5 stages.', 'You need to clear 5 stages. There\'s also a bonus stage available.', 'o'),
(5, 25, 'The quest of "Jane the Alchemist" asks for materials 3 different times.', 'You need to gather up the materials 3 times to clear the quest.', 'o'),
(5, 26, 'For the quest of "Sabitrama and the Diet Medicine," if you clear it without delivering the right herb, you\'ll just receive EXP 500.', 'You\'ll receive EXP 500 while clearing it.', 'o'),
(5, 100, 'Once you clear the quest of "Jane and the Wild Boar," you\'ll receive a random weapon attack scroll of either 100%, 60%, or 10%.', 'You\'ll receive EXP 500 and a 60% Scroll for Weapon Att.', 'x'),
(5, 101, 'The Forest of Patience consists of 5 levels.', 'Diet Medicine (LV 1, 2). Anti-Aging Medicine (LV 3, 4, 5)', 'o'),
(5, 102, 'Shumi\'s quest goes from <Lost Coin - Lots of Money - Sack of Money> ', 'The 2nd quest is "Shumi and the Lost Bundle of Money"', 'x'),
(5, 103, 'The Unagi Special you\'ll need for Mr. Wetbottom\'s quests consists of Lupin Banana, Curse Eye Tail, and Pig Head.', 'Lupin Banana does NOT go in the Unagi Special.', 'x'),
(5, 104, 'The Deep Forest of Patience consists of 7 levels.', 'Deep Forest of Patience consists of 7 levels.', 'o'),
(5, 105, 'To clear the quest of "Luke the Security Guy," you\'ll need 100 pieces of Jr. Necki Skin, 10 Stirge Wings, and 1 Pure Water. ', '1 Bowl of Salad, not Pure Water.', 'x'),
(5, 106, 'To clear the quest of "Rowen and the Cursed Dolls," you\'ll need a total of 2,300 cursed dolls.', 'You\'ll need 100. 200, 400, 600, and 1,000 cursed dolls per quest.', 'o'),
(5, 107, 'To reawaken the Ragged Gladius from the quest of "Manji\'s Ragged Gladius," you\'ll need the Moon Rock for it.', 'You need the Star Rock.', 'x'),
(5, 108, 'Once you clear the quest of "Building a New House for Blackbull," you\'ll randomly receive a 10% Scroll for Weapon Att. ', 'The scrolls can be chosen according to your occupation.', 'x'),
(5, 109, 'The Deed to the Land you need to clear the quest of "Building a New House for Blackbull" can be obtained through Cold Eye.', 'The Deed can be obtained through Curse Eye.', 'x'),
(5, 110, 'Once you clear the quest of "Ronnie & the Fairies Building a New House," you\'ll receive EXP 4,000.', 'You\'ll receive EXP 3,900.', 'x'),
(5, 111, 'Once you clear the quest of "Sabitrama and the Anti-Aging  Medicine," your fame level will increase by 2.', 'Your fame level will increase, along with gaining some EXP and items.', 'o'),
(5, 112, 'Once you clear the quest of "Pia\'s Present for a Friend," you\'ll receive an overall armor for Thief with the level limit of 60.', 'You\'ll receive a set of LV. 60 top and bottom.', 'x'),
(5, 113, 'The quest of "Trade with Sergeant Charlie" can be done regardless of the level.', 'The quest is available even to the beginners.', 'o'),
(5, 114, 'The NPC\'s that you need to see for the quest of "Alpha Platoon\'s Network of Communication" are Master Sergeant Fox, Staff Sergeant Bravo, Sergeant Charlie, and Corporal Easy.', 'They are Master Sergeant Fox, Staff Sergeant Bravo, Sergeant Charlie, and Corporal Easy.', 'x'),
(5, 115, 'For the quest of "Looking For a Book of Ancient," all users over LV. 50, regardless of the job, can take part in it.', 'All users LV. 55 and over, minus the beginners, can take part in it.', 'x'),
(5, 116, '', '', 'x'),
(5, 117, '', '', 'o'),
(5, 118, '', '', 'x'),
(5, 119, '', '', 'x'),
(5, 120, '', '', 'x'),
(5, 121, '', '', 'x'),
(5, 122, '', '', 'x'),
(5, 123, '', '', 'x'),
(5, 124, '', '', 'x'),
(5, 125, '', '', 'x'),
(5, 126, '', '', 'x'),
(5, 127, '', '', 'o'),
(5, 128, '', '', 'x'),
(5, 129, '', '', 'x'),
(6, 1, 'In order to become a Bowman, beginners need to head over to Bowman Training School.', 'The beginners can become bowmen at the Bowman Instructional School.', 'x'),
(6, 2, 'In order to become a Warrior, beginners need to head over to the Warrior Sanctuary.', 'The beginners can become Warriors at the Warrior Sanctuary.', 'o'),
(6, 3, 'In order to become a Magician, beginners need to head over to the Magic Library.', 'The beginners can become Magicians at the Magic Library.', 'o'),
(6, 4, 'The item you need to collect to make the 2nd job adv., all 30 of them, is called the Brown Crystal.', 'You need to collect 30 BLACK Crystals.', 'x'),
(6, 5, 'Once you have collected 30 Black Crystals for the 2nd job adv., you\'ll be awarded the "Proof of a Hero."', 'Once you have collected 30 Black Crystals for the 2nd job adv., you\'ll be awarded the "Proof of a Hero."', 'o'),
(6, 6, 'For the 2nd job adv., a Warrior can choose between becoming a Fighter, Page, or an Axeman.', 'You can choose between Fighter, Page, or Spearman as your 2nd job adv. as a Warrior. ', 'x'),
(6, 7, 'For the 2nd job adv., a Bowman can choose between becoming a Hunter or a Sniper.', 'Hunter for the Bowman, Sniper for the crossBowman.', 'o'),
(6, 8, 'For the 2nd job adv., a Thief can choose between becoming an Assassin or a Bandit.', 'Assassin for the Thief with throwing stars, Bandit for the Thief with daggers.', 'o'),
(6, 9, 'For the 2nd job adv., a Magician can choose between becoming a Wizard or a Priest.', 'You\'ll be choosing either Wizard or Cleric.', 'x'),
(6, 10, 'When the beginner is at level 10, he/she can choose to become a Warrior, Magician, Thief, or a Bowman.', 'You can become a Magician at LV. 8', 'x'),
(6, 11, 'For a beginner to become a Thief, one needs to have at least LUK of 25 or over.', 'You need DEX of 25 or over.', 'x'),
(6, 12, 'To make the 3rd job adv., the user needs be at least at LV. 70 or above.', 'The 3rd job adv. will be available to users at LV 70 or over.', 'o'),
(6, 13, 'When a beginner makes the first job adv., 1 skill point is awarded.', 'When a beginner makes the job adv., 1 skill point will be awarded.', 'o'),
(6, 14, '', 'Can\'t change your job into something totally different.', 'x'),
(6, 15, 'To make the 4th job advancement, you\'ll need to be at least at LV. 120, with a 3rd job adv. under your belt.', 'The 4th job adv. will be available to the ones over LV. 120.', 'o'),
(6, 16, 'A 1st-level Magician skill, "Improving MP Recovery," goes up to level 15.', 'The skill goes up to level 16.', 'x'),
(6, 100, 'When the Spearman\'s skill, "Hyper Body," is fully mastered, your MaxHP and MaxMP increases by 60%.', 'If you have mastered the skill, your MaxHP & MaxMP increases 60%.', 'o'),
(6, 101, 'When the Sniper\'s skill, "Iron Arrow," is fully mastered, the damage will increase by 180%.', 'Once you have mastered the Iron Arrow, the damage will increase by 180%.', 'o'),
(6, 102, 'The Thief has a skill called "Lucky Seven," which enables you to throw stars in mid-air.', 'Thieves can use skills while in mid-air.', 'o'),
(6, 103, 'All 2nd-level skills, regardless of the occupation, has a total of 6 sets of skills.', 'There are 8 different sets of skills for Warriors.', 'x'),
(6, 104, 'In order to become a Bowman, beginners need to head over to Bowman Training School.', 'The beginners can become thieves at the Thieves\' Hideout.', 'x'),
(6, 105, 'Magicians have 3 different types of jobs available for the 4th job adv.', 'Only Warriors have the jobs split 3 ways for the 4th job adv.', 'x'),
(6, 106, '', '', 'x'),
(6, 107, '', '', 'x'),
(6, 108, '', '', 'o'),
(6, 109, 'Add up all the occupations for the 4th job adv., and it adds up to 9.', '3 for Warriors + 2 for Magicians + 2 for bowmen + 2 for thieves = 9', 'o'),
(6, 110, '', '', 'x'),
(6, 111, '', '', 'o'),
(6, 112, '', '', 'o'),
(6, 113, '', '', 'x'),
(6, 114, '', '', 'x'),
(6, 115, '', '', 'x'),
(7, 1, 'After making your new character, the first place you head over to is the [Maple Island].', '[Maple Island] is the very first place you end up in MapleStory.', 'o'),
(7, 2, 'When creating a character, you\'ll be rolling a dice for the character stats. When you add up the stats for STR, DEX, INT, LUK, it\'ll add up to 24.', 'It\'s a total of 25 points.', 'x'),
(7, 3, 'The first NPC you run into in MapleStory is "Rina."', 'The first NPC you run into in MapleStory is "Heena."', 'x'),
(7, 4, 'Beginners need to pay only 100 mesos, a major discount, to use the cabs that are placed on every town on the island.', 'Beginners only need to pay 50 mesos to use the cab.', 'x'),
(7, 5, 'To purchase potions and scrolls at Kerning City, head over to "Famous Pharmacy."', 'To purchase potions at Kerning City, head over to "Famous Pharmacy."', 'o'),
(7, 6, 'In a safe town, you won\'t die even if your HP runs out by dropping from a high place.', 'Even in a safe town, if the HP runs out, the character will die.', 'x'),
(7, 7, 'To enter the Hidden Street, your character needs to be at least at LV. 10, with the job adv. under its belt.', 'Anyone can enter the Hidden Street.', 'x'),
(7, 8, 'The VIP Sauna at the Sleepywood Hotel costs 999 mesos to enter.', 'The VIP Sauna costs 999 mesos to enter.', 'o'),
(7, 9, 'To contact the MapleStory Hotline, dial 1588-7703', 'To contact the MapleStory Hotline, dial 1588-7703', 'o'),
(7, 10, 'The EXP points needed to level up differ from different jobs.', 'All EXP points needed for the level-up is equal to that of other jobs.', 'x'),
(7, 11, 'The EXP points awarded from the same monster differ from each time out.', 'The EXP points awarded will be the same, if it\'s from the same monster.', 'x'),
(7, 12, 'The NPC that sells potions at Florina Beach is named "Valen."', 'The NPC that sells potions there is "Valen."', 'o'),
(7, 13, 'You\'ll need EXP 15 to go from LV. 1 to LV. 2.', 'You\'ll need 15 points of EXP to go from LV 1 to LV 2.', 'o'),
(7, 14, 'You\'ll need EXP 34 to go from LV. 2 to LV. 3.', 'You\'ll need 34 points of EXP for that.', 'o'),
(7, 15, 'You\'ll need EXP 67 to go from LV. 3 to LV. 4.', 'You\'ll need 57 points of EXP for that.', 'x'),
(7, 16, 'Any act of dealing/trading cash points will result in heavy punishment.', 'It\'s against the Terms of Agreement.', 'o'),
(7, 100, 'You\'ll need EXP 92 to go from LV. 4 to LV. 5.', 'You\'ll need 92 points of EXP for that.', 'o'),
(7, 101, 'You\'ll need EXP 250 to go from LV. 5 to LV. 6.', 'You\'ll need 135 points of EXP for that.', 'x'),
(7, 102, 'You can only recharge your NexonCash through the MapleStory website or through the Cash Shop in the game.', 'It\'s impossible to recharge cash points at the website.', 'x'),
(7, 103, 'If you delete a cash item, you\'ll receive 35% of it back through MaplePoints.', 'You only receive 30% of it back.', 'x'),
(7, 104, 'All presents received through Cash Item cannot be deleted.', 'The only item that\'s undeletable is that of a "use" cash item.', 'x'),
(7, 105, 'You can put upto 8 items of your liking at the wish list of the Cash Shop.', 'You can put upto 10 items on wish list.', 'x'),
(7, 106, 'If you make the 2nd job adv. either at LV. 31 or beyond, you won\'t be able to receive the bonus SP + 1 that comes with the job adv.', 'You\'ll receive a bonus SP after every job adv. ', 'x'),
(7, 107, 'You can buy presents for your friends using MaplePoints.', 'You can\'t buy presents for others with the MaplePoints.', 'x'),
(7, 108, 'The Regular Sauna at Sleepywood Hotel costs 490 mesos.', 'The Regular Sauna costs 499 mesos to enter.', 'x'),
(7, 109, 'You\'ll be able to choose either a sword, a bat, or an axe as your weapon when you first make the character. Out of those weapons, the axe is considered the strongest, and the slowest of the three.', 'The basic set of weapons you choose from when first creating the character may all look different, but they all consist of the same characteristics.', 'x'),
(7, 110, 'MapleStory is a 2D side-scrolling online adventure game from Nexon.', 'MapleStory is a 2D side-scrolling online adventure game from Wizet.', 'x'),
(7, 111, '', '', 'x'),
(7, 112, '', '', 'o'),
(7, 113, '', '', 'x'),
(7, 114, '', '', 'o'),
(7, 115, '', '', 'o'),
(7, 116, '', '', 'x'),
(7, 117, '', '', 'x'),
(7, 118, '', '', 'o'),
(7, 119, '', '', 'x'),
(7, 120, '', '', 'x'),
(7, 121, '', '', 'o'),
(7, 122, '', '', 'o'),
(7, 123, '', '', 'x'),
(7, 124, '', '', 'x'),
(7, 125, '', '', 'o'),
(7, 126, '', '', 'x'),
(7, 127, '', '', 'x'),
(7, 128, '', '', 'x'),
(7, 129, '', '', 'o'),
(7, 130, '', '', 'x'),
(7, 131, '', '', 'x'),
(7, 132, '', '', 'x'),
(7, 133, '', '', 'o'),
(7, 134, '', '', 'o'),
(7, 135, '', '', 'x'),
(7, 136, '', '', 'x'),
(7, 137, '', '', 'x'),
(7, 138, '', '', 'x'),
(7, 139, '', '', 'x'),
(7, 140, '', '', 'x'),
(7, 141, '', '', 'x'),
(7, 142, '', '', 'x'),
(7, 143, '', '', 'o'),
(7, 144, '', '', 'x'),
(7, 145, '', '', 'x'),
(7, 146, '', '', 'o'),
(7, 147, '', '', 'x'),
(7, 148, '', '', 'x'),
(7, 149, '', '', 'x'),
(7, 150, '', '', 'o'),
(7, 151, '', '', 'o'),
(7, 152, '', '', 'x'),
(7, 153, '', '', 'o'),
(7, 154, '', '', 'o'),
(7, 155, '', '', 'o'),
(7, 156, '', '', 'x'),
(7, 157, '', '', 'x'),
(7, 158, '', '', 'o'),
(7, 159, '', '', 'o'),
(7, 160, '', '', 'o'),
(7, 161, '', '', 'o'),
(7, 162, '', '', 'o'),
(7, 163, '', '', 'o'),
(7, 164, '', '', 'o'),
(7, 165, '', '', 'o'),
(7, 166, '', '', 'x'),
(8, 1, '', '', 'x'),
(8, 2, '', '', 'x'),
(8, 3, '', '', 'x'),
(8, 4, '', '', 'x'),
(8, 5, '', '', 'o'),
(8, 6, '', '', 'o'),
(8, 7, '', '', 'o'),
(8, 8, '', '', 'x'),
(8, 9, '', '', 'o'),
(8, 10, '', '', 'x'),
(8, 11, '', '', 'o'),
(8, 12, '', '', 'x'),
(8, 100, '', '', 'o'),
(8, 101, '', '', 'o'),
(8, 102, '', '', 'o'),
(8, 103, '', '', 'x'),
(8, 104, '', '', 'x'),
(8, 105, '', '', 'o'),
(8, 106, '', '', 'o'),
(8, 107, '', '', 'o'),
(8, 108, '', '', 'x'),
(8, 109, '', '', 'o'),
(8, 110, '', '', 'x'),
(8, 111, '', '', 'x'),
(8, 112, '', '', 'o'),
(8, 113, '', '', 'x'),
(8, 114, '', '', 'o'),
(8, 115, '', '', 'x'),
(9, 1, '', '', 'o'),
(9, 2, '', '', 'o'),
(9, 3, '', '', 'o'),
(9, 4, '', '', 'o'),
(9, 5, '', '', 'o'),
(9, 6, '', '', 'o'),
(9, 7, '', '', 'o'),
(9, 8, '', '', 'o'),
(9, 9, '', '', 'o'),
(9, 10, '', '', 'o'),
(9, 11, '', '', 'x'),
(9, 12, '', '', 'x'),
(9, 13, '', '', 'o'),
(9, 14, '', '', 'o'),
(9, 15, '', '', 'o'),
(9, 16, '', '', 'o'),
(9, 17, '', '', 'o'),
(9, 18, '', '', 'o'),
(9, 19, '', '', 'o'),
(9, 20, '', '', 'o'),
(9, 21, '', '', 'o'),
(9, 22, '', '', 'x'),
(9, 23, '', '', 'x'),
(9, 24, '', '', 'x'),
(9, 25, '', '', 'x'),
(9, 26, '', '', 'x'),
(9, 27, '', '', 'o'),
(9, 28, '', '', 'x'),
(9, 29, '', '', 'x'),
(9, 30, '', '', 'x'),
(9, 31, '', '', 'x'),
(9, 32, '', '', 'x'),
(9, 33, '', '', 'x'),
(9, 34, '', '', 'x'),
(9, 35, '', '', 'x'),
(9, 36, '', '', 'x'),
(9, 37, '', '', 'x'),
(9, 38, '', '', 'x'),
(9, 39, '', '', 'x'),
(9, 40, '', '', 'o'),
(9, 41, '', '', 'o'),
(9, 42, '', '', 'o'),
(9, 43, '', '', 'x'),
(9, 44, '', '', 'o'),
(9, 100, '', '', 'o'),
(9, 101, '', '', 'x'),
(9, 102, '', '', 'x'),
(9, 103, '', '', 'o'),
(9, 104, '', '', 'o'),
(9, 105, '', '', 'o'),
(9, 106, '', '', 'o'),
(9, 107, '', '', 'o'),
(9, 108, '', '', 'o'),
(9, 109, '', '', 'o'),
(9, 110, '', '', 'o'),
(9, 111, '', '', 'o'),
(9, 112, '', '', 'o'),
(9, 113, '', '', 'o'),
(9, 114, '', '', 'o'),
(9, 115, '', '', 'o'),
(9, 116, '', '', 'o'),
(9, 117, '', '', 'o'),
(9, 118, '', '', 'o'),
(9, 119, '', '', 'o'),
(9, 120, '', '', 'o'),
(9, 121, '', '', 'o'),
(9, 122, '', '', 'o'),
(9, 123, '', '', 'x'),
(9, 124, '', '', 'x'),
(9, 125, '', '', 'x'),
(9, 126, '', '', 'x'),
(9, 127, '', '', 'x'),
(9, 128, '', '', 'x'),
(9, 129, '', '', 'x'),
(9, 130, '', '', 'x'),
(9, 131, '', '', 'x'),
(9, 132, '', '', 'x'),
(9, 133, '', '', 'x'),
(9, 134, '', '', 'x'),
(9, 135, '', '', 'x'),
(9, 136, '', '', 'o'),
(9, 137, '', '', 'x'),
(9, 138, '', '', 'x'),
(9, 139, '', '', 'x'),
(9, 140, '', '', 'x'),
(9, 141, '', '', 'x'),
(9, 142, '', '', 'x'),
(9, 143, '', '', 'x'),
(9, 144, '', '', 'x'),
(9, 145, '', '', 'x'),
(9, 146, '', '', 'x'),
(9, 147, '', '', 'o'),
(9, 148, '', '', 'x'),
(9, 149, '', '', 'x'),
(9, 150, '', '', 'o'),
(9, 151, '', '', 'o'),
(9, 152, '', '', 'o'),
(9, 153, '', '', 'o'),
(9, 154, '', '', 'o'),
(9, 155, '', '', 'o'),
(9, 156, '', '', 'o'),
(9, 157, '', '', 'o'),
(9, 158, '', '', 'o'),
(9, 159, '', '', 'o'),
(9, 160, '', '', 'o'),
(9, 161, '', '', 'o'),
(9, 162, '', '', 'o'),
(9, 163, '', '', 'o'),
(9, 164, '', '', 'o'),
(9, 165, '', '', 'o'),
(9, 166, '', '', 'o'),
(9, 167, '', '', 'o'),
(9, 168, '', '', 'o'),
(9, 169, '', '', 'o'),
(9, 170, '', '', 'x'),
(9, 171, '', '', 'x'),
(9, 172, '', '', 'x'),
(9, 173, '', '', 'x'),
(9, 174, '', '', 'x'),
(9, 175, '', '', 'x'),
(9, 176, '', '', 'x'),
(9, 177, '', '', 'x'),
(9, 178, '', '', 'x'),
(9, 179, '', '', 'x'),
(9, 180, '', '', 'x'),
(9, 181, '', '', 'x'),
(9, 182, '', '', 'x'),
(9, 183, '', '', 'x'),
(9, 184, '', '', 'x'),
(9, 185, '', '', 'x');

-- --------------------------------------------------------

--
-- 資料表結構 `zaksquads`
--

CREATE TABLE `zaksquads` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel` int(10) UNSIGNED NOT NULL,
  `leaderid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `members` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- --------------------------------------------------------

--
-- 檢視表結構 `readable_cheatlog`
--
DROP TABLE IF EXISTS `readable_cheatlog`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `readable_cheatlog`  AS  select `a`.`name` AS `accountname`,`a`.`id` AS `accountid`,`c`.`name` AS `name`,`c`.`id` AS `characterid`,`cl`.`offense` AS `offense`,`cl`.`count` AS `count`,`cl`.`lastoffensetime` AS `lastoffensetime`,`cl`.`param` AS `param` from ((`cheatlog` `cl` join `characters` `c`) join `accounts` `a`) where ((`cl`.`id` = `c`.`id`) and (`a`.`id` = `c`.`accountid`) and (`a`.`banned` = 0)) ;

-- --------------------------------------------------------

--
-- 檢視表結構 `readable_last_hour_cheatlog`
--
DROP TABLE IF EXISTS `readable_last_hour_cheatlog`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `readable_last_hour_cheatlog`  AS  select `a`.`name` AS `accountname`,`a`.`id` AS `accountid`,`c`.`name` AS `name`,`c`.`id` AS `characterid`,sum(`cl`.`count`) AS `numrepos` from ((`cheatlog` `cl` join `characters` `c`) join `accounts` `a`) where ((`cl`.`id` = `c`.`id`) and (`a`.`id` = `c`.`accountid`) and (timestampdiff(HOUR,`cl`.`lastoffensetime`,now()) < 1) and (`a`.`banned` = 0)) group by `cl`.`id` order by sum(`cl`.`count`) desc ;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `ranking1` (`id`,`banned`,`gm`);

--
-- 資料表索引 `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`achievementid`,`charid`);

--
-- 資料表索引 `alliances`
--
ALTER TABLE `alliances`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `auth_server_channel`
--
ALTER TABLE `auth_server_channel`
  ADD PRIMARY KEY (`channelid`);

--
-- 資料表索引 `auth_server_channel_ip`
--
ALTER TABLE `auth_server_channel_ip`
  ADD PRIMARY KEY (`channelconfigid`),
  ADD KEY `channelid` (`channelid`);

--
-- 資料表索引 `auth_server_cs`
--
ALTER TABLE `auth_server_cs`
  ADD PRIMARY KEY (`CashShopServerId`);

--
-- 資料表索引 `auth_server_login`
--
ALTER TABLE `auth_server_login`
  ADD PRIMARY KEY (`loginserverid`);

--
-- 資料表索引 `auth_server_mts`
--
ALTER TABLE `auth_server_mts`
  ADD PRIMARY KEY (`MTSServerId`);

--
-- 資料表索引 `bbs_replies`
--
ALTER TABLE `bbs_replies`
  ADD PRIMARY KEY (`replyid`);

--
-- 資料表索引 `bbs_threads`
--
ALTER TABLE `bbs_threads`
  ADD PRIMARY KEY (`threadid`);

--
-- 資料表索引 `bosslog`
--
ALTER TABLE `bosslog`
  ADD PRIMARY KEY (`bosslogid`);

--
-- 資料表索引 `buddies`
--
ALTER TABLE `buddies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buddies_ibfk_1` (`characterid`);

--
-- 資料表索引 `cashshop_limit_sell`
--
ALTER TABLE `cashshop_limit_sell`
  ADD PRIMARY KEY (`serial`);

--
-- 資料表索引 `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountid` (`accountid`),
  ADD KEY `party` (`party`),
  ADD KEY `ranking1` (`level`,`exp`),
  ADD KEY `ranking2` (`gm`,`job`);

--
-- 資料表索引 `character_slots`
--
ALTER TABLE `character_slots`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `cheatlog`
--
ALTER TABLE `cheatlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`characterid`) USING BTREE;

--
-- 資料表索引 `csequipment`
--
ALTER TABLE `csequipment`
  ADD PRIMARY KEY (`inventoryequipmentid`),
  ADD KEY `inventoryitemid` (`inventoryitemid`);

--
-- 資料表索引 `csitems`
--
ALTER TABLE `csitems`
  ADD PRIMARY KEY (`inventoryitemid`),
  ADD KEY `inventoryitems_ibfk_1` (`characterid`),
  ADD KEY `characterid` (`characterid`),
  ADD KEY `inventorytype` (`inventorytype`),
  ADD KEY `accountid` (`accountid`),
  ADD KEY `packageid` (`packageid`),
  ADD KEY `characterid_2` (`characterid`,`inventorytype`);

--
-- 資料表索引 `dueyequipment`
--
ALTER TABLE `dueyequipment`
  ADD PRIMARY KEY (`inventoryequipmentid`),
  ADD KEY `inventoryitemid` (`inventoryitemid`);

--
-- 資料表索引 `dueyitems`
--
ALTER TABLE `dueyitems`
  ADD PRIMARY KEY (`inventoryitemid`),
  ADD KEY `inventoryitems_ibfk_1` (`characterid`),
  ADD KEY `characterid` (`characterid`),
  ADD KEY `inventorytype` (`inventorytype`),
  ADD KEY `accountid` (`accountid`),
  ADD KEY `packageid` (`packageid`),
  ADD KEY `characterid_2` (`characterid`,`inventorytype`);

--
-- 資料表索引 `dueypackages`
--
ALTER TABLE `dueypackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- 資料表索引 `eventstats`
--
ALTER TABLE `eventstats`
  ADD PRIMARY KEY (`eventstatid`);

--
-- 資料表索引 `famelog`
--
ALTER TABLE `famelog`
  ADD PRIMARY KEY (`famelogid`),
  ADD KEY `characterid` (`characterid`);

--
-- 資料表索引 `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`familyid`);

--
-- 資料表索引 `game_poll_reply`
--
ALTER TABLE `game_poll_reply`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`giftid`);

--
-- 資料表索引 `gmlog`
--
ALTER TABLE `gmlog`
  ADD PRIMARY KEY (`gmlogid`);

--
-- 資料表索引 `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`guildid`);

--
-- 資料表索引 `hiredmerch`
--
ALTER TABLE `hiredmerch`
  ADD PRIMARY KEY (`PackageId`);

--
-- 資料表索引 `hiredmerchequipment`
--
ALTER TABLE `hiredmerchequipment`
  ADD PRIMARY KEY (`inventoryequipmentid`),
  ADD KEY `inventoryitemid` (`inventoryitemid`);

--
-- 資料表索引 `hiredmerchitems`
--
ALTER TABLE `hiredmerchitems`
  ADD PRIMARY KEY (`inventoryitemid`),
  ADD KEY `inventoryitems_ibfk_1` (`characterid`),
  ADD KEY `characterid` (`characterid`),
  ADD KEY `inventorytype` (`inventorytype`),
  ADD KEY `accountid` (`accountid`),
  ADD KEY `packageid` (`packageid`),
  ADD KEY `characterid_2` (`characterid`,`inventorytype`);

--
-- 資料表索引 `hiredfishing`
--
ALTER TABLE `hiredfishing`
  ADD PRIMARY KEY (`PackageId`);

--
-- 資料表索引 `hiredfishingequipment`
--
ALTER TABLE `hiredfishingequipment`
  ADD PRIMARY KEY (`inventoryequipmentid`),
  ADD KEY `inventoryitemid` (`inventoryitemid`);

--
-- 資料表索引 `hiredfishingitems`
--
ALTER TABLE `hiredfishingitems`
  ADD PRIMARY KEY (`inventoryitemid`),
  ADD KEY `inventoryitems_ibfk_1` (`characterid`),
  ADD KEY `characterid` (`characterid`),
  ADD KEY `inventorytype` (`inventorytype`),
  ADD KEY `accountid` (`accountid`),
  ADD KEY `packageid` (`packageid`),
  ADD KEY `characterid_2` (`characterid`,`inventorytype`);

  
--
-- 資料表索引 `htsquads`
--
ALTER TABLE `htsquads`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `inventoryequipment`
--
ALTER TABLE `inventoryequipment`
  ADD PRIMARY KEY (`inventoryequipmentid`),
  ADD KEY `inventoryitemid` (`inventoryitemid`);

--
-- 資料表索引 `inventoryitems`
--
ALTER TABLE `inventoryitems`
  ADD PRIMARY KEY (`inventoryitemid`),
  ADD KEY `inventorytype` (`inventorytype`),
  ADD KEY `accountid` (`accountid`),
  ADD KEY `packageid` (`packageid`),
  ADD KEY `characterid_2` (`characterid`,`inventorytype`);

--
-- 資料表索引 `inventorylog`
--
ALTER TABLE `inventorylog`
  ADD PRIMARY KEY (`inventorylogid`),
  ADD KEY `inventoryitemid` (`inventoryitemid`);

--
-- 資料表索引 `inventoryslot`
--
ALTER TABLE `inventoryslot`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `invitecodedata`
--
ALTER TABLE `invitecodedata`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `ipbans`
--
ALTER TABLE `ipbans`
  ADD PRIMARY KEY (`ipbanid`);

--
-- 資料表索引 `ipvotelog`
--
ALTER TABLE `ipvotelog`
  ADD PRIMARY KEY (`vid`);

--
-- 資料表索引 `keymap`
--
ALTER TABLE `keymap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keymap_ibfk_1` (`characterid`);

--
-- 資料表索引 `macbans`
--
ALTER TABLE `macbans`
  ADD PRIMARY KEY (`macbanid`),
  ADD UNIQUE KEY `mac_2` (`mac`);

--
-- 資料表索引 `macfilters`
--
ALTER TABLE `macfilters`
  ADD PRIMARY KEY (`macfilterid`);

--
-- 資料表索引 `monsterbook`
--
ALTER TABLE `monsterbook`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mountdata`
--
ALTER TABLE `mountdata`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mtsequipment`
--
ALTER TABLE `mtsequipment`
  ADD PRIMARY KEY (`inventoryequipmentid`),
  ADD KEY `inventoryitemid` (`inventoryitemid`);

--
-- 資料表索引 `mtsitems`
--
ALTER TABLE `mtsitems`
  ADD PRIMARY KEY (`inventoryitemid`),
  ADD KEY `inventoryitems_ibfk_1` (`characterid`),
  ADD KEY `characterid` (`characterid`),
  ADD KEY `inventorytype` (`inventorytype`),
  ADD KEY `accountid` (`accountid`),
  ADD KEY `characterid_2` (`characterid`,`inventorytype`),
  ADD KEY `packageid` (`packageId`) USING BTREE;

--
-- 資料表索引 `mtstransfer`
--
ALTER TABLE `mtstransfer`
  ADD PRIMARY KEY (`inventoryitemid`),
  ADD KEY `inventoryitems_ibfk_1` (`characterid`),
  ADD KEY `characterid` (`characterid`),
  ADD KEY `inventorytype` (`inventorytype`),
  ADD KEY `accountid` (`accountid`),
  ADD KEY `packageid` (`packageid`),
  ADD KEY `characterid_2` (`characterid`,`inventorytype`);

--
-- 資料表索引 `mtstransferequipment`
--
ALTER TABLE `mtstransferequipment`
  ADD PRIMARY KEY (`inventoryequipmentid`),
  ADD KEY `inventoryitemid` (`inventoryitemid`);

--
-- 資料表索引 `mts_cart`
--
ALTER TABLE `mts_cart`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mts_items`
--
ALTER TABLE `mts_items`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mulungdojo`
--
ALTER TABLE `mulungdojo`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `nxcode`
--
ALTER TABLE `nxcode`
  ADD PRIMARY KEY (`code`);

--
-- 資料表索引 `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`petid`);

--
-- 資料表索引 `playernpcs`
--
ALTER TABLE `playernpcs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scriptid` (`scriptid`),
  ADD KEY `playernpcs_ibfk_1` (`charid`);

--
-- 資料表索引 `playernpcs_equip`
--
ALTER TABLE `playernpcs_equip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playernpcs_equip_ibfk_1` (`charid`),
  ADD KEY `playernpcs_equip_ibfk_2` (`npcid`);

--
-- 資料表索引 `reactordrops`
--
ALTER TABLE `reactordrops`
  ADD PRIMARY KEY (`reactordropid`),
  ADD KEY `reactorid` (`reactorid`);

--
-- 資料表索引 `regrocklocations`
--
ALTER TABLE `regrocklocations`
  ADD PRIMARY KEY (`trockid`);

--
-- 資料表索引 `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `rings`
--
ALTER TABLE `rings`
  ADD PRIMARY KEY (`ringid`);

--
-- 資料表索引 `savedlocations`
--
ALTER TABLE `savedlocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `savedlocations_ibfk_1` (`characterid`);

--
-- 資料表索引 `shopitems`
--
ALTER TABLE `shopitems`
  ADD PRIMARY KEY (`shopitemid`);

--
-- 資料表索引 `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shopid`);

--
-- 資料表索引 `skillmacros`
--
ALTER TABLE `skillmacros`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_ibfk_1` (`characterid`);

--
-- 資料表索引 `skills_cooldowns`
--
ALTER TABLE `skills_cooldowns`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `speedruns`
--
ALTER TABLE `speedruns`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`storageid`),
  ADD KEY `accountid` (`accountid`);

--
-- 資料表索引 `trocklocations`
--
ALTER TABLE `trocklocations`
  ADD PRIMARY KEY (`trockid`);

--
-- 資料表索引 `wz_mobskilldata`
--
ALTER TABLE `wz_mobskilldata`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `wz_oxdata`
--
ALTER TABLE `wz_oxdata`
  ADD PRIMARY KEY (`questionset`,`questionid`);

--
-- 資料表索引 `zaksquads`
--
ALTER TABLE `zaksquads`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `alliances`
--
ALTER TABLE `alliances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `auth_server_channel`
--
ALTER TABLE `auth_server_channel`
  MODIFY `channelid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用資料表 AUTO_INCREMENT `auth_server_channel_ip`
--
ALTER TABLE `auth_server_channel_ip`
  MODIFY `channelconfigid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用資料表 AUTO_INCREMENT `auth_server_cs`
--
ALTER TABLE `auth_server_cs`
  MODIFY `CashShopServerId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `auth_server_login`
--
ALTER TABLE `auth_server_login`
  MODIFY `loginserverid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用資料表 AUTO_INCREMENT `auth_server_mts`
--
ALTER TABLE `auth_server_mts`
  MODIFY `MTSServerId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `bbs_replies`
--
ALTER TABLE `bbs_replies`
  MODIFY `replyid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `bbs_threads`
--
ALTER TABLE `bbs_threads`
  MODIFY `threadid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `bosslog`
--
ALTER TABLE `bosslog`
  MODIFY `bosslogid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `buddies`
--
ALTER TABLE `buddies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- 使用資料表 AUTO_INCREMENT `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `character_slots`
--
ALTER TABLE `character_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用資料表 AUTO_INCREMENT `cheatlog`
--
ALTER TABLE `cheatlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=829883;
--
-- 使用資料表 AUTO_INCREMENT `csequipment`
--
ALTER TABLE `csequipment`
  MODIFY `inventoryequipmentid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- 使用資料表 AUTO_INCREMENT `csitems`
--
ALTER TABLE `csitems`
  MODIFY `inventoryitemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=743;
--
-- 使用資料表 AUTO_INCREMENT `dueyequipment`
--
ALTER TABLE `dueyequipment`
  MODIFY `inventoryequipmentid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用資料表 AUTO_INCREMENT `dueyitems`
--
ALTER TABLE `dueyitems`
  MODIFY `inventoryitemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用資料表 AUTO_INCREMENT `dueypackages`
--
ALTER TABLE `dueypackages`
  MODIFY `PackageId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用資料表 AUTO_INCREMENT `eventstats`
--
ALTER TABLE `eventstats`
  MODIFY `eventstatid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `famelog`
--
ALTER TABLE `famelog`
  MODIFY `famelogid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `families`
--
ALTER TABLE `families`
  MODIFY `familyid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `game_poll_reply`
--
ALTER TABLE `game_poll_reply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `gifts`
--
ALTER TABLE `gifts`
  MODIFY `giftid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `gmlog`
--
ALTER TABLE `gmlog`
  MODIFY `gmlogid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `guilds`
--
ALTER TABLE `guilds`
  MODIFY `guildid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `hiredmerch`
--
ALTER TABLE `hiredmerch`
  MODIFY `PackageId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- 使用資料表 AUTO_INCREMENT `hiredmerchequipment`
--
ALTER TABLE `hiredmerchequipment`
  MODIFY `inventoryequipmentid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `hiredmerchitems`
--
ALTER TABLE `hiredmerchitems`
  MODIFY `inventoryitemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
  
--
-- 使用資料表 AUTO_INCREMENT `hiredfishing`
--
ALTER TABLE `hiredfishing`
  MODIFY `PackageId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- 使用資料表 AUTO_INCREMENT `hiredfishingequipment`
--
ALTER TABLE `hiredfishingequipment`
  MODIFY `inventoryequipmentid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `hiredfishingitems`
--
ALTER TABLE `hiredfishingitems`
  MODIFY `inventoryitemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- 使用資料表 AUTO_INCREMENT `htsquads`
--
ALTER TABLE `htsquads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `inventoryequipment`
--
ALTER TABLE `inventoryequipment`
  MODIFY `inventoryequipmentid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `inventoryitems`
--
ALTER TABLE `inventoryitems`
  MODIFY `inventoryitemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `inventorylog`
--
ALTER TABLE `inventorylog`
  MODIFY `inventorylogid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `inventoryslot`
--
ALTER TABLE `inventoryslot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `invitecodedata`
--
ALTER TABLE `invitecodedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ipbans`
--
ALTER TABLE `ipbans`
  MODIFY `ipbanid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `ipvotelog`
--
ALTER TABLE `ipvotelog`
  MODIFY `vid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `keymap`
--
ALTER TABLE `keymap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `macbans`
--
ALTER TABLE `macbans`
  MODIFY `macbanid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `macfilters`
--
ALTER TABLE `macfilters`
  MODIFY `macfilterid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `monsterbook`
--
ALTER TABLE `monsterbook`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `mountdata`
--
ALTER TABLE `mountdata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用資料表 AUTO_INCREMENT `mtsequipment`
--
ALTER TABLE `mtsequipment`
  MODIFY `inventoryequipmentid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `mtsitems`
--
ALTER TABLE `mtsitems`
  MODIFY `inventoryitemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `mtstransfer`
--
ALTER TABLE `mtstransfer`
  MODIFY `inventoryitemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `mtstransferequipment`
--
ALTER TABLE `mtstransferequipment`
  MODIFY `inventoryequipmentid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `mts_cart`
--
ALTER TABLE `mts_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `mulungdojo`
--
ALTER TABLE `mulungdojo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `pets`
--
ALTER TABLE `pets`
  MODIFY `petid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- 使用資料表 AUTO_INCREMENT `playernpcs`
--
ALTER TABLE `playernpcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用資料表 AUTO_INCREMENT `playernpcs_equip`
--
ALTER TABLE `playernpcs_equip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- 使用資料表 AUTO_INCREMENT `reactordrops`
--
ALTER TABLE `reactordrops`
  MODIFY `reactordropid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=883;
--
-- 使用資料表 AUTO_INCREMENT `regrocklocations`
--
ALTER TABLE `regrocklocations`
  MODIFY `trockid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61587;
--
-- 使用資料表 AUTO_INCREMENT `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `rings`
--
ALTER TABLE `rings`
  MODIFY `ringid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `savedlocations`
--
ALTER TABLE `savedlocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;
--
-- 使用資料表 AUTO_INCREMENT `shopitems`
--
ALTER TABLE `shopitems`
  MODIFY `shopitemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20025;
--
-- 使用資料表 AUTO_INCREMENT `shops`
--
ALTER TABLE `shops`
  MODIFY `shopid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000001;
--
-- 使用資料表 AUTO_INCREMENT `skillmacros`
--
ALTER TABLE `skillmacros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8132;
--
-- 使用資料表 AUTO_INCREMENT `skills_cooldowns`
--
ALTER TABLE `skills_cooldowns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `speedruns`
--
ALTER TABLE `speedruns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `storages`
--
ALTER TABLE `storages`
  MODIFY `storageid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用資料表 AUTO_INCREMENT `trocklocations`
--
ALTER TABLE `trocklocations`
  MODIFY `trockid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `wz_mobskilldata`
--
ALTER TABLE `wz_mobskilldata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4762;
--
-- 使用資料表 AUTO_INCREMENT `zaksquads`
--
ALTER TABLE `zaksquads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `buddies`
--
ALTER TABLE `buddies`
  ADD CONSTRAINT `buddies_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `csequipment`
--
ALTER TABLE `csequipment`
  ADD CONSTRAINT `csequiptment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `csitems` (`inventoryitemid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `dueyequipment`
--
ALTER TABLE `dueyequipment`
  ADD CONSTRAINT `dueyequipment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `dueyitems` (`inventoryitemid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `famelog`
--
ALTER TABLE `famelog`
  ADD CONSTRAINT `famelog_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `hiredmerchequipment`
--
ALTER TABLE `hiredmerchequipment`
  ADD CONSTRAINT `hiredmerchantequipment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `hiredmerchitems` (`inventoryitemid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `hiredfishingequipment`
--
ALTER TABLE `hiredfishingequipment`
  ADD CONSTRAINT `hiredfishingequipment` FOREIGN KEY (`inventoryitemid`) REFERENCES `hiredfishingitems` (`inventoryitemid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `inventoryequipment`
--
ALTER TABLE `inventoryequipment`
  ADD CONSTRAINT `inventoryequipment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `inventoryitems` (`inventoryitemid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `inventorylog`
--
ALTER TABLE `inventorylog`
  ADD CONSTRAINT `inventorylog_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `inventoryitems` (`inventoryitemid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `keymap`
--
ALTER TABLE `keymap`
  ADD CONSTRAINT `keymap_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `mtsequipment`
--
ALTER TABLE `mtsequipment`
  ADD CONSTRAINT `mtsequipment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `mtsitems` (`inventoryitemid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `mtstransferequipment`
--
ALTER TABLE `mtstransferequipment`
  ADD CONSTRAINT `mtstransferequipment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `mtstransfer` (`inventoryitemid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `playernpcs`
--
ALTER TABLE `playernpcs`
  ADD CONSTRAINT `playernpcs_ibfk_1` FOREIGN KEY (`charid`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `playernpcs_equip`
--
ALTER TABLE `playernpcs_equip`
  ADD CONSTRAINT `playernpcs_equip_ibfk_1` FOREIGN KEY (`charid`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `playernpcs_equip_ibfk_2` FOREIGN KEY (`npcid`) REFERENCES `playernpcs` (`scriptid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `savedlocations`
--
ALTER TABLE `savedlocations`
  ADD CONSTRAINT `savedlocations_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `storages`
--
ALTER TABLE `storages`
  ADD CONSTRAINT `storages_ibfk_1` FOREIGN KEY (`accountid`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
