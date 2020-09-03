/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-05-22 11:13:15
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `appointment`
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fromm` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `too` varchar(255) NOT NULL,
  `cTime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES ('1', 'Benson Karue', '4066', '0725667841', 'I want to see you tomorrow', '7854uiplk87dadkl87', '1554916571');
INSERT INTO `appointment` VALUES ('2', 'Doctor', '7854uiplk87dadkl87', '0725895256', 'OKay no problem I will be available', '4066', '1554917369');
INSERT INTO `appointment` VALUES ('3', 'Benson Karue', '4066', '0725667841', 'Need to see a doctor ASAP', 'dd69920006c75a4f5b0166e37b1da51b', '1584790731');
INSERT INTO `appointment` VALUES ('4', 'Doctor', 'dd69920006c75a4f5b0166e37b1da51b', '0725895256', 'Come tomorrow at 10:30 Office no. 10c ', '4066', '1584790805');

-- ----------------------------
-- Table structure for `enquiries`
-- ----------------------------
DROP TABLE IF EXISTS `enquiries`;
CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(100) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dateOfBirth` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of enquiries
-- ----------------------------
INSERT INTO `enquiries` VALUES ('1', 'test test', '585285852', '', 'Bungoma', 'test', 'March, 06 20');
INSERT INTO `enquiries` VALUES ('2', 'David kinywa', '0711500670', '', 'Bungoma', 'hello i need my pnumber', 'March, 06 20');
INSERT INTO `enquiries` VALUES ('3', 'David kinywa', '0711500670', '', 'Bungoma', 'hello i need my pnumber', 'March, 06 20');
INSERT INTO `enquiries` VALUES ('4', 'David nzom', '0785285052', '', 'Nakuru', 'Test', 'March, 21 20');
INSERT INTO `enquiries` VALUES ('5', 'test test', '278585785', '2000-05-12', 'test', 'test', 'March, 21 20');

-- ----------------------------
-- Table structure for `hiv`
-- ----------------------------
DROP TABLE IF EXISTS `hiv`;
CREATE TABLE `hiv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `moc` varchar(255) NOT NULL,
  `dComments` text NOT NULL,
  `cTime` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hiv
-- ----------------------------

-- ----------------------------
-- Table structure for `outbreaks`
-- ----------------------------
DROP TABLE IF EXISTS `outbreaks`;
CREATE TABLE `outbreaks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outBreak` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `cTime` varchar(255) NOT NULL,
  `measures` text NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of outbreaks
-- ----------------------------
INSERT INTO `outbreaks` VALUES ('1', 'Tb', 'There is a serious problem', 'Bungoma Township ', '1554913667', 'testing', 'f946c63a3187a5059ac6eed1fc82c1e4');
INSERT INTO `outbreaks` VALUES ('2', 'Corona', 'cover your mouth', 'world', '1583517995', 'tsest', 'd42bf7a718e7431ebc78d673c49708ca');

-- ----------------------------
-- Table structure for `patients`
-- ----------------------------
DROP TABLE IF EXISTS `patients`;
CREATE TABLE `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dateOfBirth` varchar(255) NOT NULL,
  `cTime` varchar(255) NOT NULL,
  `diagnosis` text NOT NULL,
  `prescription` text NOT NULL,
  `token` varchar(255) NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `pcondition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of patients
-- ----------------------------
INSERT INTO `patients` VALUES ('2', 'Benson Karue', 'Bungoma', '40', 'Female', '0725667841', '04 - 04 - 1979', '1554756586', 'Headache\r<br />Vomiting\r<br />Neusea', 'C/h4 x3\r<br />Cs4/w\r<br />CQ-WS', 'c760e767719b5196ce99cb0ed4b29c63', '7854uiplk87dadkl87', '4066', null);
INSERT INTO `patients` VALUES ('3', 'Testing Data', 'Bungoma', '40', 'Male', '0713345678', '01 - 01 - 1979', '1554817535', 'Vomiting\r<br />Coughing\r<br />Others', 'i9\r<br />op09jk\r<br />kjdkfa', '6dc616e76193284f5078080b97067e30', '7854uiplk87dadkl87', '1234', null);
INSERT INTO `patients` VALUES ('4', 'Benson Karue', 'Bungoma', '40', 'Male', '0725667841', '04 - 04 - 1979', '1554903224', 'sdfafadf', 'dfada', 'aada38f92af7dabbe949bb03c2c995d1', '7854uiplk87dadkl87', '4066', 'Outpatient');
INSERT INTO `patients` VALUES ('5', 'Benson Karue', 'Bungoma', '41', 'Male', '0725667841', '04 - 04 - 1979', '1582805802', 'Headaches, sweating, fever', 'Hbds, al', 'a2110bd4a44c3a41070c3bc8ec502527', 'dd69920006c75a4f5b0166e37b1da51b', '4066', 'Outpatient');
INSERT INTO `patients` VALUES ('6', 'Patience Khaoya', 'Bungoma', '22', 'Female', '0711500670', '28 - 02 - 1998', '1582838938', 'Flu', 'None', '7e52774e5a84e8a1dbb304ea0cc6f7ab', '', '3551', 'Inpatient');
INSERT INTO `patients` VALUES ('7', 'David kinywa', 'Bungoma', '20', 'Male', '0711500670', '12 - 02 - 2000', '1584789157', 'N/A', 'N/A', '91a72f65062783b86f55f90242e6d2d4', 'dd69920006c75a4f5b0166e37b1da51b', '5269', 'Inpatient');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `secondName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Abraham', 'Kipsang', 'kipsang@gmail.com', 'admin', '1236548lpoik58965', '1', '0712345678', null, 'Male', null);
INSERT INTO `users` VALUES ('2', 'Joyce', 'Totona', 'totonajoyce@gmail.com', '12345', '7854uiplk87dadkl87', '2', '0712345672', null, 'Female', 'Surgeon');
INSERT INTO `users` VALUES ('4', 'Benson', 'Wainaina', 'bensonwainaina30gmail.com', 'hospital', 'dd69920006c75a4f5b0166e37b1da51b', '2', '0725667841', null, 'Male', 'Clinical Officer');
INSERT INTO `users` VALUES ('5', 'Daniel', 'Otori', 'otori@gmail.com', 'hospital', 'd3bc3d13f82c1042029a126158d91e8b', '2', '2547118568', null, 'Male', 'Dentist');
