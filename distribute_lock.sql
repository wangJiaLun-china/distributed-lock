/*
Navicat MySQL Data Transfer

Source Server         : 腾讯云
Source Server Version : 100328
Source Host           : 124.222.101.146:3306
Source Database       : distribute_lock

Target Server Type    : MYSQL
Target Server Version : 100328
File Encoding         : 65001

Date: 2022-02-11 16:51:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `receiver_name` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `receiver_mobile` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `order_amount` decimal(10,0) DEFAULT NULL,
  `create_time` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT '',
  `create_user` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `update_time` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT '',
  `update_user` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '1', 'xxx', '13311112222', '100', '15:22:19', 'xxx', '15:22:19', 'xxx');
INSERT INTO `order` VALUES ('2', '1', 'xxx', '13311112222', '100', '15:22:19', 'xxx', '15:22:19', 'xxx');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `purchase_num` int(11) DEFAULT NULL,
  `create_time` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT '',
  `create_user` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `update_time` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT '',
  `update_user` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('1', '1', '100100', '100.00', '1', '15:22:19', 'xxx', '15:22:19', 'xxx');
INSERT INTO `order_item` VALUES ('2', '2', '100100', '100.00', '1', '15:22:19', 'xxx', '15:22:19', 'xxx');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `product_desc` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `create_time` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT '',
  `create_user` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `update_time` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT '',
  `update_user` varchar(255) COLLATE utf8mb4_german2_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('100100', '商品A', '100.00', '0', '测试商品', '2022-02-11 14:26:49', null, '15:22:19', 'xxx');
