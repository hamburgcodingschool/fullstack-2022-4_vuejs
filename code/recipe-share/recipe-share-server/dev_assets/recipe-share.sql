# ************************************************************
# Sequel Ace SQL dump
# Version 20046
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.0.31)
# Database: recipe-share
# Generation Time: 2023-03-03 19:45:54 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table difficulty_levels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `difficulty_levels`;

CREATE TABLE `difficulty_levels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `difficulty_level` varchar(255) NOT NULL,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `difficulty_levels` WRITE;
/*!40000 ALTER TABLE `difficulty_levels` DISABLE KEYS */;

INSERT INTO `difficulty_levels` (`id`, `difficulty_level`, `order`)
VALUES
	(1,'easy',2),
	(2,'medium',3),
	(3,'hard',4),
	(4,'super easy',1);

/*!40000 ALTER TABLE `difficulty_levels` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table recipes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recipes`;

CREATE TABLE `recipes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `difficulty_levels_id` int NOT NULL,
  `time` varchar(255) NOT NULL,
  `ingredients` varchar(255) NOT NULL,
  `recipe` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_recipes_difficulty_levels_idx` (`difficulty_levels_id`),
  CONSTRAINT `fk_recipes_difficulty_levels` FOREIGN KEY (`difficulty_levels_id`) REFERENCES `difficulty_levels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;

INSERT INTO `recipes` (`id`, `name`, `image`, `difficulty_levels_id`, `time`, `ingredients`, `recipe`)
VALUES
	(1,'chili con carne','placeholder',2,'10:00','stuff you have around the kitchen','blah blah blah blah blah blahblah blah blah blah blah blah blah blah blah blah blah'),
	(2,'chili sin carne','someUrl',1,'5:00','not meat','yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada yada'),
	(3,'lalalala','lalala',1,'la','la','la'),
	(4,'lemon pie','image lemons',1,'5:00','lemons','cut the lemons, give up, buy a lemon pie instead...'),
	(5,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(6,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(7,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(8,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(9,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(10,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(11,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(12,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(13,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(14,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(15,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(16,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(17,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...'),
	(18,'apple pie','some picture URL for apple pie',1,'30:00','apples','mix the apples until it looks like pie...');

/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
