/*
 Navicat Premium Data Transfer

 Source Server         : lkx
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : library_management

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 30/12/2023 16:46:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_key`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (61, 'admin7', '13423422222', '2023-10-01 21:24:22', '2023-10-02 14:18:04', NULL, '36b1a13d6e0ea39b8ee9bd53ed46ee32');
INSERT INTO `admin` VALUES (62, 'admin1', '15213423422', '2023-10-01 21:25:34', '2023-10-03 16:17:14', NULL, '6f293138afbdd9f9db787826be6513a9');
INSERT INTO `admin` VALUES (63, 'lkx', '13423412341', '2023-10-02 14:46:25', '2023-12-25 15:01:01', 'admin@164.com', '8e8c1b3bee3fa14057f31c6c87834db0');
INSERT INTO `admin` VALUES (71, 'admin8', '15439949594', '2023-10-04 16:33:31', '2023-12-25 15:00:41', 'kkkkk@', '8e8c1b3bee3fa14057f31c6c87834db0');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `publishdate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版社',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bookno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标准码',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  `cover` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nums` int(0) NULL DEFAULT NULL COMMENT '图书剩余数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (2, 'lkx', NULL, '2023-10-11', 'dsafdasdd', '11', '222', '3333', '2023-10-02 22:23:38', NULL, 'https://cdn.shujie.me/isbn/100/119/9787100119696_31.jpg%21w600', 101);
INSERT INTO `book` VALUES (5, '2222222', 'adsfadffffffffffffffffffffffffffffffffffff', '2023-10-10', '1111111111', '122222222223', '33333333333333', '11111', '2023-10-02 22:37:09', NULL, 'https://img0.baidu.com/it/u=1227141714,2202383070&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=717', 101);
INSERT INTO `book` VALUES (6, 'aq1', 'd', '2023-10-05', 'ss', 'xx', '中小学教材 > 语文', '11', '2023-10-02 22:53:56', NULL, 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.alicdn.com%2Fi1%2F2457640190%2FO1CN01vnsRdm1DH3wRO0nGR_%21%212457640190.jpg&refer=http%3A%2F%2Fimg.alicdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1698851595&t=c4f551f76721b13e5bce2937ca18b212', 100);
INSERT INTO `book` VALUES (7, 'sys', 'aaaaaaaaaaaaaaaaaaaaaaaa', '2023-10-03', 'aaaaaaaaaaa', 'ssssss', '历史文化 > 唐朝文化', '11111111111', '2023-10-02 23:06:50', NULL, 'https://cdn.shujie.me/isbn/100/119/9787100119696_31.jpg%21w600', 101);
INSERT INTO `book` VALUES (12, 'hahah', 'b', '2023-12-05', 'b', 'b', '文学', 'hahaaaa', '2023-10-03 15:31:47', NULL, 'https://cdn.shujie.me/isbn/100/119/9787100119696_31.jpg%21w600', 99);
INSERT INTO `book` VALUES (13, 'sys', 'a', '2023-12-13', 'a', 'a', '文学', 'sysab', '2023-10-03 15:58:32', NULL, 'https://cdn.shujie.me/isbn/100/119/9787100119696_31.jpg%21w600', 98);
INSERT INTO `book` VALUES (14, 'enenss', 'a', '2023-11-28', 'a', 'a', '小说', 'sysaa', '2023-10-03 17:30:25', NULL, 'https://cdn.shujie.me/isbn/100/119/9787100119696_31.jpg%21w600', 91);
INSERT INTO `book` VALUES (16, '77yeyeyeeyye', 'a', '2023-12-05', 'a', 'a', '文学', '111', '2023-10-03 19:34:47', NULL, 'https://cdn.shujie.me/isbn/100/119/9787100119696_31.jpg%21w600', 11);
INSERT INTO `book` VALUES (18, '12', 'aa', '2023-12-13', 'k', 'szu', '文学', '123', '2023-10-03 19:36:20', NULL, 'https://cdn.shujie.me/isbn/100/119/9787100119696_31.jpg%21w600', 1);
INSERT INTO `book` VALUES (20, '西游记', '来个正常一点的信息', '2023-10-03', '林科贤', '林科贤出版社', '文学', '182381923891283', '2023-10-03 23:03:16', NULL, 'https://cdn.shujie.me/isbn/100/119/9787100119696_31.jpg%21w600', 119);
INSERT INTO `book` VALUES (21, 'book1', '123', '2023-12-13', '123', '132', '名著 > 世界名著', '123', '2023-12-25 15:03:44', NULL, NULL, 10);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bookno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `userid` int(0) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `userphone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (24, 'sys', 'sysab', 46, 'asd', '13333333333', '2023-10-04 12:54:53');
INSERT INTO `borrow` VALUES (25, 'sys', 'sysab', 48, '林科贤', '14332333222', '2023-10-04 12:54:57');
INSERT INTO `borrow` VALUES (26, 'enenss', 'sysaa', 46, 'asd', '13333333333', '2023-10-04 12:55:01');
INSERT INTO `borrow` VALUES (27, '西游记', '182381923891283', 48, '林科贤', '14332333222', '2023-12-17 23:59:21');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `pid` int(0) NULL DEFAULT NULL COMMENT '父级id',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (19, '小说', NULL, NULL, '2023-10-03 16:12:06', NULL);
INSERT INTO `category` VALUES (20, '文学', NULL, NULL, '2023-10-03 16:12:26', NULL);
INSERT INTO `category` VALUES (21, '名著', NULL, NULL, '2023-10-04 16:33:46', NULL);
INSERT INTO `category` VALUES (22, '世界名著', '红楼梦等', 21, '2023-12-17 23:06:12', NULL);
INSERT INTO `category` VALUES (23, '中国名著', NULL, 21, '2023-12-17 23:11:39', NULL);
INSERT INTO `category` VALUES (24, '欧洲名著', NULL, 21, '2023-12-17 23:11:47', NULL);
INSERT INTO `category` VALUES (25, '课本1', '123', NULL, '2023-12-25 15:01:38', '2023-12-25 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (23, '林科贤', '20230930648372391', 21, '女', '555', '1', '2023-09-30 16:09:24', '2023-09-30 16:09:24');
INSERT INTO `user` VALUES (46, 'asd', '23093046952', 12, '男', '13333333333', '粤海街道深圳大学沧海校区菜鸟驿站', '2023-09-30 18:47:20', '2023-09-30 22:49:29');
INSERT INTO `user` VALUES (48, '林科贤', '23093068254', 12, '女', '14332333222', '12', '2023-09-30 19:02:05', '2023-10-01 13:49:24');
INSERT INTO `user` VALUES (49, 'xxxxx', '23093098204', 13, '女', '13242342341', 'aaaaaaaaaaaa', '2023-09-30 23:03:34', '2023-10-02 14:46:51');
INSERT INTO `user` VALUES (50, 'xxxaa', '23100214531', 12, '男', '13342342342', '粤海街道深圳大学沧海校区菜鸟驿站', '2023-10-02 14:47:04', '2023-10-02 14:47:04');
INSERT INTO `user` VALUES (51, 'panzhanle', '23100330243', 18, '男', '18328383828', '粤海街道深圳大学沧海校区菜鸟驿站', '2023-10-03 23:04:09', NULL);
INSERT INTO `user` VALUES (52, '哈哈', '2310042994', 12, '男', '14423234122', '33', '2023-10-04 16:33:12', NULL);
INSERT INTO `user` VALUES (53, 'hhhh', '23110855004', 14, '男', '13432342342', NULL, '2023-11-08 09:34:56', '2023-12-18 17:57:32');
INSERT INTO `user` VALUES (56, 'user5', '23122586425', 28, '男', '13523943798', 'Division of Mathematics', '2023-12-25 14:42:21', NULL);
INSERT INTO `user` VALUES (57, '林科贤', '23122582336', 25, '女', '13239437988', 'Division of Mathematics', '2023-12-25 14:45:54', '2023-12-25 14:46:03');
INSERT INTO `user` VALUES (58, '林科贤2', '23122516341', 22, '女', '13232323232', 'szu', '2023-12-25 14:46:45', NULL);
INSERT INTO `user` VALUES (59, '林科贤', '23122527587', 22, '女', '13232323222', 'Division of Mathematics', '2023-12-25 14:49:40', '2023-12-25 14:49:47');

SET FOREIGN_KEY_CHECKS = 1;
