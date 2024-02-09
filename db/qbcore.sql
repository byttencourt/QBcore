/*
 Navicat Premium Data Transfer

 Source Server         : New Wave Store
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : qbcore

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 26/10/2023 11:46:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apartments
-- ----------------------------
DROP TABLE IF EXISTS `apartments`;
CREATE TABLE `apartments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `citizenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE,
  INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for bank_accounts
-- ----------------------------
DROP TABLE IF EXISTS `bank_accounts`;
CREATE TABLE `bank_accounts`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `business` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `businessid` int NULL DEFAULT NULL,
  `gangid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` bigint NOT NULL DEFAULT 0,
  `account_type` enum('Current','Savings','business','Gang') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'Current',
  PRIMARY KEY (`record_id`) USING BTREE,
  UNIQUE INDEX `citizenid`(`citizenid` ASC) USING BTREE,
  INDEX `business`(`business` ASC) USING BTREE,
  INDEX `businessid`(`businessid` ASC) USING BTREE,
  INDEX `gangid`(`gangid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for bank_cards
-- ----------------------------
DROP TABLE IF EXISTS `bank_cards`;
CREATE TABLE `bank_cards`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cardNumber` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cardPin` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cardActive` tinyint NULL DEFAULT 1,
  `cardLocked` tinyint NULL DEFAULT 0,
  `cardType` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`citizenid`) USING BTREE,
  INDEX `record_id`(`record_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for bank_statements
-- ----------------------------
DROP TABLE IF EXISTS `bank_statements`;
CREATE TABLE `bank_statements`  (
  `record_id` bigint NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `account` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `business` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `businessid` int NULL DEFAULT NULL,
  `gangid` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deposited` int NULL DEFAULT NULL,
  `withdraw` int NULL DEFAULT NULL,
  `balance` int NULL DEFAULT NULL,
  `date` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `business`(`business` ASC) USING BTREE,
  INDEX `businessid`(`businessid` ASC) USING BTREE,
  INDEX `gangid`(`gangid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for bans
-- ----------------------------
DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `license` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discord` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `expire` int NULL DEFAULT NULL,
  `bannedby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `license`(`license` ASC) USING BTREE,
  INDEX `discord`(`discord` ASC) USING BTREE,
  INDEX `ip`(`ip` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for crypto
-- ----------------------------
DROP TABLE IF EXISTS `crypto`;
CREATE TABLE `crypto`  (
  `crypto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'qbit',
  `worth` int NOT NULL DEFAULT 0,
  `history` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`crypto`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for crypto_transactions
-- ----------------------------
DROP TABLE IF EXISTS `crypto_transactions`;
CREATE TABLE `crypto_transactions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for dealers
-- ----------------------------
DROP TABLE IF EXISTS `dealers`;
CREATE TABLE `dealers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `createdby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for gloveboxitems
-- ----------------------------
DROP TABLE IF EXISTS `gloveboxitems`;
CREATE TABLE `gloveboxitems`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`plate`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for house_plants
-- ----------------------------
DROP TABLE IF EXISTS `house_plants`;
CREATE TABLE `house_plants`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `building` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'stage-a',
  `sort` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `food` int NULL DEFAULT 100,
  `health` int NULL DEFAULT 100,
  `progress` int NULL DEFAULT 0,
  `coords` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plantid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `building`(`building` ASC) USING BTREE,
  INDEX `plantid`(`plantid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for houselocations
-- ----------------------------
DROP TABLE IF EXISTS `houselocations`;
CREATE TABLE `houselocations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coords` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `owned` tinyint(1) NULL DEFAULT NULL,
  `price` int NULL DEFAULT NULL,
  `tier` tinyint NULL DEFAULT NULL,
  `garage` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for lapraces
-- ----------------------------
DROP TABLE IF EXISTS `lapraces`;
CREATE TABLE `lapraces`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `checkpoints` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `records` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `distance` int NULL DEFAULT NULL,
  `raceid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `raceid`(`raceid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for management_funds
-- ----------------------------
DROP TABLE IF EXISTS `management_funds`;
CREATE TABLE `management_funds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` int NOT NULL,
  `type` enum('boss','gang') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'boss',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `job_name`(`job_name` ASC) USING BTREE,
  INDEX `type`(`type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for occasion_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `occasion_vehicles`;
CREATE TABLE `occasion_vehicles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mods` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `occasionid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `occasionId`(`occasionid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `license`(`license` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for phone_gallery
-- ----------------------------
DROP TABLE IF EXISTS `phone_gallery`;
CREATE TABLE `phone_gallery`  (
  `citizenid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for phone_invoices
-- ----------------------------
DROP TABLE IF EXISTS `phone_invoices`;
CREATE TABLE `phone_invoices`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` int NOT NULL DEFAULT 0,
  `society` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sender` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sendercitizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for phone_messages
-- ----------------------------
DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE `phone_messages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `messages` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE,
  INDEX `number`(`number` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for phone_tweets
-- ----------------------------
DROP TABLE IF EXISTS `phone_tweets`;
CREATE TABLE `phone_tweets`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `firstName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date` datetime NULL DEFAULT current_timestamp,
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `picture` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT './img/default.png',
  `tweetId` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for player_contacts
-- ----------------------------
DROP TABLE IF EXISTS `player_contacts`;
CREATE TABLE `player_contacts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iban` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for player_houses
-- ----------------------------
DROP TABLE IF EXISTS `player_houses`;
CREATE TABLE `player_houses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `house` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `identifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keyholders` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `decorations` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `stash` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `outfit` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `logout` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `house`(`house` ASC) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE,
  INDEX `identifier`(`identifier` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for player_mails
-- ----------------------------
DROP TABLE IF EXISTS `player_mails`;
CREATE TABLE `player_mails`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sender` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subject` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `read` tinyint NULL DEFAULT 0,
  `mailid` int NULL DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp,
  `button` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for player_outfits
-- ----------------------------
DROP TABLE IF EXISTS `player_outfits`;
CREATE TABLE `player_outfits`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `outfitname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `skin` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `outfitId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE,
  INDEX `outfitId`(`outfitId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for player_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `player_vehicles`;
CREATE TABLE `player_vehicles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `license` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vehicle` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hash` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `plate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fakeplate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `garage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fuel` int NULL DEFAULT 100,
  `engine` float NULL DEFAULT 1000,
  `body` float NULL DEFAULT 1000,
  `state` int NULL DEFAULT 1,
  `depotprice` int NOT NULL DEFAULT 0,
  `drivingdistance` int NULL DEFAULT NULL,
  `status` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `balance` int NOT NULL DEFAULT 0,
  `paymentamount` int NOT NULL DEFAULT 0,
  `paymentsleft` int NOT NULL DEFAULT 0,
  `financetime` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `plate`(`plate` ASC) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE,
  INDEX `license`(`license` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for player_warns
-- ----------------------------
DROP TABLE IF EXISTS `player_warns`;
CREATE TABLE `player_warns`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `targetIdentifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `warnId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cid` int NULL DEFAULT NULL,
  `license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charinfo` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `job` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `position` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `metadata` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inventory` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`citizenid`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE,
  INDEX `last_updated`(`last_updated` ASC) USING BTREE,
  INDEX `license`(`license` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for playerskins
-- ----------------------------
DROP TABLE IF EXISTS `playerskins`;
CREATE TABLE `playerskins`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `skin` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `citizenid`(`citizenid` ASC) USING BTREE,
  INDEX `active`(`active` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for stashitems
-- ----------------------------
DROP TABLE IF EXISTS `stashitems`;
CREATE TABLE `stashitems`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`stash`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for trunkitems
-- ----------------------------
DROP TABLE IF EXISTS `trunkitems`;
CREATE TABLE `trunkitems`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`plate`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
