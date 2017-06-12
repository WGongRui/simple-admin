/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50610
Source Host           : 127.0.0.1:3306
Source Database       : simple_admin

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2017-06-12 23:45:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for logging_event
-- ----------------------------
DROP TABLE IF EXISTS `logging_event`;
CREATE TABLE `logging_event` (
  `timestmp` bigint(20) NOT NULL,
  `formatted_message` text NOT NULL,
  `logger_name` varchar(254) NOT NULL,
  `level_string` varchar(254) NOT NULL,
  `thread_name` varchar(254) DEFAULT NULL,
  `reference_flag` smallint(6) DEFAULT NULL,
  `arg0` varchar(254) DEFAULT NULL,
  `arg1` varchar(254) DEFAULT NULL,
  `arg2` varchar(254) DEFAULT NULL,
  `arg3` varchar(254) DEFAULT NULL,
  `caller_filename` varchar(254) NOT NULL,
  `caller_class` varchar(254) NOT NULL,
  `caller_method` varchar(254) NOT NULL,
  `caller_line` char(4) NOT NULL,
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logging_event
-- ----------------------------
INSERT INTO `logging_event` VALUES ('1496137309339', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '16', '1');
INSERT INTO `logging_event` VALUES ('1496137309376', 's', 'log.LogTest', 'INFO', 'main', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'main', '18', '2');
INSERT INTO `logging_event` VALUES ('1496137326883', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '16', '3');
INSERT INTO `logging_event` VALUES ('1496137326917', 's', 'log.LogTest', 'INFO', 'main', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'main', '18', '4');
INSERT INTO `logging_event` VALUES ('1496137348211', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '16', '5');
INSERT INTO `logging_event` VALUES ('1496137348250', 's', 'log.LogTest', 'INFO', 'main', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'main', '18', '6');
INSERT INTO `logging_event` VALUES ('1496137508378', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '16', '7');
INSERT INTO `logging_event` VALUES ('1496137508421', 'out one, tow, tow, tow, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', 'tow', 'tow', 'LogTest.java', 'log.LogTest', 'main', '17', '8');
INSERT INTO `logging_event` VALUES ('1496137508439', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '18', '9');
INSERT INTO `logging_event` VALUES ('1496137508448', 's', 'log.LogTest', 'INFO', 'main', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'main', '20', '10');
INSERT INTO `logging_event` VALUES ('1496138470280', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '16', '11');
INSERT INTO `logging_event` VALUES ('1496138470328', 'out one, tow, tow, tow, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', 'tow', 'tow', 'LogTest.java', 'log.LogTest', 'main', '17', '12');
INSERT INTO `logging_event` VALUES ('1496138470342', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '18', '13');
INSERT INTO `logging_event` VALUES ('1496138470351', 's', 'log.LogTest', 'INFO', 'main', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'main', '20', '14');
INSERT INTO `logging_event` VALUES ('1496138509847', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '16', '15');
INSERT INTO `logging_event` VALUES ('1496138509887', 'out one, tow, tow, tow, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', 'tow', 'tow', 'LogTest.java', 'log.LogTest', 'main', '17', '16');
INSERT INTO `logging_event` VALUES ('1496138509898', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '18', '17');
INSERT INTO `logging_event` VALUES ('1496138509913', 's', 'log.LogTest', 'INFO', 'main', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'main', '20', '18');
INSERT INTO `logging_event` VALUES ('1496138533567', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '16', '19');
INSERT INTO `logging_event` VALUES ('1496138533609', 'out one, tow, tow, tow, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', 'tow', 'tow', 'LogTest.java', 'log.LogTest', 'main', '17', '20');
INSERT INTO `logging_event` VALUES ('1496138533623', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '18', '21');
INSERT INTO `logging_event` VALUES ('1496138533637', 's', 'log.LogTest', 'INFO', 'main', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'main', '20', '22');
INSERT INTO `logging_event` VALUES ('1496138546291', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '16', '23');
INSERT INTO `logging_event` VALUES ('1496138546334', 'out one, tow, tow, tow, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', 'tow', 'tow', 'LogTest.java', 'log.LogTest', 'main', '17', '24');
INSERT INTO `logging_event` VALUES ('1496138546347', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '18', '25');
INSERT INTO `logging_event` VALUES ('1496138546364', 's', 'log.LogTest', 'INFO', 'main', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'main', '20', '26');
INSERT INTO `logging_event` VALUES ('1496144021570', 's', 'log.LogTest2', 'INFO', 'main', '1', null, null, null, null, 'LogTest2.java', 'log.LogTest2', 'testLog', '16', '27');
INSERT INTO `logging_event` VALUES ('1496144084435', 's', 'log.LogTest2', 'INFO', 'main', '1', null, null, null, null, 'LogTest2.java', 'log.LogTest2', 'testLog', '16', '28');
INSERT INTO `logging_event` VALUES ('1496144305865', 's', 'log.LogTest2', 'INFO', 'main', '1', null, null, null, null, 'LogTest2.java', 'log.LogTest2', 'testLog', '16', '29');
INSERT INTO `logging_event` VALUES ('1496144318789', 's', 'log.LogTest2', 'INFO', 'main', '1', null, null, null, null, 'LogTest2.java', 'log.LogTest2', 'testLog', '16', '30');
INSERT INTO `logging_event` VALUES ('1496144322915', 's', 'log.LogTest2', 'INFO', 'main', '1', null, null, null, null, 'LogTest2.java', 'log.LogTest2', 'testLog', '16', '31');
INSERT INTO `logging_event` VALUES ('1496144327565', 's', 'log.LogTest2', 'INFO', 'main', '1', null, null, null, null, 'LogTest2.java', 'log.LogTest2', 'testLog', '16', '32');
INSERT INTO `logging_event` VALUES ('1496144818790', 'Begin', 'log.LogTest2', 'INFO', 'main', '1', null, null, null, null, 'LogTest2.java', 'log.LogTest2', 'testLog', '18', '33');
INSERT INTO `logging_event` VALUES ('1496144832133', 'Begin', 'log.LogTest2', 'INFO', 'main', '1', null, null, null, null, 'LogTest2.java', 'log.LogTest2', 'testLog', '18', '34');
INSERT INTO `logging_event` VALUES ('1496145694504', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '16', '35');
INSERT INTO `logging_event` VALUES ('1496145694542', 'out one, tow, tow, tow, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', 'tow', 'tow', 'LogTest.java', 'log.LogTest', 'main', '17', '36');
INSERT INTO `logging_event` VALUES ('1496145694554', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '18', '37');
INSERT INTO `logging_event` VALUES ('1496145694563', 's', 'log.LogTest', 'INFO', 'main', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'main', '20', '38');
INSERT INTO `logging_event` VALUES ('1496145707533', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '16', '39');
INSERT INTO `logging_event` VALUES ('1496145707574', 'out one, tow, tow, tow, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', 'tow', 'tow', 'LogTest.java', 'log.LogTest', 'main', '17', '40');
INSERT INTO `logging_event` VALUES ('1496145707588', 'out one, tow', 'log.LogTest', 'INFO', 'main', '1', 'one', 'tow', null, null, 'LogTest.java', 'log.LogTest', 'main', '18', '41');
INSERT INTO `logging_event` VALUES ('1496145707597', 's', 'log.LogTest', 'INFO', 'main', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'main', '20', '42');
INSERT INTO `logging_event` VALUES ('1496145707898', '0b989f12-ef4d-40db-b4b1-876722ae6833', 'log.LogTest', 'INFO', 'Thread-104', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '43');
INSERT INTO `logging_event` VALUES ('1496145707899', '5b9cc4b6-74fd-43f6-97b5-abef5290b71a', 'log.LogTest', 'INFO', 'Thread-105', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '44');
INSERT INTO `logging_event` VALUES ('1496145707898', '0a355234-e99b-4c87-888e-36705396937d', 'log.LogTest', 'INFO', 'Thread-102', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '45');
INSERT INTO `logging_event` VALUES ('1496145707916', 'd53e2b1e-e74b-43e6-99ad-1048865a4c77', 'log.LogTest', 'INFO', 'Thread-2', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '46');
INSERT INTO `logging_event` VALUES ('1496145707898', '2680ff50-ebd0-450d-a98c-6ccc4296d9f5', 'log.LogTest', 'INFO', 'Thread-103', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '47');
INSERT INTO `logging_event` VALUES ('1496145707908', '72da306a-0087-4907-a676-065ebd39cd37', 'log.LogTest', 'INFO', 'Thread-106', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '48');
INSERT INTO `logging_event` VALUES ('1496145707922', '46310d96-7748-42dc-b96a-ac653db76115', 'log.LogTest', 'INFO', 'Thread-107', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '49');
INSERT INTO `logging_event` VALUES ('1496145707934', '045dfd64-ab80-4e36-80ac-10d31dc8ef7e', 'log.LogTest', 'INFO', 'Thread-108', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '50');
INSERT INTO `logging_event` VALUES ('1496145707935', 'b82568a4-64a5-48c9-81b7-2afcfc4fca3a', 'log.LogTest', 'INFO', 'Thread-110', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '51');
INSERT INTO `logging_event` VALUES ('1496145707937', 'f3a4e859-63b0-4383-a986-b7d8b1dc271d', 'log.LogTest', 'INFO', 'Thread-109', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '52');
INSERT INTO `logging_event` VALUES ('1496145707941', '6b4d0714-9669-4115-a5d5-4d9319df8ab1', 'log.LogTest', 'INFO', 'Thread-111', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '53');
INSERT INTO `logging_event` VALUES ('1496145707941', '8a20fddc-a8b2-4853-b645-42d95f13d6ae', 'log.LogTest', 'INFO', 'Thread-112', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '54');
INSERT INTO `logging_event` VALUES ('1496145707947', '29632af1-a11f-46a6-bdca-fd38e3320b3e', 'log.LogTest', 'INFO', 'Thread-113', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '55');
INSERT INTO `logging_event` VALUES ('1496145707953', '055bb2d7-c4c2-4467-807f-e01abeb9e4f6', 'log.LogTest', 'INFO', 'Thread-121', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '56');
INSERT INTO `logging_event` VALUES ('1496145707951', '5b69520f-afba-4b1c-a089-f3fec47d860d', 'log.LogTest', 'INFO', 'Thread-114', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '57');
INSERT INTO `logging_event` VALUES ('1496145707954', '54de9547-5804-44c5-9cce-d73242231896', 'log.LogTest', 'INFO', 'Thread-115', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '58');
INSERT INTO `logging_event` VALUES ('1496145707957', '2901b1a6-2bbc-4974-b9a0-3c4755982f7b', 'log.LogTest', 'INFO', 'Thread-116', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '59');
INSERT INTO `logging_event` VALUES ('1496145707957', '1cbb8969-596e-4648-8e24-82a55ee00d91', 'log.LogTest', 'INFO', 'Thread-123', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '60');
INSERT INTO `logging_event` VALUES ('1496145707958', 'ff7d0f5c-16b4-4d99-90fc-f1383eab499a', 'log.LogTest', 'INFO', 'Thread-117', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '61');
INSERT INTO `logging_event` VALUES ('1496145707964', '00b744c9-c797-4c63-afd1-a39aeff557f5', 'log.LogTest', 'INFO', 'Thread-120', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '62');
INSERT INTO `logging_event` VALUES ('1496145707965', '7ea913bf-763e-4afc-b4a4-cff20d13fcd3', 'log.LogTest', 'INFO', 'Thread-118', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '63');
INSERT INTO `logging_event` VALUES ('1496145707968', '0456c5d4-97d9-4504-9af2-b22323bb5f8e', 'log.LogTest', 'INFO', 'Thread-122', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '64');
INSERT INTO `logging_event` VALUES ('1496145707965', 'af45ff52-2076-4880-aa9a-b1664b69b62f', 'log.LogTest', 'INFO', 'Thread-119', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '65');
INSERT INTO `logging_event` VALUES ('1496145707973', '1d77a328-7d8e-4f7b-8454-5fb016bcb3ac', 'log.LogTest', 'INFO', 'Thread-125', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '66');
INSERT INTO `logging_event` VALUES ('1496145707974', '4fddefa1-a1fd-4d7c-93c8-28bfc1cb7074', 'log.LogTest', 'INFO', 'Thread-126', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '67');
INSERT INTO `logging_event` VALUES ('1496145707972', '7b28ebce-8d00-4cf6-9f78-9ae8e05df9f4', 'log.LogTest', 'INFO', 'Thread-124', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '68');
INSERT INTO `logging_event` VALUES ('1496145707978', 'e65dd0b6-0858-4426-9a49-8962360881bf', 'log.LogTest', 'INFO', 'Thread-128', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '69');
INSERT INTO `logging_event` VALUES ('1496145707982', '66b428bd-851f-47cf-ada8-7a7dfeaaf411', 'log.LogTest', 'INFO', 'Thread-129', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '70');
INSERT INTO `logging_event` VALUES ('1496145707983', '78faa534-7253-4482-87fc-7a51b68ff6bf', 'log.LogTest', 'INFO', 'Thread-130', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '71');
INSERT INTO `logging_event` VALUES ('1496145707982', 'b3b85bf2-959e-4097-9433-1356f22c02a2', 'log.LogTest', 'INFO', 'Thread-127', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '72');
INSERT INTO `logging_event` VALUES ('1496145707985', '06d78304-6b18-44ad-a2b0-72fa80352a39', 'log.LogTest', 'INFO', 'Thread-131', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '73');
INSERT INTO `logging_event` VALUES ('1496145707989', '218023c4-c00f-4074-ba1a-cfaee9aa24e9', 'log.LogTest', 'INFO', 'Thread-132', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '74');
INSERT INTO `logging_event` VALUES ('1496145707991', 'd9034211-e466-4893-a9be-cf60a1bb706a', 'log.LogTest', 'INFO', 'Thread-133', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '75');
INSERT INTO `logging_event` VALUES ('1496145708002', '1735a1e6-1a9d-41b4-a038-b38680d9e915', 'log.LogTest', 'INFO', 'Thread-134', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '76');
INSERT INTO `logging_event` VALUES ('1496145708005', '47fc35b2-74f2-4dc7-a2b7-8658d4401874', 'log.LogTest', 'INFO', 'Thread-136', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '77');
INSERT INTO `logging_event` VALUES ('1496145708007', 'bc84d08f-df05-444d-aa3c-803e0f8580c5', 'log.LogTest', 'INFO', 'Thread-137', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '78');
INSERT INTO `logging_event` VALUES ('1496145708004', '3d0e17c5-1f5d-48ce-9b6d-b1d45e72825d', 'log.LogTest', 'INFO', 'Thread-135', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '79');
INSERT INTO `logging_event` VALUES ('1496145708010', 'e65eb32c-c389-41bd-8049-bdb05ae08695', 'log.LogTest', 'INFO', 'Thread-138', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '80');
INSERT INTO `logging_event` VALUES ('1496145708013', '7287340f-3ca9-4ff0-bce4-1ca0bf31d38a', 'log.LogTest', 'INFO', 'Thread-139', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '81');
INSERT INTO `logging_event` VALUES ('1496145708014', 'f438f2da-7529-4f0a-a523-cf0563d92b12', 'log.LogTest', 'INFO', 'Thread-140', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '82');
INSERT INTO `logging_event` VALUES ('1496145708015', '041bd60c-9edb-4728-ac78-31f28214e06c', 'log.LogTest', 'INFO', 'Thread-141', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '83');
INSERT INTO `logging_event` VALUES ('1496145708020', '516cf6f5-2167-4d9c-a3f1-1c815808b8bf', 'log.LogTest', 'INFO', 'Thread-142', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '84');
INSERT INTO `logging_event` VALUES ('1496145708020', 'cd00fbc7-2feb-4515-ae40-aa50e6fa6fa1', 'log.LogTest', 'INFO', 'Thread-143', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '85');
INSERT INTO `logging_event` VALUES ('1496145708021', '00b0786e-a1da-4f49-ad92-36b92e6bbbea', 'log.LogTest', 'INFO', 'Thread-144', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '86');
INSERT INTO `logging_event` VALUES ('1496145708023', '0dea5773-70b0-4ad2-a898-2bc1ca161808', 'log.LogTest', 'INFO', 'Thread-149', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '87');
INSERT INTO `logging_event` VALUES ('1496145708027', 'cf376745-c43a-472d-8727-77cd49c0be61', 'log.LogTest', 'INFO', 'Thread-146', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '88');
INSERT INTO `logging_event` VALUES ('1496145708029', '93faef83-be7f-456c-8be3-daaaa64cc312', 'log.LogTest', 'INFO', 'Thread-145', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '89');
INSERT INTO `logging_event` VALUES ('1496145708031', 'e7588877-2420-4c99-99df-8eed4dfff307', 'log.LogTest', 'INFO', 'Thread-147', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '90');
INSERT INTO `logging_event` VALUES ('1496145708034', '28a540e5-45a5-4eb0-9105-5807ad7fb2fe', 'log.LogTest', 'INFO', 'Thread-150', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '91');
INSERT INTO `logging_event` VALUES ('1496145708033', 'c46cbedf-816f-404a-a106-89c02a2614df', 'log.LogTest', 'INFO', 'Thread-148', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '92');
INSERT INTO `logging_event` VALUES ('1496145708035', '7e31cf44-6712-4349-b738-5569c1c3d38b', 'log.LogTest', 'INFO', 'Thread-151', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '93');
INSERT INTO `logging_event` VALUES ('1496145708040', '851161a6-0b78-46c0-96d1-ccd557aa63d2', 'log.LogTest', 'INFO', 'Thread-154', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '94');
INSERT INTO `logging_event` VALUES ('1496145708039', '2a940274-1350-4574-b8f8-4356c07f46b7', 'log.LogTest', 'INFO', 'Thread-152', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '95');
INSERT INTO `logging_event` VALUES ('1496145708040', 'd156c10e-d688-4621-a813-67e0e482f342', 'log.LogTest', 'INFO', 'Thread-153', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '96');
INSERT INTO `logging_event` VALUES ('1496145708042', '96a34cf5-861b-4274-a347-b9daa28904f1', 'log.LogTest', 'INFO', 'Thread-155', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '97');
INSERT INTO `logging_event` VALUES ('1496145708045', '01b2c9f5-2334-4c8e-bdc3-72690fcf7abe', 'log.LogTest', 'INFO', 'Thread-156', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '98');
INSERT INTO `logging_event` VALUES ('1496145708046', 'f45a4725-d781-4ddc-ab47-581ff9aa78af', 'log.LogTest', 'INFO', 'Thread-157', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '99');
INSERT INTO `logging_event` VALUES ('1496145708051', 'e678f46e-2208-46b6-92dd-fc36f37a91b8', 'log.LogTest', 'INFO', 'Thread-159', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '100');
INSERT INTO `logging_event` VALUES ('1496145708052', '04bdeb16-fa7a-48fb-9ddc-03336eb35071', 'log.LogTest', 'INFO', 'Thread-162', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '101');
INSERT INTO `logging_event` VALUES ('1496145708051', '50cbb586-504b-43a1-a067-406b1427ad2e', 'log.LogTest', 'INFO', 'Thread-158', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '102');
INSERT INTO `logging_event` VALUES ('1496145708054', '8c813a07-1f71-49fe-b311-1c77ecf2ff22', 'log.LogTest', 'INFO', 'Thread-160', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '103');
INSERT INTO `logging_event` VALUES ('1496145708060', 'e18f6155-24cd-4356-a46b-411c2c143def', 'log.LogTest', 'INFO', 'Thread-163', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '104');
INSERT INTO `logging_event` VALUES ('1496145708057', '133e6b4a-7880-432b-9179-d668253b786c', 'log.LogTest', 'INFO', 'Thread-161', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '105');
INSERT INTO `logging_event` VALUES ('1496145708061', '81c09ef5-597b-4988-bf89-fa422f3c25eb', 'log.LogTest', 'INFO', 'Thread-165', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '106');
INSERT INTO `logging_event` VALUES ('1496145708072', 'a17ea862-77cd-4490-86ff-fc97b2ca34e1', 'log.LogTest', 'INFO', 'Thread-167', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '107');
INSERT INTO `logging_event` VALUES ('1496145708072', '080f07e7-799b-4427-a002-5ea5fc61bce5', 'log.LogTest', 'INFO', 'Thread-166', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '108');
INSERT INTO `logging_event` VALUES ('1496145708061', '18005768-e4c3-4668-8136-0225d4fd218c', 'log.LogTest', 'INFO', 'Thread-164', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '109');
INSERT INTO `logging_event` VALUES ('1496145708077', 'c29d2e0e-aa31-4ec5-849c-31c200a44688', 'log.LogTest', 'INFO', 'Thread-50', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '110');
INSERT INTO `logging_event` VALUES ('1496145708077', '9ed149d1-0d4b-4107-a73b-38b1a0f61946', 'log.LogTest', 'INFO', 'Thread-172', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '111');
INSERT INTO `logging_event` VALUES ('1496145708081', 'afa2a2e2-494b-42a0-9ddc-0369c93137be', 'log.LogTest', 'INFO', 'Thread-171', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '112');
INSERT INTO `logging_event` VALUES ('1496145708085', '31adccad-c6a1-4e47-9907-c2af980a11ba', 'log.LogTest', 'INFO', 'Thread-173', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '113');
INSERT INTO `logging_event` VALUES ('1496145708085', '90bd8bf0-3d2e-4e92-95a1-9ac0a43bc4b5', 'log.LogTest', 'INFO', 'Thread-170', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '114');
INSERT INTO `logging_event` VALUES ('1496145708086', '08b592a0-d00e-45cc-970b-6130d8240394', 'log.LogTest', 'INFO', 'Thread-174', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '115');
INSERT INTO `logging_event` VALUES ('1496145708089', '27af490f-1727-48fe-9417-48cdf41b8424', 'log.LogTest', 'INFO', 'Thread-175', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '116');
INSERT INTO `logging_event` VALUES ('1496145708092', 'b7bf5787-d7f5-4de9-861b-614dbdd72d4c', 'log.LogTest', 'INFO', 'Thread-176', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '117');
INSERT INTO `logging_event` VALUES ('1496145708093', '2bb4532e-51a9-4205-bafc-a1701b8c1bb8', 'log.LogTest', 'INFO', 'Thread-177', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '118');
INSERT INTO `logging_event` VALUES ('1496145708097', '4333dd03-6659-4301-84f1-323fc14ac957', 'log.LogTest', 'INFO', 'Thread-178', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '119');
INSERT INTO `logging_event` VALUES ('1496145708099', '3e6abee9-5997-417e-a736-fde7f951d8a4', 'log.LogTest', 'INFO', 'Thread-179', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '120');
INSERT INTO `logging_event` VALUES ('1496145708101', 'c6e3486b-fd19-4bb4-9fd0-8bf3ca606da6', 'log.LogTest', 'INFO', 'Thread-180', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '121');
INSERT INTO `logging_event` VALUES ('1496145708105', 'd71961bb-5ccb-4963-95ae-47e9af219cb0', 'log.LogTest', 'INFO', 'Thread-181', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '122');
INSERT INTO `logging_event` VALUES ('1496145708107', '2a43ce6a-f7db-4f75-8036-ad936b85bd66', 'log.LogTest', 'INFO', 'Thread-182', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '123');
INSERT INTO `logging_event` VALUES ('1496145708108', 'f755e1df-1940-407a-ae11-f901baefa970', 'log.LogTest', 'INFO', 'Thread-183', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '124');
INSERT INTO `logging_event` VALUES ('1496145708112', '3e42a7ce-4123-4890-a630-7d78bcc73cd1', 'log.LogTest', 'INFO', 'Thread-184', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '125');
INSERT INTO `logging_event` VALUES ('1496145708115', '7a8e5814-9b0e-466e-9451-eb166808bf0e', 'log.LogTest', 'INFO', 'Thread-186', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '126');
INSERT INTO `logging_event` VALUES ('1496145708115', '2bcf51f8-d948-4eb7-b493-49603c32162d', 'log.LogTest', 'INFO', 'Thread-185', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '127');
INSERT INTO `logging_event` VALUES ('1496145708117', '572e56fb-4961-4ba6-8d09-ac183bb2b12e', 'log.LogTest', 'INFO', 'Thread-187', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '128');
INSERT INTO `logging_event` VALUES ('1496145708118', 'b22c01e7-9cb0-4ef6-a45d-13492f6d9e2f', 'log.LogTest', 'INFO', 'Thread-188', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '129');
INSERT INTO `logging_event` VALUES ('1496145708123', '86cb6919-3036-4a3d-b500-23096b8c77ab', 'log.LogTest', 'INFO', 'Thread-189', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '130');
INSERT INTO `logging_event` VALUES ('1496145708127', '9e891565-270c-4ae9-b345-dd618c88f6de', 'log.LogTest', 'INFO', 'Thread-190', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '131');
INSERT INTO `logging_event` VALUES ('1496145708128', 'abefaae1-eee4-4138-8c0c-4a3727d3568e', 'log.LogTest', 'INFO', 'Thread-191', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '132');
INSERT INTO `logging_event` VALUES ('1496145708130', 'c7eced1f-823f-42a1-b293-379fb194aff2', 'log.LogTest', 'INFO', 'Thread-192', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '133');
INSERT INTO `logging_event` VALUES ('1496145708073', 'd74dc5ba-42d1-48a0-9792-1dc18b621b16', 'log.LogTest', 'INFO', 'Thread-168', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '134');
INSERT INTO `logging_event` VALUES ('1496145708145', 'f6ce72b8-7937-4402-a809-f44c9f373776', 'log.LogTest', 'INFO', 'Thread-198', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '135');
INSERT INTO `logging_event` VALUES ('1496145708145', '8ee97fc3-84c4-4a5e-8c57-b24d6cd8c2bb', 'log.LogTest', 'INFO', 'Thread-194', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '136');
INSERT INTO `logging_event` VALUES ('1496145708134', '2d71e013-875c-4174-a1b5-f3aeb19dfc90', 'log.LogTest', 'INFO', 'Thread-193', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '137');
INSERT INTO `logging_event` VALUES ('1496145708147', '58cbf6a2-4b29-4058-97dc-10be5ec06d30', 'log.LogTest', 'INFO', 'Thread-196', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '138');
INSERT INTO `logging_event` VALUES ('1496145708152', 'f77d4f62-741c-4e31-afea-2cc46c04d7ad', 'log.LogTest', 'INFO', 'Thread-197', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '139');
INSERT INTO `logging_event` VALUES ('1496145708155', '6abd53c1-093e-438a-91d6-0b6a66330319', 'log.LogTest', 'INFO', 'Thread-195', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '140');
INSERT INTO `logging_event` VALUES ('1496145708156', '2acb5773-3b9f-41a6-9fdb-050807b9b16c', 'log.LogTest', 'INFO', 'Thread-199', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '141');
INSERT INTO `logging_event` VALUES ('1496145708157', 'b3e0a95f-83b1-4304-bfc4-160194a86d22', 'log.LogTest', 'INFO', 'Thread-200', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '142');
INSERT INTO `logging_event` VALUES ('1496145708160', 'f2209d7c-3d93-4baa-8e96-63cf85c9283a', 'log.LogTest', 'INFO', 'Thread-201', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '143');
INSERT INTO `logging_event` VALUES ('1496145708162', '27aac203-8584-4892-8530-5b3d17b75dcb', 'log.LogTest', 'INFO', 'Thread-202', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '144');
INSERT INTO `logging_event` VALUES ('1496145708165', '91a27f99-bf1a-450a-aa7d-d8bff188e707', 'log.LogTest', 'INFO', 'Thread-101', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '145');
INSERT INTO `logging_event` VALUES ('1496145708168', '62825448-51bd-4f9e-973e-a2e7ad71f37b', 'log.LogTest', 'INFO', 'Thread-100', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '146');
INSERT INTO `logging_event` VALUES ('1496145708168', 'afb9c09f-e839-46b3-b23d-3b7af4dc052e', 'log.LogTest', 'INFO', 'Thread-99', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '147');
INSERT INTO `logging_event` VALUES ('1496145708169', '9f6eb870-990a-4e98-97ad-57df100ca8c9', 'log.LogTest', 'INFO', 'Thread-98', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '148');
INSERT INTO `logging_event` VALUES ('1496145708174', '07405e1b-39dc-4251-8c1f-4b69beea0eda', 'log.LogTest', 'INFO', 'Thread-97', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '149');
INSERT INTO `logging_event` VALUES ('1496145708176', '06ee778a-bebd-40a6-8517-c89cb62c7b2f', 'log.LogTest', 'INFO', 'Thread-95', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '150');
INSERT INTO `logging_event` VALUES ('1496145708175', 'af3d918f-23b7-483f-b888-ecf127242d74', 'log.LogTest', 'INFO', 'Thread-96', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '151');
INSERT INTO `logging_event` VALUES ('1496145708180', '4abe3e18-0088-48ab-8c42-c3374544c617', 'log.LogTest', 'INFO', 'Thread-94', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '152');
INSERT INTO `logging_event` VALUES ('1496145708191', '032be146-19aa-4cca-99a9-526d66837510', 'log.LogTest', 'INFO', 'Thread-73', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '153');
INSERT INTO `logging_event` VALUES ('1496145708189', '6877961b-2471-4515-88df-979e739cc8ea', 'log.LogTest', 'INFO', 'Thread-78', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '154');
INSERT INTO `logging_event` VALUES ('1496145708189', '4239343b-6272-41d1-8d58-4ab2b5163b50', 'log.LogTest', 'INFO', 'Thread-80', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '155');
INSERT INTO `logging_event` VALUES ('1496145708189', '9ee5ae40-f263-4cc1-8f79-66376369f123', 'log.LogTest', 'INFO', 'Thread-77', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '156');
INSERT INTO `logging_event` VALUES ('1496145708189', '52ef8617-79c8-41c7-9fb9-f0b3c27a51a0', 'log.LogTest', 'INFO', 'Thread-79', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '157');
INSERT INTO `logging_event` VALUES ('1496145708190', '8e9be689-47a5-4356-acc6-862f3bbbd936', 'log.LogTest', 'INFO', 'Thread-76', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '158');
INSERT INTO `logging_event` VALUES ('1496145708191', '6523ac1f-f7c6-48c1-a4ec-18fdb21ec032', 'log.LogTest', 'INFO', 'Thread-75', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '159');
INSERT INTO `logging_event` VALUES ('1496145708191', 'a12bb7ae-aa5c-479c-bdb4-ad422e47accd', 'log.LogTest', 'INFO', 'Thread-74', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '160');
INSERT INTO `logging_event` VALUES ('1496145708192', '1b2a2068-f866-4607-b0c7-cd3bb861bffc', 'log.LogTest', 'INFO', 'Thread-72', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '161');
INSERT INTO `logging_event` VALUES ('1496145708187', '4ea82e6c-bb2a-4990-ae8c-9db9ff307f03', 'log.LogTest', 'INFO', 'Thread-82', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '162');
INSERT INTO `logging_event` VALUES ('1496145708187', 'ecd31cd1-2937-4e45-b455-273100fc67b6', 'log.LogTest', 'INFO', 'Thread-81', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '163');
INSERT INTO `logging_event` VALUES ('1496145708239', '9e24be4e-ee98-407b-b0da-98912bcda816', 'log.LogTest', 'INFO', 'Thread-69', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '164');
INSERT INTO `logging_event` VALUES ('1496145708186', '67aeedd8-edec-4c07-af25-e7447c39733d', 'log.LogTest', 'INFO', 'Thread-84', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '165');
INSERT INTO `logging_event` VALUES ('1496145708187', '412c87a5-66b7-4250-8768-e2c7d389cfe0', 'log.LogTest', 'INFO', 'Thread-83', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '166');
INSERT INTO `logging_event` VALUES ('1496145708186', '6fb0a673-0728-43a3-8810-2d641acc44d0', 'log.LogTest', 'INFO', 'Thread-85', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '167');
INSERT INTO `logging_event` VALUES ('1496145708185', '9d11a057-60e0-446b-a795-c4f47db3c3fe', 'log.LogTest', 'INFO', 'Thread-87', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '168');
INSERT INTO `logging_event` VALUES ('1496145708185', '10bcc2ae-de65-4dfe-8847-4167f9c1e3c1', 'log.LogTest', 'INFO', 'Thread-86', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '169');
INSERT INTO `logging_event` VALUES ('1496145708185', '46e73255-6af2-49cf-aa4d-d07ab11323fd', 'log.LogTest', 'INFO', 'Thread-88', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '170');
INSERT INTO `logging_event` VALUES ('1496145708184', '7ec2890b-33d1-4c54-a840-20c2a0b7d1fb', 'log.LogTest', 'INFO', 'Thread-89', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '171');
INSERT INTO `logging_event` VALUES ('1496145708183', '4a54a1f7-ff19-4945-b1bf-da2fb5063473', 'log.LogTest', 'INFO', 'Thread-91', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '172');
INSERT INTO `logging_event` VALUES ('1496145708184', '8bee6be5-e301-4da4-a80e-f28ced1df63f', 'log.LogTest', 'INFO', 'Thread-90', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '173');
INSERT INTO `logging_event` VALUES ('1496145708182', '032843c5-dda5-4b5b-8a92-0c3e5d8ded80', 'log.LogTest', 'INFO', 'Thread-92', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '174');
INSERT INTO `logging_event` VALUES ('1496145708182', 'd9b1aa48-cae5-4b27-bd71-165fc4b29da8', 'log.LogTest', 'INFO', 'Thread-93', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '175');
INSERT INTO `logging_event` VALUES ('1496145708192', 'ee605796-a5ab-44a8-923a-b4d5f905ce41', 'log.LogTest', 'INFO', 'Thread-71', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '176');
INSERT INTO `logging_event` VALUES ('1496145708192', '35997909-330e-43aa-86c4-7eae02195d9f', 'log.LogTest', 'INFO', 'Thread-70', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '177');
INSERT INTO `logging_event` VALUES ('1496145708254', '103b635e-1b04-450f-aefb-68341874d998', 'log.LogTest', 'INFO', 'Thread-68', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '178');
INSERT INTO `logging_event` VALUES ('1496145708255', '6e0b5220-9ec4-4a01-902f-38fdcd9169a6', 'log.LogTest', 'INFO', 'Thread-67', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '179');
INSERT INTO `logging_event` VALUES ('1496145708256', 'ad173df2-1ff9-4274-a8d3-6212c70eb829', 'log.LogTest', 'INFO', 'Thread-66', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '180');
INSERT INTO `logging_event` VALUES ('1496145708260', 'c976e98f-aa49-4fad-85f1-95bfbce4108e', 'log.LogTest', 'INFO', 'Thread-65', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '181');
INSERT INTO `logging_event` VALUES ('1496145708261', '0b8db25d-e7fe-446a-9423-dd3fac415ef3', 'log.LogTest', 'INFO', 'Thread-64', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '182');
INSERT INTO `logging_event` VALUES ('1496145708262', 'c56e6e8d-1b30-4943-a7ad-5b7eb35a2822', 'log.LogTest', 'INFO', 'Thread-63', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '183');
INSERT INTO `logging_event` VALUES ('1496145708263', '72639e6b-783e-4b59-a41d-3a6be9ee0e2b', 'log.LogTest', 'INFO', 'Thread-62', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '184');
INSERT INTO `logging_event` VALUES ('1496145708265', 'fd606566-a1df-4641-92dd-d064bbfbb2b8', 'log.LogTest', 'INFO', 'Thread-61', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '185');
INSERT INTO `logging_event` VALUES ('1496145708285', '0eefc9df-f0a9-4e6a-aebb-a1b3c6fb2867', 'log.LogTest', 'INFO', 'Thread-28', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '186');
INSERT INTO `logging_event` VALUES ('1496145708284', 'bca8dffb-318a-491b-a8a9-0edc085ae1ed', 'log.LogTest', 'INFO', 'Thread-32', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '187');
INSERT INTO `logging_event` VALUES ('1496145708285', 'd9a4ac12-b9f8-44ad-8a3e-0975bc94add1', 'log.LogTest', 'INFO', 'Thread-29', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '188');
INSERT INTO `logging_event` VALUES ('1496145708280', '060fa38a-8471-4e97-a843-f8766d103e74', 'log.LogTest', 'INFO', 'Thread-43', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '189');
INSERT INTO `logging_event` VALUES ('1496145708279', '471046c4-0c72-4208-8283-6bf3448af293', 'log.LogTest', 'INFO', 'Thread-45', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '190');
INSERT INTO `logging_event` VALUES ('1496145708284', '238c2e12-63e2-4190-a976-dc827f4c3e5f', 'log.LogTest', 'INFO', 'Thread-30', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '191');
INSERT INTO `logging_event` VALUES ('1496145708277', 'd0aaed2d-f66a-4569-9abe-02277b02bd91', 'log.LogTest', 'INFO', 'Thread-48', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '192');
INSERT INTO `logging_event` VALUES ('1496145708319', '75063fff-8be7-4185-af6e-4574923ccfc0', 'log.LogTest', 'INFO', 'Thread-20', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '193');
INSERT INTO `logging_event` VALUES ('1496145708321', '1297ab8a-2a37-4162-b279-c32a48dff7f9', 'log.LogTest', 'INFO', 'Thread-19', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '194');
INSERT INTO `logging_event` VALUES ('1496145708321', '2e3b75f0-c03d-4654-a6cd-c8b730865f0b', 'log.LogTest', 'INFO', 'Thread-18', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '195');
INSERT INTO `logging_event` VALUES ('1496145708322', '5dcdf333-60ca-4a24-9b26-ac7c5df93126', 'log.LogTest', 'INFO', 'Thread-17', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '196');
INSERT INTO `logging_event` VALUES ('1496145708284', '0d71a05e-f182-4475-90b3-f4ea84ff757d', 'log.LogTest', 'INFO', 'Thread-31', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '197');
INSERT INTO `logging_event` VALUES ('1496145708286', '86e1e5e2-e266-4173-81b9-84681eb70ed1', 'log.LogTest', 'INFO', 'Thread-26', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '198');
INSERT INTO `logging_event` VALUES ('1496145708286', '2d57085b-1521-4848-bafb-12d5afd4784f', 'log.LogTest', 'INFO', 'Thread-27', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '199');
INSERT INTO `logging_event` VALUES ('1496145708317', '83959cc4-b265-4630-bca8-c9d92752db52', 'log.LogTest', 'INFO', 'Thread-21', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '200');
INSERT INTO `logging_event` VALUES ('1496145708287', '68f14273-c8ad-45ce-a735-f37be0c30a9c', 'log.LogTest', 'INFO', 'Thread-22', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '201');
INSERT INTO `logging_event` VALUES ('1496145708334', '0c6c3428-8d39-436e-9bf0-a622937561cd', 'log.LogTest', 'INFO', 'Thread-16', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '202');
INSERT INTO `logging_event` VALUES ('1496145708269', 'f10f3520-cdb0-4fb9-970e-7deebba6205c', 'log.LogTest', 'INFO', 'Thread-59', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '203');
INSERT INTO `logging_event` VALUES ('1496145708334', 'af931fb5-bb29-43ff-9407-f215601fa503', 'log.LogTest', 'INFO', 'Thread-15', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '204');
INSERT INTO `logging_event` VALUES ('1496145708271', 'd4251776-534e-4414-a6d4-2e35b332337b', 'log.LogTest', 'INFO', 'Thread-58', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '205');
INSERT INTO `logging_event` VALUES ('1496145708338', '9aa92775-f913-47ad-a612-9a9f95d19ace', 'log.LogTest', 'INFO', 'Thread-14', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '206');
INSERT INTO `logging_event` VALUES ('1496145708268', 'bd5bf096-196b-441b-8900-f9e63fce2d14', 'log.LogTest', 'INFO', 'Thread-60', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '207');
INSERT INTO `logging_event` VALUES ('1496145708342', '7e596cc7-a424-485e-ab9a-a138eb7d6bcb', 'log.LogTest', 'INFO', 'Thread-13', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '208');
INSERT INTO `logging_event` VALUES ('1496145708273', '789a41d9-0509-4a75-b399-9a581d1270ec', 'log.LogTest', 'INFO', 'Thread-57', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '209');
INSERT INTO `logging_event` VALUES ('1496145708346', '457a6951-70c4-4402-907d-492e48f16100', 'log.LogTest', 'INFO', 'Thread-12', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '210');
INSERT INTO `logging_event` VALUES ('1496145708348', 'ecbefb1e-62ea-40f3-8493-c7746b08f07a', 'log.LogTest', 'INFO', 'Thread-11', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '211');
INSERT INTO `logging_event` VALUES ('1496145708273', '0f67ffd5-db21-4392-8601-496ee6791246', 'log.LogTest', 'INFO', 'Thread-56', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '212');
INSERT INTO `logging_event` VALUES ('1496145708274', 'c7d21f57-a98f-4351-a8cc-9e8b5fc8a706', 'log.LogTest', 'INFO', 'Thread-54', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '213');
INSERT INTO `logging_event` VALUES ('1496145708351', 'be6b6bc4-8398-41df-9134-13b5afcdce3f', 'log.LogTest', 'INFO', 'Thread-10', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '214');
INSERT INTO `logging_event` VALUES ('1496145708274', 'fe8196a0-423a-409c-bb95-b0c7f04d5ae3', 'log.LogTest', 'INFO', 'Thread-53', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '215');
INSERT INTO `logging_event` VALUES ('1496145708354', '5a795a9b-bb5b-4725-8cb7-0413476f5b2a', 'log.LogTest', 'INFO', 'Thread-8', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '216');
INSERT INTO `logging_event` VALUES ('1496145708274', 'f789eb3c-a041-43c9-aacc-9d328dcb74ea', 'log.LogTest', 'INFO', 'Thread-55', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '217');
INSERT INTO `logging_event` VALUES ('1496145708357', '924284cb-2eb3-4b12-8847-35ce268bdda2', 'log.LogTest', 'INFO', 'Thread-7', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '218');
INSERT INTO `logging_event` VALUES ('1496145708358', 'd7295c83-3cbc-44b0-a565-3648efc8051b', 'log.LogTest', 'INFO', 'Thread-6', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '219');
INSERT INTO `logging_event` VALUES ('1496145708276', 'f32c0546-2a17-4e33-987c-575ad4b3e97c', 'log.LogTest', 'INFO', 'Thread-52', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '220');
INSERT INTO `logging_event` VALUES ('1496145708364', 'd02b0e3b-4f2e-48b3-8d2f-bf0bc0b0bd69', 'log.LogTest', 'INFO', 'Thread-4', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '221');
INSERT INTO `logging_event` VALUES ('1496145708362', '879cc07f-0399-42ce-b668-c75aa78b2abd', 'log.LogTest', 'INFO', 'Thread-5', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '222');
INSERT INTO `logging_event` VALUES ('1496145708276', '5763940a-1996-4cfa-bb61-796ddb998b23', 'log.LogTest', 'INFO', 'Thread-51', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '223');
INSERT INTO `logging_event` VALUES ('1496145708365', '4545454a-d929-4641-ad3e-3f52c11d2e55', 'log.LogTest', 'INFO', 'Thread-3', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '224');
INSERT INTO `logging_event` VALUES ('1496145708276', 'f5e23a03-ae7a-4977-a09c-66c3fe5e13ce', 'log.LogTest', 'INFO', 'Thread-169', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '225');
INSERT INTO `logging_event` VALUES ('1496145708277', 'ab6648d2-f8a3-4046-98ed-dc338428dfe9', 'log.LogTest', 'INFO', 'Thread-49', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '226');
INSERT INTO `logging_event` VALUES ('1496145708277', '8182ce45-d0cb-46b3-b3e8-407b49bb7129', 'log.LogTest', 'INFO', 'Thread-47', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '227');
INSERT INTO `logging_event` VALUES ('1496145708278', '7d9829ae-4f46-47ab-b911-a069dceb2ef1', 'log.LogTest', 'INFO', 'Thread-46', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '228');
INSERT INTO `logging_event` VALUES ('1496145708279', 'c13c0bc8-b530-4dc6-aef7-943e97a170a9', 'log.LogTest', 'INFO', 'Thread-44', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '229');
INSERT INTO `logging_event` VALUES ('1496145708280', '5aa10537-6c43-4d19-a577-6427394ebd92', 'log.LogTest', 'INFO', 'Thread-42', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '230');
INSERT INTO `logging_event` VALUES ('1496145708280', 'f050ca4c-e42d-4dff-b96a-971d67b5f9ce', 'log.LogTest', 'INFO', 'Thread-40', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '231');
INSERT INTO `logging_event` VALUES ('1496145708281', 'ed809612-0d77-4e5d-be3b-ff34979d86aa', 'log.LogTest', 'INFO', 'Thread-39', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '232');
INSERT INTO `logging_event` VALUES ('1496145708281', '7dad6b62-a9e4-4484-811e-a6b834e0254f', 'log.LogTest', 'INFO', 'Thread-38', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '233');
INSERT INTO `logging_event` VALUES ('1496145708280', 'bd695ecd-881f-4618-ad1c-76b266bfe219', 'log.LogTest', 'INFO', 'Thread-41', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '234');
INSERT INTO `logging_event` VALUES ('1496145708282', '1a9d0ec1-b185-4a4e-920a-ee25dd635df7', 'log.LogTest', 'INFO', 'Thread-37', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '235');
INSERT INTO `logging_event` VALUES ('1496145708283', 'cc07c1ef-898a-4293-97fc-c876eeba37bc', 'log.LogTest', 'INFO', 'Thread-35', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '236');
INSERT INTO `logging_event` VALUES ('1496145708283', 'a538d6a1-0a75-4887-ba80-1702dc60e6da', 'log.LogTest', 'INFO', 'Thread-34', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '237');
INSERT INTO `logging_event` VALUES ('1496145708283', '65c9d76a-e4bd-4a11-a1a6-b3ea72cc97bd', 'log.LogTest', 'INFO', 'Thread-36', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '238');
INSERT INTO `logging_event` VALUES ('1496145708284', '45d7463b-f868-4ff1-83e5-e181b8458f7e', 'log.LogTest', 'INFO', 'Thread-33', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '239');
INSERT INTO `logging_event` VALUES ('1496145708287', '9e0ef0fe-9e6a-4acd-9c93-06f46e307b37', 'log.LogTest', 'INFO', 'Thread-23', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '240');
INSERT INTO `logging_event` VALUES ('1496145708286', 'f1276e83-ce96-4dba-9537-d01d9782b5fa', 'log.LogTest', 'INFO', 'Thread-25', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '241');
INSERT INTO `logging_event` VALUES ('1496145708287', '48d5ebfe-9a91-4612-ab07-6da0d8df5083', 'log.LogTest', 'INFO', 'Thread-24', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '242');
INSERT INTO `logging_event` VALUES ('1496145708353', '6e91e73b-9cc1-47e4-8a85-937ad5f8456d', 'log.LogTest', 'INFO', 'Thread-9', '1', null, null, null, null, 'LogTest.java', 'log.LogTest', 'lambda$main$0', '22', '243');

-- ----------------------------
-- Table structure for logging_event_exception
-- ----------------------------
DROP TABLE IF EXISTS `logging_event_exception`;
CREATE TABLE `logging_event_exception` (
  `event_id` bigint(20) NOT NULL,
  `i` smallint(6) NOT NULL,
  `trace_line` varchar(254) NOT NULL,
  PRIMARY KEY (`event_id`,`i`),
  CONSTRAINT `logging_event_exception_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `logging_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logging_event_exception
-- ----------------------------

-- ----------------------------
-- Table structure for logging_event_property
-- ----------------------------
DROP TABLE IF EXISTS `logging_event_property`;
CREATE TABLE `logging_event_property` (
  `event_id` bigint(20) NOT NULL,
  `mapped_key` varchar(254) NOT NULL,
  `mapped_value` text,
  PRIMARY KEY (`event_id`,`mapped_key`),
  CONSTRAINT `logging_event_property_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `logging_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logging_event_property
-- ----------------------------
INSERT INTO `logging_event_property` VALUES ('1', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('2', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('3', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('4', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('5', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('6', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('7', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('8', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('9', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('10', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('11', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('12', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('13', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('14', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('15', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('16', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('17', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('18', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('19', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('20', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('21', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('22', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('23', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('24', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('25', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('26', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('27', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('28', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('29', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('30', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('31', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('32', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('33', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('34', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('35', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('36', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('37', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('38', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('39', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('40', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('41', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('42', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('43', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('44', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('45', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('46', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('47', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('48', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('49', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('50', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('51', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('52', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('53', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('54', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('55', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('56', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('57', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('58', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('59', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('60', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('61', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('62', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('63', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('64', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('65', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('66', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('67', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('68', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('69', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('70', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('71', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('72', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('73', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('74', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('75', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('76', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('77', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('78', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('79', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('80', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('81', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('82', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('83', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('84', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('85', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('86', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('87', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('88', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('89', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('90', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('91', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('92', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('93', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('94', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('95', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('96', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('97', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('98', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('99', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('100', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('101', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('102', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('103', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('104', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('105', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('106', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('107', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('108', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('109', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('110', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('111', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('112', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('113', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('114', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('115', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('116', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('117', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('118', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('119', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('120', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('121', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('122', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('123', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('124', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('125', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('126', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('127', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('128', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('129', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('130', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('131', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('132', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('133', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('134', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('135', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('136', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('137', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('138', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('139', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('140', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('141', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('142', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('143', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('144', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('145', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('146', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('147', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('148', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('149', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('150', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('151', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('152', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('153', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('154', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('155', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('156', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('157', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('158', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('159', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('160', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('161', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('162', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('163', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('164', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('165', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('166', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('167', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('168', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('169', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('170', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('171', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('172', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('173', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('174', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('175', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('176', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('177', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('178', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('179', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('180', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('181', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('182', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('183', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('184', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('185', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('186', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('187', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('188', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('189', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('190', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('191', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('192', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('193', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('194', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('195', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('196', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('197', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('198', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('199', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('200', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('201', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('202', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('203', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('204', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('205', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('206', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('207', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('208', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('209', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('210', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('211', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('212', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('213', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('214', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('215', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('216', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('217', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('218', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('219', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('220', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('221', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('222', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('223', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('224', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('225', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('226', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('227', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('228', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('229', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('230', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('231', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('232', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('233', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('234', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('235', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('236', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('237', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('238', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('239', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('240', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('241', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('242', 'HOSTNAME', 'GONGRUI');
INSERT INTO `logging_event_property` VALUES ('243', 'HOSTNAME', 'GONGRUI');

-- ----------------------------
-- Table structure for simple_function
-- ----------------------------
DROP TABLE IF EXISTS `simple_function`;
CREATE TABLE `simple_function` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `enable` tinyint(255) NOT NULL DEFAULT '1',
  `display` tinyint(1) DEFAULT '1',
  `display_order` int(255) DEFAULT '0',
  PRIMARY KEY (`id`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_function
-- ----------------------------
INSERT INTO `simple_function` VALUES ('1', 'add_user', 'add_user', null, '2017-06-07 23:50:40', '1', '1', '0');
INSERT INTO `simple_function` VALUES ('2', 'add_role', 'add_role', null, '2017-06-07 23:50:43', '1', '1', '0');
INSERT INTO `simple_function` VALUES ('3', 'del_user', 'del_user', null, '2017-06-07 23:50:53', '1', '1', '0');
INSERT INTO `simple_function` VALUES ('4', 'del_role', 'del_role', null, '2017-06-07 23:51:35', '1', '1', '0');

-- ----------------------------
-- Table structure for simple_log
-- ----------------------------
DROP TABLE IF EXISTS `simple_log`;
CREATE TABLE `simple_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_log
-- ----------------------------

-- ----------------------------
-- Table structure for simple_menu
-- ----------------------------
DROP TABLE IF EXISTS `simple_menu`;
CREATE TABLE `simple_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `enable` tinyint(1) DEFAULT '1',
  `display_order` int(255) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_menu
-- ----------------------------
INSERT INTO `simple_menu` VALUES ('1', 'dashboard', 'dashboard', '1', '0', '2017-06-07 23:51:59');
INSERT INTO `simple_menu` VALUES ('2', 'userManager', 'userManager', '1', '0', '2017-06-07 23:52:17');

-- ----------------------------
-- Table structure for simple_menu_function
-- ----------------------------
DROP TABLE IF EXISTS `simple_menu_function`;
CREATE TABLE `simple_menu_function` (
  `menu_id` int(11) DEFAULT NULL,
  `function_id` int(11) DEFAULT NULL,
  KEY `simple_menu_function_index` (`menu_id`,`function_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_menu_function
-- ----------------------------

-- ----------------------------
-- Table structure for simple_role
-- ----------------------------
DROP TABLE IF EXISTS `simple_role`;
CREATE TABLE `simple_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `enable` tinyint(255) DEFAULT '1',
  `display_order` int(255) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_role
-- ----------------------------
INSERT INTO `simple_role` VALUES ('1', 'roke_key', '角色10', '1', '0', '2017-06-03 20:51:17');
INSERT INTO `simple_role` VALUES ('2', 'marker', '运营', '1', '0', '2017-06-07 23:52:47');
INSERT INTO `simple_role` VALUES ('3', 'IT', 'IT', '1', '0', '2017-06-07 23:52:54');
INSERT INTO `simple_role` VALUES ('4', 'admin', '管理员', '1', '0', '2017-06-07 23:53:06');

-- ----------------------------
-- Table structure for simple_role_function
-- ----------------------------
DROP TABLE IF EXISTS `simple_role_function`;
CREATE TABLE `simple_role_function` (
  `role_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_role_function
-- ----------------------------

-- ----------------------------
-- Table structure for simple_setting
-- ----------------------------
DROP TABLE IF EXISTS `simple_setting`;
CREATE TABLE `simple_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_setting
-- ----------------------------
INSERT INTO `simple_setting` VALUES ('1', 'cache', 'Menu', 'true', '2017-05-19 16:02:34', '所有菜单缓存');
INSERT INTO `simple_setting` VALUES ('2', 'cache', 'Function', 'true', '2017-05-19 16:03:14', '所有功能缓存');
INSERT INTO `simple_setting` VALUES ('3', 'cache', 'Role', 'true', '2017-05-19 16:03:59', '所有角色缓存');
INSERT INTO `simple_setting` VALUES ('4', 'cache', 'User', 'true', '2017-05-19 16:04:38', '所有用户缓存');
INSERT INTO `simple_setting` VALUES ('5', 'cache', 'UserRole', 'true', '2017-05-19 16:05:51', '用户角色缓存');
INSERT INTO `simple_setting` VALUES ('6', 'cache', 'UserFunction', 'true', '2017-05-19 16:06:17', '用户功能缓存');
INSERT INTO `simple_setting` VALUES ('7', 'cache', 'UserMenu', 'true', '2017-05-19 17:07:02', '用户菜单缓存');
INSERT INTO `simple_setting` VALUES ('8', 'cache', 'MenuFunction', 'true', '2017-05-19 17:07:02', '菜单功能缓存');
INSERT INTO `simple_setting` VALUES ('9', 'cache', 'RoleFunction', 'true', '2017-05-19 17:10:07', '角色功能缓存');

-- ----------------------------
-- Table structure for simple_user
-- ----------------------------
DROP TABLE IF EXISTS `simple_user`;
CREATE TABLE `simple_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_user
-- ----------------------------
INSERT INTO `simple_user` VALUES ('1', 'admin', '123456', '1', '2017-06-07 23:53:55', '2017-06-07 23:53:51');
INSERT INTO `simple_user` VALUES ('2', 'marketUser', '123456', '1', '2017-06-07 23:55:56', '2017-06-07 23:56:00');
INSERT INTO `simple_user` VALUES ('3', 'ITUser', '123456', '1', '2017-06-07 23:56:34', '2017-06-07 23:56:34');
INSERT INTO `simple_user` VALUES ('4', 'Test1', '123456', '1', '2017-06-07 23:56:45', '2017-06-07 23:56:45');
INSERT INTO `simple_user` VALUES ('5', 'Test2', '123456', '1', '2017-06-07 23:56:51', '2017-06-07 23:56:51');

-- ----------------------------
-- Table structure for simple_user_function
-- ----------------------------
DROP TABLE IF EXISTS `simple_user_function`;
CREATE TABLE `simple_user_function` (
  `user_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL,
  KEY `simple_user_function_index` (`user_id`,`function_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_user_function
-- ----------------------------

-- ----------------------------
-- Table structure for simple_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `simple_user_menu`;
CREATE TABLE `simple_user_menu` (
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_user_menu
-- ----------------------------

-- ----------------------------
-- Table structure for simple_user_role
-- ----------------------------
DROP TABLE IF EXISTS `simple_user_role`;
CREATE TABLE `simple_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simple_user_role
-- ----------------------------

-- ----------------------------
-- View structure for view_simple_admin
-- ----------------------------
DROP VIEW IF EXISTS `view_simple_admin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_simple_admin` AS select `a`.`id` AS `user_id`,`a`.`name` AS `user_name`,`a`.`active` AS `user_active`,`e`.`id` AS `role_id`,`e`.`key` AS `role_key`,`e`.`name` AS `role_name`,`e`.`enable` AS `role_enable`,`g`.`id` AS `menu_id`,`g`.`key` AS `menu_key`,`g`.`name` AS `menu_name`,`g`.`enable` AS `menu_enable`,`c`.`id` AS `func_id`,`c`.`key` AS `func_key`,`c`.`name` AS `func_name`,`c`.`url` AS `func_url`,`c`.`enable` AS `func_enable`,`c`.`display` AS `func_display`,`e`.`display_order` AS `role_display_order`,`g`.`display_order` AS `menu_display_order`,`c`.`display_order` AS `func_display_order` from ((((((`simple_user` `a` left join `simple_user_function` `b` on((`a`.`id` = `b`.`user_id`))) left join `simple_function` `c` on((`c`.`id` = `b`.`function_id`))) left join `simple_user_role` `d` on((`d`.`user_id` = `a`.`id`))) left join `simple_role` `e` on((`e`.`id` = `d`.`role_id`))) left join `simple_user_menu` `f` on((`f`.`menu_id` = `a`.`id`))) left join `simple_menu` `g` on((`f`.`menu_id` = `g`.`id`))) ;

-- ----------------------------
-- View structure for view_simple_admin_2
-- ----------------------------
DROP VIEW IF EXISTS `view_simple_admin_2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_simple_admin_2` AS select distinct `view_simple_admin_temp`.`user_id` AS `user_id`,`view_simple_admin_temp`.`user_name` AS `user_name`,`view_simple_admin_temp`.`user_active` AS `user_active`,`view_simple_admin_temp`.`role_id` AS `role_id`,`view_simple_admin_temp`.`role_key` AS `role_key`,`view_simple_admin_temp`.`role_name` AS `role_name`,`view_simple_admin_temp`.`role_enable` AS `role_enable`,`view_simple_admin_temp`.`menu_id` AS `menu_id`,`view_simple_admin_temp`.`menu_key` AS `menu_key`,`view_simple_admin_temp`.`menu_name` AS `menu_name`,`view_simple_admin_temp`.`func_id` AS `func_id`,`view_simple_admin_temp`.`func_key` AS `func_key`,`view_simple_admin_temp`.`func_name` AS `func_name`,`view_simple_admin_temp`.`func_url` AS `func_url`,`view_simple_admin_temp`.`func_enable` AS `func_enable`,`view_simple_admin_temp`.`func_display` AS `func_display`,`view_simple_admin_temp`.`role_display_order` AS `role_display_order`,`view_simple_admin_temp`.`menu_display_order` AS `menu_display_order`,`view_simple_admin_temp`.`func_display_order` AS `func_display_order` from `view_simple_admin_temp` order by `view_simple_admin_temp`.`role_display_order`,`view_simple_admin_temp`.`menu_display_order`,`view_simple_admin_temp`.`func_display_order` ;

-- ----------------------------
-- View structure for view_simple_admin_temp
-- ----------------------------
DROP VIEW IF EXISTS `view_simple_admin_temp`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_simple_admin_temp` AS select `a`.`id` AS `user_id`,`a`.`name` AS `user_name`,`a`.`active` AS `user_active`,`c`.`id` AS `role_id`,`c`.`key` AS `role_key`,`c`.`name` AS `role_name`,`c`.`enable` AS `role_enable`,`g`.`id` AS `menu_id`,`g`.`key` AS `menu_key`,`g`.`name` AS `menu_name`,`e`.`id` AS `func_id`,`e`.`key` AS `func_key`,`e`.`name` AS `func_name`,`e`.`url` AS `func_url`,`e`.`enable` AS `func_enable`,`e`.`display` AS `func_display`,`c`.`display_order` AS `role_display_order`,`g`.`display_order` AS `menu_display_order`,`e`.`display_order` AS `func_display_order` from ((((((`simple_user` `a` left join `simple_user_role` `b` on((`a`.`id` = `b`.`user_id`))) left join `simple_role` `c` on((`c`.`id` = `b`.`role_id`))) left join `simple_role_function` `d` on((`c`.`id` = `d`.`role_id`))) left join `simple_function` `e` on((`e`.`id` = `d`.`function_id`))) left join `simple_menu_function` `f` on((`f`.`function_id` = `e`.`id`))) left join `simple_menu` `g` on((`g`.`id` = `f`.`menu_id`))) union all select `a`.`id` AS `user_id`,`a`.`name` AS `user_name`,`a`.`active` AS `user_active`,`c`.`id` AS `role_id`,`c`.`key` AS `role_key`,`c`.`name` AS `role_name`,`c`.`enable` AS `role_enable`,`g`.`id` AS `menu_id`,`g`.`key` AS `menu_key`,`g`.`name` AS `menu_name`,`e`.`id` AS `func_id`,`e`.`key` AS `func_key`,`e`.`name` AS `func_name`,`e`.`url` AS `func_url`,`e`.`enable` AS `func_enable`,`e`.`display` AS `func_display`,`c`.`display_order` AS `role_display_order`,`g`.`display_order` AS `menu_display_order`,`e`.`display_order` AS `func_display_order` from ((((((`simple_user` `a` left join `simple_user_role` `b` on((`a`.`id` = `b`.`user_id`))) left join `simple_role` `c` on((`c`.`id` = `b`.`role_id`))) left join `simple_user_function` `d` on((`d`.`user_id` = `a`.`id`))) left join `simple_function` `e` on((`e`.`id` = `d`.`function_id`))) left join `simple_menu_function` `f` on((`f`.`function_id` = `e`.`id`))) left join `simple_menu` `g` on((`g`.`id` = `f`.`menu_id`))) ;

-- ----------------------------
-- Procedure structure for pro_auth
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_auth`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_auth`(`username` varchar(255),`psw` varchar(255))
BEGIN
	SELECT COUNT(0) AS `exists`, id, `name`, active FROM simple_admin.simple_user WHERE `name` = `username` AND MD5(`psw`) = `password`;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_role
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_role`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_role`(type INT, role_id INT, role_key VARCHAR(255), role_name VARCHAR(255), is_enable INT, _display_order INT)
BEGIN
	
	SET @a = 0;
	-- 添加一个角色
	IF type = 1	THEN
		SELECT COUNT(*) FROM simple_role WHERE `key` = role_key INTO @a;
		IF @a = 0 THEN
			INSERT INTO simple_role(`key`, `name`, `enable`, `display_order`)
				VALUES(role_key, role_name, is_enable, _display_order);
		END IF;
		SELECT * FROM simple_role WHERE `key` = role_key;
	-- 更新角色
	ELSEIF type = 2 THEN
		IF !ISNULL(role_key) AND LENGTH(role_key) > 0 THEN
			UPDATE simple_role SET `key` = role_key WHERE id = role_id;
		END IF;
		IF !ISNULL(role_name) AND LENGTH(role_name) > 0 THEN
			UPDATE simple_role SET `name` = role_name WHERE id = role_id;
		END IF;
		IF is_enable = 1 OR is_enable = 1 THEN
			UPDATE simple_role SET `enable` = is_enable WHERE id = role_id;
		END IF;
		IF _display_order >= 0 THEN
			UPDATE simple_role SET `display_order` = _display_order WHERE id = role_id;
		END IF;
		SELECT * FROM simple_role WHERE `id` = role_id;
	-- 删除角色
	ELSEIF type = 3 THEN
		DELETE FROM simple_role WHERE id = role_id OR `key` = role_key;
	END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_simple_func
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_simple_func`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_simple_func`(userId INT)
BEGIN
	SELECT DISTINCT
		menu_id,
		menu_name,
		menu_display_order,
		func_id,
		func_name,
		func_url,
		func_enable,
		func_display,
		func_display_order
	FROM
		simple_admin
	WHERE
		user_id = userId
	ORDER BY
		func_display_order;


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_user_add_func
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_user_add_func`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_user_add_func`(userId INT, funcId INT)
BEGIN
	SET @t = -1;
	-- 判断是否有这个功能
	SELECT COUNT(0) FROM simple_function WHERE id = funcId INTO @t;
	IF @t <> -1
	THEN
			INSERT IGNORE INTO simple_user_function(user_id, function_id) VALUES(userId, funcId);
	END IF;
	SELECT @t AS result;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_user_add_role
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_user_add_role`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_user_add_role`(userId INT, roleId INT)
BEGIN
	DECLARE func INT;
	-- 遍历数据结束标志
  DECLARE done INT DEFAULT FALSE;
	-- 游标
	DECLARE cur CURSOR FOR
			SELECT a.function_id FROM simple_role_function a 
				INNER JOIN simple_role b ON a.role_id = b.id WHERE b.id = roleId;
	SET @roleCount = 0;
	SET @t = 0;
	
	SELECT count(0) FROM simple_role WHERE id = roleId INTO @roleCount;
	SELECT count(0) FROM simple_user_role WHERE role_id = roleId AND user_id = userId INTO @t;
	IF @roleCount <> 0
	THEN
		START TRANSACTION;
			OPEN cur;
			read_loop : LOOP
				FETCH cur INTO func;
				IF func IS NULL
				THEN
					LEAVE read_loop;
				END IF;
				CALL pro_user_add_func(userId, func);
			END LOOP;
			CLOSE cur;
		INSERT IGNORE INTO simple_user_role(user_id, role_id) VALUES(userId, roleId);
		COMMIT;	
	END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_user_del_func
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_user_del_func`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_user_del_func`(userId INT, funcId INT)
BEGIN
	SET @a = 0;
	SET @menuId = -1;
	SET @menuCount = 0;
	-- 查找是否存在
	SELECT count(0) FROM simple_user_function WHERE user_id = userId AND function_id = funcId INTO @a;
	-- 查看要删除功能是否在某个菜单中
	SELECT IFNULL(menu_id, -1) FROM simple_menu_function WHERE function_id = funcId INTO @menuId;
	-- 如果功能属于某个菜单，且这个菜单中就剩下一个功能时候，需要将用户的这个菜单删除
	-- 这里判断这个菜单有几个
	IF @menuId <> -1 THEN
		SELECT COUNT(a.menu_id) FROM simple_menu_function a 
			INNER JOIN simple_user_function b ON a.function_id = b.function_id 
		WHERE a.menu_id = @menuIdc INTO @menuCount;
	END IF;
	START TRANSACTION;
	IF @a <> 0 THEN
		IF @menuCount = 1 THEN 
			DELETE FROM simple_user_menu WHERE menu_id = @menuId;
		END IF;
		DELETE FROM simple_user_function WHERE user_id = userId AND function_id = funcId;
	END IF;
	COMMIT;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_user_add_func`;
DELIMITER ;;
CREATE TRIGGER `tri_user_add_func` AFTER INSERT ON `simple_user_function` FOR EACH ROW BEGIN
		SET @menuId = -1;
		-- 判断这个功能是否在某个菜单中
		SELECT IFNULL(@menuId, -1) FROM simple_menu_function a 
			INNER JOIN simple_function b ON a.function_id = b.id 
			INNER JOIN simple_menu c ON c.id = a.menu_id WHERE b.id = NEW.function_id 
		INTO @menuId;
		IF @menuId <> -1
			THEN 
				INSERT IGNORE INTO simple_user_menu(user_id, menu_id) VALUES(NEW.user_id, @menuId);
		END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_user_del_func`;
DELIMITER ;;
CREATE TRIGGER `tri_user_del_func` AFTER DELETE ON `simple_user_function` FOR EACH ROW BEGIN
		SET @menuId = -1;
	SET @menuCount = 0;
	-- 查找是否存在
	SELECT count(0) FROM simple_user_function WHERE user_id = userId AND function_id = OLD.function_id INTO @a;
	-- 查看要删除功能是否在某个菜单中
	SELECT IFNULL(menu_id, -1) FROM simple_menu_function WHERE function_id = funcId INTO @menuId;
	-- 如果功能属于某个菜单，且这个菜单中就剩下一个功能时候，需要将用户的这个菜单删除
	-- 这里判断这个菜单有几个
	-- 如果功能属于某个菜单，且这个菜单中就剩下一个功能时候，需要将用户的这个菜单删除
	-- 这里判断这个菜单有几个
	IF @menuId <> -1 THEN
		SELECT COUNT(a.menu_id) FROM simple_menu_function a 
			INNER JOIN simple_user_function b ON a.function_id = b.function_id 
		WHERE a.menu_id = @menuIdc INTO @menuCount;
	END IF;
	IF @menuCount = 1 THEN 
		DELETE FROM simple_user_menu WHERE menu_id = @menuId;
	END IF;
END
;;
DELIMITER ;
