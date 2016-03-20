# ************************************************************
# Sequel Pro SQL dump
# Version 4500
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.22)
# Database: lead_track
# Generation Time: 2016-02-19 00:41:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table lead_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lead_details`;

CREATE TABLE `lead_details` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `agent` int(8) DEFAULT NULL,
  `first_name` varchar(254) NOT NULL,
  `last_name` varchar(254) NOT NULL,
  `zip` varchar(254) NOT NULL,
  `street` varchar(254) DEFAULT NULL,
  `city` varchar(254) NOT NULL,
  `state` varchar(254) NOT NULL,
  `country` varchar(254) NOT NULL,
  `phone_number` varchar(254) NOT NULL,
  `email` varchar(254) NOT NULL,
  `members` int(8) NOT NULL,
  `status` varchar(254) NOT NULL DEFAULT 'active',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `street_number` varchar(254) NOT NULL DEFAULT '0',
  `street_name` varchar(254) NOT NULL,
  `apartment_number` varchar(254) NOT NULL,
  `home_phone` varchar(254) NOT NULL,
  `referer_name` varchar(254) NOT NULL,
  `referer_phone` varchar(254) NOT NULL,
  `referer_email` varchar(254) NOT NULL,
  `referer_relation` varchar(254) NOT NULL,
  `gas` varchar(254) NOT NULL,
  `electric` varchar(254) NOT NULL,
  `own` varchar(254) DEFAULT NULL,
  `income` varchar(254) NOT NULL,
  `public_assistance` varchar(254) NOT NULL,
  `lead_id` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agent_id` (`agent`),
  CONSTRAINT `agent_id` FOREIGN KEY (`agent`) REFERENCES `lead_track_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `lead_details` WRITE;
/*!40000 ALTER TABLE `lead_details` DISABLE KEYS */;

INSERT INTO `lead_details` (`id`, `agent`, `first_name`, `last_name`, `zip`, `street`, `city`, `state`, `country`, `phone_number`, `email`, `members`, `status`, `entry_date`, `street_number`, `street_name`, `apartment_number`, `home_phone`, `referer_name`, `referer_phone`, `referer_email`, `referer_relation`, `gas`, `electric`, `own`, `income`, `public_assistance`, `lead_id`)
VALUES
	(4096,1,'Leandroi','Mazoni','12345',NULL,'Bayfield','CO','Unites States','5123921039','lemazoni@gmail.com',1,'active','2016-02-17 23:33:40','333',' Mushroom Dr','23','2918312049','','','','','socal_gas','pg&e','OWN','$31,860.00','',1),
	(4106,4096,'Luis','Mazoni','12345',NULL,'Bayfield','CO','Unites States','2398130918','m@zoni.net.br',1,'active','2016-02-18 00:12:34','333',' Mushroom Dr','1','0219831029','','','','','socal_gas','pg&e','OWN','$31,860.00','',0),
	(4112,4099,'Denys','Hupel','54321',NULL,'Bakersfield','CA','Unites States','1230129310','denys@lala.com',1,'active','2016-02-18 22:38:22','2501',' Cottonwood Rd','32','3894732948','','','','','socal_gas','pg&e','OWN','$31,860.00','',0);

/*!40000 ALTER TABLE `lead_details` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lead_track_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lead_track_users`;

CREATE TABLE `lead_track_users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `access` varchar(254) NOT NULL,
  `name` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `phone_number` varchar(254) NOT NULL,
  `authenticated` tinyint(1) NOT NULL DEFAULT '0',
  `cities` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `lead_track_users` WRITE;
/*!40000 ALTER TABLE `lead_track_users` DISABLE KEYS */;

INSERT INTO `lead_track_users` (`id`, `email`, `access`, `name`, `password`, `phone_number`, `authenticated`, `cities`)
VALUES
	(1,'lipe.mazoni@gmail.com','','Luis Mazoni','$2b$12$dHH9Mc.pJr1d2iu7FWcvMOh78er.axssPCdL.5JUJaSrvm3I8dDRS','',1,NULL),
	(4096,'fenrandatoazza@gmail.com','agent','Fernanda','$2b$12$SPhYMSVmNnjtTS1gEtjA4OO1YXRNL85.0G8Qqzv1CQntCaugt.3W6','+555194286781',0,NULL),
	(4099,'denys@lala.com','agent','Denys','$2b$12$NacSvekdEE5evGSeYHHRDOlXbXqDZL5wQUyGmludjv3.Ayc4KJEce','2312312231',0,'Porto Alegre, New York, San Fran');

/*!40000 ALTER TABLE `lead_track_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table zip_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zip_codes`;

CREATE TABLE `zip_codes` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `zip_code` varchar(254) NOT NULL,
  `City` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `zip_codes` WRITE;
/*!40000 ALTER TABLE `zip_codes` DISABLE KEYS */;

INSERT INTO `zip_codes` (`id`, `zip_code`, `City`)
VALUES
	(1,'12345','San Fran'),
	(4096,'54321','Porto Alegre');

/*!40000 ALTER TABLE `zip_codes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
