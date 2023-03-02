/*
SQLyog Ultimate v8.32 
MySQL - 5.7.24-log : Database - mis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mis` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `mis`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `cno` varchar(6) COLLATE utf8_bin NOT NULL,
  `cname` varchar(20) COLLATE utf8_bin NOT NULL,
  `cpno` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `ccredit` int(11) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `course` */

insert  into `course`(`cno`,`cname`,`cpno`,`ccredit`) values ('1','数据库','5',4),('2','数学',NULL,2),('3','信息系统','1',4),('4','操作系统','6',3),('5','数据结构','7',4),('7','PASCAL语言','6',4);

/*Table structure for table `sc` */

DROP TABLE IF EXISTS `sc`;

CREATE TABLE `sc` (
  `sno` char(12) COLLATE utf8_bin NOT NULL,
  `cno` varchar(6) COLLATE utf8_bin NOT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`sno`,`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sc` */

insert  into `sc`(`sno`,`cno`,`grade`) values ('200215121','1',92),('200215121','2',85),('200215121','3',88),('200215122','2',90),('200215122','3',80);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sno` char(12) COLLATE utf8_bin NOT NULL,
  `sname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ssex` char(3) COLLATE utf8_bin DEFAULT NULL,
  `sage` int(11) DEFAULT NULL,
  `sdept` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `student` */

insert  into `student`(`sno`,`sname`,`ssex`,`sage`,`sdept`) values ('200215121','李勇','男',20,'cs'),('200215122','刘晨','女',19,'cs'),('200215123','王敏','女',18,'ma'),('200215125','张立','男',19,'is');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `sno` char(12) COLLATE utf8_bin NOT NULL,
  `sname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ssex` char(3) COLLATE utf8_bin DEFAULT NULL,
  `sage` int(11) DEFAULT NULL,
  `sdept` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `teacher` */

insert  into `teacher`(`sno`,`sname`,`ssex`,`sage`,`sdept`) values ('085400','张老师','女',22,'cs'),('085401','王老师','女',23,'cs'),('085402','李老师','男',24,'cs');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
