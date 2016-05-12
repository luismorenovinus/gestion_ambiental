/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : ica

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-04-28 14:27:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for 1a
-- ----------------------------
DROP TABLE IF EXISTS `1a`;
CREATE TABLE `1a` (
  `Pk_Id_Meta` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) NOT NULL,
  `Descripcion` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Meta`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `1a_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 1a
-- ----------------------------

-- ----------------------------
-- Table structure for 1a_acciones
-- ----------------------------
DROP TABLE IF EXISTS `1a_acciones`;
CREATE TABLE `1a_acciones` (
  `Pk_Id_Meta_Accion` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Meta` int(11) DEFAULT NULL,
  `Descripcion` text,
  `Periodicidad` varchar(150) DEFAULT NULL,
  `Porcentaje_Cumplimiento` varchar(3) DEFAULT NULL,
  `Porcentaje_Avance_Programado` varchar(3) DEFAULT NULL,
  `Porcentaje_Avance_Actual` varchar(3) DEFAULT NULL,
  `Observacion` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Meta_Accion`),
  KEY `Fk_Id_Meta` (`Fk_Id_Meta`),
  CONSTRAINT `1a_acciones_ibfk_1` FOREIGN KEY (`Fk_Id_Meta`) REFERENCES `1a` (`Pk_Id_Meta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 1a_acciones
-- ----------------------------

-- ----------------------------
-- Table structure for 1a_parametros
-- ----------------------------
DROP TABLE IF EXISTS `1a_parametros`;
CREATE TABLE `1a_parametros` (
  `Pk_Id_Parametro_Meta` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Meta` int(11) DEFAULT NULL,
  `Parametro_Descripcion` text,
  `Parametro_Valor` varchar(5) DEFAULT NULL,
  `Calidad_Descripcion` text,
  `Calidad_Valor` varchar(5) DEFAULT NULL,
  `Cumple` int(11) DEFAULT '0',
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Parametro_Meta`),
  KEY `Fk_Id_Meta` (`Fk_Id_Meta`),
  CONSTRAINT `1a_parametros_ibfk_1` FOREIGN KEY (`Fk_Id_Meta`) REFERENCES `1a` (`Pk_Id_Meta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 1a_parametros
-- ----------------------------

-- ----------------------------
-- Table structure for 2a
-- ----------------------------
DROP TABLE IF EXISTS `2a`;
CREATE TABLE `2a` (
  `Pk_Id_2a` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) NOT NULL,
  `Numero_Acto` varchar(125) DEFAULT NULL,
  `Fecha_Acto` date DEFAULT NULL,
  `Autoridad1` text,
  `Vigencia` text,
  `Tipo` varchar(1) DEFAULT NULL,
  `Fecha_Radicacion` date DEFAULT NULL,
  `Autoridad2` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2a`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2a_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2a
-- ----------------------------

-- ----------------------------
-- Table structure for 2a_monitoreo
-- ----------------------------
DROP TABLE IF EXISTS `2a_monitoreo`;
CREATE TABLE `2a_monitoreo` (
  `Pk_Id_2a_Monitoreo` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) NOT NULL,
  `Parametros` text,
  `Unidad_Medicion` varchar(75) DEFAULT NULL,
  `Valor_Medicion` varchar(75) DEFAULT NULL,
  `Metodo_Muestra` text,
  `Metodo_Analisis` text,
  `Fecha_Muestreo` date DEFAULT NULL,
  `Localizacion_Muestreo` text,
  `Numero_Norma` varchar(5) DEFAULT NULL,
  `Valor_Norma` varchar(75) DEFAULT NULL,
  `Valor_Compromiso` varchar(75) DEFAULT NULL,
  `Pma_Relacionado` varchar(5) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2a_Monitoreo`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2a_monitoreo_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2a_monitoreo
-- ----------------------------

-- ----------------------------
-- Table structure for 2a_recurso
-- ----------------------------
DROP TABLE IF EXISTS `2a_recurso`;
CREATE TABLE `2a_recurso` (
  `Pk_Id_2a_Recurso` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` varchar(175) DEFAULT NULL,
  `Tipo_Vertimiento` varchar(1) DEFAULT NULL,
  `Autorizado` varchar(20) DEFAULT NULL,
  `Utilizado` varchar(20) DEFAULT NULL,
  `Duracion` varchar(20) DEFAULT NULL,
  `Disposicion_Final` text,
  `Nombre_Fuente` text,
  `Coordenadas` varchar(20) DEFAULT NULL,
  `Descripcion_Tratamiento` text,
  `PMA_Relacionado` varchar(20) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2a_Recurso`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2a_recurso_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2a_recurso
-- ----------------------------

-- ----------------------------
-- Table structure for 2b
-- ----------------------------
DROP TABLE IF EXISTS `2b`;
CREATE TABLE `2b` (
  `Pk_Id_2b` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) NOT NULL,
  `Numero_Acto` varchar(125) DEFAULT NULL,
  `Fecha_Acto` date DEFAULT NULL,
  `Autoridad1` text,
  `Vigencia` text,
  `Tipo` varchar(1) DEFAULT NULL,
  `Fecha_Radicacion` date DEFAULT NULL,
  `Autoridad2` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2b`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2b_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2b
-- ----------------------------

-- ----------------------------
-- Table structure for 2b_monitoreo
-- ----------------------------
DROP TABLE IF EXISTS `2b_monitoreo`;
CREATE TABLE `2b_monitoreo` (
  `Pk_Id_2b_Monitoreo` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) NOT NULL,
  `Parametros` text,
  `Unidad_Medicion` varchar(75) DEFAULT NULL,
  `Valor_Medicion` varchar(75) DEFAULT NULL,
  `Metodo_Muestra` text,
  `Metodo_Analisis` text,
  `Fecha_Muestreo` date DEFAULT NULL,
  `Localizacion_Muestreo` text,
  `Numero_Norma` varchar(5) DEFAULT NULL,
  `Valor_Norma` varchar(75) DEFAULT NULL,
  `Valor_Compromiso` varchar(75) DEFAULT NULL,
  `Pma_Relacionado` varchar(5) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2b_Monitoreo`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2b_monitoreo_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2b_monitoreo
-- ----------------------------

-- ----------------------------
-- Table structure for 2b_recurso
-- ----------------------------
DROP TABLE IF EXISTS `2b_recurso`;
CREATE TABLE `2b_recurso` (
  `Pk_Id_2b_Recurso` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Fuente_Agua` varchar(1) DEFAULT NULL,
  `Autorizado` varchar(20) DEFAULT NULL,
  `Utilizado` varchar(20) DEFAULT NULL,
  `Tipo_Captacion` text,
  `Nombre_Fuente` text,
  `Aforo_Fuente` text,
  `Coordenadas` varchar(20) DEFAULT NULL,
  `Valor_Inversion` varchar(75) DEFAULT NULL,
  `Valor_1` varchar(75) DEFAULT NULL,
  `Tasa_Uso` varchar(75) DEFAULT NULL,
  `PMA_Relacionado` varchar(20) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2b_Recurso`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2b_recurso_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2b_recurso
-- ----------------------------

-- ----------------------------
-- Table structure for 2c
-- ----------------------------
DROP TABLE IF EXISTS `2c`;
CREATE TABLE `2c` (
  `Pk_Id_2c` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) NOT NULL,
  `Numero_Acto` varchar(125) DEFAULT NULL,
  `Fecha_Acto` date DEFAULT NULL,
  `Autoridad1` text,
  `Vigencia` text,
  `Tipo` varchar(1) DEFAULT NULL,
  `Fecha_Radicacion` date DEFAULT NULL,
  `Autoridad2` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2c`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2c_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2c
-- ----------------------------

-- ----------------------------
-- Table structure for 2c_monitoreo
-- ----------------------------
DROP TABLE IF EXISTS `2c_monitoreo`;
CREATE TABLE `2c_monitoreo` (
  `Pk_Id_2c_Monitoreo` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) NOT NULL,
  `Numero` text,
  `Parametros` text,
  `Unidad_Medicion` varchar(75) DEFAULT NULL,
  `Valor_Medicion` varchar(75) DEFAULT NULL,
  `Metodo_Muestra` text,
  `Metodo_Analisis` text,
  `Fecha_Muestreo` date DEFAULT NULL,
  `Localizacion_Muestreo` text,
  `Compromiso` varchar(75) DEFAULT NULL,
  `Pma_Relacionado` varchar(5) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2c_Monitoreo`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2c_monitoreo_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2c_monitoreo
-- ----------------------------

-- ----------------------------
-- Table structure for 2c_recurso
-- ----------------------------
DROP TABLE IF EXISTS `2c_recurso`;
CREATE TABLE `2c_recurso` (
  `Pk_Id_2c_Recurso` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` text,
  `Area_Autorizado` text,
  `Volumen_Autorizado` text,
  `Area_Aprovechada` text,
  `Volumen_Aprovechada` text,
  `Coordenadas` text,
  `Area_Total` text,
  `Especies_Aprovechadas` text,
  `Especies_Reforestadas` text,
  `PMA_Relacionado` varchar(75) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2c_Recurso`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2c_recurso_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2c_recurso
-- ----------------------------

-- ----------------------------
-- Table structure for 2d
-- ----------------------------
DROP TABLE IF EXISTS `2d`;
CREATE TABLE `2d` (
  `Pk_Id_2d` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) NOT NULL,
  `Numero_Acto` varchar(125) DEFAULT NULL,
  `Fecha_Acto` date DEFAULT NULL,
  `Autoridad1` text,
  `Vigencia` text,
  `Tipo` varchar(1) DEFAULT NULL,
  `Fecha_Radicacion` date DEFAULT NULL,
  `Autoridad2` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2d`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2d_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2d
-- ----------------------------

-- ----------------------------
-- Table structure for 2d_monitoreo
-- ----------------------------
DROP TABLE IF EXISTS `2d_monitoreo`;
CREATE TABLE `2d_monitoreo` (
  `Pk_Id_2d_Monitoreo` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` text,
  `Parametros` text,
  `Unidad_Medicion` varchar(75) DEFAULT NULL,
  `Valor_Medicion` varchar(75) DEFAULT NULL,
  `Metodo_Muestra` text,
  `Metodo_Analisis` text,
  `Fecha_Muestreo` date DEFAULT NULL,
  `Localizacion_Muestreo` text,
  `Numero_Norma` varchar(5) DEFAULT NULL,
  `Valor_Norma` varchar(75) DEFAULT NULL,
  `Valor_Compromiso` varchar(75) DEFAULT NULL,
  `Pma_Relacionado` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2d_Monitoreo`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2d_monitoreo_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2d_monitoreo
-- ----------------------------

-- ----------------------------
-- Table structure for 2d_recurso
-- ----------------------------
DROP TABLE IF EXISTS `2d_recurso`;
CREATE TABLE `2d_recurso` (
  `Pk_Id_2d_Recurso` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` varchar(75) DEFAULT NULL,
  `Tipo` varchar(1) DEFAULT NULL,
  `Duracion_Ocupacion` varchar(20) DEFAULT NULL,
  `Fecha_Ocupacion` date DEFAULT NULL,
  `Actividades` text,
  `Nombre_Fuente` text,
  `Coordenadas` varchar(20) DEFAULT NULL,
  `PMA_Relacionado` varchar(20) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2d_Recurso`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2d_recurso_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2d_recurso
-- ----------------------------

-- ----------------------------
-- Table structure for 2e
-- ----------------------------
DROP TABLE IF EXISTS `2e`;
CREATE TABLE `2e` (
  `Pk_Id_2e` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) NOT NULL,
  `Numero_Acto` varchar(125) DEFAULT NULL,
  `Fecha_Acto` date DEFAULT NULL,
  `Autoridad1` text,
  `Vigencia` text,
  `Tipo` varchar(1) DEFAULT NULL,
  `Fecha_Radicacion` date DEFAULT NULL,
  `Autoridad2` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2e`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2e_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2e
-- ----------------------------

-- ----------------------------
-- Table structure for 2e_monitoreo
-- ----------------------------
DROP TABLE IF EXISTS `2e_monitoreo`;
CREATE TABLE `2e_monitoreo` (
  `Pk_Id_2e_Monitoreo` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` text,
  `Parametros` text,
  `Unidad_Medicion` varchar(75) DEFAULT NULL,
  `Valor_Medicion` varchar(75) DEFAULT NULL,
  `Metodo_Muestra` text,
  `Metodo_Analisis` text,
  `Fecha_Muestreo` date DEFAULT NULL,
  `Localizacion_Muestreo` text,
  `Numero_Norma` varchar(75) DEFAULT NULL,
  `Valor_Norma` varchar(75) DEFAULT NULL,
  `Valor_Compromiso` varchar(75) DEFAULT NULL,
  `Pma_Relacionado` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2e_Monitoreo`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2e_monitoreo_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2e_monitoreo
-- ----------------------------

-- ----------------------------
-- Table structure for 2e_recurso
-- ----------------------------
DROP TABLE IF EXISTS `2e_recurso`;
CREATE TABLE `2e_recurso` (
  `Pk_Id_2e_Recurso` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` varchar(75) DEFAULT NULL,
  `Tipo_Emision` varchar(1) DEFAULT NULL,
  `Fuente_Generadora` text,
  `Tipo_Combustible` text,
  `Material_Procesado` text,
  `Altura_Chimenea` varchar(75) DEFAULT NULL,
  `Diametro_Chimenea` varchar(75) DEFAULT NULL,
  `Emisiones_Autorizadas` text,
  `Coordenadas` text,
  `Tipo_Contaminante` text,
  `Altura_Nivel_Mar` text,
  `Presion_Barometrica` text,
  `PMA_Relacionado` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2e_Recurso`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2e_recurso_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2e_recurso
-- ----------------------------

-- ----------------------------
-- Table structure for 2f
-- ----------------------------
DROP TABLE IF EXISTS `2f`;
CREATE TABLE `2f` (
  `Pk_Id_2f` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero_Acto_Tercero` varchar(225) DEFAULT NULL,
  `Fecha_Acto_Tercero` date DEFAULT NULL,
  `Concesion_Si` varchar(255) DEFAULT NULL,
  `Concesion_No` varchar(255) DEFAULT NULL,
  `Fecha_Acto_Concesion` date DEFAULT NULL,
  `Autoridad1` text,
  `Vigencia` text,
  `Tipo` varchar(1) DEFAULT NULL,
  `Fecha_Radicacion` date DEFAULT NULL,
  `Autoridad2` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2f`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2f_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2f
-- ----------------------------

-- ----------------------------
-- Table structure for 2f_monitoreo
-- ----------------------------
DROP TABLE IF EXISTS `2f_monitoreo`;
CREATE TABLE `2f_monitoreo` (
  `Pk_Id_2f_Monitoreo` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` text,
  `Parametros` text,
  `Unidad_Medicion` varchar(75) DEFAULT NULL,
  `Valor_Medicion` varchar(75) DEFAULT NULL,
  `Metodo_Muestra` text,
  `Metodo_Analisis` text,
  `Fecha_Muestreo` date DEFAULT NULL,
  `Localizacion_Muestreo` text,
  `Numero_Norma` varchar(75) DEFAULT NULL,
  `Valor_Norma` varchar(75) DEFAULT NULL,
  `Valor_Compromiso` varchar(75) DEFAULT NULL,
  `Pma_Relacionado` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2f_Monitoreo`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2f_monitoreo_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2f_monitoreo
-- ----------------------------

-- ----------------------------
-- Table structure for 2f_recurso
-- ----------------------------
DROP TABLE IF EXISTS `2f_recurso`;
CREATE TABLE `2f_recurso` (
  `Pk_Id_2f_Recurso` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` varchar(75) DEFAULT NULL,
  `Terceros` varchar(255) DEFAULT NULL,
  `Extraccion_Directa` varchar(255) DEFAULT NULL,
  `Volumen_Autorizado` varchar(255) DEFAULT NULL,
  `Volumen_Utilizado` varchar(255) DEFAULT NULL,
  `Tipo_Material` varchar(255) DEFAULT NULL,
  `Area_Autorizada` varchar(255) DEFAULT NULL,
  `Area_Utilizada` varchar(255) DEFAULT NULL,
  `Coordenadas` varchar(255) DEFAULT NULL,
  `Nombre_Fuente` varchar(255) DEFAULT NULL,
  `PMA_Relacionado` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2f_Recurso`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2f_recurso_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2f_recurso
-- ----------------------------

-- ----------------------------
-- Table structure for 2g
-- ----------------------------
DROP TABLE IF EXISTS `2g`;
CREATE TABLE `2g` (
  `Pk_Id_2g` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero_Acto` varchar(125) DEFAULT NULL,
  `Fecha_Acto` date DEFAULT NULL,
  `Autoridad1` text,
  `Vigencia` text,
  `Tipo` varchar(1) DEFAULT NULL,
  `Fecha_Radicacion` date DEFAULT NULL,
  `Autoridad2` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2g`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2g_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2g
-- ----------------------------

-- ----------------------------
-- Table structure for 2g_monitoreo
-- ----------------------------
DROP TABLE IF EXISTS `2g_monitoreo`;
CREATE TABLE `2g_monitoreo` (
  `Pk_Id_2f_Monitoreo` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` text,
  `Parametros` text,
  `Unidad_Medicion` varchar(75) DEFAULT NULL,
  `Valor_Medicion` varchar(75) DEFAULT NULL,
  `Metodo_Muestra` text,
  `Metodo_Analisis` text,
  `Fecha_Muestreo` date DEFAULT NULL,
  `Localizacion_Muestreo` text,
  `Numero_Norma` varchar(75) DEFAULT NULL,
  `Valor_Norma` varchar(75) DEFAULT NULL,
  `Valor_Compromiso` varchar(75) DEFAULT NULL,
  `Pma_Relacionado` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2f_Monitoreo`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2g_monitoreo_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2g_monitoreo
-- ----------------------------

-- ----------------------------
-- Table structure for 2g_recurso
-- ----------------------------
DROP TABLE IF EXISTS `2g_recurso`;
CREATE TABLE `2g_recurso` (
  `Pk_Id_2f_Recurso` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` varchar(75) DEFAULT NULL,
  `Tipo_Residuo` varchar(1) DEFAULT NULL,
  `Otro_Tipo_Residuo` varchar(255) DEFAULT NULL,
  `Fuente_Generacion` varchar(255) DEFAULT NULL,
  `Cantidad_Autorizada` varchar(255) DEFAULT NULL,
  `Cantidad_Dispuesta` varchar(255) DEFAULT NULL,
  `Sistema_Lixiviados` varchar(255) DEFAULT NULL,
  `Sistema_Relleno` varchar(255) DEFAULT NULL,
  `Sistema_Botadero` varchar(255) DEFAULT NULL,
  `Sistema_Incineracion` varchar(255) DEFAULT NULL,
  `Sistema_Otro` varchar(255) DEFAULT NULL,
  `Nombre_Sitio` varchar(255) DEFAULT NULL,
  `Vida_Util` varchar(255) DEFAULT NULL,
  `Coordenadas` varchar(255) DEFAULT NULL,
  `PMA_Relacionado` varchar(255) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2f_Recurso`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2g_recurso_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2g_recurso
-- ----------------------------

-- ----------------------------
-- Table structure for 2h
-- ----------------------------
DROP TABLE IF EXISTS `2h`;
CREATE TABLE `2h` (
  `Pk_Id_2h` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero_Acto` varchar(125) DEFAULT NULL,
  `Fecha_Acto1` date DEFAULT NULL,
  `Autoridad1` text,
  `Fecha_Acto2` date DEFAULT NULL,
  `Lleno` varchar(1) DEFAULT NULL,
  `Vigencia1` text,
  `Vigencia2` text,
  `Tipo` varchar(1) DEFAULT NULL,
  `Fecha_Radicacion` date DEFAULT NULL,
  `Autoridad2` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2h`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2h_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2h
-- ----------------------------

-- ----------------------------
-- Table structure for 2h_monitoreo
-- ----------------------------
DROP TABLE IF EXISTS `2h_monitoreo`;
CREATE TABLE `2h_monitoreo` (
  `Pk_Id_2h_Monitoreo` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero` text,
  `Parametros` text,
  `Unidad_Medicion` varchar(75) DEFAULT NULL,
  `Valor_Medicion` varchar(75) DEFAULT NULL,
  `Metodo_Muestra` text,
  `Metodo_Analisis` text,
  `Fecha_Muestreo` date DEFAULT NULL,
  `Localizacion_Muestreo` text,
  `Numero_Norma` varchar(75) DEFAULT NULL,
  `Valor_Norma` varchar(75) DEFAULT NULL,
  `Valor_Compromiso` varchar(75) DEFAULT NULL,
  `Pma_Relacionado` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2h_Monitoreo`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2h_monitoreo_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2h_monitoreo
-- ----------------------------

-- ----------------------------
-- Table structure for 2h_recurso
-- ----------------------------
DROP TABLE IF EXISTS `2h_recurso`;
CREATE TABLE `2h_recurso` (
  `Pk_Id_2h_Recurso` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Numero_Permiso` varchar(255) DEFAULT NULL,
  `Permiso` varchar(255) DEFAULT NULL,
  `Permiso_Autorizado` varchar(255) DEFAULT NULL,
  `Permiso_Utilizado` varchar(255) DEFAULT NULL,
  `Observaciones` text,
  `Coordenadas` varchar(255) DEFAULT NULL,
  `Nombre_Fuente` varchar(255) DEFAULT NULL,
  `PMA_Relacionado` varchar(255) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_2h_Recurso`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `2h_recurso_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 2h_recurso
-- ----------------------------

-- ----------------------------
-- Table structure for 3a
-- ----------------------------
DROP TABLE IF EXISTS `3a`;
CREATE TABLE `3a` (
  `Pk_Id_3a` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Periodo` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Ficha` int(11) DEFAULT NULL,
  `Descripcion` text,
  `Cumplimiento` varchar(1) DEFAULT NULL,
  `Cumplimiento_Parcial` varchar(2) DEFAULT NULL,
  `Fecha_Inicial` date DEFAULT NULL,
  `Fecha_Final` date DEFAULT NULL,
  `Observaciones` text,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_3a`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `3a_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of 3a
-- ----------------------------

-- ----------------------------
-- Table structure for anexos
-- ----------------------------
DROP TABLE IF EXISTS `anexos`;
CREATE TABLE `anexos` (
  `Pk_Id_Anexo` int(11) NOT NULL COMMENT 'Identificador Principal del anexo',
  `Fk_Id_Periodo` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del período',
  `Fk_Id_Formato` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del formato',
  `Fk_Id_Ficha_Registro` int(11) DEFAULT NULL COMMENT 'Identificador de la relacion entre la ficha y el registro',
  `Fecha_Hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha de ingreso del dato',
  `Fecha_Inicio` datetime DEFAULT NULL COMMENT 'Fecha de inicio de la validez del anexo subido',
  `Fecha_Fin` datetime DEFAULT NULL COMMENT 'Fecha final de la validez del anexo subido',
  `Lugar` text COMMENT 'Lugar del anexo. Aplica cuando es una fotografía',
  `Observacion` text COMMENT 'Observación del anexo',
  `Fk_Id_Usuario` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del usuario logueado',
  `Fk_Id_Anexo_Tipo` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del tipo de anexo',
  PRIMARY KEY (`Pk_Id_Anexo`),
  KEY `Fk_Id_Periodo` (`Fk_Id_Periodo`),
  KEY `Fk_Id_Formato` (`Fk_Id_Formato`),
  KEY `Fk_Id_Ficha_Registro` (`Fk_Id_Ficha_Registro`),
  KEY `Fk_Id_Anexo_Tipo` (`Fk_Id_Anexo_Tipo`),
  CONSTRAINT `anexos_ibfk_1` FOREIGN KEY (`Fk_Id_Periodo`) REFERENCES `tbl_periodos` (`Pk_Id_Periodo`),
  CONSTRAINT `anexos_ibfk_2` FOREIGN KEY (`Fk_Id_Formato`) REFERENCES `tbl_formatos` (`Pk_Id_Formato`),
  CONSTRAINT `anexos_ibfk_3` FOREIGN KEY (`Fk_Id_Ficha_Registro`) REFERENCES `tbl_ficha_registros` (`Pk_Id_Ficha_Registro`),
  CONSTRAINT `anexos_ibfk_4` FOREIGN KEY (`Fk_Id_Anexo_Tipo`) REFERENCES `anexo_tipos` (`Pk_Id_Anexo_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anexos
-- ----------------------------

-- ----------------------------
-- Table structure for anexo_tipos
-- ----------------------------
DROP TABLE IF EXISTS `anexo_tipos`;
CREATE TABLE `anexo_tipos` (
  `Pk_Id_Anexo_Tipo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador principal del tipo de anexo',
  `Nombre` text COMMENT 'Nombre del tipo de anexo',
  PRIMARY KEY (`Pk_Id_Anexo_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anexo_tipos
-- ----------------------------

-- ----------------------------
-- Table structure for fichas_versiones
-- ----------------------------
DROP TABLE IF EXISTS `fichas_versiones`;
CREATE TABLE `fichas_versiones` (
  `Pk_Id_Relacion` int(11) NOT NULL AUTO_INCREMENT,
  `Version` varchar(15) DEFAULT NULL COMMENT 'Número de la versión',
  `Fk_Id_Ficha` int(11) NOT NULL COMMENT 'Identificador foráneo de la ficha',
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Relacion`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  CONSTRAINT `fichas_versiones_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fichas_versiones
-- ----------------------------

-- ----------------------------
-- Table structure for filtros_creados
-- ----------------------------
DROP TABLE IF EXISTS `filtros_creados`;
CREATE TABLE `filtros_creados` (
  `intCodigo` int(11) NOT NULL AUTO_INCREMENT,
  `strNombre` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `es_reporte` tinyint(1) DEFAULT NULL,
  `es_sistema` tinyint(1) DEFAULT NULL,
  `es_cliente` tinyint(1) DEFAULT NULL,
  `busqueda_rapida` tinyint(1) DEFAULT NULL,
  `id_asociado` tinyint(11) DEFAULT NULL,
  `privado` tinyint(1) DEFAULT '0',
  `Estado` tinyint(1) DEFAULT '1',
  `id_usuario` int(11) DEFAULT NULL,
  `id_Filtro_balance` int(11) DEFAULT NULL,
  `id_campo_balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`intCodigo`)
) ENGINE=MyISAM AUTO_INCREMENT=295 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of filtros_creados
-- ----------------------------

-- ----------------------------
-- Table structure for filtros_creados_campos
-- ----------------------------
DROP TABLE IF EXISTS `filtros_creados_campos`;
CREATE TABLE `filtros_creados_campos` (
  `intCodigo` int(11) NOT NULL AUTO_INCREMENT,
  `id_filtro` int(11) NOT NULL,
  `id_filtro_campo` int(11) NOT NULL,
  PRIMARY KEY (`intCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of filtros_creados_campos
-- ----------------------------

-- ----------------------------
-- Table structure for filtros_creados_condiciones
-- ----------------------------
DROP TABLE IF EXISTS `filtros_creados_condiciones`;
CREATE TABLE `filtros_creados_condiciones` (
  `intCodigo` int(11) NOT NULL AUTO_INCREMENT,
  `id_filtro` int(11) NOT NULL,
  `id_filtro_campo` int(11) NOT NULL,
  `id_filtro_condicion` int(11) NOT NULL,
  `detalle` varchar(250) NOT NULL,
  PRIMARY KEY (`intCodigo`)
) ENGINE=MyISAM AUTO_INCREMENT=792 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of filtros_creados_condiciones
-- ----------------------------

-- ----------------------------
-- Table structure for filtro_campos
-- ----------------------------
DROP TABLE IF EXISTS `filtro_campos`;
CREATE TABLE `filtro_campos` (
  `intCodigo` int(11) NOT NULL AUTO_INCREMENT,
  `strNombre` varchar(50) DEFAULT NULL,
  `Nombre_Campo` varchar(50) DEFAULT NULL,
  `Nombre_Unico` varchar(255) DEFAULT NULL,
  `id_filtro_tipo` int(11) DEFAULT NULL,
  `Estado` int(11) DEFAULT '1',
  `RelacionCampo` varchar(2000) DEFAULT NULL,
  `Aplica_Filtro_Asociado` varchar(1) DEFAULT NULL COMMENT 'Si es 1, entonces se usará en los filtros de asociados',
  PRIMARY KEY (`intCodigo`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of filtro_campos
-- ----------------------------

-- ----------------------------
-- Table structure for filtro_condiciones
-- ----------------------------
DROP TABLE IF EXISTS `filtro_condiciones`;
CREATE TABLE `filtro_condiciones` (
  `intCodigo` int(11) NOT NULL AUTO_INCREMENT,
  `strNombre` varchar(255) NOT NULL,
  `consulta1` varchar(255) NOT NULL,
  `consulta2` varchar(255) NOT NULL,
  `id_filtro_tipo` int(11) NOT NULL,
  `Estado` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`intCodigo`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of filtro_condiciones
-- ----------------------------

-- ----------------------------
-- Table structure for filtro_tipos
-- ----------------------------
DROP TABLE IF EXISTS `filtro_tipos`;
CREATE TABLE `filtro_tipos` (
  `intCodigo` int(11) NOT NULL AUTO_INCREMENT,
  `strNombre` varchar(50) DEFAULT NULL,
  `Estado` bit(1) DEFAULT b'1' COMMENT '1:activo 0:inactivo',
  PRIMARY KEY (`intCodigo`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of filtro_tipos
-- ----------------------------

-- ----------------------------
-- Table structure for siso_maquinaria
-- ----------------------------
DROP TABLE IF EXISTS `siso_maquinaria`;
CREATE TABLE `siso_maquinaria` (
  `Pk_Id_Siso_Maquinaria` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Fecha_Vencimiento_Revision` date DEFAULT NULL,
  `Fecha_Vencimiento_Soat` date DEFAULT NULL,
  `Fecha_Vigencia` date DEFAULT NULL,
  `Fk_Id_Valor_Maquina` int(11) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  `Fk_Id_Valor_Categoria` int(11) DEFAULT NULL,
  `Fk_Id_Hoja_Vida_Operador` int(11) DEFAULT NULL,
  `Revision_requerida` varchar(1) DEFAULT NULL,
  `Soat_Requerido` varchar(1) DEFAULT NULL,
  `Horometro` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Siso_Maquinaria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of siso_maquinaria
-- ----------------------------

-- ----------------------------
-- Table structure for siso_maquinaria_estado
-- ----------------------------
DROP TABLE IF EXISTS `siso_maquinaria_estado`;
CREATE TABLE `siso_maquinaria_estado` (
  `Pk_Id_Siso_Maquinaria_Estado` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Siso_Maquinaria` int(11) DEFAULT NULL,
  `Fk_Id_Valor_Estado` int(11) DEFAULT NULL,
  `Valor` varchar(1) DEFAULT NULL,
  `Observacion` text,
  `Corregido` varchar(1) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  `Accion_Mejora` text,
  `Fecha_Mejora` date DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Siso_Maquinaria_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of siso_maquinaria_estado
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_fichas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_fichas`;
CREATE TABLE `tbl_fichas` (
  `Pk_Id_Ficha` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador principal de la ficha',
  `Nombre` text NOT NULL COMMENT 'Nombre de la ficha',
  `Numero` varchar(10) DEFAULT NULL COMMENT 'Número de la ficha',
  `Fk_Id_Tramo` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del tramo al cual está asociado',
  PRIMARY KEY (`Pk_Id_Ficha`),
  KEY `Fk_Id_Formato` (`Fk_Id_Tramo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_fichas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_ficha_registros
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ficha_registros`;
CREATE TABLE `tbl_ficha_registros` (
  `Pk_Id_Ficha_Registro` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador principal de la relación',
  `Fk_Id_Ficha` int(11) NOT NULL COMMENT 'Identificador foráneo de la ficha',
  `Fk_Id_Registro` int(11) NOT NULL COMMENT 'Identificador foráneo del registro',
  PRIMARY KEY (`Pk_Id_Ficha_Registro`),
  KEY `Fk_Id_Ficha` (`Fk_Id_Ficha`),
  KEY `Fk_Id_Registro` (`Fk_Id_Registro`),
  CONSTRAINT `tbl_ficha_registros_ibfk_1` FOREIGN KEY (`Fk_Id_Ficha`) REFERENCES `tbl_fichas` (`Pk_Id_Ficha`),
  CONSTRAINT `tbl_ficha_registros_ibfk_2` FOREIGN KEY (`Fk_Id_Registro`) REFERENCES `tbl_registros` (`Pk_Id_Registro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_ficha_registros
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_formatos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_formatos`;
CREATE TABLE `tbl_formatos` (
  `Pk_Id_Formato` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador principal del formato',
  `Nombre` varchar(75) NOT NULL COMMENT 'Nombre del formato',
  `Descripcion` text NOT NULL COMMENT 'Descripción del formato',
  PRIMARY KEY (`Pk_Id_Formato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_formatos
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_listas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_listas`;
CREATE TABLE `tbl_listas` (
  `Pk_Id_Lista` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador principal de la lista',
  `Nombre` text NOT NULL COMMENT 'Nombre de la lista',
  PRIMARY KEY (`Pk_Id_Lista`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_listas
-- ----------------------------
INSERT INTO `tbl_listas` VALUES ('1', 'Empresa Subcontratista');
INSERT INTO `tbl_listas` VALUES ('19', 'Niveles de estudio');
INSERT INTO `tbl_listas` VALUES ('20', 'Profesiones');

-- ----------------------------
-- Table structure for tbl_periodos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_periodos`;
CREATE TABLE `tbl_periodos` (
  `Pk_Id_Periodo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador principal del período',
  `Nombre` varchar(75) DEFAULT NULL COMMENT 'Período',
  PRIMARY KEY (`Pk_Id_Periodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_periodos
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_registros
-- ----------------------------
DROP TABLE IF EXISTS `tbl_registros`;
CREATE TABLE `tbl_registros` (
  `Pk_Id_Registro` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador principal del registro',
  `Codigo` varchar(15) NOT NULL COMMENT 'Código del registro',
  `Descripcion` text NOT NULL COMMENT 'Descripcion del registro',
  PRIMARY KEY (`Pk_Id_Registro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_registros
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_valores
-- ----------------------------
DROP TABLE IF EXISTS `tbl_valores`;
CREATE TABLE `tbl_valores` (
  `Pk_Id_Valor` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador principal del valor',
  `Nombre` text NOT NULL COMMENT 'Nombre del valor',
  `Observacion` text COMMENT 'Dato adicional de un valor',
  `Fk_Id_Lista` int(11) DEFAULT NULL COMMENT 'Identificador foráneo de la lista a la cual se asocia el valor',
  PRIMARY KEY (`Pk_Id_Valor`),
  KEY `Fk_Id_FLista` (`Fk_Id_Lista`),
  CONSTRAINT `tbl_valores_ibfk_1` FOREIGN KEY (`Fk_Id_Lista`) REFERENCES `tbl_listas` (`Pk_Id_Lista`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_valores
-- ----------------------------
INSERT INTO `tbl_valores` VALUES ('206', 'VINUS S.A.S.', null, '1');
INSERT INTO `tbl_valores` VALUES ('207', 'Ninguno', 'Orden 1', '19');
INSERT INTO `tbl_valores` VALUES ('208', 'Primaria', 'Orden 2', '19');
INSERT INTO `tbl_valores` VALUES ('209', 'Bachillerato', 'Orden 3', '19');
INSERT INTO `tbl_valores` VALUES ('210', 'Técnico', 'Orden 4', '19');
INSERT INTO `tbl_valores` VALUES ('211', 'Tecnólogo', 'Orden 5', null);
INSERT INTO `tbl_valores` VALUES ('212', 'Profesional', 'Orden 6', '19');
INSERT INTO `tbl_valores` VALUES ('213', 'Especialista', 'Orden 7', '19');
INSERT INTO `tbl_valores` VALUES ('214', 'Mágister', 'Orden 8', '19');
INSERT INTO `tbl_valores` VALUES ('215', 'Administrador de Sistemas', null, '20');
INSERT INTO `tbl_valores` VALUES ('216', 'Construcción', null, '20');
INSERT INTO `tbl_valores` VALUES ('217', 'Ambiental', null, '20');
