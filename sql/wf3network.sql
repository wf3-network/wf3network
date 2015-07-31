-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 31 Juillet 2015 à 15:30
-- Version du serveur: 5.5.44-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `wf3network`
--

-- --------------------------------------------------------

--
-- Structure de la table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `date_promo` datetime DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `exp_pro` text NOT NULL,
  `formation` text NOT NULL,
  `publish` tinyint(1) DEFAULT '0',
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=7 ;

--
-- Contenu de la table `profile`
--

INSERT INTO `profile` (`id`, `photo`, `lastname`, `firstname`, `date_promo`, `age`, `mail`, `telephone`, `site`, `exp_pro`, `formation`, `publish`, `register_date`) VALUES
(1, NULL, 'TestLastName', 'TestFirstName', '2015-08-01 00:00:00', 44, 'email@test.com', '0102030405', 'www.toto.fr', 'test expérience pro', 'test formation', 1, '2015-07-30 08:42:48'),
(2, NULL, 'TestLastName', 'TestFirstName', '2015-08-01 00:00:00', 44, 'email@test.com', '0102030405', 'www.toto.fr', 'test expérience pro', 'test formation', 1, '2015-07-30 08:42:56'),
(3, NULL, 'Fruchard', 'Thibault ', '2015-08-07 00:00:00', 24, 'mail@mail.com', '0606060606', 'site.com', 'I''m currently involved into an intensive 3-month program in web development [www.wf3.fr] in order to learn how to code. \r\n\r\n\r\n\r\n// Web development skills :\r\n\r\n> Languages : PHP (Symphony 2), MySQL, HTML5, CSS3, JavaScript/jQuery/Ajax\r\n> CMS : Wordpress \r\n> Environments : Mac OS, Windows\r\n> Technical environments : Saas, Git, GitHub, Sublime text\r\n> Webdesign : Adobe Photoshop (notions), Basalmiq  ', 'I''m currently involved into an intensive 3-month program in web development [www.wf3.fr] in order to learn how to code. \r\n\r\n\r\n\r\n// Web development skills :\r\n\r\n> Languages : PHP (Symphony 2), MySQL, HTML5, CSS3, JavaScript/jQuery/Ajax\r\n> CMS : Wordpress \r\n> Environments : Mac OS, Windows\r\n> Technical environments : Saas, Git, GitHub, Sublime text\r\n> Webdesign : Adobe Photoshop (notions), Basalmiq  ', 0, '2015-07-30 12:58:23'),
(5, NULL, 'Lastname', 'Firstname', '2015-07-08 00:00:00', 36, 'mail@mailmail.com', '0609090909', 'supersite.com', 'I''m currently involved into an intensive 3-month program in web development [www.wf3.fr] in order to learn how to code. \r\n\r\n\r\n\r\n// Web development skills :\r\n\r\n> Languages : PHP (Symphony 2), MySQL, HTML5, CSS3, JavaScript/jQuery/Ajax\r\n> CMS : Wordpress \r\n> Environments : Mac OS, Windows\r\n> Technical environments : Saas, Git, GitHub, Sublime text\r\n> Webdesign : Adobe Photoshop (notions), Basalmiq  ', 'Project Manager at BETC Digital for Peugeot and Disneyland Paris brands. \r\n\r\n// Lead digital communication campaign from the strategic brief to the delivery.\r\n\r\n> build-up plannings, expenditures and budget forecasts\r\n> Manage digital creatives to answer the needs of the client\r\n> Manage release and functional tests of interfaces\r\n> Technological and competitive intellignence\r\n> Manage daily client relationship\r\n\r\n// Projects : \r\n\r\n> Manage web advertising campaigns for Disneyland Paris\r\n> In charge of the management of two team members\r\n> Create websites, e-mails and advertising banners for Peugeot\r\n> Participation in competitions and elaboration of business proposals', NULL, '2015-07-30 13:01:53'),
(6, NULL, 'Raymond', 'Martin', '2015-06-15 00:00:00', 46, 'mailmailmail@mail.com', '0696968696', 'sitesitesite.com', 'Project Manager at BETC Digital for Peugeot and Disneyland Paris brands. \r\n\r\n// Lead digital communication campaign from the strategic brief to the delivery.\r\n\r\n> build-up plannings, expenditures and budget forecasts\r\n> Manage digital creatives to answer the needs of the client\r\n> Manage release and functional tests of interfaces\r\n> Technological and competitive intellignence\r\n> Manage daily client relationship\r\n\r\n// Projects : \r\n\r\n> Manage web advertising campaigns for Disneyland Paris\r\n> In charge of the management of two team members\r\n> Create websites, e-mails and advertising banners for Peugeot\r\n> Participation in competitions and elaboration of business proposals\r\n\r\nProject Manager at BETC Digital for Peugeot and Disneyland Paris brands. \r\n\r\n// Lead digital communication campaign from the strategic brief to the delivery.\r\n\r\n> build-up plannings, expenditures and budget forecasts\r\n> Manage digital creatives to answer the needs of the client\r\n> Manage release and functional tests of interfaces\r\n> Technological and competitive intellignence\r\n> Manage daily client relationship\r\n\r\n// Projects : \r\n\r\n> Manage web advertising campaigns for Disneyland Paris\r\n> In charge of the management of two team members\r\n> Create websites, e-mails and advertising banners for Peugeot\r\n> Participation in competitions and elaboration of business proposals', 'Project Manager at BETC Digital for Peugeot and Disneyland Paris brands. \r\n\r\n// Lead digital communication campaign from the strategic brief to the delivery.\r\n\r\n> build-up plannings, expenditures and budget forecasts\r\n> Manage digital creatives to answer the needs of the client\r\n> Manage release and functional tests of interfaces\r\n> Technological and competitive intellignence\r\n> Manage daily client relationship\r\n\r\n// Projects : \r\n\r\n> Manage web advertising campaigns for Disneyland Paris\r\n> In charge of the management of two team members\r\n> Create websites, e-mails and advertising banners for Peugeot\r\n> Participation in competitions and elaboration of business proposals\r\n\r\nProject Manager at BETC Digital for Peugeot and Disneyland Paris brands. \r\n\r\n// Lead digital communication campaign from the strategic brief to the delivery.\r\n\r\n> build-up plannings, expenditures and budget forecasts\r\n> Manage digital creatives to answer the needs of the client\r\n> Manage release and functional tests of interfaces\r\n> Technological and competitive intellignence\r\n> Manage daily client relationship\r\n\r\n// Projects : \r\n\r\n> Manage web advertising campaigns for Disneyland Paris\r\n> In charge of the management of two team members\r\n> Create websites, e-mails and advertising banners for Peugeot\r\n> Participation in competitions and elaboration of business proposals\r\n\r\nProject Manager at BETC Digital for Peugeot and Disneyland Paris brands. \r\n\r\n// Lead digital communication campaign from the strategic brief to the delivery.\r\n\r\n> build-up plannings, expenditures and budget forecasts\r\n> Manage digital creatives to answer the needs of the client\r\n> Manage release and functional tests of interfaces\r\n> Technological and competitive intellignence\r\n> Manage daily client relationship\r\n\r\n// Projects : \r\n\r\n> Manage web advertising campaigns for Disneyland Paris\r\n> In charge of the management of two team members\r\n> Create websites, e-mails and advertising banners for Peugeot\r\n> Participation in competitions and elaboration of business proposals\r\n\r\nProject Manager at BETC Digital for Peugeot and Disneyland Paris brands. \r\n\r\n// Lead digital communication campaign from the strategic brief to the delivery.\r\n\r\n> build-up plannings, expenditures and budget forecasts\r\n> Manage digital creatives to answer the needs of the client\r\n> Manage release and functional tests of interfaces\r\n> Technological and competitive intellignence\r\n> Manage daily client relationship\r\n\r\n// Projects : \r\n\r\n> Manage web advertising campaigns for Disneyland Paris\r\n> In charge of the management of two team members\r\n> Create websites, e-mails and advertising banners for Peugeot\r\n> Participation in competitions and elaboration of business proposals', NULL, '2015-07-30 13:41:46');

