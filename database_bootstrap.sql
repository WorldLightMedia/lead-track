-- Create syntax for TABLE 'lead_details'
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
  `entry_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=4107 DEFAULT CHARSET=latin1;

-- Create syntax for TABLE 'lead_track_users'
CREATE TABLE `lead_track_users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `access` varchar(254) NOT NULL,
  `name` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `phone_number` varchar(254) NOT NULL,
  `zip_codes` varchar(254) NOT NULL,
  `authenticated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4097 DEFAULT CHARSET=latin1;

-- Create syntax for TABLE 'zip_codes'
CREATE TABLE `zip_codes` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `zip_code` varchar(254) NOT NULL,
  `City` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4096 DEFAULT CHARSET=latin1;