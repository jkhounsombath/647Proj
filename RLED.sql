-- phpMyAdmin SQL Dump
-- version 3.2.2
-- http://www.phpmyadmin.net
--
-- Host: cycle2.eecs.ku.edu
-- Generation Time: Sep 25, 2009 at 11:01 AM
-- Server version: 5.1.37
-- PHP Version: 5.2.9



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
--
--

-- --------------------------------------------------------

--
-- Table structure for table 'CRUISE'
--

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


DROP TABLE IF EXISTS USER;
CREATE TABLE IF NOT EXISTS USER (
  ID int(6) NOT NULL,
  UPASSWORD text NOT NULL,
  UNAME text NOT NULL,
  EMAIL text NOT NULL,
  PRIMARY KEY (ID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO USER (ID, UPASSWORD, UNAME, EMAIL)
 VALUES (123456, "password119", "jmaster49", "coolemail@mail.com");
INSERT INTO USER (ID, UPASSWORD, UNAME, EMAIL)
 VALUES (654321, "chickenman119", "thelegend27", "cooleremail@mail.com");
INSERT INTO USER (ID, UPASSWORD, UNAME, EMAIL)
 VALUES (765432, "w0wzer2", "tothemoooon11", "coolestemail@mail.com");


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DROP TABLE IF EXISTS LED_CONFIG;
CREATE TABLE IF NOT EXISTS LED_CONFIG (
  ID int(6) NOT NULL,
  CONFIG_NAME text NOT NULL,
  HEXVAL varchar(6) NOT NULL,
  BRIGHTNESS int(200) NOT NULL,
  HUE int(200) NOT NULL,
  SATURATION int(200) NOT NULL,
  RATING float NOT NULL,
  RATINGS int NOT NULL,
  DOWNLOADS int DEFAULT NULL,
  PRIMARY KEY (ID),
  KEY HEXVAL (HEXVAL)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO LED_CONFIG(ID, CONFIG_NAME, HEXVAL, BRIGHTNESS, HUE, SATURATION, RATING, RATINGS, DOWNLOADS)
VALUES( 123456, "Strobe 50 BPM", "CCFFCC", 50, 100, 100, 4.5, 5, 49124);

INSERT INTO LED_CONFIG(ID, CONFIG_NAME, HEXVAL, BRIGHTNESS, HUE, SATURATION, RATING, RATINGS, DOWNLOADS)
VALUES( 654321, "Salmon", "E5CCFF", 100, 100, 100, 5, 5, 11091);

INSERT INTO LED_CONFIG(ID, CONFIG_NAME, HEXVAL, BRIGHTNESS, HUE, SATURATION, RATING, RATINGS, DOWNLOADS)
VALUES( 765432, "Shrek Color", "FF6666", 100, 100, 100, 4.8, 5, 288091);

DROP TABLE IF EXISTS RGB;
CREATE TABLE IF NOT EXISTS RGB (
    HEXVAL VARCHAR(6) NOT NULL,
    RED INT(255) NOT NULL,
    GREEN INT(255) NOT NULL,
    BLUE INT(255) NOT NULL,
    PRIMARY KEY (HEXVAL)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO RGB(HEXVAL, RED, GREEN, BLUE)
VALUES( 'CCFFCC', 204, 255, 204);

INSERT INTO RGB(HEXVAL, RED, GREEN, BLUE)
VALUES( 'E5CCFF', 229, 204, 255);

INSERT INTO RGB(HEXVAL, RED, GREEN, BLUE)
VALUE( 'FF6666', 255, 102, 102);


DROP TABLE IF EXISTS `MOD`;
CREATE TABLE IF NOT EXISTS `MOD` (
    ID INT(6) NOT NULL,
    JOIN_DATE datetime NOT NULL,
    PRIMARY KEY (ID)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `MOD`(ID, JOIN_DATE)
VALUES( 123456,  '2020-09-11 00:00:00');
INSERT INTO `MOD`(ID, JOIN_DATE)
VALUES( 654321, '2021-07-08 00:00:00');
INSERT INTO `MOD`(ID, JOIN_DATE)
VALUES( 765432, '2002-07-12 00:00:00');