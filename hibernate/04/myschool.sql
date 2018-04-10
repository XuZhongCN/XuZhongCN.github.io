/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : myschool

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2017-01-14 15:20:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classes`
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `claId` int(11) NOT NULL AUTO_INCREMENT,
  `claName` varchar(20) NOT NULL,
  PRIMARY KEY (`claId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('1', '201601班');
INSERT INTO `classes` VALUES ('2', '1602班');
INSERT INTO `classes` VALUES ('3', '1603班');
INSERT INTO `classes` VALUES ('4', '1604班');

-- ----------------------------
-- Table structure for `exam`
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `examId` int(11) NOT NULL AUTO_INCREMENT,
  `examName` varchar(20) NOT NULL,
  PRIMARY KEY (`examId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('1', '2016期中考试');
INSERT INTO `exam` VALUES ('2', '2016期末考试');
INSERT INTO `exam` VALUES ('4', '2017期中考试');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) DEFAULT '0',
  `stuId` int(11) NOT NULL,
  `subId` int(11) NOT NULL,
  `examId` int(11) NOT NULL,
  PRIMARY KEY (`scoreId`),
  KEY `score_student_fk` (`stuId`),
  KEY `score_subject_fk` (`subId`),
  KEY `score_exam_fk` (`examId`),
  CONSTRAINT `score_exam_fk` FOREIGN KEY (`examId`) REFERENCES `exam` (`examId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `score_student_fk` FOREIGN KEY (`stuId`) REFERENCES `student` (`stuId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `score_subject_fk` FOREIGN KEY (`subId`) REFERENCES `subject` (`subId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '80', '1', '1', '1');
INSERT INTO `score` VALUES ('2', '85', '1', '2', '1');
INSERT INTO `score` VALUES ('3', '93', '1', '3', '1');
INSERT INTO `score` VALUES ('4', '86', '1', '4', '1');
INSERT INTO `score` VALUES ('5', '83', '2', '1', '1');
INSERT INTO `score` VALUES ('6', '79', '2', '2', '1');
INSERT INTO `score` VALUES ('7', '57', '2', '3', '1');
INSERT INTO `score` VALUES ('8', '75', '2', '4', '1');
INSERT INTO `score` VALUES ('9', '86', '3', '1', '1');
INSERT INTO `score` VALUES ('10', '81', '3', '2', '1');
INSERT INTO `score` VALUES ('11', '95', '3', '3', '1');
INSERT INTO `score` VALUES ('12', '75', '3', '4', '1');
INSERT INTO `score` VALUES ('13', '75', '4', '1', '1');
INSERT INTO `score` VALUES ('14', '95', '4', '2', '1');
INSERT INTO `score` VALUES ('15', '89', '4', '3', '1');
INSERT INTO `score` VALUES ('16', '88', '4', '4', '1');
INSERT INTO `score` VALUES ('17', '0', '5', '1', '1');
INSERT INTO `score` VALUES ('18', '93', '5', '2', '1');
INSERT INTO `score` VALUES ('19', '0', '5', '3', '1');
INSERT INTO `score` VALUES ('20', '90', '5', '4', '1');
INSERT INTO `score` VALUES ('21', '59', '6', '1', '1');
INSERT INTO `score` VALUES ('22', '0', '6', '2', '1');
INSERT INTO `score` VALUES ('23', '85', '6', '3', '1');
INSERT INTO `score` VALUES ('24', '90', '6', '4', '1');
INSERT INTO `score` VALUES ('25', '63', '7', '1', '1');
INSERT INTO `score` VALUES ('26', '98', '7', '2', '1');
INSERT INTO `score` VALUES ('27', '0', '7', '3', '1');
INSERT INTO `score` VALUES ('28', '82', '7', '4', '1');
INSERT INTO `score` VALUES ('29', '90', '8', '1', '1');
INSERT INTO `score` VALUES ('30', '0', '8', '2', '1');
INSERT INTO `score` VALUES ('31', '91', '8', '3', '1');
INSERT INTO `score` VALUES ('32', '76', '8', '4', '1');
INSERT INTO `score` VALUES ('33', '79', '9', '1', '1');
INSERT INTO `score` VALUES ('34', '87', '9', '2', '1');
INSERT INTO `score` VALUES ('35', '83', '9', '3', '1');
INSERT INTO `score` VALUES ('36', '81', '9', '4', '1');
INSERT INTO `score` VALUES ('37', '0', '1', '1', '2');
INSERT INTO `score` VALUES ('38', '91', '1', '2', '2');
INSERT INTO `score` VALUES ('39', '79', '1', '3', '2');
INSERT INTO `score` VALUES ('40', '89', '1', '4', '2');
INSERT INTO `score` VALUES ('41', '73', '2', '1', '2');
INSERT INTO `score` VALUES ('42', '90', '2', '2', '2');
INSERT INTO `score` VALUES ('43', '63', '2', '3', '2');
INSERT INTO `score` VALUES ('44', '91', '2', '4', '2');
INSERT INTO `score` VALUES ('45', '87', '3', '1', '2');
INSERT INTO `score` VALUES ('46', '85', '3', '2', '2');
INSERT INTO `score` VALUES ('47', '97', '3', '3', '2');
INSERT INTO `score` VALUES ('48', '71', '3', '4', '2');
INSERT INTO `score` VALUES ('49', '89', '4', '1', '2');
INSERT INTO `score` VALUES ('50', '93', '4', '2', '2');
INSERT INTO `score` VALUES ('51', '91', '4', '3', '2');
INSERT INTO `score` VALUES ('52', '72', '4', '4', '2');
INSERT INTO `score` VALUES ('53', '75', '5', '1', '2');
INSERT INTO `score` VALUES ('54', '96', '5', '2', '2');
INSERT INTO `score` VALUES ('55', '0', '5', '3', '2');
INSERT INTO `score` VALUES ('56', '31', '5', '4', '2');
INSERT INTO `score` VALUES ('57', '78', '6', '1', '2');
INSERT INTO `score` VALUES ('58', '83', '6', '2', '2');
INSERT INTO `score` VALUES ('59', '73', '6', '3', '2');
INSERT INTO `score` VALUES ('60', '55', '6', '4', '2');
INSERT INTO `score` VALUES ('61', '58', '7', '1', '2');
INSERT INTO `score` VALUES ('62', '83', '7', '2', '2');
INSERT INTO `score` VALUES ('63', '98', '7', '3', '2');
INSERT INTO `score` VALUES ('64', '90', '7', '4', '2');
INSERT INTO `score` VALUES ('65', '89', '8', '1', '2');
INSERT INTO `score` VALUES ('66', '74', '8', '2', '2');
INSERT INTO `score` VALUES ('67', '86', '8', '3', '2');
INSERT INTO `score` VALUES ('68', '65', '8', '4', '2');
INSERT INTO `score` VALUES ('69', '89', '9', '1', '2');
INSERT INTO `score` VALUES ('70', '99', '9', '2', '2');
INSERT INTO `score` VALUES ('71', '93', '9', '3', '2');
INSERT INTO `score` VALUES ('72', '95', '9', '4', '2');
INSERT INTO `score` VALUES ('75', '93', '3', '2', '4');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stuId` int(11) NOT NULL AUTO_INCREMENT,
  `stuName` varchar(20) NOT NULL,
  `stuSex` char(1) NOT NULL DEFAULT '0',
  `stuAge` int(11) NOT NULL,
  `claId` int(11) NOT NULL,
  PRIMARY KEY (`stuId`),
  KEY `student_classes_fk` (`claId`),
  CONSTRAINT `student_classes_fk` FOREIGN KEY (`claId`) REFERENCES `classes` (`claId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '詹云久', '0', '23', '1');