-- --------------------------------------------------------

--
-- Structure de la table `profile_expro`
--

CREATE TABLE IF NOT EXISTS `profile_expro` (
  `id_job` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(55) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `date_job` date NOT NULL,
  `job_city` varchar(55) NOT NULL,
  `job_country` varchar(55) NOT NULL,
  `job_description` text NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id_job`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `profile_expro`
--

INSERT INTO `profile_expro` (`id_job`, `job_name`, `company_name`, `date_job`, `job_city`, `job_country`, `job_description`, `profile_id`) VALUES
(1, 'Whatwhat', 'Aucune', '2015-07-09', 'Paris', 'France', 'Ne rien faire', 7),
(2, 'Babar', 'Babardddddd', '2015-07-08', 'Babardd', 'BabarBabar', 'BabarBabarBabarBabar', 6),
(3, 'Salut la jeunesse', 'Salut la jeunesse', '2015-07-01', 'Salut la jeunesse', 'Salut la jeunesse', 'Salut la jeunesse', 3);

-- --------------------------------------------------------

--
-- Structure de la table `profile_formation`
--

CREATE TABLE IF NOT EXISTS `profile_formation` (
  `id_formation` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(55) NOT NULL,
  `city` varchar(55) NOT NULL,
  `country` varchar(55) NOT NULL,
  `name_formation` varchar(55) NOT NULL,
  `date_formation` date NOT NULL,
  `description` text NOT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id_formation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `profile_formation`
--

INSERT INTO `profile_formation` (`id_formation`, `school_name`, `city`, `country`, `name_formation`, `date_formation`, `description`, `profile_id`) VALUES
(1, 'CNAM', 'Paris', 'France', 'Developpement Web', '2015-01-30', 'blaaaaaaaaaaaaaaaaaaa\r\nblaaaaaaaaaaaaaaaaaaaaa\r\nblaaaaaaaaaaaaaaaaaaaa\r\nblaaaaaaaaaaaaaaaaaaa', 7),
(2, 'WebForce3', 'Paris', 'France', 'Développeur Web', '2015-04-22', 'Blob', 7),
(3, 'b', 'b', 'b', 'b', '2015-07-08', 'b', 3);

-- --------------------------------------------------------

--
-- Structure de la table `profile_skill`
--

CREATE TABLE IF NOT EXISTS `profile_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `skill_level` decimal(11,2) DEFAULT NULL,
  `skill_wf3` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_profil_skill_profil1_idx` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `profile_tag`
--

CREATE TABLE IF NOT EXISTS `profile_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_profil_tag_profil_idx` (`profile_id`),
  KEY `fk_profil_tag_tags1_idx` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `description` mediumtext,
  `url` varchar(100) DEFAULT NULL,
  `profile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_projet_profil1_idx` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `project_picture`
--

CREATE TABLE IF NOT EXISTS `project_picture` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `src` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_projet_picture_projet1_idx` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` char(60) DEFAULT NULL,
  `profile_id` int(11) DEFAULT '0',
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `cgu` tinyint(1) NOT NULL,
  `register_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `fb_id`, `firstname`, `lastname`, `type`, `login`, `email`, `password`, `profile_id`, `newsletter`, `cgu`, `register_date`) VALUES
(1, 0, 'Clarisse', 'Otto', NULL, NULL, 'test@test.fr', '$2y$10$P9PlW/CKrzEe5vKFjGmQ4.auQDPdCCkFx4jrlL98eFfYyJndBeuku', 0, 1, 0, NULL),
(2, 0, 'Candy', 'Chang', 2, 'cand', 'candy@chang.com', 'azerty', 0, 0, 0, NULL),
(3, 0, 'Riri', 'Bad', 2, 'Riri', 'bad@riri.com', 'badbad', 0, 0, 0, NULL);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `profile_skill`
--
ALTER TABLE `profile_skill`
  ADD CONSTRAINT `fk_profil_skill_profil1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `profile_tag`
--
ALTER TABLE `profile_tag`
  ADD CONSTRAINT `fk_profil_tag_profil` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_profil_tag_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `fk_projet_profil1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `project_picture`
--
ALTER TABLE `project_picture`
  ADD CONSTRAINT `fk_projet_picture_projet1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
