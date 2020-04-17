/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : watercloudnetdb

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 16/04/2020 15:03:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for art_article
-- ----------------------------
DROP TABLE IF EXISTS `art_article`;
CREATE TABLE `art_article`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_CategoryId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Zhaiyao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_Source` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SubTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IsRed` tinyint(1) NULL DEFAULT NULL,
  `F_IsHot` tinyint(1) NULL DEFAULT NULL,
  `F_IsTop` tinyint(1) NULL DEFAULT NULL,
  `F_IsSlide` tinyint(1) NULL DEFAULT NULL,
  `F_IsMsg` tinyint(1) NULL DEFAULT NULL,
  `F_Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_ImgUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LinkUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Click` int(11) NULL DEFAULT NULL,
  `F_Status` tinyint(1) NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for art_category
-- ----------------------------
DROP TABLE IF EXISTS `art_category`;
CREATE TABLE `art_category`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Layer` int(11) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_IsHead` tinyint(1) NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for art_tags
-- ----------------------------
DROP TABLE IF EXISTS `art_tags`;
CREATE TABLE `art_tags`  (
  `T_TagId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `T_Tag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dtk_appconfig
-- ----------------------------
DROP TABLE IF EXISTS `dtk_appconfig`;
CREATE TABLE `dtk_appconfig`  (
  `AppCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AgentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppKey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppSecret` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Access_Token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dtk_corpconfig
-- ----------------------------
DROP TABLE IF EXISTS `dtk_corpconfig`;
CREATE TABLE `dtk_corpconfig`  (
  `uuId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CorpId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CorpSecret` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HeadPic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ApiUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AgentId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppKey` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppSecret` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Access_Token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` int(11) NULL DEFAULT NULL,
  `Encoding` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dtk_corpconfig
-- ----------------------------
INSERT INTO `dtk_corpconfig` VALUES ('1', 'dingbxlfyt9shwpqql7a', 'RUCXv_EziNLtYo76sBJFoNwj69L1shAOfPbfrABDafgnepo6jQHT7af6gwT4hpK6', '测试接口使用', NULL, NULL, NULL, '656255403', 'dingbxlfyt9shwpqql7a', 'RUCXv_EziNLtYo76sBJFoNwj69L1shAOfPbfrABDafgnepo6jQHT7af6gwT4hpK6', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dtk_department
-- ----------------------------
DROP TABLE IF EXISTS `dtk_department`;
CREATE TABLE `dtk_department`  (
  `Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Order` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDeptGroup` tinyint(1) NULL DEFAULT NULL,
  `AutoAddUser` tinyint(1) NULL DEFAULT NULL,
  `DeptHiding` tinyint(1) NULL DEFAULT NULL,
  `DeptPermits` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserPermits` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OuterDept` tinyint(1) NULL DEFAULT NULL,
  `OuterPermitDepts` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OuterPermitUsers` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OrgDeptOwner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeptManagerUseridList` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SourceIdentifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GroupContainSubDept` tinyint(1) NULL DEFAULT NULL,
  `UpdateTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dtk_processinstancelist
-- ----------------------------
DROP TABLE IF EXISTS `dtk_processinstancelist`;
CREATE TABLE `dtk_processinstancelist`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ProcessCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Approvers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime2` timestamp(0) NULL DEFAULT NULL,
  `FinishTime` timestamp(0) NULL DEFAULT NULL,
  `OriginatorUserId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OriginatorDeptId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CcUserids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CcPosition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Result` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BusinessId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OriginatorDeptName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BizAction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Tasks` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FormComponentValues` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dtk_user
-- ----------------------------
DROP TABLE IF EXISTS `dtk_user`;
CREATE TABLE `dtk_user`  (
  `UserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OpenId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Active` tinyint(1) NULL DEFAULT NULL,
  `OrderInDepts` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsAdmin` tinyint(1) NULL DEFAULT NULL,
  `IsBoss` tinyint(1) NULL DEFAULT NULL,
  `Unionid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsLeaderInDepts` tinyint(1) NULL DEFAULT NULL,
  `IsLeader` tinyint(1) NULL DEFAULT NULL,
  `IsHide` tinyint(1) NULL DEFAULT NULL,
  `Department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HiredDate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JobNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsSenior` tinyint(1) NULL DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OrganizeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RoleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SysUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UpdateTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for message_shortmsg
-- ----------------------------
DROP TABLE IF EXISTS `message_shortmsg`;
CREATE TABLE `message_shortmsg`  (
  `uuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aliCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aliMessage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aliSendStatus` int(11) NULL DEFAULT NULL,
  `aliContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aliSendDate` timestamp(0) NULL DEFAULT NULL,
  `aliReceiveDate` timestamp(0) NULL DEFAULT NULL,
  `phoneNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templateCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `templateParam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` timestamp(0) NULL DEFAULT NULL,
  `modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifyTime` timestamp(0) NULL DEFAULT NULL,
  `deleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SimpleSpelling` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Area`(`F_Layers`, `F_FullName`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('110000', '0', 1, '110000', '北京', 'bj', 110000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('110100', '110000', 2, '110100', '北京市', 'bjs', 110100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120000', '0', 1, '120000', '天津', 'tj', 120000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('120100', '120000', 2, '120100', '天津市', 'tjs', 120100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130000', '0', 1, '130000', '河北省', 'hbs', 130000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130100', '130000', 2, '130100', '石家庄市', 'sjzs', 130100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130200', '130000', 2, '130200', '唐山市', 'tss', 130200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130300', '130000', 2, '130300', '秦皇岛市', 'qhds', 130300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130400', '130000', 2, '130400', '邯郸市', 'hds', 130400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130500', '130000', 2, '130500', '邢台市', 'xts', 130500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130600', '130000', 2, '130600', '保定市', 'bds', 130600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130700', '130000', 2, '130700', '张家口市', 'zjks', 130700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130800', '130000', 2, '130800', '承德市', 'cds', 130800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('130900', '130000', 2, '130900', '沧州市', 'czs', 130900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131000', '130000', 2, '131000', '廊坊市', 'lfs', 131000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('131100', '130000', 2, '131100', '衡水市', 'hss', 131100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140000', '0', 1, '140000', '山西省', 'sxs', 140000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140100', '140000', 2, '140100', '太原市', 'tys', 140100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140200', '140000', 2, '140200', '大同市', 'dts', 140200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140300', '140000', 2, '140300', '阳泉市', 'yqs', 140300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140400', '140000', 2, '140400', '长治市', 'czs', 140400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140500', '140000', 2, '140500', '晋城市', 'jcs', 140500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140600', '140000', 2, '140600', '朔州市', 'szs', 140600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140700', '140000', 2, '140700', '晋中市', 'jzs', 140700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140800', '140000', 2, '140800', '运城市', 'ycs', 140800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('140900', '140000', 2, '140900', '忻州市', 'xzs', 140900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141000', '140000', 2, '141000', '临汾市', 'lfs', 141000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('141100', '140000', 2, '141100', '吕梁市', 'lls', 141100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150000', '0', 1, '150000', '内蒙古自治区', 'nmgzzq', 150000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150100', '150000', 2, '150100', '呼和浩特市', 'hhhts', 150100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150200', '150000', 2, '150200', '包头市', 'bts', 150200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150300', '150000', 2, '150300', '乌海市', 'whs', 150300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150400', '150000', 2, '150400', '赤峰市', 'cfs', 150400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150500', '150000', 2, '150500', '通辽市', 'tls', 150500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150600', '150000', 2, '150600', '鄂尔多斯市', 'eedss', 150600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150700', '150000', 2, '150700', '呼伦贝尔市', 'hlbes', 150700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150800', '150000', 2, '150800', '巴彦淖尔市', 'bynes', 150800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('150900', '150000', 2, '150900', '乌兰察布市', 'wlcbs', 150900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152200', '150000', 2, '152200', '兴安盟', 'xam', 152200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152500', '150000', 2, '152500', '锡林郭勒盟', 'xlglm', 152500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('152900', '150000', 2, '152900', '阿拉善盟', 'alsm', 152900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210000', '0', 1, '210000', '辽宁省', 'lns', 210000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210100', '210000', 2, '210100', '沈阳市', 'sys', 210100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210200', '210000', 2, '210200', '大连市', 'dls', 210200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210300', '210000', 2, '210300', '鞍山市', 'ass', 210300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210400', '210000', 2, '210400', '抚顺市', 'fss', 210400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210500', '210000', 2, '210500', '本溪市', 'bxs', 210500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210600', '210000', 2, '210600', '丹东市', 'dds', 210600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210700', '210000', 2, '210700', '锦州市', 'jzs', 210700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210800', '210000', 2, '210800', '营口市', 'yks', 210800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('210900', '210000', 2, '210900', '阜新市', 'fxs', 210900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211000', '210000', 2, '211000', '辽阳市', 'lys', 211000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211100', '210000', 2, '211100', '盘锦市', 'pjs', 211100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211200', '210000', 2, '211200', '铁岭市', 'tls', 211200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211300', '210000', 2, '211300', '朝阳市', 'zys', 211300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('211400', '210000', 2, '211400', '葫芦岛市', 'hlds', 211400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220000', '0', 1, '220000', '吉林省', 'jls', 220000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220100', '220000', 2, '220100', '长春市', 'zcs', 220100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220200', '220000', 2, '220200', '吉林市', 'jls', 220200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220300', '220000', 2, '220300', '四平市', 'sps', 220300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220400', '220000', 2, '220400', '辽源市', 'lys', 220400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220500', '220000', 2, '220500', '通化市', 'ths', 220500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220600', '220000', 2, '220600', '白山市', 'bss', 220600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220700', '220000', 2, '220700', '松原市', 'sys', 220700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('220800', '220000', 2, '220800', '白城市', 'bcs', 220800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('222400', '220000', 2, '222400', '延边朝鲜族自治州', 'ybzxzzzz', 222400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230000', '0', 1, '230000', '黑龙江省', 'hljs', 230000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230100', '230000', 2, '230100', '哈尔滨市', 'hebs', 230100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230200', '230000', 2, '230200', '齐齐哈尔市', 'qqhes', 230200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230300', '230000', 2, '230300', '鸡西市', 'jxs', 230300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230400', '230000', 2, '230400', '鹤岗市', 'hgs', 230400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230500', '230000', 2, '230500', '双鸭山市', 'syss', 230500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230600', '230000', 2, '230600', '大庆市', 'dqs', 230600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230700', '230000', 2, '230700', '伊春市', 'ycs', 230700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230800', '230000', 2, '230800', '佳木斯市', 'jmss', 230800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('230900', '230000', 2, '230900', '七台河市', 'qths', 230900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231000', '230000', 2, '231000', '牡丹江市', 'mdjs', 231000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231100', '230000', 2, '231100', '黑河市', 'hhs', 231100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('231200', '230000', 2, '231200', '绥化市', 'shs', 231200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('232700', '230000', 2, '232700', '大兴安岭地区', 'dxaldq', 232700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310000', '0', 1, '310000', '上海', 'sh', 310000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('310100', '310000', 2, '310100', '上海市', 'shs', 310100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320000', '0', 1, '320000', '江苏省', 'jss', 320000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320100', '320000', 2, '320100', '南京市', 'njs', 320100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320200', '320000', 2, '320200', '无锡市', 'wxs', 320200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320300', '320000', 2, '320300', '徐州市', 'xzs', 320300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320400', '320000', 2, '320400', '常州市', 'czs', 320400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320500', '320000', 2, '320500', '苏州市', 'szs', 320500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320600', '320000', 2, '320600', '南通市', 'nts', 320600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320700', '320000', 2, '320700', '连云港市', 'lygs', 320700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320800', '320000', 2, '320800', '淮安市', 'has', 320800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('320900', '320000', 2, '320900', '盐城市', 'ycs', 320900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321000', '320000', 2, '321000', '扬州市', 'yzs', 321000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321100', '320000', 2, '321100', '镇江市', 'zjs', 321100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321200', '320000', 2, '321200', '泰州市', 'tzs', 321200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('321300', '320000', 2, '321300', '宿迁市', 'sqs', 321300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330000', '0', 1, '330000', '浙江省', 'zjs', 330000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330100', '330000', 2, '330100', '杭州市', 'hzs', 330100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330200', '330000', 2, '330200', '宁波市', 'nbs', 330200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330300', '330000', 2, '330300', '温州市', 'wzs', 330300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330400', '330000', 2, '330400', '嘉兴市', 'jxs', 330400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330500', '330000', 2, '330500', '湖州市', 'hzs', 330500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330600', '330000', 2, '330600', '绍兴市', 'sxs', 330600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330700', '330000', 2, '330700', '金华市', 'jhs', 330700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330800', '330000', 2, '330800', '衢州市', 'qzs', 330800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('330900', '330000', 2, '330900', '舟山市', 'zss', 330900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331000', '330000', 2, '331000', '台州市', 'tzs', 331000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('331100', '330000', 2, '331100', '丽水市', 'lss', 331100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340000', '0', 1, '340000', '安徽省', 'ahs', 340000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340100', '340000', 2, '340100', '合肥市', 'hfs', 340100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340200', '340000', 2, '340200', '芜湖市', 'whs', 340200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340300', '340000', 2, '340300', '蚌埠市', 'bbs', 340300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340400', '340000', 2, '340400', '淮南市', 'hns', 340400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340500', '340000', 2, '340500', '马鞍山市', 'mass', 340500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340600', '340000', 2, '340600', '淮北市', 'hbs', 340600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340700', '340000', 2, '340700', '铜陵市', 'tls', 340700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('340800', '340000', 2, '340800', '安庆市', 'aqs', 340800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341000', '340000', 2, '341000', '黄山市', 'hss', 341000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341100', '340000', 2, '341100', '滁州市', 'czs', 341100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341200', '340000', 2, '341200', '阜阳市', 'fys', 341200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341300', '340000', 2, '341300', '宿州市', 'szs', 341300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341500', '340000', 2, '341500', '六安市', 'las', 341500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341600', '340000', 2, '341600', '亳州市', 'bzs', 341600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341700', '340000', 2, '341700', '池州市', 'czs', 341700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('341800', '340000', 2, '341800', '宣城市', 'xcs', 341800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350000', '0', 1, '350000', '福建省', 'fjs', 350000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350100', '350000', 2, '350100', '福州市', 'fzs', 350100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350200', '350000', 2, '350200', '厦门市', 'xms', 350200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350300', '350000', 2, '350300', '莆田市', 'pts', 350300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350400', '350000', 2, '350400', '三明市', 'sms', 350400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350500', '350000', 2, '350500', '泉州市', 'qzs', 350500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350600', '350000', 2, '350600', '漳州市', 'zzs', 350600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350700', '350000', 2, '350700', '南平市', 'nps', 350700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350800', '350000', 2, '350800', '龙岩市', 'lys', 350800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('350900', '350000', 2, '350900', '宁德市', 'nds', 350900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360000', '0', 1, '360000', '江西省', 'jxs', 360000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360100', '360000', 2, '360100', '南昌市', 'ncs', 360100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360200', '360000', 2, '360200', '景德镇市', 'jdzs', 360200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360300', '360000', 2, '360300', '萍乡市', 'pxs', 360300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360400', '360000', 2, '360400', '九江市', 'jjs', 360400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360500', '360000', 2, '360500', '新余市', 'xys', 360500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360600', '360000', 2, '360600', '鹰潭市', 'yts', 360600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360700', '360000', 2, '360700', '赣州市', 'gzs', 360700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360800', '360000', 2, '360800', '吉安市', 'jas', 360800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('360900', '360000', 2, '360900', '宜春市', 'ycs', 360900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361000', '360000', 2, '361000', '抚州市', 'fzs', 361000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('361100', '360000', 2, '361100', '上饶市', 'srs', 361100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370000', '0', 1, '370000', '山东省', 'sds', 370000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370100', '370000', 2, '370100', '济南市', 'jns', 370100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370200', '370000', 2, '370200', '青岛市', 'qds', 370200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370300', '370000', 2, '370300', '淄博市', 'zbs', 370300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370400', '370000', 2, '370400', '枣庄市', 'zzs', 370400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370500', '370000', 2, '370500', '东营市', 'dys', 370500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370600', '370000', 2, '370600', '烟台市', 'yts', 370600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370700', '370000', 2, '370700', '潍坊市', 'wfs', 370700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370800', '370000', 2, '370800', '济宁市', 'jns', 370800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('370900', '370000', 2, '370900', '泰安市', 'tas', 370900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371000', '370000', 2, '371000', '威海市', 'whs', 371000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371100', '370000', 2, '371100', '日照市', 'rzs', 371100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371200', '370000', 2, '371200', '莱芜市', 'lws', 371200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371300', '370000', 2, '371300', '临沂市', 'lys', 371300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371400', '370000', 2, '371400', '德州市', 'dzs', 371400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371500', '370000', 2, '371500', '聊城市', 'lcs', 371500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371600', '370000', 2, '371600', '滨州市', 'bzs', 371600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('371700', '370000', 2, '371700', '菏泽市', 'hzs', 371700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410000', '0', 1, '410000', '河南省', 'hns', 410000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410100', '410000', 2, '410100', '郑州市', 'zzs', 410100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410200', '410000', 2, '410200', '开封市', 'kfs', 410200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410300', '410000', 2, '410300', '洛阳市', 'lys', 410300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410400', '410000', 2, '410400', '平顶山市', 'pdss', 410400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410500', '410000', 2, '410500', '安阳市', 'ays', 410500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410600', '410000', 2, '410600', '鹤壁市', 'hbs', 410600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410700', '410000', 2, '410700', '新乡市', 'xxs', 410700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410800', '410000', 2, '410800', '焦作市', 'jzs', 410800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410881', '410000', 2, '410881', '济源市', 'jys', 410881, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('410900', '410000', 2, '410900', '濮阳市', 'pys', 410900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411000', '410000', 2, '411000', '许昌市', 'xcs', 411000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411100', '410000', 2, '411100', '漯河市', 'lhs', 411100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411200', '410000', 2, '411200', '三门峡市', 'smxs', 411200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411300', '410000', 2, '411300', '南阳市', 'nys', 411300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411400', '410000', 2, '411400', '商丘市', 'sqs', 411400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411500', '410000', 2, '411500', '信阳市', 'xys', 411500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411600', '410000', 2, '411600', '周口市', 'zks', 411600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('411700', '410000', 2, '411700', '驻马店市', 'zmds', 411700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420000', '0', 1, '420000', '湖北省', 'hbs', 420000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420100', '420000', 2, '420100', '武汉市', 'whs', 420100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420200', '420000', 2, '420200', '黄石市', 'hss', 420200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420300', '420000', 2, '420300', '十堰市', 'sys', 420300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420500', '420000', 2, '420500', '宜昌市', 'ycs', 420500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420600', '420000', 2, '420600', '襄阳市', 'xys', 420600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420700', '420000', 2, '420700', '鄂州市', 'ezs', 420700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420800', '420000', 2, '420800', '荆门市', 'jms', 420800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('420900', '420000', 2, '420900', '孝感市', 'xgs', 420900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421000', '420000', 2, '421000', '荆州市', 'jzs', 421000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421100', '420000', 2, '421100', '黄冈市', 'hgs', 421100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421200', '420000', 2, '421200', '咸宁市', 'xns', 421200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('421300', '420000', 2, '421300', '随州市', 'szs', 421300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('422800', '420000', 2, '422800', '恩施土家族苗族自治州', 'estjzmzzzz', 422800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430000', '0', 1, '430000', '湖南省', 'hns', 430000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430100', '430000', 2, '430100', '长沙市', 'zss', 430100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430200', '430000', 2, '430200', '株洲市', 'zzs', 430200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430300', '430000', 2, '430300', '湘潭市', 'xts', 430300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430400', '430000', 2, '430400', '衡阳市', 'hys', 430400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430500', '430000', 2, '430500', '邵阳市', 'sys', 430500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430600', '430000', 2, '430600', '岳阳市', 'yys', 430600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430700', '430000', 2, '430700', '常德市', 'cds', 430700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430800', '430000', 2, '430800', '张家界市', 'zjjs', 430800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('430900', '430000', 2, '430900', '益阳市', 'yys', 430900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431000', '430000', 2, '431000', '郴州市', 'czs', 431000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431100', '430000', 2, '431100', '永州市', 'yzs', 431100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431200', '430000', 2, '431200', '怀化市', 'hhs', 431200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('431300', '430000', 2, '431300', '娄底市', 'lds', 431300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('433100', '430000', 2, '433100', '湘西土家族苗族自治州', 'xxtjzmzzzz', 433100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440000', '0', 1, '440000', '广东省', 'gds', 440000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440100', '440000', 2, '440100', '广州市', 'gzs', 440100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440200', '440000', 2, '440200', '韶关市', 'sgs', 440200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440300', '440000', 2, '440300', '深圳市', 'szs', 440300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440400', '440000', 2, '440400', '珠海市', 'zhs', 440400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440500', '440000', 2, '440500', '汕头市', 'sts', 440500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440600', '440000', 2, '440600', '佛山市', 'fss', 440600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440700', '440000', 2, '440700', '江门市', 'jms', 440700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440800', '440000', 2, '440800', '湛江市', 'zjs', 440800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('440900', '440000', 2, '440900', '茂名市', 'mms', 440900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441200', '440000', 2, '441200', '肇庆市', 'zqs', 441200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441300', '440000', 2, '441300', '惠州市', 'hzs', 441300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441400', '440000', 2, '441400', '梅州市', 'mzs', 441400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441500', '440000', 2, '441500', '汕尾市', 'sws', 441500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441600', '440000', 2, '441600', '河源市', 'hys', 441600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441700', '440000', 2, '441700', '阳江市', 'yjs', 441700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('441800', '440000', 2, '441800', '清远市', 'qys', 441800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445100', '440000', 2, '445100', '潮州市', 'czs', 445100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445200', '440000', 2, '445200', '揭阳市', 'jys', 445200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('445300', '440000', 2, '445300', '云浮市', 'yfs', 445300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450000', '0', 1, '450000', '广西壮族自治区', 'gxzzzzq', 450000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450100', '450000', 2, '450100', '南宁市', 'nns', 450100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450200', '450000', 2, '450200', '柳州市', 'lzs', 450200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450300', '450000', 2, '450300', '桂林市', 'gls', 450300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450400', '450000', 2, '450400', '梧州市', 'wzs', 450400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450500', '450000', 2, '450500', '北海市', 'bhs', 450500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450600', '450000', 2, '450600', '防城港市', 'fcgs', 450600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450700', '450000', 2, '450700', '钦州市', 'qzs', 450700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450800', '450000', 2, '450800', '贵港市', 'ggs', 450800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('450900', '450000', 2, '450900', '玉林市', 'yls', 450900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451000', '450000', 2, '451000', '百色市', 'bss', 451000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451100', '450000', 2, '451100', '贺州市', 'hzs', 451100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451200', '450000', 2, '451200', '河池市', 'hcs', 451200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451300', '450000', 2, '451300', '来宾市', 'lbs', 451300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('451400', '450000', 2, '451400', '崇左市', 'czs', 451400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460000', '0', 1, '460000', '海南省', 'hns', 460000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('460100', '460000', 2, '460100', '海口市', 'hks', 460100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500000', '0', 1, '500000', '重庆', 'zq', 500000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('500100', '500000', 2, '500100', '重庆市', 'zqs', 500100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510000', '0', 1, '510000', '四川省', 'scs', 510000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510100', '510000', 2, '510100', '成都市', 'cds', 510100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510300', '510000', 2, '510300', '自贡市', 'zgs', 510300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510400', '510000', 2, '510400', '攀枝花市', 'pzhs', 510400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510500', '510000', 2, '510500', '泸州市', 'lzs', 510500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510600', '510000', 2, '510600', '德阳市', 'dys', 510600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510700', '510000', 2, '510700', '绵阳市', 'mys', 510700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510800', '510000', 2, '510800', '广元市', 'gys', 510800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('510900', '510000', 2, '510900', '遂宁市', 'sns', 510900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511000', '510000', 2, '511000', '内江市', 'njs', 511000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511100', '510000', 2, '511100', '乐山市', 'yss', 511100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511300', '510000', 2, '511300', '南充市', 'ncs', 511300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511400', '510000', 2, '511400', '眉山市', 'mss', 511400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511500', '510000', 2, '511500', '宜宾市', 'ybs', 511500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511600', '510000', 2, '511600', '广安市', 'gas', 511600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511700', '510000', 2, '511700', '达州市', 'dzs', 511700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511800', '510000', 2, '511800', '雅安市', 'yas', 511800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('511900', '510000', 2, '511900', '巴中市', 'bzs', 511900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('512000', '510000', 2, '512000', '资阳市', 'zys', 512000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513200', '510000', 2, '513200', '阿坝藏族羌族自治州', 'abzzqzzzz', 513200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513300', '510000', 2, '513300', '甘孜藏族自治州', 'gzzzzzz', 513300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('513400', '510000', 2, '513400', '凉山彝族自治州', 'lsyzzzz', 513400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520000', '0', 1, '520000', '贵州省', 'gzs', 520000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520100', '520000', 2, '520100', '贵阳市', 'gys', 520100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520200', '520000', 2, '520200', '六盘水市', 'lpss', 520200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520300', '520000', 2, '520300', '遵义市', 'zys', 520300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('520400', '520000', 2, '520400', '安顺市', 'ass', 520400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522200', '520000', 2, '522200', '铜仁市', 'trs', 522200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522300', '520000', 2, '522300', '黔西南布依族苗族自治州', 'qxnbyzmzzzz', 522300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522400', '520000', 2, '522400', '毕节市', 'bjs', 522400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522600', '520000', 2, '522600', '黔东南苗族侗族自治州', 'qdnmztzzzz', 522600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('522700', '520000', 2, '522700', '黔南布依族苗族自治州', 'qnbyzmzzzz', 522700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530000', '0', 1, '530000', '云南省', 'yns', 530000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530100', '530000', 2, '530100', '昆明市', 'kms', 530100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530300', '530000', 2, '530300', '曲靖市', 'qjs', 530300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530400', '530000', 2, '530400', '玉溪市', 'yxs', 530400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530500', '530000', 2, '530500', '保山市', 'bss', 530500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530600', '530000', 2, '530600', '昭通市', 'zts', 530600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530700', '530000', 2, '530700', '丽江市', 'ljs', 530700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530800', '530000', 2, '530800', '普洱市', 'pes', 530800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('530900', '530000', 2, '530900', '临沧市', 'lcs', 530900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532300', '530000', 2, '532300', '楚雄彝族自治州', 'cxyzzzz', 532300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532500', '530000', 2, '532500', '红河哈尼族彝族自治州', 'hhhnzyzzzz', 532500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532600', '530000', 2, '532600', '文山壮族苗族自治州', 'wszzmzzzz', 532600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532800', '530000', 2, '532800', '西双版纳傣族自治州', 'xsbndzzzz', 532800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('532900', '530000', 2, '532900', '大理白族自治州', 'dlbzzzz', 532900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533100', '530000', 2, '533100', '德宏傣族景颇族自治州', 'dhdzjpzzzz', 533100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533300', '530000', 2, '533300', '怒江傈僳族自治州', 'njlszzzz', 533300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('533400', '530000', 2, '533400', '迪庆藏族自治州', 'dqzzzzz', 533400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540000', '0', 1, '540000', '西藏自治区', 'xzzzq', 540000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('540100', '540000', 2, '540100', '拉萨市', 'lss', 540100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542100', '540000', 2, '542100', '昌都地区', 'cddq', 542100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542200', '540000', 2, '542200', '山南地区', 'sndq', 542200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542300', '540000', 2, '542300', '日喀则地区', 'rkzdq', 542300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542400', '540000', 2, '542400', '那曲地区', 'nqdq', 542400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542500', '540000', 2, '542500', '阿里地区', 'aldq', 542500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('542600', '540000', 2, '542600', '林芝地区', 'lzdq', 542600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610000', '0', 1, '610000', '陕西省', 'sxs', 610000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610100', '610000', 2, '610100', '西安市', 'xas', 610100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610200', '610000', 2, '610200', '铜川市', 'tcs', 610200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610300', '610000', 2, '610300', '宝鸡市', 'bjs', 610300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610400', '610000', 2, '610400', '咸阳市', 'xys', 610400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610500', '610000', 2, '610500', '渭南市', 'wns', 610500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610600', '610000', 2, '610600', '延安市', 'yas', 610600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610700', '610000', 2, '610700', '汉中市', 'hzs', 610700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610800', '610000', 2, '610800', '榆林市', 'yls', 610800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('610900', '610000', 2, '610900', '安康市', 'aks', 610900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('611000', '610000', 2, '611000', '商洛市', 'sls', 611000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620000', '0', 1, '620000', '甘肃省', 'gss', 620000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620100', '620000', 2, '620100', '兰州市', 'lzs', 620100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620200', '620000', 2, '620200', '嘉峪关市', 'jygs', 620200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620300', '620000', 2, '620300', '金昌市', 'jcs', 620300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620400', '620000', 2, '620400', '白银市', 'bys', 620400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620500', '620000', 2, '620500', '天水市', 'tss', 620500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620600', '620000', 2, '620600', '武威市', 'wws', 620600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620700', '620000', 2, '620700', '张掖市', 'zys', 620700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620800', '620000', 2, '620800', '平凉市', 'pls', 620800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('620900', '620000', 2, '620900', '酒泉市', 'jqs', 620900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621000', '620000', 2, '621000', '庆阳市', 'qys', 621000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621100', '620000', 2, '621100', '定西市', 'dxs', 621100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('621200', '620000', 2, '621200', '陇南市', 'lns', 621200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('622900', '620000', 2, '622900', '临夏回族自治州', 'lxhzzzz', 622900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('623000', '620000', 2, '623000', '甘南藏族自治州', 'gnzzzzz', 623000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630000', '0', 1, '630000', '青海省', 'qhs', 630000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('630100', '630000', 2, '630100', '西宁市', 'xns', 630100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632100', '630000', 2, '632100', '海东市', 'hds', 632100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632200', '630000', 2, '632200', '海北藏族自治州', 'hbzzzzz', 632200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632300', '630000', 2, '632300', '黄南藏族自治州', 'hnzzzzz', 632300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632500', '630000', 2, '632500', '海南藏族自治州', 'hnzzzzz', 632500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632600', '630000', 2, '632600', '果洛藏族自治州', 'glzzzzz', 632600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632700', '630000', 2, '632700', '玉树藏族自治州', 'yszzzzz', 632700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('632800', '630000', 2, '632800', '海西蒙古族藏族自治州', 'hxmgzzzzzz', 632800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640000', '0', 1, '640000', '宁夏回族自治区', 'nxhzzzq', 640000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640100', '640000', 2, '640100', '银川市', 'ycs', 640100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640200', '640000', 2, '640200', '石嘴山市', 'szss', 640200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640300', '640000', 2, '640300', '吴忠市', 'wzs', 640300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640400', '640000', 2, '640400', '固原市', 'gys', 640400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('640500', '640000', 2, '640500', '中卫市', 'zws', 640500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650000', '0', 1, '650000', '新疆维吾尔自治区', 'xjwwezzq', 650000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650100', '650000', 2, '650100', '乌鲁木齐市', 'wlmqs', 650100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('650200', '650000', 2, '650200', '克拉玛依市', 'klmys', 650200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652100', '650000', 2, '652100', '吐鲁番地区', 'tlfdq', 652100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652200', '650000', 2, '652200', '哈密地区', 'hmdq', 652200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652300', '650000', 2, '652300', '昌吉回族自治州', 'cjhzzzz', 652300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652700', '650000', 2, '652700', '博尔塔拉蒙古自治州', 'betlmgzzz', 652700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652800', '650000', 2, '652800', '巴音郭楞蒙古自治州', 'byglmgzzz', 652800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('652900', '650000', 2, '652900', '阿克苏地区', 'aksdq', 652900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653000', '650000', 2, '653000', '克孜勒苏柯尔克孜自治州', 'kzlskekzzzz', 653000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653100', '650000', 2, '653100', '喀什地区', 'ksdq', 653100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('653200', '650000', 2, '653200', '和田地区', 'htdq', 653200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654000', '650000', 2, '654000', '伊犁哈萨克自治州', 'ylhskzzz', 654000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654200', '650000', 2, '654200', '塔城地区', 'tcdq', 654200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('654300', '650000', 2, '654300', '阿勒泰地区', 'altdq', 654300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('810000', '0', 1, '810000', '香港特别行政区', 'xgtbxzq', 810000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('810100', '810000', 2, '810100', '香港岛', 'xgd', 810100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('810200', '810000', 2, '810200', '九龙', 'jl', 810200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('810300', '810000', 2, '810300', '新界', 'xj', 810300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('820000', '0', 1, '820000', '澳门特别行政区', 'amtbxzq', 820000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('820100', '820000', 2, '820100', '澳门半岛', 'ambd', 820100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('820300', '820000', 2, '820300', '路环岛', 'lhd', 820300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('820400', '820000', 2, '820400', '凼仔岛', 'dzd', 820400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830000', '0', 1, '830000', '台湾省', 'tws', 830000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830100', '830000', 2, '830100', '台北市', 'tbs', 830100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830200', '830000', 2, '830200', '高雄市', 'gxs', 830200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830300', '830000', 2, '830300', '台南市', 'tns', 830300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830400', '830000', 2, '830400', '台中市', 'tzs', 830400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830500', '830000', 2, '830500', '南投县', 'ntx', 830500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830600', '830000', 2, '830600', '基隆市', 'jls', 830600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830700', '830000', 2, '830700', '新竹市', 'xzs', 830700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830800', '830000', 2, '830800', '嘉义市', 'jys', 830800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('830900', '830000', 2, '830900', '宜兰县', 'ylx', 830900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831000', '830000', 2, '831000', '新竹县', 'xzx', 831000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831100', '830000', 2, '831100', '桃园县', 'tyx', 831100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831200', '830000', 2, '831200', '苗栗县', 'mlx', 831200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831300', '830000', 2, '831300', '彰化县', 'zhx', 831300, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831400', '830000', 2, '831400', '嘉义县', 'jyx', 831400, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831500', '830000', 2, '831500', '云林县', 'ylx', 831500, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831600', '830000', 2, '831600', '屏东县', 'pdx', 831600, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831700', '830000', 2, '831700', '台东县', 'tdx', 831700, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831800', '830000', 2, '831800', '花莲县', 'hlx', 831800, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('831900', '830000', 2, '831900', '澎湖县', 'phx', 831900, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('832000', '830000', 2, '832000', '新北市', 'xbs', 832000, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('832100', '830000', 2, '832100', '台中县', 'tzx', 832100, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_area` VALUES ('832200', '830000', 2, '832200', '连江县', 'ljx', 832200, 0, 1, NULL, '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_dbbackup
-- ----------------------------
DROP TABLE IF EXISTS `sys_dbbackup`;
CREATE TABLE `sys_dbbackup`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_BackupType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DbName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FileName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FileSize` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FilePath` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_BackupTime` timestamp(0) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_filterip
-- ----------------------------
DROP TABLE IF EXISTS `sys_filterip`;
CREATE TABLE `sys_filterip`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_Type` tinyint(1) NULL DEFAULT NULL,
  `F_StartIP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_EndIP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_filterip
-- ----------------------------
INSERT INTO `sys_filterip` VALUES ('4e035f2b-a03b-49b5-a38d-1c6d211a2a04', 1, '192.168.1.1', '192.168.1.10', NULL, 0, 0, '测试', '2016-07-18 17:51:06', NULL, '2020-04-03 14:45:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_filterip` VALUES ('b3fbe66f-82cd-4f4a-ada3-61eb5a2d9eee', 0, '192.168.0.1', '192.168.0.255', NULL, 0, 0, NULL, '2016-07-18 17:52:47', NULL, '2020-04-16 14:57:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);

-- ----------------------------
-- Table structure for sys_items
-- ----------------------------
DROP TABLE IF EXISTS `sys_items`;
CREATE TABLE `sys_items`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IsTree` tinyint(1) NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Items`(`F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_items
-- ----------------------------
INSERT INTO `sys_items` VALUES ('00F76465-DBBA-484A-B75C-E81DEE9313E6', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'Education', '学历', 0, 2, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('0DF5B725-5FB8-487F-B0E4-BC563A77EB04', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'DbType', '数据库类型', 0, 2, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('15023A4E-4856-44EB-BE71-36A106E2AA59', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '103', '民族', 0, 2, 14, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('2748F35F-4EE2-417C-A907-3453146AAF67', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'Certificate', '证件名称', 0, 2, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('77070117-3F1A-41BA-BF81-B8B85BF10D5E', '0', 'Sys_Items', '通用字典', 1, 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('8CEB2F71-026C-4FA6-9A61-378127AE7320', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '102', '生育', 0, 2, 13, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'AuditState', '审核状态', 0, 2, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('9a7079bd-0660-4549-9c2d-db5e8616619f', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'DbLogType', '系统日志', 0, 2, 16, 0, 1, NULL, '2016-07-19 17:09:45', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'OrganizeCategory', '机构分类', 0, 2, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('BDD797C3-2323-4868-9A63-C8CC3437AEAA', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '104', '性别', 0, 2, 15, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', 'RoleType', '角色类型', 0, 2, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_items` VALUES ('FA7537E2-1C64-4431-84BF-66158DD63269', '77070117-3F1A-41BA-BF81-B8B85BF10D5E', '101', '婚姻', 0, 2, 12, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_itemsdetail
-- ----------------------------
DROP TABLE IF EXISTS `sys_itemsdetail`;
CREATE TABLE `sys_itemsdetail`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ItemId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ItemCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ItemName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SimpleSpelling` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IsDefault` tinyint(1) NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_ItemsDetail`(`F_ItemId`, `F_ItemCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_itemsdetail
-- ----------------------------
INSERT INTO `sys_itemsdetail` VALUES ('0096ad81-4317-486e-9144-a6a02999ff19', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '4', '护照', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('04aba88d-f09b-46c6-bd90-a38471399b0e', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, '2', '业务角色', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('1950efdf-8685-4341-8d2c-ac85ac7addd0', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '1', '小学', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('19EE595A-E775-409D-A48F-B33CF9F262C7', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'WorkGroup', '小组', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('24e39617-f04e-4f6f-9209-ad71e870e7c6', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Submit', '提交', NULL, 0, NULL, 7, 0, 1, NULL, '2016-07-19 17:11:19', NULL, '2016-07-19 18:20:54', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('27e85cb8-04e7-447b-911d-dd1e97dfab83', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, 'Oracle', 'Oracle', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('2B540AC5-6E64-4688-BB60-E0C01DFA982C', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'SubCompany', '子公司', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('2C3715AC-16F7-48FC-AB40-B0931DB1E729', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Area', '区域', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('34222d46-e0c6-446e-8150-dbefc47a1d5f', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '6', '本科', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('34a642b2-44d4-485f-b3fc-6cce24f68b0f', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, 'MySql', 'MySql', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('355ad7a4-c4f8-4bd3-9c72-ff07983da0f0', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '9', '其他', NULL, 0, NULL, 9, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('392f88a8-02c2-49eb-8aed-b2acf474272a', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Update', '修改', NULL, 0, NULL, 6, 0, 1, NULL, '2016-07-19 17:11:14', NULL, '2016-07-19 18:20:49', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('3c884a03-4f34-4150-b134-966387f1de2a', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Exit', '退出', NULL, 0, NULL, 2, 0, 1, NULL, '2016-07-19 17:10:49', NULL, '2016-07-19 18:20:23', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '7', '硕士', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('41053517-215d-4e11-81cd-367c0e9578d7', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '3', '通过', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('433511a9-78bd-41a0-ab25-e4d4b3423055', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '2', '初中', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('486a82e3-1950-425e-b2ce-b5d98f33016a', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '5', '大专', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('48c4e0f5-f570-4601-8946-6078762db3bf', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '3', '军官证', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('49300258-1227-4b85-b6a2-e948dbbe57a4', '15023A4E-4856-44EB-BE71-36A106E2AA59', NULL, '汉族', '汉族', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('49b68663-ad01-4c43-b084-f98e3e23fee8', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '7', '废弃', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('4c2f2428-2e00-4336-b9ce-5a61f24193f6', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '2', '士兵证', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('582e0b66-2ee9-4885-9f0c-3ce3ebf96e12', '8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, '1', '已育', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('5d6def0e-e2a7-48eb-b43c-cc3631f60dd7', 'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, '1', '男', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('63acf96d-6115-4d76-a994-438f59419aad', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '5', '退回', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('643209c8-931b-4641-9e04-b8bdd11800af', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Login', '登录', NULL, 0, NULL, 1, 0, 1, NULL, '2016-07-19 17:10:39', NULL, '2016-07-19 18:20:17', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('738edf2a-d59f-4992-97ef-d847db23bcb8', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '1', '已婚', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('795f2695-497a-4f5e-ab1d-706095c1edb9', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Other', '其他', NULL, 0, NULL, 0, 0, 1, NULL, '2016-07-19 17:10:33', NULL, '2016-07-19 18:20:09', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '1', '草稿', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('7c1135be-0148-43eb-ae49-62a1e16ebbe3', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '5', '其他', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('7fc8fa11-4acf-409a-a771-aaf1eb81e814', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Exception', '异常', NULL, 0, NULL, 8, 0, 1, NULL, '2016-07-19 17:11:25', NULL, '2016-07-19 18:21:01', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('822baf7c-abdb-4257-9b78-1f550806f544', 'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, '0', '女', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('8b7b38bf-07c5-4f71-a853-41c5add4a94e', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '6', '完成', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('930b8de2-049f-4753-b9fd-87f484911ee4', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '8', '博士', NULL, 0, NULL, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('9b6a2225-6138-4cf2-9845-1bbecdf9b3ed', '8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, '3', '其他', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Delete', '删除', NULL, 0, NULL, 5, 0, 1, NULL, '2016-07-19 17:11:09', NULL, '2016-07-19 18:20:43', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a4974810-d88d-4d54-82cc-fd779875478f', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '4', '中专', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('A64EBB80-6A24-48AF-A10E-B6A532C32CA6', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Department', '部门', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a6f271f9-8653-4c5c-86cf-4cd00324b3c3', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '4', '丧偶', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('a7c4aba2-a891-4558-9b0a-bd7a1100a645', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '2', '未婚', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('acb128a6-ff63-4e25-b1e8-0a336ed3ab18', '00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, '3', '高中', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('ace2d5e8-56d4-4c8b-8409-34bc272df404', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '5', '其它', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Group', '集团', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, '3', '其他角色', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('ccc8e274-75da-4eb8-bed0-69008ab7c41c', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Visit', '访问', NULL, 0, NULL, 3, 0, 1, NULL, '2016-07-19 17:10:55', NULL, '2016-07-19 18:20:29', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('ce340c73-5048-4940-b86e-e3b3d53fdb2c', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '2', '提交', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('D082BDB9-5C34-49BF-BD51-4E85D7BFF646', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'Company', '公司', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('D1F439B9-D80E-4547-9EF0-163391854AB5', '9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, 'SubDepartment', '子部门', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('d69cb819-2bb3-4e1d-9917-33b9a439233d', '2748F35F-4EE2-417C-A907-3453146AAF67', NULL, '1', '身份证', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('de2167f3-40fe-4bf7-b8cb-5b1c554bad7a', '8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, '2', '未育', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9', '954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, '4', '待审', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('e5079bae-a8c0-4209-9019-6a2b4a3a7dac', 'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, '1', '系统角色', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('e545061c-93fd-4ca2-ab29-b43db9db798b', '9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, 'Create', '新增', NULL, 0, NULL, 4, 0, 1, NULL, '2016-07-19 17:11:03', NULL, '2016-07-19 18:20:35', NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('f9609400-7caf-49af-ae3c-7671a9292fb3', 'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, '3', '离异', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_itemsdetail` VALUES ('fa6c1873-888c-4b70-a2cc-59fccbb22078', '0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, 'SqlServer', 'SqlServer', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_Date` timestamp(0) NULL DEFAULT NULL,
  `F_Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_NickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IPAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IPAddressName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ModuleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Result` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_KeyValue` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('0008ca41-91c1-43a7-abb3-f73036cd1240', '2020-03-31 08:59:50', 'admin', 'admin', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 0, '登录失败，验证码错误，请重新输入', '2020-03-31 08:59:52', NULL, NULL);
INSERT INTO `sys_log` VALUES ('01e8249d-93b2-4095-8a15-c8b75140c46d', '2020-03-31 17:28:34', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 17:28:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('021da30b-d40d-4428-95d4-f6368b0af6d0', '2020-04-14 08:25:45', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 08:25:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('022ca705-e0b2-4fe4-9a35-5c7e5252e79f', '2020-04-09 13:51:41', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 13:51:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('025ee2ac-49ab-4b79-a3e6-36b34a5c8c95', '2020-04-06 15:30:13', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 15:30:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('02afa498-e577-4d7d-a558-f14b56864a61', '2020-04-10 11:14:15', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-10 11:14:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('069d059a-0e98-4adb-afd8-f5787b8c442d', '2020-04-13 13:08:24', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-13 13:08:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('073a99a9-b963-4c5d-b4e0-402eac17a415', '2020-03-31 08:36:46', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 08:36:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('0a09af6e-348c-4f79-bf49-5eaa07ab31e6', '2020-04-15 17:07:54', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 17:07:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('0b13c6d7-a7a6-4588-af47-1613469f91d8', '2020-03-31 08:49:37', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 08:49:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('0b51f375-a55a-42b4-813a-7969736b747d', '2020-04-10 11:13:32', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-10 11:13:32', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('0b7be642-19de-469a-ba76-65eb8bd0cc2a', '2020-04-01 10:46:26', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 10:46:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('0d51f6b1-726a-4177-ac72-e6b6d88fa3aa', '2020-03-31 08:43:55', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 08:43:55', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('0d807f23-70a2-46c3-a45f-343c5766910d', '2020-04-13 15:05:38', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-13 15:05:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('0ec14047-9693-4976-89af-fbfcf936f8e0', '2020-04-01 11:36:54', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 11:36:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('113111dd-a3ba-4c4f-bbe5-7d97e64da553', '2020-04-07 16:13:09', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-07 16:13:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('11d3f55d-a86f-4fb5-b0a7-796d4de44740', '2020-04-01 11:45:04', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-01 11:45:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('13073fae-4acb-4802-be68-3d3f3d90555d', '2020-03-31 10:23:22', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 10:23:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('162a50a2-5187-4caf-932e-84456cc82206', '2020-04-09 13:40:42', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 13:40:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('17363109-4689-46ae-87bb-fda4cb2e5fd2', '2020-04-14 17:05:30', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-14 17:05:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('174285bc-cfba-46c4-bd23-2e50ba2844b3', '2020-04-15 17:07:10', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 17:07:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('1cbf6283-139a-499a-b3a4-40944e9c6257', '2020-04-16 08:30:58', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-16 08:30:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('1df99687-b31a-4eec-a1cf-39e862a41c68', '2020-04-01 16:10:12', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 16:10:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('21e77567-a318-4fc9-8bf7-3c31a242822f', '2020-04-01 16:26:57', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 16:26:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('237a09b6-28bc-4b8a-840e-7ab54a3be53b', '2020-04-15 10:04:14', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 10:04:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('264071e1-093f-4af0-ad3d-65c7d7b71de0', '2020-04-15 14:42:39', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 14:42:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('26ee9d7d-5fba-46d7-95e4-d2f3165da5e9', '2020-04-15 17:06:46', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 17:06:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('27526c7d-49bb-48e7-9fec-ea82792cfe7d', '2020-04-06 12:37:22', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 12:37:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('278dea4d-9bda-443e-afd2-f0d54a38359d', '2020-04-07 15:36:30', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-07 15:36:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('27f54c78-c246-441e-9939-45b630dc0e05', '2020-04-09 17:05:29', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 17:05:29', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('29ea624b-0fe2-4459-8714-33ed636b2a6b', '2020-04-06 11:18:46', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 11:18:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('2a4d5bf1-1703-448e-8fc3-e4dbc662cef1', '2020-04-09 12:52:15', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 12:52:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('2b8784e3-4fe4-40cc-87d1-9de4eae89819', '2020-04-09 16:09:42', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:09:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('2e34ef30-025e-4f20-8f26-11323fd5b1aa', '2020-04-06 11:05:48', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 11:05:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('2ee99f5e-eba4-4388-937f-3930bb42bc97', '2020-04-09 17:08:36', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 17:08:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('2fadae68-0f9a-4703-9fa3-73689d9c8da1', '2020-04-01 11:41:24', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-01 11:41:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('3188d38c-dc2a-41cb-879f-6d85187eb88b', '2020-04-06 11:31:17', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 11:31:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('319f8169-43da-4592-af0d-87b90de88684', '2020-04-10 10:47:44', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-10 10:47:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('3640159a-acf1-4bee-98d3-b20ab59f9542', '2020-04-02 14:36:33', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 14:36:33', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('3788148a-7749-4c98-a022-f5a290a44b35', '2020-04-10 13:25:15', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-10 13:25:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('39913c75-6114-4cf2-a567-974b4d0c0e70', '2020-04-03 16:27:19', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-03 16:27:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('39f67c9d-f815-4db4-824e-7a5d11ca86b8', '2020-04-06 11:31:13', 'admin', 'admin', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 0, '登录失败，验证码错误，请重新输入', '2020-04-06 11:31:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('3c55dbe0-c999-4409-a1f5-c2d99ecc91b8', '2020-04-09 08:44:23', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 08:44:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('435bb6f5-85a3-408c-98a3-43c20236bd52', '2020-03-31 11:24:09', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 11:24:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('4424eb93-1360-4ae5-b921-f1352ddef26c', '2020-04-14 13:31:22', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 13:31:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('45ca6683-490d-494f-bf75-2bf555ecf0eb', '2020-04-15 09:51:02', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 09:51:02', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('47a4a63d-bd62-4c5c-afe7-bca0e8d8dd6d', '2020-03-31 08:59:56', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 08:59:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('4b43b47d-da8c-47be-b83b-efac08fc15e3', '2020-04-10 14:15:34', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-10 14:15:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('4d0b4ad8-4dbd-4242-9f33-95fa40bb9602', '2020-04-03 10:35:04', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-03 10:35:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('4d477fea-af3b-428e-bdb1-411483ac1172', '2020-04-15 17:07:00', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 17:07:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('4f09c140-d962-4543-a751-3499d8fdbf04', '2020-04-09 16:39:58', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:39:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('4fd54938-bc92-4430-a541-9a072816fecf', '2020-04-14 17:05:36', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 17:05:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('55b13226-190f-403e-9765-9200e3191ef2', '2020-04-10 11:13:22', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-10 11:13:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('5cd0ad01-2876-4215-893c-f6db96182155', '2020-03-31 10:01:12', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 10:01:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('5e2d6883-19bf-4d82-8e34-a1d73d8c1ca7', '2020-04-09 16:10:11', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:10:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('5fa60c9d-f373-493e-8783-b0a8f8212edd', '2020-03-31 17:28:28', '超级管理员', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 0, '登录失败，账户不存在，请重新输入', '2020-03-31 17:28:28', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('5faa62aa-dab9-468a-ac69-119c48a13404', '2020-04-06 12:58:06', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 12:58:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('609e0259-00f8-4ea0-b02d-0e0f20ba8178', '2020-04-15 10:04:57', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 10:05:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6416d91f-a891-4e7a-9a81-eb5291ccc14f', '2020-04-03 15:35:12', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-03 15:35:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('664be0ae-2813-484a-b908-495e3e047bbe', '2020-04-10 08:59:21', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-10 08:59:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('68953f8b-af5f-4232-844c-53cbe6f4d02f', '2020-04-01 11:17:58', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-01 11:17:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('69194db5-18ad-4c04-84b7-97c5f1a6b08c', '2020-04-09 16:52:27', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:52:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6cc55f18-d956-47ca-b506-843264c600b3', '2020-04-09 12:33:57', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 12:33:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6d14aab4-e08c-48c5-9758-ffd69d324bdd', '2020-04-09 16:51:09', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:51:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6d38b395-32ad-4fd2-ab5e-420c075f19b6', '2020-04-09 16:58:25', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:58:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6e4c6cee-90b3-4a02-84ed-fab621fa483e', '2020-04-01 10:54:31', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 10:54:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('6f1d68a3-360b-4657-a7fd-9db6e1cf4390', '2020-04-15 14:39:17', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 14:39:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('71f576a5-c5c7-43ce-8e9a-e272522f27da', '2020-04-09 16:49:53', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:49:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('7605b888-4357-4164-a04d-d3f2ed51ffb3', '2020-04-01 15:02:44', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 15:02:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('76dd42e8-ed51-40cd-9b53-79cf49f38927', '2020-04-15 17:20:11', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 17:20:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('7c1e3d86-4bed-4c9d-ba61-d69ce154e1b9', '2020-04-10 13:31:21', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-10 13:31:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('7c81be4c-e290-47be-8de8-3f6c6de3c09a', '2020-04-02 14:11:41', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 14:11:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('7c969b09-a6c4-4c50-a734-e8e280dba88b', '2020-04-09 16:26:50', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:26:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('7ce822ff-a6f3-4a64-8e71-c825ed42e608', '2020-04-09 12:30:42', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 12:30:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('7eb98238-0446-4840-8a97-c5a778d4abf9', '2020-04-09 13:55:11', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 13:55:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('7f9ef674-aa1d-4097-a3a0-825e85873c36', '2020-04-09 13:40:35', 'admin', 'admin', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 0, '登录失败，验证码错误，请重新输入', '2020-04-09 13:40:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('806ad843-661a-4a3a-8640-a90370a5ea10', '2020-04-16 13:56:07', 'admin', '超级管理员', 'Login', '192.168.1.117', '本地局域网', NULL, 'SystemLogin', 1, '登录成功', '2020-04-16 13:56:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('8247800b-9212-4ede-8d3c-f00f6ea83b39', '2020-04-02 14:13:44', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 14:13:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('8331262c-bc35-43ac-885b-e209a7c20d3f', '2020-04-06 11:07:27', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 11:07:28', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('84f40bc7-c0d7-416c-930a-94945056250d', '2020-04-15 16:10:46', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 16:10:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('85376a30-3f14-4366-9610-5df2781c1106', '2020-04-10 13:25:37', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-10 13:25:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('869972d2-e0b8-4700-a1ee-53310b625ed9', '2020-04-01 11:36:50', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-01 11:36:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('87eeb6f4-bccc-42ad-b38b-0d2c591a8591', '2020-04-14 15:38:39', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 15:38:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('895c5942-23c0-4309-ae81-a960905e6a73', '2020-04-09 17:05:49', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 17:05:49', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('8cfbf978-a93f-487f-a8e3-a53c60c9b96d', '2020-04-03 17:26:50', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-03 17:26:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('8e94f79b-c054-49cc-9542-417fc6444622', '2020-04-13 09:23:50', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-13 09:23:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('914c0ec2-1f60-49ba-95b0-a606c5e3e375', '2020-04-10 13:37:59', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-10 13:37:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('915877ae-24eb-4fdb-94ef-d5eec43ee2ed', '2020-04-06 12:49:57', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 12:49:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('94236000-cfcb-48a8-a74f-c5ed56a3d476', '2020-04-02 14:03:48', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 14:03:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('94b7f323-736e-4e40-9026-ef4c3ebed8f0', '2020-04-02 17:17:02', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 17:17:02', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('954df282-d69a-4416-8822-2abcd82c55fd', '2020-03-31 08:55:26', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 08:55:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('95edc581-203b-44f0-8b15-78977732eed2', '2020-04-15 14:43:08', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 14:43:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9815286a-d5dc-43e8-acb6-d566f22c36ef', '2020-04-06 17:10:24', 'admin', 'admin', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 0, '登录失败，验证码错误，请重新输入', '2020-04-06 17:10:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('986976fa-c91e-4c27-bd4f-fc960b24749a', '2020-04-02 16:10:30', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 16:10:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9a28deda-aaa8-4cad-98a0-8bc61444ab00', '2020-04-13 17:12:36', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-13 17:12:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9acb83ed-bbd8-47cf-9f5a-f4012010dacf', '2020-03-31 11:40:43', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 11:40:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9be24ce7-11af-4f0f-91ae-2b73e3be3a10', '2020-04-09 17:17:37', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 17:17:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9ec477c9-1dfd-475f-af42-dc50c32e37cf', '2020-04-09 16:27:48', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:27:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9f17c344-47b6-4ba3-a7b6-de7ab8df28a6', '2020-03-31 11:36:38', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 11:36:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9fa33a26-849e-4c10-980d-ab3b719ff81a', '2020-04-09 10:27:58', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 10:27:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('9fae5851-a66a-469a-9fc9-bec148d642a2', '2020-04-06 17:10:30', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 17:10:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a0316517-0bc4-4475-9576-24a198f28ad6', '2020-04-09 16:24:31', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:24:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a0493229-b060-4c0b-a004-570b305bbe8b', '2020-04-09 16:20:13', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:20:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a27d5787-f9b4-49f1-bffa-c75aa51a4112', '2020-04-02 17:46:10', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 17:46:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a28fae8b-092e-4ce5-b381-ea76fbc334ed', '2020-04-09 17:03:17', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 17:03:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a3ab9a31-39f1-4363-a317-0fbbc9a90ecb', '2020-04-15 17:06:15', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 17:06:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a421c349-bffb-4a66-aeca-5a3b13b0a9c2', '2020-04-03 13:58:20', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-03 13:58:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a65309e4-ceb8-4760-b5ae-cdfc834c83cb', '2020-04-07 13:36:06', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-07 13:36:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a73bdae5-c5be-4a61-a1de-c421aea13b98', '2020-04-14 11:29:38', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 11:29:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('a88984cb-1cde-468a-8532-23f897064907', '2020-04-10 08:58:30', 'admin', 'admin', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 0, '登录失败，验证码错误，请重新输入', '2020-04-10 08:58:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('a91f9e2d-e8b8-47b7-a80e-3f8f7b29659e', '2020-04-14 17:05:19', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-14 17:05:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('aa14c177-2a2a-4050-924f-e1ec4e9f6c1d', '2020-04-09 16:54:22', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:54:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('abef002e-49f8-445b-90b7-9c55ba44440c', '2020-04-07 11:42:37', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-07 11:42:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('ac4f2249-7891-4c16-8d35-496e5d5bb48b', '2020-04-15 17:20:05', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 17:20:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('aedbb97d-ce55-4c9e-956d-b21214f0808a', '2020-04-09 16:13:12', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:13:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b219a7fa-9e32-4cd2-8dd5-a9e87650adef', '2020-04-02 08:34:47', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 08:34:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b24c311f-b228-4b84-83b4-5fcb963c5d69', '2020-04-03 08:34:57', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-03 08:34:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b27db694-cf91-4547-a8fe-c41b4d19ff8f', '2020-04-15 16:10:15', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 16:10:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b4536701-8337-4255-824d-b619c95d0519', '2020-04-10 16:16:14', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-10 16:16:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b5b687ac-5137-490b-9338-a0b3da851329', '2020-04-02 15:26:57', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 15:26:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b817ac0a-6709-42f8-9417-d8c26a5328e2', '2020-04-09 10:24:44', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 10:24:44', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('b850065e-a59b-46b6-ba57-6597997bd70d', '2020-04-01 11:38:41', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-01 11:38:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('ba04ecef-cad1-47c2-9b3d-ca14a6c23faf', '2020-04-01 15:40:52', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 15:40:52', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('bb157d62-20ec-4229-a721-d64c0b21ac09', '2020-03-31 17:07:34', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 17:07:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('bb5e2be7-b8e6-488a-ae62-5485eaba2a13', '2020-04-06 09:10:08', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 09:10:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('bba1eed1-7866-4eff-904c-61e898041833', '2020-04-07 09:41:45', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-07 09:41:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('bd327bcb-b658-4f91-8d54-96224db88e2a', '2020-04-06 14:53:59', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 14:53:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('bd5eb675-0ebe-4c98-a2f5-4130c5663b6d', '2020-04-09 12:55:45', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 12:55:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c1cdaeda-df91-473f-8864-386bb4efdbb2', '2020-04-02 09:26:04', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 09:26:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c31416ef-4ab0-4210-8b25-b39986a49beb', '2020-04-03 16:30:18', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-03 16:30:18', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c365fa9f-7f77-4132-b45b-280ebecf6d6c', '2020-04-07 09:43:12', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-07 09:43:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c39b4be5-ea9f-4ebc-8f83-9ab1fb897264', '2020-03-31 11:39:23', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 11:39:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c3b0f026-f6e5-4425-a5c2-54bf164b9857', '2020-04-01 16:37:39', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 16:37:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c479be5b-7ce2-4374-bb06-b55c5a2340a2', '2020-04-13 15:08:47', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-13 15:08:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c9a1c31b-9148-4c94-8e66-fa1a5182fe4e', '2020-04-10 08:58:38', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-10 08:58:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('c9f074a8-1701-4341-a398-562441764abb', '2020-04-10 13:34:42', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-10 13:34:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('cc1a492a-b384-4cb7-8dfc-7b75c0fa0755', '2020-04-16 10:34:54', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-16 10:34:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('ce3bf546-4aaa-420c-b6a9-f7179ba6b723', '2020-04-15 11:53:22', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 11:53:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('cf83de83-7670-4b8a-a8ab-2bfa452802e4', '2020-04-13 17:26:18', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-13 17:26:18', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('d41a6984-1637-4f5e-a8a1-b2ebb475da08', '2020-04-03 12:43:31', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-03 12:43:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('d691878b-7027-4123-971b-9d78059f35ef', '2020-04-16 08:29:48', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-16 08:29:48', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('dab6877b-2d33-4b92-a2a4-41a752f005cb', '2020-04-09 13:56:13', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 13:56:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('db71945c-74c7-40e4-95e3-4761004164ad', '2020-04-01 11:45:08', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 11:45:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('dcab7f68-e8ce-4999-8cbe-fa3d84e38cd0', '2020-04-09 12:54:59', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 12:54:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('deb4a527-650b-4f9e-a88c-d51ff3ec3fd0', '2020-04-16 14:57:58', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统安全', 1, '访问控制操作,修改操作成功', '2020-04-16 14:57:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'b3fbe66f-82cd-4f4a-ada3-61eb5a2d9eee');
INSERT INTO `sys_log` VALUES ('df468d3b-0b1a-486a-8e1b-bdc18ea98203', '2020-04-09 13:31:20', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 13:31:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('df481606-d09a-479b-8cc1-d3c3cc872d46', '2020-03-31 10:42:48', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 10:42:49', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('df721bcd-be0e-4ce4-9b43-a96c14a407f8', '2020-04-07 10:46:47', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-07 10:46:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e1133f21-ebf7-490b-b8da-3974f31d0a06', '2020-04-09 12:33:07', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-09 12:33:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e167bb9d-a488-4d52-b6ac-5a23c2f2d94f', '2020-04-09 16:16:24', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:16:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e304293a-51df-4815-8b64-5e37ad2c9c39', '2020-04-09 16:23:15', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:23:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e34807e8-61ac-48a9-8cf0-886951befa35', '2020-04-01 11:18:03', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 11:18:03', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e4ffd723-b87c-433c-a01a-9059a8ccbcec', '2020-04-02 14:11:36', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-02 14:11:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e6a3ac05-a1c1-4e38-981e-7ab79f17ca4a', '2020-04-09 10:16:57', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 10:16:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e71ab447-e7c7-4c18-b990-e6fc84be6395', '2020-04-01 14:58:37', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 14:58:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e76696a1-7c5c-4169-8586-836464def8e5', '2020-04-01 11:38:45', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 11:38:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e7964a72-2176-4e7c-afdc-65946c18d967', '2020-04-09 17:02:46', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 17:02:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('e8318ce9-bbdd-4d5e-86ad-7d24ddb06f16', '2020-04-01 11:41:27', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 11:41:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('eb1fb072-c185-4197-b18d-83e9a6474a07', '2020-04-13 08:29:09', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-13 08:29:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('ec9e880f-1ca6-4f47-8a91-5ebe5c54b9df', '2020-04-09 16:54:00', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-09 16:54:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('ecb4b5d0-bc6e-4abd-9da8-fdcb5a8c3e32', '2020-04-07 11:50:14', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-07 11:50:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('eeea30f6-78d6-47f0-8238-845a30aa7eeb', '2020-03-31 11:08:56', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 11:08:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('f2b1a2ee-cf1b-4ee8-969c-5b43da73cab5', '2020-04-02 14:05:53', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 14:05:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('f472be20-7094-4f0f-ba89-d8210bd217d9', '2020-04-16 14:43:38', 'admin', '超级管理员', 'Update', '192.168.1.117', '本地局域网', NULL, '系统安全', 1, '访问控制操作,Update操作成功', '2020-04-16 14:43:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'b3fbe66f-82cd-4f4a-ada3-61eb5a2d9eee');
INSERT INTO `sys_log` VALUES ('f5ecd624-0cb6-469c-b933-55dc790e2654', '2020-04-01 08:45:38', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-01 08:45:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('f613c054-19f9-4322-8e1c-c06002040c25', '2020-04-14 17:04:58', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-14 17:04:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('f6bea2f4-b141-4b33-9edc-3e88f532796f', '2020-04-02 09:40:55', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-02 09:40:55', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('fc9a89ff-cf7c-445c-9f63-f47a06362803', '2020-04-07 16:31:57', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-07 16:31:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('fe742128-4204-4113-a9fa-f4213d3bdaa2', '2020-04-15 17:06:19', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-15 17:06:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('feabed0a-5d1d-4fce-88ae-1e87f2300a05', '2020-04-15 10:04:33', 'admin', '超级管理员', 'Exit', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '安全退出系统', '2020-04-15 10:04:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('feac4eec-2b9c-431a-aaa4-8605861e1210', '2020-04-06 12:38:05', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-04-06 12:38:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);
INSERT INTO `sys_log` VALUES ('ff611836-b152-45e2-a87d-122a462716ad', '2020-03-31 10:02:25', 'admin', '超级管理员', 'Login', '117.81.192.182', '江苏省苏州市 电信', NULL, '系统登录', 1, '登录成功', '2020-03-31 10:02:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL);

-- ----------------------------
-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_UrlAddress` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Target` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IsMenu` tinyint(1) NULL DEFAULT NULL,
  `F_IsExpand` tinyint(1) NULL DEFAULT NULL,
  `F_IsPublic` tinyint(1) NULL DEFAULT NULL,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Module`(`F_FullName`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_module
-- ----------------------------
INSERT INTO `sys_module` VALUES ('26452c9a-243d-4c81-97b9-a3ad581c3bf4', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Organize', '机构管理', 'fa fa-sitemap', '/SystemManage/Organize/Index', 'iframe', 1, 0, 0, 0, 0, 1, 0, 1, NULL, '2020-04-09 15:24:34', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-16 14:09:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('337A4661-99A5-4E5E-B028-861CACAF9917', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Area', '区域管理', 'fa fa-area-chart', '/SystemManage/Area/Index', 'iframe', 1, 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, '2020-04-16 14:10:12', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('38CA5A66-C993-4410-AF95-50489B22939C', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'User', '用户管理', 'fa fa-address-card-o', '/SystemManage/User/Index', 'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-16 14:10:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('423A200B-FA5F-4B29-B7B7-A3F5474B725F', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'ItemsData', '数据字典', 'fa fa-align-justify', '/SystemManage/ItemsData/Index', 'iframe', 1, 0, 0, 0, 0, 6, 0, 1, NULL, NULL, NULL, '2020-04-16 14:10:18', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('462027E0-0848-41DD-BCC3-025DCAE65555', '0', 1, 'SystemManage', '系统管理', 'fa fa-gears', NULL, 'expand', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-16 14:09:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', '73FD1267-79BA-4E23-A152-744AF73117E9', 2, 'ServerMonitoring', '服务器监控', 'fa fa-desktop', '/SystemSecurity/ServerMonitoring/Index', 'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-16 14:10:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('64A1C550-2C61-4A8C-833D-ACD0C012260F', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Module', '系统菜单', 'fa fa-cogs', '/SystemManage/Module/Index', 'iframe', 1, 0, 0, 0, 0, 7, 0, 1, '测试', NULL, NULL, '2020-04-16 14:10:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('73FD1267-79BA-4E23-A152-744AF73117E9', '0', 1, 'SystemSecurity', '系统安全', 'fa fa-desktop', NULL, 'expand', 0, 1, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-16 14:12:11', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('7e4e4a48-4d51-4159-a113-2a211186f13a', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Notice', '系统公告', 'fa fa-book', '/SystemManage/Notice/Index', 'iframe', 1, 0, 0, 0, 0, 0, 0, 1, NULL, '2020-04-14 15:39:29', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-16 14:09:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Role', '角色管理', 'fa fa-user-circle', '/SystemManage/Role/Index', 'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-16 14:09:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('96EE855E-8CD2-47FC-A51D-127C131C9FB9', '73FD1267-79BA-4E23-A152-744AF73117E9', 2, 'Log', '系统日志', 'fa fa-clock-o', '/SystemSecurity/Log/Index', 'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-16 14:10:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('a3a4742d-ca39-42ec-b95a-8552a6fae579', '73FD1267-79BA-4E23-A152-744AF73117E9', 2, 'FilterIP', '访问控制', 'fa fa-filter', '/SystemSecurity/FilterIP/Index', 'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, '2016-07-17 22:06:10', NULL, '2020-04-16 14:10:38', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('e72c75d0-3a69-41ad-b220-13c9a62ec788', '73FD1267-79BA-4E23-A152-744AF73117E9', 2, 'DbBackup', '数据备份', 'fa fa-server', '/SystemSecurity/DbBackup/Index', 'iframe', 1, 0, 0, 0, 0, 1, 0, 1, NULL, '2016-07-17 22:05:07', NULL, '2020-04-16 14:10:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_module` VALUES ('F298F868-B689-4982-8C8B-9268CBF0308D', '462027E0-0848-41DD-BCC3-025DCAE65555', 2, 'Duty', '岗位管理', 'fa fa-users', '/SystemManage/Duty/Index', 'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-16 14:09:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);

-- ----------------------------
-- Table structure for sys_modulebutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_modulebutton`;
CREATE TABLE `sys_modulebutton`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Location` int(11) NULL DEFAULT NULL,
  `F_JsEvent` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_UrlAddress` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Split` tinyint(1) NULL DEFAULT NULL,
  `F_IsPublic` tinyint(1) NULL DEFAULT NULL,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_modulebutton
-- ----------------------------
INSERT INTO `sys_modulebutton` VALUES ('02f35b16-f299-4805-85cf-f4a76c1b1e8a', '5b263367-33a8-48e1-89ec-ba225f7d5e7a', '0', NULL, 'NF-edit', '修改', NULL, 2, 'edit', '/DingTalkManage/Users/Form', 0, 0, 0, 0, 2, 0, 1, NULL, '2018-08-14 22:51:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:25:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('037df8cd-ed27-4c6e-9a83-9153a7c2727a', '0c253d7a-f1bf-45c0-9a59-0ad3396323e6', '0', NULL, 'NF-delete', '删除', NULL, 2, 'delete', '/WeixinManage/WxTempMsg/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, '2018-08-14 22:53:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('0b1b307b-2aac-456b-acfb-484a05c71bd7', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-edit', '修改岗位', NULL, 2, 'edit', '/SystemManage/Organize/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-09 15:26:41', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('0d777b07-041a-4205-a393-d1a009aaafc7', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-edit', '修改字典', NULL, 2, 'edit', '/SystemManage/ItemsData/Form', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:37:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('0f0596f6-aa50-4df0-ad8e-af867cb4a9de', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', '0', 1, 'NF-delete', '删除备份', NULL, 2, 'delete', '/SystemSecurity/DbBackup/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:47:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('10148a76-3843-405c-b5af-b2b3d738a2b0', '5b263367-33a8-48e1-89ec-ba225f7d5e7a', '0', NULL, 'NF-delete', '删除', NULL, 2, 'delete', '/DingTalkManage/Users/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, '2018-08-14 22:53:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:26:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('104bcc01-0cfd-433f-87f4-29a8a3efb313', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-add', '新建字典', NULL, 1, 'add', '/SystemManage/ItemsData/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:37:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('13c9a15f-c50d-4f09-8344-fd0050f70086', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-add', '新建岗位', NULL, 1, 'add', '/SystemManage/Duty/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('14617a4f-bfef-4bc2-b943-d18d3ff8d22f', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-delete', '删除用户', NULL, 2, 'delete', '/SystemManage/User/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 14:16:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('15362a59-b242-494a-bc6e-413b4a63580e', '38CA5A66-C993-4410-AF95-50489B22939C', '0', NULL, 'NF-disabled', '禁用', NULL, 2, 'disabled', '/SystemManage/User/DisabledAccount', 0, 0, 0, 0, 6, 0, 1, NULL, '2016-07-25 15:25:54', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-07 14:33:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('1b72be70-e44d-43d6-91d0-dc3ad628d22e', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-Details', '查看岗位', NULL, 2, 'details', '/SystemManage/Organize/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-09 15:26:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('1d612157-fb91-447b-80ec-e96514c8e00b', '0c253d7a-f1bf-45c0-9a59-0ad3396323e6', '0', NULL, 'NF-add', '新增', NULL, 1, 'add', '/WeixinManageWxTempMsg/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2018-08-14 22:49:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('1ee1c46b-e767-4532-8636-936ea4c12003', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-delete', '删除字典', NULL, 2, 'delete', '/SystemManage/ItemsData/DeleteForm', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2016-07-25 15:37:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('239077ff-13e1-4720-84e1-67b6f0276979', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-delete', '删除角色', NULL, 2, 'delete', '/SystemManage/Role/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('27b50b8b-0552-4c1c-a0e9-54f3402aa8e2', 'e40a4371-6835-4f67-a349-c2b02ed6760e', '0', NULL, 'NF-Details', '查看', NULL, 2, 'details', '/WeixinManage/Users/Details', 0, 0, 0, 0, 4, 0, 1, NULL, '2018-08-14 22:54:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:26:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6', '38CA5A66-C993-4410-AF95-50489B22939C', '0', NULL, 'NF-enabled', '启用', NULL, 2, 'enabled', '/SystemManage/User/EnabledAccount', 0, 0, 0, 0, 7, 0, 1, NULL, '2016-07-25 15:28:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-07 14:33:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('2f21a804-cd90-4da3-98f3-f31cfe6031dc', '5b263367-33a8-48e1-89ec-ba225f7d5e7a', '0', NULL, 'NF-add', '新增', NULL, 1, 'add', '/WeixinManage/Users/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2018-08-14 22:49:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:25:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('329c0326-ce68-4a24-904d-aade67a90fc7', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-Details', '查看策略', NULL, 2, 'details', '/SystemSecurity/FilterIP/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2016-07-25 15:58:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('38e39592-6e86-42fb-8f72-adea0c82cbc1', '38CA5A66-C993-4410-AF95-50489B22939C', '0', NULL, 'NF-revisepassword', '密码重置', NULL, 2, 'revisepassword', '/SystemManage/User/RevisePassword', 1, 0, 0, 0, 5, 0, 1, NULL, '2016-07-25 14:18:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-07 14:33:19', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('3a35c662-a356-45e4-953d-00ebd981cad6', '96EE855E-8CD2-47FC-A51D-127C131C9FB9', '0', 1, 'NF-removelog', '清空日志', NULL, 1, 'removeLog', '/SystemSecurity/Log/RemoveLog', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-07 14:34:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('3f69d32f-cb3b-4fa0-863b-98b9a090d7e9', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-add', '新建公告', NULL, 1, 'add', '/SystemManage/Notice/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-14 16:17:04', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('41862743-f703-4b6d-be54-08d253eb0ebc', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', '0', 1, 'NF-add', '新建备份', NULL, 1, 'add', '/SystemSecurity/DbBackup/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:43:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4727adf7-5525-4c8c-9de5-39e49c268349', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-edit', '修改用户', NULL, 2, 'edit', '/SystemManage/User/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 14:16:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', 1, 'NF-add', '新建区域', NULL, 1, 'add', '/SystemManage/Area/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:32:26', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4b876abc-1b85-47b0-abc7-96e313b18ed8', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', NULL, 'NF-itemstype', '分类管理', NULL, 1, 'itemstype', '/SystemManage/ItemsType/Index', 0, 0, 0, 0, 2, 0, 1, NULL, '2016-07-25 15:36:21', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-07 14:33:58', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4bb19533-8e81-419b-86a1-7ee56bf1dd45', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-delete', '删除机构', NULL, 2, 'delete', '/SystemManage/Organize/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-07 14:22:56', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('4c13c9c3-c1a4-4f7e-a061-2266b2c47c7a', '3593c43a-e4bc-4b7f-9629-0449a3d1818e', '0', NULL, 'NF-delete', '删除', NULL, 2, 'delete', '/DingTalkManage/Department/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, '2018-08-14 22:53:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:27:14', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('5d708d9d-6ebe-40ea-8589-e3efce9e74ec', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-add', '新建角色', NULL, 1, 'add', '/SystemManage/Role/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('5d952e29-963e-48fe-94e5-1795ebaad2d6', '3593c43a-e4bc-4b7f-9629-0449a3d1818e', '0', NULL, 'NF-update', '更新', NULL, 1, 'update', '/DingTalkManage/Department/UpdateDingTalkDepartment', 0, 0, 0, 0, 0, NULL, 1, NULL, '2020-03-27 16:25:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-03-27 16:25:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('6b639924-6594-4293-ae72-9e1f84bdcbfa', '9a727a52-43ed-425a-940c-a4b64749f745', '0', NULL, 'NF-edit', '修改', NULL, 2, 'edit', '/WeixinManage/WxUsers/Form', 0, 0, 0, 0, 2, 0, 1, NULL, '2018-08-14 22:51:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('6cd3de7d-589b-457f-bfc8-ad3939649519', 'e40a4371-6835-4f67-a349-c2b02ed6760e', '0', NULL, 'NF-edit', '修改', NULL, 2, 'edit', '/WeixinManage/Users/Form', 0, 0, 0, 0, 2, 0, 1, NULL, '2018-08-14 22:51:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:25:51', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('709a4a7b-4d98-462d-b47c-351ef11db06f', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-Details', '查看机构', NULL, 2, 'details', '/SystemManage/Organize/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-07 14:23:01', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('711e01d6-c5c1-4238-ae23-78e21cf933f3', 'e40a4371-6835-4f67-a349-c2b02ed6760e', '0', NULL, 'NF-delete', '删除', NULL, 2, 'delete', '/WeixinManage/Users/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, '2018-08-14 22:53:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:26:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('74eecdfb-3bee-405d-be07-27a78219c179', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-add', '新建用户', NULL, 1, 'add', '/SystemManage/User/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 14:15:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('78d0d7df-7b33-4b05-be3f-899b79773643', '9a727a52-43ed-425a-940c-a4b64749f745', '0', NULL, 'NF-delete', '删除', NULL, 2, 'delete', '/WeixinManage/WxUsers/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, '2018-08-14 22:53:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('7e10a7ac-8b65-4c7c-8eee-92d69d7dcbd9', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-add', '新建岗位', NULL, 1, 'add', '/SystemManage/Organize/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-09 15:26:36', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('7ee3ff62-ab18-4886-9451-89b1d152172e', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-Details', '查看公告', NULL, 2, 'details', '/SystemManage/Notice/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2020-04-14 16:17:39', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('80afeabc-5502-47cc-a304-a1c736b150d2', '3593c43a-e4bc-4b7f-9629-0449a3d1818e', '0', NULL, 'NF-Details', '查看', NULL, 2, 'details', '/DingTalkManage/Department/Details', 0, 0, 0, 0, 4, 0, 1, NULL, '2018-08-14 22:54:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:27:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('82f162cb-beb9-4a79-8924-cd1860e26e2e', '423A200B-FA5F-4B29-B7B7-A3F5474B725F', '0', 1, 'NF-Details', '查看字典', NULL, 2, 'details', '/SystemManage/ItemsData/Details', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, '2016-07-25 15:37:59', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8379135e-5b13-4236-bfb1-9289e6129034', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-delete', '删除策略', NULL, 2, 'delete', '/SystemSecurity/FilterIP/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:57:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('85F5212F-E321-4124-B155-9374AA5D9C10', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-delete', '删除菜单', NULL, 2, 'delete', '/SystemManage/Module/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('88f7b3a8-fd6d-4f8e-a861-11405f434868', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-Details', '查看岗位', NULL, 2, 'details', '/SystemManage/Duty/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('89d7a69d-b953-4ce2-9294-db4f50f2a157', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', 1, 'NF-edit', '修改区域', NULL, 2, 'edit', '/SystemManage/Area/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:32:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8a9993af-69b2-4d8a-85b3-337745a1f428', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-delete', '删除岗位', NULL, 2, 'delete', '/SystemManage/Duty/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8c7013a9-3682-4367-8bc6-c77ca89f346b', '337A4661-99A5-4E5E-B028-861CACAF9917', '0', 1, 'NF-delete', '删除区域', NULL, 2, 'delete', '/SystemManage/Area/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2016-07-25 15:32:53', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8d7b059e-4105-4dde-944c-c2424f68b5c5', '0c253d7a-f1bf-45c0-9a59-0ad3396323e6', '0', NULL, 'NF-Details', '查看', NULL, 2, 'details', '/WeixinMPManage/WxTempMsg/Details', 0, 0, 0, 0, 4, 0, 1, NULL, '2018-08-14 22:54:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('8f698747-a1c3-468d-9279-99990987e0f9', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-delete', '删除公告', NULL, 2, 'delete', '/SystemManage/Notice/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-14 16:17:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('91be873e-ccb7-434f-9a3b-d312d6d5798a', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-edit', '修改机构', NULL, 2, 'edit', '/SystemManage/Organize/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-07 14:22:50', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('9fc77888-bbca-4996-9240-a0f389819f6f', '7e4e4a48-4d51-4159-a113-2a211186f13a', '0', 1, 'NF-edit', '修改公告', NULL, 2, 'edit', '/SystemManage/Notice/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2020-04-14 16:17:16', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('9FD543DB-C5BB-4789-ACFF-C5865AFB032C', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-add', '新增菜单', NULL, 1, 'add', '/SystemManage/Module/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:08', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('a026f86d-d7ed-4cd3-8901-f6c7808026e6', '9a727a52-43ed-425a-940c-a4b64749f745', '0', NULL, 'NF-Details', '查看', NULL, 2, 'details', '/WeixinMPManage/WxUsers/Details', 0, 0, 0, 0, 4, 0, 1, NULL, '2018-08-14 22:54:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:46', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('a6d7557a-a5ff-42df-a7e6-b5311c2b908e', '5b263367-33a8-48e1-89ec-ba225f7d5e7a', '0', NULL, 'NF-update', '更新', NULL, 1, 'update', '/DingTalkManage/Users/UpdateDingTalkUser', 0, 0, 0, 0, 0, NULL, 1, NULL, '2020-03-27 16:25:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-03-27 16:27:30', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('aaf58c1b-4af2-4e5f-a3e4-c48e86378191', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-edit', '修改策略', NULL, 2, 'edit', '/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:57:49', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('abfdff21-8ebf-4024-8555-401b4df6acd9', '38CA5A66-C993-4410-AF95-50489B22939C', '0', 1, 'NF-Details', '查看用户', NULL, 2, 'details', '/SystemManage/User/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2016-07-25 15:29:10', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('aed66cfb-d78e-43d4-9987-c714546be7eb', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', '0', 1, 'NF-download', '下载备份', NULL, 2, 'download', '/SystemSecurity/DbBackup/DownloadBackup', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-07 14:34:23', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('b02a3807-0835-46c1-a965-af192dfb9823', '0c253d7a-f1bf-45c0-9a59-0ad3396323e6', '0', NULL, 'NF-edit', '修改', NULL, 2, 'edit', '/WeixinManage/WxTempMsg/Form', 0, 0, 0, 0, 2, 0, 1, NULL, '2018-08-14 22:51:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:31', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('b5168959-7655-4dce-956a-754e3ebbfb2e', '9a727a52-43ed-425a-940c-a4b64749f745', '0', NULL, 'NF-add', '新增', NULL, 1, 'add', '/WeixinManage/WxUsers/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2018-08-14 22:49:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-07-04 10:54:25', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('cd65e50a-0bea-45a9-b82e-f2eacdbd209e', '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', '0', 1, 'NF-add', '新建机构', NULL, 1, 'add', '/SystemManage/Organize/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2020-04-07 14:22:42', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d02984f1-2fea-4507-9442-72b1d81a490c', '3593c43a-e4bc-4b7f-9629-0449a3d1818e', '0', NULL, 'NF-edit', '修改', NULL, 2, 'edit', '/DingTalkManage/Department/Form', 0, 0, 0, 0, 2, 0, 1, NULL, '2018-08-14 22:51:47', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:27:05', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('d4074121-0d4f-465e-ad37-409bbe15bf8a', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', '0', 1, 'NF-add', '新建策略', NULL, 1, 'add', '/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, '2016-07-25 15:57:40', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('D4FCAFED-7640-449E-80B7-622DDACD5012', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-Details', '查看菜单', NULL, 2, 'details', '/SystemManage/Module/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:27', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('de0dd0b8-defe-4766-a8fe-93da339981e8', 'e40a4371-6835-4f67-a349-c2b02ed6760e', '0', NULL, 'NF-add', '新增', NULL, 1, 'add', '/WeixinManage/Users/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2018-08-14 22:49:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:25:43', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('E29FCBA7-F848-4A8B-BC41-A3C668A9005D', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-edit', '修改菜单', NULL, 2, 'edit', '/SystemManage/Module/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, '2016-07-25 15:41:02', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('e75e4efc-d461-4334-a764-56992fec38e6', 'F298F868-B689-4982-8C8B-9268CBF0308D', '0', 1, 'NF-edit', '修改岗位', NULL, 2, 'edit', '/SystemManage/Duty/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('f51da6f6-8511-49f3-982b-a30ed0946706', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', '0', 1, 'NF-delete', '删除岗位', NULL, 2, 'delete', '/SystemManage/Organize/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, '2020-04-09 15:26:45', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('f7c7c0ce-1916-449c-b239-a9a5db940c6a', '5b263367-33a8-48e1-89ec-ba225f7d5e7a', '0', NULL, 'NF-Details', '查看', NULL, 2, 'details', '/DingTalkManage/Users/Details', 0, 0, 0, 0, 4, 0, 1, NULL, '2018-08-14 22:54:07', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:26:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('f93763ff-51a1-478d-9585-3c86084c54f3', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-Details', '查看角色', NULL, 2, 'details', '/SystemManage/Role/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('FD3D073C-4F88-467A-AE3B-CDD060952CE6', '64A1C550-2C61-4A8C-833D-ACD0C012260F', '0', 1, 'NF-modulebutton', '按钮管理', NULL, 2, 'modulebutton', '/SystemManage/ModuleButton/Index', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, '2020-04-07 14:34:09', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('fea84a80-2f19-4118-a2aa-a269a66df346', '3593c43a-e4bc-4b7f-9629-0449a3d1818e', '0', NULL, 'NF-add', '新增', NULL, 1, 'add', '/DingTalkManage/Department/Form', 0, 0, 0, 0, 1, 0, 1, NULL, '2018-08-14 22:49:22', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2019-04-22 10:26:57', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_modulebutton` VALUES ('ffffe7f8-900c-413a-9970-bee7d6599cce', '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', '0', 1, 'NF-edit', '修改角色', NULL, 2, 'edit', '/SystemManage/Role/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_moduleform
-- ----------------------------
DROP TABLE IF EXISTS `sys_moduleform`;
CREATE TABLE `sys_moduleform`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FormJson` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_moduleforminstance
-- ----------------------------
DROP TABLE IF EXISTS `sys_moduleforminstance`;
CREATE TABLE `sys_moduleforminstance`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FormId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ObjectId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_InstanceJson` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Notice`(`F_Title`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('719decb4-fd6d-40bb-b56c-d5228332cd8c', '系统公告', '测试测测测测踩踩踩踩踩踩踩踩踩踩踩踩踩踩踩1asdadasddasdasdasdasdsadasdadasdasdasdasdasdssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 0, 1, NULL, '2020-04-14 16:20:29', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '超级管理员', '2020-04-14 16:37:13', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);

-- ----------------------------
-- Table structure for sys_organize
-- ----------------------------
DROP TABLE IF EXISTS `sys_organize`;
CREATE TABLE `sys_organize`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ParentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Layers` int(11) NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ShortName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CategoryId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ManagerId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_TelePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_MobilePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_AreaId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Organize`(`F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_organize
-- ----------------------------
INSERT INTO `sys_organize` VALUES ('253EDA1F-F158-4F3F-A778-B7E538E052A2', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Manufacturing', '生产部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Ministry', '技术部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 5, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('5AB270C0-5D33-4203-A54F-4552699FDA3C', '0', 1, 'Company', '上海东鞋贸易有限公司', NULL, 'Company', '郭总', NULL, NULL, NULL, NULL, NULL, NULL, '上海市松江区', 0, 0, 1, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('5B417E2B-4B96-4F37-8BAA-10E5A812D05E', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Market', '市场部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('80E10CD5-7591-40B8-A005-BCDE1B961E76', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Administration', '行政部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 2, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('BD830AEF-0A2E-4228-ACF8-8843C39D41D8', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Purchase', '采购部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 6, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('DFA2FB91-C909-44A3-9282-BF946102E1C9', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'HumanResourse', '人事部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_organize` VALUES ('F02A66CA-3D8B-491B-8A17-C9ACA3E3B5DD', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'Financial', '财务部', NULL, 'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 0, 1, NULL, '2016-06-10 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_quickmodule
-- ----------------------------
DROP TABLE IF EXISTS `sys_quickmodule`;
CREATE TABLE `sys_quickmodule`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ModuleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_QuickModule`(`F_ModuleId`, `F_CreatorUserId`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_quickmodule
-- ----------------------------
INSERT INTO `sys_quickmodule` VALUES ('13ec7aab-d25e-4ae9-aff4-a5a3d303ef9f', '26452c9a-243d-4c81-97b9-a3ad581c3bf4', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('3b38d852-9a06-4d95-b6df-c431cb1e4ed7', '64A1C550-2C61-4A8C-833D-ACD0C012260F', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('5b3c77aa-b2cb-4e04-a521-2856bc0360cf', 'e72c75d0-3a69-41ad-b220-13c9a62ec788', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('604df5c8-70ad-4f26-a247-934b313feeb4', '49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('88498c45-6509-44d2-be4c-8d96064d8d03', 'F298F868-B689-4982-8C8B-9268CBF0308D', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('b855c5d2-9266-4c38-8c54-66ed783bdc70', '38CA5A66-C993-4410-AF95-50489B22939C', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('e1a6916d-1136-4fae-bfd7-1976a7e9305d', 'a3a4742d-ca39-42ec-b95a-8552a6fae579', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_quickmodule` VALUES ('e32603f1-a0f9-40ee-8279-8b9510cd7ea6', '96EE855E-8CD2-47FC-A51D-127C131C9FB9', 0, 1, NULL, '2020-04-14 14:26:15', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_OrganizeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Category` int(11) NULL DEFAULT NULL,
  `F_EnCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_FullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_AllowEdit` tinyint(1) NULL DEFAULT NULL,
  `F_AllowDelete` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_Role`(`F_EnCode`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('0052A230-EA7B-4F3A-A1C9-1611FF26481A', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'manager', '经理', NULL, 0, 0, 3, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('05691457-5284-4FEE-8D7E-C35141F3FF39', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10024', '总经理助理', NULL, 0, 0, 16, 0, 1, NULL, '2016-07-12 00:00:00', NULL, '2020-04-03 14:07:06', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_role` VALUES ('07A8E061-AE47-49C9-8310-F055F35FF44B', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'services', '客服人员', '2', 0, 0, 9, 0, 1, NULL, '2016-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('0CD2A952-2EE0-4CAF-9757-617D5075745B', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'president', '董事长', NULL, 0, 0, 10, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('23ED024E-0AAA-4C8D-9216-D1AB93348D26', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'employee', '员工', NULL, 0, 0, 1, 0, 1, NULL, '2016-07-12 00:00:00', NULL, '2016-07-18 15:18:56', NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('2691AB91-3010-465F-8D92-60A97425A45E', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'innerStaff', '内部员工', '2', 0, 0, 5, 0, 1, NULL, '2016-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('2B3406F9-B7FF-4D23-BC61-D8EEB6C88D5B', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10023', '行业顾问', NULL, 0, 0, 15, 0, 1, NULL, '2016-07-12 00:00:00', NULL, '2020-04-03 14:45:35', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_role` VALUES ('2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'tester', '测试人员', '2', 0, 0, 8, 0, 1, NULL, '2016-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('3263446A-D303-4C42-B436-6F46BF7CE86A', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10019', '总裁', NULL, 0, 0, 12, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('3A2FD4D7-E73C-44E4-8AED-B6EE5980779E', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10025', '大堂经理', NULL, 0, 0, 17, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('41652BB4-E2DC-420E-AA8A-8C92784B76E3', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'archvist', '档案管理员', '2', 0, 0, 6, 0, 1, NULL, '2016-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('42C44AC0-27FA-482D-B5E3-8F9B38B80A6A', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'configuration', '系统配置员', '2', 0, 0, 3, 0, 1, NULL, '2016-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'system', '系统管理员', '1', 0, 0, 2, 0, 1, NULL, '2016-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('531F7D18-C49F-4F4F-A920-0074FCB52078', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'guest', '访客人员', '2', 0, 0, 7, 0, 1, NULL, '2016-07-10 00:00:00', NULL, '2016-07-24 15:43:29', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_role` VALUES ('796E9C6A-8432-4BA6-8CF6-EFFAB6F2098C', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'general', '总经理', NULL, 0, 0, 6, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'developer', '系统开发人员', '2', 0, 0, 4, 0, 1, NULL, '2016-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('7E2639BA-02B9-417A-9AAA-CF6DCF8487E0', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10022', '力资源专员', NULL, 0, 0, 14, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('8683CB17-5F9D-4A99-A233-A18C4D1CF95B', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'businessPersonnel', '业务人员', '2', 0, 0, 12, 0, 1, NULL, '2016-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('91E09653-D3DE-416A-BF6C-E91E60B4B4CF', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'chairman', '主任', NULL, 0, 0, 7, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'implement', '实施人员', '2', 0, 0, 10, 0, 1, NULL, '2016-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('B2624F67-E092-461A-AAAD-13592A9429D9', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10018', '行政助理', NULL, 0, 0, 11, 0, 1, NULL, '2016-07-12 00:00:00', NULL, '2020-04-16 10:38:17', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_role` VALUES ('C609D4D6-81F7-4647-BF2F-81BD4CED2C19', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'fileattache', '档案专员', NULL, 0, 0, 8, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('CB116AA3-88CC-4CF7-B0BC-7C55EC502183', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '10020', '首席执行官', NULL, 0, 0, 13, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('CEEA79E8-2E19-4294-8447-13247053DE04', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'director', '总监', NULL, 0, 0, 4, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('D335A5B8-7DED-495C-B8FC-EE933FB30779', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'charge', '主管', NULL, 0, 0, 2, 0, 1, NULL, '2016-07-12 00:00:00', NULL, '2016-07-18 15:17:22', NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('EA56E457-5024-49AF-9410-D5D71D24F14B', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'vicegeneral', '副总经理', NULL, 0, 0, 5, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('ef932ee5-82e5-4c54-8248-85536266321c', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, '222222', '2222222', NULL, 0, 0, 1, 0, 1, NULL, '2020-04-09 11:33:24', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('F03EA699-9A0A-4EE9-9D33-27B9A7DFF09B', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, 'engineer', '高级工程师', NULL, 0, 0, 9, 0, 1, NULL, '2016-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_role` VALUES ('F0A2B36F-35A7-4660-B46C-D4AB796591EB', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'administrators', '超级管理员', '1', 1, 1, 1, 0, 1, NULL, '2016-07-10 00:00:00', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL);
INSERT INTO `sys_role` VALUES ('F9421969-D85C-4E4C-927F-CCFB18388A59', '5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, 'contracts', '合同专员', '2', 0, 0, 14, 0, 1, NULL, '2016-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_roleauthorize
-- ----------------------------
DROP TABLE IF EXISTS `sys_roleauthorize`;
CREATE TABLE `sys_roleauthorize`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_ItemType` int(11) NULL DEFAULT NULL,
  `F_ItemId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ObjectType` int(11) NULL DEFAULT NULL,
  `F_ObjectId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roleauthorize
-- ----------------------------
INSERT INTO `sys_roleauthorize` VALUES ('0000da5b-6305-4b23-b1db-1f55a66daca8', 2, 'FD3D073C-4F88-467A-AE3B-CDD060952CE6', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('04d23b62-8401-4e50-8279-aaeb66377daa', 2, 'FD3D073C-4F88-467A-AE3B-CDD060952CE6', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('06011f83-df9a-4d5d-bb6f-0b948574256c', 1, '73FD1267-79BA-4E23-A152-744AF73117E9', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('0f7b0b1b-d925-45d5-adf9-55044a7f4c19', 2, '5d708d9d-6ebe-40ea-8589-e3efce9e74ec', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('12cc8ed7-d769-48cc-ab3c-866466462e70', 1, '96EE855E-8CD2-47FC-A51D-127C131C9FB9', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('15b2279f-7082-421e-a6a3-9abd5bca8303', 1, '337A4661-99A5-4E5E-B028-861CACAF9917', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('166e6255-d5cc-4718-b257-771398b4132b', 2, '13c9a15f-c50d-4f09-8344-fd0050f70086', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('1822a1c4-5a49-4742-a937-b63e4f9bd826', 1, 'FE04386D-1307-4E34-8DFB-B56D9FEC78CE', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('1a81232c-037a-4af8-b2cf-55e19fce1582', 2, '239077ff-13e1-4720-84e1-67b6f0276979', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('1afefe4f-c76d-488b-b165-e797b017c216', 2, 'e75e4efc-d461-4334-a764-56992fec38e6', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('1dbe5bcb-3907-49d4-93d9-0d41cc539a1d', 1, '423A200B-FA5F-4B29-B7B7-A3F5474B725F', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('1e2c7104-1731-4519-81ac-3594f78bf8dd', 1, '9F56840F-DF92-4936-A48C-8F65A39291A2', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('1fd4ae2a-24fd-49e3-8007-5cc987cd05c0', NULL, NULL, 1, '42C44AC0-27FA-482D-B5E3-8F9B38B80A6A', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('2078f57a-454a-48c8-9fee-122df8f5786e', 1, '7B959522-BE45-4747-B89D-592C7F3987A5', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('22ddf57d-739d-4da0-b2a7-752459f110a6', 2, '8a9993af-69b2-4d8a-85b3-337745a1f428', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('237da469-8831-45bf-bb78-0e7ca06f33d7', 1, '38CA5A66-C993-4410-AF95-50489B22939C', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('243814e8-2279-4749-b84a-4e0c269d2910', 2, '709a4a7b-4d98-462d-b47c-351ef11db06f', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('244823d7-6b36-4cf9-b63d-c749e91061ae', 2, '48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('250a92b7-a549-4a35-b007-82f90dcf5622', 2, '104bcc01-0cfd-433f-87f4-29a8a3efb313', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('2af34ef2-522e-4ea3-a8df-668b57e3b4e3', 1, '337A4661-99A5-4E5E-B028-861CACAF9917', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('2bf9d1bd-510f-463a-9555-4ab8357bfb08', NULL, NULL, 1, '2691AB91-3010-465F-8D92-60A97425A45E', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('2c069a5e-8785-49b3-a6e7-355dbad2e89f', 1, '39E97B05-7B6F-4069-9972-6F9643BC3042', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('2e467fc2-2e71-45c7-ad7c-fad5eb956adf', 2, 'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('3115d827-1419-48ab-88fa-c9b56be6df86', 1, '822E2523-5105-4AE0-BF48-62459D3641F6', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('32119cfa-864e-4bf9-945b-2d76dad0a31c', 2, 'f93763ff-51a1-478d-9585-3c86084c54f3', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('335e819a-866c-409d-8233-3449481b0460', 2, 'D4FCAFED-7640-449E-80B7-622DDACD5012', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('34b49233-b13b-4a6f-bc98-3000bf6b75ee', 1, '91425AF9-F762-43AF-B784-107D23FFDC85', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('35753609-e0d7-4829-9685-6cafe02c7ca7', 1, '462027E0-0848-41DD-BCC3-025DCAE65555', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('379e90a9-5628-47e0-8314-da3e0c550fb3', 2, '88f7b3a8-fd6d-4f8e-a861-11405f434868', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('37b242db-cd74-400f-964b-96d72bd651c6', 2, '1ee1c46b-e767-4532-8636-936ea4c12003', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('3ec593df-c492-4270-9aef-e75d521171da', 2, '14617a4f-bfef-4bc2-b943-d18d3ff8d22f', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('3f21e866-1f79-4cac-9f8e-91a0cb1014ce', 2, '85F5212F-E321-4124-B155-9374AA5D9C10', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('41105b53-4315-442c-bb7f-9b9204355351', 2, '4727adf7-5525-4c8c-9de5-39e49c268349', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('43ad8ba2-3258-40ce-a121-a4c4c1af0871', 1, 'a3a4742d-ca39-42ec-b95a-8552a6fae579', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('474417c9-51de-40e9-b2dc-59d169f0bf12', 1, 'ABA7DA44-A291-4A25-9BDC-C310CF1C931C', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('4d0ba76b-dbb0-4e4f-b83e-92df13bf702a', 2, 'ffffe7f8-900c-413a-9970-bee7d6599cce', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('4d26e4ba-cf4f-4783-a4bd-84e1f2f9ecb3', 1, '51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('4ff4e45a-9ed6-4c79-be52-ae6d07d77b3a', 2, '8c7013a9-3682-4367-8bc6-c77ca89f346b', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('52cce008-0755-4a75-9fdf-6425f74f62b0', 2, '89d7a69d-b953-4ce2-9294-db4f50f2a157', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('5324f369-ce2d-47cc-a3c5-cf4f690a7914', 1, 'D2ECB516-4CB7-49B1-B536-504382115DD2', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('53967381-3765-4bff-ad74-6aa1c9d03596', 2, 'D4FCAFED-7640-449E-80B7-622DDACD5012', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('577c000a-2997-4915-aa24-412c4acfbb38', 1, '6BBC3562-1051-4246-98B0-9F37CAC40DC8', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('5ae6902f-0520-4000-a495-6db64d3ff469', 1, 'C3D12056-D906-4D8B-8B9C-954942742BDE', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('64f6b88c-7510-4e83-956e-d2d6c163200a', 1, 'F298F868-B689-4982-8C8B-9268CBF0308D', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('68905347-8abf-4f99-bacd-8d3045b06e2b', 2, '4b876abc-1b85-47b0-abc7-96e313b18ed8', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('6d4f5a20-98b2-40c5-8352-80b15af1b360', 2, '239077ff-13e1-4720-84e1-67b6f0276979', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('6e725406-22c9-4c19-8f85-054f97ee20f4', 1, '49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('6e83c40f-c7fc-4b96-86aa-b17485a2d8ca', 1, '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('700916e8-3488-45f2-b407-6f30df9b9123', 2, 'B6A9473D-DAA7-4574-9231-13D9E631D379', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('7535204c-60ce-4114-bb12-430a5975b363', 2, '38e39592-6e86-42fb-8f72-adea0c82cbc1', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('766067c0-ebef-43f6-b49b-a7261634ff05', 2, '88f7b3a8-fd6d-4f8e-a861-11405f434868', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('77699534-4f0b-44f0-a6d2-3953334be95a', 1, 'A33ADBFC-089B-4981-BFAB-08178052EE36', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('77eafdea-c1e3-4e36-9d70-cdaa7b5200d4', 1, '38CA5A66-C993-4410-AF95-50489B22939C', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('790dc854-bdbf-4ff0-8cea-2ffffcbe98ed', 2, 'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('844841a3-a465-4bba-816e-920dbdca9715', 1, '0EDF1DDB-CA17-4D08-AA25-914FE4E13324', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('848319d7-89f3-4ef9-b9fc-fcd99eddf632', 2, '4bb19533-8e81-419b-86a1-7ee56bf1dd45', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('8e81b948-313c-4d2c-b752-92a83197b7e6', 1, 'e72c75d0-3a69-41ad-b220-13c9a62ec788', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('90a522bb-5e94-48d7-be44-e4180ee7bc3d', 1, 'df9920e0-ba33-4e36-a911-ef08c6ea77ea', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('90a63c30-1c20-4f47-9cd8-d9bcc44e10d9', 1, 'F298F868-B689-4982-8C8B-9268CBF0308D', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('93e3474f-a8c9-4b0e-bf42-1571e9f4e6b8', NULL, NULL, 1, '07A8E061-AE47-49C9-8310-F055F35FF44B', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('94a7787a-6659-49cc-a902-7ea63231c177', 2, '4bb19533-8e81-419b-86a1-7ee56bf1dd45', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('94fa7a37-986f-4534-87bc-b66bcf7246d0', 1, '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('997a0c17-7de7-4eb3-9adb-c4900b310948', 2, '74eecdfb-3bee-405d-be07-27a78219c179', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('9c9cfbd1-525a-4f02-a765-30a72c771e23', 2, 'B6A9473D-DAA7-4574-9231-13D9E631D379', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('9cc97a78-d8ca-45bd-aad5-efbeef4a4c8a', 2, '8a9993af-69b2-4d8a-85b3-337745a1f428', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('9fef22f9-1962-4cd0-84a6-ba85b9ce29c1', 1, 'B3BF41E1-0299-4EFE-BA76-A7377AC81B38', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('a06b6fb1-f68a-4856-9e41-44ec8a642139', 2, '85F5212F-E321-4124-B155-9374AA5D9C10', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('a8b2ff07-7af6-4e6a-8b9a-5785a25afe8c', 1, '1F14A1ED-B22E-4E4A-BF10-6CF018507E76', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('a8cf8cde-db46-4f5e-a3b2-883aef62ff7f', 1, '252229DB-35CA-47AE-BDAE-C9903ED5BA7B', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('aa5d1775-d95b-4f07-8c2b-7a9820876dc0', 2, '709a4a7b-4d98-462d-b47c-351ef11db06f', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('af617592-755c-4a6b-99ac-3d1ba457d760', 2, '91be873e-ccb7-434f-9a3b-d312d6d5798a', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('b10ca258-bd85-403c-aded-95b546fecaea', 1, 'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('b52fbff2-78d5-475d-84ca-6d9ed11d3cc6', NULL, NULL, 1, '4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('bb544273-6e31-4235-b507-3f0ffbfded28', NULL, NULL, 1, 'F9421969-D85C-4E4C-927F-CCFB18388A59', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('c0257ed1-eae3-4260-9633-0f53b0e3d106', 2, '9FD543DB-C5BB-4789-ACFF-C5865AFB032C', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('c0a099cf-8ea2-4193-bd66-403f35ac3e42', 1, '423A200B-FA5F-4B29-B7B7-A3F5474B725F', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('c2e04783-a45a-449d-9f7f-83d6a855ec22', 1, '7858E329-16FC-49F4-93A1-11E2E7EF2998', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('c2e7dba8-b103-4c63-a597-136110a89c7b', 2, 'e75e4efc-d461-4334-a764-56992fec38e6', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('c5c51f2e-4f7d-4aa9-9b90-b0ad1679771d', 2, '13c9a15f-c50d-4f09-8344-fd0050f70086', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('cbf03b03-096a-4eb3-9983-81637429e51b', 2, '82f162cb-beb9-4a79-8924-cd1860e26e2e', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('ccfcea25-cab8-42e7-aee3-61663d89ba93', 2, '91be873e-ccb7-434f-9a3b-d312d6d5798a', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('cd061505-61fe-4a4e-a612-41952ba33e3b', 1, '163DA347-887C-4C91-8298-EB00FFBFEC84', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('cf6bf931-ae94-4820-92de-4f80590c615d', NULL, NULL, 1, '2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('d4cd5d85-c730-4bd9-9d62-3233056fa7f3', 2, 'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('d5f8dc31-4c8d-41a5-8154-9c855553793a', 2, 'ffffe7f8-900c-413a-9970-bee7d6599cce', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('d71845b3-c39b-4a99-a523-f7a93f3ac038', 2, 'abfdff21-8ebf-4024-8555-401b4df6acd9', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('da24baba-479c-4017-acee-569b1fa0ce1a', 1, '54E9D12D-C039-4F01-A6FE-810A147D31D5', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('df6281cb-6ad9-4d4b-aff2-ba6f266c1dd3', NULL, NULL, 1, '8683CB17-5F9D-4A99-A233-A18C4D1CF95B', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('df6839d3-60c4-447d-9d48-c75d26d77a7b', NULL, NULL, 1, '7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('e1a1c00f-e10e-4589-8144-797f38efcd80', 2, '0d777b07-041a-4205-a393-d1a009aaafc7', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('e61a0833-aa73-4e15-9c03-83b8089e6bd8', 2, '9FD543DB-C5BB-4789-ACFF-C5865AFB032C', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('e6c1e0a7-aaaa-4adb-b95d-353134a484c6', 1, '64A1C550-2C61-4A8C-833D-ACD0C012260F', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('e7095efa-4793-44f0-8edb-57e21d4aeea2', 1, '64A1C550-2C61-4A8C-833D-ACD0C012260F', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('ea573da4-7921-40db-bf8f-447ef980ee31', 1, '85FAF4F4-9CBE-4904-94B3-2B930CA49F0C', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('eae52f23-db61-4997-82e0-437978517f6a', 1, '91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('eb7aabf3-801e-4751-85e9-8972faec4452', 1, 'AF34B824-439E-4365-99CC-C1D30514D869', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('ebff5f54-bbe5-482a-a763-d6fcce17b655', 2, '5d708d9d-6ebe-40ea-8589-e3efce9e74ec', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('f5c3d009-3d00-4be1-822c-feba6c89ae0a', 1, '462027E0-0848-41DD-BCC3-025DCAE65555', 1, '531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('f5dc517b-f045-41ba-bae0-f7053a89c6c9', 2, 'f93763ff-51a1-478d-9585-3c86084c54f3', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('f8a6180a-ee18-41f4-b28e-d7e4c5a36045', NULL, NULL, 1, '41652BB4-E2DC-420E-AA8A-8C92784B76E3', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('f929d1f3-2485-4d0b-8253-ff778dd30add', 2, 'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');
INSERT INTO `sys_roleauthorize` VALUES ('fbc0b434-f261-47eb-94c8-0c450dd56cc4', NULL, NULL, 1, 'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E', NULL, NULL, NULL);
INSERT INTO `sys_roleauthorize` VALUES ('fcf8d653-fe9a-4e8f-81d5-f4af1119bbbf', 1, 'F2DAD50B-95DF-48F7-8638-BA503B539143', 1, 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, '2016-07-24 00:04:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba');

-- ----------------------------
-- Table structure for sys_serverstate
-- ----------------------------
DROP TABLE IF EXISTS `sys_serverstate`;
CREATE TABLE `sys_serverstate`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_WebSite` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ARM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CPU` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IIS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Date` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Cout` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_ServerState`(`F_WebSite`, `F_Date`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_serverstate
-- ----------------------------
INSERT INTO `sys_serverstate` VALUES ('07c7d9de-d1a3-434a-86a6-f3fe4d0d28f6', 'WaterCloud.Web', '77.45', '11.66', '0', '2020-04-14', 87);
INSERT INTO `sys_serverstate` VALUES ('3a823abe-dc4e-4899-a157-c434e2120953', 'WaterCloud.Web', '93.49', '16.25', '7', '2020-04-10', 1);
INSERT INTO `sys_serverstate` VALUES ('3a823abe-dc4e-4899-a157-c434e2120954', 'WaterCloud.Web', '93.49', '16.25', '4', '2020-04-11', 1);
INSERT INTO `sys_serverstate` VALUES ('3a823abe-dc4e-4899-a157-c434e2120955', 'WaterCloud.Web', '93.49', '16.25', '5', '2020-04-12', 1);
INSERT INTO `sys_serverstate` VALUES ('3a823abe-dc4e-4899-a157-c434e2120956', 'WaterCloud.Web', '88.88', '17.28', '0', '2020-04-13', 41);
INSERT INTO `sys_serverstate` VALUES ('e7182526-1d56-4508-a8d9-c108454cbea2', 'WaterCloud.Web', '78.03', '16.18', '0', '2020-04-15', 59);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_Account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_RealName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_NickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_HeadIcon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Gender` tinyint(1) NULL DEFAULT NULL,
  `F_Birthday` timestamp(0) NULL DEFAULT NULL,
  `F_MobilePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_WeChat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ManagerId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_SecurityLevel` int(11) NULL DEFAULT NULL,
  `F_Signature` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_OrganizeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DepartmentId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_RoleId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DutyId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_IsAdmin` tinyint(1) NULL DEFAULT NULL,
  `F_IsBoss` tinyint(1) NULL DEFAULT NULL,
  `F_IsLeaderInDepts` tinyint(1) NULL DEFAULT NULL,
  `F_IsSenior` tinyint(1) NULL DEFAULT NULL,
  `F_SortCode` int(11) NULL DEFAULT NULL,
  `F_DeleteMark` tinyint(1) NULL DEFAULT NULL,
  `F_EnabledMark` tinyint(1) NULL DEFAULT NULL,
  `F_Description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CreatorTime` timestamp(0) NULL DEFAULT NULL,
  `F_CreatorUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LastModifyTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastModifyUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DeleteTime` timestamp(0) NULL DEFAULT NULL,
  `F_DeleteUserId` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DingTalkUserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DingTalkUserName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_DingTalkAvatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_WxOpenId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_WxNickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_HeadImgUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE,
  UNIQUE INDEX `IX_Sys_User`(`F_Account`) USING BTREE COMMENT '唯一键'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('6052f242-15ae-4b77-ad95-929f8a6f244c', '10010', '哈哈哈', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5AB270C0-5D33-4203-A54F-4552699FDA3C', '554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', 'F0A2B36F-35A7-4660-B46C-D4AB796591EB', '23ED024E-0AAA-4C8D-9216-D1AB93348D26', NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2020-04-03 09:52:20', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '2020-04-16 10:38:37', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES ('9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'admin', '超级管理员', '超级管理员', NULL, 1, '2020-03-27 00:00:00', '13600000000', '3333', NULL, NULL, NULL, NULL, '5AB270C0-5D33-4203-A54F-4552699FDA3C', '554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', NULL, NULL, 0, 0, 0, 0, NULL, 0, 1, '系统内置账户', '2016-07-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '闫志辉', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_userlogon
-- ----------------------------
DROP TABLE IF EXISTS `sys_userlogon`;
CREATE TABLE `sys_userlogon`  (
  `F_Id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `F_UserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_UserPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_UserSecretkey` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_AllowStartTime` timestamp(0) NULL DEFAULT NULL,
  `F_AllowEndTime` timestamp(0) NULL DEFAULT NULL,
  `F_LockStartDate` timestamp(0) NULL DEFAULT NULL,
  `F_LockEndDate` timestamp(0) NULL DEFAULT NULL,
  `F_FirstVisitTime` timestamp(0) NULL DEFAULT NULL,
  `F_PreviousVisitTime` timestamp(0) NULL DEFAULT NULL,
  `F_LastVisitTime` timestamp(0) NULL DEFAULT NULL,
  `F_ChangePasswordDate` timestamp(0) NULL DEFAULT NULL,
  `F_MultiUserLogin` tinyint(1) NULL DEFAULT NULL,
  `F_LogOnCount` int(11) NULL DEFAULT NULL,
  `F_UserOnLine` tinyint(1) NULL DEFAULT NULL,
  `F_Question` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_AnswerQuestion` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_CheckIPAddress` tinyint(1) NULL DEFAULT NULL,
  `F_Language` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_Theme` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_LoginSession` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `F_ErrorNum` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`F_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_userlogon
-- ----------------------------
INSERT INTO `sys_userlogon` VALUES ('', '', '0fc8fc444215fa5698280501d09396cd', 'c212273e935c93a4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_userlogon` VALUES ('6052f242-15ae-4b77-ad95-929f8a6f244c', '6052f242-15ae-4b77-ad95-929f8a6f244c', '824bca0bd7e1a70511e0ebe9eb0489b8', '7e5a1f45d00feffe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `sys_userlogon` VALUES ('9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', 'd8f5b789e4bf6f81edb08834660ffe8b', '8210ef253bbf2d37', NULL, NULL, NULL, NULL, NULL, '2020-04-16 10:34:54', '2020-04-16 13:56:07', NULL, 0, 343, 0, NULL, NULL, 0, NULL, NULL, 'icbsnpbqbli1dihi1qogtcoq', 0);

-- ----------------------------
-- Table structure for wct_requestbasedata
-- ----------------------------
DROP TABLE IF EXISTS `wct_requestbasedata`;
CREATE TABLE `wct_requestbasedata`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OpenId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MsgType` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DataContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EventKey` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Url2` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `XmlContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` timestamp(0) NULL DEFAULT NULL,
  `Flag` int(11) NULL DEFAULT NULL,
  `RType` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtInt` int(11) NULL DEFAULT NULL,
  `ExtStr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr2` varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr3` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_requestrule
-- ----------------------------
DROP TABLE IF EXISTS `wct_requestrule`;
CREATE TABLE `wct_requestrule`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RuleName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReqKeywords` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReqestType` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ResponseType` int(11) NULL DEFAULT NULL,
  `IsDefault` tinyint(1) NULL DEFAULT NULL,
  `ModelFunctionName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModelFunctionId` int(11) NULL DEFAULT NULL,
  `Seq` int(11) NULL DEFAULT NULL,
  `CreateDate` timestamp(0) NULL DEFAULT NULL,
  `AgentUrl` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AgentToken` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsLikeSearch` tinyint(1) NULL DEFAULT NULL,
  `ExtInt` int(11) NULL DEFAULT NULL,
  `ExtInt2` int(11) NULL DEFAULT NULL,
  `ExtStr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr2` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr3` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr4` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_requestrulecontent
-- ----------------------------
DROP TABLE IF EXISTS `wct_requestrulecontent`;
CREATE TABLE `wct_requestrulecontent`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RContent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `RContent2` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DetailUrl` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PicUrl` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MediaUrl` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MeidaHDUrl` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Seq` int(11) NULL DEFAULT NULL,
  `CreateDate` timestamp(0) NULL DEFAULT NULL,
  `ExtInt` int(11) NULL DEFAULT NULL,
  `ExtInt2` int(11) NULL DEFAULT NULL,
  `ExtStr` varchar(800) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Extstr3` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_responsebasedata
-- ----------------------------
DROP TABLE IF EXISTS `wct_responsebasedata`;
CREATE TABLE `wct_responsebasedata`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OpenId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RequestType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RequestContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ResponseType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReponseContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `XmlContent` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` timestamp(0) NULL DEFAULT NULL,
  `Flag` int(11) NULL DEFAULT NULL,
  `RType` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtInt` int(11) NULL DEFAULT NULL,
  `ExtStr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr2` varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr3` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_templatemessage
-- ----------------------------
DROP TABLE IF EXISTS `wct_templatemessage`;
CREATE TABLE `wct_templatemessage`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TemplateId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Primary_Industry` int(11) NULL DEFAULT NULL,
  `Deputy_Industry` int(11) NULL DEFAULT NULL,
  `Data_First` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Keyword1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Keyword2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Keyword3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Keyword4` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Data_Keyword5` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LinkUrl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MiniProgram` int(11) NULL DEFAULT NULL,
  `Appid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Pagepath` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FirstColor` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RemarkColor` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_users
-- ----------------------------
DROP TABLE IF EXISTS `wct_users`;
CREATE TABLE `wct_users`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OpenId` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `City` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Country` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Province` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Language` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HeadImgUrl` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SubscribeTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Unionid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateDate` timestamp(0) NULL DEFAULT NULL,
  `GroupId` int(11) NULL DEFAULT NULL,
  `Status` int(11) NULL DEFAULT NULL,
  `WeixinId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UpdateDate` timestamp(0) NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wct_wxappconfig
-- ----------------------------
DROP TABLE IF EXISTS `wct_wxappconfig`;
CREATE TABLE `wct_wxappconfig`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WxName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WxId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WxCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `HeadPic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `City` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Token` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ApiUrl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppId` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AppSecret` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Access_Token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Encoding` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WxType` int(11) NULL DEFAULT NULL,
  `Status` tinyint(1) NULL DEFAULT NULL,
  `IsDefault` tinyint(1) NULL DEFAULT NULL,
  `CloseKW` tinyint(1) NULL DEFAULT NULL,
  `Remark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TimeStamp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ExtStr3` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PersonSynDate` timestamp(0) NULL DEFAULT NULL,
  `OpenidCount` int(11) NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wct_wxappconfig
-- ----------------------------
INSERT INTO `wct_wxappconfig` VALUES ('2d747bf6-9efc-43e9-8263-fb4cf6f16da8', '宜宾机电一体化研究所', 'gh_69c27280f38d', 'ybjd3936', NULL, NULL, NULL, 'yibinmetec', 'eims.dalecloud.cn/api/weixin/index?apiid=ybjd3936', 'wx21027f00d4234abc', 'e90f525e8d396fc68f0bdf4cafcc56b2', NULL, 'bwQlhHUl2pe2VU9CzVN9FCF2yZDAAiJBZqTLo3o9Oyb', 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '2019-07-04 13:33:02', 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wct_wxpropertyinfo
-- ----------------------------
DROP TABLE IF EXISTS `wct_wxpropertyinfo`;
CREATE TABLE `wct_wxpropertyinfo`  (
  `uuId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WxId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TypeId` int(11) NULL DEFAULT NULL,
  `TypeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IContent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ExpiresIn` int(11) NULL DEFAULT NULL,
  `Count` int(11) NULL DEFAULT NULL,
  `CategoryId` int(11) NULL DEFAULT NULL,
  `CategoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` tinyint(1) NULL DEFAULT NULL,
  `Creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CreateTime` timestamp(0) NULL DEFAULT NULL,
  `Modifier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifierId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ModifyTime` timestamp(0) NULL DEFAULT NULL,
  `DeleterId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeleteTime` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
