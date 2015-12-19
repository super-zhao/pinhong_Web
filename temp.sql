/*
Navicat MySQL Data Transfer

Source Server         : temp
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : temp

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-12-19 11:33:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administrator`
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('5', '1234', '123');
INSERT INTO `administrator` VALUES ('6', '1234', '123');
INSERT INTO `administrator` VALUES ('7', '1234', '123');
INSERT INTO `administrator` VALUES ('8', '12345', '123');
INSERT INTO `administrator` VALUES ('9', '12', '123');
INSERT INTO `administrator` VALUES ('10', '222', '222');
INSERT INTO `administrator` VALUES ('12', '123', '12345');
INSERT INTO `administrator` VALUES ('13', '123', '');
INSERT INTO `administrator` VALUES ('14', '123', '');
INSERT INTO `administrator` VALUES ('17', 'ç¡ç¡ç¡', 'ssss');
INSERT INTO `administrator` VALUES ('18', '1234', '123');
INSERT INTO `administrator` VALUES ('19', '1234', 'd ');
INSERT INTO `administrator` VALUES ('20', '饿', 'ee');
INSERT INTO `administrator` VALUES ('21', '1', '1');
INSERT INTO `administrator` VALUES ('22', '2', '2');
INSERT INTO `administrator` VALUES ('23', '个', 'g ');
INSERT INTO `administrator` VALUES ('24', '打打', 'dd ');
INSERT INTO `administrator` VALUES ('25', '123455', '123');
INSERT INTO `administrator` VALUES ('26', 'admin', '123456');

-- ----------------------------
-- Table structure for `message_board`
-- ----------------------------
DROP TABLE IF EXISTS `message_board`;
CREATE TABLE `message_board` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_title` varchar(1024) NOT NULL,
  `message_author` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `message_content` longtext NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_board
-- ----------------------------
INSERT INTO `message_board` VALUES ('1', 'kl', 'kl', '2015-12-17 15:35:50', 'kl');
INSERT INTO `message_board` VALUES ('2', 'qeqwe', 'qweqwe', '2015-12-17 15:48:04', 'qewqweqwe');
INSERT INTO `message_board` VALUES ('3', 't45y', '23', '2015-12-17 15:48:09', 'sdhy5ru');
INSERT INTO `message_board` VALUES ('4', 'sdferey', 'jtyuj', '2015-12-17 15:48:14', 'sdffeg');
INSERT INTO `message_board` VALUES ('5', 'wet5werw5', 'rewy56ui', '2015-12-17 15:48:22', 'qwr4tery64u567');
INSERT INTO `message_board` VALUES ('6', 'qawrw2ttrh', 'adrfewt', '2015-12-17 15:48:30', 'terteyert4wer2');
INSERT INTO `message_board` VALUES ('7', 'adeqwrfwe', 'asdfwetgre', '2015-12-17 15:48:41', 'qweqawdrewrf');
INSERT INTO `message_board` VALUES ('8', '11', '11', '2015-12-17 22:02:24', '11');
INSERT INTO `message_board` VALUES ('9', '123456', 'hurui', '2015-12-18 21:52:09', '123456');
INSERT INTO `message_board` VALUES ('10', '1234', 'hurui', '2015-12-19 08:44:52', '赵超 你好');
INSERT INTO `message_board` VALUES ('11', '胡锐', '胡锐', '2015-12-19 08:45:23', '12313');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_title` varchar(30) NOT NULL,
  `news_date` date NOT NULL,
  `news_content` longtext NOT NULL,
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('索尼W55降价送卡', '2015-12-18', '说起索尼的W系列相机，相信大家都不会感到陌生，其不错的功能表现外加时尚前卫的外形设计，一度颇受消费者认可。今日，笔者从索尼专卖处获悉，其对W系低端机型W55推出1550元的促销价格，附送一张512M的记忆棒，颇为超值，感兴趣的读者可以关注一下。', '15');
INSERT INTO `news` VALUES ('理光R5不到二千', '2015-12-18', '理光R5不到二千理光R5不到二千理光R5不到二千理光R5不到二千理光R5不到二千', '16');
INSERT INTO `news` VALUES ('MP4关注度排行TOP10   ', '2015-12-18', 'MP4关注度排行TOP10 MP4关注度排行TOP10 MP4关注度排行TOP10 MP4关注度排行TOP10 ', '17');
INSERT INTO `news` VALUES ('单反与镜头组合  ', '2015-12-18', '单反与镜头组合  单反与镜头组合  单反与镜头组合  单反与镜头组合  单反与镜头组合  ', '18');
INSERT INTO `news` VALUES ('国庆各品牌最好卖的相机 ', '2015-12-18', '国庆各品牌最好卖的相机 国庆各品牌最好卖的相机 国庆各品牌最好卖的相机 国庆各品牌最好卖的相机 国庆各品牌最好卖的相机 ', '19');
INSERT INTO `news` VALUES ('国庆期间降价最猛八款数码相机', '2015-12-18', '国庆期间降价最猛八款数码相机国庆期间降价最猛八款数码相机国庆期间降价最猛八款数码相机国庆期间降价最猛八款数码相机', '20');
INSERT INTO `news` VALUES ('三星女性翻盖E428行货仅1180  ', '2015-12-18', '三星女性翻盖E428行货仅1180  三星女性翻盖E428行货仅1180  三星女性翻盖E428行货仅1180  三星女性翻盖E428行货仅1180  三星女性翻盖E428行货仅1180  ', '21');
INSERT INTO `news` VALUES ('时尚浪漫情侣手机配对推荐', '2015-12-18', '时尚浪漫情侣手机配对推荐时尚浪漫情侣手机配对推荐时尚浪漫情侣手机配对推荐时尚浪漫情侣手机配对推荐时尚浪漫情侣手机配对推荐', '22');
INSERT INTO `news` VALUES ('黄金周最热销手机汇总导购  ', '2015-12-18', '黄金周最热销手机汇总导购  黄金周最热销手机汇总导购  黄金周最热销手机汇总导购  黄金周最热销手机汇总导购  黄金周最热销手机汇总导购  ', '23');
INSERT INTO `news` VALUES ('爱国者数码相机今日七折优惠  ', '2015-12-18', '	爱国者数码相机今日七折优惠  	爱国者数码相机今日七折优惠  	爱国者数码相机今日七折优惠  	爱国者数码相机今日七折优惠  	爱国者数码相机今日七折优惠  ', '24');
INSERT INTO `news` VALUES ('锤子T2要发布啦!', '2015-12-18', '锤子T2要发布啦!锤子T2要发布啦!锤子T2要发布啦!锤子T2要发布啦!锤子T2要发布啦!锤子T2要发布啦!锤子T2要发布啦!', '25');
INSERT INTO `news` VALUES ('test', '2015-12-19', '1235', '27');

-- ----------------------------
-- Table structure for `onion_chat`
-- ----------------------------
DROP TABLE IF EXISTS `onion_chat`;
CREATE TABLE `onion_chat` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `chat_content` varchar(4000) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of onion_chat
-- ----------------------------

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_brand` varchar(100) NOT NULL,
  `pro_version` varchar(20) NOT NULL,
  `pro_price` decimal(8,2) NOT NULL,
  `pro_image` varchar(4000) NOT NULL,
  `pro_introduce` longtext,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '索爱', '索爱', '1980', '8888.00', 'images/d_r11_10_r1_c221.jpg', '索爱最近手机产品');
INSERT INTO `product` VALUES ('2', '数码相机', '柯达', '1200', '3000.00', 'images/d_r11_10_r1_c116.jpg', '柯达的相机');
INSERT INTO `product` VALUES ('3', '摄像机', '松下', '1300', '4000.00', 'images/d_r11_10_r1_c81.jpg', '松下摄像机');
INSERT INTO `product` VALUES ('4', '笔记本', 'IBM', '1500', '8000.00', 'images/d_r11_10_r1_c2.jpg', 'IBM的笔记本');
INSERT INTO `product` VALUES ('5', '手机', '摩托罗拉', '1700', '3000.00', 'images/d_r11_10_r1_c22.jpg', '摩托罗拉的手机');
INSERT INTO `product` VALUES ('6', '笔记本', '华硕', '550d', '4000.00', 'images/d_r11_10_r1_c1.jpg', '华硕的笔记本');
INSERT INTO `product` VALUES ('7', '锤子', '锤子', '15', '5000.00', 'images/d_r11_10_r1_c16.jpg', '锤子手机');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `reply_title` varchar(100) NOT NULL,
  `reply_content` longtext NOT NULL,
  `reply_date` datetime NOT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `FK_Reference_1` (`message_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`message_id`) REFERENCES `message_board` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '1', 'k', 'kl', 'k', '2015-12-17 15:35:58');
INSERT INTO `reply` VALUES ('2', '1', 'q', 'w', 'e', '2015-12-17 15:38:15');
INSERT INTO `reply` VALUES ('3', '1', '对对对', 'asdfas', 'dasdasd', '2015-12-17 15:41:38');
INSERT INTO `reply` VALUES ('4', '1', 'ew', 'asda', 'adasdas', '2015-12-17 15:42:32');
INSERT INTO `reply` VALUES ('5', '1', 'hei', '123', '123213', '2015-12-17 15:47:37');
INSERT INTO `reply` VALUES ('6', '1', 'asdadsfwer', 'qaweqewrwertw', 'wqewytj5yi57', '2015-12-17 15:48:53');
INSERT INTO `reply` VALUES ('7', '8', '55', '555', '55', '2015-12-17 22:02:34');
INSERT INTO `reply` VALUES ('8', '6', 'liuwei', '123456', '54566', '2015-12-18 21:51:31');
INSERT INTO `reply` VALUES ('9', '6', '人情恶我', '驱蚊器', '企鹅王去', '2015-12-18 22:09:29');
INSERT INTO `reply` VALUES ('10', '4', '啊让我去玩儿', '阿萨德去啊', '阿斯顿', '2015-12-18 22:09:45');
INSERT INTO `reply` VALUES ('11', '11', '请问', '你好', '胡锐', '2015-12-19 08:45:49');
INSERT INTO `reply` VALUES ('12', '9', '驱蚊器', '请问', '请问权威', '2015-12-19 08:46:10');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL,
  `register_date` date NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', '123456', '2015-12-18', null, 'hurui');
INSERT INTO `user` VALUES ('6', '123456', '2015-12-18', null, 'zhaochao');
INSERT INTO `user` VALUES ('7', '123456', '2015-12-18', null, 'superzhao');
INSERT INTO `user` VALUES ('8', '123456', '2015-12-18', null, 'liuwei');
INSERT INTO `user` VALUES ('9', '123456', '2015-12-18', null, 'zhangsan');
INSERT INTO `user` VALUES ('10', '123456', '2015-12-18', null, 'lisi');
INSERT INTO `user` VALUES ('12', '123456', '2015-12-18', null, 'zhaoliu');
INSERT INTO `user` VALUES ('13', '123456', '2015-12-18', null, 'jack');
INSERT INTO `user` VALUES ('14', '123456', '2015-12-18', null, 'rose');
INSERT INTO `user` VALUES ('15', '123456', '2015-12-19', null, 'test');
