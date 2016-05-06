/*
Navicat MySQL Data Transfer

Source Server         : Vinus
Source Server Version : 50547
Source Host           : 192.168.1.245:3306
Source Database       : solicitudes

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-05-06 15:17:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auditoria
-- ----------------------------
DROP TABLE IF EXISTS `auditoria`;
CREATE TABLE `auditoria` (
  `Pk_Id_Auditoria` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la auditoria',
  `Fecha_Hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha y hora del registro de auditoría',
  `Fk_Id_Auditoria_Tipo` int(11) NOT NULL COMMENT 'Identificador foráneo del tipo de auditoria',
  `Fk_Id_Usuario` int(11) NOT NULL COMMENT 'Identificador foráneo del usuario de la base de datos hatoapps',
  `Fk_Id_Modulo` int(11) NOT NULL COMMENT 'Descripción del registro de auditoría',
  `Id` int(11) DEFAULT NULL COMMENT 'Este id corresponde al cada módulo',
  PRIMARY KEY (`Pk_Id_Auditoria`),
  KEY `Fk_Id_Auditoria_Tipo` (`Fk_Id_Auditoria_Tipo`),
  KEY `Fk_Id_Usuario` (`Fk_Id_Usuario`),
  KEY `Fk_Id_Modulo` (`Fk_Id_Modulo`),
  CONSTRAINT `auditoria_ibfk_1` FOREIGN KEY (`Fk_Id_Modulo`) REFERENCES `tbl_modulos` (`Pk_Id_Modulo`),
  CONSTRAINT `auditoria_ibfk_2` FOREIGN KEY (`Fk_Id_Auditoria_Tipo`) REFERENCES `tbl_auditoria_tipo` (`Pk_Id_Auditoria_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=65142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auditoria
-- ----------------------------
INSERT INTO `auditoria` VALUES ('64395', '2016-03-18 15:33:05', '2', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64396', '2016-03-18 15:33:08', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64397', '2016-03-18 15:38:03', '2', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64398', '2016-03-18 15:38:06', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64399', '2016-03-18 15:39:53', '2', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64400', '2016-03-18 15:39:55', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64401', '2016-03-18 15:47:32', '2', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64402', '2016-03-18 15:47:34', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64403', '2016-03-18 16:07:56', '1', '2', '3', null);
INSERT INTO `auditoria` VALUES ('64404', '2016-03-18 16:08:15', '2', '2', '3', null);
INSERT INTO `auditoria` VALUES ('64405', '2016-03-18 16:08:22', '1', '2', '3', null);
INSERT INTO `auditoria` VALUES ('64406', '2016-03-18 16:09:40', '2', '2', '3', null);
INSERT INTO `auditoria` VALUES ('64407', '2016-03-18 16:09:46', '1', '2', '3', null);
INSERT INTO `auditoria` VALUES ('64408', '2016-03-18 16:10:34', '2', '2', '3', null);
INSERT INTO `auditoria` VALUES ('64409', '2016-03-18 16:10:38', '1', '2', '3', null);
INSERT INTO `auditoria` VALUES ('64410', '2016-03-18 16:11:23', '2', '2', '3', null);
INSERT INTO `auditoria` VALUES ('64411', '2016-03-18 16:11:26', '1', '2', '3', null);
INSERT INTO `auditoria` VALUES ('64412', '2016-03-18 16:39:56', '2', '2', '3', null);
INSERT INTO `auditoria` VALUES ('64413', '2016-03-18 16:44:52', '1', '3', '3', null);
INSERT INTO `auditoria` VALUES ('64414', '2016-03-18 22:46:01', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64415', '2016-03-28 09:14:45', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64420', '2016-03-31 09:06:59', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64421', '2016-03-31 09:09:29', '2', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64422', '2016-03-31 09:09:35', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64423', '2016-03-31 09:11:13', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64424', '2016-03-31 09:11:16', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64425', '2016-03-31 09:13:34', '2', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64426', '2016-03-31 09:13:44', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64427', '2016-03-31 09:16:10', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64428', '2016-03-31 09:26:26', '2', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64429', '2016-03-31 12:20:31', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64430', '2016-04-02 08:29:32', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64431', '2016-04-05 07:10:22', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64432', '2016-04-06 15:12:56', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64433', '2016-04-07 08:24:23', '1', '3', '3', null);
INSERT INTO `auditoria` VALUES ('64434', '2016-04-07 08:43:05', '1', '6', '3', null);
INSERT INTO `auditoria` VALUES ('64435', '2016-04-07 08:43:14', '2', '6', '3', null);
INSERT INTO `auditoria` VALUES ('64436', '2016-04-07 11:10:44', '1', '6', '3', null);
INSERT INTO `auditoria` VALUES ('64437', '2016-04-07 11:13:33', '2', '6', '3', null);
INSERT INTO `auditoria` VALUES ('64438', '2016-04-07 11:13:44', '1', '6', '3', null);
INSERT INTO `auditoria` VALUES ('64439', '2016-04-07 11:22:26', '2', '6', '3', null);
INSERT INTO `auditoria` VALUES ('64440', '2016-04-08 08:34:19', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64441', '2016-04-11 10:06:40', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64442', '2016-04-14 16:40:14', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64443', '2016-04-14 16:41:12', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64444', '2016-04-15 11:04:31', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64445', '2016-04-15 11:10:41', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64446', '2016-04-15 12:25:56', '1', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64447', '2016-04-15 15:32:01', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64448', '2016-04-18 08:42:25', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64449', '2016-04-18 08:50:17', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64450', '2016-04-18 08:50:21', '1', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64451', '2016-04-18 09:30:45', '2', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64452', '2016-04-18 11:47:49', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64453', '2016-04-18 11:50:03', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64454', '2016-04-18 11:53:44', '24', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64455', '2016-04-18 13:57:32', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64456', '2016-04-18 13:57:45', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64457', '2016-04-18 13:59:17', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64458', '2016-04-18 16:16:18', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64459', '2016-04-19 07:23:23', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64460', '2016-04-19 11:56:29', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64461', '2016-04-19 12:00:58', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64462', '2016-04-19 12:01:11', '30', '1', '5', '6354');
INSERT INTO `auditoria` VALUES ('64463', '2016-04-19 15:56:46', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64464', '2016-04-20 08:55:05', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64465', '2016-04-20 09:17:00', '30', '5', '5', '6355');
INSERT INTO `auditoria` VALUES ('64466', '2016-04-20 09:53:52', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64467', '2016-04-20 10:00:30', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64468', '2016-04-20 10:00:40', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64469', '2016-04-20 10:06:54', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64470', '2016-04-20 10:19:29', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64471', '2016-04-20 10:19:41', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64472', '2016-04-20 10:28:41', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64473', '2016-04-20 10:35:22', '24', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64474', '2016-04-20 10:35:41', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64475', '2016-04-20 11:19:00', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64476', '2016-04-20 11:20:12', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64477', '2016-04-20 13:42:53', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64478', '2016-04-20 13:44:41', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64479', '2016-04-20 13:44:43', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64480', '2016-04-20 13:56:19', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64481', '2016-04-20 15:06:35', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64482', '2016-04-20 15:06:40', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64483', '2016-04-20 15:35:32', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64484', '2016-04-20 15:50:21', '46', '1', '2', '0');
INSERT INTO `auditoria` VALUES ('64485', '2016-04-20 15:50:24', '47', '1', '7', null);
INSERT INTO `auditoria` VALUES ('64486', '2016-04-20 16:06:54', '1', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64487', '2016-04-20 16:07:59', '46', '7', '2', '0');
INSERT INTO `auditoria` VALUES ('64488', '2016-04-20 16:08:20', '2', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64489', '2016-04-20 16:08:32', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64490', '2016-04-20 16:13:40', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64491', '2016-04-20 16:15:31', '47', '5', '7', null);
INSERT INTO `auditoria` VALUES ('64492', '2016-04-20 16:16:01', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64493', '2016-04-20 16:16:34', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64494', '2016-04-20 16:20:22', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64495', '2016-04-20 16:23:57', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64496', '2016-04-20 16:24:30', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64497', '2016-04-20 16:24:58', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64498', '2016-04-20 16:25:22', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64499', '2016-04-20 16:30:13', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64500', '2016-04-20 16:31:12', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64501', '2016-04-20 16:31:35', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64502', '2016-04-20 17:51:18', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64503', '2016-04-22 10:48:22', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64504', '2016-04-22 10:52:17', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64505', '2016-04-22 10:55:04', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64506', '2016-04-22 11:02:33', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64507', '2016-04-22 11:04:17', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64508', '2016-04-22 11:04:56', '47', '5', '7', null);
INSERT INTO `auditoria` VALUES ('64509', '2016-04-22 11:07:08', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64510', '2016-04-22 11:11:47', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64511', '2016-04-22 11:13:22', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64512', '2016-04-22 11:33:28', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64513', '2016-04-22 11:36:10', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64514', '2016-04-22 11:36:52', '47', '5', '7', null);
INSERT INTO `auditoria` VALUES ('64515', '2016-04-22 11:39:26', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64516', '2016-04-22 11:49:31', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64517', '2016-04-22 11:49:42', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64518', '2016-04-22 15:22:52', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64519', '2016-04-22 15:38:20', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64520', '2016-04-22 15:54:00', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64521', '2016-04-22 15:57:06', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64522', '2016-04-22 16:03:19', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64523', '2016-04-23 08:23:43', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64524', '2016-04-23 08:34:09', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64525', '2016-04-23 08:39:28', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64526', '2016-04-23 08:45:14', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64527', '2016-04-23 08:49:02', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64528', '2016-04-23 09:05:16', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64529', '2016-04-23 09:09:41', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64530', '2016-04-23 09:19:43', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64531', '2016-04-23 09:23:02', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64532', '2016-04-23 09:25:57', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64533', '2016-04-23 09:27:46', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64534', '2016-04-23 09:34:43', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64535', '2016-04-23 09:39:33', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64536', '2016-04-23 09:44:10', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64537', '2016-04-23 09:46:23', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64538', '2016-04-23 10:07:56', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64539', '2016-04-23 10:44:47', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64540', '2016-04-23 11:09:35', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64541', '2016-04-23 11:13:29', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64542', '2016-04-23 11:20:31', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64543', '2016-04-23 11:22:42', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64544', '2016-04-23 11:41:54', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64545', '2016-04-23 11:44:57', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64546', '2016-04-23 11:49:31', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64547', '2016-04-23 12:01:18', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64548', '2016-04-23 12:04:06', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64549', '2016-04-23 12:05:18', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64550', '2016-04-23 12:14:38', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64551', '2016-04-23 12:16:35', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64552', '2016-04-23 12:38:34', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64553', '2016-04-23 12:42:43', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64554', '2016-04-23 13:02:40', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64555', '2016-04-23 13:06:31', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64556', '2016-04-23 13:10:04', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64557', '2016-04-23 13:12:52', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64558', '2016-04-23 13:26:35', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64559', '2016-04-23 13:30:30', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64560', '2016-04-23 13:31:04', '47', '5', '7', null);
INSERT INTO `auditoria` VALUES ('64561', '2016-04-23 13:33:16', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64562', '2016-04-23 13:38:33', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64563', '2016-04-23 13:42:05', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64564', '2016-04-23 13:45:01', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64565', '2016-04-23 13:51:41', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64566', '2016-04-23 13:52:43', '47', '5', '7', null);
INSERT INTO `auditoria` VALUES ('64567', '2016-04-23 13:55:01', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64568', '2016-04-23 13:58:44', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64569', '2016-04-25 09:34:10', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64570', '2016-04-25 10:08:22', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64571', '2016-04-25 10:20:17', '30', '1', '5', '6354');
INSERT INTO `auditoria` VALUES ('64572', '2016-04-25 10:20:37', '30', '1', '5', '6354');
INSERT INTO `auditoria` VALUES ('64573', '2016-04-25 10:24:35', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64574', '2016-04-25 10:25:34', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64575', '2016-04-25 10:29:12', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64576', '2016-04-25 10:30:31', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64577', '2016-04-25 10:33:18', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64578', '2016-04-25 10:34:22', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64579', '2016-04-25 10:35:46', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64580', '2016-04-25 10:37:02', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64581', '2016-04-25 10:42:09', '22', '1', '5', '0');
INSERT INTO `auditoria` VALUES ('64582', '2016-04-25 10:46:59', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64583', '2016-04-25 10:48:59', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64584', '2016-04-25 10:49:26', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64585', '2016-04-25 11:08:06', '1', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64586', '2016-04-25 11:27:35', '2', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64587', '2016-04-25 11:27:46', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64588', '2016-04-25 11:56:13', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64589', '2016-04-25 11:58:57', '47', '1', '7', null);
INSERT INTO `auditoria` VALUES ('64590', '2016-04-25 11:59:28', '46', '1', '2', '0');
INSERT INTO `auditoria` VALUES ('64591', '2016-04-25 17:59:59', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64592', '2016-04-26 07:57:48', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64593', '2016-04-26 08:47:50', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64594', '2016-04-26 08:50:10', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64595', '2016-04-26 08:52:09', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64596', '2016-04-26 09:32:38', '30', '5', '5', '6360');
INSERT INTO `auditoria` VALUES ('64597', '2016-04-26 09:33:20', '30', '5', '5', '6372');
INSERT INTO `auditoria` VALUES ('64598', '2016-04-26 09:34:21', '30', '5', '5', '6396');
INSERT INTO `auditoria` VALUES ('64599', '2016-04-26 09:35:51', '30', '5', '5', '6396');
INSERT INTO `auditoria` VALUES ('64600', '2016-04-26 09:39:38', '30', '5', '5', '6358');
INSERT INTO `auditoria` VALUES ('64601', '2016-04-26 09:41:19', '30', '5', '5', '6368');
INSERT INTO `auditoria` VALUES ('64602', '2016-04-26 09:42:47', '30', '5', '5', '6357');
INSERT INTO `auditoria` VALUES ('64603', '2016-04-26 09:44:17', '30', '5', '5', '6377');
INSERT INTO `auditoria` VALUES ('64604', '2016-04-26 09:46:16', '30', '5', '5', '6356');
INSERT INTO `auditoria` VALUES ('64605', '2016-04-26 10:56:45', '30', '5', '5', '6379');
INSERT INTO `auditoria` VALUES ('64606', '2016-04-26 10:57:32', '30', '5', '5', '6383');
INSERT INTO `auditoria` VALUES ('64607', '2016-04-26 10:58:25', '30', '5', '5', '6380');
INSERT INTO `auditoria` VALUES ('64608', '2016-04-26 10:58:50', '30', '5', '5', '6374');
INSERT INTO `auditoria` VALUES ('64609', '2016-04-26 10:59:17', '30', '5', '5', '6374');
INSERT INTO `auditoria` VALUES ('64610', '2016-04-26 10:59:48', '30', '5', '5', '6378');
INSERT INTO `auditoria` VALUES ('64611', '2016-04-26 11:00:43', '30', '5', '5', '6381');
INSERT INTO `auditoria` VALUES ('64612', '2016-04-26 11:01:15', '30', '5', '5', '6363');
INSERT INTO `auditoria` VALUES ('64613', '2016-04-26 11:01:52', '30', '5', '5', '6385');
INSERT INTO `auditoria` VALUES ('64614', '2016-04-26 11:03:02', '30', '5', '5', '6375');
INSERT INTO `auditoria` VALUES ('64615', '2016-04-26 11:04:07', '30', '5', '5', '6382');
INSERT INTO `auditoria` VALUES ('64616', '2016-04-26 11:04:58', '30', '5', '5', '6367');
INSERT INTO `auditoria` VALUES ('64617', '2016-04-26 11:06:03', '30', '5', '5', '6370');
INSERT INTO `auditoria` VALUES ('64618', '2016-04-26 11:07:11', '30', '5', '5', '6370');
INSERT INTO `auditoria` VALUES ('64619', '2016-04-26 11:09:45', '30', '5', '5', '6395');
INSERT INTO `auditoria` VALUES ('64620', '2016-04-26 11:10:13', '30', '5', '5', '6366');
INSERT INTO `auditoria` VALUES ('64621', '2016-04-26 11:10:50', '30', '5', '5', '6369');
INSERT INTO `auditoria` VALUES ('64622', '2016-04-26 11:11:16', '30', '5', '5', '6362');
INSERT INTO `auditoria` VALUES ('64623', '2016-04-26 11:11:42', '30', '5', '5', '6364');
INSERT INTO `auditoria` VALUES ('64624', '2016-04-26 11:12:11', '30', '5', '5', '6361');
INSERT INTO `auditoria` VALUES ('64625', '2016-04-26 11:16:07', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64626', '2016-04-26 11:18:15', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64627', '2016-04-26 11:25:37', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64628', '2016-04-26 11:27:26', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64629', '2016-04-26 11:30:13', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64630', '2016-04-26 11:31:49', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64631', '2016-04-26 11:35:00', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64632', '2016-04-26 11:39:25', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64633', '2016-04-26 11:46:40', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64634', '2016-04-26 11:48:59', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64635', '2016-04-26 11:53:42', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64636', '2016-04-26 11:57:51', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64637', '2016-04-26 14:46:15', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64638', '2016-04-26 14:51:28', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64639', '2016-04-26 14:53:46', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64640', '2016-04-26 14:59:17', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64641', '2016-04-26 15:02:26', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64642', '2016-04-26 15:32:03', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64643', '2016-04-26 15:36:40', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64644', '2016-04-26 15:47:18', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64645', '2016-04-26 15:50:18', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64646', '2016-04-26 15:53:08', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64647', '2016-04-26 15:56:00', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64648', '2016-04-26 16:01:17', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64649', '2016-04-26 16:06:56', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64650', '2016-04-26 16:23:59', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64651', '2016-04-26 16:31:57', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64652', '2016-04-26 16:44:23', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64653', '2016-04-26 16:44:49', '30', '5', '5', '6410');
INSERT INTO `auditoria` VALUES ('64654', '2016-04-26 16:46:59', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64655', '2016-04-26 16:48:27', '30', '5', '5', '6409');
INSERT INTO `auditoria` VALUES ('64656', '2016-04-26 17:19:29', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64657', '2016-04-26 17:22:06', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64658', '2016-04-26 17:30:03', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64659', '2016-04-26 17:37:18', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64660', '2016-04-26 17:38:40', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64661', '2016-04-26 17:42:46', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64662', '2016-04-26 19:58:43', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64663', '2016-04-27 10:21:23', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64664', '2016-04-27 10:21:25', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64665', '2016-04-28 08:52:52', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64666', '2016-04-28 09:02:12', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64667', '2016-04-28 09:04:15', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64668', '2016-04-28 09:09:11', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64669', '2016-04-28 09:11:01', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64670', '2016-04-28 09:12:11', '30', '5', '5', '6413');
INSERT INTO `auditoria` VALUES ('64671', '2016-04-28 09:23:27', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64672', '2016-04-28 09:25:25', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64673', '2016-04-28 09:29:53', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64674', '2016-04-28 09:32:44', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64675', '2016-04-28 09:40:50', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64676', '2016-04-28 09:42:33', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64677', '2016-04-28 09:56:11', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64678', '2016-04-28 10:08:46', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64679', '2016-04-28 10:10:57', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64680', '2016-04-28 10:14:57', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64681', '2016-04-28 10:18:33', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64682', '2016-04-28 10:30:17', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64683', '2016-04-28 10:33:51', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64684', '2016-04-28 10:50:28', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64685', '2016-04-28 11:08:51', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64686', '2016-04-28 11:20:52', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64687', '2016-04-28 11:34:39', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64688', '2016-04-28 11:38:11', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64689', '2016-04-28 11:47:25', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64690', '2016-04-28 11:49:11', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64691', '2016-04-28 11:53:47', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64692', '2016-04-28 11:55:51', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64693', '2016-04-28 11:59:58', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64694', '2016-04-28 12:02:00', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64695', '2016-04-28 14:27:40', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64696', '2016-04-28 14:33:16', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64697', '2016-04-28 14:46:17', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64698', '2016-04-28 14:48:09', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64699', '2016-04-28 14:50:43', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64700', '2016-04-28 14:53:41', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64701', '2016-04-28 15:39:30', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64702', '2016-04-28 15:41:54', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64703', '2016-04-28 16:03:03', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64704', '2016-04-28 16:04:05', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64705', '2016-04-28 16:43:19', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64706', '2016-04-28 16:55:32', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64707', '2016-04-28 17:52:27', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64708', '2016-04-29 08:27:41', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64709', '2016-04-29 08:33:18', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64710', '2016-04-29 08:34:36', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64711', '2016-04-29 08:35:59', '47', '5', '7', null);
INSERT INTO `auditoria` VALUES ('64712', '2016-04-29 08:38:15', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64713', '2016-04-29 08:39:54', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64714', '2016-04-29 08:45:06', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64715', '2016-04-29 08:48:44', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64716', '2016-04-29 09:04:30', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64717', '2016-04-29 09:07:01', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64718', '2016-04-29 09:30:47', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64719', '2016-04-29 09:35:24', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64720', '2016-04-29 09:51:51', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64721', '2016-04-29 09:56:26', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64722', '2016-04-29 10:04:04', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64723', '2016-04-29 10:24:48', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64724', '2016-04-29 10:51:06', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64725', '2016-04-29 11:07:59', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64726', '2016-04-29 11:09:19', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64727', '2016-04-29 11:19:24', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64728', '2016-04-29 11:21:12', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64729', '2016-04-29 13:26:25', '1', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64730', '2016-04-29 14:02:12', '1', '3', '3', null);
INSERT INTO `auditoria` VALUES ('64731', '2016-04-29 14:04:09', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64732', '2016-04-29 14:05:00', '1', '3', '3', null);
INSERT INTO `auditoria` VALUES ('64733', '2016-04-29 15:27:04', '1', '6', '3', null);
INSERT INTO `auditoria` VALUES ('64734', '2016-04-29 15:40:59', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64735', '2016-04-29 15:59:24', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64736', '2016-05-02 07:35:06', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64737', '2016-05-02 07:36:15', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64738', '2016-05-02 09:32:28', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64739', '2016-05-02 09:33:10', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64740', '2016-05-02 09:44:07', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64741', '2016-05-02 10:13:52', '1', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64742', '2016-05-02 10:13:56', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64743', '2016-05-02 10:13:57', '11', '7', '1', null);
INSERT INTO `auditoria` VALUES ('64744', '2016-05-02 10:18:51', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64745', '2016-05-02 10:19:02', '11', '7', '1', null);
INSERT INTO `auditoria` VALUES ('64746', '2016-05-02 10:19:24', '11', '7', '1', null);
INSERT INTO `auditoria` VALUES ('64747', '2016-05-02 10:19:57', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64748', '2016-05-02 10:45:28', '2', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64749', '2016-05-02 16:01:20', '1', '6', '3', null);
INSERT INTO `auditoria` VALUES ('64750', '2016-05-02 17:37:20', '1', '30', '3', null);
INSERT INTO `auditoria` VALUES ('64751', '2016-05-03 07:43:47', '1', '3', '3', null);
INSERT INTO `auditoria` VALUES ('64752', '2016-05-03 07:54:21', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64753', '2016-05-03 09:11:11', '1', '30', '3', null);
INSERT INTO `auditoria` VALUES ('64754', '2016-05-03 09:18:54', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64755', '2016-05-03 09:23:37', '30', '30', '5', '6440');
INSERT INTO `auditoria` VALUES ('64756', '2016-05-03 09:25:24', '30', '30', '5', '6440');
INSERT INTO `auditoria` VALUES ('64757', '2016-05-03 09:35:31', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64758', '2016-05-03 09:37:02', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64759', '2016-05-03 09:37:06', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64760', '2016-05-03 09:40:15', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64761', '2016-05-03 09:40:19', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64762', '2016-05-03 09:41:50', '30', '30', '5', '6441');
INSERT INTO `auditoria` VALUES ('64763', '2016-05-03 09:43:41', '30', '30', '5', '6441');
INSERT INTO `auditoria` VALUES ('64764', '2016-05-03 09:45:42', '1', '6', '3', null);
INSERT INTO `auditoria` VALUES ('64765', '2016-05-03 09:47:47', '1', '31', '3', null);
INSERT INTO `auditoria` VALUES ('64766', '2016-05-03 09:48:37', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64767', '2016-05-03 09:50:45', '30', '30', '5', '6440');
INSERT INTO `auditoria` VALUES ('64768', '2016-05-03 09:56:06', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64769', '2016-05-03 10:00:07', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64770', '2016-05-03 10:02:32', '30', '30', '5', '6440');
INSERT INTO `auditoria` VALUES ('64771', '2016-05-03 10:05:48', '30', '30', '5', '6441');
INSERT INTO `auditoria` VALUES ('64772', '2016-05-03 10:06:37', '30', '30', '5', '6442');
INSERT INTO `auditoria` VALUES ('64773', '2016-05-03 10:07:13', '30', '30', '5', '6443');
INSERT INTO `auditoria` VALUES ('64774', '2016-05-03 10:07:19', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64775', '2016-05-03 10:08:27', '30', '30', '5', '6444');
INSERT INTO `auditoria` VALUES ('64776', '2016-05-03 10:22:11', '30', '31', '5', '6445');
INSERT INTO `auditoria` VALUES ('64777', '2016-05-03 10:22:31', '30', '31', '5', '6445');
INSERT INTO `auditoria` VALUES ('64778', '2016-05-03 10:22:37', '30', '31', '5', '6445');
INSERT INTO `auditoria` VALUES ('64779', '2016-05-03 10:22:39', '30', '31', '5', '6445');
INSERT INTO `auditoria` VALUES ('64780', '2016-05-03 10:23:49', '30', '31', '5', '6445');
INSERT INTO `auditoria` VALUES ('64781', '2016-05-03 10:24:29', '30', '31', '5', '6445');
INSERT INTO `auditoria` VALUES ('64782', '2016-05-03 10:24:31', '30', '31', '5', '6445');
INSERT INTO `auditoria` VALUES ('64783', '2016-05-03 10:32:18', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64784', '2016-05-03 10:40:01', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64785', '2016-05-03 10:46:03', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64786', '2016-05-03 10:51:27', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64787', '2016-05-03 10:53:17', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64788', '2016-05-03 10:56:13', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64789', '2016-05-03 10:58:24', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64790', '2016-05-03 10:59:22', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64791', '2016-05-03 11:08:01', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64792', '2016-05-03 11:12:37', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64793', '2016-05-03 11:14:35', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64794', '2016-05-03 11:23:26', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64795', '2016-05-03 11:30:09', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64796', '2016-05-03 11:38:21', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64797', '2016-05-03 11:43:38', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64798', '2016-05-03 11:46:51', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64799', '2016-05-03 11:49:44', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64800', '2016-05-03 11:50:05', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64801', '2016-05-03 11:54:48', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64802', '2016-05-03 11:56:42', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64803', '2016-05-03 11:56:54', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64804', '2016-05-03 12:01:29', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64805', '2016-05-03 12:03:57', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64806', '2016-05-03 12:05:29', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64807', '2016-05-03 12:07:53', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64808', '2016-05-03 12:09:10', '2', '30', '3', null);
INSERT INTO `auditoria` VALUES ('64809', '2016-05-03 12:10:51', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64810', '2016-05-03 12:12:21', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64811', '2016-05-03 12:16:20', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64812', '2016-05-03 12:16:50', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64813', '2016-05-03 12:19:40', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64814', '2016-05-03 12:21:38', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64815', '2016-05-03 12:24:03', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64816', '2016-05-03 12:24:49', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64817', '2016-05-03 12:25:34', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64818', '2016-05-03 12:27:36', '47', '31', '7', null);
INSERT INTO `auditoria` VALUES ('64819', '2016-05-03 12:28:07', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64820', '2016-05-03 12:28:30', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64821', '2016-05-03 14:00:09', '1', '31', '3', null);
INSERT INTO `auditoria` VALUES ('64822', '2016-05-03 14:11:47', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64823', '2016-05-03 14:17:04', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64824', '2016-05-03 14:23:01', '30', '31', '5', '6460');
INSERT INTO `auditoria` VALUES ('64825', '2016-05-03 14:23:10', '30', '31', '5', '6460');
INSERT INTO `auditoria` VALUES ('64826', '2016-05-03 14:28:06', '30', '31', '5', '6460');
INSERT INTO `auditoria` VALUES ('64827', '2016-05-03 14:33:15', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64828', '2016-05-03 14:43:50', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64829', '2016-05-03 15:11:17', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64830', '2016-05-03 15:16:29', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64831', '2016-05-03 15:25:08', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64832', '2016-05-03 15:28:48', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64833', '2016-05-03 15:34:17', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64834', '2016-05-03 15:37:53', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64835', '2016-05-03 15:49:48', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64836', '2016-05-03 15:50:05', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64837', '2016-05-03 15:54:46', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64838', '2016-05-03 15:56:29', '30', '31', '5', '6463');
INSERT INTO `auditoria` VALUES ('64839', '2016-05-03 15:57:07', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64840', '2016-05-03 15:57:09', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64841', '2016-05-03 15:59:13', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64842', '2016-05-03 15:59:29', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64843', '2016-05-03 16:00:14', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64844', '2016-05-03 16:01:52', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64845', '2016-05-03 16:01:54', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64846', '2016-05-03 16:02:12', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64847', '2016-05-03 16:02:52', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64848', '2016-05-03 16:03:53', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64849', '2016-05-03 16:04:27', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64850', '2016-05-03 16:04:42', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64851', '2016-05-03 16:06:49', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64852', '2016-05-03 16:07:22', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64853', '2016-05-03 21:25:20', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64854', '2016-05-04 08:46:07', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64855', '2016-05-04 09:14:55', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64856', '2016-05-04 09:15:54', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64857', '2016-05-04 09:29:57', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64858', '2016-05-04 09:34:28', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64859', '2016-05-04 09:39:50', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64860', '2016-05-04 09:39:51', '1', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64861', '2016-05-04 09:40:07', '11', '7', '1', null);
INSERT INTO `auditoria` VALUES ('64862', '2016-05-04 09:40:40', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64863', '2016-05-04 09:42:27', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64864', '2016-05-04 09:43:46', '11', '7', '1', null);
INSERT INTO `auditoria` VALUES ('64865', '2016-05-04 09:45:01', '11', '1', '1', null);
INSERT INTO `auditoria` VALUES ('64866', '2016-05-04 09:49:21', '2', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64867', '2016-05-04 09:49:31', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64868', '2016-05-04 09:50:36', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64869', '2016-05-04 09:59:12', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64870', '2016-05-04 09:59:33', '1', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64871', '2016-05-04 10:00:18', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64872', '2016-05-04 10:11:43', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64873', '2016-05-04 10:12:34', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64874', '2016-05-04 10:16:22', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64875', '2016-05-04 10:20:55', '1', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64876', '2016-05-04 10:21:05', '11', '7', '1', null);
INSERT INTO `auditoria` VALUES ('64877', '2016-05-04 10:21:17', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64878', '2016-05-04 11:10:05', '2', '7', '3', null);
INSERT INTO `auditoria` VALUES ('64879', '2016-05-04 14:57:56', '1', '31', '3', null);
INSERT INTO `auditoria` VALUES ('64880', '2016-05-04 15:18:50', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64881', '2016-05-04 15:24:28', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64882', '2016-05-04 15:27:43', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64883', '2016-05-04 15:32:28', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64884', '2016-05-04 15:34:16', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('64885', '2016-05-04 15:35:44', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('64886', '2016-05-04 15:42:17', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('64887', '2016-05-04 15:42:28', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64888', '2016-05-04 15:47:00', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64889', '2016-05-04 15:50:14', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64890', '2016-05-04 15:53:23', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64891', '2016-05-04 15:58:51', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64892', '2016-05-04 16:00:23', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64893', '2016-05-04 16:04:21', '2', '1', '3', null);
INSERT INTO `auditoria` VALUES ('64894', '2016-05-04 16:04:33', '1', '32', '3', null);
INSERT INTO `auditoria` VALUES ('64895', '2016-05-04 16:16:29', '30', '32', '5', '5837');
INSERT INTO `auditoria` VALUES ('64896', '2016-05-04 16:16:33', '30', '32', '5', '5837');
INSERT INTO `auditoria` VALUES ('64897', '2016-05-04 16:16:41', '24', '32', '1', null);
INSERT INTO `auditoria` VALUES ('64898', '2016-05-04 16:17:36', '2', '32', '3', null);
INSERT INTO `auditoria` VALUES ('64899', '2016-05-04 16:53:07', '1', '30', '3', null);
INSERT INTO `auditoria` VALUES ('64900', '2016-05-04 16:56:38', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64901', '2016-05-04 17:00:14', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64902', '2016-05-04 17:06:50', '2', '31', '3', null);
INSERT INTO `auditoria` VALUES ('64903', '2016-05-04 17:12:26', '1', '31', '3', null);
INSERT INTO `auditoria` VALUES ('64904', '2016-05-04 17:13:46', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64905', '2016-05-04 17:18:09', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64906', '2016-05-04 17:19:38', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64907', '2016-05-04 17:27:04', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64908', '2016-05-04 17:29:30', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64909', '2016-05-04 17:30:24', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64910', '2016-05-04 17:30:50', '30', '30', '5', '6487');
INSERT INTO `auditoria` VALUES ('64911', '2016-05-04 17:33:17', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64912', '2016-05-04 17:37:56', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64913', '2016-05-04 17:41:00', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64914', '2016-05-04 17:41:37', '2', '31', '3', null);
INSERT INTO `auditoria` VALUES ('64915', '2016-05-04 17:42:08', '1', '31', '3', null);
INSERT INTO `auditoria` VALUES ('64916', '2016-05-04 17:43:43', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64917', '2016-05-04 17:44:18', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64918', '2016-05-04 17:44:57', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64919', '2016-05-04 17:47:32', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('64920', '2016-05-04 17:48:51', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64921', '2016-05-04 17:51:34', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64922', '2016-05-04 17:54:48', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64923', '2016-05-04 17:56:36', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64924', '2016-05-04 17:59:15', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64925', '2016-05-04 18:03:42', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64926', '2016-05-04 18:08:50', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64927', '2016-05-04 18:11:27', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64928', '2016-05-04 18:13:16', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64929', '2016-05-04 18:14:52', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64930', '2016-05-04 19:27:27', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64931', '2016-05-04 19:28:42', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64932', '2016-05-04 19:31:12', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64933', '2016-05-04 19:32:02', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64934', '2016-05-04 19:33:10', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64935', '2016-05-05 09:30:04', '1', '30', '3', null);
INSERT INTO `auditoria` VALUES ('64936', '2016-05-05 09:31:06', '47', '30', '7', null);
INSERT INTO `auditoria` VALUES ('64937', '2016-05-05 09:31:31', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64938', '2016-05-05 09:40:26', '1', '31', '3', null);
INSERT INTO `auditoria` VALUES ('64939', '2016-05-05 09:41:19', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64940', '2016-05-05 09:42:33', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64941', '2016-05-05 09:44:49', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64942', '2016-05-05 09:45:40', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64943', '2016-05-05 09:47:02', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64944', '2016-05-05 09:48:50', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64945', '2016-05-05 09:51:53', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64946', '2016-05-05 09:52:06', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64947', '2016-05-05 09:53:44', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64948', '2016-05-05 09:53:47', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64949', '2016-05-05 09:54:12', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64950', '2016-05-05 09:54:19', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64951', '2016-05-05 09:58:56', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64952', '2016-05-05 09:59:10', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64953', '2016-05-05 10:00:32', '30', '30', '5', '6503');
INSERT INTO `auditoria` VALUES ('64954', '2016-05-05 10:00:48', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64955', '2016-05-05 10:01:16', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64956', '2016-05-05 10:01:33', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64957', '2016-05-05 10:02:36', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64958', '2016-05-05 10:22:30', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64959', '2016-05-05 10:25:58', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64960', '2016-05-05 10:41:17', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64961', '2016-05-05 10:43:48', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64962', '2016-05-05 10:47:12', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64963', '2016-05-05 10:48:43', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64964', '2016-05-05 10:52:39', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64965', '2016-05-05 10:54:13', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64966', '2016-05-05 10:54:56', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64967', '2016-05-05 10:58:59', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64968', '2016-05-05 11:03:30', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64969', '2016-05-05 11:09:37', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64970', '2016-05-05 11:10:17', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64971', '2016-05-05 11:11:20', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64972', '2016-05-05 11:14:01', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64973', '2016-05-05 11:15:19', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64974', '2016-05-05 11:23:24', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64975', '2016-05-05 11:27:17', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64976', '2016-05-05 11:27:46', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64977', '2016-05-05 11:32:23', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64978', '2016-05-05 11:33:02', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64979', '2016-05-05 11:34:23', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64980', '2016-05-05 11:34:45', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64981', '2016-05-05 11:35:15', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64982', '2016-05-05 11:37:00', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64983', '2016-05-05 11:37:23', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64984', '2016-05-05 11:37:40', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('64985', '2016-05-05 11:39:39', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64986', '2016-05-05 11:39:45', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64987', '2016-05-05 11:39:48', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64988', '2016-05-05 11:40:39', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('64989', '2016-05-05 11:41:49', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64990', '2016-05-05 11:44:34', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64991', '2016-05-05 11:48:59', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64992', '2016-05-05 11:51:19', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64993', '2016-05-05 11:53:26', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64994', '2016-05-05 11:55:30', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64995', '2016-05-05 11:58:07', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64996', '2016-05-05 12:00:06', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64997', '2016-05-05 12:01:56', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('64998', '2016-05-05 14:18:39', '2', '0', '3', null);
INSERT INTO `auditoria` VALUES ('64999', '2016-05-05 14:18:45', '1', '31', '3', null);
INSERT INTO `auditoria` VALUES ('65000', '2016-05-05 14:21:51', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65001', '2016-05-05 14:24:51', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('65002', '2016-05-05 14:25:22', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65003', '2016-05-05 14:25:34', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65004', '2016-05-05 14:26:31', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65005', '2016-05-05 14:27:42', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65006', '2016-05-05 14:28:37', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65007', '2016-05-05 14:30:22', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65008', '2016-05-05 14:31:41', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65009', '2016-05-05 14:33:19', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65010', '2016-05-05 14:36:32', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65011', '2016-05-05 14:37:51', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65012', '2016-05-05 14:38:30', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65013', '2016-05-05 14:41:42', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65014', '2016-05-05 14:42:09', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65015', '2016-05-05 14:42:44', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65016', '2016-05-05 14:43:31', '30', '5', '5', '6539');
INSERT INTO `auditoria` VALUES ('65017', '2016-05-05 14:43:37', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65018', '2016-05-05 14:43:56', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65019', '2016-05-05 14:44:50', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65020', '2016-05-05 14:45:47', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65021', '2016-05-05 14:46:31', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65022', '2016-05-05 15:03:40', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65023', '2016-05-05 15:04:20', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65024', '2016-05-05 15:05:44', '1', '30', '3', null);
INSERT INTO `auditoria` VALUES ('65025', '2016-05-05 15:11:56', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('65026', '2016-05-05 15:15:04', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65027', '2016-05-05 15:15:34', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65028', '2016-05-05 15:16:12', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('65029', '2016-05-05 15:18:36', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65030', '2016-05-05 15:19:24', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65031', '2016-05-05 15:19:52', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('65032', '2016-05-05 15:20:31', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('65033', '2016-05-05 15:22:34', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65034', '2016-05-05 15:22:34', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('65035', '2016-05-05 15:22:39', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('65036', '2016-05-05 15:22:41', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65037', '2016-05-05 15:22:45', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('65038', '2016-05-05 15:23:11', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65039', '2016-05-05 15:25:55', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('65040', '2016-05-05 15:28:07', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('65041', '2016-05-05 15:30:01', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65042', '2016-05-05 15:30:35', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('65043', '2016-05-05 15:30:54', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('65044', '2016-05-05 15:31:42', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('65045', '2016-05-05 15:32:01', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('65046', '2016-05-05 15:32:08', '46', '30', '2', '0');
INSERT INTO `auditoria` VALUES ('65047', '2016-05-05 15:32:26', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65048', '2016-05-05 15:39:52', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65049', '2016-05-05 15:39:58', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65050', '2016-05-05 15:40:34', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65051', '2016-05-05 15:41:33', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65052', '2016-05-05 15:42:21', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('65053', '2016-05-05 15:43:08', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65054', '2016-05-05 15:44:39', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65055', '2016-05-05 15:45:58', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65056', '2016-05-05 15:46:02', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('65057', '2016-05-05 15:48:53', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65058', '2016-05-05 15:50:42', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65059', '2016-05-05 15:51:35', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('65060', '2016-05-05 15:52:21', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65061', '2016-05-05 15:56:49', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('65062', '2016-05-05 15:56:57', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65063', '2016-05-05 15:58:22', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65064', '2016-05-05 15:59:53', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65065', '2016-05-05 16:00:18', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('65066', '2016-05-05 16:01:45', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65067', '2016-05-05 16:03:24', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65068', '2016-05-05 16:04:59', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65069', '2016-05-05 16:05:02', '22', '31', '5', '0');
INSERT INTO `auditoria` VALUES ('65070', '2016-05-05 16:07:14', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65071', '2016-05-05 16:08:22', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65072', '2016-05-05 16:10:30', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65073', '2016-05-05 16:12:55', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65074', '2016-05-05 16:16:46', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65075', '2016-05-05 16:18:48', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65076', '2016-05-05 16:21:13', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65077', '2016-05-05 16:21:36', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65078', '2016-05-05 16:22:19', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65079', '2016-05-05 16:24:12', '22', '30', '5', '0');
INSERT INTO `auditoria` VALUES ('65080', '2016-05-05 16:24:51', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65081', '2016-05-05 16:25:35', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65082', '2016-05-05 16:28:47', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65083', '2016-05-05 16:30:38', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65084', '2016-05-05 16:31:12', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65085', '2016-05-05 16:33:32', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65086', '2016-05-05 16:36:14', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65087', '2016-05-05 16:36:24', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65088', '2016-05-05 16:38:08', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65089', '2016-05-05 16:38:39', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65090', '2016-05-05 16:40:35', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65091', '2016-05-05 16:41:33', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65092', '2016-05-05 16:43:15', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65093', '2016-05-05 16:44:14', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65094', '2016-05-05 16:44:15', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65095', '2016-05-05 16:45:09', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65096', '2016-05-05 16:45:26', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65097', '2016-05-05 16:45:41', '46', '31', '2', '0');
INSERT INTO `auditoria` VALUES ('65098', '2016-05-05 16:48:05', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65099', '2016-05-05 16:48:33', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65100', '2016-05-05 16:51:04', '2', '31', '3', null);
INSERT INTO `auditoria` VALUES ('65101', '2016-05-05 17:14:24', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65102', '2016-05-05 17:14:48', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65103', '2016-05-05 17:21:06', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65104', '2016-05-05 17:24:30', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65105', '2016-05-05 17:27:40', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65106', '2016-05-05 17:28:13', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65107', '2016-05-05 17:30:37', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('65108', '2016-05-06 08:31:36', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('65109', '2016-05-06 08:38:27', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65110', '2016-05-06 08:39:56', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65111', '2016-05-06 08:50:19', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65112', '2016-05-06 08:53:03', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65113', '2016-05-06 08:56:16', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65114', '2016-05-06 09:00:23', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65115', '2016-05-06 09:03:25', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65116', '2016-05-06 09:05:35', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65117', '2016-05-06 09:15:48', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65118', '2016-05-06 09:17:54', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65119', '2016-05-06 09:24:44', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65120', '2016-05-06 09:28:51', '2', '5', '3', null);
INSERT INTO `auditoria` VALUES ('65121', '2016-05-06 10:11:06', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('65122', '2016-05-06 13:23:49', '1', '1', '3', null);
INSERT INTO `auditoria` VALUES ('65123', '2016-05-06 14:09:47', '1', '5', '3', null);
INSERT INTO `auditoria` VALUES ('65124', '2016-05-06 14:09:57', '11', '5', '1', null);
INSERT INTO `auditoria` VALUES ('65125', '2016-05-06 14:29:09', '11', '5', '1', null);
INSERT INTO `auditoria` VALUES ('65126', '2016-05-06 14:33:18', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65127', '2016-05-06 14:38:20', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65128', '2016-05-06 14:42:50', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65129', '2016-05-06 14:44:04', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65130', '2016-05-06 14:45:56', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65131', '2016-05-06 14:47:47', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65132', '2016-05-06 14:51:58', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65133', '2016-05-06 14:55:50', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65134', '2016-05-06 14:58:28', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65135', '2016-05-06 15:00:38', '30', '5', '5', '6599');
INSERT INTO `auditoria` VALUES ('65136', '2016-05-06 15:02:49', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65137', '2016-05-06 15:06:16', '22', '5', '5', '0');
INSERT INTO `auditoria` VALUES ('65138', '2016-05-06 15:07:09', '30', '5', '5', '6600');
INSERT INTO `auditoria` VALUES ('65139', '2016-05-06 15:09:02', '46', '5', '2', '0');
INSERT INTO `auditoria` VALUES ('65140', '2016-05-06 15:09:34', '30', '5', '5', '6599');
INSERT INTO `auditoria` VALUES ('65141', '2016-05-06 15:17:22', '11', '1', '1', null);

-- ----------------------------
-- Table structure for capacitaciones
-- ----------------------------
DROP TABLE IF EXISTS `capacitaciones`;
CREATE TABLE `capacitaciones` (
  `Pk_Id_Capacitacion` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` text COMMENT 'Descripción de la capacitación',
  `Fecha_Inicio` datetime DEFAULT NULL,
  `Fecha_Final` datetime DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL COMMENT 'Usuario que creó la capacitación',
  `Horas` decimal(4,0) DEFAULT NULL,
  `Nombre` text,
  PRIMARY KEY (`Pk_Id_Capacitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of capacitaciones
-- ----------------------------
INSERT INTO `capacitaciones` VALUES ('13', '- LIDERAZGO EN SEGURIDAD Y SALUD EN EL TRABAJO\n- IDENTIFICACION DE ACTOS Y CONDICIONES INSEGURAS DESDE LA OBSERVACION DEL COMPORTAMIENTO', '2014-05-21 06:00:00', '2014-05-21 10:00:00', '14', '4', 'LIDERAZGO Y CONDICIONES INSEGURAS DESDE LA OBSERVACION DEL COMPORTAMIENTO');
INSERT INTO `capacitaciones` VALUES ('16', 'ACTOS Y CONDICIONES INSEGURAS', '2014-05-09 06:00:00', '2014-05-09 08:00:00', '14', '2', 'ACTOS Y CONDICIONES INSEGURAS');
INSERT INTO `capacitaciones` VALUES ('18', 'PRIMEROS AUXILIOS ', '2014-05-18 06:00:00', '2014-05-18 11:00:00', '14', '5', 'PRIMEROS AUXILIOS ');
INSERT INTO `capacitaciones` VALUES ('19', 'ELECCIONES COPASO 2014', '2014-04-10 06:00:00', '2014-04-10 08:00:00', '146', '2', 'ELECCIONES COPASO 2014');
INSERT INTO `capacitaciones` VALUES ('20', 'ENFOQUES ASOCIADOS A MALOS HABITOS', '2014-04-10 06:00:00', '2014-04-10 08:00:00', '14', '2', 'ENFOQUES ASOCIADOS A MALOS HABITOS');
INSERT INTO `capacitaciones` VALUES ('21', 'JARDIN BOTANICO - ARL BOLIVAR', '2014-05-08 06:00:00', '2014-05-08 08:00:00', '14', '2', 'IMPORTANCIA ACTIVIDAD FISICA - CONSERVACION DE ESPACIOS FAUNISTICAS EN PELIGRO');
INSERT INTO `capacitaciones` VALUES ('24', '', '2014-07-03 06:00:00', '2014-07-03 08:00:00', '14', '2', 'LEY 1562 SISTEMA DE RIESGOS LABORALES - LICENCIAS AMBIENTALES PMA, PERMISOS Y CONCESIONES - DECRETO 1295/94, RESOLUCION 1401/07');
INSERT INTO `capacitaciones` VALUES ('25', 'ESTILOS DE VIDA SALUDABLE- CONTROL DE DOCUMENTOS Y REGISTROS', '2014-03-27 06:00:00', '2014-03-27 06:00:00', '146', '2', 'ESTILOS DE VIDA SALUDABLE- CONTROL DE DOCUMENTOS Y REGISTROS');
INSERT INTO `capacitaciones` VALUES ('29', 'PREVENCION PROTECCION CONTRA CAIDA Y RESCATE', '2014-01-19 06:00:00', '2014-01-19 06:00:00', '146', '5', 'PREVENCION PROTECCION CONTRA CAIDA Y RESCATE');
INSERT INTO `capacitaciones` VALUES ('31', 'AUTOCUIDADO Y CUIDADO DE LA SALUD', '2014-07-21 06:00:00', '2014-07-21 08:00:00', '146', '2', 'AUTOCUIDADO Y CUIDADO DE LA SALUD');
INSERT INTO `capacitaciones` VALUES ('47', 'TAMIZAJE-RIESGO CARDIOVASCULAR', '2014-01-15 06:00:00', '2014-01-16 06:00:00', '146', '2', 'TAMIZAJE-RIESGO CARDIOVASCULAR');
INSERT INTO `capacitaciones` VALUES ('48', 'DIFUSION RESOLUCION 2646 DE 2008 Y APLICACION BATERIAS DE RIESGO PSICOSOCIAL', '2014-09-22 06:00:00', '2014-09-22 08:00:00', '146', '2', 'DIFUSION RESOLUCION 2646 DE 2008 Y APLICACION BATERIAS DE RIESGO PSICOSOCIAL');
INSERT INTO `capacitaciones` VALUES ('49', 'PROYECTO DE VIDA', '2014-09-22 08:00:00', '2014-09-22 10:00:00', '146', '2', 'PROYECTO DE VIDA');
INSERT INTO `capacitaciones` VALUES ('58', 'CONFORMACION DE COMITE DE EVACUACION ', '2014-05-10 06:00:00', '2014-05-10 09:00:00', '146', '3', 'CONFORMACION DE COMITE DE EVACUACION ');
INSERT INTO `capacitaciones` VALUES ('59', 'MANEJO DE ACCIDENTE OFIDICOS POR PICADURA DE ANIMALES', '2014-05-24 06:00:00', '2014-05-24 11:00:00', '146', '5', 'MANEJO DE ACCIDENTE OFIDICOS POR PICADURA DE ANIMALES');
INSERT INTO `capacitaciones` VALUES ('60', 'SEGURIDAD VIAL Y CERTIFICACION DE INSPECTORES', '2014-06-04 06:00:00', '2014-06-04 10:00:00', '146', '4', 'SEGURIDAD VIAL Y CERTIFICACION DE INSPECTORES');
INSERT INTO `capacitaciones` VALUES ('61', 'SEÑALIZACION VIAL EN CARRETERA', '2014-05-28 06:00:00', '2014-05-28 10:00:00', '146', '4', 'SEÑALIZACION VIAL EN CARRETERA');
INSERT INTO `capacitaciones` VALUES ('62', 'SEGURIDAD VIAL Y CERTIFICACION DE INSPECTORES', '2014-06-11 06:00:00', '2014-06-11 10:00:00', '146', '4', 'SEGURIDAD VIAL Y CERTIFICACION DE INSPECTORES');
INSERT INTO `capacitaciones` VALUES ('63', 'SEGURIDAD VIAL Y CERTIFICACION EN INSPECTOR VIAL', '2014-05-21 06:00:00', '2014-05-21 10:00:00', '146', '4', 'SEGURIDAD VIAL Y CERTIFICACION EN INSPECTOR VIAL');
INSERT INTO `capacitaciones` VALUES ('64', 'PRIMEROS AUXILIOS, PROGRAMACION SIMULACRO', '2014-07-19 06:00:00', '2014-07-19 11:00:00', '146', '5', 'PRIMEROS AUXILIOS, PROGRAMACION SIMULACRO');
INSERT INTO `capacitaciones` VALUES ('65', 'ECONOMIA FAMILIAR', '2014-08-15 06:00:00', '2014-08-15 08:00:00', '146', '2', 'ECONOMIA FAMILIAR');
INSERT INTO `capacitaciones` VALUES ('67', 'AUTOCUIDADO Y CUIDADO DE LA SALUD', '2014-07-30 06:00:00', '2014-07-30 08:00:00', '146', '2', 'AUTOCUIDADO Y CUIDADO DE LA SALUD');
INSERT INTO `capacitaciones` VALUES ('69', '¿QUE HACER EN CASO DE UNA EMERGENCIA? ¿ESTAMOS PREPARADOS PARA UNA EMERGENCIA?', '2014-07-19 06:00:00', '2014-07-19 11:00:00', '146', '5', '¿QUE HACER EN CASO DE UNA EMERGENCIA? ¿ESTAMOS PREPARADOS PARA UNA EMERGENCIA?');
INSERT INTO `capacitaciones` VALUES ('71', 'BOMBEROTECNIA Y MANEJO DEL FUEGO', '2014-04-26 07:00:00', '2014-04-26 12:00:00', '146', '5', 'BOMBEROTECNIA Y MANEJO DEL FUEGO');
INSERT INTO `capacitaciones` VALUES ('72', 'BRIGADA BOMBEROTECNIA', '2014-05-03 07:00:00', '2014-05-03 12:00:00', '146', '5', 'BRIGADA BOMBEROTECNIA');
INSERT INTO `capacitaciones` VALUES ('75', 'DIFUSION METAPROGRAMAS', '2014-08-26 07:00:00', '2014-08-26 09:00:00', '146', '2', 'DIFUSION METAPROGRAMAS');
INSERT INTO `capacitaciones` VALUES ('78', '', '2014-07-31 14:00:00', '2014-09-19 18:00:00', '14', '18', 'INSPECTOR VIAL ');
INSERT INTO `capacitaciones` VALUES ('79', 'EL ARTE, EL LIDERAZGO ASERTIVO CON MENOS ESTRES', '2014-08-28 08:00:00', '2014-08-28 16:00:00', '146', '8', 'EL ARTE, EL LIDERAZGO ASERTIVO CON MENOS ESTRES');
INSERT INTO `capacitaciones` VALUES ('81', 'AUTO CUIDADO Y CUIDADO DE LA SALUD', '2014-08-25 06:00:00', '2014-08-25 08:00:00', '14', '2', 'AUTO CUIDADO Y CUIDADO DE LA SALUD');
INSERT INTO `capacitaciones` VALUES ('84', '', '2014-09-29 06:00:00', '2014-09-29 08:00:00', '14', '2', 'PROGRAMA DE SEGURIDAD BASADO EN EL COMPORTAMIENTO ');
INSERT INTO `capacitaciones` VALUES ('85', '', '2014-11-10 08:00:00', '2014-11-10 14:00:00', '155', '6', 'EXAMEN VISUAL');
INSERT INTO `capacitaciones` VALUES ('88', '', '2014-10-30 16:00:00', '2014-10-30 18:00:00', '155', '2', 'RISOTERAPIA MANEJO DEL ESTRES');
INSERT INTO `capacitaciones` VALUES ('90', '', '2014-10-30 08:00:00', '2014-10-30 10:00:00', '155', '2', 'MANEJO DEL ESTRES');
INSERT INTO `capacitaciones` VALUES ('92', '', '2014-11-28 16:00:00', '2014-11-28 18:00:00', '155', '2', 'SEGURIDAD VIAL Y MANEJO DEFENSIVO');
INSERT INTO `capacitaciones` VALUES ('95', '', '2014-10-29 08:00:00', '2014-10-29 16:00:00', '155', '8', 'SILLA MASAJEADORA');
INSERT INTO `capacitaciones` VALUES ('98', '', '2014-12-16 03:00:00', '2014-12-16 17:00:00', '155', '2', 'COMITE DE CONVIVENCIA');
INSERT INTO `capacitaciones` VALUES ('102', 'LEY 1010/2006 ACOSO LABORAL -RESOLUCION 2648/2008 RIESGO PSICOSOCIAL', '2014-12-04 06:00:00', '2014-12-04 08:00:00', '146', '2', 'LEY 1010/2006 ACOSO LABORAL -RESOLUCION 2648/2008 RIESGO PSICOSOCIAL');
INSERT INTO `capacitaciones` VALUES ('103', 'TAREAS CRITICAS:(ESPACIOS CONFINADOS, TRABAJO EN ALTURAS, TRABAJOS ELECTRICOS)', '2014-11-20 06:00:00', '2014-11-20 08:00:00', '146', '2', 'TAREAS CRITICAS:(ESPACIOS CONFINADOS, TRABAJO EN ALTURAS, TRABAJOS ELECTRICOS)');
INSERT INTO `capacitaciones` VALUES ('105', 'IZAJE DE CARGAS-NORMAS DE SEGURIDAD Y PROCEDIMIENTO-FIRMA ACTA DE COMPROMISO.', '2014-11-07 06:00:00', '2014-11-07 06:00:00', '146', '2', 'IZAJE DE CARGAS-NORMAS DE SEGURIDAD Y PROCEDIMIENTO-FIRMA ACTA DE COMPROMISO');
INSERT INTO `capacitaciones` VALUES ('107', 'NUEVAS TECNOLOGIAS DE CONCRETO LANZADO', '2014-10-28 06:00:00', '2014-10-28 06:00:00', '146', '1', 'NUEVAS TECNOLOGIAS DE CONCRETO LANZADO');
INSERT INTO `capacitaciones` VALUES ('111', '', '2014-09-25 16:00:00', '2014-09-25 18:00:00', '155', '2', 'PRUEBAS DE CONOCIMIENTO PARA INSPECTOR VIAL');
INSERT INTO `capacitaciones` VALUES ('113', '', '2014-04-14 16:00:00', '2014-04-14 18:00:00', '155', '2', 'AUTOCUIDADO');
INSERT INTO `capacitaciones` VALUES ('115', '', '2014-04-05 07:00:00', '2014-04-05 08:00:00', '155', '1', 'CONFORMACIÓN BRIGADA');
INSERT INTO `capacitaciones` VALUES ('119', '', '2015-01-30 16:00:00', '2015-01-30 16:00:00', '155', '2', 'REINDUCCION SYST');
INSERT INTO `capacitaciones` VALUES ('122', 'METAPROGRAMAS', '2015-02-19 06:00:00', '2015-02-19 08:00:00', '146', '2', 'METAPROGRAMAS');
INSERT INTO `capacitaciones` VALUES ('132', 'CONCEPTOS Y PARAMETRIZACION PROGRAMA NOMINA ILIMITADA', '2015-03-16 08:00:00', '2015-03-20 12:00:00', '146', '16', 'CONCEPTOS Y PARAMETRIZACION PROGRAMA NOMINA ILIMITADA');
INSERT INTO `capacitaciones` VALUES ('133', '', '2015-05-12 14:00:00', '2015-05-12 16:00:00', '155', '2', 'COMO INVESTIGAR UN ACCIDENTE DE TRABAJO');
INSERT INTO `capacitaciones` VALUES ('139', '', '2015-06-19 16:00:00', '2015-06-19 18:00:00', '155', '2', 'RIESGO PUBLICO SERACIS');
INSERT INTO `capacitaciones` VALUES ('157', '', '2015-11-23 15:00:00', '2015-11-23 16:00:00', '155', '1', 'MANEJO DEL ESTRÉS CCO');
INSERT INTO `capacitaciones` VALUES ('158', '', '2015-11-24 08:00:00', '2015-11-24 17:00:00', '155', '8', 'SILLA MASAJEADORA 2015');

-- ----------------------------
-- Table structure for destinatarios_email
-- ----------------------------
DROP TABLE IF EXISTS `destinatarios_email`;
CREATE TABLE `destinatarios_email` (
  `Pk_Id_Destinatario_Email` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Funcionario` int(11) NOT NULL,
  `Fk_Id_Area_Encargada` int(11) NOT NULL,
  PRIMARY KEY (`Pk_Id_Destinatario_Email`),
  KEY `Fk_Id_Funcionario` (`Fk_Id_Funcionario`),
  CONSTRAINT `destinatarios_email_ibfk_1` FOREIGN KEY (`Fk_Id_Funcionario`) REFERENCES `funcionarios` (`Pk_Id_Funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of destinatarios_email
-- ----------------------------

-- ----------------------------
-- Table structure for funcionarios
-- ----------------------------
DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE `funcionarios` (
  `Pk_Id_Funcionario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del personal',
  `Nombres` varchar(75) NOT NULL COMMENT 'Nombres del personal',
  `Apellidos` varchar(75) NOT NULL COMMENT 'Apellidos del personal',
  `Email` varchar(75) DEFAULT NULL COMMENT 'Correo electrónico del personal',
  `Fk_Id_Cargo` int(11) NOT NULL COMMENT 'Identificador foráneo del cargo',
  `Fk_Id_Empresa` int(11) NOT NULL COMMENT 'Identificador foráneo de la empresa a la cual pertenece',
  `Remitible` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Determina si al funcionario se le pueden remitir documentos',
  PRIMARY KEY (`Pk_Id_Funcionario`),
  KEY `Fk_Id_Empresa` (`Fk_Id_Empresa`),
  KEY `Fk_Id_Cargo` (`Fk_Id_Cargo`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`Fk_Id_Empresa`) REFERENCES `tbl_empresas` (`Pk_Id_Empresa`),
  CONSTRAINT `funcionarios_ibfk_2` FOREIGN KEY (`Fk_Id_Cargo`) REFERENCES `tbl_cargos` (`Pk_Id_Cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funcionarios
-- ----------------------------
INSERT INTO `funcionarios` VALUES ('1', 'John Arley', 'Cano Salinas', 'john.cano@vinus.com.co', '35', '1', '1');

-- ----------------------------
-- Table structure for hojas_vida
-- ----------------------------
DROP TABLE IF EXISTS `hojas_vida`;
CREATE TABLE `hojas_vida` (
  `Pk_Id_Hoja_Vida` int(11) NOT NULL AUTO_INCREMENT,
  `Contratado` varchar(1) DEFAULT NULL,
  `Direccion` varchar(125) DEFAULT NULL,
  `Documento` varchar(75) DEFAULT NULL,
  `Fecha_Actualizacion` date DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Fecha_Recepcion` date DEFAULT NULL,
  `Fecha_Vinculacion` date DEFAULT NULL,
  `Fk_Id_Frente` int(11) DEFAULT NULL,
  `Fk_Id_Oficio` int(11) DEFAULT NULL,
  `Fk_Id_Sector` int(11) DEFAULT NULL,
  `Fk_Id_Tramo` int(11) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  `Fk_Id_Valor_Contratista` int(11) DEFAULT NULL,
  `Fk_Id_Valor_Nivel_Estudio` int(11) NOT NULL,
  `Fk_Id_Valor_Profesion` int(11) NOT NULL,
  `Id_Genero` varchar(1) DEFAULT NULL,
  `Id_Labores_Ejecutadas` varchar(1) DEFAULT NULL COMMENT '2: operaciones; 1: obra; 3: administración',
  `Nombres` text,
  `Observaciones` text,
  `Recibida` varchar(1) DEFAULT NULL,
  `Telefono` varchar(75) DEFAULT NULL,
  `Ubicacion_Fisica` varchar(10) DEFAULT NULL,
  `Verificada` int(1) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Hoja_Vida`),
  KEY `Fk_Id_Sector` (`Fk_Id_Sector`),
  KEY `Fk_Id_Oficio` (`Fk_Id_Oficio`)
) ENGINE=InnoDB AUTO_INCREMENT=6601 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hojas_vida
-- ----------------------------
INSERT INTO `hojas_vida` VALUES ('2042', '0', 'CARRERA 68 No.102-47', '71220568', null, '1980-02-13', null, '0000-00-00', '105', '0', '339', '18', '1', '0', '0', '0', '1', '', 'JUAN CARLOS AGUDELO CASTAÑEDA', '', '0', '5809437', '', '0');
INSERT INTO `hojas_vida` VALUES ('2125', '1', 'Carrera 52C # 88 - 49', '1017177502', '2016-04-25', '1990-02-11', null, '2016-04-01', '105', '144', '339', '18', '1', '206', '212', '215', '1', '3', 'JOHN ARLEY CANO SALINAS', '', '0', '3134587623', '', '0');
INSERT INTO `hojas_vida` VALUES ('2286', '0', 'Calle 47 A No.101-23 apto 202', '1020413242', null, '1987-12-24', null, '0000-00-00', '0', '0', '339', '0', '1', '0', '0', '0', '1', '', 'YEFFERSON GONZALEZ SALAZAR', '', '0', '2522226-3146577161', '', '0');
INSERT INTO `hojas_vida` VALUES ('2308', '0', 'Carrera 10 No.10 A 21', '70327836', null, '1979-07-05', null, '0000-00-00', '0', '0', '344', '0', '1', '0', '0', '0', '1', '', 'HERMES FERLEY ACEVEDO MARQUEZ', '', '0', '4544808-2766019', '', '0');
INSERT INTO `hojas_vida` VALUES ('2489', '0', 'Calle 34 AA No. 125-30 interior 201', '71369590', null, '1983-06-24', null, '0000-00-00', '105', '0', '339', '18', '1', '0', '0', '0', '1', '', 'NORLAN DE JESUS LOPEZ RAMIREZ', '', '0', '4932023-3206969705', '', '0');
INSERT INTO `hojas_vida` VALUES ('2576', '0', '', '77030837', null, '1969-09-18', null, '0000-00-00', '105', '0', '348', '19', '1', '0', '0', '0', '1', '', 'BLAS ALBERTO PEDROZO MOLINA', '', '0', '3115062648-2266196', '', '0');
INSERT INTO `hojas_vida` VALUES ('2599', '0', 'Calle 31 CA No.89 E 78', '15505215', null, '1963-03-15', null, '0000-00-00', '105', '0', '349', '18', '1', '0', '0', '0', '1', '', 'LUIS ALFREDO RESTREPO SEPULVEDA', '', '0', '2565848', '', '0');
INSERT INTO `hojas_vida` VALUES ('2625', '0', 'Calle 17 No.14-68  Calle Robles', '70141354', null, '1981-12-29', null, '0000-00-00', '105', '0', '345', '18', '1', '0', '0', '0', '1', '', 'VICTOR EMILIO SEPULVEDA GALLEGO', '', '0', '4061353', '', '0');
INSERT INTO `hojas_vida` VALUES ('4032', '0', 'Calle 44 No.79-89 apto 504', '1039457850', null, '1992-05-29', null, '0000-00-00', '105', '0', '345', '18', '1', '0', '0', '0', '2', '', 'XIOMARA SERNA GARCIA', '', '0', '4128798-3116083055', '', '0');
INSERT INTO `hojas_vida` VALUES ('4959', '0', 'CRA 45 A CLL 110-70', '1044121848', null, '1995-06-28', null, '0000-00-00', '105', '0', '339', '18', '1', '0', '0', '0', '2', '', 'MARIA DANIELA LONDOÑO POSADA', '', '0', '3148829578', '', '0');
INSERT INTO `hojas_vida` VALUES ('5837', '1', 'CLLE 49 # 49-32', '1035869806', '2016-05-04', '1995-01-26', null, '2016-04-01', '105', '159', '343', '18', '1', '206', '209', '225', '2', '3', 'LINA MARIA GALLEGO DIAZ', '', '0', '6010972 - 3012919465', '', '0');
INSERT INTO `hojas_vida` VALUES ('6355', '0', 'Carrera 46B Cl. 47A-26', '10967153', '2016-04-20', '1985-08-05', null, '0000-00-00', '0', '0', '343', '0', '1', '0', '0', '0', '1', '', 'JULIO CESAR MARTINEZ ZARATE', '', '0', '3006248394', '', '0');
INSERT INTO `hojas_vida` VALUES ('6356', '0', 'BARRIO BUENOS AIRES', '71170470', '2016-04-26', '1957-07-01', null, '0000-00-00', '0', '146', '348', '0', '5', '0', '208', '0', '1', '', 'HUMBERTO DE JESUS ZAPATA VALDEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '8632797-3137065650', 'C-01', '0');
INSERT INTO `hojas_vida` VALUES ('6357', '0', 'CALLE 17 N°24-24', '71191664', '2016-04-26', '1980-01-06', null, '0000-00-00', '0', '146', '308', '0', '5', '0', '207', '0', '1', '', 'FELIX ALBERTO ARCINIEGAS DELGADO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3123166019-3142882078', 'C-02', '0');
INSERT INTO `hojas_vida` VALUES ('6358', '0', '', '1035388389', '2016-04-26', '1987-03-11', null, '0000-00-00', '0', '146', '348', '0', '5', '0', '207', '0', '1', '', 'EDWIN FERNANDO VALENCIA ISSA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3136116773', 'C-03', '0');
INSERT INTO `hojas_vida` VALUES ('6359', '0', 'CORREGIMIENTO SAN JOSE DE NUS BARRIO JUAN XXIII', '71170132', null, '1958-06-03', null, '0000-00-00', '0', '146', '350', '0', '5', '0', '208', '0', '1', '', 'JESUS OVIDIO ROJO', '', '0', '3146269250', 'C-04', '0');
INSERT INTO `hojas_vida` VALUES ('6360', '0', '', '39172673', '2016-04-26', '1981-02-12', null, '0000-00-00', '0', '132', '348', '0', '5', '0', '209', '0', '2', '', 'ANA MARIA CALDERON RESTREPO', 'RECIBIDO POR LA OFICINA FIJA DE CISNEROS', '0', '3147104155', 'C-05', '0');
INSERT INTO `hojas_vida` VALUES ('6361', '0', '', '1035390494', '2016-04-26', '1992-07-15', null, '0000-00-00', '0', '132', '336', '0', '5', '0', '208', '0', '1', '', 'YEISON DE JESUS ALZATE TOBON', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3137493870', 'C-06', '0');
INSERT INTO `hojas_vida` VALUES ('6362', '0', 'SALIDA CRISTALES', '1001505014', '2016-04-26', '1996-09-04', null, '0000-00-00', '0', '0', '350', '0', '5', '0', '0', '0', '1', '', 'WILSON DAVID OQUENDO VALENCIA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3122380410', 'C-07', '0');
INSERT INTO `hojas_vida` VALUES ('6363', '0', 'BARRIO EL POBLADO PARTE ALTA', '71171184', '2016-04-26', '1973-10-24', null, '0000-00-00', '0', '132', '369', '0', '5', '0', '209', '0', '1', '', 'LUIS ALFREDO RUA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3212538128', 'C-08', '0');
INSERT INTO `hojas_vida` VALUES ('6364', '0', '', '1001389389', '2016-04-26', '1996-03-09', null, '0000-00-00', '0', '148', '348', '0', '5', '0', '208', '0', '1', '', 'YEISON ARLEY LOPEZ ISAZA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3104457177', 'C-09', '0');
INSERT INTO `hojas_vida` VALUES ('6366', '0', '', '70631296', '2016-04-26', '1969-05-09', null, '0000-00-00', '0', '149', '323', '0', '5', '0', '207', '0', '1', '', 'SADY IVAN CANO CORREA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3126517062', 'C-10', '0');
INSERT INTO `hojas_vida` VALUES ('6367', '0', 'CALLE 7 A #18 A-35', '70133115', '2016-04-26', '1962-11-08', null, '0000-00-00', '0', '148', '160', '0', '5', '0', '208', '0', '1', '', 'ORLANDO DE JESUS AGUDELO TOBON', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '4063774-3016207637', 'C-11', '0');
INSERT INTO `hojas_vida` VALUES ('6368', '0', 'CALLE 17 A # 2-46', '70514524', '2016-04-26', '1962-11-25', null, '0000-00-00', '0', '149', '165', '0', '5', '0', '210', '0', '1', '', 'EFRAIN DE JESUS JIMENEZ MONROY ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3148503649-3206928254', 'C-12', '0');
INSERT INTO `hojas_vida` VALUES ('6369', '0', '', '71175342', '2016-04-26', '1983-09-20', null, '0000-00-00', '0', '148', '323', '0', '5', '0', '209', '0', '1', '', 'WALTER ANDRES ZAPATA GALLEGO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3128816241', 'C-13', '0');
INSERT INTO `hojas_vida` VALUES ('6370', '0', '', '42793776', '2016-04-26', '1970-10-22', null, '0000-00-00', '0', '132', '324', '0', '5', '0', '210', '0', '2', '', 'PIEDAD GOMEZ MAYA', 'RECIBIDA EN LA OFICINA FIJA DE CISNEROS', '0', '3207066981', 'C-14', '0');
INSERT INTO `hojas_vida` VALUES ('6371', '0', 'BARRIO LA VIRGEN', '1020442655', null, '1991-02-22', null, '0000-00-00', '0', '132', '369', '0', '5', '0', '209', '0', '2', '', 'YESSICA YULIETH MENESES BUITRAGO', '', '0', '3216559187', 'C-15', '0');
INSERT INTO `hojas_vida` VALUES ('6372', '0', 'CALLE PRINCIPAL SAN JOSE DEL NUS', '21863907', '2016-04-26', '1971-10-13', null, '0000-00-00', '0', '141', '370', '0', '5', '0', '209', '0', '2', '', 'AYDE OMAIRA MEJIA AGUDELO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3136421784-3014700622', 'C-16', '0');
INSERT INTO `hojas_vida` VALUES ('6373', '0', 'BARRIO JUAN XXIII', '1007529256', null, '1995-01-14', null, '0000-00-00', '0', '150', '369', '0', '5', '0', '210', '0', '1', '', 'YENIFER MARIN GONZALEZ', '', '0', '3106102541', 'C-17', '0');
INSERT INTO `hojas_vida` VALUES ('6374', '0', '', '1037370023', '2016-04-26', '1996-02-13', null, '0000-00-00', '0', '132', '369', '0', '5', '0', '209', '0', '1', '', 'JUAN DIEGO JIMENEZ ARBOLEDA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3218564301', 'C-18', '0');
INSERT INTO `hojas_vida` VALUES ('6375', '0', '', '39354176', '2016-04-26', '1974-03-09', null, '0000-00-00', '0', '132', '369', '0', '5', '0', '209', '0', '2', '', 'MARLENNY DE LA CRUZ SILVA ORREGO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3137563099', 'C-19', '0');
INSERT INTO `hojas_vida` VALUES ('6376', '0', '', '1035390220', null, '1992-04-14', null, '0000-00-00', '0', '148', '348', '0', '5', '0', '209', '0', '1', '', 'YONY ALEJANDRO ISAZA POSADA', '', '0', '3148377819', 'C-20', '0');
INSERT INTO `hojas_vida` VALUES ('6377', '0', 'BARRIO MAL PASO', '71172564', '2016-04-26', '1968-10-18', null, '0000-00-00', '0', '149', '261', '0', '5', '0', '208', '0', '1', '', 'HUGO DE JESUS CALDERON ACEVEDO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3136500594', 'C-21', '0');
INSERT INTO `hojas_vida` VALUES ('6378', '0', 'CALLE 13 # 19-22', '1035390922', '2016-04-26', '1994-03-05', null, '0000-00-00', '0', '132', '323', '0', '5', '0', '209', '0', '2', '', 'KELLY JOHANA ARBELAEZ MONSALVE', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3104339390-8631363', 'C-22', '0');
INSERT INTO `hojas_vida` VALUES ('6379', '0', 'SECTOR PUENTE DE HIERRO # 17-08', '71189164', '2016-04-26', '1974-09-12', null, '0000-00-00', '0', '148', '321', '0', '5', '0', '209', '0', '1', '', 'JOHN FREDY VILLA HERRERA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3143622925-3168681180', 'C-23', '0');
INSERT INTO `hojas_vida` VALUES ('6380', '0', '', '71170657', '2016-04-26', '1959-11-01', null, '0000-00-00', '0', '148', '348', '0', '5', '0', '208', '0', '1', '', 'JOSE ROBERTO OCHOA VAHOS', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3206164015', 'C-24', '0');
INSERT INTO `hojas_vida` VALUES ('6381', '0', 'CORREGIMIENTO PROVIDENCIA LA YE', '70252644', '2016-04-26', '1961-11-26', null, '0000-00-00', '0', '132', '350', '0', '5', '0', '208', '0', '1', '', 'LUIS ALBERTO RIOS BUSTAMANTE', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3142796882', 'C-25', '0');
INSERT INTO `hojas_vida` VALUES ('6382', '0', '', '3446340', '2016-04-26', '0000-00-00', null, '0000-00-00', '0', '148', '348', '0', '5', '0', '208', '0', '1', '', 'OMAR DE JESUS VALENCIA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3146668198', 'C-26', '0');
INSERT INTO `hojas_vida` VALUES ('6383', '0', 'VILLA NELLY', '71172075', '2016-04-26', '1965-12-13', null, '0000-00-00', '0', '148', '348', '0', '5', '0', '208', '0', '1', '', 'JORGE IVAN CEBALLOS VASQUEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3193557794', 'C-27', '0');
INSERT INTO `hojas_vida` VALUES ('6384', '0', '', '702536871', null, '1967-05-04', null, '0000-00-00', '0', '132', '323', '0', '5', '0', '208', '0', '1', '', 'OMAR DE JESUS ZAPATA GARCIA', '', '0', '3193619358', 'C-28', '0');
INSERT INTO `hojas_vida` VALUES ('6385', '0', '', '1016033773', '2016-04-26', '1991-03-26', null, '0000-00-00', '0', '148', '316', '0', '5', '0', '209', '0', '1', '', 'LUIS FERNANDO ORTIZ RESTREPO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3214961097', 'C-29', '0');
INSERT INTO `hojas_vida` VALUES ('6395', '0', 'BUENOS AIRES', '98472995', '2016-04-26', '1978-03-24', null, '0000-00-00', '0', '146', '348', '0', '5', '0', '208', '0', '1', '', 'ROBINSON DE JESUS PEREZ RUIZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3113797678', 'C-30', '0');
INSERT INTO `hojas_vida` VALUES ('6396', '0', '', '71173170', '2016-04-26', '1969-02-10', null, '0000-00-00', '0', '148', '327', '0', '5', '0', '208', '0', '1', '', 'CENEN DURANGO BENJUMEA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3135727061', 'C-31', '0');
INSERT INTO `hojas_vida` VALUES ('6397', '0', '', '71173125', null, '1970-10-16', null, '0000-00-00', '0', '148', '330', '0', '5', '0', '208', '0', '1', '', 'HUGO ANTONIO JIMENEZ MONSALVE', 'RECIBIDA POR LA OFICINA FIJA EN CISNEROS', '0', '3206155621-3206746127', 'C-32', '0');
INSERT INTO `hojas_vida` VALUES ('6398', '0', 'BARRIO ALGARROBO', '1035390440', null, '1992-09-30', null, '0000-00-00', '0', '132', '348', '0', '5', '0', '209', '0', '1', '', 'LEONEL DE JESUS GOMEZ HERNANDEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3004825205', 'C-33', '0');
INSERT INTO `hojas_vida` VALUES ('6399', '0', '', '1035390268', null, '1992-05-30', null, '0000-00-00', '0', '0', '324', '0', '5', '0', '210', '220', '1', '', 'ANDRES FELIPE ARANGO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3146965413', 'C-34', '0');
INSERT INTO `hojas_vida` VALUES ('6400', '0', '', '1035388754', null, '1988-05-07', null, '0000-00-00', '0', '0', '324', '0', '5', '0', '210', '220', '1', '', 'FERNEY MAURICIO ARANGO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3206503124', 'C-35', '0');
INSERT INTO `hojas_vida` VALUES ('6401', '0', '', '1045110837', null, '1992-06-17', null, '0000-00-00', '0', '148', '348', '0', '5', '0', '209', '0', '1', '', 'ANDERSON FABIAN RESTREPO MORALES ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3136961038', 'C-36', '0');
INSERT INTO `hojas_vida` VALUES ('6402', '0', 'CORREGIMIENTO PROVIDENCIA', '1037503384', null, '1996-05-15', null, '0000-00-00', '0', '132', '350', '0', '5', '0', '209', '0', '1', '', 'JUAN GUILLERMO HERNANDEZ JIMENEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3145317019', 'C-37', '0');
INSERT INTO `hojas_vida` VALUES ('6403', '0', '', '1033490215', null, '1996-07-11', null, '0000-00-00', '0', '132', '323', '0', '5', '0', '208', '0', '1', '', 'GUILLERMO OBREGON JAIMES', '', '0', '3134818327', 'C-38', '0');
INSERT INTO `hojas_vida` VALUES ('6404', '0', 'CORREGIMIENTO PROVIDENCIA', '71174331', null, '1976-03-15', null, '0000-00-00', '0', '148', '350', '0', '5', '0', '209', '0', '1', '', 'JOHN JAIRO CASTAÑEDA', '', '0', '3116163396', 'C-39', '0');
INSERT INTO `hojas_vida` VALUES ('6405', '0', '', '1035390551', null, '1993-03-03', null, '0000-00-00', '0', '148', '317', '0', '5', '0', '209', '0', '1', '', 'JUAN CARLOS MUÑOZ GOMEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3117399924', 'C-40', '0');
INSERT INTO `hojas_vida` VALUES ('6406', '0', '', '1035390059', null, '1991-09-26', null, '0000-00-00', '0', '132', '335', '0', '5', '0', '208', '0', '1', '', 'FAVIO HERNAN TAMAYO ACEVEDO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3137436551', 'C-41', '0');
INSERT INTO `hojas_vida` VALUES ('6407', '0', 'VEREDA LA TRINIDAD', '1000565137', null, '1997-04-19', null, '0000-00-00', '0', '132', '350', '0', '5', '0', '209', '0', '1', '', 'JULIAN DAVID ALZATE FORONDA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3212453609', 'C-42', '0');
INSERT INTO `hojas_vida` VALUES ('6408', '0', 'VILLA NELLY #21-31', '1035391484', null, '1996-04-17', null, '0000-00-00', '0', '0', '348', '0', '5', '0', '0', '0', '1', '', 'DUVAN ALEXIS GOMEZ CARDENAS', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3106394286', 'C-43', '0');
INSERT INTO `hojas_vida` VALUES ('6409', '0', '', '1001385214', '2016-04-26', '1992-07-20', null, '0000-00-00', '0', '148', '316', '0', '5', '0', '208', '0', '1', '', 'ORLANDO DE JESUS JIMENEZ AGUDELO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3207062474', 'C-44', '0');
INSERT INTO `hojas_vida` VALUES ('6410', '0', '', '71174068', '2016-04-26', '1977-11-16', null, '0000-00-00', '0', '148', '283', '0', '5', '0', '207', '0', '1', '', 'FREDDY HUMBERTO MORALES ARCILA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3137524097', 'C-45', '0');
INSERT INTO `hojas_vida` VALUES ('6411', '0', 'SECTOR LA CHAPOLA', '71172066', null, '1966-07-06', null, '0000-00-00', '0', '148', '348', '0', '5', '0', '207', '0', '1', '', 'ALONSO DE JESUS JIMENEZ HERNANDEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3142072794', 'C-46', '0');
INSERT INTO `hojas_vida` VALUES ('6412', '0', 'CALLE LA VIRGEN', '22030177', null, '1979-07-18', null, '0000-00-00', '0', '132', '369', '0', '5', '0', '207', '0', '1', '', 'LUZ DELLY AGUDELO BEDOYA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3146930480', 'C-47', '0');
INSERT INTO `hojas_vida` VALUES ('6413', '0', 'SECTOR LA CHAPOLA', '1035390281', '2016-04-28', '1992-04-07', null, '0000-00-00', '0', '148', '348', '0', '5', '0', '209', '0', '1', '', 'ANDRES FELIPE GIRALDO JIMENEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3113292508', 'C-48', '0');
INSERT INTO `hojas_vida` VALUES ('6414', '0', 'SECTOR LA CHAPOLA', '71170254', null, '1960-07-22', null, '0000-00-00', '0', '137', '348', '0', '5', '0', '208', '0', '1', '', 'JAIME DE JESUS JIMENEZ HERNANDEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3116446890', 'C-49', '0');
INSERT INTO `hojas_vida` VALUES ('6415', '0', 'SECTOR VEGAS DEL RIO', '1037503111', null, '1995-07-21', null, '0000-00-00', '0', '150', '350', '0', '5', '0', '210', '0', '2', '', 'KATHERINE ANDREA ESTRADA LOPEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3137076109', 'C-50', '0');
INSERT INTO `hojas_vida` VALUES ('6416', '0', '', '71185566', null, '1967-06-04', null, '0000-00-00', '0', '0', '321', '0', '5', '0', '210', '220', '1', '', 'URIPIDES DE JESUS MUÑOZ LEZCANO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '8631161-3117970217', 'C-51', '0');
INSERT INTO `hojas_vida` VALUES ('6417', '0', '', '71218533', null, '1979-11-15', null, '0000-00-00', '0', '132', '387', '0', '5', '0', '209', '0', '1', '', 'CARLOS MARIO ZAMARRA CARMONA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3128302726-3015535429', 'C-52', '0');
INSERT INTO `hojas_vida` VALUES ('6418', '0', 'SECTOR JUAN XXIII', '21849737', null, '1981-04-10', null, '0000-00-00', '0', '0', '369', '0', '5', '0', '211', '221', '2', '', 'YISED BIBIANA LUGO MORALES', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '8556224-3147118839', 'C-53', '0');
INSERT INTO `hojas_vida` VALUES ('6419', '0', '', '70132381', null, '1960-02-29', null, '0000-00-00', '0', '157', '197', '0', '5', '0', '209', '0', '1', '', 'OSCAR DE JESUS RAMIREZ GONZALEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3215396574-3004328115', 'C-54', '0');
INSERT INTO `hojas_vida` VALUES ('6420', '0', '', '71175376', null, '1985-04-26', null, '0000-00-00', '0', '0', '330', '0', '5', '0', '210', '222', '1', '', 'MAURICIO ALEXANDER QUINTANA JIMENEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3124480491', 'C-55', '0');
INSERT INTO `hojas_vida` VALUES ('6421', '0', '', '1035389384', null, '1989-10-19', null, '0000-00-00', '0', '146', '324', '0', '5', '0', '209', '0', '1', '', 'GABRIEL JAIME MONTOYA CARDENAS', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS\n', '0', '3128834037', 'C-56', '0');
INSERT INTO `hojas_vida` VALUES ('6422', '0', '', '70141677', null, '1981-11-24', null, '0000-00-00', '0', '149', '260', '0', '5', '0', '209', '0', '1', '', 'JHON JAIME MUNERA SUAREZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3128576902-3136796081', 'C-57', '0');
INSERT INTO `hojas_vida` VALUES ('6423', '0', '', '1020430705', null, '1990-01-12', null, '0000-00-00', '0', '157', '260', '0', '5', '0', '0', '0', '1', '', 'JOHAN SEBASTIAN JARAMILLO SUAREZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '8514184-3127845506', 'C-58', '0');
INSERT INTO `hojas_vida` VALUES ('6424', '0', 'FINCA LA PALESTINA', '70581856', null, '1982-03-12', null, '0000-00-00', '0', '132', '350', '0', '5', '0', '207', '0', '1', '', 'ALBEIRO ELIAS USUGA JARAMILLO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3122682043-3108330058', 'C-59', '0');
INSERT INTO `hojas_vida` VALUES ('6425', '0', '', '1035389979', null, '1991-06-09', null, '0000-00-00', '0', '148', '336', '0', '5', '0', '208', '0', '1', '', 'JHON FREDY PULGARIN GONZALEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3108499675', 'C-60', '0');
INSERT INTO `hojas_vida` VALUES ('6426', '0', '', '1035391123', null, '1994-12-22', null, '0000-00-00', '0', '146', '313', '0', '5', '0', '209', '0', '1', '', 'DEIBY ESTEBAN VALENCIA MONTOYA', '', '0', '3126211056', 'C-61', '0');
INSERT INTO `hojas_vida` VALUES ('6427', '0', '', '1035392029', null, '1998-03-28', null, '0000-00-00', '0', '132', '321', '0', '5', '0', '209', '0', '1', '', 'JULIAN ESTEBAN CARDONA TAMAYO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3108292559', 'C-62', '0');
INSERT INTO `hojas_vida` VALUES ('6428', '0', 'AVENIDA FERROCARIL N° 18-47', '91431155', null, '1968-03-07', null, '0000-00-00', '0', '157', '348', '0', '5', '0', '209', '0', '1', '', 'EDDIER JHON RIOS BARRANTES', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '8631027-3158887225', 'C-67', '0');
INSERT INTO `hojas_vida` VALUES ('6429', '0', 'LA TRANSVERSAL ', '71172517', null, '1968-12-24', null, '0000-00-00', '0', '146', '348', '0', '5', '0', '209', '0', '1', '', 'ARGEMIRO DE JESUS PULGARIN BUILES', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3137174830-3128024809', 'C-64', '0');
INSERT INTO `hojas_vida` VALUES ('6430', '0', 'LA TRANSVERSAL ', '71172517', null, '1968-12-24', null, '0000-00-00', '0', '0', '348', '0', '5', '0', '209', '0', '1', '', 'ARGEMIRO DE JESUS PULGARIN BUILES', '', '0', '3137174830-3128024809', '', '0');
INSERT INTO `hojas_vida` VALUES ('6431', '0', 'PROVIDENCIA', '43484028', null, '1984-01-29', null, '0000-00-00', '0', '0', '350', '0', '5', '0', '210', '221', '1', '', 'ADRIANA MARIA MIRANDA ARISMENDI', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3116442354', 'C-65', '0');
INSERT INTO `hojas_vida` VALUES ('6432', '0', 'BARRIO NUEVO', '1039691181', null, '1990-10-28', null, '0000-00-00', '0', '132', '369', '0', '5', '0', '208', '0', '1', '', 'JOSE LUIS MEZA VELASQUEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3128674962', 'C-66', '0');
INSERT INTO `hojas_vida` VALUES ('6433', '0', 'BARRIO NUEVO', '1112763085', null, '1987-12-06', null, '0000-00-00', '0', '132', '369', '0', '5', '0', '208', '0', '1', '', 'ANDRES MAURICIO FLOREZ MARIN', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3127396222', 'C-67', '0');
INSERT INTO `hojas_vida` VALUES ('6434', '0', 'CALLE LA VIRGEN', '71080483', null, '1960-01-17', null, '0000-00-00', '0', '132', '369', '0', '5', '0', '209', '0', '1', '', 'JORGE ALQUIDES TOBON SANCHEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3127616999', 'C-68', '0');
INSERT INTO `hojas_vida` VALUES ('6435', '0', '', '1042092247', null, '1990-12-12', null, '0000-00-00', '0', '148', '320', '0', '5', '0', '208', '0', '1', '', 'JULIAN ANDRES VIDAL DIAZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3117273465', 'C-69', '0');
INSERT INTO `hojas_vida` VALUES ('6436', '0', 'CARRERA 13 # 19-30', '70256253', null, '1976-09-27', null, '0000-00-00', '0', '132', '323', '0', '5', '0', '208', '0', '1', '', 'JUAN DIEGO MORA VELEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3107231455', 'C-70', '0');
INSERT INTO `hojas_vida` VALUES ('6437', '0', '', '9847364', null, '1972-08-08', null, '0000-00-00', '0', '132', '348', '0', '5', '0', '207', '0', '1', '', 'WILLIAM AUGUSTO SUAREZ GOMEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3215408785', 'C-71', '0');
INSERT INTO `hojas_vida` VALUES ('6438', '0', 'SECTOR JUAN XXIII', '22034414', null, '1978-04-24', null, '0000-00-00', '0', '0', '369', '0', '5', '0', '211', '221', '1', '', 'GIRLESA MILENA MEDINA LAVERDE', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3206212688-3106564787', 'C-72', '0');
INSERT INTO `hojas_vida` VALUES ('6439', '0', '', '3552405', null, '1985-12-25', null, '0000-00-00', '0', '146', '350', '0', '5', '0', '209', '0', '1', '', 'RAUL ALBERTO MONSALVE CEBALLOS', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3117417622-3128594062', 'C-73', '0');
INSERT INTO `hojas_vida` VALUES ('6440', '0', 'BARRIO SAN DIEGO', '1001389361', '2016-05-03', '1987-09-19', null, '0000-00-00', '0', '132', '369', '0', '30', '0', '208', '0', '1', '', 'GELMER ANDRES HENAO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3226716194', 'CM1-01', '0');
INSERT INTO `hojas_vida` VALUES ('6441', '0', '', '43482407', '2016-05-03', '1974-10-02', null, '0000-00-00', '0', '132', '309', '0', '30', '0', '208', '0', '2', '', 'ERMILENCY RUTH BUILES MARIN', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS ', '0', '3117584061', 'CM1-02', '0');
INSERT INTO `hojas_vida` VALUES ('6442', '0', '', '70135148', '2016-05-03', '1967-10-03', null, '0000-00-00', '0', '132', '316', '0', '30', '0', '208', '0', '1', '', 'JOSE DE JESUS MONTOYA POSADA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3148076879', 'CM1-03', '0');
INSERT INTO `hojas_vida` VALUES ('6443', '0', '', '1035391361', '2016-05-03', '1995-11-16', null, '0000-00-00', '0', '129', '324', '0', '30', '0', '209', '0', '1', '', 'JULIAN YESID CARREÑO SANCHEZ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3148095350', 'CM1-04', '0');
INSERT INTO `hojas_vida` VALUES ('6444', '0', 'BARRIO EL PLATINO', '1035391019', '2016-05-03', '1994-08-25', '2016-05-03', '0000-00-00', '0', '129', '348', '0', '30', '0', '209', '0', '1', '', 'EDWIN MAURICIO ACEVEDO SERNA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS ', '1', '3103816809', 'CM1-05', '0');
INSERT INTO `hojas_vida` VALUES ('6445', '0', 'villa nelly', '9860570', '2016-05-03', '1976-01-11', '2016-05-03', '0000-00-00', '0', '149', '324', '0', '31', '0', '209', '220', '1', '1', 'DIVIER ANTONIO RESTREPO JIMENEZ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3217479363', 'CM2-01', '0');
INSERT INTO `hojas_vida` VALUES ('6446', '0', '', '1001389519', null, '1989-01-16', '2016-05-03', '0000-00-00', '0', '132', '323', '0', '30', '0', '209', '0', '2', '', 'LEIDY CLEIDY PULGARIN FORONDA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS ', '1', '3148404252', 'CM1-06', '0');
INSERT INTO `hojas_vida` VALUES ('6447', '0', 'BARRIO PÉNJAMO', '1035390690', null, '1993-07-10', '2016-05-03', '0000-00-00', '0', '132', '348', '0', '30', '0', '209', '0', '2', '', 'ADRIANA MARCELA CARDONA VERGARA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS ', '1', '3216613708', 'CM1-07', '0');
INSERT INTO `hojas_vida` VALUES ('6448', '0', 'SAN DIEGO', '71452504', null, '1984-05-10', '2016-05-03', '0000-00-00', '0', '148', '369', '0', '31', '0', '208', '0', '1', '1', 'OVIDIO ALBEIRO MARIN ', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS ', '1', '3136252102', 'CM2-02', '0');
INSERT INTO `hojas_vida` VALUES ('6449', '0', 'BARRIO CALLE NUEVA ', '71174164', null, '1978-04-30', '2016-05-03', '0000-00-00', '0', '132', '348', '0', '30', '0', '209', '0', '1', '', 'OSSMAR ALEJANDRO ZAPATA ARIAS ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS ', '1', '3137301060', 'CM1-08', '0');
INSERT INTO `hojas_vida` VALUES ('6450', '0', 'CALLE EL COMANDO', '1007335143', null, '1995-02-03', '2016-05-03', '0000-00-00', '0', '148', '369', '0', '31', '0', '208', '0', '1', '1', 'ARBEY FRANCO PINEDA', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS ', '1', '3116382892', 'CM2-03', '0');
INSERT INTO `hojas_vida` VALUES ('6451', '0', 'BARRIO EL PLATINO', '1035389084', null, '1988-08-28', '2016-05-03', '0000-00-00', '0', '132', '348', '0', '30', '0', '209', '0', '1', '', 'DEIMAR ALEXANDER CARDONA FRANCO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS ', '1', '3105221762', 'CM1-09', '0');
INSERT INTO `hojas_vida` VALUES ('6452', '0', 'VEREDA EL CADILLO', '103539081', null, '1993-11-27', '2016-05-03', '0000-00-00', '0', '132', '330', '0', '31', '0', '209', '0', '1', '1', 'FABIAN ANDRES QUINTANA CASTAÑO ', 'RECIBIDO POR OFICINA MOVIL-2 CISNERO ', '1', '3218121913', 'CM2-04', '0');
INSERT INTO `hojas_vida` VALUES ('6453', '0', '', '1001389411', null, '1996-05-11', '2016-05-03', '0000-00-00', '0', '132', '313', '0', '30', '0', '209', '0', '1', '', 'WILMAR ERNEY BENAVIDES', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS ', '1', '3136836853', 'CM1-10', '0');
INSERT INTO `hojas_vida` VALUES ('6454', '0', 'CALLE PRINCIPAL', '1000393871', null, '1995-06-30', '2016-05-03', '0000-00-00', '0', '132', '369', '0', '31', '0', '208', '0', '1', '1', 'FREDY ANDRES POSADA PINEDA ', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS ', '1', '3206681252', 'CM2-05', '0');
INSERT INTO `hojas_vida` VALUES ('6455', '0', 'SAN DIEGO', '78029274', null, '1977-02-12', '2016-05-03', '0000-00-00', '0', '132', '369', '0', '31', '0', '208', '0', '1', '1', 'SANTIAGO JOSE DAZA PEÑATA', 'RECIBIDO POR IFICINA MOVIL-2 CISNEROS ', '1', '3218021039', 'CM2-06', '0');
INSERT INTO `hojas_vida` VALUES ('6456', '0', 'VILLA LAURELES ', '1035389897', null, '1991-04-07', '2016-05-03', '0000-00-00', '0', '148', '324', '0', '31', '0', '209', '0', '1', '1', 'DIEGO ALEXANDER PEREZ CASTELLANOS', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS ', '1', '3196050031', 'CM2-07', '0');
INSERT INTO `hojas_vida` VALUES ('6457', '0', '', '1045112318', null, '1994-12-14', '2016-05-03', '0000-00-00', '0', '148', '337', '0', '31', '0', '209', '0', '1', '1', 'DANIEL ALEXIS OCHOA CORDOBA ', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS ', '1', '3117689895', 'CM2-08', '0');
INSERT INTO `hojas_vida` VALUES ('6458', '0', '', '10399692149', null, '1991-03-26', '2016-05-03', '0000-00-00', '0', '132', '369', '0', '31', '0', '208', '0', '1', '1', 'VICTOR ANIBAL HENAO TEJADA', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS ', '1', '3208401537', 'CM2-09', '0');
INSERT INTO `hojas_vida` VALUES ('6459', '0', '', '71171823', null, '1966-06-10', '2016-05-03', '0000-00-00', '0', '148', '315', '0', '31', '0', '209', '0', '1', '1', 'DAGOBERTO RODRIGUEZ ', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS ', '1', '3137914117', 'CM2-10', '0');
INSERT INTO `hojas_vida` VALUES ('6460', '0', '', '1035391756', '2016-05-03', '1997-02-19', '2016-05-03', '0000-00-00', '0', '132', '337', '0', '31', '0', '209', '0', '1', '1', 'DUVAN FERNEY OCHOA CORDOBA ', 'RECIBIDO POR OFCINA MOVIL-2 CISNEROS ', '1', '3207441803', 'CM2-11', '0');
INSERT INTO `hojas_vida` VALUES ('6461', '0', '', '39187879', null, '1983-10-12', '2016-05-03', '0000-00-00', '0', '132', '316', '0', '31', '0', '210', '0', '1', '1', 'ERICA MARCELA CIFUENTES MARIN ', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS ', '1', '3147728695', 'CM2-12', '0');
INSERT INTO `hojas_vida` VALUES ('6462', '0', '', '1001738954', null, '1997-11-24', '2016-05-03', '0000-00-00', '0', '132', '311', '0', '31', '0', '208', '0', '1', '1', 'MAURICIO ESTIVEN ARBOLEDA DIAZ ', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS ', '1', '3214979658', 'CM2-13', '0');
INSERT INTO `hojas_vida` VALUES ('6463', '0', '', '92541658', '2016-05-03', '1981-06-17', '2016-05-03', '0000-00-00', '0', '148', '330', '0', '31', '0', '208', '0', '1', '1', 'AMAURIS JOSE RIOS ARROYO', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS ', '1', 'RIOS ARANGO', 'CM2-14', '0');
INSERT INTO `hojas_vida` VALUES ('6464', '0', '', '1035390757', null, '1993-06-03', '2016-05-03', '0000-00-00', '0', '132', '323', '0', '31', '0', '208', '0', '1', '', 'FLOR ANGELA GIL ALVAREZ ', 'RECIBIDO POR OFICINA MOVIL-2 CISNEROS', '1', '3205243307 ', 'CM2-15', '0');
INSERT INTO `hojas_vida` VALUES ('6465', '0', '', '10011389454', null, '1997-05-05', '2016-05-03', '0000-00-00', '0', '148', '323', '0', '31', '0', '208', '0', '1', '1', 'SEBASTIAN CASTAÑO MUÑOZ ', 'RECIBIDO POOFICINA MOVIL 2 CISNEROS ', '1', '3104953110', 'CM2-16', '0');
INSERT INTO `hojas_vida` VALUES ('6466', '0', '', '43484081', null, '1984-09-26', '2016-05-03', '0000-00-00', '0', '148', '321', '0', '31', '0', '209', '0', '2', '1', 'ELIANA HORTENCIA VELASQUEZ VALENCIA', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3218502518', 'CM2-17', '0');
INSERT INTO `hojas_vida` VALUES ('6467', '0', '', '1035389789', null, '1990-10-29', '2016-05-03', '0000-00-00', '0', '132', '348', '0', '31', '0', '209', '0', '2', '', 'NORA CATALINA PUERTA RENDON ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3123969055', 'CM2-18', '0');
INSERT INTO `hojas_vida` VALUES ('6468', '0', '', '1035389630', null, '1990-02-11', '2016-05-03', '0000-00-00', '0', '132', '348', '0', '31', '0', '209', '0', '2', '', 'DIANA MARIA CARDONA VERGARA', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3213774637', 'CM2-19', '0');
INSERT INTO `hojas_vida` VALUES ('6469', '0', '', '103538505', null, '1987-07-13', '2016-05-03', '0000-00-00', '0', '148', '324', '0', '31', '0', '209', '0', '1', '1', 'AMNDERSSON FARLEY BENAVIDES GARCIA', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3136912803', 'CM2-20', '0');
INSERT INTO `hojas_vida` VALUES ('6470', '0', 'SECTOR ARANZAZU CALLE 18# 18-13', '1035390159', null, '1991-12-06', null, '0000-00-00', '0', '141', '348', '0', '5', '0', '210', '0', '2', '', 'MARISOL BEDOYA RUA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3128173062-3117619968', 'C-74', '0');
INSERT INTO `hojas_vida` VALUES ('6471', '0', 'SECTOR SAN JORGE', '71273168', null, '1981-12-08', null, '0000-00-00', '0', '132', '350', '0', '5', '0', '208', '0', '1', '', 'LISANDRO MUÑOZ RODRIGUEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3209140355', 'C-75', '0');
INSERT INTO `hojas_vida` VALUES ('6472', '0', 'SECTOR LA CHAPOLA', '1044101018', null, '1991-02-14', null, '0000-00-00', '0', '132', '348', '0', '5', '0', '208', '0', '1', '', 'JOHN ALEJANDRO SUAREZ AGUDELO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3194443311', 'C-76', '0');
INSERT INTO `hojas_vida` VALUES ('6473', '0', '', '1004798794', null, '1986-05-30', null, '0000-00-00', '0', '148', '320', '0', '5', '0', '208', '0', '1', '', 'JOSE FABIAN GONZALEZ CASTAÑEDA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS ', '0', '3508189122', 'C-77', '0');
INSERT INTO `hojas_vida` VALUES ('6474', '0', '', '71173699', null, '1975-05-20', null, '0000-00-00', '0', '148', '311', '0', '5', '0', '209', '0', '1', '', 'EDILSON ROBERTO SUAREZ SERNA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3127505155', 'C-78', '0');
INSERT INTO `hojas_vida` VALUES ('6475', '0', '', '71186645', null, '1969-05-14', null, '0000-00-00', '0', '148', '313', '0', '5', '0', '209', '0', '1', '', 'MARCOS LISANDE CUERVO RENDON', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3216164892', 'C-79', '0');
INSERT INTO `hojas_vida` VALUES ('6476', '0', '', '1035390038', null, '1991-09-03', '2016-05-04', '0000-00-00', '0', '132', '311', '0', '31', '0', '208', '0', '1', '1', 'WALTER ALONSO GOMEZ CORTES ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS', '1', '3183062564', 'CM2-21', '0');
INSERT INTO `hojas_vida` VALUES ('6477', '0', '', '71171191', null, '1963-11-14', '2016-05-04', '0000-00-00', '0', '148', '326', '0', '31', '0', '208', '0', '1', '1', 'LUIS OCARIS VIDAL AGUDELO', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3116042572', 'CM2-21', '0');
INSERT INTO `hojas_vida` VALUES ('6478', '0', '', '355197', null, '1982-04-22', '2016-05-04', '0000-00-00', '0', '132', '324', '0', '31', '0', '208', '0', '1', '1', 'NELSON ALEJANDRO ESCOBAR CASTRILLON ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3216186404', 'CM2-23', '0');
INSERT INTO `hojas_vida` VALUES ('6479', '0', 'CARRERA DUQUE # 18-39', '1035391916', null, '1997-09-24', null, '0000-00-00', '0', '148', '314', '0', '5', '0', '209', '0', '1', '', 'YORMAN GOMEZ ALVAREZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '8631819-3117524785-3127538439', 'C-80', '0');
INSERT INTO `hojas_vida` VALUES ('6480', '0', '', '1035391052', null, '1994-10-07', '2016-05-04', '0000-00-00', '0', '148', '324', '0', '31', '0', '209', '0', '1', '1', 'JUAN GUILLERMO MARIN GOMEZ ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3146408104', 'CM2-24', '0');
INSERT INTO `hojas_vida` VALUES ('6481', '0', '', '71173933', null, '1975-09-23', '2016-05-04', '0000-00-00', '0', '146', '348', '0', '31', '0', '208', '0', '1', '1', 'WILTON BERNARDO ALZATE MUÑOZ ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS', '1', '3148330573', 'CM2-25', '0');
INSERT INTO `hojas_vida` VALUES ('6482', '0', '', '1035390003', null, '1991-06-10', '2016-05-04', '0000-00-00', '0', '129', '310', '0', '30', '0', '209', '0', '1', '', 'DARNOVER ALBERTO HERNANDEZ REYES', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3105130961', 'CM1-11', '0');
INSERT INTO `hojas_vida` VALUES ('6483', '0', '', '71172540', null, '1969-04-27', '2016-05-04', '0000-00-00', '0', '129', '262', '0', '30', '0', '209', '0', '1', '', 'JESUS ARGIRO CASTRILLON VALENCIA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3207836815', 'CM1-12', '0');
INSERT INTO `hojas_vida` VALUES ('6484', '0', 'BARRIO CALLE LA PAZ', '71173660', null, '1975-05-04', '2016-05-04', '0000-00-00', '0', '132', '348', '0', '30', '0', '208', '0', '1', '', 'FREDY ANTONIO MUÑOZ MUÑOZ ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3226858463', 'CM1-13', '0');
INSERT INTO `hojas_vida` VALUES ('6485', '0', '', '71175150', null, '1984-03-21', '2016-05-04', '0000-00-00', '0', '132', '324', '0', '30', '0', '208', '0', '1', '', 'JULIAN ANDRES VELILLA RUIZ ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3106462796', 'CM1-14', '0');
INSERT INTO `hojas_vida` VALUES ('6486', '0', '', '1020466435', null, '1995-03-01', '2016-05-04', '0000-00-00', '0', '148', '369', '0', '31', '0', '209', '0', '1', '1', 'DANIEL ESTEBAN ALZATE ZAPATA', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3112590677', 'CM2-26', '0');
INSERT INTO `hojas_vida` VALUES ('6487', '0', '', '1143966248', '2016-05-04', '1994-07-17', '2016-05-04', '0000-00-00', '0', '149', '324', '0', '30', '0', '208', '0', '1', '', 'EDWIN HERNAN ORTIZ CAICEDO ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3146116417', 'CM1-15', '0');
INSERT INTO `hojas_vida` VALUES ('6488', '0', '', '3912858', null, '1981-12-20', '2016-05-04', '0000-00-00', '0', '132', '308', '0', '31', '0', '207', '0', '2', '1', 'DIANA PATRICIA VIDAL DIAZ ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3128628263', 'CM2-27', '0');
INSERT INTO `hojas_vida` VALUES ('6489', '0', '', '43483327', null, '1980-07-20', '2016-05-04', '0000-00-00', '0', '132', '330', '0', '30', '0', '209', '0', '2', '', 'GLORIA MARISELA QUINTANA CASTAÑO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3218784461', 'CM1-16', '0');
INSERT INTO `hojas_vida` VALUES ('6490', '0', 'CRA. 9 # 20-28', '43483238', null, '1972-10-22', '2016-05-04', '0000-00-00', '0', '132', '348', '0', '30', '0', '209', '0', '2', '', 'MARTHA LIA ESTRADA JARAMILLO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3128932773', 'CM1-17', '0');
INSERT INTO `hojas_vida` VALUES ('6491', '0', 'CRA. 82D #20B-27 BELÉN ALTA VISTA', '1035391874', null, '1997-08-17', '2016-05-04', '0000-00-00', '0', '132', '349', '0', '30', '0', '209', '0', '2', '', 'VALENTINA JARAMILLO MEDINA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3017139314', 'CM1-18', '0');
INSERT INTO `hojas_vida` VALUES ('6492', '0', 'BARRIO EL CARRETEABLE', '1035390101', null, '1990-06-07', '2016-05-04', '0000-00-00', '0', '132', '348', '0', '30', '0', '210', '0', '1', '', 'EDWARD ANDRES ISAZA MUÑOZ', '', '1', '3105444665', 'CM1-19', '0');
INSERT INTO `hojas_vida` VALUES ('6493', '0', 'CRA. 13B #21 16', '8401351', null, '1955-01-27', '2016-05-04', '0000-00-00', '0', '132', '323', '0', '30', '0', '209', '0', '1', '', 'JESUS ADAN GARCIA MORALES ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3128937413', 'CM1-20', '0');
INSERT INTO `hojas_vida` VALUES ('6494', '0', '', '1035390310', null, '1992-07-02', '2016-05-04', '0000-00-00', '0', '132', '309', '0', '30', '0', '209', '0', '2', '', 'DANIELA KATERIN MELGUIZO CALDERON ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3122524204', 'CM1-21', '0');
INSERT INTO `hojas_vida` VALUES ('6495', '0', '', '71174300', null, '1972-06-23', '2016-05-04', '0000-00-00', '0', '132', '324', '0', '30', '0', '208', '0', '1', '', 'RUBEN DARIO GARCIA ARIAS ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3118144302', 'CM1-22', '0');
INSERT INTO `hojas_vida` VALUES ('6496', '0', '', '71985988', null, '1977-06-27', '2016-05-04', '0000-00-00', '0', '132', '324', '0', '30', '0', '208', '0', '1', '', 'LUIS FELIPE HERNANDEZ MARTINEZ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3217053421', 'CM1-23', '0');
INSERT INTO `hojas_vida` VALUES ('6497', '0', '', '1035390864', null, '1993-09-12', '2016-05-04', '0000-00-00', '0', '132', '317', '0', '30', '0', '209', '0', '2', '', 'MARIBEL GALLEGO HENAO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3137189292', 'CM1-24', '0');
INSERT INTO `hojas_vida` VALUES ('6498', '0', '', '1035391511', null, '1996-06-09', '2016-05-04', '0000-00-00', '0', '132', '323', '0', '30', '0', '209', '0', '1', '', 'SEBASTIAN ALEJANDRO OSORIO ZAPATA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3107123716', 'CM1-25', '0');
INSERT INTO `hojas_vida` VALUES ('6499', '0', 'BARRIO VILLA NELLY', '1045111359', null, '1993-03-08', '2016-05-04', '0000-00-00', '0', '132', '348', '0', '30', '0', '209', '0', '1', '', 'OSCAR FERNANDO HERRERA IBARRA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3206455277', 'CM1-26', '0');
INSERT INTO `hojas_vida` VALUES ('6500', '0', 'CALLE NARIÑO #20-40', '1035391446', null, '1996-03-21', '2016-05-04', '0000-00-00', '0', '154', '348', '0', '30', '0', '209', '0', '1', '', 'GABRIEL GARCIA SUAREZ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3208019807', 'CM1-27', '0');
INSERT INTO `hojas_vida` VALUES ('6501', '0', 'BARRIO PÉNJAMO', '70140258', null, '1978-09-08', '2016-05-04', '0000-00-00', '0', '129', '348', '0', '30', '0', '209', '0', '1', '', 'JUAN CARLOS AGUDELO GARCIA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3225855915', 'CM1-28', '0');
INSERT INTO `hojas_vida` VALUES ('6502', '0', 'BARRIO LA CHAPOLA', '71175111', null, '1983-12-09', '2016-05-04', '0000-00-00', '0', '148', '348', '0', '30', '0', '208', '0', '1', '', 'JHON ALEXANDER OSORIO AGUDELO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3147874436', 'CM1-29', '0');
INSERT INTO `hojas_vida` VALUES ('6503', '0', '', '1001389976', '2016-05-05', '1997-11-10', '2016-05-04', '0000-00-00', '0', '132', '310', '0', '30', '0', '209', '0', '1', '', 'HERNAN DAVID ISAZA BEDOYA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3117663624', 'CM1-30', '0');
INSERT INTO `hojas_vida` VALUES ('6504', '0', '', '1035389785', null, '1991-01-29', '2016-05-05', '0000-00-00', '0', '148', '310', '0', '31', '0', '209', '0', '1', '1', 'FERNEY ALEXANDER TABORDA', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3214224267', 'CM2-28', '0');
INSERT INTO `hojas_vida` VALUES ('6505', '0', '', '1035389136', null, '1989-03-03', '2016-05-05', '0000-00-00', '0', '132', '324', '0', '31', '0', '209', '0', '2', '1', 'ERIKA MILENA RUIZ BETANCUR', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3124902587', 'CM2-29', '0');
INSERT INTO `hojas_vida` VALUES ('6506', '0', '', '71451764', null, '1976-01-24', '2016-05-05', '0000-00-00', '0', '148', '438', '0', '31', '0', '207', '0', '1', '1', 'FABER NOLBERTO MONTOYA MONTOYA', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3127784464', 'CM2-30', '0');
INSERT INTO `hojas_vida` VALUES ('6507', '0', '', '98506674', null, '1978-09-02', '2016-05-05', '0000-00-00', '0', '148', '315', '0', '30', '0', '209', '0', '1', '', 'WILLIAM ALONZO GOMEZ CORTES', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3147613388', 'CM1-31', '0');
INSERT INTO `hojas_vida` VALUES ('6508', '0', '', '71170875', null, '1960-03-12', '2016-05-05', '0000-00-00', '0', '148', '286', '0', '30', '0', '208', '0', '1', '', 'MARCO TULIO SUAREZ MONSALVE', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3192646409', 'CM1-32', '0');
INSERT INTO `hojas_vida` VALUES ('6509', '0', 'BARRIO CALLE BERRIO', '1001389413', null, '1994-03-03', '2016-05-05', '0000-00-00', '0', '157', '348', '0', '30', '0', '209', '0', '1', '', 'JHONNY ARBEY PARRA FLOREZ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3114033786', 'CM1-33', '0');
INSERT INTO `hojas_vida` VALUES ('6510', '0', 'CALLE BOLIVAR', '71170649', null, '1961-09-10', '2016-05-05', '0000-00-00', '0', '148', '348', '0', '31', '0', '208', '0', '1', '1', 'JORGE LEONARNO VIVERES SOSSA', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3158009994', 'CM2-31', '0');
INSERT INTO `hojas_vida` VALUES ('6511', '0', 'CL. 19 #23-74', '1035390877', null, '1994-01-16', '2016-05-05', '0000-00-00', '0', '148', '322', '0', '30', '0', '207', '0', '1', '', 'OSCAR ALEXIS BUSTAMANTE MUÑOZ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3127425464', 'CM1-34', '0');
INSERT INTO `hojas_vida` VALUES ('6512', '0', '', '22028100', null, '1960-04-12', '2016-05-05', '0000-00-00', '0', '132', '316', '0', '31', '0', '208', '0', '1', '1', 'LUZ MARINA GARCIA HERNANDEZ ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3206239454', 'CM2-32', '0');
INSERT INTO `hojas_vida` VALUES ('6513', '0', 'BARRIO VILLA NELLY', '71175391', null, '1980-02-08', '2016-05-05', '0000-00-00', '0', '148', '348', '0', '30', '0', '209', '0', '1', '', 'FRANCISCO JAVIER ECHEVERRY FRANCO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3207826142', 'CM1-35', '0');
INSERT INTO `hojas_vida` VALUES ('6514', '0', 'EL ZARZAL', '1035391839', null, '1997-03-06', '2016-05-05', '0000-00-00', '0', '148', '348', '0', '31', '0', '208', '0', '1', '1', 'JUAN DAVID GAVIRIAN JARAMILLO', 'RECIBIDOPOR OFICINA MOVIL 2 CISNEROS ', '1', '3148404252', 'CM2-33', '0');
INSERT INTO `hojas_vida` VALUES ('6515', '0', '', '71170424', null, '1961-01-29', '2016-05-05', '0000-00-00', '0', '132', '316', '0', '30', '0', '208', '0', '1', '', 'HENRY DE JESUS BUSTAMANTE', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3128167982', 'CM1-36', '0');
INSERT INTO `hojas_vida` VALUES ('6516', '0', '', '71174570', null, '1980-10-14', '2016-05-05', '0000-00-00', '0', '132', '334', '0', '31', '0', '209', '0', '1', '1', 'MARCOS ANTONIO BARRERA MONTOYA ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3148519680', 'CM2-34', '0');
INSERT INTO `hojas_vida` VALUES ('6517', '0', 'CL. 19 #23-74', '1035391713', null, '1996-12-02', '2016-05-05', '0000-00-00', '0', '0', '348', '0', '30', '0', '0', '0', '1', '', 'DIEGO FERNANDO MUÑOZ HENAO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3107316839', 'CM1-37', '0');
INSERT INTO `hojas_vida` VALUES ('6518', '0', '', '22069641', null, '1968-12-23', '2016-05-05', '0000-00-00', '0', '132', '315', '0', '30', '0', '208', '0', '2', '', 'SOR MELIDA AGUDELO CATAÑO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3113543232', 'CM1-38', '0');
INSERT INTO `hojas_vida` VALUES ('6519', '0', '', '71171430', null, '1964-04-30', '2016-05-05', '0000-00-00', '0', '148', '262', '0', '31', '0', '208', '0', '1', '1', 'RODRIGO ANTONIO GARCIA GOMEZ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS  ', '1', '3117918569', 'CM2-35', '0');
INSERT INTO `hojas_vida` VALUES ('6520', '0', '', '22034026', null, '1965-06-19', '2016-05-05', '0000-00-00', '0', '132', '308', '0', '30', '0', '209', '0', '2', '', 'MARTHA LUCIA RUA DUQUE ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3107248100', 'CM1-39', '0');
INSERT INTO `hojas_vida` VALUES ('6521', '0', 'CRA. 8B #20-42', '1015998070', null, '1986-09-01', '2016-05-05', '0000-00-00', '0', '148', '324', '0', '30', '0', '208', '0', '1', '', 'FABIO ALEXANDER VANEGAS PORRAS', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3103752428', 'CM1-40', '0');
INSERT INTO `hojas_vida` VALUES ('6522', '0', 'BARRIO NUEVO', '1017197096', null, '1991-06-11', '2016-05-05', '0000-00-00', '0', '148', '369', '0', '31', '0', '208', '0', '1', '1', 'ARBEY ALEJANDRO FLOREZ RINCON  ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3206762482', 'CM2-36', '0');
INSERT INTO `hojas_vida` VALUES ('6523', '0', '', '98472658', null, '1975-12-05', '2016-05-05', '0000-00-00', '0', '148', '412', '0', '31', '0', '208', '0', '1', '1', 'DIEGO FERNANDO MEJIA GUERRA ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3135615061', 'CM2-37', '0');
INSERT INTO `hojas_vida` VALUES ('6524', '0', 'BARRIO NUEVO', '1042773598', null, '1994-10-19', '2016-05-05', '0000-00-00', '0', '132', '369', '0', '31', '0', '209', '0', '1', '1', 'ANDRES NEFTALI  FLOREZ ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3136966569', 'CM2-38', '0');
INSERT INTO `hojas_vida` VALUES ('6525', '0', '', '43483523', null, '1981-09-26', '2016-05-05', '0000-00-00', '0', '132', '324', '0', '31', '0', '209', '0', '2', '1', 'LILIANA PATRICIA SOSA ISAZA', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3128253697', 'CM2-39', '0');
INSERT INTO `hojas_vida` VALUES ('6526', '0', 'BARRIO EL UNO ', '1035389028', null, '1985-10-19', '2016-05-05', '0000-00-00', '0', '148', '348', '0', '31', '0', '208', '0', '1', '1', 'JUAN GUILLERMO DELGADO VALENCIA ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3113936627', 'CM2-40', '0');
INSERT INTO `hojas_vida` VALUES ('6527', '0', '', '71174161', null, '1977-06-29', '2016-05-05', '0000-00-00', '0', '132', '333', '0', '30', '0', '208', '0', '1', '', 'JHOBANI ALBERTO DELGADO VALENCIA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3207453411', 'CM1-41', '0');
INSERT INTO `hojas_vida` VALUES ('6528', '0', 'BARRIO CALLE LA PAZ', '1035388077', null, '1986-04-25', '2016-05-05', '0000-00-00', '0', '132', '348', '0', '30', '0', '209', '0', '2', '', 'SANDRA MILENA SOSA RODAS ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3104115614', 'CM1-42', '0');
INSERT INTO `hojas_vida` VALUES ('6529', '0', 'CL. 19 #88A 19 BELÉN ', '1035388920', null, '1988-10-12', '2016-05-05', '0000-00-00', '0', '133', '349', '0', '30', '0', '209', '0', '2', '', 'LUISA FERNANDA MIRANDA HENAO ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3136268365', 'CM1-43', '0');
INSERT INTO `hojas_vida` VALUES ('6530', '0', 'BARRIO CALLE COLÓN', '1035392014', null, '1998-02-09', '2016-05-05', '0000-00-00', '0', '132', '348', '0', '30', '0', '209', '0', '2', '', 'VALERIA JARAMILLO BURITICA ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3103727851', 'CM1-44', '0');
INSERT INTO `hojas_vida` VALUES ('6531', '0', '', '43483072', null, '1978-08-27', '2016-05-05', '0000-00-00', '0', '132', '323', '0', '30', '0', '210', '0', '2', '', 'SANDRA JANETH CARDONA CALDERON', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3122885376', 'CM1-45', '0');
INSERT INTO `hojas_vida` VALUES ('6532', '0', 'SANTA CRUZ', '48470293', null, '1964-01-19', '2016-05-05', '0000-00-00', '0', '148', '349', '0', '30', '0', '207', '0', '1', '', 'JOHN JAIRO FRANCO VAHOS ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3117212712', 'CM1-46', '0');
INSERT INTO `hojas_vida` VALUES ('6533', '0', 'BARRIO CARRERA BOLIVAR', '1035389553', null, '1989-10-30', '2016-05-05', '0000-00-00', '0', '148', '348', '0', '30', '0', '209', '0', '1', '', 'CRISTIAN JAVIER MUNERA CATAÑO ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3209206797', 'CM1-47', '0');
INSERT INTO `hojas_vida` VALUES ('6534', '0', '', '1035391375', null, '1995-12-14', '2016-05-05', '0000-00-00', '0', '148', '284', '0', '30', '0', '209', '0', '1', '', 'JUAN CAMILO SIERRA PUERTA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3192646481', 'CM1-48', '0');
INSERT INTO `hojas_vida` VALUES ('6535', '0', 'CR. 24 # 18-39', '71174557', null, '1980-03-17', '2016-05-05', '0000-00-00', '0', '148', '315', '0', '30', '0', '209', '0', '1', '', 'NELSON DE JESUS MESA MARTINEZ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3225515517', 'CM1-49', '0');
INSERT INTO `hojas_vida` VALUES ('6536', '0', 'BARRIO SAN DIEGO ', '15483894', null, '1964-09-14', '2016-05-05', '0000-00-00', '0', '148', '369', '0', '30', '0', '207', '0', '1', '', 'LUIS ANGEL ARANGO PINEDA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3117322224', 'CM1-50', '0');
INSERT INTO `hojas_vida` VALUES ('6537', '0', '', '71171302', null, '1964-04-14', null, '0000-00-00', '0', '148', '320', '0', '5', '0', '208', '0', '1', '', 'OCTAVIO DE JESUS LONDOÑO PARRA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3102702141', 'C-81', '0');
INSERT INTO `hojas_vida` VALUES ('6538', '0', 'CARRERA BOLIVAR # 20-57', '1035388652', null, '1988-02-06', null, '0000-00-00', '0', '146', '348', '0', '5', '0', '209', '0', '1', '', 'JULIAN CAMILO MENDOZA LOPEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3104272902', 'C-82', '0');
INSERT INTO `hojas_vida` VALUES ('6539', '0', 'CALLE 21 # 21-137', '71174678', '2016-05-05', '1981-08-07', null, '0000-00-00', '0', '159', '348', '0', '5', '0', '210', '0', '1', '', 'MANUEL ANTONIO HURTADO CANO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3207401570-3144287924', 'C-83', '0');
INSERT INTO `hojas_vida` VALUES ('6540', '0', '', '1035391680', null, '1996-10-30', null, '0000-00-00', '0', '149', '348', '0', '5', '0', '210', '0', '1', '', 'YEISON ANDRES CASTAÑO ECHEVERRY', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3218494640', 'C-84', '0');
INSERT INTO `hojas_vida` VALUES ('6541', '0', '', '1035390554', null, '1994-03-27', '2016-05-05', '0000-00-00', '0', '132', '323', '0', '31', '0', '209', '0', '1', '1', 'WILLINGTON ANTONIO ZAPATA CUARTAS', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS', '1', '3205038065', 'CM2-41', '0');
INSERT INTO `hojas_vida` VALUES ('6542', '0', 'DIAGONAL 62#39 A-08', '71175260', null, '1984-10-30', null, '0000-00-00', '0', '0', '348', '0', '5', '0', '0', '0', '1', '', 'HECTOR MAURICIO CHAVARRIA GUZMAN', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3137510803', 'C-85', '0');
INSERT INTO `hojas_vida` VALUES ('6543', '0', '', '1037370389', null, '1998-01-16', '2016-05-05', '0000-00-00', '0', '132', '436', '0', '31', '0', '209', '0', '2', '1', 'DANIELA PATRICIA GONZALEZ CORREA', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS', '1', '3187042946', 'CM2-42', '0');
INSERT INTO `hojas_vida` VALUES ('6544', '0', '', '3552151', null, '1982-01-26', null, '0000-00-00', '0', '148', '411', '0', '5', '0', '208', '0', '1', '', 'MAURICIO ALBERTO ALVAREZ HENAO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3126816428', 'C-86', '0');
INSERT INTO `hojas_vida` VALUES ('6545', '0', '', '1035388542', null, '1987-08-23', '2016-05-05', '0000-00-00', '0', '132', '313', '0', '30', '0', '209', '0', '2', '', 'MARYLIN JHOANA BUITRAGO ZAPATA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3127653827', 'CM1-51', '0');
INSERT INTO `hojas_vida` VALUES ('6546', '0', 'CALLE 1 # 12-48 SECTOR JUAN XXIII', '3589098', null, '1962-06-01', null, '0000-00-00', '0', '0', '369', '0', '5', '0', '0', '0', '1', '', 'PEDRO LUIS MEDINA RUA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3215902192', 'C-87', '0');
INSERT INTO `hojas_vida` VALUES ('6547', '0', '', '22041876', null, '1984-01-13', '2016-05-05', '0000-00-00', '0', '132', '411', '0', '31', '0', '208', '0', '1', '', 'OLINDA NOEMY CASTRILLON SALAZAR', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3137199013', 'CM2-43', '0');
INSERT INTO `hojas_vida` VALUES ('6548', '0', 'LOS LAURELES', '71175350', null, '1984-01-01', '2016-05-05', '0000-00-00', '0', '148', '369', '0', '30', '0', '209', '0', '1', '', 'SANDRO LEON GALVIS OSORIO ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3148806954', 'CM1-52', '0');
INSERT INTO `hojas_vida` VALUES ('6549', '0', '', '1035388914', null, '1988-12-12', '2016-05-05', '0000-00-00', '0', '132', '323', '0', '31', '0', '208', '0', '1', '', 'ILDER ALONSO PARRA', 'RECIBIDO POR OFICINA MOVIL 2 CISNERO ', '1', '3122133687', 'CM2-44', '0');
INSERT INTO `hojas_vida` VALUES ('6550', '0', 'BARRIO NUEVO', '98484511', null, '1977-05-10', '2016-05-05', '0000-00-00', '0', '132', '369', '0', '30', '0', '208', '0', '1', '', 'LEONARDO DE JESUS OSORIO GARCIA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3107965431', 'CM1-53', '0');
INSERT INTO `hojas_vida` VALUES ('6551', '0', '', '6210283', null, '1957-01-29', '2016-05-05', '0000-00-00', '0', '148', '286', '0', '30', '0', '207', '0', '1', '', 'WILLIAM CIFUENTES', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3106821810', 'CM1-54', '0');
INSERT INTO `hojas_vida` VALUES ('6552', '0', '', '1040364143', null, '1990-11-24', null, '0000-00-00', '0', '148', '350', '0', '5', '0', '208', '0', '1', '', 'YERMIS ENRRIQUE NARVAEZ GAMARRA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3113216173', 'C-88', '0');
INSERT INTO `hojas_vida` VALUES ('6553', '0', 'BARRIO VILLA NELLY', '1035390547', null, '1993-03-03', '2016-05-05', '0000-00-00', '0', '148', '348', '0', '30', '0', '209', '0', '1', '', 'JUAN DAVID QUINTERO FRANCO ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3126899811', 'CM1-55', '0');
INSERT INTO `hojas_vida` VALUES ('6554', '0', '', '43483256', null, '1980-01-28', '2016-05-05', '0000-00-00', '0', '132', '323', '0', '31', '0', '209', '0', '2', '', 'MARY LUZ RUIZ BETANCUR ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3147753935', 'CM2-45', '0');
INSERT INTO `hojas_vida` VALUES ('6555', '0', '', '71173592', null, '1974-10-28', '2016-05-05', '0000-00-00', '0', '148', '262', '0', '30', '0', '209', '0', '1', '', 'LUIS CARLOS HENAO BERRIO ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3116327396', 'CM1-56', '0');
INSERT INTO `hojas_vida` VALUES ('6556', '0', 'BARRIO VILLA NELLY', '3551907', null, '1982-04-21', '2016-05-05', '0000-00-00', '0', '148', '348', '0', '30', '0', '208', '0', '1', '', 'NELSON ALEJANDRO ESCOBAR CASTRILLON', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3216186404', 'CM1-57', '0');
INSERT INTO `hojas_vida` VALUES ('6557', '0', 'BARRIO VILLA NELLY', '1035390187', null, '1991-10-16', '2016-05-05', '0000-00-00', '0', '132', '348', '0', '30', '0', '208', '0', '1', '', 'YEISON ALONSO GONZALEZ PARRA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3116372262', 'CM1-58', '0');
INSERT INTO `hojas_vida` VALUES ('6558', '0', '', '71171880', null, '1966-08-01', '2016-05-05', '0000-00-00', '0', '132', '262', '0', '31', '0', '208', '0', '1', '', 'FABIO ANIBAL GARCIA VANEGAS ', 'RECIBIDO POR OFICINA MOVIL2 CISNEROS ', '1', '3134316854', 'CM2-46', '0');
INSERT INTO `hojas_vida` VALUES ('6559', '0', 'CL. 19 # 23-74', '1035389821', null, '1990-11-23', '2016-05-05', '0000-00-00', '0', '148', '348', '0', '30', '0', '209', '0', '1', '', 'DANIEL ALFONSO MUÑOZ HENAO ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3128174976', 'CM1-59', '0');
INSERT INTO `hojas_vida` VALUES ('6560', '0', '', '1035388558', null, '1987-04-25', '2016-05-05', '0000-00-00', '0', '148', '315', '0', '30', '0', '209', '0', '1', '', 'YORMAN FERNEY VAENCIA MEJIA ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3116488388', 'CM1-60', '0');
INSERT INTO `hojas_vida` VALUES ('6561', '0', '', '21653693', null, '1975-05-23', '2016-05-05', '0000-00-00', '0', '132', '330', '0', '31', '0', '208', '0', '2', '', 'DIANA PATRICIA QUINTANA ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3128388612', 'CM2-47', '0');
INSERT INTO `hojas_vida` VALUES ('6562', '0', 'CL. 19A #23-47', '1035389234', null, '1989-05-25', '2016-05-05', '0000-00-00', '0', '148', '348', '0', '30', '0', '209', '0', '1', '', 'ANGEL ANDRES PEREZ PEREZ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3108392311', 'CM1-61', '0');
INSERT INTO `hojas_vida` VALUES ('6563', '0', 'LA ESPERANZA ', '3589646', null, '1975-05-23', '2016-05-05', '0000-00-00', '0', '148', '350', '0', '31', '0', '207', '0', '1', '1', 'JOSE ALBERTO GALEANO FORONDA', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3205949019', 'CM2-48', '0');
INSERT INTO `hojas_vida` VALUES ('6564', '0', '', '1035389520', null, '1990-02-13', '2016-05-05', '0000-00-00', '0', '148', '315', '0', '30', '0', '209', '0', '1', '', 'ANDERSON YAIR HERRERA JARAMILLO ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3127047397', 'CM1-62', '0');
INSERT INTO `hojas_vida` VALUES ('6565', '0', '', '71172660', null, '1969-10-01', '2016-05-05', '0000-00-00', '0', '132', '317', '0', '30', '0', '209', '0', '1', '', 'CARLOS MARIO ISAZA CARDONA ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3209673747', 'CM1-63', '0');
INSERT INTO `hojas_vida` VALUES ('6566', '0', 'BARRIO BUENOS AIRES', '1020448441', null, '1995-12-20', '2016-05-05', '0000-00-00', '0', '132', '348', '0', '30', '0', '209', '0', '1', '', 'SEBASTIAN CAMILO HURTADO SALDARRIAGA', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3128700926', 'CM1-64', '0');
INSERT INTO `hojas_vida` VALUES ('6567', '0', '', '1035391758', null, '1997-03-07', '2016-05-05', '0000-00-00', '0', '132', '311', '0', '31', '0', '208', '0', '1', '1', 'SIMON FELIPE VERGARA ARCILA ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS ', '1', '3127806933', 'CM2-49', '0');
INSERT INTO `hojas_vida` VALUES ('6568', '0', '', '1001499904', null, '1994-04-13', '2016-05-05', '0000-00-00', '0', '132', '423', '0', '30', '0', '209', '0', '2', '', 'SANDRA LORENA RIOS BUSTAMANTE', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3145879160', 'CM1-65', '0');
INSERT INTO `hojas_vida` VALUES ('6569', '0', 'BARRIO VILLA NELLY', '1102803862', null, '1986-10-25', '2016-05-05', '0000-00-00', '0', '132', '348', '0', '30', '0', '209', '0', '1', '', 'JORGE LUIS MELENDREZ MARQUEZ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3205895095', 'CM1-66', '0');
INSERT INTO `hojas_vida` VALUES ('6570', '0', 'BARRIO SAN DIEGO', '1038063934', null, '1996-12-04', '2016-05-05', '0000-00-00', '0', '132', '423', '0', '30', '0', '209', '0', '2', '', 'YENIFER NATALIA HENAO OSORIO ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3148479704', 'CM1-67', '0');
INSERT INTO `hojas_vida` VALUES ('6571', '0', '', '1035390496', null, '1992-12-29', '2016-05-05', '0000-00-00', '0', '148', '262', '0', '31', '0', '209', '0', '1', '1', 'ADRIAN RIOS RIOS CORDOBA ', 'RECIBIDO POR OFICINA MOVIL 2 CISNEROS', '1', '3117397122', 'CM2-50', '0');
INSERT INTO `hojas_vida` VALUES ('6572', '0', 'LOS ALMENDROS', '1037500384', null, '1988-06-13', '2016-05-05', '0000-00-00', '0', '132', '423', '0', '30', '0', '209', '0', '2', '', 'VANESSA JIMENEZ DUQUE', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3135656555', 'CM1-68', '0');
INSERT INTO `hojas_vida` VALUES ('6573', '0', '', '1035388401', null, '1986-12-31', '2016-05-05', '0000-00-00', '0', '148', '313', '0', '30', '0', '208', '0', '1', '', 'ADRIAN FELIPE ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', 'OROZCO LUJAN ', 'CM1-69', '0');
INSERT INTO `hojas_vida` VALUES ('6574', '0', 'CALLE DEL HOSPITAL ', '71171293', null, '1964-04-29', '2016-05-05', '0000-00-00', '0', '132', '348', '0', '30', '0', '209', '0', '1', '', 'WILLIAM ADRIAN LOPERA LONDOÑO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3117171150', 'CM1-70', '0');
INSERT INTO `hojas_vida` VALUES ('6575', '0', 'BARRIO BUENOS AIRES', '1001738477', null, '1996-04-29', '2016-05-05', '0000-00-00', '0', '148', '348', '0', '30', '0', '208', '0', '1', '', 'LUIS DAVID GALLEGO CATAÑO', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3116080369', 'CM1-71', '0');
INSERT INTO `hojas_vida` VALUES ('6576', '0', 'LOS ALMENDROS', '1035389976', null, '1991-07-13', '2016-05-05', '0000-00-00', '0', '132', '423', '0', '30', '0', '209', '0', '1', '', 'MAURICIO SIERRA CARVAJAL ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3226114895', 'CM1-72', '0');
INSERT INTO `hojas_vida` VALUES ('6577', '0', '', '1039684883', null, '1988-06-12', '2016-05-05', '0000-00-00', '0', '148', '320', '0', '30', '0', '208', '0', '1', '', 'NELSON ENRIQUE VIDAL DIAZ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3113440921', 'CM1-73', '0');
INSERT INTO `hojas_vida` VALUES ('6578', '0', 'BARRIO SAN DIEGO', '71172666', null, '1969-06-04', '2016-05-05', '0000-00-00', '0', '148', '423', '0', '30', '0', '208', '0', '1', '', 'CARLOS MARIO OSPINA HENAO ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3142331736', 'CM1-74', '0');
INSERT INTO `hojas_vida` VALUES ('6579', '0', '', '1035390241', null, '1979-06-12', null, '0000-00-00', '0', '132', '333', '0', '5', '0', '207', '0', '1', '', 'RODRIGO ALBERTO RODRIGUEZ MONSALVE', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3205679029', 'C-89', '0');
INSERT INTO `hojas_vida` VALUES ('6580', '0', '', '1035391180', null, '1995-03-12', '2016-05-05', '0000-00-00', '0', '132', '330', '0', '30', '0', '208', '0', '1', '', 'DAVID DIAZ SERNA ', 'RECIBIDO POR OFICINA MÓVIL 1 CISNEROS', '1', '3154388151', 'CM1-75', '0');
INSERT INTO `hojas_vida` VALUES ('6581', '0', 'LA FLORESTA', '1045426094', null, '1988-08-29', null, '0000-00-00', '0', '132', '370', '0', '5', '0', '0', '0', '1', '', 'LUIS MARIO PACHECO MARTINEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3203982419', 'C-90', '0');
INSERT INTO `hojas_vida` VALUES ('6582', '0', 'PROVIDENCIA', '98470669', null, '1996-07-20', null, '0000-00-00', '0', '132', '350', '0', '5', '0', '209', '0', '1', '', 'ELKIN ROGELIO QUIROZ RAIGOZA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3113474439', 'C-91', '0');
INSERT INTO `hojas_vida` VALUES ('6583', '0', '', '71171879', null, '1966-07-21', null, '0000-00-00', '0', '148', '310', '0', '5', '0', '208', '0', '1', '', 'ENRIQUE ALBEIRO ZULETA RESTREPO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3113713189', 'C-92', '0');
INSERT INTO `hojas_vida` VALUES ('6584', '0', '', '70256517', null, '1979-05-14', null, '0000-00-00', '0', '132', '330', '0', '5', '0', '208', '0', '1', '', 'ADRIAN ALBERTO GAVIRIA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3116059775', 'C-93', '0');
INSERT INTO `hojas_vida` VALUES ('6585', '0', '', '71173827', null, '1975-09-16', null, '0000-00-00', '0', '148', '324', '0', '5', '0', '208', '0', '1', '', 'ROBINSON DE JESUS MEJIA DIOSA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3193479970', 'C-94', '0');
INSERT INTO `hojas_vida` VALUES ('6586', '0', 'CALLE COLON', '1035390444', null, '1992-11-11', null, '0000-00-00', '0', '146', '348', '0', '5', '0', '208', '0', '1', '', 'DANILO SALAZAR GOMEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3196472518-3113727404', 'C-95', '0');
INSERT INTO `hojas_vida` VALUES ('6587', '0', 'BUENOS AIRES', '1035390670', null, '1993-05-03', null, '0000-00-00', '0', '132', '348', '0', '5', '0', '207', '0', '1', '', 'JOSE LUIS MEJIA PIEDRAHITA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3146458366', 'C-96', '0');
INSERT INTO `hojas_vida` VALUES ('6588', '0', 'PROVIDENCIA, SECTOR ALBERTO URIBE', '1010089091', null, '1995-07-20', null, '0000-00-00', '0', '0', '350', '0', '5', '0', '0', '0', '1', '', 'FERNANDO ANTONIO CARDENAS MARIN', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3113627281', 'C-97', '0');
INSERT INTO `hojas_vida` VALUES ('6589', '0', '', '71171033', null, '1963-05-03', null, '0000-00-00', '0', '148', '321', '0', '5', '0', '208', '0', '1', '', 'ELKIN ANTONIO MONSALVE CASTRO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3115537809', 'C-98', '0');
INSERT INTO `hojas_vida` VALUES ('6590', '0', '', '98506994', null, '1980-09-26', null, '0000-00-00', '0', '148', '261', '0', '5', '0', '207', '0', '1', '', 'JUAN DAVID RAMIREZ OSSA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3105428115', 'C-99', '0');
INSERT INTO `hojas_vida` VALUES ('6591', '0', '', '71173107', null, '1967-01-01', null, '0000-00-00', '0', '148', '261', '0', '5', '0', '209', '0', '1', '', 'CARLOS ARTURO AGUIRRE AGUDELO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS ', '0', '3113182974', 'C-100', '0');
INSERT INTO `hojas_vida` VALUES ('6592', '0', '', '71171296', null, '1964-06-03', null, '0000-00-00', '0', '148', '261', '0', '5', '0', '209', '0', '1', '', 'WILLIAM DE JESUS POSADA PUERTA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3136934272', 'C-101', '0');
INSERT INTO `hojas_vida` VALUES ('6593', '0', '', '3605101', null, '1950-09-01', null, '0000-00-00', '0', '148', '261', '0', '5', '0', '208', '0', '1', '', 'ANDRES AVELINO ECHAVARRIA VALENCIA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3203228872', 'C-102', '0');
INSERT INTO `hojas_vida` VALUES ('6594', '0', '', '71183730', null, '1964-02-13', null, '0000-00-00', '0', '148', '261', '0', '5', '0', '208', '0', '1', '', 'DANIEL ALBERTO LOAIZA MADRIGAL ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3136875915', 'C-103', '0');
INSERT INTO `hojas_vida` VALUES ('6595', '0', 'VILLA NELLY', '71905884', null, '1976-04-26', null, '0000-00-00', '0', '132', '348', '0', '5', '0', '208', '0', '1', '', 'RICARDO ARTURO GONZALES VILLEGAS', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3217861804', 'C-104', '0');
INSERT INTO `hojas_vida` VALUES ('6596', '0', '# 23 A 28', '1039758473', null, '1987-04-02', null, '0000-00-00', '0', '148', '315', '0', '5', '0', '209', '0', '1', '', 'CARLOS ANDRES OSORIO VELASQUEZ', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3205164822', 'C-105', '0');
INSERT INTO `hojas_vida` VALUES ('6597', '0', '', '71175484', null, '1986-02-08', null, '0000-00-00', '0', '132', '311', '0', '5', '0', '208', '0', '1', '', 'FABIO NELSON MUÑOZ CALDERON', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3044771124', 'C-106', '0');
INSERT INTO `hojas_vida` VALUES ('6598', '0', 'FLORESTA', '8432294', null, '1980-11-25', null, '0000-00-00', '0', '131', '370', '0', '5', '0', '209', '0', '1', '', 'JEISON RODRIGO ISAZA CALDERA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3105959295', 'C-107', '0');
INSERT INTO `hojas_vida` VALUES ('6599', '0', 'PROVIDENCIA LA Y', '43756518', '2016-05-06', '1977-04-13', null, '0000-00-00', '0', '132', '350', '0', '5', '0', '210', '221', '2', '', 'MARIA ELENA AGUIRRE SALDARRIAGA', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3108206474', 'C-108', '0');
INSERT INTO `hojas_vida` VALUES ('6600', '0', 'TRASVERSAL ', '1035231045', '2016-05-06', '1995-06-17', null, '0000-00-00', '0', '157', '348', '0', '5', '0', '209', '0', '1', '', 'CAMILO ANDRES HERNANDEZ PINO', 'RECIBIDA POR LA OFICINA FIJA DE CISNEROS', '0', '3117828664', 'C-109', '0');

-- ----------------------------
-- Table structure for hojas_vida_archivos
-- ----------------------------
DROP TABLE IF EXISTS `hojas_vida_archivos`;
CREATE TABLE `hojas_vida_archivos` (
  `Pk_Id_Hoja_Vida_Archivo` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Hoja_Vida_Subcategoria` int(11) DEFAULT NULL,
  `Fk_Id_Hoja_Vida` int(11) DEFAULT NULL,
  `Fecha_Hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Fecha de ingreso del dato',
  `Fk_Id_Usuario` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del usuario logueado',
  PRIMARY KEY (`Pk_Id_Hoja_Vida_Archivo`),
  KEY `Fk_Id_Hoja_Vida_Subcategoria` (`Fk_Id_Hoja_Vida_Subcategoria`),
  KEY `Fk_Id_Hoja_Vida` (`Fk_Id_Hoja_Vida`),
  CONSTRAINT `hojas_vida_archivos_ibfk_1` FOREIGN KEY (`Fk_Id_Hoja_Vida`) REFERENCES `hojas_vida` (`Pk_Id_Hoja_Vida`)
) ENGINE=InnoDB AUTO_INCREMENT=17741 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hojas_vida_archivos
-- ----------------------------
INSERT INTO `hojas_vida_archivos` VALUES ('2', '1', '6357', '2016-04-20 16:13:40', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('3', '1', '6356', '2016-04-20 16:16:01', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('4', '1', '6358', '2016-04-20 16:16:34', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('5', '1', '6359', '2016-04-20 16:23:57', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('6', '1', '6360', '2016-04-22 10:55:04', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('7', '1', '6361', '2016-04-22 11:07:08', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('8', '1', '6362', '2016-04-22 11:13:22', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('9', '1', '6363', '2016-04-22 11:39:26', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('10', '1', '6364', '2016-04-22 15:57:06', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('11', '1', '2286', '2014-05-27 15:54:28', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('12', '2', '2286', '2014-05-27 15:54:38', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('13', '4', '2286', '2014-05-27 15:54:52', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('14', '6', '2286', '2014-05-27 15:55:47', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('15', '8', '2286', '2014-05-27 15:55:56', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('16', '9', '2286', '2014-05-27 15:56:04', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('17', '10', '2286', '2014-05-27 15:56:14', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('18', '13', '2286', '2014-05-27 15:56:38', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('19', '15', '2286', '2014-05-27 15:56:55', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('20', '21', '2286', '2014-05-27 15:57:27', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('21', '22', '2286', '2014-05-27 15:57:33', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('22', '41', '2286', '2016-01-29 21:12:30', '185');
INSERT INTO `hojas_vida_archivos` VALUES ('23', '41', '2286', '2016-01-29 21:15:07', '185');
INSERT INTO `hojas_vida_archivos` VALUES ('24', '36', '2286', '2016-02-08 13:18:37', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('25', '36', '2286', '2016-04-12 09:20:24', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('26', '36', '2286', '2016-04-12 09:20:30', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('27', '36', '2286', '2016-04-12 09:20:35', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('28', '36', '2286', '2016-04-12 09:20:40', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('29', '36', '2286', '2016-04-12 09:20:46', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('30', '41', '2286', '2016-04-12 09:21:09', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('31', '41', '2286', '2016-04-12 09:21:23', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('32', '41', '2286', '2016-04-12 09:21:30', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('33', '41', '2286', '2016-04-12 09:21:39', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('34', '41', '2286', '2016-04-12 09:21:49', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('35', '26', '2286', '2016-04-12 09:22:14', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('36', '34', '2286', '2016-04-12 09:26:28', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('37', '29', '2286', '2016-04-12 09:26:45', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('38', '40', '2286', '2016-04-22 08:39:51', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('39', '26', '2286', '2016-04-22 08:40:56', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('40', '1', '6366', '2016-04-23 08:39:28', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('41', '1', '6367', '2016-04-23 08:49:02', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('42', '1', '6368', '2016-04-23 09:09:41', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('43', '1', '6369', '2016-04-23 09:23:02', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('44', '1', '6370', '2016-04-23 09:27:46', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('45', '1', '6371', '2016-04-23 09:39:32', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('46', '1', '6372', '2016-04-23 09:46:23', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('47', '1', '6373', '2016-04-23 10:44:47', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('48', '1', '6374', '2016-04-23 11:13:29', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('49', '1', '6375', '2016-04-23 11:22:42', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('50', '1', '6376', '2016-04-23 11:44:57', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('51', '1', '6377', '2016-04-23 12:01:18', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('52', '1', '6378', '2016-04-23 12:05:18', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('53', '1', '6379', '2016-04-23 12:16:35', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('54', '1', '6380', '2016-04-23 12:42:43', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('55', '1', '6381', '2016-04-23 13:06:30', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('56', '1', '6382', '2016-04-23 13:12:52', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('57', '1', '6383', '2016-04-23 13:33:16', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('58', '1', '6384', '2016-04-23 13:42:05', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('59', '1', '6385', '2016-04-23 13:55:01', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('60', '1', '6395', '2016-04-25 10:48:59', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('74', '1', '2042', '2014-03-21 11:36:27', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('75', '2', '2042', '2014-03-21 11:36:37', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('76', '3', '2042', '2014-03-21 11:36:51', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('77', '4', '2042', '2014-03-21 11:37:03', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('78', '4', '2042', '2014-03-21 11:37:06', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('79', '9', '2042', '2014-03-21 11:37:25', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('80', '10', '2042', '2014-03-21 11:37:50', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('81', '15', '2042', '2014-03-21 11:38:31', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('82', '16', '2042', '2014-03-21 11:38:45', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('83', '17', '2042', '2014-03-21 11:38:56', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('84', '18', '2042', '2014-03-21 11:39:35', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('85', '20', '2042', '2014-03-21 11:39:53', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('86', '21', '2042', '2014-03-21 11:40:05', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('87', '22', '2042', '2014-03-21 11:40:13', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('88', '23', '2042', '2014-03-21 11:40:24', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('89', '23', '2042', '2014-03-21 11:40:26', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('90', '24', '2042', '2014-03-21 11:40:38', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('91', '40', '2042', '2014-03-21 11:41:06', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('92', '31', '2042', '2014-03-21 11:41:36', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('176', '1', '2308', '2014-03-25 11:00:17', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('177', '2', '2308', '2014-03-25 11:00:24', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('178', '3', '2308', '2014-03-25 11:00:33', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('179', '4', '2308', '2014-03-25 11:00:40', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('180', '5', '2308', '2014-03-25 11:00:49', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('181', '9', '2308', '2014-03-25 11:00:59', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('182', '13', '2308', '2014-03-25 11:01:27', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('183', '14', '2308', '2014-03-25 11:01:36', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('184', '16', '2308', '2014-03-25 11:01:55', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('185', '17', '2308', '2014-03-25 11:02:11', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('186', '18', '2308', '2014-03-25 11:02:26', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('187', '20', '2308', '2014-03-25 11:02:47', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('188', '21', '2308', '2014-03-25 11:03:35', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('189', '22', '2308', '2014-03-25 11:03:43', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('190', '23', '2308', '2014-03-25 11:03:50', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('191', '28', '2308', '2014-03-25 11:04:16', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('192', '40', '2308', '2014-03-25 11:04:23', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('193', '31', '2308', '2014-03-25 11:04:36', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('194', '38', '2308', '2014-03-25 11:04:59', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('196', '2', '2125', '2014-03-25 11:38:14', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('197', '3', '2125', '2014-03-25 11:38:23', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('198', '4', '2125', '2014-03-25 11:38:30', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('199', '9', '2125', '2014-03-25 11:38:41', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('200', '10', '2125', '2014-03-25 11:38:51', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('201', '13', '2125', '2014-03-25 11:39:07', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('203', '15', '2125', '2014-03-25 11:40:44', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('204', '21', '2125', '2014-03-25 11:41:11', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('205', '22', '2125', '2014-03-25 11:41:18', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('206', '23', '2125', '2014-03-25 11:41:25', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('207', '25', '2125', '2014-03-25 11:41:42', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('208', '40', '2125', '2014-03-25 11:41:53', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('587', '1', '2489', '2014-03-28 09:04:16', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('588', '2', '2489', '2014-03-28 09:04:22', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('589', '3', '2489', '2014-03-28 09:04:29', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('590', '4', '2489', '2014-03-28 09:04:37', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('591', '6', '2489', '2014-03-28 09:05:01', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('592', '9', '2489', '2014-03-28 09:05:11', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('593', '12', '2489', '2014-03-28 09:05:29', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('594', '13', '2489', '2014-03-28 09:05:46', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('595', '15', '2489', '2014-03-28 09:06:01', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('596', '17', '2489', '2014-03-28 09:06:23', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('597', '20', '2489', '2014-03-28 09:06:52', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('598', '21', '2489', '2014-03-28 09:07:01', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('599', '22', '2489', '2014-03-28 09:07:12', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('600', '23', '2489', '2014-03-28 09:07:18', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('601', '40', '2489', '2014-03-28 09:07:45', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('602', '43', '2489', '2014-03-28 09:08:01', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('603', '36', '2489', '2014-03-28 09:08:32', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('604', '43', '2125', '2014-04-14 09:37:24', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('619', '21', '2042', '2014-04-15 07:53:59', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('620', '23', '2042', '2014-04-15 07:54:07', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('622', '21', '2489', '2014-04-15 07:54:48', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('623', '23', '2489', '2014-04-15 07:55:21', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('634', '21', '2125', '2014-04-15 07:59:22', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('635', '23', '2125', '2014-04-15 07:59:30', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('636', '26', '2125', '2014-04-15 07:59:47', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('661', '21', '2308', '2014-04-29 16:57:11', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('662', '26', '2308', '2014-04-29 16:57:21', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('674', '26', '2625', '2014-04-29 17:01:52', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('703', '21', '2576', '2014-04-29 17:15:29', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('704', '26', '2576', '2014-04-29 17:15:38', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('705', '23', '2576', '2014-04-29 17:15:46', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('862', '1', '2576', '2014-04-30 17:37:07', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('863', '2', '2576', '2014-04-30 17:37:18', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('864', '3', '2576', '2014-04-30 17:37:26', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('865', '5', '2576', '2014-04-30 17:37:43', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('866', '7', '2576', '2014-04-30 17:37:51', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('867', '8', '2576', '2014-04-30 17:37:59', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('868', '9', '2576', '2014-04-30 17:38:05', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('869', '10', '2576', '2014-04-30 17:38:14', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('870', '12', '2576', '2014-04-30 17:38:22', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('871', '13', '2576', '2014-04-30 17:38:29', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('872', '14', '2576', '2014-04-30 17:38:36', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('873', '15', '2576', '2014-04-30 17:38:44', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('874', '16', '2576', '2014-04-30 17:38:53', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('875', '20', '2576', '2014-04-30 17:39:16', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('876', '21', '2576', '2014-04-30 17:39:24', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('877', '21', '2576', '2014-04-30 17:39:25', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('878', '22', '2576', '2014-04-30 17:39:32', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('879', '22', '2576', '2014-04-30 17:39:34', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('880', '23', '2576', '2014-04-30 17:39:41', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('881', '25', '2576', '2014-04-30 17:40:06', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('882', '40', '2576', '2014-04-30 17:40:23', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('883', '33', '2576', '2014-04-30 17:40:50', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('884', '33', '2576', '2014-04-30 17:40:52', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('885', '33', '2576', '2014-04-30 17:40:53', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('886', '43', '2576', '2014-04-30 17:41:03', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('887', '43', '2576', '2014-04-30 17:41:05', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('888', '36', '2576', '2014-04-30 17:41:12', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1212', '1', '2625', '2014-05-06 15:50:56', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1213', '2', '2625', '2014-05-06 15:51:07', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1214', '3', '2625', '2014-05-06 15:51:15', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1215', '5', '2625', '2014-05-06 15:51:28', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1216', '9', '2625', '2014-05-06 15:51:40', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1217', '9', '2625', '2014-05-06 15:51:41', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1218', '9', '2625', '2014-05-06 15:51:42', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1219', '10', '2625', '2014-05-06 15:52:26', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1220', '11', '2625', '2014-05-06 15:52:38', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1221', '12', '2625', '2014-05-06 15:52:49', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1222', '13', '2625', '2014-05-06 15:52:57', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1223', '15', '2625', '2014-05-06 15:53:13', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1224', '15', '2625', '2014-05-06 15:53:14', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1225', '21', '2625', '2014-05-06 15:53:25', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1226', '21', '2625', '2014-05-06 15:53:39', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1227', '22', '2625', '2014-05-06 15:53:46', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1228', '22', '2625', '2014-05-06 15:53:47', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1229', '23', '2625', '2014-05-06 15:53:54', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1230', '23', '2625', '2014-05-06 15:53:56', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1231', '23', '2625', '2014-05-06 15:53:57', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1232', '26', '2625', '2014-05-06 15:54:15', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1233', '40', '2625', '2014-05-06 15:54:35', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1234', '40', '2625', '2014-05-06 15:54:37', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1235', '29', '2625', '2014-05-06 15:55:05', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1236', '29', '2625', '2014-05-06 15:55:07', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1237', '30', '2625', '2014-05-06 15:55:15', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1238', '31', '2625', '2014-05-06 15:55:23', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1239', '36', '2625', '2014-05-06 15:56:02', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1240', '36', '2625', '2014-05-06 15:56:04', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1241', '37', '2625', '2014-05-06 15:56:13', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1242', '39', '2625', '2014-05-06 15:56:20', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1284', '1', '2599', '2014-05-07 08:33:00', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1285', '2', '2599', '2014-05-07 08:33:06', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1286', '3', '2599', '2014-05-07 08:33:13', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1287', '8', '2599', '2014-05-07 08:33:31', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1288', '9', '2599', '2014-05-07 08:33:38', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1289', '10', '2599', '2014-05-07 08:33:46', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1290', '15', '2599', '2014-05-07 08:34:16', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1291', '21', '2599', '2014-05-07 08:34:27', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1292', '22', '2599', '2014-05-07 08:34:33', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1293', '23', '2599', '2014-05-07 08:34:39', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1294', '24', '2599', '2014-05-07 08:34:45', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1295', '27', '2599', '2014-05-07 08:35:04', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1296', '28', '2599', '2014-05-07 08:35:23', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('1297', '40', '2599', '2014-05-07 08:35:34', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2600', '28', '2599', '2014-05-22 14:00:28', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('2601', '38', '2599', '2014-05-22 14:00:57', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('2602', '41', '2599', '2014-05-22 14:01:22', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('2813', '1', '2286', '2014-05-27 15:54:28', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2814', '2', '2286', '2014-05-27 15:54:38', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2815', '4', '2286', '2014-05-27 15:54:52', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2816', '6', '2286', '2014-05-27 15:55:47', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2817', '8', '2286', '2014-05-27 15:55:56', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2818', '9', '2286', '2014-05-27 15:56:04', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2819', '10', '2286', '2014-05-27 15:56:14', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2820', '13', '2286', '2014-05-27 15:56:38', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2821', '15', '2286', '2014-05-27 15:56:55', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2822', '21', '2286', '2014-05-27 15:57:27', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('2823', '22', '2286', '2014-05-27 15:57:33', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('3390', '26', '2489', '2014-06-04 17:14:19', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('3391', '26', '2042', '2014-06-04 17:19:32', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('4929', '36', '2308', '2014-06-25 10:53:21', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('5429', '31', '2042', '2014-07-07 09:21:41', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5514', '31', '2625', '2014-07-09 08:30:55', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5708', '1', '4032', '2014-07-10 16:22:42', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5709', '2', '4032', '2014-07-10 16:22:51', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5710', '4', '4032', '2014-07-10 16:23:05', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5711', '6', '4032', '2014-07-10 16:23:20', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5712', '9', '4032', '2014-07-10 16:23:28', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5713', '12', '4032', '2014-07-10 16:23:42', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5714', '13', '4032', '2014-07-10 16:23:50', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5715', '14', '4032', '2014-07-10 16:23:59', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5716', '15', '4032', '2014-07-10 16:24:07', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5717', '21', '4032', '2014-07-10 16:24:16', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('5718', '23', '4032', '2014-07-10 16:24:28', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('6879', '40', '4032', '2014-07-23 16:15:03', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('6965', '22', '4032', '2014-07-28 10:25:12', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('7113', '26', '4032', '2014-07-30 11:56:22', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('7322', '26', '4032', '2014-07-31 15:41:36', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('7799', '26', '4032', '2014-09-19 08:41:40', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('7991', '25', '2576', '2014-09-29 08:52:15', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('8002', '43', '2625', '2014-09-29 09:28:45', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('8053', '31', '2489', '2014-10-07 12:39:34', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('8226', '37', '2599', '2014-10-27 20:23:01', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('8410', '26', '4032', '2014-10-30 13:33:10', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('8797', '26', '4032', '2014-11-27 11:49:18', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('8889', '36', '2625', '2014-12-02 11:22:17', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('8895', '36', '2308', '2014-12-02 13:25:49', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('8965', '43', '2625', '2014-12-10 15:03:50', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('8976', '9', '2308', '2014-12-16 10:06:27', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('8977', '9', '2308', '2014-12-16 10:07:24', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('9096', '43', '2125', '2015-01-06 16:03:52', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('9119', '35', '2308', '2015-01-07 08:04:28', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('9134', '44', '2308', '2015-01-07 08:49:20', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('9520', '26', '4032', '2015-03-24 14:26:21', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('9778', '26', '4032', '2015-05-22 12:33:42', '146');
INSERT INTO `hojas_vida_archivos` VALUES ('10013', '1', '4959', '2015-06-16 17:27:56', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10014', '2', '4959', '2015-06-16 17:28:01', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10015', '4', '4959', '2015-06-16 17:28:07', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10016', '6', '4959', '2015-06-16 17:28:13', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10017', '9', '4959', '2015-06-16 17:28:20', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10018', '15', '4959', '2015-06-16 17:28:31', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10019', '15', '4959', '2015-06-16 17:28:41', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10020', '40', '4959', '2015-06-16 17:29:01', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10021', '28', '4959', '2015-06-16 17:29:09', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10022', '21', '4959', '2015-06-16 17:29:13', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10023', '22', '4959', '2015-06-16 17:29:17', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10024', '24', '4959', '2015-06-16 17:29:59', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10025', '23', '4959', '2015-06-16 17:32:07', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10084', '40', '2599', '2015-06-17 15:18:24', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10085', '21', '2599', '2015-06-17 15:18:29', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10086', '23', '2599', '2015-06-17 15:18:33', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('10087', '22', '2599', '2015-06-17 15:18:43', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('11358', '41', '2599', '2015-08-25 11:17:37', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11359', '36', '2599', '2015-08-25 11:17:50', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11360', '28', '4959', '2015-08-25 11:20:56', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11361', '36', '4959', '2015-08-25 11:21:20', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11362', '36', '4959', '2015-08-25 11:21:30', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11363', '36', '4959', '2015-08-25 11:21:34', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11417', '41', '2599', '2015-08-25 14:22:20', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11435', '41', '2125', '2015-08-25 17:23:47', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11436', '36', '2125', '2015-08-25 17:25:09', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11437', '43', '2125', '2015-08-25 17:25:21', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11438', '43', '2125', '2015-08-25 17:25:30', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11439', '41', '2125', '2015-08-25 17:25:45', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11440', '41', '2125', '2015-08-25 17:25:56', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11441', '41', '2125', '2015-08-25 17:27:19', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11442', '34', '2125', '2015-08-25 17:27:35', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11443', '34', '2125', '2015-08-25 17:27:39', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11444', '36', '2125', '2015-08-25 17:28:10', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11445', '31', '2125', '2015-08-25 17:28:33', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11446', '36', '2125', '2015-08-25 17:28:48', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11447', '21', '2125', '2015-08-25 17:29:01', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11448', '36', '2125', '2015-08-25 17:29:38', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11517', '33', '2042', '2015-08-26 14:52:02', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11518', '34', '2042', '2015-08-26 14:54:00', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11519', '41', '2042', '2015-08-26 14:54:15', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11520', '34', '2042', '2015-08-26 14:54:39', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11521', '34', '2042', '2015-08-26 14:55:20', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11522', '41', '2042', '2015-08-26 14:56:56', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11523', '34', '2042', '2015-08-26 14:57:11', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11524', '15', '2042', '2015-08-26 14:57:50', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11525', '36', '2042', '2015-08-26 14:58:48', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11526', '36', '2042', '2015-08-26 14:59:22', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11527', '36', '2042', '2015-08-26 15:00:03', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11528', '36', '2042', '2015-08-26 15:00:47', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11529', '31', '2042', '2015-08-26 15:02:12', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11530', '36', '2042', '2015-08-26 15:03:31', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11531', '34', '2042', '2015-08-26 15:04:00', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11532', '36', '2042', '2015-08-26 15:04:13', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11559', '34', '2308', '2015-08-26 17:31:40', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11560', '41', '2308', '2015-08-26 17:31:51', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11561', '36', '2308', '2015-08-26 17:32:10', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11562', '34', '2308', '2015-08-26 17:32:32', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11563', '36', '2308', '2015-08-26 17:33:33', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11564', '15', '2308', '2015-08-26 17:33:48', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11565', '31', '2308', '2015-08-26 17:34:06', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11566', '31', '2308', '2015-08-26 17:34:11', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11567', '36', '2308', '2015-08-26 17:34:24', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11568', '36', '2308', '2015-08-26 17:34:37', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11569', '36', '2308', '2015-08-26 17:35:07', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11570', '36', '2308', '2015-08-26 17:35:25', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11571', '36', '2308', '2015-08-26 17:35:33', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11607', '12', '2042', '2015-08-28 10:01:45', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11612', '12', '2308', '2015-08-28 10:04:24', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11613', '12', '2125', '2015-08-28 10:04:58', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11625', '12', '2599', '2015-08-28 10:11:15', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11626', '12', '4959', '2015-08-28 10:11:50', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11792', '30', '2489', '2015-09-01 10:07:12', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11793', '10', '2489', '2015-09-01 10:08:55', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11794', '34', '2489', '2015-09-01 10:10:48', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11795', '41', '2489', '2015-09-01 10:10:58', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11796', '33', '2489', '2015-09-01 10:11:18', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11797', '31', '2489', '2015-09-01 10:12:33', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11798', '30', '2489', '2015-09-01 10:12:46', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11799', '34', '2489', '2015-09-01 10:14:28', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11800', '36', '2489', '2015-09-01 10:14:49', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11801', '36', '2489', '2015-09-01 10:15:01', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11802', '36', '2489', '2015-09-01 10:15:12', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11803', '12', '2489', '2015-09-01 10:16:06', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('11804', '12', '2489', '2015-09-01 10:16:20', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12101', '36', '2576', '2015-09-09 08:48:44', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12102', '43', '2576', '2015-09-09 08:49:03', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12106', '34', '2576', '2015-09-09 08:50:37', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12107', '36', '2576', '2015-09-09 08:52:24', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12108', '36', '2576', '2015-09-09 08:52:34', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12109', '43', '2576', '2015-09-09 08:52:59', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12113', '41', '2576', '2015-09-09 08:53:40', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12114', '36', '2576', '2015-09-09 08:54:11', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12115', '36', '2576', '2015-09-09 08:54:16', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12116', '36', '2576', '2015-09-09 08:54:31', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12117', '15', '2576', '2015-09-09 08:55:22', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12118', '31', '2576', '2015-09-09 08:55:46', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12119', '30', '2576', '2015-09-09 08:56:01', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12120', '41', '2576', '2015-09-09 08:56:19', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12121', '36', '2576', '2015-09-09 08:56:31', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12122', '36', '2576', '2015-09-09 08:56:42', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12123', '12', '2576', '2015-09-09 08:56:58', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12124', '12', '2576', '2015-09-09 08:57:05', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12198', '30', '2625', '2015-09-09 13:59:39', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12199', '30', '2625', '2015-09-09 13:59:53', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12200', '43', '2625', '2015-09-09 14:00:22', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12201', '41', '2625', '2015-09-09 14:00:38', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12202', '41', '2625', '2015-09-09 14:00:49', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12203', '29', '2625', '2015-09-09 14:01:11', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12204', '31', '2625', '2015-09-09 14:02:29', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12205', '30', '2625', '2015-09-09 14:02:41', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12206', '43', '2625', '2015-09-09 14:02:53', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12207', '36', '2625', '2015-09-09 14:03:09', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12208', '36', '2625', '2015-09-09 14:03:20', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12209', '41', '2625', '2015-09-09 14:03:39', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12210', '12', '2625', '2015-09-09 14:04:09', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12211', '12', '2625', '2015-09-09 14:04:19', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('12809', '43', '4959', '2015-09-16 09:49:15', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('13874', '50', '2042', '2015-10-06 15:53:39', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('13875', '50', '2042', '2015-10-06 15:53:44', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('13878', '43', '2308', '2015-10-06 16:03:25', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('13879', '36', '2308', '2015-10-06 16:03:42', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('13971', '36', '2489', '2015-10-14 17:41:30', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14058', '26', '2576', '2015-10-20 17:53:30', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14059', '36', '2576', '2015-10-20 17:53:42', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14067', '36', '2599', '2015-10-21 08:45:37', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14100', '26', '2625', '2015-10-21 10:36:26', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14101', '26', '2625', '2015-10-21 10:36:34', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14129', '27', '2576', '2015-10-21 11:52:39', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14558', '1', '5837', '2015-11-19 11:45:14', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14559', '2', '5837', '2015-11-19 11:45:35', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14560', '9', '5837', '2015-11-19 11:46:03', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14561', '10', '5837', '2015-11-19 11:46:18', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14562', '4', '5837', '2015-11-19 11:46:27', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14563', '13', '5837', '2015-11-19 11:46:42', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14564', '14', '5837', '2015-11-19 11:46:51', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14565', '5', '5837', '2015-11-19 11:47:08', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14566', '6', '5837', '2015-11-19 11:48:33', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14567', '15', '5837', '2015-11-19 12:07:35', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14568', '15', '5837', '2015-11-19 12:07:56', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14569', '15', '5837', '2015-11-19 12:11:10', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14570', '21', '5837', '2015-11-19 12:11:28', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14571', '22', '5837', '2015-11-19 12:11:34', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14572', '23', '5837', '2015-11-19 12:11:39', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14573', '40', '5837', '2015-11-19 12:11:46', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14574', '30', '5837', '2015-11-19 12:11:59', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14577', '30', '2042', '2015-11-23 07:55:57', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14626', '52', '2125', '2015-11-23 11:57:00', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14627', '41', '2125', '2015-11-23 11:57:09', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14641', '50', '2599', '2015-11-24 10:03:15', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14822', '43', '2489', '2015-12-18 15:22:00', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14839', '26', '2125', '2015-12-21 07:40:28', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14840', '43', '2125', '2015-12-21 07:40:37', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14860', '43', '2576', '2015-12-21 09:36:11', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14861', '34', '2576', '2015-12-21 09:36:19', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14862', '34', '2576', '2015-12-21 09:36:23', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14875', '43', '5837', '2015-12-21 10:37:47', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14876', '50', '5837', '2015-12-21 10:38:17', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('14877', '50', '5837', '2015-12-21 10:38:27', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('15000', '43', '2625', '2016-01-18 16:15:10', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('15123', '34', '2489', '2016-01-19 20:05:21', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('15124', '43', '2489', '2016-01-19 20:05:38', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('15193', '36', '2625', '2016-01-21 18:05:04', '132');
INSERT INTO `hojas_vida_archivos` VALUES ('15194', '36', '2625', '2016-01-21 18:05:11', '132');
INSERT INTO `hojas_vida_archivos` VALUES ('15195', '36', '2625', '2016-01-21 18:05:16', '132');
INSERT INTO `hojas_vida_archivos` VALUES ('15196', '36', '2625', '2016-01-21 18:05:20', '132');
INSERT INTO `hojas_vida_archivos` VALUES ('15197', '36', '2625', '2016-01-21 18:05:24', '132');
INSERT INTO `hojas_vida_archivos` VALUES ('15198', '36', '2625', '2016-01-21 18:05:28', '132');
INSERT INTO `hojas_vida_archivos` VALUES ('15199', '36', '2625', '2016-01-21 18:05:32', '132');
INSERT INTO `hojas_vida_archivos` VALUES ('15200', '36', '2625', '2016-01-21 18:05:36', '132');
INSERT INTO `hojas_vida_archivos` VALUES ('15331', '50', '5837', '2016-01-22 22:38:38', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('15332', '43', '5837', '2016-01-22 22:39:09', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('15333', '50', '5837', '2016-01-22 22:39:21', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('15334', '50', '5837', '2016-01-22 22:39:26', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('15341', '36', '5837', '2016-01-22 22:47:43', '132');
INSERT INTO `hojas_vida_archivos` VALUES ('15791', '41', '2286', '2016-01-29 21:12:30', '185');
INSERT INTO `hojas_vida_archivos` VALUES ('15792', '41', '2286', '2016-01-29 21:15:07', '185');
INSERT INTO `hojas_vida_archivos` VALUES ('16030', '36', '2286', '2016-02-08 13:18:37', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('16033', '41', '4032', '2016-02-08 13:20:31', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('16034', '36', '4032', '2016-02-08 13:20:36', '14');
INSERT INTO `hojas_vida_archivos` VALUES ('16199', '43', '2042', '2016-02-15 12:43:41', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16200', '43', '2042', '2016-02-15 12:43:44', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16201', '50', '2042', '2016-02-15 12:43:52', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16208', '36', '2308', '2016-02-15 12:55:40', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16209', '1', '2308', '2016-02-15 12:55:52', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16210', '9', '2308', '2016-02-15 12:55:58', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16211', '31', '2308', '2016-02-15 12:56:12', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16262', '41', '2125', '2016-02-16 19:08:43', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16355', '34', '5837', '2016-02-19 12:26:00', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16356', '34', '5837', '2016-02-19 12:26:07', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16395', '41', '2489', '2016-02-19 17:24:06', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16396', '41', '2489', '2016-02-19 17:26:31', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16516', '34', '2576', '2016-02-23 09:00:49', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16517', '41', '2576', '2016-02-23 09:01:00', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16518', '36', '2576', '2016-02-23 09:01:09', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16570', '43', '2599', '2016-02-23 11:25:18', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16571', '50', '2599', '2016-02-23 11:25:23', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16600', '26', '2625', '2016-02-23 12:43:29', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16601', '43', '2625', '2016-02-23 12:43:39', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16619', '43', '2042', '2016-02-23 15:25:54', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16622', '31', '2308', '2016-02-23 15:27:42', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16962', '41', '2599', '2016-04-01 15:37:14', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16963', '41', '2599', '2016-04-01 15:37:19', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16964', '21', '2599', '2016-04-01 15:37:29', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16965', '41', '4959', '2016-04-01 15:45:22', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16966', '41', '4959', '2016-04-01 15:45:26', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16967', '21', '4959', '2016-04-01 15:47:51', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16968', '21', '2308', '2016-04-04 09:44:26', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16969', '41', '2042', '2016-04-04 09:55:12', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16970', '21', '2042', '2016-04-04 09:55:25', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16971', '9', '2125', '2016-04-04 10:01:16', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16972', '41', '2125', '2016-04-04 10:01:27', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16973', '21', '2125', '2016-04-04 10:01:36', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16974', '34', '5837', '2016-04-04 10:15:08', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16975', '34', '5837', '2016-04-04 10:15:49', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16976', '34', '5837', '2016-04-04 10:15:59', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16977', '21', '5837', '2016-04-04 10:16:17', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16978', '31', '2489', '2016-04-04 10:38:52', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16979', '52', '2489', '2016-04-04 10:39:10', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16980', '41', '2489', '2016-04-04 10:39:20', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16981', '36', '2489', '2016-04-04 10:39:29', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16982', '21', '2489', '2016-04-04 10:39:44', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16983', '21', '2576', '2016-04-04 10:44:25', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('16984', '21', '2625', '2016-04-04 10:46:11', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17229', '36', '2286', '2016-04-12 09:20:24', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17230', '36', '2286', '2016-04-12 09:20:30', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17231', '36', '2286', '2016-04-12 09:20:35', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17232', '36', '2286', '2016-04-12 09:20:40', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17233', '36', '2286', '2016-04-12 09:20:46', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17234', '41', '2286', '2016-04-12 09:21:09', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17235', '41', '2286', '2016-04-12 09:21:23', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17236', '41', '2286', '2016-04-12 09:21:30', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17237', '41', '2286', '2016-04-12 09:21:39', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17238', '41', '2286', '2016-04-12 09:21:49', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17239', '26', '2286', '2016-04-12 09:22:14', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17243', '34', '2286', '2016-04-12 09:26:28', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17244', '29', '2286', '2016-04-12 09:26:45', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17387', '26', '2489', '2016-04-19 10:18:24', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17388', '26', '2308', '2016-04-19 10:30:44', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17389', '27', '2308', '2016-04-19 10:30:59', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17390', '26', '2308', '2016-04-19 10:31:04', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17391', '26', '2042', '2016-04-19 10:35:58', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17392', '26', '2125', '2016-04-19 10:42:44', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17393', '21', '2599', '2016-04-19 10:49:58', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17394', '26', '2599', '2016-04-19 10:50:08', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17395', '26', '2576', '2016-04-19 10:55:56', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17396', '26', '2625', '2016-04-19 10:59:58', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17558', '34', '5837', '2016-04-21 16:45:54', '172');
INSERT INTO `hojas_vida_archivos` VALUES ('17559', '40', '2286', '2016-04-22 08:39:51', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17560', '26', '2286', '2016-04-22 08:40:56', '159');
INSERT INTO `hojas_vida_archivos` VALUES ('17561', '1', '2125', '2016-04-25 11:59:28', '1');
INSERT INTO `hojas_vida_archivos` VALUES ('17562', '1', '6396', '2016-04-26 08:52:09', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17563', '1', '6397', '2016-04-26 11:18:15', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17564', '1', '6398', '2016-04-26 11:27:26', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17565', '1', '6399', '2016-04-26 11:31:48', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17566', '1', '6400', '2016-04-26 11:39:25', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17567', '1', '6401', '2016-04-26 11:48:59', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17568', '1', '6402', '2016-04-26 11:57:51', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17569', '1', '6403', '2016-04-26 14:53:46', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17570', '1', '6404', '2016-04-26 15:02:25', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17571', '1', '6405', '2016-04-26 15:36:40', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17572', '1', '6406', '2016-04-26 15:50:18', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17573', '1', '6407', '2016-04-26 15:56:00', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17574', '1', '6408', '2016-04-26 16:06:55', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17575', '1', '6409', '2016-04-26 16:31:57', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17576', '1', '6410', '2016-04-26 16:46:59', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17577', '1', '6411', '2016-04-26 17:22:06', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17578', '1', '6412', '2016-04-26 17:37:18', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17579', '1', '6412', '2016-04-26 17:38:40', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17580', '1', '6413', '2016-04-28 09:04:15', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17581', '1', '6414', '2016-04-28 09:11:01', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17582', '1', '6415', '2016-04-28 09:25:25', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17583', '1', '6416', '2016-04-28 09:32:44', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17584', '1', '6417', '2016-04-28 09:42:33', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17585', '1', '6418', '2016-04-28 10:10:57', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17586', '1', '6419', '2016-04-28 10:18:33', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17587', '1', '6420', '2016-04-28 10:33:51', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17588', '1', '6421', '2016-04-28 11:20:52', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17589', '1', '6422', '2016-04-28 11:38:11', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17590', '1', '6423', '2016-04-28 11:49:11', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17591', '1', '6424', '2016-04-28 11:55:51', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17592', '1', '6425', '2016-04-28 12:02:00', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17593', '1', '6426', '2016-04-28 14:48:09', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17594', '1', '6427', '2016-04-28 14:53:41', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17595', '1', '6428', '2016-04-28 15:41:53', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17596', '1', '6431', '2016-04-29 08:33:18', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17597', '1', '6432', '2016-04-29 08:39:54', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17598', '1', '6433', '2016-04-29 08:48:44', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17599', '1', '6434', '2016-04-29 09:07:01', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17600', '1', '6435', '2016-04-29 09:35:23', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17601', '1', '6436', '2016-04-29 09:56:26', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17602', '1', '6429', '2016-04-29 10:24:48', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17603', '1', '6437', '2016-04-29 10:51:06', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17604', '1', '6438', '2016-04-29 11:09:19', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17605', '1', '6439', '2016-04-29 11:21:12', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17606', '1', '6453', '2016-05-03 11:12:37', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17607', '1', '6440', '2016-05-03 11:46:50', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17608', '1', '6441', '2016-05-03 11:49:44', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17609', '1', '6442', '2016-05-03 11:50:05', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17611', '1', '6443', '2016-05-03 11:56:42', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17612', '1', '6446', '2016-05-03 11:56:54', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17613', '1', '6447', '2016-05-03 12:01:29', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17614', '1', '6449', '2016-05-03 12:03:57', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17615', '1', '6451', '2016-05-03 12:05:29', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17616', '1', '6445', '2016-05-03 12:07:53', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17617', '1', '6448', '2016-05-03 12:10:51', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17618', '1', '6450', '2016-05-03 12:12:21', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17619', '1', '6452', '2016-05-03 12:16:20', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17620', '1', '6454', '2016-05-03 12:16:50', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17621', '2', '6455', '2016-05-03 12:19:40', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17622', '1', '6456', '2016-05-03 12:21:38', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17623', '1', '6458', '2016-05-03 12:24:03', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17624', '1', '6459', '2016-05-03 12:24:49', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17625', '1', '6457', '2016-05-03 12:28:30', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17626', '1', '6460', '2016-05-03 15:54:46', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17627', '1', '6461', '2016-05-03 15:57:06', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17628', '1', '6462', '2016-05-03 15:57:09', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17629', '1', '6463', '2016-05-03 15:59:13', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17630', '1', '6464', '2016-05-03 15:59:29', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17631', '1', '6465', '2016-05-03 16:00:14', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17632', '1', '6466', '2016-05-03 16:01:52', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17633', '1', '6467', '2016-05-03 16:04:42', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17634', '1', '6468', '2016-05-03 16:06:49', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17635', '1', '6469', '2016-05-03 16:07:22', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17636', '1', '6470', '2016-05-04 09:15:54', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17637', '1', '6471', '2016-05-04 09:40:40', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17638', '1', '6472', '2016-05-04 09:50:36', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17639', '1', '6473', '2016-05-04 10:00:18', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17640', '1', '6474', '2016-05-04 10:12:33', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17641', '1', '6477', '2016-05-04 15:27:43', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17642', '1', '6475', '2016-05-04 15:35:44', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17643', '1', '6478', '2016-05-04 15:42:28', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17644', '1', '6480', '2016-05-04 15:53:23', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17645', '1', '6481', '2016-05-04 17:43:43', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17646', '1', '6486', '2016-05-04 17:44:57', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17647', '1', '6488', '2016-05-04 17:47:32', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17648', '1', '6482', '2016-05-04 19:27:27', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17649', '1', '6483', '2016-05-04 19:28:42', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17650', '1', '6484', '2016-05-04 19:31:12', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17651', '1', '6485', '2016-05-04 19:32:02', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17652', '1', '6487', '2016-05-04 19:33:10', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17653', '1', '6444', '2016-05-05 09:31:31', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17654', '1', '6489', '2016-05-05 09:41:19', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17655', '1', '6491', '2016-05-05 09:42:33', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17656', '1', '6490', '2016-05-05 09:44:49', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17657', '1', '6492', '2016-05-05 09:45:40', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17658', '1', '6493', '2016-05-05 09:47:02', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17659', '1', '6494', '2016-05-05 09:51:53', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17660', '1', '6495', '2016-05-05 09:52:06', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17661', '1', '6496', '2016-05-05 09:53:47', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17662', '1', '6498', '2016-05-05 09:54:12', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17663', '1', '6497', '2016-05-05 09:54:19', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17664', '1', '6499', '2016-05-05 09:58:56', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17665', '1', '6501', '2016-05-05 09:59:10', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17666', '1', '6500', '2016-05-05 10:00:48', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17667', '1', '6502', '2016-05-05 10:01:16', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17668', '1', '6503', '2016-05-05 10:02:36', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17669', '1', '6507', '2016-05-05 11:27:46', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17670', '1', '6515', '2016-05-05 11:33:02', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17671', '1', '6513', '2016-05-05 11:34:23', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17672', '1', '6508', '2016-05-05 11:34:45', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17673', '1', '6509', '2016-05-05 11:35:15', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17674', '1', '6511', '2016-05-05 11:37:00', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17675', '1', '6517', '2016-05-05 11:37:23', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17676', '1', '6521', '2016-05-05 11:39:39', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17677', '1', '6520', '2016-05-05 11:39:45', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17678', '1', '6518', '2016-05-05 11:40:39', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17679', '1', '6504', '2016-05-05 14:21:51', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17680', '1', '6506', '2016-05-05 14:25:21', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17681', '1', '6479', '2016-05-05 14:25:34', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17682', '1', '6505', '2016-05-05 14:26:31', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17683', '1', '6510', '2016-05-05 14:27:42', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17684', '1', '6512', '2016-05-05 14:28:37', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17685', '1', '6537', '2016-05-05 14:31:41', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17686', '1', '6514', '2016-05-05 14:33:19', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17687', '1', '6516', '2016-05-05 14:36:32', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17688', '1', '6538', '2016-05-05 14:38:30', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17689', '1', '6539', '2016-05-05 14:42:09', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17690', '1', '6519', '2016-05-05 14:42:44', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17691', '1', '6522', '2016-05-05 14:43:37', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17692', '1', '6525', '2016-05-05 14:43:56', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17693', '1', '6523', '2016-05-05 14:44:50', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17694', '1', '6524', '2016-05-05 14:45:47', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17695', '1', '6526', '2016-05-05 14:46:31', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17696', '1', '6540', '2016-05-05 15:04:20', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17697', '1', '6542', '2016-05-05 15:15:34', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17698', '1', '6544', '2016-05-05 15:19:24', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17699', '1', '6527', '2016-05-05 15:19:52', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17700', '1', '6528', '2016-05-05 15:20:31', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17701', '1', '6531', '2016-05-05 15:22:34', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17702', '1', '6529', '2016-05-05 15:22:38', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17703', '1', '6530', '2016-05-05 15:22:44', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17704', '1', '6546', '2016-05-05 15:23:11', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17705', '1', '6532', '2016-05-05 15:25:55', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17706', '1', '6536', '2016-05-05 15:30:35', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17707', '1', '6533', '2016-05-05 15:30:54', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17708', '1', '6534', '2016-05-05 15:31:42', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17709', '1', '6535', '2016-05-05 15:32:07', '30');
INSERT INTO `hojas_vida_archivos` VALUES ('17710', '1', '6552', '2016-05-05 15:40:34', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17711', '1', '6579', '2016-05-05 16:22:19', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17712', '1', '6581', '2016-05-05 16:25:35', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17713', '1', '6582', '2016-05-05 16:30:38', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17714', '1', '6541', '2016-05-05 16:31:12', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17715', '1', '6571', '2016-05-05 16:33:32', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17716', '1', '6567', '2016-05-05 16:36:14', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17717', '1', '6561', '2016-05-05 16:36:24', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17718', '1', '6583', '2016-05-05 16:38:39', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17719', '1', '6563', '2016-05-05 16:41:33', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17720', '1', '6584', '2016-05-05 16:43:15', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17721', '1', '6558', '2016-05-05 16:44:14', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17722', '1', '6543', '2016-05-05 16:44:15', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17723', '1', '6554', '2016-05-05 16:45:09', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17724', '1', '6549', '2016-05-05 16:45:25', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17725', '1', '6547', '2016-05-05 16:45:41', '31');
INSERT INTO `hojas_vida_archivos` VALUES ('17726', '1', '6585', '2016-05-05 16:48:32', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17727', '1', '6586', '2016-05-05 17:14:48', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17728', '1', '6587', '2016-05-05 17:24:30', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17729', '1', '6588', '2016-05-05 17:28:13', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17730', '1', '6589', '2016-05-06 08:39:55', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17731', '1', '6590', '2016-05-06 08:53:03', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17732', '1', '6591', '2016-05-06 09:00:23', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17733', '1', '6592', '2016-05-06 09:05:35', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17734', '1', '6593', '2016-05-06 09:17:54', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17735', '1', '6595', '2016-05-06 14:38:19', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17736', '1', '6596', '2016-05-06 14:44:04', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17737', '1', '6597', '2016-05-06 14:47:47', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17738', '1', '6598', '2016-05-06 14:55:50', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17739', '1', '6599', '2016-05-06 15:02:49', '5');
INSERT INTO `hojas_vida_archivos` VALUES ('17740', '1', '6600', '2016-05-06 15:09:02', '5');

-- ----------------------------
-- Table structure for hojas_vida_capacitaciones
-- ----------------------------
DROP TABLE IF EXISTS `hojas_vida_capacitaciones`;
CREATE TABLE `hojas_vida_capacitaciones` (
  `Pk_Id_Hoja_Vida_Capacitacion` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` datetime DEFAULT NULL,
  `Fk_Id_Capacitacion` int(11) DEFAULT NULL,
  `Fk_Id_Hoja_Vida` int(11) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  `Horas` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Hoja_Vida_Capacitacion`),
  KEY `Fk_Id_Capacitacion` (`Fk_Id_Capacitacion`),
  KEY `Fk_Id_Hoja_Vida` (`Fk_Id_Hoja_Vida`),
  CONSTRAINT `hojas_vida_capacitaciones_ibfk_1` FOREIGN KEY (`Fk_Id_Capacitacion`) REFERENCES `capacitaciones` (`Pk_Id_Capacitacion`),
  CONSTRAINT `hojas_vida_capacitaciones_ibfk_2` FOREIGN KEY (`Fk_Id_Hoja_Vida`) REFERENCES `hojas_vida` (`Pk_Id_Hoja_Vida`)
) ENGINE=InnoDB AUTO_INCREMENT=4722 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hojas_vida_capacitaciones
-- ----------------------------
INSERT INTO `hojas_vida_capacitaciones` VALUES ('310', '2014-05-21 06:00:00', '13', '2286', '14', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('334', '2014-05-09 06:00:00', '16', '2286', '14', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('534', '2014-04-10 06:00:00', '19', '2286', '14', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('535', '2014-04-10 06:00:00', '20', '2286', '14', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('699', '2014-04-10 06:00:00', '19', '4032', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('766', '2014-05-08 06:00:00', '21', '2286', '14', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('844', '2014-05-08 06:00:00', '21', '4032', '14', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('929', '2014-07-03 06:00:00', '24', '2286', '14', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('985', '2014-03-27 06:00:00', '25', '2286', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('990', '2014-07-03 06:00:00', '24', '4032', '14', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1159', '2014-03-27 06:00:00', '25', '4032', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1312', '2014-01-19 06:00:00', '29', '4032', '146', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1442', '2014-01-15 06:00:00', '47', '2286', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1483', '2014-09-22 06:00:00', '48', '2489', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1484', '2014-09-22 06:00:00', '48', '2042', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1516', '2014-09-22 08:00:00', '49', '2125', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1862', '2014-05-10 06:00:00', '58', '2308', '146', '3');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1884', '2014-05-24 06:00:00', '59', '2308', '146', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1885', '2014-06-04 06:00:00', '60', '2576', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1886', '2014-06-04 06:00:00', '60', '2308', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1896', '2014-06-04 06:00:00', '60', '2625', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1898', '2014-05-28 06:00:00', '61', '2308', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1904', '2014-05-28 06:00:00', '61', '2576', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1909', '2014-05-28 06:00:00', '61', '2625', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1910', '2014-06-11 06:00:00', '62', '2308', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1915', '2014-06-11 06:00:00', '62', '2576', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1920', '2014-06-11 06:00:00', '62', '2625', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1922', '2014-05-21 06:00:00', '63', '2576', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1925', '2014-05-21 06:00:00', '63', '2308', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1930', '2014-05-21 06:00:00', '63', '2625', '146', '4');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1943', '2014-07-19 06:00:00', '64', '2625', '146', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('1959', '2014-08-15 06:00:00', '65', '2125', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2025', '2014-08-15 06:00:00', '65', '2625', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2114', '2014-07-19 06:00:00', '69', '2625', '146', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2116', '2014-07-28 06:00:00', '31', '2286', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2152', '2014-04-24 07:00:00', '71', '2125', '146', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2162', '2014-05-03 07:00:00', '72', '2125', '146', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2193', '2014-08-26 06:00:00', '75', '2286', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2230', '2014-09-23 08:00:00', '48', '2286', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2232', '2014-09-23 08:00:00', '48', '4032', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2264', '2014-08-28 08:00:00', '79', '2286', '146', '8');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2269', '2014-08-28 08:00:00', '79', '2576', '146', '8');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2292', '2014-08-25 06:00:00', '81', '2489', '14', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2294', '2014-08-25 06:00:00', '81', '2042', '14', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2324', '2014-09-29 06:00:00', '84', '2286', '14', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2339', '2014-11-10 08:00:00', '85', '2125', '155', '6');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2345', '2014-11-10 08:00:00', '85', '2576', '155', '6');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2348', '2014-11-10 08:00:00', '85', '2308', '155', '6');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2406', '2014-10-30 16:00:00', '88', '2125', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2492', '2014-10-30 08:00:00', '90', '2125', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2497', '2014-10-30 08:00:00', '90', '2576', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2502', '2014-09-25 08:00:00', '78', '2625', '155', '18');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2508', '2014-09-25 08:00:00', '78', '2308', '155', '18');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2577', '2014-11-28 16:00:00', '92', '2625', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2702', '2014-10-29 08:00:00', '95', '2576', '155', '8');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2705', '2014-10-29 08:00:00', '95', '2125', '155', '8');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2868', '2014-12-16 15:00:00', '98', '2125', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2877', '2014-12-16 15:00:00', '98', '2308', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('2994', '2014-12-04 06:00:00', '102', '2286', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3070', '2014-12-04 06:00:00', '102', '4032', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3164', '2014-11-20 06:00:00', '103', '2286', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3246', '2014-11-20 06:00:00', '103', '4032', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3299', '2014-11-06 06:00:00', '105', '2286', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3320', '2014-10-28 06:00:00', '107', '2286', '146', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3334', '2014-10-27 06:00:00', '67', '4032', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3447', '2014-09-25 16:00:00', '111', '2308', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3449', '2014-09-25 16:00:00', '111', '2625', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3483', '2014-04-14 16:00:00', '113', '2308', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3492', '2014-04-14 16:00:00', '113', '2125', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3494', '2014-04-14 16:00:00', '113', '2625', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3495', '2014-04-12 07:00:00', '18', '2308', '155', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3504', '2014-04-12 07:00:00', '18', '2125', '155', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3507', '2014-04-12 07:00:00', '18', '2625', '155', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3517', '2014-04-05 07:00:00', '115', '2308', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3518', '2014-04-05 07:00:00', '115', '2125', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3520', '2014-04-05 07:00:00', '115', '2625', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3527', '2014-04-05 08:00:00', '18', '2308', '155', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3528', '2014-04-05 08:00:00', '18', '2125', '155', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3533', '2014-04-05 08:00:00', '18', '2625', '155', '5');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3607', '2015-01-30 16:00:00', '119', '2042', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3610', '2015-01-30 16:00:00', '119', '2576', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3698', '2015-02-19 06:00:00', '122', '2286', '146', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3806', '2015-03-16 08:00:00', '132', '2125', '146', '16');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3810', '2015-05-12 14:00:00', '133', '2625', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('3812', '2015-05-12 14:00:00', '133', '2576', '155', '2');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4082', '2015-06-19 15:00:00', '139', '2125', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4092', '2015-06-19 15:00:00', '139', '2599', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4686', '2015-11-23 15:00:00', '157', '5837', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4689', '2015-11-23 15:00:00', '157', '4959', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4695', '2015-11-23 15:00:00', '157', '2125', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4698', '2015-11-23 15:00:00', '157', '2042', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4699', '2015-11-23 15:00:00', '157', '2489', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4702', '2015-11-23 15:00:00', '157', '2576', '155', '1');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4706', '2015-11-24 08:00:00', '158', '5837', '155', '8');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4719', '2015-11-24 08:00:00', '158', '2125', '155', '8');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4720', '2015-11-24 08:00:00', '158', '2599', '155', '8');
INSERT INTO `hojas_vida_capacitaciones` VALUES ('4721', '2015-11-24 08:00:00', '158', '4959', '155', '8');

-- ----------------------------
-- Table structure for hojas_vida_reporte
-- ----------------------------
DROP TABLE IF EXISTS `hojas_vida_reporte`;
CREATE TABLE `hojas_vida_reporte` (
  `Pk_Id_Hoja_Vida_Reporte` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Fk_Id_Hoja_Vida` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Hoja_Vida_Reporte`),
  KEY `Fk_Id_Hoja_Vida` (`Fk_Id_Hoja_Vida`),
  CONSTRAINT `hojas_vida_reporte_ibfk_1` FOREIGN KEY (`Fk_Id_Hoja_Vida`) REFERENCES `hojas_vida` (`Pk_Id_Hoja_Vida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hojas_vida_reporte
-- ----------------------------

-- ----------------------------
-- Table structure for permisos_contratista
-- ----------------------------
DROP TABLE IF EXISTS `permisos_contratista`;
CREATE TABLE `permisos_contratista` (
  `Pk_Id_Permiso_Contratista` int(11) NOT NULL AUTO_INCREMENT,
  `Fk_Id_Usuario` int(11) DEFAULT NULL,
  `Fk_Id_Valor_Contratista` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Permiso_Contratista`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of permisos_contratista
-- ----------------------------
INSERT INTO `permisos_contratista` VALUES ('78', '1', '0');
INSERT INTO `permisos_contratista` VALUES ('80', '6', '0');
INSERT INTO `permisos_contratista` VALUES ('83', '7', '0');
INSERT INTO `permisos_contratista` VALUES ('84', '5', '0');
INSERT INTO `permisos_contratista` VALUES ('85', '3', '0');
INSERT INTO `permisos_contratista` VALUES ('86', '30', '206');
INSERT INTO `permisos_contratista` VALUES ('87', '31', '206');
INSERT INTO `permisos_contratista` VALUES ('88', '32', '0');

-- ----------------------------
-- Table structure for remisiones
-- ----------------------------
DROP TABLE IF EXISTS `remisiones`;
CREATE TABLE `remisiones` (
  `Pk_Id_Remision` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la remisión',
  `Fk_Id_Funcionario` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del funcionario al cual se remite',
  `Fecha` datetime DEFAULT NULL COMMENT 'Fecha de la remisión',
  `Radicado_Remision` varchar(75) DEFAULT NULL COMMENT 'Número de radicado de la remisión, si es el caso',
  PRIMARY KEY (`Pk_Id_Remision`),
  KEY `Fk_Id_Funcionario` (`Fk_Id_Funcionario`),
  CONSTRAINT `remisiones_ibfk_1` FOREIGN KEY (`Fk_Id_Funcionario`) REFERENCES `funcionarios` (`Pk_Id_Funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remisiones
-- ----------------------------

-- ----------------------------
-- Table structure for seguimientos
-- ----------------------------
DROP TABLE IF EXISTS `seguimientos`;
CREATE TABLE `seguimientos` (
  `Pk_Id_Seguimiento` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) DEFAULT NULL,
  `Fk_Id_Solicitud` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Seguimiento`),
  KEY `Fk_Id_Solicitud` (`Fk_Id_Solicitud`),
  CONSTRAINT `seguimientos_ibfk_1` FOREIGN KEY (`Fk_Id_Solicitud`) REFERENCES `solicitudes` (`Pk_Id_Solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seguimientos
-- ----------------------------

-- ----------------------------
-- Table structure for solicitudes
-- ----------------------------
DROP TABLE IF EXISTS `solicitudes`;
CREATE TABLE `solicitudes` (
  `Pk_Id_Solicitud` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la solicitud',
  `Accion_Descripcion` varchar(750) DEFAULT NULL COMMENT 'Descripción completa de la acción emprendida',
  `Direccion` varchar(75) DEFAULT NULL COMMENT 'Dirección de residencia del solicitante',
  `Documento` varchar(75) DEFAULT NULL,
  `Email` varchar(175) DEFAULT NULL,
  `Fecha_Cierre` datetime DEFAULT NULL COMMENT 'Fecha en la que se cierra la solicitud',
  `Fecha_Creacion` datetime DEFAULT NULL COMMENT 'Fecha en la que se creó la solicitud',
  `Fecha_Modificacion` datetime DEFAULT NULL COMMENT 'Fecha en la que se modificó la solicitud',
  `Fecha_Vinculacion` date DEFAULT NULL,
  `Fk_Id_Area_Encargada` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del área a la cual va la solicitud',
  `Fk_Id_Documento_Tipo` int(11) DEFAULT NULL,
  `Fk_Id_Lugar_Recepcion` int(11) DEFAULT NULL,
  `Fk_Id_Usuario` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del usuario que ha creado la solicitud',
  `Fk_Id_Solicitud_Tipo` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del tipo de solicitud',
  `Fk_Id_Recepcion_Forma` int(11) DEFAULT NULL COMMENT 'Identificador foráneo de la forma de la solicitud',
  `Fk_Id_Tramo` int(11) DEFAULT NULL COMMENT 'Id foráneo del tramo asociado a la solicitud',
  `Fk_Id_Tema` int(11) DEFAULT NULL COMMENT 'Identificador foráneo del tema asociado a la solicitud',
  `Fk_Id_Sector` int(11) DEFAULT NULL COMMENT 'Id foráneo del barrio o vereda',
  `Fk_Id_Solicitud_Accion` int(11) DEFAULT NULL COMMENT 'Identificador foráneo de la acción emprendida',
  `Fk_Id_Solicitud_Estado` int(11) DEFAULT '1' COMMENT 'Identificador foráneo del estado de la solicitud',
  `Fk_Id_Remision` int(11) DEFAULT NULL COMMENT 'Id foráneo de la remisión de la solicitud',
  `Nombres` varchar(75) DEFAULT NULL COMMENT 'Nombre de quien hace la solicitud',
  `Radicado_Entrada` varchar(20) DEFAULT NULL COMMENT 'Número de radicado de entrada de la solicitud',
  `Radicado_Salida` varchar(20) DEFAULT NULL COMMENT 'Número de radicado de salida',
  `Respuesta_Descripcion` text COMMENT 'Descripción de la respuesta',
  `Solicitud_Descripcion` text COMMENT 'Descripción detallada de la solicitud',
  `Telefono` varchar(75) DEFAULT NULL COMMENT 'Teléfono del solicitante',
  PRIMARY KEY (`Pk_Id_Solicitud`),
  KEY `Fk_Id_Usuario` (`Fk_Id_Usuario`),
  KEY `Fk_Id_Tramo` (`Fk_Id_Tramo`),
  KEY `Fk_Id_Recepcion_Forma` (`Fk_Id_Recepcion_Forma`),
  KEY `Fk_Id_Solicitud_Tipo` (`Fk_Id_Solicitud_Tipo`),
  KEY `Fk_Id_Tema` (`Fk_Id_Tema`),
  KEY `Fk_Id_Area_Encargada` (`Fk_Id_Area_Encargada`),
  KEY `solicitudes_ibfk_11` (`Fk_Id_Solicitud_Estado`),
  KEY `Fk_Id_Solicitud_Accion` (`Fk_Id_Solicitud_Accion`),
  KEY `Fk_Id_Remision` (`Fk_Id_Remision`),
  KEY `Fk_Id_Sector` (`Fk_Id_Sector`),
  KEY `Fk_Id_Lugar_Recepcion` (`Fk_Id_Lugar_Recepcion`),
  KEY `Fk_Id_Documento_Tipo` (`Fk_Id_Documento_Tipo`),
  CONSTRAINT `solicitudes_ibfk_11` FOREIGN KEY (`Fk_Id_Solicitud_Accion`) REFERENCES `tbl_solicitud_accion` (`Pk_Id_Solicitud_Accion`),
  CONSTRAINT `solicitudes_ibfk_12` FOREIGN KEY (`Fk_Id_Remision`) REFERENCES `remisiones` (`Pk_Id_Remision`),
  CONSTRAINT `solicitudes_ibfk_13` FOREIGN KEY (`Fk_Id_Sector`) REFERENCES `tbl_sectores` (`Pk_Id_Sector`),
  CONSTRAINT `solicitudes_ibfk_14` FOREIGN KEY (`Fk_Id_Recepcion_Forma`) REFERENCES `tbl_recepcion_forma` (`Pk_Id_Recepcion_Forma`),
  CONSTRAINT `solicitudes_ibfk_15` FOREIGN KEY (`Fk_Id_Lugar_Recepcion`) REFERENCES `tbl_recepcion_lugares` (`Pk_Id_Recepcion_Lugar`),
  CONSTRAINT `solicitudes_ibfk_16` FOREIGN KEY (`Fk_Id_Documento_Tipo`) REFERENCES `tbl_documentos_tipos` (`Pk_Id_Documento_Tipo`),
  CONSTRAINT `solicitudes_ibfk_2` FOREIGN KEY (`Fk_Id_Tramo`) REFERENCES `tbl_tramos` (`Pk_Id_Tramo`),
  CONSTRAINT `solicitudes_ibfk_5` FOREIGN KEY (`Fk_Id_Solicitud_Tipo`) REFERENCES `tbl_solicitud_tipos` (`Pk_Id_Solicitud_Tipo`),
  CONSTRAINT `solicitudes_ibfk_6` FOREIGN KEY (`Fk_Id_Tema`) REFERENCES `tbl_temas` (`Pk_Id_Tema`),
  CONSTRAINT `solicitudes_ibfk_7` FOREIGN KEY (`Fk_Id_Area_Encargada`) REFERENCES `tbl_area_encargada` (`Pk_Id_Area_Encargada`),
  CONSTRAINT `solicitudes_ibfk_8` FOREIGN KEY (`Fk_Id_Solicitud_Estado`) REFERENCES `tbl_solicitud_estados` (`Pk_Id_Solicitud_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of solicitudes
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acciones
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acciones`;
CREATE TABLE `tbl_acciones` (
  `Pk_Id_Accion` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` text NOT NULL,
  `Fk_Id_Modulo` int(11) NOT NULL,
  PRIMARY KEY (`Pk_Id_Accion`),
  KEY `Fk_Id_Modulo` (`Fk_Id_Modulo`),
  CONSTRAINT `tbl_acciones_ibfk_1` FOREIGN KEY (`Fk_Id_Modulo`) REFERENCES `tbl_modulos` (`Pk_Id_Modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_acciones
-- ----------------------------
INSERT INTO `tbl_acciones` VALUES ('1', 'Ver Indicador de solicitudes', '4');
INSERT INTO `tbl_acciones` VALUES ('2', 'Ver Indicador de Anexos ICA', '4');
INSERT INTO `tbl_acciones` VALUES ('5', 'Módulo de Administración', '6');
INSERT INTO `tbl_acciones` VALUES ('6', 'Módulo de Reportes', '7');
INSERT INTO `tbl_acciones` VALUES ('7', 'Creación de usuario nuevo', '7');
INSERT INTO `tbl_acciones` VALUES ('17', 'Crear solicitudes', '1');
INSERT INTO `tbl_acciones` VALUES ('18', 'Ver solicitudes', '1');
INSERT INTO `tbl_acciones` VALUES ('20', 'ICA 0', '2');
INSERT INTO `tbl_acciones` VALUES ('21', 'ICA 1a', '2');
INSERT INTO `tbl_acciones` VALUES ('22', 'ICA 2a', '2');
INSERT INTO `tbl_acciones` VALUES ('23', 'ICA 2b', '2');
INSERT INTO `tbl_acciones` VALUES ('24', 'ICA 2c', '2');
INSERT INTO `tbl_acciones` VALUES ('25', 'ICA 2d', '2');
INSERT INTO `tbl_acciones` VALUES ('26', 'Ver logs de usuarios', '6');
INSERT INTO `tbl_acciones` VALUES ('27', 'Asignar permisos', '6');
INSERT INTO `tbl_acciones` VALUES ('28', 'Plantilla de solicitudes comunitarias', '7');
INSERT INTO `tbl_acciones` VALUES ('29', 'Consolidado mensual de solicitudes', '7');
INSERT INTO `tbl_acciones` VALUES ('30', 'Reporte ICA 0', '7');
INSERT INTO `tbl_acciones` VALUES ('31', 'Informe fotográfico mensual 1a', '7');
INSERT INTO `tbl_acciones` VALUES ('32', 'Informe de Metas 1a', '7');
INSERT INTO `tbl_acciones` VALUES ('33', 'Informe vertimientos 2a', '7');
INSERT INTO `tbl_acciones` VALUES ('34', 'Informe 2b', '7');
INSERT INTO `tbl_acciones` VALUES ('35', 'Informe 2c', '7');
INSERT INTO `tbl_acciones` VALUES ('36', 'Iforme 2d', '7');
INSERT INTO `tbl_acciones` VALUES ('37', 'Reporte de solicitud', '7');
INSERT INTO `tbl_acciones` VALUES ('38', 'Modificar solicitudes', '1');
INSERT INTO `tbl_acciones` VALUES ('40', 'ICA 2e', '2');
INSERT INTO `tbl_acciones` VALUES ('41', 'Iforme 2e', '7');
INSERT INTO `tbl_acciones` VALUES ('42', 'ICA 2f', '2');
INSERT INTO `tbl_acciones` VALUES ('43', 'Iforme 2f', '7');
INSERT INTO `tbl_acciones` VALUES ('44', 'ICA 2g', '2');
INSERT INTO `tbl_acciones` VALUES ('45', 'Iforme 2g', '7');
INSERT INTO `tbl_acciones` VALUES ('46', 'ICA 2h', '2');
INSERT INTO `tbl_acciones` VALUES ('47', 'Iforme 2h', '7');
INSERT INTO `tbl_acciones` VALUES ('48', 'ICA 2i', '2');
INSERT INTO `tbl_acciones` VALUES ('49', 'Iforme 2i', '7');
INSERT INTO `tbl_acciones` VALUES ('50', 'ICA 3a', '2');
INSERT INTO `tbl_acciones` VALUES ('51', 'Iforme 3a', '7');
INSERT INTO `tbl_acciones` VALUES ('55', 'Generación de reporte semanal', '7');
INSERT INTO `tbl_acciones` VALUES ('57', 'Creación de hoja de vida', '5');
INSERT INTO `tbl_acciones` VALUES ('58', 'Modificación de hoja de vida', '5');
INSERT INTO `tbl_acciones` VALUES ('59', 'Consulta de hoja de vida', '5');
INSERT INTO `tbl_acciones` VALUES ('60', 'Subida de archivos', '5');
INSERT INTO `tbl_acciones` VALUES ('61', 'Visualización de archivos', '5');
INSERT INTO `tbl_acciones` VALUES ('62', 'Eliminación de anexos', '5');
INSERT INTO `tbl_acciones` VALUES ('63', 'Generación de reporte mensual', '5');
INSERT INTO `tbl_acciones` VALUES ('64', 'Reporte de hojas de vida vinculadas', '7');
INSERT INTO `tbl_acciones` VALUES ('66', 'Reporte de hojas de vida recibidas', '7');
INSERT INTO `tbl_acciones` VALUES ('67', 'Crear capacitaciones', '5');
INSERT INTO `tbl_acciones` VALUES ('68', 'Adicionar capacitaciones a hoja de vida', '5');
INSERT INTO `tbl_acciones` VALUES ('69', 'Agregar inspección de maquinaria', '8');
INSERT INTO `tbl_acciones` VALUES ('70', 'Agregar inspección de equipos', '8');
INSERT INTO `tbl_acciones` VALUES ('71', 'Consultar inspección de maquinaria', '8');
INSERT INTO `tbl_acciones` VALUES ('72', 'Reporte de inspección de maquinaria', '8');
INSERT INTO `tbl_acciones` VALUES ('73', 'Reporte de hallazgos de inspección de maquinaria', '8');
INSERT INTO `tbl_acciones` VALUES ('75', 'Reporte consolidado mensual de solicitudes', '8');

-- ----------------------------
-- Table structure for tbl_area_encargada
-- ----------------------------
DROP TABLE IF EXISTS `tbl_area_encargada`;
CREATE TABLE `tbl_area_encargada` (
  `Pk_Id_Area_Encargada` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del área encargada',
  `Nombre` varchar(75) NOT NULL COMMENT 'Nombre del área encargada',
  PRIMARY KEY (`Pk_Id_Area_Encargada`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_area_encargada
-- ----------------------------
INSERT INTO `tbl_area_encargada` VALUES ('1', 'Construcción');
INSERT INTO `tbl_area_encargada` VALUES ('2', 'Operación');
INSERT INTO `tbl_area_encargada` VALUES ('3', 'Mantenimiento Vial');
INSERT INTO `tbl_area_encargada` VALUES ('4', 'Predios');
INSERT INTO `tbl_area_encargada` VALUES ('5', 'Jurídica');
INSERT INTO `tbl_area_encargada` VALUES ('6', 'Ambiental');
INSERT INTO `tbl_area_encargada` VALUES ('7', 'Social');
INSERT INTO `tbl_area_encargada` VALUES ('8', 'Diseño');
INSERT INTO `tbl_area_encargada` VALUES ('9', 'Externa al Proyecto');
INSERT INTO `tbl_area_encargada` VALUES ('15', 'Concesionario');
INSERT INTO `tbl_area_encargada` VALUES ('16', 'Interventoría');
INSERT INTO `tbl_area_encargada` VALUES ('17', 'Desarrollo de software');

-- ----------------------------
-- Table structure for tbl_auditoria_tipo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_auditoria_tipo`;
CREATE TABLE `tbl_auditoria_tipo` (
  `Pk_Id_Auditoria_Tipo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del tipo de auditoria',
  `Nombre` varchar(75) DEFAULT NULL COMMENT 'Nombre del tipo de auditoría',
  `Detalle` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Auditoria_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_auditoria_tipo
-- ----------------------------
INSERT INTO `tbl_auditoria_tipo` VALUES ('1', 'Inicios de sesión', 'Inició sesión');
INSERT INTO `tbl_auditoria_tipo` VALUES ('2', 'Cierres de sesión', 'Cerró sesión');
INSERT INTO `tbl_auditoria_tipo` VALUES ('3', 'Usuarios Nuevos', 'Creó un nuevo usuario');
INSERT INTO `tbl_auditoria_tipo` VALUES ('4', 'Solicitudes Nuevas', 'Creó una nueva solicitud');
INSERT INTO `tbl_auditoria_tipo` VALUES ('5', 'Impresión de solicitudes', 'Imprimió una solicitud');
INSERT INTO `tbl_auditoria_tipo` VALUES ('6', 'Modificación de solicitudes', 'Modificó una solicitud');
INSERT INTO `tbl_auditoria_tipo` VALUES ('7', 'Consulta de solicitudes', 'Consultó una solicitud');
INSERT INTO `tbl_auditoria_tipo` VALUES ('8', 'Apertura de solicitudes', 'Abrió una solicitud');
INSERT INTO `tbl_auditoria_tipo` VALUES ('9', 'Cierre de solicitudes', 'Cerró una solicitud');
INSERT INTO `tbl_auditoria_tipo` VALUES ('10', 'Creación de seguimientos', 'Agregó un seguimiento');
INSERT INTO `tbl_auditoria_tipo` VALUES ('11', 'Impresión de Plantilla de solicitud', 'Imprimió una plantilla de solicitud');
INSERT INTO `tbl_auditoria_tipo` VALUES ('12', 'Impresión de consolidado de solicitudes por tramo', 'Generó un consolidado de solicitudes por tramo');
INSERT INTO `tbl_auditoria_tipo` VALUES ('13', 'Búsqueda de solicitudes', 'Buscó una solicitud');
INSERT INTO `tbl_auditoria_tipo` VALUES ('14', 'Impresión de consolidado por áreas', 'Generó un consolidado de áreas por estado');
INSERT INTO `tbl_auditoria_tipo` VALUES ('15', 'Impresión de consolidado por áreas', 'Generó un consolidado de áreas por meses');
INSERT INTO `tbl_auditoria_tipo` VALUES ('16', 'Registro de formato', 'Creó un registro de ICA-1a');
INSERT INTO `tbl_auditoria_tipo` VALUES ('17', 'Subida de anexo', 'Subió un anexo');
INSERT INTO `tbl_auditoria_tipo` VALUES ('18', 'Impresión de ICA0', 'Imprimió el archivo ICA 0');
INSERT INTO `tbl_auditoria_tipo` VALUES ('19', 'Impresión de ICA1a', 'Imprimió un informe ICA 1a');
INSERT INTO `tbl_auditoria_tipo` VALUES ('20', 'Impresión de registro fotorgráfico mensual', 'Imprime un registro mensual');
INSERT INTO `tbl_auditoria_tipo` VALUES ('21', 'Creación de Meta', 'Agregó una meta');
INSERT INTO `tbl_auditoria_tipo` VALUES ('22', 'Ingreso de hoja de vida', 'Ingresó una nueva hoja de vida al sistema');
INSERT INTO `tbl_auditoria_tipo` VALUES ('23', 'Creación de versión ICA 0', 'Agregó una nueva versión del ICA 0');
INSERT INTO `tbl_auditoria_tipo` VALUES ('24', 'Impresión de hojas de vida', 'Imprimió un reporte de hojas de vida');
INSERT INTO `tbl_auditoria_tipo` VALUES ('25', 'Impresión de ICA 1a', 'Imprimió el reporte de metas del ICA 1a');
INSERT INTO `tbl_auditoria_tipo` VALUES ('26', 'Impresión de ICA 2a', 'Imprimió el archivo ICA 2a');
INSERT INTO `tbl_auditoria_tipo` VALUES ('27', 'Impresión de ICA 2b', 'Imprimió el archivo ICA 2b');
INSERT INTO `tbl_auditoria_tipo` VALUES ('28', 'Impresión de ICA 2c', 'Imprimió el archivo ICA 2c');
INSERT INTO `tbl_auditoria_tipo` VALUES ('29', 'Impresión de ICA 2d', 'Imprimió el archivo ICA 2d');
INSERT INTO `tbl_auditoria_tipo` VALUES ('30', 'Modificación de hojas de vida', 'Modificó los datos de una hoja de vida');
INSERT INTO `tbl_auditoria_tipo` VALUES ('31', 'Creación ICA 2a', 'Creó un registro en el ICA 2a');
INSERT INTO `tbl_auditoria_tipo` VALUES ('32', 'Creación ICA 2b', 'Creó un registro en el ICA 2b');
INSERT INTO `tbl_auditoria_tipo` VALUES ('33', 'Creación ICA 2c', 'Creó un registro en el ICA 2c');
INSERT INTO `tbl_auditoria_tipo` VALUES ('34', 'Creación ICA 2d', 'Creó un registro en el ICA 2d');
INSERT INTO `tbl_auditoria_tipo` VALUES ('35', 'Creación ICA 2e', 'Creó un registro en el ICA 2e');
INSERT INTO `tbl_auditoria_tipo` VALUES ('36', 'Impresión de ICA 2e', 'Imprimió el archivo ICA 2e');
INSERT INTO `tbl_auditoria_tipo` VALUES ('37', 'Creación ICA 2f', 'Creó un registro en el ICA 2f');
INSERT INTO `tbl_auditoria_tipo` VALUES ('38', 'Impresión de ICA 2f', 'Imprimió el archivo ICA 2f');
INSERT INTO `tbl_auditoria_tipo` VALUES ('39', 'Creación ICA 2g', 'Creó un registro en el ICA 2g');
INSERT INTO `tbl_auditoria_tipo` VALUES ('40', 'Impresión de ICA 2g', 'Imprimió el archivo ICA 2g');
INSERT INTO `tbl_auditoria_tipo` VALUES ('41', 'Creación ICA 2h', 'Creó un registro en el ICA 2h');
INSERT INTO `tbl_auditoria_tipo` VALUES ('42', 'Impresión de ICA 2h', 'Imprimió el archivo ICA 2h');
INSERT INTO `tbl_auditoria_tipo` VALUES ('43', 'Creación ICA 3a', 'Creó un requerimiento en el ICA 3a');
INSERT INTO `tbl_auditoria_tipo` VALUES ('44', 'Impresión de ICA 3a', 'Imprimió el archivo ICA 3a');
INSERT INTO `tbl_auditoria_tipo` VALUES ('45', 'Generación de reporte semanal', 'Generó un reporte semanal de hojas de vida');
INSERT INTO `tbl_auditoria_tipo` VALUES ('46', 'Subida de hojas de vida', 'Subió un archivo escaneado de una hoja de vida');
INSERT INTO `tbl_auditoria_tipo` VALUES ('47', 'Eliminación de archivo de hoja de vida escaneado', 'Eliminó un escaneo de hoja de vida');
INSERT INTO `tbl_auditoria_tipo` VALUES ('48', 'Creación de una capacitación', 'Creó una nueva capacitación');
INSERT INTO `tbl_auditoria_tipo` VALUES ('49', 'Agregar capacitación a usuario', 'Agregó una persona a una capacitación');
INSERT INTO `tbl_auditoria_tipo` VALUES ('50', 'Creación de registro de inspección de maquinaria', 'Creó un registro de inspección de maquinaria');
INSERT INTO `tbl_auditoria_tipo` VALUES ('51', 'Impresión de inspección de maquinaria', 'Generó un reporte de inspección de maquinaria');
INSERT INTO `tbl_auditoria_tipo` VALUES ('52', 'Eliminación de anexo ICA', 'Eliminó un anexo');

-- ----------------------------
-- Table structure for tbl_cargos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cargos`;
CREATE TABLE `tbl_cargos` (
  `Pk_Id_Cargo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del cargo',
  `Nombre` varchar(75) NOT NULL COMMENT 'Nombre del cargo',
  PRIMARY KEY (`Pk_Id_Cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_cargos
-- ----------------------------
INSERT INTO `tbl_cargos` VALUES ('21', 'Ayudante de mantenimiento');
INSERT INTO `tbl_cargos` VALUES ('22', 'Inspector vial\r\n');
INSERT INTO `tbl_cargos` VALUES ('23', 'Ayudante de inspector vial');
INSERT INTO `tbl_cargos` VALUES ('24', 'Servicios generales');
INSERT INTO `tbl_cargos` VALUES ('25', 'Radio operador');
INSERT INTO `tbl_cargos` VALUES ('26', 'Auxiliar OFAIN');
INSERT INTO `tbl_cargos` VALUES ('27', 'Trabajador social');
INSERT INTO `tbl_cargos` VALUES ('28', 'Gestor predial');
INSERT INTO `tbl_cargos` VALUES ('29', 'Cadenero');
INSERT INTO `tbl_cargos` VALUES ('30', 'Coordinador de operaciones');
INSERT INTO `tbl_cargos` VALUES ('31', 'Comunicador');
INSERT INTO `tbl_cargos` VALUES ('32', 'Secretaria');
INSERT INTO `tbl_cargos` VALUES ('33', 'Digitador y apoyo operaciones');
INSERT INTO `tbl_cargos` VALUES ('34', 'Asistente juridico');
INSERT INTO `tbl_cargos` VALUES ('35', 'Director de Desarrollo de Software');

-- ----------------------------
-- Table structure for tbl_documentos_tipos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_documentos_tipos`;
CREATE TABLE `tbl_documentos_tipos` (
  `Pk_Id_Documento_Tipo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(75) DEFAULT NULL,
  `Abreviatura` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Documento_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_documentos_tipos
-- ----------------------------
INSERT INTO `tbl_documentos_tipos` VALUES ('1', 'NIT', 'NIT');
INSERT INTO `tbl_documentos_tipos` VALUES ('2', 'Cédula de Ciudadanía', 'C.C.');
INSERT INTO `tbl_documentos_tipos` VALUES ('3', 'Cédula de Extranjetría', 'C.E.');
INSERT INTO `tbl_documentos_tipos` VALUES ('4', 'Pasaporte', 'P');

-- ----------------------------
-- Table structure for tbl_empresas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_empresas`;
CREATE TABLE `tbl_empresas` (
  `Pk_Id_Empresa` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la empresa',
  `Nombre` varchar(75) NOT NULL COMMENT 'Nombre de la empresa',
  PRIMARY KEY (`Pk_Id_Empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_empresas
-- ----------------------------
INSERT INTO `tbl_empresas` VALUES ('1', 'VINUS S.A.S.');

-- ----------------------------
-- Table structure for tbl_frentes
-- ----------------------------
DROP TABLE IF EXISTS `tbl_frentes`;
CREATE TABLE `tbl_frentes` (
  `Pk_Id_Frente` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del cargo',
  `Nombre` varchar(75) NOT NULL COMMENT 'Nombre del cargo',
  PRIMARY KEY (`Pk_Id_Frente`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_frentes
-- ----------------------------
INSERT INTO `tbl_frentes` VALUES ('105', 'Oficina');

-- ----------------------------
-- Table structure for tbl_hojas_vida_categorias
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hojas_vida_categorias`;
CREATE TABLE `tbl_hojas_vida_categorias` (
  `Pk_Id_Hoja_Vida_Categoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` text,
  `Orden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Hoja_Vida_Categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hojas_vida_categorias
-- ----------------------------
INSERT INTO `tbl_hojas_vida_categorias` VALUES ('1', 'Documentos de contratación', '1');
INSERT INTO `tbl_hojas_vida_categorias` VALUES ('2', 'Documentos para la desvinculación', '5');
INSERT INTO `tbl_hojas_vida_categorias` VALUES ('3', 'Documentos legales', '3');
INSERT INTO `tbl_hojas_vida_categorias` VALUES ('4', 'Información de personas a cargo', '2');
INSERT INTO `tbl_hojas_vida_categorias` VALUES ('5', 'Novedades', '4');

-- ----------------------------
-- Table structure for tbl_hojas_vida_subcategorias
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hojas_vida_subcategorias`;
CREATE TABLE `tbl_hojas_vida_subcategorias` (
  `Pk_Id_Hoja_Vida_Subcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` text,
  `Fk_Id_Hoja_Vida_Categoria` int(11) DEFAULT NULL,
  `Orden` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Hoja_Vida_Subcategoria`),
  KEY `Fk_Id_Hoja_Vida_Categoria` (`Fk_Id_Hoja_Vida_Categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hojas_vida_subcategorias
-- ----------------------------
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('1', 'Hoja de vida', '1', '1');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('2', 'Cédula de ciudadanía', '1', '2');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('3', 'Libreta militar', '1', '3');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('4', 'Referencias personales', '1', '4');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('5', 'Prueba técnica', '1', '5');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('6', 'Prueba psico-técnica', '1', '6');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('7', 'Licencia de conducción', '1', '7');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('8', 'Tarjeta profesional', '1', '8');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('9', 'Certificado de educación', '1', '9');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('10', 'Certificados de experiencia laboral', '1', '10');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('11', 'Certificado de vecindad', '1', '11');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('12', 'Certificado de antecedentes y pasado judicial', '1', '12');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('13', 'Constancia de afiliación', '1', '13');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('14', 'Cuenta bancaria', '1', '14');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('15', 'Informe de gestión humana', '1', '15');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('16', 'Cédula de ciudadanía cónyuge', '4', '1');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('17', 'Registro civil de nacimiento hijo(s)', '4', '2');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('18', 'Documento de identificación hijo(s)', '4', '3');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('19', 'Certificado de escolaridad hijo(s)', '4', '4');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('20', 'Registro civil de matrimonio (declaración extrajuicio)', '4', '5');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('21', 'Afiliación ARL', '3', '1');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('22', 'Afiliación Caja de Compensación Familiar', '3', '2');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('23', 'Afiliación EPS', '3', '3');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('24', 'Afiliación Fondo de Pensiones', '3', '4');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('25', 'Afiliación Fondo de Cesantías', '3', '5');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('26', 'Otrosi - Cláusulas adicionales', '3', '6');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('27', 'Incrementos', '3', '7');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('28', 'Prórrogas', '3', '8');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('29', 'Evaluaciones de desempeño', '5', '1');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('30', 'Descuentos de nómina', '5', '2');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('31', 'Cesantías', '5', '3');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('32', 'Pago de horas extras', '5', '4');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('33', 'Préstamos', '5', '5');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('34', 'Incapacidades', '5', '6');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('35', 'Acta de descargos', '5', '7');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('36', 'Varios', '5', '16');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('37', 'Liquidación final', '2', '1');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('38', 'Notificación término contrato', '2', '2');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('39', 'Carta de renuncia', '2', '3');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('40', 'Contrato', '3', '9');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('41', 'Vacaciones', '5', '8');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('42', 'Embargos', '5', '9');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('43', 'Beneficios extralegales', '5', '10');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('44', 'Amonestaciones', '5', '11');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('45', 'Informes de accidentes de trabajo', '5', '12');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('46', 'Otros', '4', '5');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('47', 'Paz y salvo', '2', '3');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('48', 'Entrevista de retiro', '2', '4');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('49', 'Orden examen de egreso', '2', '5');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('50', 'Permiso remunerado', '5', '14');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('51', 'Permiso no remunerado', '5', '13');
INSERT INTO `tbl_hojas_vida_subcategorias` VALUES ('52', 'Calamidad', '5', '15');

-- ----------------------------
-- Table structure for tbl_modulos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_modulos`;
CREATE TABLE `tbl_modulos` (
  `Pk_Id_Modulo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del módulo',
  `Nombre` varchar(75) DEFAULT NULL COMMENT 'Nombre del módulo',
  PRIMARY KEY (`Pk_Id_Modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_modulos
-- ----------------------------
INSERT INTO `tbl_modulos` VALUES ('1', 'Solicitudes');
INSERT INTO `tbl_modulos` VALUES ('2', 'ICA');
INSERT INTO `tbl_modulos` VALUES ('3', 'Sesión');
INSERT INTO `tbl_modulos` VALUES ('4', 'Inicio');
INSERT INTO `tbl_modulos` VALUES ('5', 'Hojas de Vida');
INSERT INTO `tbl_modulos` VALUES ('6', 'Administración');
INSERT INTO `tbl_modulos` VALUES ('7', 'Reportes');
INSERT INTO `tbl_modulos` VALUES ('8', 'SISO');

-- ----------------------------
-- Table structure for tbl_municipios
-- ----------------------------
DROP TABLE IF EXISTS `tbl_municipios`;
CREATE TABLE `tbl_municipios` (
  `Pk_Id_Municipio` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del municipio',
  `Nombre` varchar(75) NOT NULL COMMENT 'Nombre del municipio',
  PRIMARY KEY (`Pk_Id_Municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_municipios
-- ----------------------------
INSERT INTO `tbl_municipios` VALUES ('1', 'Bello');
INSERT INTO `tbl_municipios` VALUES ('2', 'Copacabana');
INSERT INTO `tbl_municipios` VALUES ('3', 'Girardota');
INSERT INTO `tbl_municipios` VALUES ('4', 'Barbosa');
INSERT INTO `tbl_municipios` VALUES ('5', 'Donmatías');
INSERT INTO `tbl_municipios` VALUES ('6', 'Santo Domingo');
INSERT INTO `tbl_municipios` VALUES ('7', 'Cisneros');
INSERT INTO `tbl_municipios` VALUES ('8', 'Medellín');
INSERT INTO `tbl_municipios` VALUES ('9', 'San Roque');
INSERT INTO `tbl_municipios` VALUES ('10', 'Maceo');

-- ----------------------------
-- Table structure for tbl_oficios
-- ----------------------------
DROP TABLE IF EXISTS `tbl_oficios`;
CREATE TABLE `tbl_oficios` (
  `Pk_Id_Oficio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` text,
  `Calificado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Oficio`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_oficios
-- ----------------------------
INSERT INTO `tbl_oficios` VALUES ('129', 'Ayudante de mantenimiento', '0');
INSERT INTO `tbl_oficios` VALUES ('130', 'Inspector vial', '1');
INSERT INTO `tbl_oficios` VALUES ('131', 'Ayudante de inspector vial', '1');
INSERT INTO `tbl_oficios` VALUES ('132', 'Servicios generales', '0');
INSERT INTO `tbl_oficios` VALUES ('133', 'Radio operador', '1');
INSERT INTO `tbl_oficios` VALUES ('134', 'Auxiliar OFAIN', '1');
INSERT INTO `tbl_oficios` VALUES ('135', 'Gestor predial', '1');
INSERT INTO `tbl_oficios` VALUES ('136', 'Trabajador  social', '1');
INSERT INTO `tbl_oficios` VALUES ('137', 'Cadenero 1', '0');
INSERT INTO `tbl_oficios` VALUES ('138', 'Cadenero 2', '0');
INSERT INTO `tbl_oficios` VALUES ('139', 'Coordinador de operaciones', '1');
INSERT INTO `tbl_oficios` VALUES ('140', 'Comunicador', '1');
INSERT INTO `tbl_oficios` VALUES ('141', 'Secretaria', '1');
INSERT INTO `tbl_oficios` VALUES ('142', 'Digitador y apoyo Operaciones', '1');
INSERT INTO `tbl_oficios` VALUES ('143', 'Asistente jurídico', '1');
INSERT INTO `tbl_oficios` VALUES ('144', 'Director de Desarrollo de Software', '1');
INSERT INTO `tbl_oficios` VALUES ('145', 'Asistente de desarrollo de software', '1');
INSERT INTO `tbl_oficios` VALUES ('146', 'Conductor', '1');
INSERT INTO `tbl_oficios` VALUES ('147', 'Conductor doble troque', '1');
INSERT INTO `tbl_oficios` VALUES ('148', 'Ayudante', '0');
INSERT INTO `tbl_oficios` VALUES ('149', 'Oficial de construcción', '1');
INSERT INTO `tbl_oficios` VALUES ('150', 'SYSL', '1');
INSERT INTO `tbl_oficios` VALUES ('151', 'Auxiliar de Gestión Social', '1');
INSERT INTO `tbl_oficios` VALUES ('152', 'Director de Gestión Social', '1');
INSERT INTO `tbl_oficios` VALUES ('153', 'Secretaria', '1');
INSERT INTO `tbl_oficios` VALUES ('154', 'Ayudante de maquinaria', '0');
INSERT INTO `tbl_oficios` VALUES ('155', 'Almacenista', '1');
INSERT INTO `tbl_oficios` VALUES ('156', 'Inspector o encargado de obra', '1');
INSERT INTO `tbl_oficios` VALUES ('157', 'Operador de maquinaria pesada', '1');
INSERT INTO `tbl_oficios` VALUES ('158', 'Director de Integración Tecnológica', '1');
INSERT INTO `tbl_oficios` VALUES ('159', 'Asistente administrativa', '1');

-- ----------------------------
-- Table structure for tbl_permisos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_permisos`;
CREATE TABLE `tbl_permisos` (
  `Fk_Id_Accion` int(11) NOT NULL,
  `Fk_Id_Usuario` int(11) NOT NULL,
  KEY `Fk_Id_Accion` (`Fk_Id_Accion`),
  CONSTRAINT `tbl_permisos_ibfk_1` FOREIGN KEY (`Fk_Id_Accion`) REFERENCES `tbl_acciones` (`Pk_Id_Accion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_permisos
-- ----------------------------
INSERT INTO `tbl_permisos` VALUES ('1', '1');
INSERT INTO `tbl_permisos` VALUES ('2', '1');
INSERT INTO `tbl_permisos` VALUES ('17', '1');
INSERT INTO `tbl_permisos` VALUES ('38', '1');
INSERT INTO `tbl_permisos` VALUES ('18', '1');
INSERT INTO `tbl_permisos` VALUES ('28', '1');
INSERT INTO `tbl_permisos` VALUES ('37', '1');
INSERT INTO `tbl_permisos` VALUES ('29', '1');
INSERT INTO `tbl_permisos` VALUES ('20', '1');
INSERT INTO `tbl_permisos` VALUES ('21', '1');
INSERT INTO `tbl_permisos` VALUES ('22', '1');
INSERT INTO `tbl_permisos` VALUES ('23', '1');
INSERT INTO `tbl_permisos` VALUES ('24', '1');
INSERT INTO `tbl_permisos` VALUES ('25', '1');
INSERT INTO `tbl_permisos` VALUES ('40', '1');
INSERT INTO `tbl_permisos` VALUES ('42', '1');
INSERT INTO `tbl_permisos` VALUES ('44', '1');
INSERT INTO `tbl_permisos` VALUES ('46', '1');
INSERT INTO `tbl_permisos` VALUES ('50', '1');
INSERT INTO `tbl_permisos` VALUES ('30', '1');
INSERT INTO `tbl_permisos` VALUES ('32', '1');
INSERT INTO `tbl_permisos` VALUES ('31', '1');
INSERT INTO `tbl_permisos` VALUES ('33', '1');
INSERT INTO `tbl_permisos` VALUES ('34', '1');
INSERT INTO `tbl_permisos` VALUES ('35', '1');
INSERT INTO `tbl_permisos` VALUES ('36', '1');
INSERT INTO `tbl_permisos` VALUES ('41', '1');
INSERT INTO `tbl_permisos` VALUES ('43', '1');
INSERT INTO `tbl_permisos` VALUES ('45', '1');
INSERT INTO `tbl_permisos` VALUES ('47', '1');
INSERT INTO `tbl_permisos` VALUES ('51', '1');
INSERT INTO `tbl_permisos` VALUES ('57', '1');
INSERT INTO `tbl_permisos` VALUES ('58', '1');
INSERT INTO `tbl_permisos` VALUES ('59', '1');
INSERT INTO `tbl_permisos` VALUES ('60', '1');
INSERT INTO `tbl_permisos` VALUES ('61', '1');
INSERT INTO `tbl_permisos` VALUES ('62', '1');
INSERT INTO `tbl_permisos` VALUES ('67', '1');
INSERT INTO `tbl_permisos` VALUES ('68', '1');
INSERT INTO `tbl_permisos` VALUES ('63', '1');
INSERT INTO `tbl_permisos` VALUES ('66', '1');
INSERT INTO `tbl_permisos` VALUES ('64', '1');
INSERT INTO `tbl_permisos` VALUES ('75', '1');
INSERT INTO `tbl_permisos` VALUES ('69', '1');
INSERT INTO `tbl_permisos` VALUES ('71', '1');
INSERT INTO `tbl_permisos` VALUES ('70', '1');
INSERT INTO `tbl_permisos` VALUES ('72', '1');
INSERT INTO `tbl_permisos` VALUES ('26', '1');
INSERT INTO `tbl_permisos` VALUES ('27', '1');
INSERT INTO `tbl_permisos` VALUES ('7', '1');
INSERT INTO `tbl_permisos` VALUES ('5', '2');
INSERT INTO `tbl_permisos` VALUES ('27', '2');
INSERT INTO `tbl_permisos` VALUES ('57', '4');
INSERT INTO `tbl_permisos` VALUES ('58', '4');
INSERT INTO `tbl_permisos` VALUES ('59', '4');
INSERT INTO `tbl_permisos` VALUES ('60', '4');
INSERT INTO `tbl_permisos` VALUES ('61', '4');
INSERT INTO `tbl_permisos` VALUES ('62', '4');
INSERT INTO `tbl_permisos` VALUES ('67', '4');
INSERT INTO `tbl_permisos` VALUES ('68', '4');
INSERT INTO `tbl_permisos` VALUES ('63', '4');
INSERT INTO `tbl_permisos` VALUES ('17', '6');
INSERT INTO `tbl_permisos` VALUES ('38', '6');
INSERT INTO `tbl_permisos` VALUES ('18', '6');
INSERT INTO `tbl_permisos` VALUES ('57', '6');
INSERT INTO `tbl_permisos` VALUES ('58', '6');
INSERT INTO `tbl_permisos` VALUES ('59', '6');
INSERT INTO `tbl_permisos` VALUES ('60', '6');
INSERT INTO `tbl_permisos` VALUES ('61', '6');
INSERT INTO `tbl_permisos` VALUES ('62', '6');
INSERT INTO `tbl_permisos` VALUES ('67', '6');
INSERT INTO `tbl_permisos` VALUES ('68', '6');
INSERT INTO `tbl_permisos` VALUES ('63', '6');
INSERT INTO `tbl_permisos` VALUES ('66', '6');
INSERT INTO `tbl_permisos` VALUES ('64', '6');
INSERT INTO `tbl_permisos` VALUES ('75', '6');
INSERT INTO `tbl_permisos` VALUES ('26', '6');
INSERT INTO `tbl_permisos` VALUES ('27', '6');
INSERT INTO `tbl_permisos` VALUES ('7', '6');
INSERT INTO `tbl_permisos` VALUES ('1', '7');
INSERT INTO `tbl_permisos` VALUES ('17', '7');
INSERT INTO `tbl_permisos` VALUES ('38', '7');
INSERT INTO `tbl_permisos` VALUES ('18', '7');
INSERT INTO `tbl_permisos` VALUES ('28', '7');
INSERT INTO `tbl_permisos` VALUES ('37', '7');
INSERT INTO `tbl_permisos` VALUES ('29', '7');
INSERT INTO `tbl_permisos` VALUES ('57', '7');
INSERT INTO `tbl_permisos` VALUES ('58', '7');
INSERT INTO `tbl_permisos` VALUES ('59', '7');
INSERT INTO `tbl_permisos` VALUES ('60', '7');
INSERT INTO `tbl_permisos` VALUES ('61', '7');
INSERT INTO `tbl_permisos` VALUES ('62', '7');
INSERT INTO `tbl_permisos` VALUES ('1', '5');
INSERT INTO `tbl_permisos` VALUES ('17', '5');
INSERT INTO `tbl_permisos` VALUES ('38', '5');
INSERT INTO `tbl_permisos` VALUES ('18', '5');
INSERT INTO `tbl_permisos` VALUES ('28', '5');
INSERT INTO `tbl_permisos` VALUES ('37', '5');
INSERT INTO `tbl_permisos` VALUES ('29', '5');
INSERT INTO `tbl_permisos` VALUES ('57', '5');
INSERT INTO `tbl_permisos` VALUES ('58', '5');
INSERT INTO `tbl_permisos` VALUES ('59', '5');
INSERT INTO `tbl_permisos` VALUES ('60', '5');
INSERT INTO `tbl_permisos` VALUES ('61', '5');
INSERT INTO `tbl_permisos` VALUES ('62', '5');
INSERT INTO `tbl_permisos` VALUES ('67', '5');
INSERT INTO `tbl_permisos` VALUES ('68', '5');
INSERT INTO `tbl_permisos` VALUES ('57', '3');
INSERT INTO `tbl_permisos` VALUES ('58', '3');
INSERT INTO `tbl_permisos` VALUES ('59', '3');
INSERT INTO `tbl_permisos` VALUES ('60', '3');
INSERT INTO `tbl_permisos` VALUES ('61', '3');
INSERT INTO `tbl_permisos` VALUES ('62', '3');
INSERT INTO `tbl_permisos` VALUES ('67', '3');
INSERT INTO `tbl_permisos` VALUES ('68', '3');
INSERT INTO `tbl_permisos` VALUES ('63', '3');
INSERT INTO `tbl_permisos` VALUES ('66', '3');
INSERT INTO `tbl_permisos` VALUES ('64', '3');
INSERT INTO `tbl_permisos` VALUES ('75', '3');
INSERT INTO `tbl_permisos` VALUES ('17', '30');
INSERT INTO `tbl_permisos` VALUES ('38', '30');
INSERT INTO `tbl_permisos` VALUES ('18', '30');
INSERT INTO `tbl_permisos` VALUES ('57', '30');
INSERT INTO `tbl_permisos` VALUES ('58', '30');
INSERT INTO `tbl_permisos` VALUES ('59', '30');
INSERT INTO `tbl_permisos` VALUES ('60', '30');
INSERT INTO `tbl_permisos` VALUES ('61', '30');
INSERT INTO `tbl_permisos` VALUES ('62', '30');
INSERT INTO `tbl_permisos` VALUES ('67', '30');
INSERT INTO `tbl_permisos` VALUES ('68', '30');
INSERT INTO `tbl_permisos` VALUES ('63', '30');
INSERT INTO `tbl_permisos` VALUES ('66', '30');
INSERT INTO `tbl_permisos` VALUES ('64', '30');
INSERT INTO `tbl_permisos` VALUES ('75', '30');
INSERT INTO `tbl_permisos` VALUES ('17', '31');
INSERT INTO `tbl_permisos` VALUES ('38', '31');
INSERT INTO `tbl_permisos` VALUES ('18', '31');
INSERT INTO `tbl_permisos` VALUES ('57', '31');
INSERT INTO `tbl_permisos` VALUES ('58', '31');
INSERT INTO `tbl_permisos` VALUES ('59', '31');
INSERT INTO `tbl_permisos` VALUES ('60', '31');
INSERT INTO `tbl_permisos` VALUES ('61', '31');
INSERT INTO `tbl_permisos` VALUES ('62', '31');
INSERT INTO `tbl_permisos` VALUES ('67', '31');
INSERT INTO `tbl_permisos` VALUES ('68', '31');
INSERT INTO `tbl_permisos` VALUES ('63', '31');
INSERT INTO `tbl_permisos` VALUES ('66', '31');
INSERT INTO `tbl_permisos` VALUES ('64', '31');
INSERT INTO `tbl_permisos` VALUES ('75', '31');
INSERT INTO `tbl_permisos` VALUES ('57', '32');
INSERT INTO `tbl_permisos` VALUES ('58', '32');
INSERT INTO `tbl_permisos` VALUES ('59', '32');
INSERT INTO `tbl_permisos` VALUES ('60', '32');
INSERT INTO `tbl_permisos` VALUES ('61', '32');
INSERT INTO `tbl_permisos` VALUES ('62', '32');
INSERT INTO `tbl_permisos` VALUES ('67', '32');
INSERT INTO `tbl_permisos` VALUES ('68', '32');
INSERT INTO `tbl_permisos` VALUES ('66', '32');
INSERT INTO `tbl_permisos` VALUES ('64', '32');
INSERT INTO `tbl_permisos` VALUES ('75', '32');

-- ----------------------------
-- Table structure for tbl_recepcion_forma
-- ----------------------------
DROP TABLE IF EXISTS `tbl_recepcion_forma`;
CREATE TABLE `tbl_recepcion_forma` (
  `Pk_Id_Recepcion_Forma` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la forma de recepción',
  `Nombre` varchar(75) NOT NULL COMMENT 'Forma de recepción de la solicitud',
  `Abreviatura` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Recepcion_Forma`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_recepcion_forma
-- ----------------------------
INSERT INTO `tbl_recepcion_forma` VALUES ('1', 'Telefónica', 'T');
INSERT INTO `tbl_recepcion_forma` VALUES ('2', 'Correo electrónico', 'CE');
INSERT INTO `tbl_recepcion_forma` VALUES ('3', 'Personal', 'P');
INSERT INTO `tbl_recepcion_forma` VALUES ('4', 'Buzón', 'B');
INSERT INTO `tbl_recepcion_forma` VALUES ('5', 'Correspondencia Física', 'CO');

-- ----------------------------
-- Table structure for tbl_recepcion_lugares
-- ----------------------------
DROP TABLE IF EXISTS `tbl_recepcion_lugares`;
CREATE TABLE `tbl_recepcion_lugares` (
  `Pk_Id_Recepcion_Lugar` int(11) NOT NULL AUTO_INCREMENT,
  `Abreviatura` varchar(3) DEFAULT NULL,
  `Nombre` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Recepcion_Lugar`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_recepcion_lugares
-- ----------------------------
INSERT INTO `tbl_recepcion_lugares` VALUES ('1', 'OF1', 'Oficina Fija 1');
INSERT INTO `tbl_recepcion_lugares` VALUES ('2', 'OF2', 'Oficina Fija 2');
INSERT INTO `tbl_recepcion_lugares` VALUES ('4', 'OM1', 'Oficina Móvil 1');
INSERT INTO `tbl_recepcion_lugares` VALUES ('5', 'OM2', 'Oficina Móvil 2');

-- ----------------------------
-- Table structure for tbl_sectores
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sectores`;
CREATE TABLE `tbl_sectores` (
  `Pk_Id_Sector` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del barrio o vereda',
  `Nombre` varchar(75) NOT NULL COMMENT 'Nombre del sector',
  `Fk_Id_Municipio` int(11) NOT NULL COMMENT 'Identificador foráneo del municipio al cual pertenece el sector',
  `Fk_Id_Sector_Tipo` int(11) NOT NULL COMMENT 'Identificador foráneo del tipo de sector',
  PRIMARY KEY (`Pk_Id_Sector`),
  KEY `Fk_Id_Municipio` (`Fk_Id_Municipio`),
  KEY `Fk_Id_Sector_Tipo` (`Fk_Id_Sector_Tipo`),
  CONSTRAINT `tbl_sectores_ibfk_1` FOREIGN KEY (`Fk_Id_Municipio`) REFERENCES `tbl_municipios` (`Pk_Id_Municipio`),
  CONSTRAINT `tbl_sectores_ibfk_2` FOREIGN KEY (`Fk_Id_Sector_Tipo`) REFERENCES `tbl_sectores_tipos` (`Pk_Id_Sector_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_sectores
-- ----------------------------
INSERT INTO `tbl_sectores` VALUES ('1', 'Sabanalarga', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('2', 'La Unión', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('3', 'El Carmelo', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('4', 'La China', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('5', 'Cuartas', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('6', 'El Tambo', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('7', 'Cerezales', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('8', 'Granizal', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('9', 'Tierradentro', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('10', 'Primavera', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('11', 'Hatoviejo', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('12', 'Potrerito', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('13', 'La Palma', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('14', 'Guasimalito', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('15', 'Ovejas', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('16', 'San Félix', '1', '2');
INSERT INTO `tbl_sectores` VALUES ('17', 'San José Obrero', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('18', 'La Estación', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('19', 'Calle Vieja', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('20', 'Fontidueño', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('21', 'Puerto Bello (Puerto Seco)', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('22', 'El Pinar', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('23', 'Espíritu Santo', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('24', 'Prado', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('25', 'Manchester', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('26', 'Los Espejos', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('27', 'Camacol', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('28', 'Quitasol', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('29', 'San Judas', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('30', 'El Mirador', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('31', 'La Maruchenga', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('32', 'Trapiche', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('33', 'La Obra Dos Mil', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('34', 'Machado', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('35', 'Nuevo', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('36', 'La Florida', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('37', 'Madera', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('38', 'Girasoles', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('39', 'Gran Avenida', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('40', 'Cabañas', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('41', 'Cabañitas', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('42', 'Terranova', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('43', 'San Simón', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('44', 'Molinares', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('45', 'Villas de Occidente', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('46', 'Navarra', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('47', 'París', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('48', 'La Madera', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('49', 'Santa Ana', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('50', 'Suárez', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('51', 'La Cumbre', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('52', 'Bellavsita', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('53', 'Mirador y Altos de Niquia', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('54', 'Niquía', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('55', 'Fontidueño', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('56', 'Acevedo', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('57', 'El Recreo', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('58', 'Yarumito', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('59', 'Las Vegas', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('60', 'El Porvenir', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('61', 'Piedras Blancas', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('62', 'Barrio Obrero', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('63', 'Miraflores', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('64', 'Cristo Rey', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('65', 'San Francisco', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('66', 'La Azulita', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('67', 'El Pedregal', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('68', 'La Asunción', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('69', 'Fátima', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('70', 'El Mojón', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('71', 'El Tablazo-Canoas', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('72', 'María', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('73', 'La Pedrera', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('74', 'Villanueva', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('75', 'El Remanso', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('76', 'La Misericordia', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('77', 'Machado', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('78', 'San Juán', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('79', 'El Centro', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('80', 'Quebrada Arriba', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('81', 'Sabaneta', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('82', 'Peñolcito', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('83', 'El Cabuyal', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('84', 'Granizal', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('85', 'El Convento', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('86', 'Fontidueño', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('87', 'Montañita', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('88', 'El Salado', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('89', 'Alvarado', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('90', 'Ancón', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('91', 'Zarzal Curasao', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('92', 'Zarzal la Luz', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('93', 'El Noral', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('94', 'La Veta', '2', '2');
INSERT INTO `tbl_sectores` VALUES ('95', 'Villa Roca Norte', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('96', 'Villa Roca', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('97', 'Pamplemusa', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('98', 'La Aldea', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('99', 'El Paraiso', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('100', 'Los Uribes', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('101', 'Santa Ana', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('102', 'Piedra Luna', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('103', 'Manantiales', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('104', 'Nueva Granada', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('105', 'Mazarello', '2', '3');
INSERT INTO `tbl_sectores` VALUES ('106', 'Girardota la Nueva', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('107', 'Montecarlo', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('108', 'La Ceiba', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('109', 'Aurelio Mejía', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('110', 'La Florida', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('111', 'Juan XXIII', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('112', 'El Llano', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('113', 'San José', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('114', 'El Paraíso', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('115', 'Santa Ana', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('116', 'Nuevo Horizonte', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('117', 'El Naranjal', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('118', 'El Salado', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('119', 'Guayacanes', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('120', 'Los Guaduales', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('121', 'La Ferrería', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('122', 'Palmas del Llano', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('123', 'Portachuelo', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('124', 'La Holanda Parte Alta', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('125', 'La Holanda Parte Baja', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('126', 'San Esteban', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('127', 'La Mata', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('128', 'La Matica, parte alta', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('129', 'La Matica, parte baja', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('130', 'El Socorro', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('131', 'Potrerito', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('132', 'La Palma', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('133', 'Mercedes Abrego', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('134', 'San Andrés', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('135', 'El Paraíso', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('136', 'El Totumo', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('137', 'Loma de los Ochoa', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('138', 'Mangarriba', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('139', 'Las Cuchillas', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('140', 'Juan Cojo', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('141', 'El Barro', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('142', 'El Cano', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('143', 'El Palmar', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('144', 'El Yarumo', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('145', 'San Diego', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('146', 'La Meseta', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('147', 'Jamundí', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('148', 'Ecenillos', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('149', 'La Calera', '3', '2');
INSERT INTO `tbl_sectores` VALUES ('150', 'Bicentenaria', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('151', 'Buenos Aires Parte Alta', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('152', 'Buenos Aires Parte Baja', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('153', 'Cecilia Caballero de López', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('154', 'El Porvenir', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('155', 'El Progreso', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('156', 'La Esmeralda', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('157', 'Pepe Sierra 1', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('158', 'Pepe Sierra 2', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('159', 'De Jesús', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('160', '30 de Mayo', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('161', 'Villa Roca', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('162', 'Guayabal', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('163', 'Los Bucaros', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('164', 'Santa Monica', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('165', 'Aguas Calientes', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('166', 'Aguas Claras', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('167', 'Altamira', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('168', 'Buga', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('169', 'Cestillal', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('170', 'Chapa parte Alta', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('171', 'Chapa parte Baja', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('172', 'Chorrondo', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('173', 'Corrientes', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('174', 'Dos Quebradas', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('175', 'El Aguacate', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('176', 'El Chorro', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('177', 'El Cortado', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('178', 'El Guayabo', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('179', 'El Hatillo', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('180', 'El Hoyo', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('181', 'El Paraiso', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('182', 'El Salado', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('183', 'El Tigre', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('184', 'El Viento', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('185', 'FiloVerde', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('186', 'Graciano', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('187', 'Isaza', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('188', 'La Aguada', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('189', 'La Calda', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('190', 'La Cejita', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('191', 'La Cuesta', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('192', 'La Ese', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('193', 'La Gómez', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('194', 'La Herradura', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('195', 'La Lomita 1', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('196', 'La lomita 2', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('197', 'La Montañita', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('198', 'La Playa', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('199', 'La Primavera', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('200', 'La Quiebra', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('201', 'La Tolda', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('202', 'Lajas', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('203', 'Las Peñas', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('204', 'Las Victorias', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('205', 'Matasano', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('206', 'Mocorongo', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('207', 'Monteloro', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('208', 'Pachohondo', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('209', 'Pantanillo', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('210', 'Platanito', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('211', 'Popalito', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('212', 'Potrerito', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('213', 'Quintero', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('214', 'San Eugenio', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('215', 'Tablazo Hatillo', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('216', 'Tablazo Popalito', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('217', 'Tamborcito', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('218', 'Vallecitos', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('219', 'Ventanas', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('220', 'Volantin', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('221', 'Yarumito', '4', '2');
INSERT INTO `tbl_sectores` VALUES ('222', 'Popalito', '4', '3');
INSERT INTO `tbl_sectores` VALUES ('223', 'Yarumito', '4', '3');
INSERT INTO `tbl_sectores` VALUES ('224', 'Mercurio', '4', '3');
INSERT INTO `tbl_sectores` VALUES ('225', 'Marianito', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('226', 'San Antonio', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('227', '6 de Junio', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('228', 'Villanueva', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('229', 'Villa maria', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('230', 'Campo Alegre', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('231', 'Totumo', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('232', 'Fatima', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('233', 'Centro', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('234', 'Cementerio', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('235', 'Los Almendros', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('236', 'Angelina Arteaga', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('237', 'El Placer', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('238', 'Eduardo Rendon', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('239', 'Nuevo', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('240', 'Luis López de Mesa', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('241', 'Calle Abajo', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('242', 'Portal de San Antonio', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('243', 'Prados del Norte', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('244', 'Nuevo Horizonte', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('245', 'Arenales', '5', '2');
INSERT INTO `tbl_sectores` VALUES ('246', 'Colón', '5', '2');
INSERT INTO `tbl_sectores` VALUES ('247', 'Iborra', '5', '2');
INSERT INTO `tbl_sectores` VALUES ('248', 'La Frisolera', '5', '2');
INSERT INTO `tbl_sectores` VALUES ('249', 'La Montera', '5', '2');
INSERT INTO `tbl_sectores` VALUES ('250', 'Las Ánimas', '5', '2');
INSERT INTO `tbl_sectores` VALUES ('251', 'Riogrande', '5', '2');
INSERT INTO `tbl_sectores` VALUES ('252', 'Santa Ana', '5', '2');
INSERT INTO `tbl_sectores` VALUES ('253', 'Quebrada Arriba', '5', '2');
INSERT INTO `tbl_sectores` VALUES ('254', 'Cll Miraflores - El Alto', '6', '1');
INSERT INTO `tbl_sectores` VALUES ('255', 'Cll Restrepo Uribe - Hospital', '6', '1');
INSERT INTO `tbl_sectores` VALUES ('256', 'Cll San Pedro - El Chispero', '6', '1');
INSERT INTO `tbl_sectores` VALUES ('257', 'Cra San Miguel - El Carretero', '6', '1');
INSERT INTO `tbl_sectores` VALUES ('258', 'Laderas - Armero', '6', '1');
INSERT INTO `tbl_sectores` VALUES ('259', 'Botero', '6', '1');
INSERT INTO `tbl_sectores` VALUES ('260', 'Porce', '6', '1');
INSERT INTO `tbl_sectores` VALUES ('261', 'Santiago', '6', '1');
INSERT INTO `tbl_sectores` VALUES ('262', 'Versalles', '6', '1');
INSERT INTO `tbl_sectores` VALUES ('263', 'Alto Brasil', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('264', 'Brasil -Quebradona', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('265', 'Cantayús alto', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('266', 'Cantayús Bajo', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('267', 'Cubiletes', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('268', 'Dolores', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('269', 'El Ánime', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('270', 'El Balsal', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('271', 'El Chilcal', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('272', 'El Combo', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('273', 'El Limòn', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('274', 'El Rayo', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('275', 'El Rosario', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('276', 'El saltillo', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('277', 'Faldas del Nus', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('278', 'Guadualejo', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('279', 'La Aldea', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('280', 'La Comba', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('281', 'La Delgadita', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('282', 'La Eme', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('283', 'La Esperanza', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('284', 'La Palma', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('285', 'La Primavera', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('286', 'La Quiebra', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('287', 'Las Animas', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('288', 'Las Beatrices', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('289', 'Los Naranjos', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('290', 'Los Planes', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('291', 'Montebello', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('292', 'Nusito', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('293', 'Pachondo', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('294', 'Peñas', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('295', 'Piedra Gorda', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('296', 'Piedras Blancas', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('297', 'Playas del Nare', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('298', 'Quebradona', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('299', 'Raudal', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('300', 'San Francisco', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('301', 'San Javier', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('302', 'San Luis', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('303', 'San Pedro', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('304', 'Santa Gertrudis', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('305', 'Santa Rita', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('306', 'Sofía', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('307', 'Vainillal', '6', '2');
INSERT INTO `tbl_sectores` VALUES ('308', 'Barrio Nuevo', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('309', 'Catacas', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('310', 'Cera Larga', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('311', 'El Algarrobo', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('312', 'El Centro', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('313', 'El Ciprés', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('314', 'El Hospital', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('315', 'Florencia', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('316', 'La Clavellina', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('317', 'La Cristalina', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('318', 'La Esmeralda', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('319', 'La Parranda', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('320', 'La Vega', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('321', 'La Ye', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('322', 'Punto Rojo', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('323', 'San Germán', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('324', 'Villa Laureles', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('325', 'Fátima', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('326', 'Bella Vista', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('327', 'Campo Alegre', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('328', 'Cruces', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('329', 'El Brasil', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('330', 'El Cadillo', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('331', 'El Dos', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('332', 'El Limón', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('333', 'El Silencio', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('334', 'Palmira', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('335', 'Sabanalarga', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('336', 'San Victorino', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('337', 'Santa Ana', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('338', 'Santa Elena', '7', '2');
INSERT INTO `tbl_sectores` VALUES ('339', 'Medellín', '8', '1');
INSERT INTO `tbl_sectores` VALUES ('340', 'La Gabriela', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('342', '--No especificado--', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('343', '--No especificado--', '2', '1');
INSERT INTO `tbl_sectores` VALUES ('344', '--No especificado--', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('345', '--No especificado--', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('346', '--No especificado--', '5', '1');
INSERT INTO `tbl_sectores` VALUES ('347', '--No especificado--', '6', '1');
INSERT INTO `tbl_sectores` VALUES ('348', '--No especificado--', '7', '1');
INSERT INTO `tbl_sectores` VALUES ('349', '--No especificado--', '8', '1');
INSERT INTO `tbl_sectores` VALUES ('350', '--No especificado--', '9', '1');
INSERT INTO `tbl_sectores` VALUES ('351', 'Portachuelos', '3', '1');
INSERT INTO `tbl_sectores` VALUES ('358', 'Playa Rica', '1', '1');
INSERT INTO `tbl_sectores` VALUES ('361', 'El Eco', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('362', 'Los Ángeles', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('363', 'Robles', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('364', 'La Sierra', '4', '1');
INSERT INTO `tbl_sectores` VALUES ('369', 'San José del NUS', '9', '4');
INSERT INTO `tbl_sectores` VALUES ('370', '--No especificado--', '10', '1');
INSERT INTO `tbl_sectores` VALUES ('372', 'Cabildo', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('377', 'Barcino', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('378', 'Candelaria', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('379', 'Chorro Claro', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('380', 'Corocito', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('381', 'Efe Gómez', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('382', 'El Brasil', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('383', 'El Carmen', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('384', 'El Diamante', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('385', 'El Diluvio', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('386', 'El Iris', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('387', 'El Píramo', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('388', 'El Porvenir', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('389', 'El Táchira', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('390', 'El Vesubio', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('391', 'Encarnaciones', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('392', 'Frailes', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('393', 'Guacas Abajo', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('394', 'Guacas Arriba', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('395', 'Jardín', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('396', 'La Bella', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('397', 'La Ceiba', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('398', 'La Chinca', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('399', 'La Floresta', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('400', 'La Florida', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('401', 'La Gómez', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('402', 'La Guzmana', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('403', 'La Inmaculada', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('404', 'La Jota', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('405', 'La Linda', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('406', 'La María', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('407', 'La Mora', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('408', 'La Pureza', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('409', 'La Trinidad', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('410', 'Manizales', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('411', 'Marbella', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('412', 'Montemar', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('413', 'Mulatal', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('414', 'Nusito', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('415', 'Palmas', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('416', 'Patio Bonito', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('417', 'Peñas Azules', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('418', 'Playa Rica', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('419', 'Quiebrahonda', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('420', 'San Antonio', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('421', 'San Javier', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('422', 'San Joaquín', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('423', 'San José del Nare', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('424', 'San Juan', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('425', 'San Matías', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('426', 'San Pablo', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('427', 'Santa Barbara', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('428', 'Santa Isabel', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('429', 'Santa Teresa (A)', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('430', 'Santa Teresa (B)', '9', '2');
INSERT INTO `tbl_sectores` VALUES ('433', 'Alto Dolores – Betulia', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('434', 'Brisas del Nus', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('435', 'Corrales – La Cuchilla', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('436', 'El Ingenio', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('437', 'Guardasol', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('438', 'Tres Piedras', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('439', 'La Gazapera', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('440', 'La Mariela', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('441', 'La Paloma-Santa Cruz', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('442', 'La Pureza', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('443', 'La Unión', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('444', 'Las Brisas', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('445', 'San Antonio', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('446', 'San Cipriano', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('447', 'San Ignacio', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('448', 'San Laureano', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('449', 'San Lucas', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('450', 'San Luis', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('451', 'San Pedro', '10', '2');
INSERT INTO `tbl_sectores` VALUES ('452', 'Santa María', '10', '2');

-- ----------------------------
-- Table structure for tbl_sectores_tipos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sectores_tipos`;
CREATE TABLE `tbl_sectores_tipos` (
  `Pk_Id_Sector_Tipo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del tipo de sector',
  `Nombre` varchar(75) NOT NULL COMMENT 'Nombre del tipo del sector',
  PRIMARY KEY (`Pk_Id_Sector_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_sectores_tipos
-- ----------------------------
INSERT INTO `tbl_sectores_tipos` VALUES ('1', 'Barrio');
INSERT INTO `tbl_sectores_tipos` VALUES ('2', 'Vereda');
INSERT INTO `tbl_sectores_tipos` VALUES ('3', 'Parcelación');
INSERT INTO `tbl_sectores_tipos` VALUES ('4', 'Corregimiento');

-- ----------------------------
-- Table structure for tbl_solicitud_accion
-- ----------------------------
DROP TABLE IF EXISTS `tbl_solicitud_accion`;
CREATE TABLE `tbl_solicitud_accion` (
  `Pk_Id_Solicitud_Accion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la acción emprendida',
  `Nombre` varchar(75) NOT NULL COMMENT 'Acción emprendida para la solicitud',
  PRIMARY KEY (`Pk_Id_Solicitud_Accion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_solicitud_accion
-- ----------------------------
INSERT INTO `tbl_solicitud_accion` VALUES ('1', 'Visita');
INSERT INTO `tbl_solicitud_accion` VALUES ('2', 'Revisión acta de vecindario');
INSERT INTO `tbl_solicitud_accion` VALUES ('3', 'Remisión');
INSERT INTO `tbl_solicitud_accion` VALUES ('4', 'Otros');

-- ----------------------------
-- Table structure for tbl_solicitud_estados
-- ----------------------------
DROP TABLE IF EXISTS `tbl_solicitud_estados`;
CREATE TABLE `tbl_solicitud_estados` (
  `Pk_Id_Solicitud_Estado` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del estado de la solicitud',
  `Nombre` varchar(75) NOT NULL COMMENT 'Estado de la solicitud',
  PRIMARY KEY (`Pk_Id_Solicitud_Estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_solicitud_estados
-- ----------------------------
INSERT INTO `tbl_solicitud_estados` VALUES ('1', 'En trámite');
INSERT INTO `tbl_solicitud_estados` VALUES ('2', 'Resueltas');

-- ----------------------------
-- Table structure for tbl_solicitud_tipos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_solicitud_tipos`;
CREATE TABLE `tbl_solicitud_tipos` (
  `Pk_Id_Solicitud_Tipo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del tipo de solicitud',
  `Nombre` varchar(75) NOT NULL COMMENT 'Nombre del tipo de la solicitud',
  `Abreviatura` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`Pk_Id_Solicitud_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_solicitud_tipos
-- ----------------------------
INSERT INTO `tbl_solicitud_tipos` VALUES ('1', 'Queja', 'Q');
INSERT INTO `tbl_solicitud_tipos` VALUES ('2', 'Reclamo', 'R');
INSERT INTO `tbl_solicitud_tipos` VALUES ('3', 'Solicitud', 'S');
INSERT INTO `tbl_solicitud_tipos` VALUES ('5', 'Petición', 'P');
INSERT INTO `tbl_solicitud_tipos` VALUES ('6', 'Consulta', 'C');

-- ----------------------------
-- Table structure for tbl_temas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_temas`;
CREATE TABLE `tbl_temas` (
  `Pk_Id_Tema` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del tema del cual trata la solicitud',
  `Nombre` varchar(75) NOT NULL COMMENT 'Tema de la solicitud',
  PRIMARY KEY (`Pk_Id_Tema`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_temas
-- ----------------------------
INSERT INTO `tbl_temas` VALUES ('1', 'Acceso domiciliario');
INSERT INTO `tbl_temas` VALUES ('2', 'Acceso local comercial');
INSERT INTO `tbl_temas` VALUES ('3', 'Acceso sectorial');
INSERT INTO `tbl_temas` VALUES ('4', 'Acceso veredal');
INSERT INTO `tbl_temas` VALUES ('5', 'Accidente');
INSERT INTO `tbl_temas` VALUES ('6', 'Acta de vecindad');
INSERT INTO `tbl_temas` VALUES ('7', 'Actas de entorno');
INSERT INTO `tbl_temas` VALUES ('8', 'Acueducto');
INSERT INTO `tbl_temas` VALUES ('9', 'Afectación predial');
INSERT INTO `tbl_temas` VALUES ('10', 'Alumbrado público');
INSERT INTO `tbl_temas` VALUES ('11', 'Bienestar laboral');
INSERT INTO `tbl_temas` VALUES ('12', 'Cerco');
INSERT INTO `tbl_temas` VALUES ('13', 'Cierre de la Vía');
INSERT INTO `tbl_temas` VALUES ('14', 'Compensación Forestal');
INSERT INTO `tbl_temas` VALUES ('15', 'Compra de Predios');
INSERT INTO `tbl_temas` VALUES ('16', 'Concepto técnico');
INSERT INTO `tbl_temas` VALUES ('17', 'Conducciones de agua');
INSERT INTO `tbl_temas` VALUES ('18', 'Construcción nuevo carril');
INSERT INTO `tbl_temas` VALUES ('19', 'Contaminación de agua');
INSERT INTO `tbl_temas` VALUES ('20', 'Continuidad construcción Puente peatonal ');
INSERT INTO `tbl_temas` VALUES ('21', 'Copia Planos Barbosa-Pradera');
INSERT INTO `tbl_temas` VALUES ('22', 'Cotización pavimentación con Asfalto');
INSERT INTO `tbl_temas` VALUES ('23', 'Daño a Portón');
INSERT INTO `tbl_temas` VALUES ('24', 'Daño a terceros');
INSERT INTO `tbl_temas` VALUES ('25', 'Datos del Concedente');
INSERT INTO `tbl_temas` VALUES ('26', 'Demolicion vivienda');
INSERT INTO `tbl_temas` VALUES ('27', 'Donación');
INSERT INTO `tbl_temas` VALUES ('28', 'Engramaje');
INSERT INTO `tbl_temas` VALUES ('29', 'Entrevista');
INSERT INTO `tbl_temas` VALUES ('30', 'Estado de la vía');
INSERT INTO `tbl_temas` VALUES ('31', 'Falla en Puente');
INSERT INTO `tbl_temas` VALUES ('32', 'Fisuras y/o grietas');
INSERT INTO `tbl_temas` VALUES ('33', 'Humedad');
INSERT INTO `tbl_temas` VALUES ('34', 'Hundimiento de vivienda');
INSERT INTO `tbl_temas` VALUES ('35', 'Iluminacion y otros');
INSERT INTO `tbl_temas` VALUES ('36', 'Impuesto Predial');
INSERT INTO `tbl_temas` VALUES ('37', 'Inconsistencia en pagos');
INSERT INTO `tbl_temas` VALUES ('38', 'Informacion sobre el Proyecto');
INSERT INTO `tbl_temas` VALUES ('39', 'Inicio de obra');
INSERT INTO `tbl_temas` VALUES ('40', 'Inquietudes Técnicas');
INSERT INTO `tbl_temas` VALUES ('41', 'Inseguridad en los puentes');
INSERT INTO `tbl_temas` VALUES ('42', 'Instalación Aviso ');
INSERT INTO `tbl_temas` VALUES ('43', 'Inundación');
INSERT INTO `tbl_temas` VALUES ('44', 'Invasión en zonas de retiro');
INSERT INTO `tbl_temas` VALUES ('45', 'Invasión predio PDVAN');
INSERT INTO `tbl_temas` VALUES ('46', 'Limpieza de vía');
INSERT INTO `tbl_temas` VALUES ('47', 'Manejo pozos y/o nacimiento ');
INSERT INTO `tbl_temas` VALUES ('48', 'Manejo y control taludes');
INSERT INTO `tbl_temas` VALUES ('49', 'Material particulado');
INSERT INTO `tbl_temas` VALUES ('50', 'Material reciclable');
INSERT INTO `tbl_temas` VALUES ('51', 'Material reutilizable de demoliciones');
INSERT INTO `tbl_temas` VALUES ('52', 'Material vegetal');
INSERT INTO `tbl_temas` VALUES ('53', 'Muro de contención');
INSERT INTO `tbl_temas` VALUES ('54', 'Negociación de predios');
INSERT INTO `tbl_temas` VALUES ('55', 'No pago Laboral');
INSERT INTO `tbl_temas` VALUES ('56', 'Obra de drenaje');
INSERT INTO `tbl_temas` VALUES ('57', 'Obra en construccion');
INSERT INTO `tbl_temas` VALUES ('58', 'Obras Adicionales');
INSERT INTO `tbl_temas` VALUES ('59', 'Oficio demolición');
INSERT INTO `tbl_temas` VALUES ('60', 'Otros');
INSERT INTO `tbl_temas` VALUES ('61', 'Pago a Terceros');
INSERT INTO `tbl_temas` VALUES ('62', 'Pago arriendo ');
INSERT INTO `tbl_temas` VALUES ('63', 'Pago de Impuesto');
INSERT INTO `tbl_temas` VALUES ('64', 'Pago Liquidación');
INSERT INTO `tbl_temas` VALUES ('65', 'Paz y salvo Valorización');
INSERT INTO `tbl_temas` VALUES ('66', 'Peaje');
INSERT INTO `tbl_temas` VALUES ('67', 'Pendientes por parte del Proyecto');
INSERT INTO `tbl_temas` VALUES ('68', 'Permiso ');
INSERT INTO `tbl_temas` VALUES ('69', 'Posterior al acta de vecindad');
INSERT INTO `tbl_temas` VALUES ('70', 'Predio para depósito de materiales');
INSERT INTO `tbl_temas` VALUES ('71', 'Presentación Socialización');
INSERT INTO `tbl_temas` VALUES ('72', 'Reconocimiento Actividad Comercial');
INSERT INTO `tbl_temas` VALUES ('73', 'Relación trabajador – comunidad');
INSERT INTO `tbl_temas` VALUES ('74', 'Remoción de árbol');
INSERT INTO `tbl_temas` VALUES ('75', 'Represamiento de aguas');
INSERT INTO `tbl_temas` VALUES ('76', 'Resalto en la vía');
INSERT INTO `tbl_temas` VALUES ('77', 'Respuesta a Radicado');
INSERT INTO `tbl_temas` VALUES ('78', 'Retiro Bordillos');
INSERT INTO `tbl_temas` VALUES ('79', 'Retorno o glorieta');
INSERT INTO `tbl_temas` VALUES ('80', 'Reubicación');
INSERT INTO `tbl_temas` VALUES ('81', 'Rocería y limpieza');
INSERT INTO `tbl_temas` VALUES ('82', 'Señalización en la vía');
INSERT INTO `tbl_temas` VALUES ('83', 'Señalización Horizontal');
INSERT INTO `tbl_temas` VALUES ('84', 'Señalización vertical');
INSERT INTO `tbl_temas` VALUES ('85', 'Servicio grua ');
INSERT INTO `tbl_temas` VALUES ('86', 'Socializaciones');
INSERT INTO `tbl_temas` VALUES ('87', 'Solicitud laboral');
INSERT INTO `tbl_temas` VALUES ('88', 'Suministro de agua');
INSERT INTO `tbl_temas` VALUES ('89', 'Taches en la vía');
INSERT INTO `tbl_temas` VALUES ('90', 'Tala de árboles');
INSERT INTO `tbl_temas` VALUES ('91', 'Tarjeta prepago');
INSERT INTO `tbl_temas` VALUES ('92', 'Terminación de muro');
INSERT INTO `tbl_temas` VALUES ('93', 'Terminación muro de contención');
INSERT INTO `tbl_temas` VALUES ('94', 'Terminación Puente');
INSERT INTO `tbl_temas` VALUES ('95', 'Terminación Tramo Hatillo-Barbosa');
INSERT INTO `tbl_temas` VALUES ('96', 'Tránsito de caballos en la vía');
INSERT INTO `tbl_temas` VALUES ('97', 'Transporte Urbano');
INSERT INTO `tbl_temas` VALUES ('98', 'Trazado vial');
INSERT INTO `tbl_temas` VALUES ('99', 'Valla Publicitaria');
INSERT INTO `tbl_temas` VALUES ('100', 'Valorización');
INSERT INTO `tbl_temas` VALUES ('101', 'Vigilancia');
INSERT INTO `tbl_temas` VALUES ('102', 'Visibilidad en la vía');
INSERT INTO `tbl_temas` VALUES ('103', 'Voladura de rocas');
INSERT INTO `tbl_temas` VALUES ('104', 'Ingreso sin permiso a un predio');
INSERT INTO `tbl_temas` VALUES ('105', 'QuickPass');
INSERT INTO `tbl_temas` VALUES ('106', 'Uso de vía concesionada');

-- ----------------------------
-- Table structure for tbl_tramos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tramos`;
CREATE TABLE `tbl_tramos` (
  `Pk_Id_Tramo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del tramo',
  `Nombre` varchar(75) NOT NULL COMMENT 'Nombre del tramo',
  PRIMARY KEY (`Pk_Id_Tramo`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tramos
-- ----------------------------
INSERT INTO `tbl_tramos` VALUES ('17', 'UF5 Cisneros - Alto de Dolores');
INSERT INTO `tbl_tramos` VALUES ('18', 'Oficina - Medellín');
INSERT INTO `tbl_tramos` VALUES ('19', 'Oficina - Cisneros');
INSERT INTO `tbl_tramos` VALUES ('20', 'UF1 - Pradera - Porcesito');
INSERT INTO `tbl_tramos` VALUES ('21', 'UF2 - Porcesito - Santiago');
INSERT INTO `tbl_tramos` VALUES ('22', 'UF3 - Túneles');
INSERT INTO `tbl_tramos` VALUES ('23', 'UF4 - Variante Cisneros');
INSERT INTO `tbl_tramos` VALUES ('24', 'UF6 - Hatovial');
