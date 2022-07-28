CREATE DATABASE  IF NOT EXISTS `groupomania`;
USE `groupomania`;

DROP TABLE IF EXISTS `post`;
DROP TABLE IF EXISTS `uti_id`;

CREATE TABLE `uti` (
  `uti_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `isAdmin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;


CREATE TABLE `post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
   `texte` varchar(100) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `topic_id` int NOT NULL,
  `id_1` int NOT NULL,
  PRIMARY KEY (`id`),
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb3;
