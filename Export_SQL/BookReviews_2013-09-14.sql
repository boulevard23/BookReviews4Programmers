# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.27)
# Database: BookReviews
# Generation Time: 2013-09-15 00:23:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table BOOK
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BOOK`;

CREATE TABLE `BOOK` (
  `BookId` int(11) NOT NULL AUTO_INCREMENT,
  `BookName` varchar(120) DEFAULT NULL,
  `Author` varchar(30) DEFAULT NULL,
  `Pages` int(6) DEFAULT NULL,
  `Publisher` varchar(30) DEFAULT NULL,
  `Publish_Date` date DEFAULT NULL,
  `BookLanguage` varchar(30) DEFAULT NULL,
  `ISBN_10` varchar(10) DEFAULT NULL,
  `ISBN_13` varchar(14) DEFAULT NULL,
  `Created_On` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `BOOK` WRITE;
/*!40000 ALTER TABLE `BOOK` DISABLE KEYS */;

INSERT INTO `BOOK` (`BookId`, `BookName`, `Author`, `Pages`, `Publisher`, `Publish_Date`, `BookLanguage`, `ISBN_10`, `ISBN_13`, `Created_On`)
VALUES
	(1,'Cracking the Coding Interview','Gayle Laakmann McDowell',508,'CareerCup',NULL,'English','098478280X','978-0984782802','2013-09-14 19:40:26');

/*!40000 ALTER TABLE `BOOK` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
