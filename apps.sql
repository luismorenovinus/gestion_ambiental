/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : apps

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-04-28 14:30:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for permisos
-- ----------------------------
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE `permisos` (
  `Pk_Id_Permiso` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Usuario` int(11) NOT NULL,
  `Fk_Id_Aplicacion` int(11) NOT NULL,
  `Tipo_Permiso` int(11) NOT NULL DEFAULT '2' COMMENT '1: Administrador; 2: Estándar',
  PRIMARY KEY (`Pk_Id_Permiso`),
  KEY `Fk_Id_Usuario` (`Fk_Id_Usuario`),
  KEY `Fk_Id_Aplicacion` (`Fk_Id_Aplicacion`),
  CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`Fk_Id_Aplicacion`) REFERENCES `tbl_aplicaciones` (`Pk_Id_Aplicacion`),
  CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`Fk_Id_Usuario`) REFERENCES `usuarios` (`Pk_Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permisos
-- ----------------------------
INSERT INTO `permisos` VALUES ('2', '1', '5', '2');
INSERT INTO `permisos` VALUES ('4', '3', '5', '2');
INSERT INTO `permisos` VALUES ('6', '5', '5', '2');
INSERT INTO `permisos` VALUES ('7', '6', '5', '2');
INSERT INTO `permisos` VALUES ('8', '7', '5', '2');

-- ----------------------------
-- Table structure for tbl_aplicaciones
-- ----------------------------
DROP TABLE IF EXISTS `tbl_aplicaciones`;
CREATE TABLE `tbl_aplicaciones` (
  `Pk_Id_Aplicacion` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Url` varchar(75) NOT NULL,
  `Imagen` varchar(75) NOT NULL,
  `Estado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Pk_Id_Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_aplicaciones
-- ----------------------------
INSERT INTO `tbl_aplicaciones` VALUES ('5', 'Gestión Ambiental', 'gestion_ambiental.vinus.com.co', '', '1');

-- ----------------------------
-- Table structure for tbl_areas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_areas`;
CREATE TABLE `tbl_areas` (
  `Pk_Id_Area` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Area`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_areas
-- ----------------------------
INSERT INTO `tbl_areas` VALUES ('1', 'Social');
INSERT INTO `tbl_areas` VALUES ('3', 'Administrativo');
INSERT INTO `tbl_areas` VALUES ('2', 'Ambiental');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `Pk_Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Documento` varchar(20) DEFAULT NULL COMMENT 'Número de documento del usuario',
  `Nombres` varchar(50) DEFAULT NULL COMMENT 'Nombres del usuario',
  `Apellidos` varchar(50) DEFAULT NULL COMMENT 'Apellidos del usuario',
  `Usuario` varchar(20) DEFAULT NULL COMMENT 'Nombre de usuario para el login',
  `Password` varchar(100) NOT NULL COMMENT 'Contraseña de logueo',
  `Email` varchar(100) NOT NULL COMMENT 'Correo electrónico de contacto',
  `Estado` varchar(1) DEFAULT '1' COMMENT '1: activo; 0: inactivo',
  `Telefono` varchar(20) DEFAULT NULL COMMENT 'Número telefónico',
  `Fecha_Hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha y hora de creación del registro',
  `Fk_Id_Permiso_Nivel` int(11) DEFAULT NULL,
  `Tipo` varchar(1) NOT NULL COMMENT 'Tipo de usuario',
  `Fk_Id_Area` int(11) DEFAULT NULL COMMENT 'Área a la que pertenece',
  PRIMARY KEY (`Pk_Id_Usuario`),
  KEY `Fk_Id_Area` (`Fk_Id_Area`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', '1017177502', 'John Arley', 'Cano', 'jcano', '827ccb0eea8a706c4c34a16891f84e7b', 'john.cano@vinus.com.co', '1', '3134587623', '2016-03-18 15:21:50', '1', '', '3');
INSERT INTO `usuarios` VALUES ('3', '43268224 ', 'Sandra Milena', 'Idárraga', 'sidarraga', 'af2f84ad5e21495990fcc6d39e1d5b24', 'sandra.idarraga@vinus.com.co', '1', '4012277', '2016-03-18 16:34:14', '0', '1', '3');
INSERT INTO `usuarios` VALUES ('5', '39214927', 'Carolina', 'Bustamante', 'cbustamante', '01ed3da59f053fa6e65cb3d875d8ad03', 'carolina.bustamante@vinus.com.co', '1', '4012277', '2016-03-31 09:09:04', null, '', null);
INSERT INTO `usuarios` VALUES ('6', '71333522', 'Carlos', 'Flórez', 'cflorez', 'd7cad172e8f91377d85e240950122294', 'carlos.florez@hatovial.com', '1', '4012277', '2016-03-31 09:13:18', null, '', null);
INSERT INTO `usuarios` VALUES ('7', '39211768', 'Mónica Mabel', 'Foronda Escobar', 'mforonda', '7d5c1c384e976738ba70fd55275d4850', 'monica.foronda@hatovial.com', '1', '3176651643', '2016-04-15 11:11:45', null, '', null);
