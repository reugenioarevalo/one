/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : ci_base

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 25/09/2020 22:12:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for entrenamientos
-- ----------------------------
DROP TABLE IF EXISTS `entrenamientos`;
CREATE TABLE `entrenamientos`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsuario` int(11) NOT NULL,
  `FechaNac` datetime(0) NULL DEFAULT NULL,
  `Actividad` int(1) NULL DEFAULT NULL,
  `Calorias` float(5, 2) NULL DEFAULT NULL,
  `Tiempo` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of entrenamientos
-- ----------------------------
INSERT INTO `entrenamientos` VALUES (1, 1000, '2019-07-05 00:00:00', 1, 233.00, 277);
INSERT INTO `entrenamientos` VALUES (2, 1000, '2019-07-28 00:00:00', 2, 140.00, 128);
INSERT INTO `entrenamientos` VALUES (3, 1000, '2019-09-03 00:00:00', 1, 695.00, 277);
INSERT INTO `entrenamientos` VALUES (4, 2000, '2020-02-24 00:00:00', 2, 439.00, 111);
INSERT INTO `entrenamientos` VALUES (5, 2000, '2019-09-23 00:00:00', 2, 913.00, 224);
INSERT INTO `entrenamientos` VALUES (6, 4000, '2019-09-17 00:00:00', 3, 566.00, 140);
INSERT INTO `entrenamientos` VALUES (7, 4000, '2019-05-20 00:00:00', 3, 956.00, 35);
INSERT INTO `entrenamientos` VALUES (8, 4000, '2019-07-29 00:00:00', 4, 741.00, 254);
INSERT INTO `entrenamientos` VALUES (9, 4000, '2019-07-19 00:00:00', 4, 900.00, 142);
INSERT INTO `entrenamientos` VALUES (10, 4000, '2019-08-24 00:00:00', 5, 885.00, 291);
INSERT INTO `entrenamientos` VALUES (11, 5000, '2019-10-15 00:00:00', 1, 832.00, 262);
INSERT INTO `entrenamientos` VALUES (12, 5000, '2020-03-09 00:00:00', 1, 855.00, 240);
INSERT INTO `entrenamientos` VALUES (13, 5000, '2020-05-13 00:00:00', 2, 948.00, 85);
INSERT INTO `entrenamientos` VALUES (14, 6000, '2019-11-14 00:00:00', 1, 983.00, 172);
INSERT INTO `entrenamientos` VALUES (15, 6000, '2020-02-25 00:00:00', 2, 458.00, 161);

-- ----------------------------
-- Table structure for grupos
-- ----------------------------
DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grupos
-- ----------------------------
INSERT INTO `grupos` VALUES (1, 'admin', 'Administrator');
INSERT INTO `grupos` VALUES (2, 'members', 'General User');

-- ----------------------------
-- Table structure for login_errores
-- ----------------------------
DROP TABLE IF EXISTS `login_errores`;
CREATE TABLE `login_errores`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario`  (
  `Id` int(11) NOT NULL,
  `Nombres` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FechaNac` datetime(0) NULL DEFAULT NULL,
  `Altura` float(5, 2) NULL DEFAULT NULL,
  `Peso` float(5, 2) NULL DEFAULT NULL,
  `PerfAct` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `AptoMedico` int(1) NULL DEFAULT NULL,
  `Estado` int(1) NULL DEFAULT 1,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES (1000, 'Hugo Fabian', 'Gomez', '1978-06-04 00:00:00', 1.88, 87.00, 'A', 1, 1);
INSERT INTO `usuario` VALUES (2000, 'Maria Elena', 'Srebernich', '1986-10-10 00:00:00', 1.68, 48.00, 'B', 1, 1);
INSERT INTO `usuario` VALUES (3000, 'Angel', 'Simón', '1986-10-02 00:00:00', 1.69, 79.00, 'A', 0, 1);
INSERT INTO `usuario` VALUES (4000, 'Brian Esteban', 'Lara Campos', '2000-01-01 00:00:00', 2.15, 75.00, 'C', 1, 1);
INSERT INTO `usuario` VALUES (5000, 'Maria Julieta', 'Chapur', '1997-05-07 00:00:00', 1.57, 47.00, 'B', 0, 1);
INSERT INTO `usuario` VALUES (6000, 'Isidoro', 'Arostegui', '1962-03-04 00:00:00', 1.50, 80.00, 'A', 0, 1);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `activation_selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activation_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED NULL DEFAULT NULL,
  `remember_selector` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remember_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED NULL DEFAULT NULL,
  `active` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uc_email`(`email`) USING BTREE,
  UNIQUE INDEX `uc_activation_selector`(`activation_selector`) USING BTREE,
  UNIQUE INDEX `uc_forgotten_password_selector`(`forgotten_password_selector`) USING BTREE,
  UNIQUE INDEX `uc_remember_selector`(`remember_selector`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, '127.0.0.1', 'administrator', '$2y$08$200Z6ZZbp3RAEXoaWcMA6uJOFicwNZaqk4oDhqTUiFXFe63MG.Daa', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1268889823, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- ----------------------------
-- Table structure for usuarios_grupos
-- ----------------------------
DROP TABLE IF EXISTS `usuarios_grupos`;
CREATE TABLE `usuarios_grupos`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uc_usuarios_grupos`(`user_id`, `group_id`) USING BTREE,
  INDEX `fk_usuarios_grupos_usuarios1_idx`(`user_id`) USING BTREE,
  INDEX `fk_usuarios_grupos_grupos1_idx`(`group_id`) USING BTREE,
  CONSTRAINT `fk_usuarios_grupos_grupos1` FOREIGN KEY (`group_id`) REFERENCES `grupos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_grupos_usuarios1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios_grupos
-- ----------------------------
INSERT INTO `usuarios_grupos` VALUES (1, 1, 1);
INSERT INTO `usuarios_grupos` VALUES (2, 1, 2);

SET FOREIGN_KEY_CHECKS = 1;
