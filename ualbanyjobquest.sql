/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.12-log : Database - ualbanyjobquest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ualbanyjobquest` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ualbanyjobquest`;

/*Table structure for table `logintable` */

DROP TABLE IF EXISTS `logintable`;

CREATE TABLE `logintable` (
  `Login_Id` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Usertype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Login_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `logintable` */

insert  into `logintable`(`Login_Id`,`Username`,`Email`,`Password`,`Usertype`) values (1,'n','nis@gmail.com','123','jobseeker'),(2,'yun','yun@albany.edu','yun','joblister');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `Registration_Id` int(11) NOT NULL,
  `Login_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Registration_Id`),
  KEY `FKB94F3CD96C718B3E` (`Login_Id`),
  CONSTRAINT `FKB94F3CD96C718B3E` FOREIGN KEY (`Login_Id`) REFERENCES `logintable` (`Login_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
