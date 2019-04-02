/*
 Navicat Premium Data Transfer

 Source Server         : yeves
 Source Server Type    : MySQL
 Source Server Version : 50556
 Source Host           : 120.79.172.45:3306
 Source Schema         : laravel

 Target Server Type    : MySQL
 Target Server Version : 50556
 File Encoding         : 65001

 Date: 02/04/2019 21:56:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comments
-- ----------------------------
BEGIN;
INSERT INTO `comments` VALUES (1, 1, 'comment1', 1);
INSERT INTO `comments` VALUES (2, 1, 'comment2', 2);
INSERT INTO `comments` VALUES (3, 2, 'comment3', 3);
INSERT INTO `comments` VALUES (4, 2, 'comment4', 4);
INSERT INTO `comments` VALUES (5, 3, 'comment5', 5);
INSERT INTO `comments` VALUES (6, 4, 'comment6', 6);
INSERT INTO `comments` VALUES (7, 4, 'comment7', 7);
INSERT INTO `comments` VALUES (8, 4, 'comment8', 8);
INSERT INTO `comments` VALUES (9, 1, 'i am comment', NULL);
INSERT INTO `comments` VALUES (10, 1, 'i am comment', NULL);
INSERT INTO `comments` VALUES (11, 2, 'i am comment', NULL);
INSERT INTO `comments` VALUES (12, 1, '一条新的评论。', NULL);
INSERT INTO `comments` VALUES (13, 1, '另一条评论。', NULL);
INSERT INTO `comments` VALUES (14, 1, '一条新的评论。', NULL);
COMMIT;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
INSERT INTO `posts` VALUES (1, '文章1', 1);
INSERT INTO `posts` VALUES (2, '文章2', 1);
INSERT INTO `posts` VALUES (3, '文章3', 2);
INSERT INTO `posts` VALUES (4, '文章4', 2);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, '超级管理员');
INSERT INTO `roles` VALUES (2, '文章管理员');
INSERT INTO `roles` VALUES (3, '评论管理员');
COMMIT;

-- ----------------------------
-- Table structure for t_areas
-- ----------------------------
DROP TABLE IF EXISTS `t_areas`;
CREATE TABLE `t_areas` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `code_id` int(11) DEFAULT NULL,
  `code_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_areas
-- ----------------------------
BEGIN;
INSERT INTO `t_areas` VALUES (1, 1, '四川省', NULL, NULL);
INSERT INTO `t_areas` VALUES (2, 2, '成都市', NULL, NULL);
INSERT INTO `t_areas` VALUES (3, 3, '武侯区', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_phones
-- ----------------------------
DROP TABLE IF EXISTS `t_phones`;
CREATE TABLE `t_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_phones
-- ----------------------------
BEGIN;
INSERT INTO `t_phones` VALUES (1, 1, '13100000000', NULL, NULL);
INSERT INTO `t_phones` VALUES (2, 2, '134555555', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL DEFAULT '0' COMMENT '省ID',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '市ID\n',
  `district_id` int(11) NOT NULL DEFAULT '0' COMMENT '区ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `phone_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_users
-- ----------------------------
BEGIN;
INSERT INTO `t_users` VALUES (1, 1, 2, 3, NULL, '2019-04-01 22:26:12', NULL, 'wang', 1);
INSERT INTO `t_users` VALUES (2, 1, 2, 0, '2019-04-01 22:27:19', '2019-04-01 22:27:19', NULL, 'wang', 0);
INSERT INTO `t_users` VALUES (3, 4, 2, 0, '2019-04-01 22:37:27', '2019-04-01 22:37:27', NULL, 'werwe', 0);
INSERT INTO `t_users` VALUES (4, 2, 0, 0, '2019-04-01 22:37:27', '2019-04-01 22:37:27', NULL, 'yong', 0);
INSERT INTO `t_users` VALUES (5, 4, 0, 0, '2019-04-01 22:37:49', '2019-04-01 22:37:49', NULL, 'werwe', 0);
INSERT INTO `t_users` VALUES (6, 1, 0, 0, '2019-04-01 22:37:49', '2019-04-01 22:37:49', NULL, NULL, 0);
INSERT INTO `t_users` VALUES (7, 4, 0, 0, '2019-04-01 22:38:23', '2019-04-01 22:38:23', NULL, 'werwe', 0);
INSERT INTO `t_users` VALUES (8, 4, 0, 0, '2019-04-01 22:38:43', '2019-04-01 22:38:43', NULL, 'werwe', 0);
INSERT INTO `t_users` VALUES (9, 1, 0, 0, '2019-04-01 22:42:50', '2019-04-01 22:42:50', NULL, 'eeee', 0);
INSERT INTO `t_users` VALUES (19, 2, 0, 0, '2019-04-01 22:44:43', '2019-04-01 22:48:23', '2019-04-01 22:48:23', 'gggg', 0);
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_role_id`,`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_role
-- ----------------------------
BEGIN;
INSERT INTO `user_role` VALUES (1, 1, 1);
INSERT INTO `user_role` VALUES (2, 1, 2);
INSERT INTO `user_role` VALUES (3, 1, 3);
INSERT INTO `user_role` VALUES (4, 2, 1);
INSERT INTO `user_role` VALUES (5, 2, 3);
INSERT INTO `user_role` VALUES (6, 3, 1);
INSERT INTO `user_role` VALUES (7, 3, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
