/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.6-MariaDB : Database - escuela
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`escuela` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `escuela`;

/*Table structure for table `alumno` */

DROP TABLE IF EXISTS `alumno`;

CREATE TABLE `alumno` (
  `numControl` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `semestre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`numControl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `alumno` */

insert  into `alumno`(`numControl`,`nombre`,`semestre`) values 
('17120151','Carlos Jahir Castro Cázares','Sexto'),
('17120152','Fatima Andrea Heracleo Lagunas','Septimo'),
('17120153','Monserrat Jaimes Hecheverria','Cuarto'),
('17120155','Luis Antonio Garcia','Primero');

/*Table structure for table `docente` */

DROP TABLE IF EXISTS `docente`;

CREATE TABLE `docente` (
  `rfc` varchar(50) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `docente` */

insert  into `docente`(`rfc`,`nombre`) values 
('FJKH629MFH8','Adrian'),
('H124JH1KHK4','Gricha Geager'),
('HJHJK31244H','Eren Kruger');

/*Table structure for table `grupos` */

DROP TABLE IF EXISTS `grupos`;

CREATE TABLE `grupos` (
  `idGrupo` int(11) NOT NULL AUTO_INCREMENT,
  `idMateria` int(11) NOT NULL,
  `grupo` varchar(50) DEFAULT NULL,
  `periodo` varbinary(50) DEFAULT NULL,
  PRIMARY KEY (`idGrupo`),
  KEY `idMateria` (`idMateria`),
  CONSTRAINT `grupos_ibfk_1` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `grupos` */

insert  into `grupos`(`idGrupo`,`idMateria`,`grupo`,`periodo`) values 
(1,1,'A','2019'),
(2,1,'B','2019'),
(3,3,'A','2019'),
(4,3,'B','2019'),
(5,2,'A','2018'),
(6,4,'A','2018'),
(7,5,'A','2017');

/*Table structure for table `kardex` */

DROP TABLE IF EXISTS `kardex`;

CREATE TABLE `kardex` (
  `idGrupo` int(11) NOT NULL,
  `numControl` varchar(10) NOT NULL,
  `calificacion` float DEFAULT NULL,
  PRIMARY KEY (`idGrupo`,`numControl`),
  KEY `numControl` (`numControl`),
  CONSTRAINT `kardex_ibfk_1` FOREIGN KEY (`idGrupo`) REFERENCES `grupos` (`idGrupo`),
  CONSTRAINT `kardex_ibfk_2` FOREIGN KEY (`numControl`) REFERENCES `alumno` (`numControl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kardex` */

insert  into `kardex`(`idGrupo`,`numControl`,`calificacion`) values 
(3,'17120152',100),
(4,'17120151',90),
(4,'17120152',90),
(5,'17120151',100),
(7,'17120153',100);

/*Table structure for table `materia` */

DROP TABLE IF EXISTS `materia`;

CREATE TABLE `materia` (
  `idMateria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `materia` */

insert  into `materia`(`idMateria`,`nombre`) values 
(1,'ABD'),
(2,'TAP'),
(3,'TSO'),
(4,'LAI'),
(5,'IS'),
(6,'PW');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`usuario`,`password`,`tipo`) values 
('alum','789','alumno'),
('alum2','789','alumno'),
('dire','123','director'),
('doce','456','docente'),
('secre','ABC','secretaria');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
