SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `repository`;
CREATE TABLE `repository` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `repository` (`id`, `name`) VALUES
(1,	'serializer'),
(2,	'composer'),
(3,	'guzzle'),
(4,	'phpunit'),
(5,	'imagine'),
(6,	'symfony-framework'),
(7,	'doctrine'),
(8,	'silex'),
(9,	'monolog'),
(10,	'snc_redis');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user` (`id`, `username`) VALUES
(1,	'dnshio'),
(2,	'jms'),
(3,	'Seldaek'),
(4,	'lonewolf'),
(5,	'adder'),
(6,	'kura'),
(7,	'jraush'),
(8,	'xkcd'),
(9,	'aws'),
(10,	'yuewhat');

DROP TABLE IF EXISTS `user_repository`;
CREATE TABLE `user_repository` (
  `user_id` int(5) NOT NULL,
  `repository_id` int(5) NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `repository_id` (`repository_id`),
  CONSTRAINT `user_repository_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_repository_ibfk_2` FOREIGN KEY (`repository_id`) REFERENCES `repository` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user_repository` (`user_id`, `repository_id`) VALUES
(1,	1),
(1,	2),
(2,	2),
(2,	3),
(3,	3),
(4,	4),
(2,	5),
(3,	5),
(5,	5),
(1,	6),
(7,	6),
(6,	1),
(6,	7),
(8,	7),
(6,	8),
(9,	8),
(7,	9),
(9,	9),
(8,	10),
(10,	10),
(2,	7),
(1,	10),
(5,	1),
(2,	7),
(8,	7);