INSERT INTO `student` VALUES ('2', '杜宇航', '0', '22', '1');
INSERT INTO `student` VALUES ('3', '汪珊', '1', '20', '1');
INSERT INTO `student` VALUES ('4', '邵熙', '0', '23', '2');
INSERT INTO `student` VALUES ('5', '周樊', '0', '22', '2');
INSERT INTO `student` VALUES ('6', '陈聪', '0', '22', '3');
INSERT INTO `student` VALUES ('7', '刘明明', '0', '22', '3');
INSERT INTO `student` VALUES ('8', '周攀', '0', '23', '3');
INSERT INTO `student` VALUES ('9', '胡继忠', '0', '22', '3');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subId` int(11) NOT NULL AUTO_INCREMENT,
  `subName` varchar(20) NOT NULL,
  PRIMARY KEY (`subId`),
  KEY `subId` (`subId`,`subName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '语文');
INSERT INTO `subject` VALUES ('2', '数学');
INSERT INTO `subject` VALUES ('3', '英语');
INSERT INTO `subject` VALUES ('4', '计算机');

-- ----------------------------
-- View structure for `allscore`
-- ----------------------------
DROP VIEW IF EXISTS `allscore`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `allscore` AS select `r`.`scoreId` AS `scoreId`,`s`.`stuId` AS `stuId`,`s`.`stuName` AS `stuName`,`s`.`stuSex` AS `stuSex`,`s`.`stuAge` AS `stuAge`,`s`.`claId` AS `claId`,`c`.`claName` AS `claName`,`r`.`score` AS `score`,`j`.`subId` AS `subId`,`j`.`subName` AS `subName`,`e`.`examId` AS `examId`,`e`.`examName` AS `examName` from ((((`student` `s` join `classes` `c` on((`s`.`claId` = `c`.`claId`))) join `score` `r` on((`s`.`stuId` = `r`.`stuId`))) join `subject` `j` on((`j`.`subId` = `r`.`subId`))) join `exam` `e` on((`e`.`examId` = `r`.`examId`))) ;

-- ----------------------------
-- Procedure structure for `t4`
-- ----------------------------
DROP PROCEDURE IF EXISTS `t4`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `t4`(IN c VARCHAR(20),IN e VARCHAR(20))
BEGIN
SELECT stuName, avg(score) FROM allscore WHERE claName LIKE CONCAT('%',c,'%') AND 
examName LIKE CONCAT('%',e,'%') GROUP BY stuId HAVING avg(score) < 
(SELECT avg(score) FROM allscore WHERE claName LIKE CONCAT('%',c,'%') AND examName LIKE  
CONCAT('%',e,'%'));
END
;;
DELIMITER ;
