/*
 Navicat Premium Data Transfer

 Source Server         : 低版本数据库
 Source Server Type    : MySQL
 Source Server Version : 50628
 Source Host           : sh-cdb-hlkfo8mc.sql.tencentcdb.com:63962
 Source Schema         : evolve

 Target Server Type    : MySQL
 Target Server Version : 50628
 File Encoding         : 65001

 Date: 18/10/2022 16:46:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_action_logs
-- ----------------------------
DROP TABLE IF EXISTS `admin_action_logs`;
CREATE TABLE `admin_action_logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '操作日志ID',
  `type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作类型',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `action_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作描述',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'ip地址',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_action_logs_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_action_logs
-- ----------------------------
INSERT INTO `admin_action_logs` VALUES (1, '', 1, '新增内容分类【分类】', '148.163.161.103', '2021-07-31 22:13:48');
INSERT INTO `admin_action_logs` VALUES (2, '', 1, '更改用户角色【普通用户】操作权限', '148.163.161.103', '2021-07-31 23:40:03');
INSERT INTO `admin_action_logs` VALUES (3, '', 1, '新增用户角色【会员用户】', '148.163.161.103', '2021-07-31 23:41:34');
INSERT INTO `admin_action_logs` VALUES (4, '', 1, '更改用户角色【会员用户】操作权限', '148.163.161.103', '2021-07-31 23:42:16');
INSERT INTO `admin_action_logs` VALUES (5, '', 1, '更改用户角色【会员用户】操作权限', '148.163.161.103', '2021-07-31 23:44:18');
INSERT INTO `admin_action_logs` VALUES (6, '', 1, '新增用户角色【资深用户】', '148.163.161.103', '2021-07-31 23:45:24');
INSERT INTO `admin_action_logs` VALUES (7, '', 1, '更改用户角色【资深用户】操作权限', '148.163.161.103', '2021-07-31 23:46:48');
INSERT INTO `admin_action_logs` VALUES (8, '', 1, '更改了用户【Jerome】的用户角色为【管理员】', '148.163.161.103', '2021-07-31 23:56:51');
INSERT INTO `admin_action_logs` VALUES (9, '', 1, '新增内容分类【编程计算机】', '148.163.161.103', '2021-08-01 00:13:40');
INSERT INTO `admin_action_logs` VALUES (10, '', 1, '批量置顶用户主题帖【Java高级工程师学习流程】', '148.163.161.103', '2021-08-01 01:00:46');
INSERT INTO `admin_action_logs` VALUES (11, '', 1, '批量取消用户主题帖【Java高级工程师学习流程】的置顶', '148.163.161.103', '2021-08-01 01:01:27');
INSERT INTO `admin_action_logs` VALUES (12, '', 1, '批量置顶用户主题帖【Java高级工程师学习流程】', '148.163.161.103', '2021-08-01 01:02:04');
INSERT INTO `admin_action_logs` VALUES (13, '', 1, '批量取消用户主题帖【Java高级工程师学习流程】的置顶', '148.163.161.103', '2021-08-01 01:04:52');
INSERT INTO `admin_action_logs` VALUES (14, '', 1, '新增内容分类【LOL】', '148.163.161.103', '2021-08-01 14:33:12');
INSERT INTO `admin_action_logs` VALUES (15, '', 1, '新增内容分类【CSGO】', '148.163.161.103', '2021-08-01 14:34:25');
INSERT INTO `admin_action_logs` VALUES (16, '', 1, '批量转移用户主题帖【这个是怎么计算的呢】、【家人们，今天才下好，有一起玩的吗】至【游戏电竞】分类', '134.195.101.21', '2021-08-02 01:59:17');
INSERT INTO `admin_action_logs` VALUES (17, '', 1, '新增内容分类【云顶之奕】', '221.13.140.87', '2021-08-02 11:04:54');
INSERT INTO `admin_action_logs` VALUES (18, '', 1, '新增内容分类【永劫无间】', '221.13.140.87', '2021-08-02 11:05:53');
INSERT INTO `admin_action_logs` VALUES (19, '', 1, '新增内容分类【绝地求生】', '221.13.140.87', '2021-08-02 11:07:11');
INSERT INTO `admin_action_logs` VALUES (20, '', 1, '新增内容分类【王者荣耀】', '221.13.140.87', '2021-08-02 11:08:41');
INSERT INTO `admin_action_logs` VALUES (21, '', 1, '新增内容分类【和平精英】', '221.13.140.87', '2021-08-02 11:09:24');
INSERT INTO `admin_action_logs` VALUES (22, '', 1, '新增内容分类【和平精英】', '221.13.140.87', '2021-08-02 11:11:17');
INSERT INTO `admin_action_logs` VALUES (23, '', 1, '新增内容分类【原神】', '221.13.140.87', '2021-08-02 11:13:08');
INSERT INTO `admin_action_logs` VALUES (24, '', 1, '新增内容分类【我的世界】', '221.13.140.87', '2021-08-02 11:13:41');
INSERT INTO `admin_action_logs` VALUES (25, '', 1, '新增内容分类【CF】', '221.13.140.87', '2021-08-02 11:15:02');
INSERT INTO `admin_action_logs` VALUES (26, '', 1, '新增内容分类【主机游戏】', '221.13.140.87', '2021-08-02 11:16:17');
INSERT INTO `admin_action_logs` VALUES (27, '', 1, '新增内容分类【地下城于勇士】', '221.13.140.87', '2021-08-02 11:18:44');
INSERT INTO `admin_action_logs` VALUES (28, '', 1, '新增内容分类【魔兽世界】', '221.13.140.87', '2021-08-02 11:19:51');
INSERT INTO `admin_action_logs` VALUES (29, '', 1, '新增内容分类【无类帖】', '221.13.140.87', '2021-08-02 11:22:56');
INSERT INTO `admin_action_logs` VALUES (30, '', 1, '批量置顶用户主题帖【征求更新意见】', '221.13.140.87', '2021-08-02 11:26:23');
INSERT INTO `admin_action_logs` VALUES (31, '', 1, '新增内容分类【给她爱】', '221.13.140.87', '2021-08-02 11:28:05');
INSERT INTO `admin_action_logs` VALUES (32, '', 1, '新增内容分类【steam】', '221.13.140.87', '2021-08-02 11:28:59');
INSERT INTO `admin_action_logs` VALUES (33, '', 1, '新增内容分类【动漫番剧】', '221.13.140.87', '2021-08-02 11:29:57');
INSERT INTO `admin_action_logs` VALUES (34, '', 1, '新增内容分类【七龙珠】', '221.13.140.87', '2021-08-02 11:30:51');
INSERT INTO `admin_action_logs` VALUES (35, '', 1, '新增内容分类【海贼王】', '221.13.140.87', '2021-08-02 11:31:23');
INSERT INTO `admin_action_logs` VALUES (36, '', 1, '新增内容分类【火影忍者】', '221.13.140.87', '2021-08-02 11:32:23');
INSERT INTO `admin_action_logs` VALUES (37, '', 1, '新增内容分类【鬼灭之刃】', '221.13.140.87', '2021-08-02 11:34:25');
INSERT INTO `admin_action_logs` VALUES (38, '', 1, '新增内容分类【咒术回战】', '221.13.140.87', '2021-08-02 11:35:12');
INSERT INTO `admin_action_logs` VALUES (39, '', 1, '新增内容分类【工作细胞】', '221.13.140.87', '2021-08-02 11:35:43');
INSERT INTO `admin_action_logs` VALUES (40, '', 1, '新增内容分类【小林家的龙奴仆】', '221.13.140.87', '2021-08-02 11:36:25');
INSERT INTO `admin_action_logs` VALUES (41, '', 1, '新增内容分类【JOJO的奇妙冒险】', '221.13.140.87', '2021-08-02 11:39:10');
INSERT INTO `admin_action_logs` VALUES (42, '', 1, '新增内容分类【终末的女武神】', '221.13.140.87', '2021-08-02 11:41:23');
INSERT INTO `admin_action_logs` VALUES (43, '', 1, '新增内容分类【一拳超人】', '221.13.140.87', '2021-08-02 11:42:22');
INSERT INTO `admin_action_logs` VALUES (44, '', 1, '新增内容分类【进军的巨人】', '221.13.140.87', '2021-08-02 11:43:10');
INSERT INTO `admin_action_logs` VALUES (45, '', 1, '新增内容分类【东京喰种】', '221.13.140.87', '2021-08-02 11:43:34');
INSERT INTO `admin_action_logs` VALUES (46, '', 1, '新增内容分类【瑞克于莫迪】', '221.13.140.87', '2021-08-02 11:45:50');
INSERT INTO `admin_action_logs` VALUES (47, '', 1, '新增内容分类【生活美食】', '221.13.140.87', '2021-08-02 11:47:34');
INSERT INTO `admin_action_logs` VALUES (48, '', 1, '新增内容分类【知识科普】', '221.13.140.87', '2021-08-02 11:49:27');
INSERT INTO `admin_action_logs` VALUES (49, '', 1, '新增内容分类【娱乐八卦】', '221.13.140.87', '2021-08-02 11:50:45');
INSERT INTO `admin_action_logs` VALUES (50, '', 1, '新增内容分类【时尚潮流】', '221.13.140.87', '2021-08-02 11:51:18');
INSERT INTO `admin_action_logs` VALUES (51, '', 1, '新增内容分类【科技工业】', '221.13.140.87', '2021-08-02 11:54:38');
INSERT INTO `admin_action_logs` VALUES (52, '', 1, '批量转移用户主题帖【下载的V281.107版本，请问怎么没有低温舱呢？】、【那位大哥有雷霆1.57版本的给发下 谢谢了】至【游戏电竞】分类', '134.195.101.21', '2021-08-02 14:45:09');
INSERT INTO `admin_action_logs` VALUES (53, '', 1, '批量转移用户主题帖【网站创建人？】至【无类帖】分类', '134.195.101.21', '2021-08-02 14:46:17');
INSERT INTO `admin_action_logs` VALUES (54, '', 1, '批量转移用户主题帖【永劫无间这JB垃圾服务器，我明明买了预购登录的时候说我没激活】、【买永劫无间前请来看下此贴】至【游戏电竞】分类', '134.195.101.21', '2021-08-02 14:46:41');
INSERT INTO `admin_action_logs` VALUES (55, '', 1, '批量转移用户主题帖【永劫无间这JB垃圾服务器，我明明买了预购登录的时候说我没激活】、【买永劫无间前请来看下此贴】至【游戏电竞】分类', '134.195.101.21', '2021-08-02 14:48:20');
INSERT INTO `admin_action_logs` VALUES (56, '', 1, '批量转移用户主题帖【下载的V281.107版本，请问怎么没有低温舱呢？】、【那位大哥有雷霆1.57版本的给发下 谢谢了】至【游戏电竞】分类', '134.195.101.21', '2021-08-02 14:48:36');
INSERT INTO `admin_action_logs` VALUES (57, '', 1, '批量转移用户主题帖【永劫无间这JB垃圾服务器，我明明买了预购登录的时候说我没激活】至【游戏电竞】分类', '134.195.101.21', '2021-08-02 14:52:18');
INSERT INTO `admin_action_logs` VALUES (58, '', 1, '批量转移用户主题帖【买永劫无间前请来看下此贴】至【游戏电竞】分类', '134.195.101.21', '2021-08-02 14:52:27');
INSERT INTO `admin_action_logs` VALUES (59, '', 1, '批量转移用户主题帖【这个是怎么计算的呢】、【家人们，今天才下好，有一起玩的吗】至【游戏电竞】分类', '134.195.101.21', '2021-08-02 14:53:04');
INSERT INTO `admin_action_logs` VALUES (60, '', 1, '批量转移用户主题帖【这个是怎么计算的呢】、【家人们，今天才下好，有一起玩的吗】至【游戏电竞】分类', '134.195.101.21', '2021-08-02 14:53:27');
INSERT INTO `admin_action_logs` VALUES (61, '', 1, '新增内容分类【单机游戏】', '221.13.140.87', '2021-08-02 15:01:59');
INSERT INTO `admin_action_logs` VALUES (62, '', 1, '新增内容分类【荒野大镖客】', '221.13.140.87', '2021-08-02 15:24:35');
INSERT INTO `admin_action_logs` VALUES (63, '', 1, '新增内容分类【方舟生存进化】', '221.13.140.87', '2021-08-02 15:25:22');
INSERT INTO `admin_action_logs` VALUES (64, '', 1, '新增内容分类【怪物猎人系列】', '221.13.140.87', '2021-08-06 10:25:16');
INSERT INTO `admin_action_logs` VALUES (65, '', 1, '新增内容分类【赛博朋克】', '221.13.140.87', '2021-08-06 10:25:30');
INSERT INTO `admin_action_logs` VALUES (66, '', 1, '批量取消用户主题帖【征求更新意见】的精华标志', '221.13.140.87', '2021-08-09 09:58:40');
INSERT INTO `admin_action_logs` VALUES (67, '', 1, '批量置顶用户主题帖【征求更新意见】', '221.13.140.87', '2021-08-09 09:59:32');
INSERT INTO `admin_action_logs` VALUES (68, '', 1, '真删除用户回复评论【这都不知道吗，你第一天看比赛？】', '221.13.140.87', '2021-08-09 15:17:08');
INSERT INTO `admin_action_logs` VALUES (69, '', 1, '真删除用户回复评论【只有LOL和csgo吗】', '221.13.140.87', '2021-08-09 15:17:08');
INSERT INTO `admin_action_logs` VALUES (70, '', 1, '真删除用户回复评论【<p></p>网易啥时候吃相好看过？】', '221.13.140.87', '2021-08-09 15:17:08');
INSERT INTO `admin_action_logs` VALUES (71, '', 1, '真删除用户回复评论【忙猜thread】', '221.13.140.87', '2021-08-09 15:17:08');
INSERT INTO `admin_action_logs` VALUES (72, '', 1, '真删除用户回复评论【搞个MOD还付费？】', '221.13.140.87', '2021-08-09 15:17:08');
INSERT INTO `admin_action_logs` VALUES (73, '', 1, '真删除用户主题帖【德玛西亚mai号，全英雄，300+皮肤，三万精粹】', '221.13.140.87', '2021-08-09 15:17:16');
INSERT INTO `admin_action_logs` VALUES (74, '', 1, '真删除用户主题帖【由牙签男星落马，八一八明星们的“背景”】', '221.13.140.87', '2021-08-09 15:17:16');
INSERT INTO `admin_action_logs` VALUES (75, '', 1, '真删除用户主题帖【资格 还有人要吗 20块】', '221.13.140.87', '2021-08-09 15:17:16');
INSERT INTO `admin_action_logs` VALUES (76, '', 1, '真删除用户主题帖【测试】', '221.13.140.87', '2021-08-09 15:17:16');
INSERT INTO `admin_action_logs` VALUES (77, '', 1, '真删除用户主题帖【编程计算机里面谁最牛逼啊】', '221.13.140.87', '2021-08-09 15:17:16');
INSERT INTO `admin_action_logs` VALUES (78, '', 1, '真删除用户主题帖【有没有想做主播的】', '221.13.140.87', '2021-08-09 15:17:16');
INSERT INTO `admin_action_logs` VALUES (79, '', 1, '真删除用户主题帖【你在装什么】', '221.13.140.87', '2021-08-09 15:17:16');
INSERT INTO `admin_action_logs` VALUES (80, '', 1, '批量删除用户主题帖【生化危机8学习版运行游戏提示0xc00007b】', '221.13.140.87', '2021-08-09 15:22:58');
INSERT INTO `admin_action_logs` VALUES (81, '', 1, '批量设置用户主题帖【征求更新意见】为精华', '221.13.140.87', '2021-08-09 15:40:49');
INSERT INTO `admin_action_logs` VALUES (82, '', 1, '新增内容分类【steam】', '103.136.124.143', '2021-08-11 10:55:40');
INSERT INTO `admin_action_logs` VALUES (83, '', 1, '新增内容分类【PC游戏】', '103.136.124.143', '2021-08-11 10:56:33');
INSERT INTO `admin_action_logs` VALUES (84, '', 1, '批量取消用户主题帖【网站优化内容】的精华标志', '103.136.124.143', '2021-08-11 19:23:20');
INSERT INTO `admin_action_logs` VALUES (85, '', 1, '批量设置用户主题帖【网站优化内容】为精华', '103.136.124.143', '2021-08-11 19:23:41');
INSERT INTO `admin_action_logs` VALUES (86, '', 1, '更改用户角色【普通用户】操作权限', '134.195.101.21', '2021-08-13 22:38:15');
INSERT INTO `admin_action_logs` VALUES (87, '', 1, '更改用户角色【资深用户】操作权限', '134.195.101.21', '2021-08-13 22:38:41');
INSERT INTO `admin_action_logs` VALUES (88, '', 1, '更改了用户【AV】的用户状态为【禁用】', '208.87.132.216', '2021-08-13 23:34:29');
INSERT INTO `admin_action_logs` VALUES (89, '', 1, '更改了用户【AV】为【封禁用户】', '208.87.132.216', '2021-08-13 23:36:09');
INSERT INTO `admin_action_logs` VALUES (90, '', 1, '更改了用户【封禁用户】的密码', '208.87.132.216', '2021-08-13 23:36:09');
INSERT INTO `admin_action_logs` VALUES (91, '', 1, '更改了用户【封禁用户】的密码', '208.87.132.216', '2021-08-13 23:36:45');
INSERT INTO `admin_action_logs` VALUES (92, '', 1, '批量设置用户主题帖【8.13更新公告】为精华', '208.87.132.216', '2021-08-14 00:38:00');
INSERT INTO `admin_action_logs` VALUES (93, '', 1, '批量取消用户主题帖【网站优化内容】的精华标志', '208.87.132.216', '2021-08-14 00:38:26');
INSERT INTO `admin_action_logs` VALUES (94, '', 1, '更改了用户【lhy4251】的用户状态为【正常】', '208.87.132.216', '2021-08-15 01:30:49');
INSERT INTO `admin_action_logs` VALUES (95, '', 1, '更改了用户【qiugeng】的用户状态为【正常】', '208.87.132.216', '2021-08-15 01:30:49');
INSERT INTO `admin_action_logs` VALUES (96, '', 1, '更改了用户【时间似深海】的用户状态为【正常】', '208.87.132.216', '2021-08-15 01:30:49');
INSERT INTO `admin_action_logs` VALUES (97, '', 1, '更改了用户【一杯咖啡】的用户状态为【正常】', '208.87.132.216', '2021-08-15 01:30:49');
INSERT INTO `admin_action_logs` VALUES (98, '', 1, '更改了用户【A|V】的用户状态为【正常】', '208.87.132.216', '2021-08-15 01:30:49');
INSERT INTO `admin_action_logs` VALUES (99, '', 1, '更改了用户【为什么要审核】的用户状态为【正常】', '208.87.132.216', '2021-08-15 01:30:49');
INSERT INTO `admin_action_logs` VALUES (100, '', 1, '更改了用户【A|V】为【封禁用户1】', '208.87.132.216', '2021-08-15 01:33:09');
INSERT INTO `admin_action_logs` VALUES (101, '', 1, '更改了用户【封禁用户1】的密码', '208.87.132.216', '2021-08-15 01:33:09');
INSERT INTO `admin_action_logs` VALUES (102, '', 1, '更改了用户【封禁用户1】的用户状态为【禁用】', '208.87.132.216', '2021-08-15 01:33:09');
INSERT INTO `admin_action_logs` VALUES (103, '', 1, '批量设置用户主题帖【8.20更新公告】为精华', '221.13.140.87', '2021-08-20 16:32:20');
INSERT INTO `admin_action_logs` VALUES (104, '', 1, '批量取消用户主题帖【8.13更新公告】的精华标志', '221.13.140.87', '2021-08-20 16:33:02');
INSERT INTO `admin_action_logs` VALUES (105, '', 1, '增加了用户【PDA】的余额10元', '134.195.101.35', '2021-08-21 21:29:01');
INSERT INTO `admin_action_logs` VALUES (106, '', 1, '增加了用户【Thread】的余额5元', '134.195.101.35', '2021-08-21 21:31:29');
INSERT INTO `admin_action_logs` VALUES (107, '', 1, '减少了用户【Thread】的余额5元', '134.195.101.35', '2021-08-21 21:35:15');
INSERT INTO `admin_action_logs` VALUES (108, '', 1, '更改用户角色【普通用户】操作权限', '104.168.83.91', '2021-09-21 21:57:00');
INSERT INTO `admin_action_logs` VALUES (109, '', 1, '更改用户角色【资深用户】操作权限', '104.168.83.91', '2021-09-21 21:57:42');
INSERT INTO `admin_action_logs` VALUES (110, '', 1, '更改用户角色【会员用户】操作权限', '104.168.83.91', '2021-09-21 21:58:14');
INSERT INTO `admin_action_logs` VALUES (111, '', 1, '更改用户角色【游客】操作权限', '104.168.83.91', '2021-09-21 21:59:16');
INSERT INTO `admin_action_logs` VALUES (112, '', 1, '软删除用户回复评论【我感觉不应该学到Spring就结束了，虽然到这个程度已经完全可以找工作了，但是技术在慢慢淘汰，最好在掌握一点其它框架MVS什么的，还有白盒测试等】', '103.152.113.36', '2021-10-03 21:39:33');
INSERT INTO `admin_action_logs` VALUES (113, '', 1, '更改用户角色【普通用户】操作权限', '103.152.113.231', '2021-10-17 18:53:50');
INSERT INTO `admin_action_logs` VALUES (114, '', 1, '更改了用户【Jerome】的密码', '42.228.230.157', '2021-10-18 11:35:28');
INSERT INTO `admin_action_logs` VALUES (115, '', 1, '更改了用户【Jerome】的密码', '42.228.230.157', '2021-10-18 11:35:34');
INSERT INTO `admin_action_logs` VALUES (116, '', 2, '更改用户角色【普通用户】操作权限', '221.13.140.87', '2021-10-18 11:48:03');
INSERT INTO `admin_action_logs` VALUES (117, '', 1, '更改用户角色【普通用户】操作权限', '103.152.113.216', '2021-10-18 22:03:34');
INSERT INTO `admin_action_logs` VALUES (118, '', 1, '更改用户角色【普通用户】操作权限', '103.152.113.83', '2021-10-18 22:04:07');
INSERT INTO `admin_action_logs` VALUES (119, '', 1, '更改用户角色【资深用户】操作权限', '103.152.113.196', '2021-10-18 22:04:40');
INSERT INTO `admin_action_logs` VALUES (120, '', 1, '更改用户角色【资深用户】操作权限', '103.152.113.150', '2021-10-18 22:04:56');
INSERT INTO `admin_action_logs` VALUES (121, '', 2, '增加了用户【Jerome】的余额6666元', '221.13.140.87', '2021-10-19 10:31:52');
INSERT INTO `admin_action_logs` VALUES (122, '1005', 1, '删除话题【EDG 3:0 DK】', '103.172.116.78', '2021-11-07 19:13:08');
INSERT INTO `admin_action_logs` VALUES (123, '1001', 1, '更改用户角色【普通用户】操作权限', '103.172.116.78', '2021-11-12 20:17:57');
INSERT INTO `admin_action_logs` VALUES (124, '1001', 1, '更改用户角色【资深用户】操作权限', '103.172.116.78', '2021-11-12 20:18:16');
INSERT INTO `admin_action_logs` VALUES (125, '1001', 1, '更改用户角色【资深用户】操作权限', '45.88.42.171', '2021-12-16 14:24:17');
INSERT INTO `admin_action_logs` VALUES (126, '1002', 1, '新增用户角色【高级用户】', '45.88.42.171', '2021-12-16 14:27:26');
INSERT INTO `admin_action_logs` VALUES (127, '1001', 1, '更改用户角色【高级用户】操作权限', '45.88.42.171', '2021-12-16 14:27:27');
INSERT INTO `admin_action_logs` VALUES (128, '1001', 1, '更改用户角色【高级用户】操作权限', '45.88.42.171', '2021-12-16 14:28:06');
INSERT INTO `admin_action_logs` VALUES (129, '1001', 1, '更改用户角色【高级用户】操作权限', '45.88.42.171', '2021-12-16 14:28:15');
INSERT INTO `admin_action_logs` VALUES (130, '1002', 1, '新增用户角色【至尊用户】', '45.88.42.171', '2021-12-16 14:30:08');
INSERT INTO `admin_action_logs` VALUES (131, '1001', 1, '更改用户角色【至尊用户】操作权限', '45.88.42.171', '2021-12-16 14:30:09');
INSERT INTO `admin_action_logs` VALUES (132, '1001', 1, '更改用户角色【至尊用户】操作权限', '45.88.42.171', '2021-12-16 14:30:25');
INSERT INTO `admin_action_logs` VALUES (133, '1001', 1, '更改用户角色【至尊用户】操作权限', '45.88.42.171', '2021-12-16 14:30:38');
INSERT INTO `admin_action_logs` VALUES (134, '1001', 1, '更改用户角色【至尊用户】操作权限', '45.88.42.171', '2021-12-16 14:31:16');
INSERT INTO `admin_action_logs` VALUES (135, '1001', 1, '更改用户角色【普通订阅】操作权限', '45.88.42.171', '2021-12-16 14:32:47');
INSERT INTO `admin_action_logs` VALUES (136, '1001', 1, '更改用户角色【高级订阅】操作权限', '45.88.42.171', '2021-12-16 14:33:09');
INSERT INTO `admin_action_logs` VALUES (137, '1002', 1, '新增用户角色【至尊订阅】', '45.88.42.171', '2021-12-16 14:37:58');
INSERT INTO `admin_action_logs` VALUES (138, '1001', 1, '更改用户角色【至尊订阅】操作权限', '45.88.42.171', '2021-12-16 14:38:00');
INSERT INTO `admin_action_logs` VALUES (139, '1001', 1, '更改用户角色【至尊订阅】操作权限', '45.88.42.171', '2021-12-16 14:38:20');
INSERT INTO `admin_action_logs` VALUES (140, '1001', 1, '更改用户角色【至尊订阅】操作权限', '45.88.42.171', '2021-12-16 14:38:31');
INSERT INTO `admin_action_logs` VALUES (141, '1001', 1, '更改用户角色【至尊订阅】操作权限', '45.88.42.171', '2021-12-16 14:39:12');
INSERT INTO `admin_action_logs` VALUES (142, '1002', 1, '新增用户角色【基本订阅】', '45.88.42.171', '2021-12-16 14:40:23');
INSERT INTO `admin_action_logs` VALUES (143, '1001', 1, '更改用户角色【基本订阅】操作权限', '45.88.42.171', '2021-12-16 14:40:25');
INSERT INTO `admin_action_logs` VALUES (144, '1001', 1, '更改用户角色【基本订阅】操作权限', '45.88.42.171', '2021-12-16 14:40:45');
INSERT INTO `admin_action_logs` VALUES (145, '1001', 1, '更改用户角色【基本订阅】操作权限', '45.88.42.171', '2021-12-16 14:41:00');
INSERT INTO `admin_action_logs` VALUES (146, '1001', 1, '更改用户角色【普通订阅】操作权限', '45.88.42.171', '2021-12-16 14:41:32');
INSERT INTO `admin_action_logs` VALUES (147, '1001', 1, '更改用户角色【普通订阅】操作权限', '45.88.42.171', '2021-12-16 14:41:50');
INSERT INTO `admin_action_logs` VALUES (148, '1001', 1, '更改用户角色【高级订阅】操作权限', '45.88.42.171', '2021-12-16 14:43:04');
INSERT INTO `admin_action_logs` VALUES (149, '1001', 1, '更改用户角色【高级订阅】操作权限', '45.88.42.171', '2021-12-16 14:43:21');
INSERT INTO `admin_action_logs` VALUES (150, '1002', 1, '新增用户角色【标准订阅】', '45.88.42.171', '2021-12-16 14:44:43');
INSERT INTO `admin_action_logs` VALUES (151, '1001', 1, '更改用户角色【标准订阅】操作权限', '45.88.42.171', '2021-12-16 14:44:44');
INSERT INTO `admin_action_logs` VALUES (152, '1001', 1, '更改用户角色【标准订阅】操作权限', '45.88.42.171', '2021-12-16 14:45:02');
INSERT INTO `admin_action_logs` VALUES (153, '1001', 1, '更改用户角色【标准订阅】操作权限', '45.88.42.171', '2021-12-16 14:45:17');
INSERT INTO `admin_action_logs` VALUES (154, '1001', 1, '更改用户角色【标准订阅】操作权限', '45.88.42.171', '2021-12-16 14:45:21');
INSERT INTO `admin_action_logs` VALUES (155, '1001', 1, '更改用户角色【黑金订阅】操作权限', '103.172.116.151', '2021-12-17 22:58:38');
INSERT INTO `admin_action_logs` VALUES (156, '1003', 1, '增加了用户【Thread】的余额50元', '209.17.118.36', '2021-12-23 17:28:07');
INSERT INTO `admin_action_logs` VALUES (157, '1003', 1, '增加了用户【Thread】的余额3000元', '185.200.34.110', '2022-01-20 21:25:05');
INSERT INTO `admin_action_logs` VALUES (158, '1006', 1, '批量设置用户主题帖【spring五天的学习，只需要五天学会spring】、【Python学习路线图(详细)】、【Python学习路线图】、【Java学完哪些内容能够出去找工作】为精华', '185.200.34.110', '2022-01-20 21:47:37');
INSERT INTO `admin_action_logs` VALUES (159, '1006', 1, '批量设置用户主题帖【Java高级工程师学习流程】为精华', '185.200.34.110', '2022-01-20 21:49:07');
INSERT INTO `admin_action_logs` VALUES (160, '1006', 1, '批量取消用户主题帖【Java学完哪些内容能够出去找工作】的精华标志', '185.200.34.110', '2022-01-20 21:52:09');

-- ----------------------------
-- Table structure for admin_sign_in_fields
-- ----------------------------
DROP TABLE IF EXISTS `admin_sign_in_fields`;
CREATE TABLE `admin_sign_in_fields`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户端显示的字段名称',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:单行文本框 1:多行文本框 2:单选 3:复选 4:图片上传 5:附件上传',
  `fields_ext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段扩展信息，Json表示选项内容',
  `fields_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段介绍',
  `sort` tinyint(4) NOT NULL DEFAULT 1 COMMENT '自定义显示顺序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:未启用 0:删除 1：启用',
  `required` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否必填项 0:否 1:是',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_sign_in_fields
-- ----------------------------

-- ----------------------------
-- Table structure for attachments
-- ----------------------------
DROP TABLE IF EXISTS `attachments`;
CREATE TABLE `attachments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '附件 id',
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'uuid',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户 id',
  `type_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型数据ID(post_id,dialog_message_id…)',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '附件排序',
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '附件类型(0帖子附件，1帖子图片，2帖子视频，3帖子音频，4消息图片)',
  `is_remote` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否远程附件',
  `is_approved` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否合法',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件系统生成的名称',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件路径',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件原名称',
  `file_size` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小',
  `file_width` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '宽度',
  `file_height` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '高度',
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件类型',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'ip 地址',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attachments
-- ----------------------------
INSERT INTO `attachments` VALUES (1, 'ca565df0-ca99-46d9-ad40-068a19ce6ed1', 4, 0, 0, 1, 0, 1, 'xMpZ4Nooi3YmAz1crMsWqb6ccJYnCb2jj72mwVaV.jpg', 'public/attachments/2021/08/01/', '1626596877582902.jpg', 424570, 938, 5408, 'image/jpeg', '134.195.101.21', '2021-08-01 00:44:01', '2021-08-01 00:44:01');
INSERT INTO `attachments` VALUES (2, 'd6fa1f2a-392a-4b2f-9cd7-c2c1571af86b', 3, 0, 0, 1, 0, 1, 'Fftv2sZA57ORgLXSoVBsTfef4LlNuaCGSQ6OvEta.png', 'public/attachments/2021/08/01/', '1626431437826658.png', 10773, 240, 188, 'image/png', '134.195.101.21', '2021-08-01 00:52:45', '2021-08-01 00:52:45');
INSERT INTO `attachments` VALUES (3, '486d48e2-e2e2-47d0-9b10-19a4633e4d66', 7, 0, 0, 1, 0, 1, 'PsRecabmIdGqBZSlGi6XSuHOBBMwUsTkcOYdAxfk.png', 'public/attachments/2021/08/01/', '12a977f082025aaf55d6697cecedab64014f1adf.png', 93545, 580, 318, 'image/png', '134.195.101.21', '2021-08-01 01:03:07', '2021-08-01 01:03:07');
INSERT INTO `attachments` VALUES (4, '9d206243-2c0e-4b87-a910-002f860d11c6', 7, 0, 0, 1, 0, 1, '2kMQED47kOYsTL1p5YEhftjDebL5He6hZNdtRvM4.png', 'public/attachments/2021/08/01/', '41b85eafa40f4bfb083489e3144f78f0f53618df.png', 157131, 580, 328, 'image/png', '134.195.101.21', '2021-08-01 01:03:08', '2021-08-01 01:03:08');
INSERT INTO `attachments` VALUES (5, 'bd5e6db6-2d2e-473b-abf9-7bc4a06013c9', 7, 0, 0, 1, 0, 1, 'os6laT3acxw4eTToMYp2tYc7BBn5AZqL6N7H2bs2.png', 'public/attachments/2021/08/01/', 'b04a86025aafa40fb922d96abc64034f7af019df.png', 141388, 580, 324, 'image/png', '134.195.101.21', '2021-08-01 01:03:08', '2021-08-01 01:03:08');
INSERT INTO `attachments` VALUES (6, '6bc595df-5665-415e-9825-e841a117847b', 7, 0, 0, 1, 0, 1, 'o0yRYMsl4QSt9j3lpTt6lE6MUULTsxziq30HpG9c.png', 'public/attachments/2021/08/01/', '12a977f082025aaf55d6697cecedab64014f1adf.png', 93545, 580, 318, 'image/png', '134.195.101.21', '2021-08-01 01:03:28', '2021-08-01 01:03:28');
INSERT INTO `attachments` VALUES (7, '0a77eb74-d740-47c2-957e-f28a75f5b579', 7, 0, 0, 1, 0, 1, '4xaajFRfBbrfePq83IkX6LghnPqJRl2tWrZQKGGG.png', 'public/attachments/2021/08/01/', 'b04a86025aafa40fb922d96abc64034f7af019df.png', 141388, 580, 324, 'image/png', '134.195.101.21', '2021-08-01 01:03:30', '2021-08-01 01:03:30');
INSERT INTO `attachments` VALUES (8, '44ccf4f7-3085-4750-a74a-ef312e9bc169', 4, 0, 0, 1, 0, 1, 'xNUPpCYgzdGFoyPyIB7gD9ueyGnc1ULloFdxPPin.jpg', 'public/attachments/2021/08/01/', '截屏_20210801_123230.jpg', 170361, 1080, 1920, 'image/jpeg', '42.224.227.202', '2021-08-01 12:32:45', '2021-08-01 12:32:45');
INSERT INTO `attachments` VALUES (9, '9cc916a0-84d1-4b6d-9438-b3597e9601e0', 4, 0, 0, 1, 0, 1, 'mlofjiIlK8EIaypvXPNkt23Luw4gaGgnv7INMROO.jpg', 'public/attachments/2021/08/01/', '截屏_20210801_123215.jpg', 170480, 1080, 1920, 'image/jpeg', '42.224.227.202', '2021-08-01 12:35:11', '2021-08-01 12:35:11');
INSERT INTO `attachments` VALUES (10, 'd7822416-f539-4255-b652-299210de9af1', 4, 0, 0, 1, 0, 1, 'DikYqSHswbEh6ffSJnHDHoUIIv1372m9LSllndZn.JPG', 'public/attachments/2021/08/01/', 'IMG_20210801_123443.JPG', 161466, 1080, 1527, 'image/jpeg', '42.224.227.202', '2021-08-01 12:35:44', '2021-08-01 12:35:44');
INSERT INTO `attachments` VALUES (11, '67ab0723-746b-45c3-b6cc-b0ab8514b889', 4, 0, 0, 1, 0, 1, 'YBLamoPRtl3VD6VARMhg5DWSVb3AsMSqIGpW8rGd.JPG', 'public/attachments/2021/08/01/', 'IMG_20210801_123443.JPG', 161466, 1080, 1527, 'image/jpeg', '42.224.227.202', '2021-08-01 12:39:59', '2021-08-01 12:39:59');
INSERT INTO `attachments` VALUES (12, '6bdb51c0-583a-4dfb-8ddc-e3aeb74f9da5', 4, 0, 0, 1, 0, 1, 'jklD4hOzCyHjfhuiRMQjfYQep4nga3nS6F7BSJeK.JPG', 'public/attachments/2021/08/01/', 'IMG_20210801_123858.JPG', 130570, 1080, 1519, 'image/jpeg', '42.224.227.202', '2021-08-01 12:40:03', '2021-08-01 12:40:03');
INSERT INTO `attachments` VALUES (13, 'dce19090-5323-4dcb-adb1-96beb56a97f8', 15, 0, 0, 1, 0, 1, 'fKjZ7t4JL2ZeoeVemtrpW7KNRERP3jaCfVFGoHUf.jpg', 'public/attachments/2021/08/02/', '5f38d558ccbf6c81101b245fab3eb13532fa4097.jpg', 163568, 580, 1289, 'image/jpeg', '134.195.101.21', '2021-08-02 02:16:15', '2021-08-02 02:16:15');
INSERT INTO `attachments` VALUES (14, '2da20a5e-945b-4e63-acd5-146677765a6b', 15, 0, 0, 1, 0, 1, 'LLbuQhXq7zIQLtdA20vBIgdf8NcN4WUtNx7CcyAP.jpg', 'public/attachments/2021/08/02/', '17858394a4c27d1e6a0a33730cd5ad6edcc43897.jpg', 108313, 580, 1289, 'image/jpeg', '134.195.101.21', '2021-08-02 02:17:12', '2021-08-02 02:17:12');
INSERT INTO `attachments` VALUES (15, 'fea4a518-4823-4233-a2ff-0a8b365d0907', 15, 0, 0, 1, 0, 1, '3ZVF0End8m3e5Ec1F278I3sfVf1cVxZi55FLRxwx.jpg', 'public/attachments/2021/08/02/', '17858394a4c27d1e6a0a33730cd5ad6edcc43897.jpg', 108313, 580, 1289, 'image/jpeg', '134.195.101.21', '2021-08-02 02:17:29', '2021-08-02 02:17:29');
INSERT INTO `attachments` VALUES (16, '674ebc11-0df7-4723-aa26-0de88a4a21ee', 15, 0, 0, 1, 0, 1, 'MH1ILAivPZiDpIYnUkhrjh9LqmTLyZv5xDlO5xtW.jpg', 'public/attachments/2021/08/02/', '5f38d558ccbf6c81101b245fab3eb13532fa4097.jpg', 163568, 580, 1289, 'image/jpeg', '134.195.101.21', '2021-08-02 02:17:29', '2021-08-02 02:17:29');
INSERT INTO `attachments` VALUES (17, '6a2ae2c4-143d-42f4-9736-3ecffb3a0220', 20, 58, 0, 1, 0, 1, 'dreKj00rqpDAFFcGQoTIk9itSWxcBFssG6OuYLi0.jpg', 'public/attachments/2021/08/02/', 'f25c8fc9a786c9170ad21444c63d70cf3ac75715.jpg', 29594, 580, 326, 'image/jpeg', '134.195.101.21', '2021-08-02 15:25:31', '2021-08-02 15:25:45');
INSERT INTO `attachments` VALUES (18, '227d8dca-ca81-4176-af97-d0f9e21e7d98', 31, 0, 0, 1, 0, 1, 'siKCcbaXd8nfAyiatA0tHI2p5V5eC6rvuXZPlkTN.jpg', 'public/attachments/2021/08/03/', '48ef1d3d269759ee75b71c7ca5fb43166c22dfb3.jpg', 182266, 580, 1979, 'image/jpeg', '134.195.101.21', '2021-08-03 16:39:39', '2021-08-03 16:39:39');
INSERT INTO `attachments` VALUES (19, 'b47f3f0c-1dc3-4adf-9a93-33d0f30dc299', 31, 0, 0, 1, 0, 1, '7W7OSagExeVdhkgWqrelK4TS77RXXcNAbHCdZlTU.PNG', 'public/attachments/2021/08/03/', '捕获.PNG', 556724, 579, 746, 'image/png', '134.195.101.21', '2021-08-03 16:42:21', '2021-08-03 16:42:21');
INSERT INTO `attachments` VALUES (20, '918c45c2-8cf2-4801-9e20-1448746747dc', 32, 0, 0, 1, 0, 1, 'rda5jiIsr5JFGeuvyuXGy4hwn5jxP0pmcIb71VL8.PNG', 'public/attachments/2021/08/03/', '捕获.PNG', 786726, 546, 944, 'image/png', '134.195.101.21', '2021-08-03 16:51:53', '2021-08-03 16:51:53');
INSERT INTO `attachments` VALUES (21, 'd62d6ca0-80dd-40f1-9777-71544a1cb350', 33, 0, 0, 1, 0, 1, '9Ga3bxjzbi7nopP1yLtbYIMJyEn22st3mfokDs58.gif', 'public/attachments/2021/08/04/', '9922fa1f3a292df5f6dfcda2ab315c6035a873b0.gif', 3079457, 290, 164, 'image/gif', '134.195.101.21', '2021-08-04 00:19:19', '2021-08-04 00:19:19');
INSERT INTO `attachments` VALUES (22, 'a3398c2b-173a-4e39-8467-87a4edbd70fb', 33, 0, 0, 1, 0, 1, 'ZlaZryF4lJmaqZubhGcTw3aQ75yfQ8GTh5goQMXq.gif', 'public/attachments/2021/08/04/', '9c43aaec08fa513d96b40d692a6d55fbb3fbd9b3.gif', 2122008, 320, 180, 'image/gif', '134.195.101.21', '2021-08-04 00:19:51', '2021-08-04 00:19:51');
INSERT INTO `attachments` VALUES (23, 'cc39dbbd-795c-47ac-acec-02a522b19835', 33, 0, 0, 1, 0, 1, 'NLc5CrIA28IQnP52vTDuoXoguYG2n3Ivnnj1tWiZ.gif', 'public/attachments/2021/08/04/', 'e634104c510fd9f91a0934de322dd42a2934a4b3.gif', 3084315, 255, 144, 'image/gif', '134.195.101.21', '2021-08-04 00:19:52', '2021-08-04 00:19:52');
INSERT INTO `attachments` VALUES (24, '9f9779ff-ecda-4594-af98-a8696a439e3f', 33, 105, 0, 1, 0, 1, 'XapUBRL1jfNUKMPchTsfJm4hXR6k2WiJgoe91UDA.gif', 'public/attachments/2021/08/04/', 'b1fd566034a85edf91c69f945e540923dc54750e.gif', 3141390, 160, 120, 'image/gif', '134.195.101.21', '2021-08-04 00:20:29', '2021-08-04 00:20:39');
INSERT INTO `attachments` VALUES (25, 'f6d15a2d-b040-48e3-9566-78f2d430c06a', 35, 0, 0, 0, 0, 1, 'PQafPH1JssRudxZD4S2LjLq9Tr0yAICg1iVZeni3.zip', 'public/attachments/2021/08/04/', 'u=2453668405,4267892873&fm=26&fmt=auto&gp=0.zip', 9944, 0, 0, 'application/x-zip-compressed', '134.195.101.21', '2021-08-04 20:35:32', '2021-08-04 20:35:32');
INSERT INTO `attachments` VALUES (26, '3bcddc8a-2f79-4385-9298-929ed57449c9', 35, 0, 0, 0, 0, 1, 'FfOHBziESuCDe6VbPbMF4oM2e5KGqFNPMKkbnfYb.zip', 'public/attachments/2021/08/04/', 'Useraiwn.zip', 9944, 0, 0, 'application/x-zip-compressed', '134.195.101.21', '2021-08-04 20:35:57', '2021-08-04 20:35:57');
INSERT INTO `attachments` VALUES (27, '65400d80-2f9a-415f-952e-086dcce057ec', 41, 0, 0, 1, 0, 1, 'llA6C3I15cDoROQgIDmADjfgnDIhDwI3qLkBuTMO.jpg', 'public/attachments/2021/08/07/', 'c8b63e87e950352a5852a5bf4443fbf2b2118b18.jpg', 145202, 580, 1350, 'image/jpeg', '134.195.101.21', '2021-08-07 16:06:20', '2021-08-07 16:06:20');
INSERT INTO `attachments` VALUES (28, 'a5e3b521-8a96-4bae-9cd4-6132ed06432c', 41, 0, 0, 1, 0, 1, 'ZINcD9q0Iujemhs1jtfIIg7F9fBE37LX2fSEtR3G.jpg', 'public/attachments/2021/08/07/', '4c4c6f63f6246b608b3d32c3fcf81a4c510fa218.jpg', 123827, 580, 1350, 'image/jpeg', '134.195.101.21', '2021-08-07 16:06:22', '2021-08-07 16:06:22');
INSERT INTO `attachments` VALUES (29, 'e66ee191-d62c-42b5-80a8-12ac6cbdc0de', 41, 0, 0, 1, 0, 1, 'hj079CQ5fIONJsWzfaRglf9iLtCgAYwFGtGTIlM8.jpg', 'public/attachments/2021/08/07/', '5f715d82b2b7d0a2a3fa842adcef76094b369a18.jpg', 126253, 580, 1350, 'image/jpeg', '134.195.101.21', '2021-08-07 16:06:24', '2021-08-07 16:06:24');
INSERT INTO `attachments` VALUES (30, '96485852-47d5-4c20-836a-77113e0b8137', 41, 0, 0, 1, 0, 1, 'CvegXNyFNrWHzuy2lCYhHDQkm1VFHokeguQbkev4.jpg', 'public/attachments/2021/08/07/', '4c4c6f63f6246b608b3d32c3fcf81a4c510fa218.jpg', 123827, 580, 1350, 'image/jpeg', '134.195.101.21', '2021-08-07 16:06:34', '2021-08-07 16:06:34');
INSERT INTO `attachments` VALUES (31, '9a116c3f-49a3-48e6-82bb-cd6dcbc179d8', 41, 0, 0, 1, 0, 1, 'cE7kvDWaMJYpoNNXzc73Xe9v48gQwJxcfJzodFjX.jpg', 'public/attachments/2021/08/07/', '5f715d82b2b7d0a2a3fa842adcef76094b369a18.jpg', 126253, 580, 1350, 'image/jpeg', '134.195.101.21', '2021-08-07 16:06:37', '2021-08-07 16:06:37');
INSERT INTO `attachments` VALUES (32, 'cec2cd1a-5803-4ac7-8239-a4ced12960ae', 41, 0, 0, 1, 0, 1, 'XkrVkHLYBERCSiPnTCftcZUEc40MCz58tguJxfRS.jpg', 'public/attachments/2021/08/07/', 'c8b63e87e950352a5852a5bf4443fbf2b2118b18.jpg', 145202, 580, 1350, 'image/jpeg', '134.195.101.21', '2021-08-07 16:06:40', '2021-08-07 16:06:40');
INSERT INTO `attachments` VALUES (33, '6465417a-2447-4dba-b7e9-95d940eb10de', 41, 0, 0, 1, 0, 1, 'kOOXZaDjEAcbddoJKwc2XQOtCSVn1CG39NwR5lZf.jpg', 'public/attachments/2021/08/07/', '5f715d82b2b7d0a2a3fa842adcef76094b369a18.jpg', 126253, 580, 1350, 'image/jpeg', '134.195.101.21', '2021-08-07 16:06:42', '2021-08-07 16:06:42');
INSERT INTO `attachments` VALUES (34, 'f8a4b4ee-b70d-436f-887f-ff155492162c', 44, 0, 0, 1, 0, 1, 'Mu3CgzQSt5htFXiMQvoiq7uknxMnumKlReGDDAzZ.PNG', 'public/attachments/2021/08/07/', '捕获.PNG', 745181, 561, 719, 'image/png', '134.195.101.21', '2021-08-07 16:18:42', '2021-08-07 16:18:42');
INSERT INTO `attachments` VALUES (35, 'ae114a1c-bf83-47f0-8f60-89a20f6d00d0', 41, 0, 0, 1, 0, 1, 'EhACp2g8Eo7MkMvUhuxU97Y3VePwM2cNkxcbDrOq.PNG', 'public/attachments/2021/08/07/', '捕获3.PNG', 323781, 414, 931, 'image/png', '134.195.101.21', '2021-08-07 16:21:55', '2021-08-07 16:21:55');
INSERT INTO `attachments` VALUES (36, '3c918927-dfec-4560-82f9-a6318b0eae54', 41, 0, 0, 1, 0, 1, 'kxrxSxbN3hoQ1YbylCn9Ww3ns5gKCxgSGYt8NjHI.PNG', 'public/attachments/2021/08/07/', '捕获2.PNG', 253203, 389, 879, 'image/png', '134.195.101.21', '2021-08-07 16:21:55', '2021-08-07 16:21:55');
INSERT INTO `attachments` VALUES (37, '44524886-1d5d-464d-8d03-2f030c5de3e6', 41, 0, 0, 1, 0, 1, 'HXmGMYmSgcp34tM2KCfV8WYtYrQPjThPJa8gUN04.PNG', 'public/attachments/2021/08/07/', '捕获4.PNG', 289909, 417, 936, 'image/png', '134.195.101.21', '2021-08-07 16:21:55', '2021-08-07 16:21:55');
INSERT INTO `attachments` VALUES (38, '9560298d-37fd-434d-9214-6b8b64a25ec8', 3, 0, 0, 1, 0, 1, 'rKW0RVImyIAhwqMbnHye9nzfL6rpHscmddJWmPCM.jpg', 'public/attachments/2021/08/08/', 'v2-08f3f56b2eef2c250503d01ef7677153_720w.jpg', 53695, 720, 609, 'image/jpeg', '134.195.101.21', '2021-08-08 01:06:58', '2021-08-08 01:06:58');
INSERT INTO `attachments` VALUES (39, '61fd94fe-cc2d-49f7-8a51-e72f8c69add0', 3, 0, 0, 1, 0, 1, 'cLAVOp03SHwm7Ano0FGDcxvcQSTkXISQvTnuSpg4.jpg', 'public/attachments/2021/08/08/', 'v2-99203e5f3dcca69f9cf204caa4459cae_720w.jpg', 687369, 720, 5322, 'image/jpeg', '134.195.101.21', '2021-08-08 01:14:22', '2021-08-08 01:14:22');
INSERT INTO `attachments` VALUES (40, '41a2b194-2d45-420d-b720-c47a718ea79d', 56, 0, 0, 1, 0, 1, 'gZDbowgJcpShdYcy9VqU5zxWFCitED7SijgO3M75.png', 'public/attachments/2021/08/09/', 'image_emoticon33.png', 2295, 30, 30, 'image/png', '134.195.101.21', '2021-08-09 18:02:50', '2021-08-09 18:02:50');
INSERT INTO `attachments` VALUES (41, 'f2b9edd2-513c-45ba-bfc3-4f258073b96c', 57, 0, 0, 1, 0, 1, 'JIhrbyNEIcN4FXOOkQhq3RnfzVn57DB7pqG88NV9.png', 'public/attachments/2021/08/09/', 'image_emoticon3.png', 2163, 30, 30, 'image/png', '134.195.101.21', '2021-08-09 18:06:08', '2021-08-09 18:06:08');
INSERT INTO `attachments` VALUES (42, '272699c0-75c8-4382-a380-b013df2becd5', 16, 0, 0, 1, 0, 1, 'M5dQ7xHgimpuF181vSUjWUKHC9Yb1a2tP7jYuCAe.jpeg', 'public/attachments/2021/08/09/', '1589354245726.jpeg', 209851, 1024, 1280, 'image/jpeg', '134.195.101.21', '2021-08-09 23:14:40', '2021-08-09 23:14:40');
INSERT INTO `attachments` VALUES (43, '39251207-37bd-484e-aa6b-db1b1c58e079', 60, 0, 0, 1, 0, 1, 'vi05Pp0s8lr0Tx6XG2UzVNGeYJYBcRAPEnTapcf2.jpg', 'public/attachments/2021/08/10/', '7907ff1bb051f819f04cc5fdcdb44aed2e73e736.jpg', 107887, 580, 1257, 'image/jpeg', '134.195.101.21', '2021-08-10 23:08:39', '2021-08-10 23:08:39');
INSERT INTO `attachments` VALUES (44, '6df96ce9-4a7f-40cc-aad8-9ac1463f4a0c', 64, 0, 0, 1, 0, 1, 'PtgH4eN914dqUboNKKmSL72AtUjv399zggMKn2JC.jpg', 'public/attachments/2021/08/11/', 'u=991793377,3750665095&fm=202&mola=new&crop=v1.jpg', 11929, 242, 150, 'image/jpeg', '134.195.101.21', '2021-08-11 00:02:55', '2021-08-11 00:02:55');
INSERT INTO `attachments` VALUES (45, '1fef9a6f-b58d-4fa4-a56d-198924479cbe', 66, 0, 0, 1, 0, 1, 'ntMe8dQZsnzwx5uSNwplZDijaKHTGfl8PWek1Gvu.jpg', 'public/attachments/2021/08/11/', 'u=991793377,3750665095&fm=202&mola=new&crop=v1.jpg', 11929, 242, 150, 'image/jpeg', '134.195.101.21', '2021-08-11 00:07:45', '2021-08-11 00:07:45');
INSERT INTO `attachments` VALUES (46, 'aa7c42b4-de37-42c3-a8a5-4d252928531f', 71, 0, 0, 1, 0, 1, '9opKcNNwMF6f9kzZxw76KtTcWqOxXfGHrwe34eYG.PNG', 'public/attachments/2021/08/12/', '捕获.PNG', 586304, 542, 936, 'image/png', '134.195.101.21', '2021-08-12 15:05:16', '2021-08-12 15:05:16');
INSERT INTO `attachments` VALUES (47, '5b93d688-8519-4bb2-b5d4-f83be5d617a2', 71, 0, 0, 1, 0, 1, 'yaLwwIKkn2rj9qeBeMXZxjP86nXpjpKb77r7UaCd.PNG', 'public/attachments/2021/08/12/', '捕获2.PNG', 566543, 543, 941, 'image/png', '134.195.101.21', '2021-08-12 15:05:19', '2021-08-12 15:05:19');
INSERT INTO `attachments` VALUES (48, 'c24a1f75-c36f-4409-b1b6-a20970e5d101', 74, 0, 0, 1, 0, 1, 'UTNXlcDRRanblRDIrQslmc7ldTQ5Zd2k1b7toZnm.PNG', 'public/attachments/2021/08/12/', '捕获.PNG', 495745, 819, 743, 'image/png', '134.195.101.21', '2021-08-12 15:31:05', '2021-08-12 15:31:05');
INSERT INTO `attachments` VALUES (49, '5eb55ee8-8f16-456e-bb28-e9bf9f721ab0', 74, 0, 0, 1, 0, 1, 'IwmS3v4WWObhn2h0imYEOVAnBWAGebE2t8ZsZjBb.PNG', 'public/attachments/2021/08/12/', '捕获2.PNG', 502587, 817, 748, 'image/png', '134.195.101.21', '2021-08-12 15:31:08', '2021-08-12 15:31:08');
INSERT INTO `attachments` VALUES (50, '0a666eed-bf20-4369-a4c3-d9e556376f4a', 74, 0, 0, 1, 0, 1, '6HZp0TY0bHYjPE5VqH9jWH9SmhNmgMDKsbbAZxtI.PNG', 'public/attachments/2021/08/12/', '捕获.PNG', 495745, 819, 743, 'image/png', '134.195.101.21', '2021-08-12 15:32:23', '2021-08-12 15:32:23');
INSERT INTO `attachments` VALUES (51, '576a7248-d2b2-4b84-b123-d99d7e4545b8', 74, 0, 0, 1, 0, 1, 'FLHduq7FSR7os5R7WcJRHnNRTu0A3c2wHick7IU4.PNG', 'public/attachments/2021/08/12/', '捕获2.PNG', 502587, 817, 748, 'image/png', '134.195.101.21', '2021-08-12 15:32:26', '2021-08-12 15:32:26');
INSERT INTO `attachments` VALUES (52, '0300ec45-7ca0-4b2a-83ee-fabeefe6b7f5', 84, 0, 0, 1, 0, 1, 'MQcZnWEkSkKq8ofrGgvTOx8jHJt6v3UjG2xAwg2b.jpg', 'public/attachments/2021/08/20/', '71eb3aadcbef7609a90e582739dda3cc7cd99e25.jpg', 177387, 828, 1792, 'image/jpeg', '134.195.101.35', '2021-08-20 19:43:19', '2021-08-20 19:43:19');
INSERT INTO `attachments` VALUES (53, '2eb35069-9dab-4545-a064-a31b7f4ac8c0', 87, 0, 0, 1, 0, 1, 'WDbQP7KmZNu64gY7w3w491GXjK9HPxs6hkQ9kZwr.png', 'public/attachments/2021/08/20/', 'image_emoticon25.png', 2136, 30, 30, 'image/png', '134.195.101.35', '2021-08-20 19:56:20', '2021-08-20 19:56:20');
INSERT INTO `attachments` VALUES (54, 'e8d3cd59-8e97-4bcc-a61c-f11acbdaaeb2', 93, 0, 0, 1, 0, 1, 'sVtka1uvRN2YXcS4pdi4qkjXQle7BHKrUopiV2T9.jpg', 'public/attachments/2021/08/24/', '89cc9a510fb30f24c9d589badf95d143ac4b0385.jpg', 36895, 580, 435, 'image/jpeg', '208.87.132.216', '2021-08-24 20:56:31', '2021-08-24 20:56:31');
INSERT INTO `attachments` VALUES (55, '1569c5c1-6101-40a6-b900-36270c2e07d2', 4, 0, 0, 1, 0, 1, '3oeh4YAo75Wnf4v1PivtJZETT82v8XgLQsNS0TCc.PNG', 'public/attachments/2021/08/24/', '捕获2.PNG', 438411, 697, 877, 'image/png', '208.87.132.216', '2021-08-24 21:14:34', '2021-08-24 21:14:34');
INSERT INTO `attachments` VALUES (56, 'c5a92a10-1a6f-4fd3-ac77-ec8e1243aa39', 4, 0, 0, 1, 0, 1, 'RABLFu0OLTOi7TsoXCyySM2TGJfZlifHcQHvaYGT.PNG', 'public/attachments/2021/08/24/', '捕获.PNG', 445282, 709, 873, 'image/png', '208.87.132.216', '2021-08-24 21:14:36', '2021-08-24 21:14:36');
INSERT INTO `attachments` VALUES (57, '217580b8-90a1-48ec-8f33-7f5259833f27', 4, 0, 0, 1, 0, 1, 'qT6SxTVtc8MvjaWaN1Xmvii9UCup9rr1RyJUGGDo.jpg', 'public/attachments/2021/08/24/', 'a9183efae6cd7b89394f9034182442a7d9330e01.jpg', 109377, 580, 1255, 'image/jpeg', '208.87.132.216', '2021-08-24 21:14:55', '2021-08-24 21:14:55');
INSERT INTO `attachments` VALUES (58, 'e11a1c02-f71c-4948-ad06-526525d8a78c', 96, 0, 0, 1, 0, 1, 'saKmPedrL3mUmwUQMijVFSFdStAMTF4rgJKSwoae.PNG', 'public/attachments/2021/08/25/', '捕获.PNG', 429742, 419, 830, 'image/png', '208.87.132.216', '2021-08-25 21:25:34', '2021-08-25 21:25:34');
INSERT INTO `attachments` VALUES (59, '099a02e4-8934-4a6f-b87c-aadd46b45805', 99, 0, 0, 1, 0, 1, 'a8X7iPWZEnaPoYAArKJEwOYOe0XbsFfulU7P9Avq.jpg', 'public/attachments/2021/09/02/', '992508338744ebf800ef7485cef9d72a6159a7b7.jpg', 130138, 580, 1255, 'image/jpeg', '134.195.101.21', '2021-09-02 23:07:55', '2021-09-02 23:07:55');
INSERT INTO `attachments` VALUES (60, '93bab144-033c-49cf-a371-126e2f59f372', 101, 0, 0, 1, 0, 1, 'OvhRKojMWf0wowdxUCSxSfX9ZXpsNwmZeObwqX1y.jpg', 'public/attachments/2021/09/02/', '36ac7cc6a7efce1b3c68db70b851f3deb58f6588.jpg', 55210, 580, 435, 'image/jpeg', '134.195.101.21', '2021-09-02 23:13:17', '2021-09-02 23:13:17');
INSERT INTO `attachments` VALUES (61, '2627b9d1-c2c8-4f5c-a96e-cd5110d4f2a0', 3, 0, 0, 1, 0, 1, '8NxgWGqSbfWDSOX6UxzIm62Olk4erXI7toUzEqHg.jpg', 'public/attachments/2021/09/04/', '1955297-20200312163350730-137383125.jpg', 53075, 758, 416, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:25', '2021-09-04 20:11:25');
INSERT INTO `attachments` VALUES (62, 'ffdca26e-e76b-4411-9196-f71c4a71f12f', 3, 0, 0, 1, 0, 1, 'jHYZVxv3TFgl1fsRAK9FJduYEK5iXw6etUL5sqN8.jpg', 'public/attachments/2021/09/04/', '1955297-20200312164313869-609957235.jpg', 32835, 599, 367, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:25', '2021-09-04 20:11:25');
INSERT INTO `attachments` VALUES (63, 'fe657b4c-d992-4dad-baea-078d4ae3dabe', 3, 0, 0, 1, 0, 1, 'r6f5Sg5B8G7lSzjFJ75kZvd9nLiI0qP8GYRnxyZv.jpg', 'public/attachments/2021/09/04/', '1955297-20200312164245253-932513428.jpg', 42456, 697, 424, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:26', '2021-09-04 20:11:26');
INSERT INTO `attachments` VALUES (64, '09b14c6a-d1c4-4738-b41e-b515ef536bc2', 3, 0, 0, 1, 0, 1, 'Bl35b2lzG8mAvVSV3ERh2tpiFD6e5RO9GXTbJgZY.jpg', 'public/attachments/2021/09/04/', '1955297-20200312164505851-1929486733.jpg', 68317, 917, 734, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:26', '2021-09-04 20:11:26');
INSERT INTO `attachments` VALUES (65, '4d8fb2a9-9205-4e67-be42-0bd995f294cc', 3, 0, 0, 1, 0, 1, 'kyEyCeiP8UZroPlOQMaWo3yl4qVTMhOeR6enDg9Q.jpg', 'public/attachments/2021/09/04/', '1955297-20200312165402907-1875137916.jpg', 128573, 1072, 979, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:26', '2021-09-04 20:11:26');
INSERT INTO `attachments` VALUES (66, '989c3132-c5a4-4048-8e5c-cd7beb3866f4', 3, 0, 0, 1, 0, 1, 'u7MFxjzPH1DjXCFgRHKfsBhdvkeVdvPzjxxwX32R.jpg', 'public/attachments/2021/09/04/', '1955297-20200312164614297-970698255.jpg', 83362, 741, 767, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:26', '2021-09-04 20:11:26');
INSERT INTO `attachments` VALUES (67, '303b1042-0f7c-4918-b383-cab34f3ce42b', 3, 0, 0, 1, 0, 1, '9pgvq7ZYcnCQtNEUNHlAozScsvrDD05BJ45jUAON.jpg', 'public/attachments/2021/09/04/', '1955297-20200312163350730-137383125.jpg', 53075, 758, 416, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:32', '2021-09-04 20:11:32');
INSERT INTO `attachments` VALUES (68, 'aca67793-1f2c-4fdb-964d-33981be4af61', 3, 0, 0, 1, 0, 1, 'PI39t09kQrFO15vArFPXWMnhvTZAR0r9069OGq6D.jpg', 'public/attachments/2021/09/04/', '1955297-20200312164245253-932513428.jpg', 42456, 697, 424, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:38', '2021-09-04 20:11:38');
INSERT INTO `attachments` VALUES (69, '2958ef27-d48c-4b5c-b79c-b8a6b80834ef', 3, 0, 0, 1, 0, 1, '3Sr7irxPh3iCoIFA4Z6offy3SwWNeOeNzdz9eQrI.jpg', 'public/attachments/2021/09/04/', '1955297-20200312164313869-609957235.jpg', 32835, 599, 367, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:43', '2021-09-04 20:11:43');
INSERT INTO `attachments` VALUES (70, 'dbf2721b-7585-410b-94e4-ee2866586c45', 3, 0, 0, 1, 0, 1, 'sVx1z0OIlNYekcAI36BVzng9BBLkWUjWzDOFRHHN.jpg', 'public/attachments/2021/09/04/', '1955297-20200312164505851-1929486733.jpg', 68317, 917, 734, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:47', '2021-09-04 20:11:47');
INSERT INTO `attachments` VALUES (71, 'b5f44015-ee9e-4a17-b6be-348ce0c65965', 3, 0, 0, 1, 0, 1, '5tLLmolb1ckPYqZEF9qngIszzquzjVAj85NnpDeX.jpg', 'public/attachments/2021/09/04/', '1955297-20200312164614297-970698255.jpg', 83362, 741, 767, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:52', '2021-09-04 20:11:52');
INSERT INTO `attachments` VALUES (72, '676b0c5b-589a-41cb-a031-186242af4e59', 3, 0, 0, 1, 0, 1, 'RIVQTTzMDRcujzRk2uIlCagurXhd92RNJVQOCYEO.jpg', 'public/attachments/2021/09/04/', '1955297-20200312165402907-1875137916.jpg', 128573, 1072, 979, 'image/jpeg', '134.195.101.21', '2021-09-04 20:11:57', '2021-09-04 20:11:57');
INSERT INTO `attachments` VALUES (73, 'e9db6f72-a059-4fee-afd3-f44208c272a8', 3, 0, 0, 1, 0, 1, '8wz7LU6zK6yUxZ6gU89GAUhOsgJZnl5zi8HmykEm.jpg', 'public/attachments/2021/09/04/', 'dbab5414131417a941c5445b02519453.jpg', 162202, 1080, 852, 'image/jpeg', '134.195.101.21', '2021-09-04 20:16:18', '2021-09-04 20:16:18');
INSERT INTO `attachments` VALUES (74, 'dbbb70f8-45d3-4ecd-9eee-fe18d2b058bc', 3, 344, 0, 1, 0, 1, '016AhjpibQjwJB3OKPeihCf2gRtbnL9C4Te2D9zM.jpg', 'public/attachments/2021/09/04/', 'v2-fd2d02fd5c166c2fc81d0733ae185294_720w.jpg', 69779, 720, 667, 'image/jpeg', '134.195.101.21', '2021-09-04 20:19:44', '2021-09-04 20:19:47');
INSERT INTO `attachments` VALUES (75, '1755cbf0-7db5-4c4f-99d2-f22f810245f6', 3, 0, 0, 1, 0, 1, 'TxRREVFbYbR7EYRipLEhxYaA2R3FTMcJzmXvw7m8.jpg', 'public/attachments/2021/09/04/', '1.jpg', 94989, 1080, 651, 'image/jpeg', '134.195.101.21', '2021-09-04 20:20:41', '2021-09-04 20:20:41');
INSERT INTO `attachments` VALUES (76, 'ee443513-5345-4846-9e0e-f78f494dd70f', 3, 0, 0, 1, 0, 1, 'IjMSabKH2Ta2pYCZ0plcu8HAhudu2s770QrhKYRH.jpg', 'public/attachments/2021/09/04/', '2.jpg', 138857, 1080, 752, 'image/jpeg', '134.195.101.21', '2021-09-04 20:20:52', '2021-09-04 20:20:52');
INSERT INTO `attachments` VALUES (77, '160a7316-c62c-4e63-a754-8e37fbbd57a6', 3, 0, 0, 1, 0, 1, 'BD38fpXhALhc4WLzsICpPmr8bruvnhDaItBFFLmC.jpg', 'public/attachments/2021/09/04/', '3.jpg', 167030, 1080, 953, 'image/jpeg', '134.195.101.21', '2021-09-04 20:21:02', '2021-09-04 20:21:02');
INSERT INTO `attachments` VALUES (78, 'b1bb828d-5296-48c9-a727-54231464515d', 3, 0, 0, 1, 0, 1, 'YVP7TM0E8PbGUlhCTIkJp5x68kgVd3peDZAWNI3a.jpg', 'public/attachments/2021/09/04/', '4.jpg', 122807, 1080, 705, 'image/jpeg', '134.195.101.21', '2021-09-04 20:21:15', '2021-09-04 20:21:15');
INSERT INTO `attachments` VALUES (79, 'a6a6e615-99dc-415c-83a9-77529722a8d4', 3, 0, 0, 1, 0, 1, 'JvKQvhDse8V8vQdbKJeh9XgYLLU5UA2bPhpZpoN2.jpg', 'public/attachments/2021/09/04/', '5.jpg', 139941, 1080, 728, 'image/jpeg', '134.195.101.21', '2021-09-04 20:21:20', '2021-09-04 20:21:20');
INSERT INTO `attachments` VALUES (80, '6f3a6bff-3c70-4e43-ad35-13c5d385c854', 3, 0, 0, 1, 0, 1, 'mUw9RSO7u0NDXakfigyAzPn47dfDvUQDiA2lGWyf.jpg', 'public/attachments/2021/09/04/', '6.jpg', 131599, 1080, 793, 'image/jpeg', '134.195.101.21', '2021-09-04 20:21:22', '2021-09-04 20:21:22');
INSERT INTO `attachments` VALUES (81, 'e9d8c298-1b1a-41b9-a16e-0116ec19ab52', 3, 0, 0, 1, 0, 1, '5tLiO1S8SHAZpujFKjRwBzaPXa9tRcUY8hWRuPvO.jpg', 'public/attachments/2021/09/04/', '7.jpg', 85053, 1080, 483, 'image/jpeg', '134.195.101.21', '2021-09-04 20:21:24', '2021-09-04 20:21:24');
INSERT INTO `attachments` VALUES (82, 'd81e12e3-0898-490e-a525-5234a1b8ed85', 3, 0, 0, 1, 0, 1, 'aMflPx1EEwMZtmOhLk3kGZ3Rx2K8hJcVwXrx8DnJ.jpg', 'public/attachments/2021/09/04/', '8.jpg', 104995, 1080, 635, 'image/jpeg', '134.195.101.21', '2021-09-04 20:21:27', '2021-09-04 20:21:27');
INSERT INTO `attachments` VALUES (83, '5392ef2c-06e9-4c9f-ab1c-1b2961d6ba8f', 3, 0, 0, 1, 0, 1, '7bjuPocZ4JVIBkNNmZUWmWYyMROEyc2PisEvVvDn.jpg', 'public/attachments/2021/09/04/', '9.jpg', 292239, 1080, 1725, 'image/jpeg', '134.195.101.21', '2021-09-04 20:21:30', '2021-09-04 20:21:30');
INSERT INTO `attachments` VALUES (84, '97f941b4-2e35-4c66-b264-0605a49d7b76', 3, 346, 0, 1, 0, 1, '3AzOEae7Gp9D0iy1BgAXnJoWgBETrAC4PJKN1y6M.jpg', 'public/attachments/2021/09/04/', '10.jpg', 162202, 1080, 852, 'image/jpeg', '134.195.101.21', '2021-09-04 20:24:45', '2021-09-04 20:24:51');
INSERT INTO `attachments` VALUES (85, '8fd6eeb7-feb6-4c96-92a1-036e268d804b', 3, 0, 0, 1, 0, 1, 'p6DVJT2Mzr8ctmgr0hr9fNviw70kOFDMIodANKPr.jpg', 'public/attachments/2021/09/04/', 'v2-fd2d02fd5c166c2fc81d0733ae185294_720w.jpg', 69779, 720, 667, 'image/jpeg', '134.195.101.21', '2021-09-04 20:24:58', '2021-09-04 20:24:58');
INSERT INTO `attachments` VALUES (86, '45082410-787c-434a-b237-e622786d4600', 3, 347, 0, 1, 0, 1, 'LOCaPca7zCXOK7lBLW2oWpPz4v9PYFVTzzT5e5N9.jpg', 'public/attachments/2021/09/04/', 'v2-fd2d02fd5c166c2fc81d0733ae185294_720w.jpg', 69779, 720, 667, 'image/jpeg', '134.195.101.21', '2021-09-04 20:25:02', '2021-09-04 20:25:04');
INSERT INTO `attachments` VALUES (87, '79467680-6aa9-40f2-b304-197c42accde3', 107, 0, 0, 1, 0, 1, 'JOiBWEt3WimzkaeOEkepiwdkqBymf3FyUYN77xvj.jpg', 'public/attachments/2021/09/07/', '9f56ad0f4bfbfbed6d074ac56ff0f736aec31f23.jpg', 82049, 580, 435, 'image/jpeg', '134.195.101.21', '2021-09-07 21:43:37', '2021-09-07 21:43:37');
INSERT INTO `attachments` VALUES (88, '99be999e-041e-4958-809c-7b487386fa8e', 111, 0, 0, 1, 0, 1, 'js7sKnoj8uc8B6h8GPcKzaaNF8DwWT4xs2ZawGed.jpg', 'public/attachments/2021/09/15/', '415cefc4b74543a97c4a61df43178a82b9011412.jpg', 79774, 840, 509, 'image/jpeg', '134.195.101.21', '2021-09-15 21:54:27', '2021-09-15 21:54:27');
INSERT INTO `attachments` VALUES (89, '54f7144c-de5c-49d4-b6c1-4fa46d8f7ad3', 112, 0, 0, 1, 0, 1, 'lI0OttXtk1mf8k4y2DpyqPI8SLVvjVMZp4PBaHO1.png', 'public/attachments/2021/09/21/', '8f5bd61b0ef41bd58ee1a51f14da81cb38db3d74.png', 110502, 580, 1255, 'image/png', '104.168.83.91', '2021-09-21 21:17:16', '2021-09-21 21:17:16');
INSERT INTO `attachments` VALUES (90, 'ab1fdde6-5b15-47f6-8586-b182671bb0de', 112, 0, 0, 1, 0, 1, '1LvNoDfcut7LyYdP2LS7L6Jg8KKKqFss7QScnmmZ.png', 'public/attachments/2021/09/21/', '977d08d7912397dd8be942170482b2b7d1a287d3.png', 242146, 580, 1255, 'image/png', '104.168.83.91', '2021-09-21 21:17:16', '2021-09-21 21:17:16');
INSERT INTO `attachments` VALUES (91, '3bffccef-8572-4582-baee-8c0c16ecf9a0', 113, 0, 0, 1, 0, 1, 'kibi3N9yZqMM0TgnVGwVQ5ZYzdCucQ3YRSEFw20f.jpg', 'public/attachments/2021/09/21/', '89a950e736d12f2e89349b7412c2d562853568b2.jpg', 64485, 580, 435, 'image/jpeg', '104.168.83.91', '2021-09-21 21:20:04', '2021-09-21 21:20:04');
INSERT INTO `attachments` VALUES (92, '7c8153a1-bd6f-4b0c-b905-905e4f713964', 127, 0, 0, 1, 0, 1, 'x9NHKJB9fscAZlogahY7At10rAWBHp54VU8xKgky.jpg', 'public/attachments/2021/10/18/', '6ee19e2bd40735fa183da955db510fb30d240803.jpg', 75805, 580, 336, 'image/jpeg', '103.152.113.169', '2021-10-18 22:08:26', '2021-10-18 22:08:26');
INSERT INTO `attachments` VALUES (93, '4f863cbf-adbd-442a-877b-2883686dfe57', 140, 0, 0, 1, 0, 1, 'SL8n9cmHISpcU1OLsgpddp6DF2xOEIeiKSHiU2Vx.jpg', 'public/attachments/2022/01/20/', '31a5ba096b63f62456daeb1ada44ebf81b4ca35b.jpg', 106121, 580, 1257, 'image/jpeg', '185.200.34.110', '2022-01-20 21:39:38', '2022-01-20 21:39:38');
INSERT INTO `attachments` VALUES (94, 'e84954fa-1c24-4fe6-9491-c4c74209f87c', 141, 0, 0, 1, 0, 1, 'YlT0c7hquAIsFCUIu9G4dp7YffxDB4LHHPiYYcTW.jpg', 'public/attachments/2022/01/20/', '9d6589b1cb1349542701bab5134e9258d0094a7a.jpg', 95811, 580, 1257, 'image/jpeg', '185.200.34.110', '2022-01-20 21:42:30', '2022-01-20 21:42:30');

-- ----------------------------
-- Table structure for attachments_share
-- ----------------------------
DROP TABLE IF EXISTS `attachments_share`;
CREATE TABLE `attachments_share`  (
  `sign` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `attachments_id` bigint(20) UNSIGNED NOT NULL COMMENT '附件id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `download_count` int(11) NULL DEFAULT 0 COMMENT '下载次数',
  `is_downloaded` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否下载 0没有下载 1已下载',
  `code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '验证码',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `expired_at` timestamp NULL DEFAULT NULL COMMENT '过期时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attachments_share
-- ----------------------------
INSERT INTO `attachments_share` VALUES ('9b7f4c0e7aeb51af974e6168ec1b6a76', 26, 35, 0, 0, NULL, '2021-08-04 20:37:20', '2021-08-04 20:37:20', '2021-08-04 20:47:20');
INSERT INTO `attachments_share` VALUES ('2486bfb3f2c4aedc0f78784c1eefc621', 26, 2, 1, 0, NULL, '2021-08-06 11:57:50', '2021-08-06 11:57:51', '2021-08-06 12:07:50');
INSERT INTO `attachments_share` VALUES ('4dac340058eb8e9f08a1a27d8f9e3032', 26, 2, 0, 0, NULL, '2021-08-06 11:59:03', '2021-08-06 11:59:03', '2021-08-06 12:09:03');
INSERT INTO `attachments_share` VALUES ('e8f130ac5d1b431a730361f8b8be0d23', 26, 2, 1, 0, NULL, '2021-08-06 11:59:05', '2021-08-06 11:59:06', '2021-08-06 12:09:05');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类 id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类描述',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类图标',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '显示顺序',
  `property` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '属性：0 正常 1 首页展示',
  `thread_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '主题数',
  `moderators` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类版主',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'ip 地址',
  `parentid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '所属一级分类的ID',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, '游戏电竞', '这里是玩家集结地', '', 1, 0, 137, NULL, '134.195.101.21', 0, '2021-07-30 20:24:49', '2022-01-20 21:53:45');
INSERT INTO `categories` VALUES (3, '计算机', '程序员们的成功心得', '', 8, 0, 15, NULL, '134.195.101.21', 0, '2021-08-01 00:13:40', '2021-10-22 13:27:41');
INSERT INTO `categories` VALUES (4, 'LOL', '瓦罗兰大陆昂扬不灭', '', 0, 0, 69, NULL, '134.195.101.21', 1, '2021-08-01 14:33:12', '2022-01-20 21:53:45');
INSERT INTO `categories` VALUES (5, 'CSGO', 'rush B', '', 1, 0, 7, NULL, '134.195.101.21', 1, '2021-08-01 14:34:25', '2021-08-20 19:47:03');
INSERT INTO `categories` VALUES (7, '永劫无间', '先秒大佛大佛一丝', '', 2, 0, 6, NULL, '134.195.101.21', 1, '2021-08-02 11:05:53', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (8, '绝地求生', '给我98K', '', 3, 0, 6, NULL, '134.195.101.21', 1, '2021-08-02 11:07:11', '2021-09-07 21:48:29');
INSERT INTO `categories` VALUES (10, '王者荣耀', '心平气和', '', 4, 0, 4, NULL, '134.195.101.21', 1, '2021-08-02 11:09:24', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (11, '和平精英', '看我皮肤', '', 5, 0, 4, NULL, '134.195.101.21', 1, '2021-08-02 11:11:17', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (13, '我的世界', '最吃配置的游戏', '', 6, 0, 4, NULL, '134.195.101.21', 1, '2021-08-02 11:13:41', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (14, 'CF', '十年老兵回归战场', '', 7, 0, 6, NULL, '134.195.101.21', 1, '2021-08-02 11:15:02', '2021-12-16 14:19:34');
INSERT INTO `categories` VALUES (15, '主机游戏', '3A制作', '', 8, 0, 5, NULL, '134.195.101.21', 1, '2021-08-02 11:16:17', '2022-01-16 18:38:21');
INSERT INTO `categories` VALUES (18, '无类帖', '', '', 0, 0, 1, NULL, '134.195.101.21', 0, '2021-08-02 11:22:56', '2021-09-07 21:51:20');
INSERT INTO `categories` VALUES (19, '给她爱', '谁还没有给她爱五', '', 9, 0, 7, NULL, '134.195.101.21', 1, '2021-08-02 11:28:05', '2021-10-18 21:52:00');
INSERT INTO `categories` VALUES (21, '动漫番剧', '二次元yyds', '', 2, 0, 1, NULL, '134.195.101.21', 0, '2021-08-02 11:29:57', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (22, '七龙珠', '狗空', '', 0, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:30:51', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (23, '海贼王', '我是要成为海贼王的男人', '', 1, 0, 1, NULL, '134.195.101.21', 21, '2021-08-02 11:31:23', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (24, '火影忍者', '血轮眼开', '', 2, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:32:23', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (25, '鬼灭之刃', '猪头靓仔', '', 3, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:34:25', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (26, '咒术回战', '眼罩靓仔', '', 4, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:35:12', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (27, '工作细胞', '可爱的血小板', '', 5, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:35:43', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (28, '小林家的龙奴仆', '谁不想家里有个龙女仆呢', '', 6, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:36:25', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (29, 'JOJO的奇妙冒险', '乌拉乌拉乌拉', '', 7, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:39:10', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (30, '终末的女武神', '吕布奉先才是人类最强', '', 8, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:41:23', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (31, '一拳超人', '啊嘞', '', 9, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:42:22', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (32, '进军的巨人', '啊啊啊', '', 10, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:43:10', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (33, '东京喰种', '饿了', '', 11, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:43:34', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (34, '瑞克和莫迪', '我们去探险吧', '', 12, 0, 0, NULL, '134.195.101.21', 21, '2021-08-02 11:45:50', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (35, '生活美食', '生活还是多姿多彩的', '', 3, 0, 2, NULL, '134.195.101.21', 0, '2021-08-02 11:47:34', '2021-08-13 15:55:10');
INSERT INTO `categories` VALUES (36, '知识科普', '知识是最大的武器', '', 4, 0, 1, NULL, '134.195.101.21', 0, '2021-08-02 11:49:27', '2021-08-20 19:54:08');
INSERT INTO `categories` VALUES (37, '娱乐八卦', 'CP什么CP在哪呢CP', '', 5, 0, 2, NULL, '134.195.101.21', 0, '2021-08-02 11:50:45', '2021-12-16 16:03:56');
INSERT INTO `categories` VALUES (38, '时尚潮流', '我最美', '', 6, 0, 0, NULL, '134.195.101.21', 0, '2021-08-02 11:51:18', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (39, '科技工业', '科技才能增强实力', '', 7, 0, 0, NULL, '134.195.101.21', 0, '2021-08-02 11:54:38', '2021-08-12 15:15:22');
INSERT INTO `categories` VALUES (41, '荒野大镖客', '', '', 10, 0, 4, NULL, '134.195.101.21', 1, '2021-08-02 15:24:35', '2021-08-22 19:28:54');
INSERT INTO `categories` VALUES (42, '方舟生存进化', '', '', 11, 0, 5, NULL, '134.195.101.21', 1, '2021-08-02 15:25:22', '2021-09-07 21:39:49');
INSERT INTO `categories` VALUES (43, '怪物猎人系列', '', '', 12, 0, 5, NULL, '134.195.101.21', 1, '2021-08-06 10:25:16', '2021-10-18 22:08:31');
INSERT INTO `categories` VALUES (44, '赛博朋克', '', '', 13, 0, 5, NULL, '134.195.101.21', 1, '2021-08-06 10:25:30', '2022-01-20 21:34:31');

-- ----------------------------
-- Table structure for deny_users
-- ----------------------------
DROP TABLE IF EXISTS `deny_users`;
CREATE TABLE `deny_users`  (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deny_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL COMMENT '创建时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of deny_users
-- ----------------------------

-- ----------------------------
-- Table structure for dialog
-- ----------------------------
DROP TABLE IF EXISTS `dialog`;
CREATE TABLE `dialog`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `dialog_message_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最新消息ID',
  `sender_user_id` bigint(20) UNSIGNED NOT NULL COMMENT '发送人UID',
  `recipient_user_id` bigint(20) UNSIGNED NOT NULL COMMENT '收信人UID',
  `recipient_read_at` datetime NULL DEFAULT NULL COMMENT '收信人阅读时间',
  `sender_read_at` datetime NULL DEFAULT NULL COMMENT '发送人阅读时间',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `sender_deleted_at` datetime NULL DEFAULT NULL COMMENT '发送人删除时间',
  `recipient_deleted_at` datetime NULL DEFAULT NULL COMMENT '收信人删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sender_user_id`(`sender_user_id`) USING BTREE,
  INDEX `recipient_user_id`(`recipient_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dialog
-- ----------------------------
INSERT INTO `dialog` VALUES (1, 6, 4, 2, '2021-08-01 14:21:46', '2021-08-01 12:38:13', '2021-08-01 12:32:39', '2021-08-01 14:21:46', NULL, NULL);
INSERT INTO `dialog` VALUES (2, 43, 3, 2, NULL, '2021-12-16 14:49:39', '2021-08-01 22:43:22', '2021-12-16 14:49:39', NULL, NULL);
INSERT INTO `dialog` VALUES (3, 8, 25, 2, '2021-08-03 12:02:38', '2021-08-02 20:23:54', '2021-08-02 20:23:53', '2021-08-03 12:02:38', NULL, NULL);
INSERT INTO `dialog` VALUES (4, 13, 35, 2, '2021-08-06 10:19:52', '2021-08-04 20:45:19', '2021-08-04 20:45:18', '2021-08-06 10:19:52', NULL, NULL);
INSERT INTO `dialog` VALUES (5, 33, 8, 2, '2021-10-18 11:36:53', '2021-09-21 21:26:11', '2021-08-04 20:50:08', '2021-10-18 11:36:53', NULL, NULL);
INSERT INTO `dialog` VALUES (6, 18, 37, 2, '2021-08-09 09:40:24', '2021-08-08 12:41:08', '2021-08-08 12:41:07', '2021-08-09 09:40:24', NULL, NULL);
INSERT INTO `dialog` VALUES (7, 31, 75, 2, '2021-10-18 11:37:04', '2021-08-21 21:18:16', '2021-08-20 20:04:53', '2021-10-18 11:37:04', NULL, NULL);
INSERT INTO `dialog` VALUES (8, 36, 116, 2, '2021-10-18 12:07:32', NULL, '2021-09-30 22:28:46', '2021-10-18 12:07:32', NULL, NULL);
INSERT INTO `dialog` VALUES (9, 37, 123, 2, '2021-10-19 10:27:56', '2021-10-18 21:53:17', '2021-10-18 21:53:16', '2021-10-19 10:27:56', NULL, NULL);
INSERT INTO `dialog` VALUES (10, 40, 127, 2, '2021-10-19 10:28:15', '2021-10-18 22:11:07', '2021-10-18 22:10:35', '2021-10-19 10:28:15', NULL, NULL);
INSERT INTO `dialog` VALUES (11, 45, 143, 2, NULL, '2022-01-20 21:55:32', '2022-01-20 21:55:21', '2022-01-20 21:55:32', NULL, NULL);

-- ----------------------------
-- Table structure for dialog_message
-- ----------------------------
DROP TABLE IF EXISTS `dialog_message`;
CREATE TABLE `dialog_message`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `dialog_id` bigint(20) UNSIGNED NOT NULL COMMENT '会话ID',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户ID',
  `attachment_id` bigint(20) UNSIGNED NOT NULL COMMENT '附件ID',
  `message_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `read_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '阅读状态0.未读 1.已读',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '消息状态 0空消息 1.正常消息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_dialog_id`(`dialog_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dialog_message
-- ----------------------------
INSERT INTO `dialog_message` VALUES (1, 1, 4, 0, '{\\\"message_text\\\":null,\\\"image_url\\\":\\\"\\\"}', '2021-08-01 12:32:39', '2021-08-01 12:32:39', 0, 0);
INSERT INTO `dialog_message` VALUES (2, 1, 4, 8, '{\\\"message_text\\\":null,\\\"image_url\\\":\\\"http:\\\\/\\\\/207.148.72.116\\\\/storage\\\\/attachments\\\\/2021\\\\/08\\\\/01\\\\/xNUPpCYgzdGFoyPyIB7gD9ueyGnc1ULloFdxPPin.jpg\\\"}', '2021-08-01 12:32:40', '2021-08-01 14:21:38', 1, 1);
INSERT INTO `dialog_message` VALUES (3, 1, 4, 9, '{\\\"message_text\\\":null,\\\"image_url\\\":\\\"http:\\\\/\\\\/207.148.72.116\\\\/storage\\\\/attachments\\\\/2021\\\\/08\\\\/01\\\\/mlofjiIlK8EIaypvXPNkt23Luw4gaGgnv7INMROO.jpg\\\"}', '2021-08-01 12:35:08', '2021-08-01 14:21:38', 1, 1);
INSERT INTO `dialog_message` VALUES (4, 1, 4, 10, '{\\\"message_text\\\":null,\\\"image_url\\\":\\\"http:\\\\/\\\\/207.148.72.116\\\\/storage\\\\/attachments\\\\/2021\\\\/08\\\\/01\\\\/DikYqSHswbEh6ffSJnHDHoUIIv1372m9LSllndZn.JPG\\\"}', '2021-08-01 12:35:38', '2021-08-01 14:21:38', 1, 1);
INSERT INTO `dialog_message` VALUES (5, 1, 4, 0, '{\\\"message_text\\\":\\\"<t>\\\\u7f51\\\\u7ad9\\\\u521b\\\\u5efa\\\\u4eba\\\\uff1f<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-01 12:37:51', '2021-08-01 14:21:38', 1, 1);
INSERT INTO `dialog_message` VALUES (6, 1, 4, 0, '{\\\"message_text\\\":\\\"<t>\\\\u6211\\\\u4e3e\\\\u62a5<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-01 12:38:12', '2021-08-01 14:21:38', 1, 1);
INSERT INTO `dialog_message` VALUES (7, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>111<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-01 22:43:22', '2021-08-02 10:55:25', 1, 1);
INSERT INTO `dialog_message` VALUES (8, 3, 25, 0, '{\\\"message_text\\\":\\\"<t>\\\\u9ebb\\\\u70e6\\\\u95ee\\\\u4e00\\\\u4e0b\\\\u90a3\\\\u4e2a\\\\u7f16\\\\u7a0b\\\\u8ba1\\\\u7b97\\\\u673a\\\\u91cc\\\\u9762\\\\u8c01\\\\u5389\\\\u5bb3\\\\u963f\\\\uff0c\\\\u6211\\\\u4e5f\\\\u662f\\\\u521a\\\\u5f00\\\\u59cb\\\\u5b66\\\\u4e60\\\\u60f3\\\\u54a8\\\\u8be2\\\\u4e00\\\\u4e0b<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-02 20:23:53', '2021-08-03 12:02:39', 1, 1);
INSERT INTO `dialog_message` VALUES (9, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>\\\\u7528\\\\u4e0d\\\\u7528\\\\u505a\\\\u4e00\\\\u4e2a\\\\u79c1\\\\u4fe1\\\\u5df2\\\\u8bfb\\\\u8fd9\\\\u4e2a\\\\u4e1c\\\\u897f<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-02 20:25:10', '2021-08-03 12:02:51', 1, 1);
INSERT INTO `dialog_message` VALUES (10, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>\\\\u8ba9\\\\u81ea\\\\u5df1\\\\u770b\\\\u89c1\\\\u81ea\\\\u5df1\\\\u7684\\\\u79c1\\\\u4fe1\\\\u522b\\\\u4eba\\\\u8bfb\\\\u6ca1<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-02 20:25:42', '2021-08-03 12:02:51', 1, 1);
INSERT INTO `dialog_message` VALUES (11, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>\\\\u5565\\\\u65f6\\\\u5019\\\\u770b\\\\u89c1\\\\u91cd\\\\u5927BUG\\\\u7559\\\\u8a00\\\\u7ed9\\\\u6211<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-03 16:18:10', '2021-08-03 16:32:25', 1, 1);
INSERT INTO `dialog_message` VALUES (12, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>\\\\u4f60\\\\u5565\\\\u65f6\\\\u8981\\\\u6709\\\\u65f6\\\\u95f4\\\\u628a\\\\u63a8\\\\u8350\\\\u90a3\\\\u4e2a\\\\u6253\\\\u5f00\\\\uff0c\\\\u7136\\\\u540e\\\\u8bbe\\\\u7f6e\\\\u6210\\\\u666e\\\\u901a\\\\u7528\\\\u6237\\\\u53d1\\\\u7684\\\\u4e0d\\\\u663e\\\\u793a\\\\uff0c\\\\u5176\\\\u4ed6\\\\u7528\\\\u6237\\\\u7ec4\\\\u53d1\\\\u7684\\\\u53ef\\\\u4ee5\\\\u663e\\\\u793a\\\\u5728\\\\u63a8\\\\u8350\\\\u91cc<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-03 16:19:29', '2021-08-03 16:32:25', 1, 1);
INSERT INTO `dialog_message` VALUES (13, 4, 35, 0, '{\\\"message_text\\\":\\\"<t>\\\\u80fd\\\\u628a\\\\u6211\\\\u7684MOD\\\\u5206\\\\u4eab\\\\u8d34\\\\u9876\\\\u7f6e\\\\u5417<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-04 20:45:18', '2021-08-06 10:19:53', 1, 1);
INSERT INTO `dialog_message` VALUES (14, 5, 8, 0, '{\\\"message_text\\\":\\\"<t>\\\\u5185\\\\u5bb9\\\\u6d89\\\\u53ca\\\\u654f\\\\u611f\\\\u8bcd\\\\u65e0\\\\u6cd5\\\\u53d1\\\\u9001\\\\u662f\\\\u600e\\\\u4e48\\\\u56de\\\\u4e8b\\\\u554a<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-04 20:50:08', '2021-08-06 10:19:42', 1, 1);
INSERT INTO `dialog_message` VALUES (15, 5, 8, 0, '{\\\"message_text\\\":\\\"<t>\\\\u80fd\\\\u8bbe\\\\u7f6e\\\\u4e00\\\\u4e0b\\\\u5417\\\\uff0c\\\\u6211\\\\u53ea\\\\u662f\\\\u53d1\\\\u4e00\\\\u4e2aLOL\\\\u7684\\\\u6587\\\\u6863<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-04 20:50:37', '2021-08-06 10:19:42', 1, 1);
INSERT INTO `dialog_message` VALUES (16, 5, 8, 0, '{\\\"message_text\\\":\\\"<t>\\\\u6709\\\\u4eba\\\\u5192\\\\u5145\\\\u7ba1\\\\u7406\\\\u5458\\\\u66f4\\\\u65b0\\\\u7f51\\\\u7ad9\\\\u4e0d\\\\u7ba1\\\\u5417\\\\uff1f<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-06 22:46:24', '2021-08-09 09:40:16', 1, 1);
INSERT INTO `dialog_message` VALUES (17, 5, 8, 0, '{\\\"message_text\\\":\\\"<t>\\\\u8fd8\\\\u4e0d\\\\u8ba9\\\\u53d1\\\\u5e16<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-06 22:46:34', '2021-08-09 09:40:16', 1, 1);
INSERT INTO `dialog_message` VALUES (18, 6, 37, 0, '{\\\"message_text\\\":\\\"<t>\\\\u6e90\\\\u7801\\\\u7ed9\\\\u6211\\\\uff0c\\\\u6211\\\\u62ff\\\\u51fa\\\\u53bb\\\\u5356\\\\u80fd\\\\u8d5a\\\\u94b1<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-08 12:41:07', '2021-08-09 09:40:24', 1, 1);
INSERT INTO `dialog_message` VALUES (19, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>http:\\\\/\\\\/207.148.72.116:8888\\\\/810145a3<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-10 00:50:14', '2021-08-10 10:40:35', 1, 1);
INSERT INTO `dialog_message` VALUES (20, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>gmf24xw<br\\\\/>\\\\n3659686<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-10 00:50:41', '2021-08-10 10:40:35', 1, 1);
INSERT INTO `dialog_message` VALUES (21, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>\\\\u5168\\\\u7aef\\\\u524d\\\\u53f0\\\\u4f18\\\\u5316\\\\u4e0e\\\\u4fee\\\\u590d<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-11 19:19:06', '2021-08-11 19:19:58', 1, 1);
INSERT INTO `dialog_message` VALUES (22, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>1. \\\\u6dfb\\\\u52a0\\\\u516c\\\\u5b89\\\\u5907\\\\u6848\\\\u4fe1\\\\u606f\\\\u3002<br\\\\/>\\\\n2. \\\\u4fee\\\\u590d\\\\u540e\\\\u53f0\\\\u4e0d\\\\u8bbe\\\\u7f6e\\\\u516c\\\\u5b89\\\\u5907\\\\u6848\\\\u4fe1\\\\u606f\\\\u7684\\\\u8bdd\\\\uff0cpc\\\\u9996\\\\u9875\\\\u53f3\\\\u4e0b\\\\u89d2\\\\u7f51\\\\u7ad9\\\\u5907\\\\u6848\\\\u4fe1\\\\u606f\\\\u4e0d\\\\u663e\\\\u793a\\\\u3002<br\\\\/>\\\\n3. \\\\u4fee\\\\u590d\\\\u56fe\\\\u6587\\\\u6df7\\\\u6392\\\\u65f6\\\\u53d1\\\\u5e03\\\\u4e00\\\\u5f20\\\\u957f\\\\u56fe\\\\uff0c\\\\u6ca1\\\\u6709\\\\u5bf9\\\\u957f\\\\u56fe\\\\u6298\\\\u53e0\\\\u8fc7\\\\u957f\\\\u7684\\\\u5185\\\\u5bb9\\\\u3002<br\\\\/>\\\\n4. \\\\u4fee\\\\u590d H5 \\\\u624b\\\\u673a\\\\u5916\\\\u90e8\\\\u6d4f\\\\u89c8\\\\u5668\\\\u517c\\\\u5bb9\\\\u6027\\\\u95ee\\\\u9898\\\\u3002<br\\\\/>\\\\n5. \\\\u4fee\\\\u590d\\\\u697c\\\\u4e2d\\\\u697c\\\\u56de\\\\u590d\\\\u7528\\\\u6237\\\\u4fe1\\\\u606f\\\\u4e0e\\\\u5185\\\\u5bb9\\\\u6ca1\\\\u5bf9\\\\u9f50\\\\u3002<br\\\\/>\\\\n6. \\\\u540e\\\\u53f0\\\\u5bf9\\\\u8c61\\\\u5b58\\\\u50a8\\\\uff08cos\\\\uff09\\\\u7684\\\\u6587\\\\u6863\\\\u9884\\\\u89c8\\\\u5f00\\\\u5173\\\\uff0c\\\\u6253\\\\u5f00\\\\u6216\\\\u5173\\\\u95ed\\\\uff0c\\\\u524d\\\\u7aef\\\\u90fd\\\\u53ef\\\\u4ee5\\\\u6b63\\\\u5e38\\\\u9884\\\\u89c8\\\\u3002<br\\\\/>\\\\n7. \\\\u4fee\\\\u590d fileUrl \\\\u56fe\\\\u7247\\\\u4e0a\\\\u4f20 bug\\\\u3002<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-11 19:19:50', '2021-08-11 19:19:58', 1, 1);
INSERT INTO `dialog_message` VALUES (23, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>PC \\\\u7aef\\\\u4f18\\\\u5316\\\\u4e0e\\\\u4fee\\\\u590d<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-11 19:19:55', '2021-08-11 19:19:58', 1, 1);
INSERT INTO `dialog_message` VALUES (24, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>1. \\\\u9996\\\\u9875\\\\u7b5b\\\\u9009\\\\u70b9\\\\u51fb\\\\u4e8c\\\\u7ea7\\\\u5206\\\\u7c7b\\\\u7684\\\\u4e00\\\\u7ea7\\\\u5206\\\\u7c7b\\\\uff0c\\\\u4e0b\\\\u5212\\\\u7ebf\\\\u79fb\\\\u9664\\\\u3002<br\\\\/>\\\\n2. \\\\u4fee\\\\u590d\\\\u4e2a\\\\u4eba\\\\u4e2d\\\\u5fc3\\\\u7ad9\\\\u70b9\\\\u4fe1\\\\u606f\\\\u6587\\\\u6848\\\\u6ca1\\\\u6709\\\\u5bf9\\\\u9f50\\\\u3002<br\\\\/>\\\\n3. \\\\u4fee\\\\u590d\\\\u5bf9\\\\u63a8\\\\u8350\\\\u5185\\\\u5bb9\\\\u8fdb\\\\u884c\\\\u5206\\\\u7c7b\\\\u7b5b\\\\u9009\\\\u65f6\\\\u4e0d\\\\u8d77\\\\u4f5c\\\\u7528\\\\u3002<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-11 19:19:59', '2021-08-11 19:20:07', 1, 1);
INSERT INTO `dialog_message` VALUES (25, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\/H5\\\\u4f18\\\\u5316\\\\u4e0e\\\\u4fee\\\\u590d<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-11 19:20:04', '2021-08-11 19:20:07', 1, 1);
INSERT INTO `dialog_message` VALUES (26, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>1. \\\\u4fee\\\\u590d\\\\u53d1\\\\u5e03\\\\u4e09\\\\u5f20\\\\u957f\\\\u56fe\\\\u65f6\\\\uff0c\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\u7684\\\\u56fe\\\\u7247\\\\u6ca1\\\\u6709\\\\u5bf9\\\\u9f50\\\\uff0c\\\\u4e14H5\\\\u7684\\\\u56fe\\\\u7247\\\\u5c55\\\\u793a\\\\u89c4\\\\u5219\\\\u6709\\\\u8bef\\\\u3002<br\\\\/>\\\\n2. \\\\u4fee\\\\u590d\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\u5df1\\\\u53d1\\\\u5e03\\\\u7ea2\\\\u5305\\\\u8d34\\\\u540e\\\\uff0c\\\\u5176\\\\u4ed6\\\\u7528\\\\u6237\\\\u5728\\\\u53e6\\\\u4e00\\\\u7aef\\\\u9886\\\\u53d6\\\\u7ea2\\\\u5305\\\\u6210\\\\u529f\\\\uff0c\\\\u518d\\\\u6b21\\\\u8fdb\\\\u5165\\\\u5e16\\\\u5b50\\\\u8be6\\\\u60c5\\\\u8bc4\\\\u8bba\\\\u663e\\\\u793a\\\\u5df2\\\\u9886\\\\u53d6\\\\uff0c\\\\u7ea2\\\\u5305\\\\u8fdb\\\\u5ea6\\\\u6761\\\\u4e0d\\\\u663e\\\\u793a\\\\uff0c\\\\u5237\\\\u65b0\\\\u540e\\\\u6b63\\\\u5e38\\\\u3002<br\\\\/>\\\\n3. \\\\u4fee\\\\u590d\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\u8bc4\\\\u8bba\\\\u4ed6\\\\u4eba\\\\u60ac\\\\u8d4f\\\\u8d34\\\\uff0c\\\\u4ed6\\\\u4eba\\\\u91c7\\\\u7eb3\\\\u56de\\\\u590d\\\\u540e\\\\uff0c\\\\u8fdb\\\\u5165\\\\u5230\\\\u5e16\\\\u5b50\\\\u8be6\\\\u60c5\\\\uff0c\\\\u8bc4\\\\u8bba\\\\u663e\\\\u793a\\\\u6210\\\\u529f\\\\u9886\\\\u53d6\\\\u5230\\\\u60ac\\\\u8d4f\\\\u91d1\\\\u989d\\\\uff0c\\\\u60ac\\\\u8d4f\\\\u8d34\\\\u7684\\\\u8fdb\\\\u5ea6\\\\u6761\\\\u4e0d\\\\u663e\\\\u793a\\\\u8fdb\\\\u5ea6\\\\u3002<br\\\\/>\\\\n4. \\\\u4fee\\\\u590d\\\\u7ad9\\\\u70b9\\\\u8c03\\\\u6210\\\\u4ed8\\\\u8d39\\\\u6a21\\\\u5f0f\\\\uff0c\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\u767b\\\\u5f55\\\\u6210\\\\u529f\\\\u540e\\\\u9996\\\\u9875\\\\u6ca1\\\\u6709\\\\u63d0\\\\u793a\\\\u4ed8\\\\u8d39\\\\u52a0\\\\u5165\\\\uff0c\\\\u53d1\\\\u5e16\\\\u65f6\\\\u63d0\\\\u793a\\\\u5f53\\\\u524d\\\\u7ad9\\\\u70b9\\\\u662f\\\\u4ed8\\\\u8d39\\\\u6a21\\\\u5f0f\\\\uff0c\\\\u6d88\\\\u606f\\\\u9875\\\\u4e00\\\\u76f4\\\\u5904\\\\u4e8e\\\\u52a0\\\\u8f7d\\\\u66f4\\\\u591a\\\\u4e2d\\\\u3002<br\\\\/>\\\\n5. \\\\u4fee\\\\u590d\\\\u7ad9\\\\u70b9\\\\u4fe1\\\\u606f\\\\u6210\\\\u5458\\\\u5934\\\\u50cf\\\\u4e0e\\\\u6210\\\\u5458\\\\u5217\\\\u8868\\\\u5934\\\\u50cf\\\\u663e\\\\u793a\\\\u4e0d\\\\u4e00\\\\u81f4\\\\uff0cH5\\\\u4e5f\\\\u6709\\\\u3002<br\\\\/>\\\\n6. \\\\u4fee\\\\u590dPC\\\\u7aef\\\\u53d1\\\\u5e03\\\\u5185\\\\u5bb9\\\\u65f6\\\\u7528\\\\u7f16\\\\u8f91\\\\u5668\\\\u8fdb\\\\u884c\\\\u6587\\\\u5b57\\\\u52a0\\\\u7c97\\\\uff0c\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\u7aef\\\\u9996\\\\u9875\\\\u8be6\\\\u60c5\\\\u9875\\\\u81ea\\\\u52a8\\\\u6362\\\\u884c\\\\uff0cPC\\\\u548cH5\\\\u6b63\\\\u5e38\\\\u3002<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-11 19:20:12', '2021-08-11 19:20:17', 1, 1);
INSERT INTO `dialog_message` VALUES (27, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>\\\\u9ebb\\\\u75f9\\\\u4ed6\\\\u4eec\\\\u8bf4\\\\u6211\\\\u5f04\\\\u7684\\\\u592a\\\\u6162\\\\u4e0d\\\\u7ed9\\\\u4e86<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-12 01:19:02', '2021-08-12 10:52:29', 1, 1);
INSERT INTO `dialog_message` VALUES (28, 7, 75, 0, '{\\\"message_text\\\":\\\"<t>\\\\u8fd9\\\\u4e2a\\\\u7f51\\\\u7ad9\\\\u5e72\\\\u5176\\\\u4ed6\\\\u7684\\\\u4e8b\\\\u60c5\\\\u5417<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-20 20:04:53', '2021-10-18 11:37:05', 1, 1);
INSERT INTO `dialog_message` VALUES (29, 7, 75, 0, '{\\\"message_text\\\":\\\"<t>\\\\u53ef\\\\u4ee5\\\\u4e00\\\\u8d77\\\\u8d5a\\\\u94b1<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-20 20:05:11', '2021-10-18 11:37:05', 1, 1);
INSERT INTO `dialog_message` VALUES (30, 7, 75, 0, '{\\\"message_text\\\":\\\"<t>\\\\u5e72\\\\u4e00\\\\u4e9b\\\\u5c0f\\\\u751f\\\\u610f<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-20 20:05:25', '2021-10-18 11:37:05', 1, 1);
INSERT INTO `dialog_message` VALUES (31, 7, 75, 0, '{\\\"message_text\\\":\\\"<t>\\\\u4e0d\\\\u8d5a\\\\u94b1\\\\u7684\\\\u5417\\\\uff0c\\\\u51e0\\\\u5343\\\\u751a\\\\u81f3\\\\u4e0a\\\\u4e07\\\\uff0c\\\\u5c0f\\\\u751f\\\\u610f\\\\uff0c\\\\u5e73\\\\u5206<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-08-21 21:18:13', '2021-10-18 11:37:05', 1, 1);
INSERT INTO `dialog_message` VALUES (32, 5, 8, 0, '{\\\"message_text\\\":\\\"<t>\\\\u4e0d\\\\u7ba1\\\\u8fd9\\\\u4e2a\\\\u7f51\\\\u7ad9\\\\u4e86\\\\u5417<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-09-21 21:25:36', '2021-10-18 11:36:54', 1, 1);
INSERT INTO `dialog_message` VALUES (33, 5, 8, 0, '{\\\"message_text\\\":\\\"<r>\\\\u4e0d\\\\u5982\\\\u7ed9\\\\u6211\\\\u4e00\\\\u4e2a\\\\u7ba1\\\\u7406\\\\u5458\\\\u6211\\\\u5e2e\\\\u4f60\\\\u7ba1\\\\u7406<E>:qiang:<\\\\/E><\\\\/r>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-09-21 21:26:10', '2021-10-18 11:36:54', 1, 1);
INSERT INTO `dialog_message` VALUES (34, 8, 116, 0, '{\\\"message_text\\\":\\\"<t>\\\\u611f\\\\u89c9\\\\u7f51\\\\u7ad9\\\\u6709\\\\u70b9\\\\u5361<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-09-30 22:28:47', '2021-10-18 11:36:47', 1, 1);
INSERT INTO `dialog_message` VALUES (35, 8, 116, 0, '{\\\"message_text\\\":\\\"<t>\\\\u4f18\\\\u5316\\\\u4e00\\\\u4e0b\\\\u5427<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-09-30 22:28:58', '2021-10-18 11:36:47', 1, 1);
INSERT INTO `dialog_message` VALUES (36, 8, 2, 0, '{\\\"message_text\\\":\\\"<t>\\\\u7f51\\\\u7ad9\\\\u5361\\\\u987f\\\\u662f\\\\u56e0\\\\u4e3a\\\\u6211\\\\u4eec\\\\u627f\\\\u8f7d\\\\u7684\\\\u670d\\\\u52a1\\\\u5668\\\\u4e0d\\\\u662f\\\\u5f88\\\\u597d\\\\u8fd9\\\\u4e2a\\\\u6211\\\\u4eec\\\\u53ea\\\\u80fd\\\\u8d2d\\\\u4e70\\\\u66f4\\\\u597d\\\\u7684\\\\u670d\\\\u52a1\\\\u5668<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-10-18 11:39:02', '2021-10-18 11:39:02', 0, 1);
INSERT INTO `dialog_message` VALUES (37, 9, 123, 0, '{\\\"message_text\\\":\\\"<t>\\\\u63d0\\\\u793a\\\\u6211\\\\u8d26\\\\u53f7\\\\u5f02\\\\u5e38\\\\u80fd\\\\u770b\\\\u4e00\\\\u4e0b\\\\u600e\\\\u4e48\\\\u56de\\\\u4e8b\\\\u5417<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-10-18 21:53:16', '2021-10-19 10:27:47', 1, 1);
INSERT INTO `dialog_message` VALUES (38, 10, 127, 0, '{\\\"message_text\\\":\\\"<t>\\\\u8fd9\\\\u4e2a\\\\u7f51\\\\u7ad9\\\\u53ef\\\\u4ee5\\\\u7528\\\\u6765\\\\u8d5a\\\\u94b1\\\\uff0c\\\\u5408\\\\u4f5c\\\\u5417<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-10-18 22:10:35', '2021-10-19 10:28:10', 1, 1);
INSERT INTO `dialog_message` VALUES (39, 10, 127, 0, '{\\\"message_text\\\":\\\"<t>\\\\u4e00\\\\u5929\\\\u4e00\\\\u4e24\\\\u767e\\\\u6ca1\\\\u95ee\\\\u9898<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-10-18 22:10:56', '2021-10-19 10:28:10', 1, 1);
INSERT INTO `dialog_message` VALUES (40, 10, 127, 0, '{\\\"message_text\\\":\\\"<t>\\\\u8003\\\\u8651\\\\u4e00\\\\u4e0b<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-10-18 22:11:03', '2021-10-19 10:28:10', 1, 1);
INSERT INTO `dialog_message` VALUES (41, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>\\\\u6211\\\\u5f04\\\\u4ed8\\\\u8d39\\\\u7528\\\\u6237\\\\u7ec4\\\\u4e86<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-12-16 14:48:40', '2021-12-16 14:48:40', 0, 1);
INSERT INTO `dialog_message` VALUES (42, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>\\\\u4f60\\\\u6ce8\\\\u518c\\\\u4e2a\\\\u5c0f\\\\u53f7\\\\u53bb\\\\u4e2a\\\\u4eba\\\\u4e2d\\\\u5fc3\\\\u6709\\\\u4e2a\\\\u5347\\\\u7ea7<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-12-16 14:49:12', '2021-12-16 14:49:12', 0, 1);
INSERT INTO `dialog_message` VALUES (43, 2, 3, 0, '{\\\"message_text\\\":\\\"<t>\\\\u4f60\\\\u770b\\\\u770b\\\\u884c\\\\u4e0d\\\\u884c<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2021-12-16 14:49:19', '2021-12-16 14:49:19', 0, 1);
INSERT INTO `dialog_message` VALUES (44, 11, 143, 0, '{\\\"message_text\\\":\\\"<t>\\\\u5148\\\\u4ed8\\\\u6b3e\\\\u7684\\\\u751f\\\\u610f\\\\u505a\\\\u5417<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2022-01-20 21:55:21', '2022-01-20 21:55:21', 0, 1);
INSERT INTO `dialog_message` VALUES (45, 11, 143, 0, '{\\\"message_text\\\":\\\"<t>\\\\u5148\\\\u7ed9\\\\u4f60\\\\u94b1<\\\\/t>\\\",\\\"image_url\\\":\\\"\\\"}', '2022-01-20 21:55:26', '2022-01-20 21:55:26', 0, 1);

-- ----------------------------
-- Table structure for emoji
-- ----------------------------
DROP TABLE IF EXISTS `emoji`;
CREATE TABLE `emoji`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表情 id',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '表情分类',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '表情地址',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '表情符号',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '显示顺序',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of emoji
-- ----------------------------
INSERT INTO `emoji` VALUES (1, 'qq', 'emoji/qq/kelian.gif', ':kelian:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (2, 'qq', 'emoji/qq/haqian.gif', ':haqian:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (3, 'qq', 'emoji/qq/woshou.gif', ':woshou:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (4, 'qq', 'emoji/qq/aixin.gif', ':aixin:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (5, 'qq', 'emoji/qq/zuohengheng.gif', ':zuohengheng:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (6, 'qq', 'emoji/qq/weixiao.gif', ':weixiao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (7, 'qq', 'emoji/qq/jingkong.gif', ':jingkong:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (8, 'qq', 'emoji/qq/tiaopi.gif', ':tiaopi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (9, 'qq', 'emoji/qq/touxiao.gif', ':touxiao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (10, 'qq', 'emoji/qq/youling.gif', ':youling:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (11, 'qq', 'emoji/qq/caidao.gif', ':caidao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (12, 'qq', 'emoji/qq/cahan.gif', ':cahan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (13, 'qq', 'emoji/qq/hecai.gif', ':hecai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (14, 'qq', 'emoji/qq/keai.gif', ':keai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (15, 'qq', 'emoji/qq/ciya.gif', ':ciya:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (16, 'qq', 'emoji/qq/saorao.gif', ':saorao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (17, 'qq', 'emoji/qq/jingxi.gif', ':jingxi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (18, 'qq', 'emoji/qq/ku.gif', ':ku:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (19, 'qq', 'emoji/qq/piezui.gif', ':piezui:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (20, 'qq', 'emoji/qq/se.gif', ':se:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (21, 'qq', 'emoji/qq/xia.gif', ':xia:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (22, 'qq', 'emoji/qq/yinxian.gif', ':yinxian:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (23, 'qq', 'emoji/qq/zhouma.gif', ':zhouma:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (24, 'qq', 'emoji/qq/kulou.gif', ':kulou:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (25, 'qq', 'emoji/qq/xu.gif', ':xu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (26, 'qq', 'emoji/qq/jingya.gif', ':jingya:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (27, 'qq', 'emoji/qq/doge.gif', ':doge:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (28, 'qq', 'emoji/qq/bizui.gif', ':bizui:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (29, 'qq', 'emoji/qq/yangtuo.gif', ':yangtuo:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (30, 'qq', 'emoji/qq/shouqiang.gif', ':shouqiang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (31, 'qq', 'emoji/qq/baoquan.gif', ':baoquan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (32, 'qq', 'emoji/qq/yun.gif', ':yun:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (33, 'qq', 'emoji/qq/lanqiu.gif', ':lanqiu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (34, 'qq', 'emoji/qq/zhemo.gif', ':zhemo:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (35, 'qq', 'emoji/qq/guzhang.gif', ':guzhang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (36, 'qq', 'emoji/qq/shengli.gif', ':shengli:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (37, 'qq', 'emoji/qq/zaijian.gif', ':zaijian:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (38, 'qq', 'emoji/qq/dabing.gif', ':dabing:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (39, 'qq', 'emoji/qq/deyi.gif', ':deyi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (40, 'qq', 'emoji/qq/hanxiao.gif', ':hanxiao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (41, 'qq', 'emoji/qq/kun.gif', ':kun:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (42, 'qq', 'emoji/qq/hexie.gif', ':hexie:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (43, 'qq', 'emoji/qq/daku.gif', ':daku:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (44, 'qq', 'emoji/qq/wozuimei.gif', ':wozuimei:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (45, 'qq', 'emoji/qq/xiaoku.gif', ':xiaoku:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (46, 'qq', 'emoji/qq/xigua.gif', ':xigua:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (47, 'qq', 'emoji/qq/huaixiao.gif', ':huaixiao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (48, 'qq', 'emoji/qq/liulei.gif', ':liulei:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (49, 'qq', 'emoji/qq/lenghan.gif', ':lenghan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (50, 'qq', 'emoji/qq/qiudale.gif', ':qiudale:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (51, 'qq', 'emoji/qq/zhayanjian.gif', ':zhayanjian:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (52, 'qq', 'emoji/qq/qiaoda.gif', ':qiaoda:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (53, 'qq', 'emoji/qq/baojin.gif', ':baojin:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (54, 'qq', 'emoji/qq/OK.gif', ':OK:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (55, 'qq', 'emoji/qq/xiaojiujie.gif', ':xiaojiujie:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (56, 'qq', 'emoji/qq/gouyin.gif', ':gouyin:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (57, 'qq', 'emoji/qq/youhengheng.gif', ':youhengheng:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (58, 'qq', 'emoji/qq/tuosai.gif', ':tuosai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (59, 'qq', 'emoji/qq/nanguo.gif', ':nanguo:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (60, 'qq', 'emoji/qq/quantou.gif', ':quantou:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (61, 'qq', 'emoji/qq/haixiu.gif', ':haixiu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (62, 'qq', 'emoji/qq/koubi.gif', ':koubi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (63, 'qq', 'emoji/qq/qiang.gif', ':qiang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (64, 'qq', 'emoji/qq/pijiu.gif', ':pijiu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (65, 'qq', 'emoji/qq/bishi.gif', ':bishi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (66, 'qq', 'emoji/qq/yiwen.gif', ':yiwen:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (67, 'qq', 'emoji/qq/liuhan.gif', ':liuhan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (68, 'qq', 'emoji/qq/wunai.gif', ':wunai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (69, 'qq', 'emoji/qq/aini.gif', ':aini:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (70, 'qq', 'emoji/qq/bangbangtang.gif', ':bangbangtang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (71, 'qq', 'emoji/qq/penxue.gif', ':penxue:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (72, 'qq', 'emoji/qq/haobang.gif', ':haobang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (73, 'qq', 'emoji/qq/qinqin.gif', ':qinqin:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (74, 'qq', 'emoji/qq/xiaoyanger.gif', ':xiaoyanger:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (75, 'qq', 'emoji/qq/fendou.gif', ':fendou:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (76, 'qq', 'emoji/qq/ganga.gif', ':ganga:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (77, 'qq', 'emoji/qq/shuai.gif', ':shuai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (78, 'qq', 'emoji/qq/juhua.gif', ':juhua:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (79, 'qq', 'emoji/qq/baiyan.gif', ':baiyan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (80, 'qq', 'emoji/qq/fanu.gif', ':fanu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (81, 'qq', 'emoji/qq/jie.gif', ':jie:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (82, 'qq', 'emoji/qq/chi.gif', ':chi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (83, 'qq', 'emoji/qq/kuaikule.gif', ':kuaikule:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (84, 'qq', 'emoji/qq/zhuakuang.gif', ':zhuakuang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (85, 'qq', 'emoji/qq/shui.gif', ':shui:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (86, 'qq', 'emoji/qq/dan.gif', ':dan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (87, 'qq', 'emoji/qq/aoman.gif', ':aoman:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (88, 'qq', 'emoji/qq/fadai.gif', ':fadai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (89, 'qq', 'emoji/qq/leiben.gif', ':leiben:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (90, 'qq', 'emoji/qq/tu.gif', ':tu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (91, 'qq', 'emoji/qq/weiqu.gif', ':weiqu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO `emoji` VALUES (92, 'qq', 'emoji/qq/xieyanxiao.gif', ':xieyanxiao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');

-- ----------------------------
-- Table structure for finance
-- ----------------------------
DROP TABLE IF EXISTS `finance`;
CREATE TABLE `finance`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `income` decimal(10, 2) UNSIGNED NOT NULL COMMENT '用户充值金额',
  `withdrawal` decimal(10, 2) UNSIGNED NOT NULL COMMENT '用户提现金额',
  `order_count` int(10) UNSIGNED NOT NULL COMMENT '订单数量',
  `order_amount` decimal(10, 2) UNSIGNED NOT NULL COMMENT '订单金额',
  `total_profit` decimal(10, 2) UNSIGNED NOT NULL COMMENT '平台盈利',
  `register_profit` decimal(10, 2) UNSIGNED NOT NULL COMMENT '注册收入',
  `master_portion` decimal(10, 2) UNSIGNED NOT NULL COMMENT '打赏贴的分成',
  `withdrawal_profit` decimal(10, 2) UNSIGNED NOT NULL COMMENT '提现手续费收入',
  `created_at` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of finance
-- ----------------------------
INSERT INTO `finance` VALUES (1, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-03');
INSERT INTO `finance` VALUES (2, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-04');
INSERT INTO `finance` VALUES (3, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-05');
INSERT INTO `finance` VALUES (4, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-06');
INSERT INTO `finance` VALUES (5, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-07');
INSERT INTO `finance` VALUES (6, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-08');
INSERT INTO `finance` VALUES (7, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-09');
INSERT INTO `finance` VALUES (8, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-10');
INSERT INTO `finance` VALUES (9, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-11');
INSERT INTO `finance` VALUES (10, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-12');
INSERT INTO `finance` VALUES (11, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-13');
INSERT INTO `finance` VALUES (12, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-14');
INSERT INTO `finance` VALUES (13, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-15');
INSERT INTO `finance` VALUES (14, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-16');
INSERT INTO `finance` VALUES (15, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-17');
INSERT INTO `finance` VALUES (16, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-18');
INSERT INTO `finance` VALUES (17, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-19');
INSERT INTO `finance` VALUES (18, 3000.00, 0.00, 3, 3000.00, 0.00, 0.00, 0.00, 0.00, '2022-01-20');
INSERT INTO `finance` VALUES (19, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-21');
INSERT INTO `finance` VALUES (20, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-22');
INSERT INTO `finance` VALUES (21, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-23');
INSERT INTO `finance` VALUES (22, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-24');
INSERT INTO `finance` VALUES (23, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-25');
INSERT INTO `finance` VALUES (24, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-26');
INSERT INTO `finance` VALUES (25, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-27');
INSERT INTO `finance` VALUES (26, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-28');
INSERT INTO `finance` VALUES (27, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-29');
INSERT INTO `finance` VALUES (28, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-30');
INSERT INTO `finance` VALUES (29, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-31');
INSERT INTO `finance` VALUES (30, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-01');
INSERT INTO `finance` VALUES (31, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-02');
INSERT INTO `finance` VALUES (32, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-03');
INSERT INTO `finance` VALUES (33, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-04');
INSERT INTO `finance` VALUES (34, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-05');
INSERT INTO `finance` VALUES (35, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-06');
INSERT INTO `finance` VALUES (36, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-07');
INSERT INTO `finance` VALUES (37, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-08');
INSERT INTO `finance` VALUES (38, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-09');
INSERT INTO `finance` VALUES (39, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-10');
INSERT INTO `finance` VALUES (40, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-11');
INSERT INTO `finance` VALUES (41, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-12');
INSERT INTO `finance` VALUES (42, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-13');
INSERT INTO `finance` VALUES (43, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-14');
INSERT INTO `finance` VALUES (44, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-15');
INSERT INTO `finance` VALUES (45, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-16');
INSERT INTO `finance` VALUES (46, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-17');
INSERT INTO `finance` VALUES (47, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-18');
INSERT INTO `finance` VALUES (48, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-19');
INSERT INTO `finance` VALUES (49, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-20');
INSERT INTO `finance` VALUES (50, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-21');
INSERT INTO `finance` VALUES (51, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-22');
INSERT INTO `finance` VALUES (52, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-23');
INSERT INTO `finance` VALUES (53, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-24');
INSERT INTO `finance` VALUES (54, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-25');
INSERT INTO `finance` VALUES (55, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-26');
INSERT INTO `finance` VALUES (56, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-27');
INSERT INTO `finance` VALUES (57, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-28');
INSERT INTO `finance` VALUES (58, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-01');
INSERT INTO `finance` VALUES (59, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-02');
INSERT INTO `finance` VALUES (60, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-03');
INSERT INTO `finance` VALUES (61, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-04');
INSERT INTO `finance` VALUES (62, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-05');
INSERT INTO `finance` VALUES (63, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-06');
INSERT INTO `finance` VALUES (64, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-07');
INSERT INTO `finance` VALUES (65, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-08');
INSERT INTO `finance` VALUES (66, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-09');
INSERT INTO `finance` VALUES (67, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-10');
INSERT INTO `finance` VALUES (68, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-11');
INSERT INTO `finance` VALUES (69, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-12');
INSERT INTO `finance` VALUES (70, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-13');
INSERT INTO `finance` VALUES (71, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-14');
INSERT INTO `finance` VALUES (72, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-15');
INSERT INTO `finance` VALUES (73, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-16');
INSERT INTO `finance` VALUES (74, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-17');
INSERT INTO `finance` VALUES (75, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-18');
INSERT INTO `finance` VALUES (76, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-19');
INSERT INTO `finance` VALUES (77, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-20');
INSERT INTO `finance` VALUES (78, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-21');
INSERT INTO `finance` VALUES (79, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-22');
INSERT INTO `finance` VALUES (80, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-23');
INSERT INTO `finance` VALUES (81, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-24');

-- ----------------------------
-- Table structure for group_paid_users
-- ----------------------------
DROP TABLE IF EXISTS `group_paid_users`;
CREATE TABLE `group_paid_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '所属用户',
  `group_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户组 id',
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单 id',
  `operator_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '操作人',
  `delete_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除类型：1到期删除，2管理员修改，3用户复购',
  `expiration_time` datetime NOT NULL COMMENT '用户组到期时间',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_paid_users
-- ----------------------------
INSERT INTO `group_paid_users` VALUES (1, 3, 16, 6, NULL, 3, '2022-01-23 17:29:06', '2021-12-23 17:29:06', '2022-01-20 21:27:11', '2022-01-20 21:27:11');
INSERT INTO `group_paid_users` VALUES (2, 3, 17, 9, NULL, 0, '2022-02-20 21:27:11', '2022-01-20 21:27:11', '2022-01-20 21:27:11', NULL);

-- ----------------------------
-- Table structure for group_permission
-- ----------------------------
DROP TABLE IF EXISTS `group_permission`;
CREATE TABLE `group_permission`  (
  `group_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户组 id',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  PRIMARY KEY (`group_id`, `permission`) USING BTREE,
  CONSTRAINT `group_permission_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_permission
-- ----------------------------
INSERT INTO `group_permission` VALUES (6, 'order.create');
INSERT INTO `group_permission` VALUES (6, 'thread.insertAttachment');
INSERT INTO `group_permission` VALUES (6, 'thread.insertImage');
INSERT INTO `group_permission` VALUES (6, 'thread.insertVote');
INSERT INTO `group_permission` VALUES (6, 'trade.pay.order');
INSERT INTO `group_permission` VALUES (7, 'cash.create');
INSERT INTO `group_permission` VALUES (7, 'order.create');
INSERT INTO `group_permission` VALUES (7, 'switch.thread.viewPosts');
INSERT INTO `group_permission` VALUES (7, 'switch.viewThreads');
INSERT INTO `group_permission` VALUES (7, 'thread.favorite');
INSERT INTO `group_permission` VALUES (7, 'thread.likePosts');
INSERT INTO `group_permission` VALUES (7, 'thread.viewPosts');
INSERT INTO `group_permission` VALUES (7, 'trade.pay.order');
INSERT INTO `group_permission` VALUES (7, 'user.view');
INSERT INTO `group_permission` VALUES (7, 'userFollow.create');
INSERT INTO `group_permission` VALUES (7, 'viewThreads');
INSERT INTO `group_permission` VALUES (8, 'switch.thread.viewPosts');
INSERT INTO `group_permission` VALUES (8, 'switch.viewThreads');
INSERT INTO `group_permission` VALUES (8, 'thread.downloadAttachment');
INSERT INTO `group_permission` VALUES (8, 'thread.viewAttachment');
INSERT INTO `group_permission` VALUES (8, 'thread.viewPosts');
INSERT INTO `group_permission` VALUES (8, 'thread.viewVideo');
INSERT INTO `group_permission` VALUES (8, 'viewThreads');
INSERT INTO `group_permission` VALUES (10, 'cash.create');
INSERT INTO `group_permission` VALUES (10, 'createThread');
INSERT INTO `group_permission` VALUES (10, 'dialog.create');
INSERT INTO `group_permission` VALUES (10, 'order.create');
INSERT INTO `group_permission` VALUES (10, 'other.canInviteUserScale');
INSERT INTO `group_permission` VALUES (10, 'switch.createThread');
INSERT INTO `group_permission` VALUES (10, 'switch.thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (10, 'switch.thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (10, 'switch.thread.reply');
INSERT INTO `group_permission` VALUES (10, 'switch.thread.viewPosts');
INSERT INTO `group_permission` VALUES (10, 'switch.viewThreads');
INSERT INTO `group_permission` VALUES (10, 'thread.allowAnonymous');
INSERT INTO `group_permission` VALUES (10, 'thread.downloadAttachment');
INSERT INTO `group_permission` VALUES (10, 'thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (10, 'thread.favorite');
INSERT INTO `group_permission` VALUES (10, 'thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (10, 'thread.insertAttachment');
INSERT INTO `group_permission` VALUES (10, 'thread.insertGoods');
INSERT INTO `group_permission` VALUES (10, 'thread.insertImage');
INSERT INTO `group_permission` VALUES (10, 'thread.insertPay');
INSERT INTO `group_permission` VALUES (10, 'thread.insertPosition');
INSERT INTO `group_permission` VALUES (10, 'thread.insertRedPacket');
INSERT INTO `group_permission` VALUES (10, 'thread.insertReward');
INSERT INTO `group_permission` VALUES (10, 'thread.insertVote');
INSERT INTO `group_permission` VALUES (10, 'thread.likePosts');
INSERT INTO `group_permission` VALUES (10, 'thread.reply');
INSERT INTO `group_permission` VALUES (10, 'thread.viewAttachment');
INSERT INTO `group_permission` VALUES (10, 'thread.viewPosts');
INSERT INTO `group_permission` VALUES (10, 'thread.viewVideo');
INSERT INTO `group_permission` VALUES (10, 'trade.pay.order');
INSERT INTO `group_permission` VALUES (10, 'user.view');
INSERT INTO `group_permission` VALUES (10, 'userFollow.create');
INSERT INTO `group_permission` VALUES (10, 'viewThreads');
INSERT INTO `group_permission` VALUES (12, 'cash.create');
INSERT INTO `group_permission` VALUES (12, 'createThread');
INSERT INTO `group_permission` VALUES (12, 'dialog.create');
INSERT INTO `group_permission` VALUES (12, 'order.create');
INSERT INTO `group_permission` VALUES (12, 'other.canInviteUserScale');
INSERT INTO `group_permission` VALUES (12, 'switch.createThread');
INSERT INTO `group_permission` VALUES (12, 'switch.thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (12, 'switch.thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (12, 'switch.thread.reply');
INSERT INTO `group_permission` VALUES (12, 'switch.thread.viewPosts');
INSERT INTO `group_permission` VALUES (12, 'switch.viewThreads');
INSERT INTO `group_permission` VALUES (12, 'thread.allowAnonymous');
INSERT INTO `group_permission` VALUES (12, 'thread.downloadAttachment');
INSERT INTO `group_permission` VALUES (12, 'thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (12, 'thread.favorite');
INSERT INTO `group_permission` VALUES (12, 'thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (12, 'thread.insertAttachment');
INSERT INTO `group_permission` VALUES (12, 'thread.insertAudio');
INSERT INTO `group_permission` VALUES (12, 'thread.insertGoods');
INSERT INTO `group_permission` VALUES (12, 'thread.insertImage');
INSERT INTO `group_permission` VALUES (12, 'thread.insertPay');
INSERT INTO `group_permission` VALUES (12, 'thread.insertPosition');
INSERT INTO `group_permission` VALUES (12, 'thread.insertRedPacket');
INSERT INTO `group_permission` VALUES (12, 'thread.insertReward');
INSERT INTO `group_permission` VALUES (12, 'thread.insertVideo');
INSERT INTO `group_permission` VALUES (12, 'thread.insertVote');
INSERT INTO `group_permission` VALUES (12, 'thread.likePosts');
INSERT INTO `group_permission` VALUES (12, 'thread.reply');
INSERT INTO `group_permission` VALUES (12, 'thread.viewAttachment');
INSERT INTO `group_permission` VALUES (12, 'thread.viewPosts');
INSERT INTO `group_permission` VALUES (12, 'thread.viewVideo');
INSERT INTO `group_permission` VALUES (12, 'trade.pay.order');
INSERT INTO `group_permission` VALUES (12, 'user.view');
INSERT INTO `group_permission` VALUES (12, 'userFollow.create');
INSERT INTO `group_permission` VALUES (12, 'viewThreads');
INSERT INTO `group_permission` VALUES (13, 'cash.create');
INSERT INTO `group_permission` VALUES (13, 'createThread');
INSERT INTO `group_permission` VALUES (13, 'dialog.create');
INSERT INTO `group_permission` VALUES (13, 'order.create');
INSERT INTO `group_permission` VALUES (13, 'other.canInviteUserScale');
INSERT INTO `group_permission` VALUES (13, 'switch.createThread');
INSERT INTO `group_permission` VALUES (13, 'switch.thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (13, 'switch.thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (13, 'switch.thread.reply');
INSERT INTO `group_permission` VALUES (13, 'switch.thread.viewPosts');
INSERT INTO `group_permission` VALUES (13, 'switch.viewThreads');
INSERT INTO `group_permission` VALUES (13, 'thread.allowAnonymous');
INSERT INTO `group_permission` VALUES (13, 'thread.downloadAttachment');
INSERT INTO `group_permission` VALUES (13, 'thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (13, 'thread.favorite');
INSERT INTO `group_permission` VALUES (13, 'thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (13, 'thread.insertAttachment');
INSERT INTO `group_permission` VALUES (13, 'thread.insertAudio');
INSERT INTO `group_permission` VALUES (13, 'thread.insertImage');
INSERT INTO `group_permission` VALUES (13, 'thread.insertPay');
INSERT INTO `group_permission` VALUES (13, 'thread.insertPosition');
INSERT INTO `group_permission` VALUES (13, 'thread.insertRedPacket');
INSERT INTO `group_permission` VALUES (13, 'thread.insertReward');
INSERT INTO `group_permission` VALUES (13, 'thread.insertVideo');
INSERT INTO `group_permission` VALUES (13, 'thread.insertVote');
INSERT INTO `group_permission` VALUES (13, 'thread.likePosts');
INSERT INTO `group_permission` VALUES (13, 'thread.reply');
INSERT INTO `group_permission` VALUES (13, 'thread.viewAttachment');
INSERT INTO `group_permission` VALUES (13, 'thread.viewPosts');
INSERT INTO `group_permission` VALUES (13, 'thread.viewVideo');
INSERT INTO `group_permission` VALUES (13, 'trade.pay.order');
INSERT INTO `group_permission` VALUES (13, 'user.view');
INSERT INTO `group_permission` VALUES (13, 'userFollow.create');
INSERT INTO `group_permission` VALUES (13, 'viewThreads');
INSERT INTO `group_permission` VALUES (14, 'cash.create');
INSERT INTO `group_permission` VALUES (14, 'createThread');
INSERT INTO `group_permission` VALUES (14, 'dialog.create');
INSERT INTO `group_permission` VALUES (14, 'order.create');
INSERT INTO `group_permission` VALUES (14, 'other.canInviteUserScale');
INSERT INTO `group_permission` VALUES (14, 'switch.createThread');
INSERT INTO `group_permission` VALUES (14, 'switch.thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (14, 'switch.thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (14, 'switch.thread.reply');
INSERT INTO `group_permission` VALUES (14, 'switch.thread.viewPosts');
INSERT INTO `group_permission` VALUES (14, 'switch.viewThreads');
INSERT INTO `group_permission` VALUES (14, 'thread.allowAnonymous');
INSERT INTO `group_permission` VALUES (14, 'thread.downloadAttachment');
INSERT INTO `group_permission` VALUES (14, 'thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (14, 'thread.favorite');
INSERT INTO `group_permission` VALUES (14, 'thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (14, 'thread.insertAttachment');
INSERT INTO `group_permission` VALUES (14, 'thread.insertAudio');
INSERT INTO `group_permission` VALUES (14, 'thread.insertImage');
INSERT INTO `group_permission` VALUES (14, 'thread.insertPay');
INSERT INTO `group_permission` VALUES (14, 'thread.insertPosition');
INSERT INTO `group_permission` VALUES (14, 'thread.insertRedPacket');
INSERT INTO `group_permission` VALUES (14, 'thread.insertReward');
INSERT INTO `group_permission` VALUES (14, 'thread.insertVideo');
INSERT INTO `group_permission` VALUES (14, 'thread.insertVote');
INSERT INTO `group_permission` VALUES (14, 'thread.likePosts');
INSERT INTO `group_permission` VALUES (14, 'thread.reply');
INSERT INTO `group_permission` VALUES (14, 'thread.viewAttachment');
INSERT INTO `group_permission` VALUES (14, 'thread.viewPosts');
INSERT INTO `group_permission` VALUES (14, 'thread.viewVideo');
INSERT INTO `group_permission` VALUES (14, 'trade.pay.order');
INSERT INTO `group_permission` VALUES (14, 'user.view');
INSERT INTO `group_permission` VALUES (14, 'userFollow.create');
INSERT INTO `group_permission` VALUES (14, 'viewThreads');
INSERT INTO `group_permission` VALUES (15, 'cash.create');
INSERT INTO `group_permission` VALUES (15, 'createThread');
INSERT INTO `group_permission` VALUES (15, 'dialog.create');
INSERT INTO `group_permission` VALUES (15, 'order.create');
INSERT INTO `group_permission` VALUES (15, 'other.canInviteUserScale');
INSERT INTO `group_permission` VALUES (15, 'switch.createThread');
INSERT INTO `group_permission` VALUES (15, 'switch.thread.edit');
INSERT INTO `group_permission` VALUES (15, 'switch.thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (15, 'switch.thread.essence');
INSERT INTO `group_permission` VALUES (15, 'switch.thread.freeViewPosts');
INSERT INTO `group_permission` VALUES (15, 'switch.thread.hide');
INSERT INTO `group_permission` VALUES (15, 'switch.thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (15, 'switch.thread.hidePosts');
INSERT INTO `group_permission` VALUES (15, 'switch.thread.reply');
INSERT INTO `group_permission` VALUES (15, 'switch.thread.viewPosts');
INSERT INTO `group_permission` VALUES (15, 'switch.viewThreads');
INSERT INTO `group_permission` VALUES (15, 'thread.allowAnonymous');
INSERT INTO `group_permission` VALUES (15, 'thread.downloadAttachment');
INSERT INTO `group_permission` VALUES (15, 'thread.edit');
INSERT INTO `group_permission` VALUES (15, 'thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (15, 'thread.essence');
INSERT INTO `group_permission` VALUES (15, 'thread.favorite');
INSERT INTO `group_permission` VALUES (15, 'thread.freeViewPosts');
INSERT INTO `group_permission` VALUES (15, 'thread.hide');
INSERT INTO `group_permission` VALUES (15, 'thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (15, 'thread.hidePosts');
INSERT INTO `group_permission` VALUES (15, 'thread.insertAttachment');
INSERT INTO `group_permission` VALUES (15, 'thread.insertAudio');
INSERT INTO `group_permission` VALUES (15, 'thread.insertImage');
INSERT INTO `group_permission` VALUES (15, 'thread.insertPay');
INSERT INTO `group_permission` VALUES (15, 'thread.insertPosition');
INSERT INTO `group_permission` VALUES (15, 'thread.insertRedPacket');
INSERT INTO `group_permission` VALUES (15, 'thread.insertReward');
INSERT INTO `group_permission` VALUES (15, 'thread.insertVideo');
INSERT INTO `group_permission` VALUES (15, 'thread.insertVote');
INSERT INTO `group_permission` VALUES (15, 'thread.likePosts');
INSERT INTO `group_permission` VALUES (15, 'thread.reply');
INSERT INTO `group_permission` VALUES (15, 'thread.sticky');
INSERT INTO `group_permission` VALUES (15, 'thread.viewAttachment');
INSERT INTO `group_permission` VALUES (15, 'thread.viewPosts');
INSERT INTO `group_permission` VALUES (15, 'thread.viewVideo');
INSERT INTO `group_permission` VALUES (15, 'trade.pay.order');
INSERT INTO `group_permission` VALUES (15, 'user.view');
INSERT INTO `group_permission` VALUES (15, 'userFollow.create');
INSERT INTO `group_permission` VALUES (15, 'viewThreads');
INSERT INTO `group_permission` VALUES (16, 'cash.create');
INSERT INTO `group_permission` VALUES (16, 'createThread');
INSERT INTO `group_permission` VALUES (16, 'dialog.create');
INSERT INTO `group_permission` VALUES (16, 'order.create');
INSERT INTO `group_permission` VALUES (16, 'other.canInviteUserScale');
INSERT INTO `group_permission` VALUES (16, 'switch.createThread');
INSERT INTO `group_permission` VALUES (16, 'switch.thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (16, 'switch.thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (16, 'switch.thread.reply');
INSERT INTO `group_permission` VALUES (16, 'switch.thread.viewPosts');
INSERT INTO `group_permission` VALUES (16, 'switch.viewThreads');
INSERT INTO `group_permission` VALUES (16, 'thread.allowAnonymous');
INSERT INTO `group_permission` VALUES (16, 'thread.downloadAttachment');
INSERT INTO `group_permission` VALUES (16, 'thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (16, 'thread.favorite');
INSERT INTO `group_permission` VALUES (16, 'thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (16, 'thread.insertAttachment');
INSERT INTO `group_permission` VALUES (16, 'thread.insertAudio');
INSERT INTO `group_permission` VALUES (16, 'thread.insertImage');
INSERT INTO `group_permission` VALUES (16, 'thread.insertPay');
INSERT INTO `group_permission` VALUES (16, 'thread.insertPosition');
INSERT INTO `group_permission` VALUES (16, 'thread.insertRedPacket');
INSERT INTO `group_permission` VALUES (16, 'thread.insertReward');
INSERT INTO `group_permission` VALUES (16, 'thread.insertVideo');
INSERT INTO `group_permission` VALUES (16, 'thread.insertVote');
INSERT INTO `group_permission` VALUES (16, 'thread.likePosts');
INSERT INTO `group_permission` VALUES (16, 'thread.reply');
INSERT INTO `group_permission` VALUES (16, 'thread.viewAttachment');
INSERT INTO `group_permission` VALUES (16, 'thread.viewPosts');
INSERT INTO `group_permission` VALUES (16, 'thread.viewVideo');
INSERT INTO `group_permission` VALUES (16, 'trade.pay.order');
INSERT INTO `group_permission` VALUES (16, 'user.view');
INSERT INTO `group_permission` VALUES (16, 'userFollow.create');
INSERT INTO `group_permission` VALUES (16, 'viewThreads');
INSERT INTO `group_permission` VALUES (17, 'cash.create');
INSERT INTO `group_permission` VALUES (17, 'createThread');
INSERT INTO `group_permission` VALUES (17, 'dialog.create');
INSERT INTO `group_permission` VALUES (17, 'order.create');
INSERT INTO `group_permission` VALUES (17, 'other.canInviteUserScale');
INSERT INTO `group_permission` VALUES (17, 'switch.createThread');
INSERT INTO `group_permission` VALUES (17, 'switch.thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (17, 'switch.thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (17, 'switch.thread.reply');
INSERT INTO `group_permission` VALUES (17, 'switch.thread.viewPosts');
INSERT INTO `group_permission` VALUES (17, 'switch.viewThreads');
INSERT INTO `group_permission` VALUES (17, 'thread.allowAnonymous');
INSERT INTO `group_permission` VALUES (17, 'thread.downloadAttachment');
INSERT INTO `group_permission` VALUES (17, 'thread.editOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (17, 'thread.favorite');
INSERT INTO `group_permission` VALUES (17, 'thread.hideOwnThreadOrPost');
INSERT INTO `group_permission` VALUES (17, 'thread.insertAttachment');
INSERT INTO `group_permission` VALUES (17, 'thread.insertAudio');
INSERT INTO `group_permission` VALUES (17, 'thread.insertImage');
INSERT INTO `group_permission` VALUES (17, 'thread.insertPay');
INSERT INTO `group_permission` VALUES (17, 'thread.insertPosition');
INSERT INTO `group_permission` VALUES (17, 'thread.insertRedPacket');
INSERT INTO `group_permission` VALUES (17, 'thread.insertReward');
INSERT INTO `group_permission` VALUES (17, 'thread.insertVideo');
INSERT INTO `group_permission` VALUES (17, 'thread.insertVote');
INSERT INTO `group_permission` VALUES (17, 'thread.likePosts');
INSERT INTO `group_permission` VALUES (17, 'thread.reply');
INSERT INTO `group_permission` VALUES (17, 'thread.viewAttachment');
INSERT INTO `group_permission` VALUES (17, 'thread.viewPosts');
INSERT INTO `group_permission` VALUES (17, 'thread.viewVideo');
INSERT INTO `group_permission` VALUES (17, 'trade.pay.order');
INSERT INTO `group_permission` VALUES (17, 'user.view');
INSERT INTO `group_permission` VALUES (17, 'userFollow.create');
INSERT INTO `group_permission` VALUES (17, 'viewThreads');

-- ----------------------------
-- Table structure for group_user
-- ----------------------------
DROP TABLE IF EXISTS `group_user`;
CREATE TABLE `group_user`  (
  `group_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户组 id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户 id',
  `expiration_time` datetime NULL DEFAULT NULL COMMENT '用户组到期时间',
  PRIMARY KEY (`group_id`, `user_id`) USING BTREE,
  INDEX `group_user_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `group_user_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `group_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_user
-- ----------------------------
INSERT INTO `group_user` VALUES (1, 1, NULL);
INSERT INTO `group_user` VALUES (1, 2, NULL);
INSERT INTO `group_user` VALUES (10, 4, NULL);
INSERT INTO `group_user` VALUES (10, 5, NULL);
INSERT INTO `group_user` VALUES (10, 6, NULL);
INSERT INTO `group_user` VALUES (10, 7, NULL);
INSERT INTO `group_user` VALUES (10, 8, NULL);
INSERT INTO `group_user` VALUES (10, 9, NULL);
INSERT INTO `group_user` VALUES (10, 10, NULL);
INSERT INTO `group_user` VALUES (10, 11, NULL);
INSERT INTO `group_user` VALUES (10, 12, NULL);
INSERT INTO `group_user` VALUES (10, 13, NULL);
INSERT INTO `group_user` VALUES (10, 14, NULL);
INSERT INTO `group_user` VALUES (10, 15, NULL);
INSERT INTO `group_user` VALUES (10, 16, NULL);
INSERT INTO `group_user` VALUES (10, 17, NULL);
INSERT INTO `group_user` VALUES (10, 18, NULL);
INSERT INTO `group_user` VALUES (10, 19, NULL);
INSERT INTO `group_user` VALUES (10, 20, NULL);
INSERT INTO `group_user` VALUES (10, 21, NULL);
INSERT INTO `group_user` VALUES (10, 22, NULL);
INSERT INTO `group_user` VALUES (10, 23, NULL);
INSERT INTO `group_user` VALUES (10, 24, NULL);
INSERT INTO `group_user` VALUES (10, 25, NULL);
INSERT INTO `group_user` VALUES (10, 26, NULL);
INSERT INTO `group_user` VALUES (10, 27, NULL);
INSERT INTO `group_user` VALUES (10, 28, NULL);
INSERT INTO `group_user` VALUES (10, 29, NULL);
INSERT INTO `group_user` VALUES (10, 30, NULL);
INSERT INTO `group_user` VALUES (10, 31, NULL);
INSERT INTO `group_user` VALUES (10, 32, NULL);
INSERT INTO `group_user` VALUES (10, 33, NULL);
INSERT INTO `group_user` VALUES (10, 34, NULL);
INSERT INTO `group_user` VALUES (10, 35, NULL);
INSERT INTO `group_user` VALUES (10, 36, NULL);
INSERT INTO `group_user` VALUES (10, 37, NULL);
INSERT INTO `group_user` VALUES (10, 38, NULL);
INSERT INTO `group_user` VALUES (10, 39, NULL);
INSERT INTO `group_user` VALUES (10, 40, NULL);
INSERT INTO `group_user` VALUES (10, 41, NULL);
INSERT INTO `group_user` VALUES (10, 42, NULL);
INSERT INTO `group_user` VALUES (10, 43, NULL);
INSERT INTO `group_user` VALUES (10, 44, NULL);
INSERT INTO `group_user` VALUES (10, 45, NULL);
INSERT INTO `group_user` VALUES (10, 46, NULL);
INSERT INTO `group_user` VALUES (10, 47, NULL);
INSERT INTO `group_user` VALUES (10, 48, NULL);
INSERT INTO `group_user` VALUES (10, 49, NULL);
INSERT INTO `group_user` VALUES (10, 50, NULL);
INSERT INTO `group_user` VALUES (10, 51, NULL);
INSERT INTO `group_user` VALUES (10, 52, NULL);
INSERT INTO `group_user` VALUES (10, 53, NULL);
INSERT INTO `group_user` VALUES (10, 54, NULL);
INSERT INTO `group_user` VALUES (10, 55, NULL);
INSERT INTO `group_user` VALUES (10, 56, NULL);
INSERT INTO `group_user` VALUES (10, 57, NULL);
INSERT INTO `group_user` VALUES (10, 58, NULL);
INSERT INTO `group_user` VALUES (10, 59, NULL);
INSERT INTO `group_user` VALUES (10, 60, NULL);
INSERT INTO `group_user` VALUES (10, 61, NULL);
INSERT INTO `group_user` VALUES (10, 62, NULL);
INSERT INTO `group_user` VALUES (10, 63, NULL);
INSERT INTO `group_user` VALUES (10, 64, NULL);
INSERT INTO `group_user` VALUES (10, 65, NULL);
INSERT INTO `group_user` VALUES (10, 66, NULL);
INSERT INTO `group_user` VALUES (10, 67, NULL);
INSERT INTO `group_user` VALUES (10, 68, NULL);
INSERT INTO `group_user` VALUES (10, 69, NULL);
INSERT INTO `group_user` VALUES (10, 70, NULL);
INSERT INTO `group_user` VALUES (10, 71, NULL);
INSERT INTO `group_user` VALUES (10, 72, NULL);
INSERT INTO `group_user` VALUES (10, 73, NULL);
INSERT INTO `group_user` VALUES (10, 74, NULL);
INSERT INTO `group_user` VALUES (10, 75, NULL);
INSERT INTO `group_user` VALUES (10, 76, NULL);
INSERT INTO `group_user` VALUES (10, 77, NULL);
INSERT INTO `group_user` VALUES (10, 78, NULL);
INSERT INTO `group_user` VALUES (10, 79, NULL);
INSERT INTO `group_user` VALUES (10, 80, NULL);
INSERT INTO `group_user` VALUES (10, 81, NULL);
INSERT INTO `group_user` VALUES (10, 82, NULL);
INSERT INTO `group_user` VALUES (10, 83, NULL);
INSERT INTO `group_user` VALUES (10, 84, NULL);
INSERT INTO `group_user` VALUES (10, 85, NULL);
INSERT INTO `group_user` VALUES (10, 86, NULL);
INSERT INTO `group_user` VALUES (10, 87, NULL);
INSERT INTO `group_user` VALUES (10, 88, NULL);
INSERT INTO `group_user` VALUES (10, 89, NULL);
INSERT INTO `group_user` VALUES (10, 90, NULL);
INSERT INTO `group_user` VALUES (10, 91, NULL);
INSERT INTO `group_user` VALUES (10, 92, NULL);
INSERT INTO `group_user` VALUES (10, 93, NULL);
INSERT INTO `group_user` VALUES (10, 94, NULL);
INSERT INTO `group_user` VALUES (10, 95, NULL);
INSERT INTO `group_user` VALUES (10, 96, NULL);
INSERT INTO `group_user` VALUES (10, 97, NULL);
INSERT INTO `group_user` VALUES (10, 98, NULL);
INSERT INTO `group_user` VALUES (10, 99, NULL);
INSERT INTO `group_user` VALUES (10, 100, NULL);
INSERT INTO `group_user` VALUES (10, 101, NULL);
INSERT INTO `group_user` VALUES (10, 102, NULL);
INSERT INTO `group_user` VALUES (10, 103, NULL);
INSERT INTO `group_user` VALUES (10, 104, NULL);
INSERT INTO `group_user` VALUES (10, 105, NULL);
INSERT INTO `group_user` VALUES (10, 106, NULL);
INSERT INTO `group_user` VALUES (10, 107, NULL);
INSERT INTO `group_user` VALUES (10, 108, NULL);
INSERT INTO `group_user` VALUES (10, 109, NULL);
INSERT INTO `group_user` VALUES (10, 110, NULL);
INSERT INTO `group_user` VALUES (10, 111, NULL);
INSERT INTO `group_user` VALUES (10, 112, NULL);
INSERT INTO `group_user` VALUES (10, 113, NULL);
INSERT INTO `group_user` VALUES (10, 114, NULL);
INSERT INTO `group_user` VALUES (10, 115, NULL);
INSERT INTO `group_user` VALUES (10, 116, NULL);
INSERT INTO `group_user` VALUES (10, 117, NULL);
INSERT INTO `group_user` VALUES (10, 118, NULL);
INSERT INTO `group_user` VALUES (10, 119, NULL);
INSERT INTO `group_user` VALUES (10, 120, NULL);
INSERT INTO `group_user` VALUES (10, 121, NULL);
INSERT INTO `group_user` VALUES (10, 122, NULL);
INSERT INTO `group_user` VALUES (10, 123, NULL);
INSERT INTO `group_user` VALUES (10, 124, NULL);
INSERT INTO `group_user` VALUES (10, 125, NULL);
INSERT INTO `group_user` VALUES (10, 126, NULL);
INSERT INTO `group_user` VALUES (10, 127, NULL);
INSERT INTO `group_user` VALUES (10, 128, NULL);
INSERT INTO `group_user` VALUES (10, 129, NULL);
INSERT INTO `group_user` VALUES (10, 130, NULL);
INSERT INTO `group_user` VALUES (10, 131, NULL);
INSERT INTO `group_user` VALUES (10, 132, NULL);
INSERT INTO `group_user` VALUES (10, 133, NULL);
INSERT INTO `group_user` VALUES (10, 134, NULL);
INSERT INTO `group_user` VALUES (10, 135, NULL);
INSERT INTO `group_user` VALUES (10, 136, NULL);
INSERT INTO `group_user` VALUES (10, 137, NULL);
INSERT INTO `group_user` VALUES (10, 138, NULL);
INSERT INTO `group_user` VALUES (10, 139, NULL);
INSERT INTO `group_user` VALUES (10, 140, NULL);
INSERT INTO `group_user` VALUES (10, 141, NULL);
INSERT INTO `group_user` VALUES (10, 142, NULL);
INSERT INTO `group_user` VALUES (10, 143, NULL);
INSERT INTO `group_user` VALUES (17, 3, '2022-02-20 21:27:11');

-- ----------------------------
-- Table structure for group_user_mqs
-- ----------------------------
DROP TABLE IF EXISTS `group_user_mqs`;
CREATE TABLE `group_user_mqs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户组id',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `remain_days` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '剩余天数',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_user_mqs
-- ----------------------------
INSERT INTO `group_user_mqs` VALUES (1, 16, 3, 2, '2022-01-20 21:27:11', '2022-01-20 21:27:11');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户组 id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户组名称',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型',
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '颜色',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'icon',
  `default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否默认',
  `is_display` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否显示在用户名后',
  `is_paid` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否收费：0不收费，1收费',
  `fee` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '收费金额',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '付费用户组等级',
  `days` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '付费获得天数',
  `scale` double(3, 1) NOT NULL DEFAULT 0.0 COMMENT '分成比例',
  `is_subordinate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否可以 推广下线',
  `is_commission` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否可以 收入提成',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '特权描述',
  `notice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '须知',
  `time_range` int(11) NOT NULL DEFAULT 0 COMMENT '访问的时间范围(天)',
  `content_range` int(11) NOT NULL DEFAULT 0 COMMENT '访问的内容范围(天)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, '管理员', '', '', '', 0, 0, 0, 0.00, 0, 0, 0.0, 0, 0, '', '', 0, 0);
INSERT INTO `groups` VALUES (6, '待付费', '', '', '', 0, 0, 0, 0.00, 0, 0, 0.0, 0, 0, '', '', 0, 0);
INSERT INTO `groups` VALUES (7, '游客', '', '', '', 0, 0, 0, 0.00, 0, 0, 0.0, 0, 0, '', '', 0, 0);
INSERT INTO `groups` VALUES (8, '免费体验', '', '', '', 0, 0, 0, 0.00, 0, 0, 0.0, 0, 0, '', '', 3, 30);
INSERT INTO `groups` VALUES (10, '普通用户', '', '', '', 1, 1, 0, 0.00, 0, 0, 0.0, 1, 0, '', '', 0, 0);
INSERT INTO `groups` VALUES (12, '资深用户', 'groups', '', '', 0, 1, 0, 0.00, 0, 0, 1.0, 1, 0, '', '', 0, 0);
INSERT INTO `groups` VALUES (13, '普通订阅', 'groups', '', '', 0, 1, 1, 500.00, 2, 31, 5.0, 1, 0, '更高的裂变推广,少量插件', '购买金额将用于升级您所在的用户组。\n如果购买多次同一用户组，有效期将累加。\n如果购买不同用户组，则新购买的用户组权限立即生效，在此之前的用户组有效期将叠加计算。\n付费站点中，如果您的站点有效期低于付费用户组有效期，则以付费用户组有效期为准。', 0, 0);
INSERT INTO `groups` VALUES (14, '高级订阅', 'groups', '', '', 0, 1, 1, 5000.00, 4, 31, 9.0, 1, 0, '更高的裂变推广,全部插件', '购买金额将用于升级您所在的用户组。\n如果购买多次同一用户组，有效期将累加。\n如果购买不同用户组，则新购买的用户组权限立即生效，在此之前的用户组有效期将叠加计算。\n付费站点中，如果您的站点有效期低于付费用户组有效期，则以付费用户组有效期为准。', 0, 0);
INSERT INTO `groups` VALUES (15, '黑金订阅', 'groups', '', '', 0, 1, 1, 10000.00, 5, 31, 10.0, 1, 0, '后台特权', '购买金额将用于升级您所在的用户组。\n如果购买多次同一用户组，有效期将累加。\n如果购买不同用户组，则新购买的用户组权限立即生效，在此之前的用户组有效期将叠加计算。\n付费站点中，如果您的站点有效期低于付费用户组有效期，则以付费用户组有效期为准。', 0, 0);
INSERT INTO `groups` VALUES (16, '基本订阅', 'groups', '', '', 0, 1, 1, 50.00, 1, 31, 3.0, 1, 0, '更高的裂变推广', '购买金额将用于升级您所在的用户组。\n如果购买多次同一用户组，有效期将累加。\n如果购买不同用户组，则新购买的用户组权限立即生效，在此之前的用户组有效期将叠加计算。\n付费站点中，如果您的站点有效期低于付费用户组有效期，则以付费用户组有效期为准。', 0, 0);
INSERT INTO `groups` VALUES (17, '标准订阅', 'groups', '', '', 0, 1, 1, 3000.00, 3, 31, 0.0, 0, 0, '更高的裂变推广,更多插件', '购买金额将用于升级您所在的用户组。\n如果购买多次同一用户组，有效期将累加。\n如果购买不同用户组，则新购买的用户组权限立即生效，在此之前的用户组有效期将叠加计算。\n付费站点中，如果您的站点有效期低于付费用户组有效期，则以付费用户组有效期为准。', 0, 0);

-- ----------------------------
-- Table structure for invite_users
-- ----------------------------
DROP TABLE IF EXISTS `invite_users`;
CREATE TABLE `invite_users`  (
  `invite_id` int(10) UNSIGNED NOT NULL COMMENT '邀请码id',
  `code` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邀请码',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '邀请用户 id',
  `to_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被邀请用户 id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of invite_users
-- ----------------------------

-- ----------------------------
-- Table structure for invites
-- ----------------------------
DROP TABLE IF EXISTS `invites`;
CREATE TABLE `invites`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '邀请 id',
  `group_id` bigint(20) UNSIGNED NOT NULL COMMENT '默认用户组 id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型:1普通用户2管理员',
  `code` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邀请码',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '邀请码生效时间',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '邀请码结束时间',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '邀请用户 id',
  `to_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被邀请用户 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '邀请码状态:0失效1未使用2已使用3已过期',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_code`(`code`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of invites
-- ----------------------------
INSERT INTO `invites` VALUES (1, 10, 1, 'eRLgUCxbqTScryETr0mMxnsnv7Wc4rVL', 1627746100, 1628350900, 1, 0, 3, '2021-07-31 23:41:40', '2022-01-04 02:41:02');
INSERT INTO `invites` VALUES (2, 1, 1, 'wWsRmiBUt5gTdf51vvj2faigjIfRlyO0', 1627746803, 1628351603, 1, 0, 3, '2021-07-31 23:53:23', '2022-01-04 02:41:02');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 169 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2020_01_01_000001_create_users', 1);
INSERT INTO `migrations` VALUES (2, '2020_01_01_000002_create_groups', 1);
INSERT INTO `migrations` VALUES (3, '2020_01_01_000003_create_group_permission', 1);
INSERT INTO `migrations` VALUES (4, '2020_01_01_000004_create_group_user', 1);
INSERT INTO `migrations` VALUES (5, '2020_01_01_000005_create_categories', 1);
INSERT INTO `migrations` VALUES (6, '2020_01_01_000006_create_threads', 1);
INSERT INTO `migrations` VALUES (7, '2020_01_01_000007_create_posts', 1);
INSERT INTO `migrations` VALUES (8, '2020_01_01_000008_create_thread_user', 1);
INSERT INTO `migrations` VALUES (9, '2020_01_01_000009_create_post_user', 1);
INSERT INTO `migrations` VALUES (10, '2020_01_01_000010_create_post_mod', 1);
INSERT INTO `migrations` VALUES (11, '2020_01_01_000011_create_attachments', 1);
INSERT INTO `migrations` VALUES (12, '2020_01_01_000012_create_stop_words', 1);
INSERT INTO `migrations` VALUES (13, '2020_01_01_000013_create_operation_log', 1);
INSERT INTO `migrations` VALUES (14, '2020_01_01_000014_create_orders', 1);
INSERT INTO `migrations` VALUES (15, '2020_01_01_000015_create_pay_notify', 1);
INSERT INTO `migrations` VALUES (16, '2020_01_01_000016_create_user_wechats', 1);
INSERT INTO `migrations` VALUES (17, '2020_01_01_000017_create_user_wallets', 1);
INSERT INTO `migrations` VALUES (18, '2020_01_01_000018_create_user_wallet_cash', 1);
INSERT INTO `migrations` VALUES (19, '2020_01_01_000019_create_user_wallet_logs', 1);
INSERT INTO `migrations` VALUES (20, '2020_01_01_000020_create_user_login_fail_log', 1);
INSERT INTO `migrations` VALUES (21, '2020_01_01_000021_create_emoji', 1);
INSERT INTO `migrations` VALUES (22, '2020_01_01_000022_create_invites', 1);
INSERT INTO `migrations` VALUES (23, '2020_01_01_000023_create_mobile_codes', 1);
INSERT INTO `migrations` VALUES (24, '2020_01_01_000024_create_notifications', 1);
INSERT INTO `migrations` VALUES (25, '2020_01_01_000025_create_settings', 1);
INSERT INTO `migrations` VALUES (26, '2020_01_01_000026_create_user_follow', 1);
INSERT INTO `migrations` VALUES (27, '2020_01_01_000027_create_finance', 1);
INSERT INTO `migrations` VALUES (28, '2020_01_01_000028_create_dialog', 1);
INSERT INTO `migrations` VALUES (29, '2020_01_01_000029_create_dialog_message', 1);
INSERT INTO `migrations` VALUES (30, '2020_01_01_000030_create_notification_tpls', 1);
INSERT INTO `migrations` VALUES (31, '2020_01_01_000031_create_session_tokens', 1);
INSERT INTO `migrations` VALUES (32, '2020_01_01_000032_create_thread_video', 1);
INSERT INTO `migrations` VALUES (33, '2020_03_20_104938_add_order_to_attachments', 1);
INSERT INTO `migrations` VALUES (34, '2020_03_24_183227_create_user_wallet_fail_logs', 1);
INSERT INTO `migrations` VALUES (35, '2020_03_28_012029_alter_users', 1);
INSERT INTO `migrations` VALUES (36, '2020_04_14_101710_add_is_anonymous_to_orders', 1);
INSERT INTO `migrations` VALUES (37, '2020_04_14_104730_update_users_table', 1);
INSERT INTO `migrations` VALUES (38, '2020_04_14_174156_add_liked_count_to_users', 1);
INSERT INTO `migrations` VALUES (39, '2020_04_16_134237_create_post_mentions_user', 1);
INSERT INTO `migrations` VALUES (40, '2020_04_16_162908_add_free_words_to_threads', 1);
INSERT INTO `migrations` VALUES (41, '2020_04_17_152036_add_paid_count_to_threads', 1);
INSERT INTO `migrations` VALUES (42, '2020_04_20_185606_add_read_at_to_dialog', 1);
INSERT INTO `migrations` VALUES (43, '2020_04_23_143614_add_is_display_to_groups', 1);
INSERT INTO `migrations` VALUES (44, '2020_04_23_154946_create_topics', 1);
INSERT INTO `migrations` VALUES (45, '2020_04_23_155120_create_thread_topic', 1);
INSERT INTO `migrations` VALUES (46, '2020_04_26_111725_create_reports', 1);
INSERT INTO `migrations` VALUES (47, '2020_04_26_142056_create_deny_users', 1);
INSERT INTO `migrations` VALUES (48, '2020_04_30_150256_rename_operation_log_to_user_action_logs', 1);
INSERT INTO `migrations` VALUES (49, '2020_04_30_153136_create_operation_logs', 1);
INSERT INTO `migrations` VALUES (50, '2020_05_07_174510_add_location_to_posts', 1);
INSERT INTO `migrations` VALUES (51, '2020_05_08_172741_create_post_goods', 1);
INSERT INTO `migrations` VALUES (52, '2020_05_11_164733_create_group_paid_users', 1);
INSERT INTO `migrations` VALUES (53, '2020_05_11_164907_alter_add_expiration_time_to_groups', 1);
INSERT INTO `migrations` VALUES (54, '2020_05_11_165014_alter_add_groups_paid_mod', 1);
INSERT INTO `migrations` VALUES (55, '2020_05_11_165120_alter_add_group_id_to_orders', 1);
INSERT INTO `migrations` VALUES (56, '2020_05_11_175730_change_thread_video_columns', 1);
INSERT INTO `migrations` VALUES (57, '2020_05_21_191500_alter_user_wechats', 1);
INSERT INTO `migrations` VALUES (58, '2020_06_01_114859_alter_type_to_attachments', 1);
INSERT INTO `migrations` VALUES (59, '2020_06_01_172353_alter_attachment_to_dialog_message', 1);
INSERT INTO `migrations` VALUES (60, '2020_06_03_170416_alter_add_port_to_users', 1);
INSERT INTO `migrations` VALUES (61, '2020_06_03_170507_alter_add_port_to_posts', 1);
INSERT INTO `migrations` VALUES (62, '2020_06_08_155901_create_user_qq', 1);
INSERT INTO `migrations` VALUES (63, '2020_06_08_155901_create_user_qy_wechats', 1);
INSERT INTO `migrations` VALUES (64, '2020_06_10_105230_alter_add_foreign_key_to_user_follow', 1);
INSERT INTO `migrations` VALUES (65, '2020_06_10_115509_alter_bigint_to_all', 1);
INSERT INTO `migrations` VALUES (66, '2020_06_10_190229_alter_foreign_key_to_user_wechats', 1);
INSERT INTO `migrations` VALUES (67, '2020_06_12_185624_create_wechat_offiaccount_replies', 1);
INSERT INTO `migrations` VALUES (68, '2020_06_16_161128_change_threads_free_words_column_length', 1);
INSERT INTO `migrations` VALUES (69, '2020_06_23_170151_change_wechat_offiaccount_replies_column', 1);
INSERT INTO `migrations` VALUES (70, '2020_07_01_143404_change_user_wchats_user_id_to_null', 1);
INSERT INTO `migrations` VALUES (71, '2020_07_03_171957_change_timestamps_to_datetime', 1);
INSERT INTO `migrations` VALUES (72, '2020_07_15_183427_add_posts_reply_post_id_index', 1);
INSERT INTO `migrations` VALUES (73, '2020_07_22_180923_add_duration_to_thread_video', 1);
INSERT INTO `migrations` VALUES (74, '2020_07_24_145712_add_expired_at_to_orders', 1);
INSERT INTO `migrations` VALUES (75, '2020_08_03_183433_change_scale_to_groups', 1);
INSERT INTO `migrations` VALUES (76, '2020_08_04_154120_create_user_distributions', 1);
INSERT INTO `migrations` VALUES (77, '2020_08_05_114608_add_category_id_index_to_threads', 1);
INSERT INTO `migrations` VALUES (78, '2020_08_05_233234_add_be_scale_to_orders', 1);
INSERT INTO `migrations` VALUES (79, '2020_08_07_174108_add_code_unique_to_invites', 1);
INSERT INTO `migrations` VALUES (80, '2020_08_12_142541_create_user_ucenters', 1);
INSERT INTO `migrations` VALUES (81, '2020_08_12_161140_alert_add_recommended_to_topics', 1);
INSERT INTO `migrations` VALUES (82, '2020_08_12_161154_alert_add_recommended_at_to_topics', 1);
INSERT INTO `migrations` VALUES (83, '2020_08_17_111947_add_location_to_threads', 1);
INSERT INTO `migrations` VALUES (84, '2020_08_20_104455_add_is_subordinate_is_commission_to_groups', 1);
INSERT INTO `migrations` VALUES (85, '2020_08_26_181122_add_address_to_threads', 1);
INSERT INTO `migrations` VALUES (86, '2020_09_03_153645_add_moderators_to_categories', 1);
INSERT INTO `migrations` VALUES (87, '2020_09_04_152844_create_questions', 1);
INSERT INTO `migrations` VALUES (88, '2020_09_05_122736_add_question_id_to_user_wallet_logs', 1);
INSERT INTO `migrations` VALUES (89, '2020_09_08_111818_add_cash_type_to_user_wallet_cash', 1);
INSERT INTO `migrations` VALUES (90, '2020_09_09_184716_add_third_party_to_orders', 1);
INSERT INTO `migrations` VALUES (91, '2020_09_09_203924_add_foreign_keys_to_group_permission', 1);
INSERT INTO `migrations` VALUES (92, '2020_09_14_150620_add_is_site_to_threads', 1);
INSERT INTO `migrations` VALUES (93, '2020_09_21_184613_add_attachment_price_to_threads', 1);
INSERT INTO `migrations` VALUES (94, '2020_09_25_164242_add_delete_at_to_dialog', 1);
INSERT INTO `migrations` VALUES (95, '2020_09_27_175432_add_index_to_dialog_message', 1);
INSERT INTO `migrations` VALUES (96, '2020_09_27_184315_add_question_count_to_users', 1);
INSERT INTO `migrations` VALUES (97, '2020_10_12_160100_add_answered_at_to_questions', 1);
INSERT INTO `migrations` VALUES (98, '2020_10_13_190715_change_is_anonymous', 1);
INSERT INTO `migrations` VALUES (99, '2020_10_21_152510_add_signature_and_dialog_to_stop_words', 1);
INSERT INTO `migrations` VALUES (100, '2020_10_26_135924_add_is_display_to_threads', 1);
INSERT INTO `migrations` VALUES (101, '2020_10_26_141128_alter_thread_add_free_percent', 1);
INSERT INTO `migrations` VALUES (102, '2020_11_10_192530_add_some_index_to_user_wechats', 1);
INSERT INTO `migrations` VALUES (103, '2020_11_11_105024_change_price_to_post_goods', 1);
INSERT INTO `migrations` VALUES (104, '2020_12_01_141226_create_admin_sign_in_fields', 1);
INSERT INTO `migrations` VALUES (105, '2020_12_01_141450_create_user_sign_in_fields', 1);
INSERT INTO `migrations` VALUES (106, '2020_12_15_174414_add_comment_ids_to_posts', 1);
INSERT INTO `migrations` VALUES (107, '2021_01_05_152234_add_reject_reason_to_users', 1);
INSERT INTO `migrations` VALUES (108, '2021_01_16_141011_create_admin_action_logs', 1);
INSERT INTO `migrations` VALUES (109, '2021_01_16_171411_add_parentid_to_categories', 1);
INSERT INTO `migrations` VALUES (110, '2021_01_16_173911_add_post_id_to_orders', 1);
INSERT INTO `migrations` VALUES (111, '2021_01_16_174311_create_sequences', 1);
INSERT INTO `migrations` VALUES (112, '2021_01_16_174811_add_is_red_packet_is_draft_to_threads', 1);
INSERT INTO `migrations` VALUES (113, '2021_01_16_175811_create_thread_red_packets', 1);
INSERT INTO `migrations` VALUES (114, '2021_01_16_182011_create_thread_rewards', 1);
INSERT INTO `migrations` VALUES (115, '2021_01_16_183511_add_thread_id_post_id_to_user_wallet_logs', 1);
INSERT INTO `migrations` VALUES (116, '2021_01_21_104847_add_data_to_notification_tpls', 1);
INSERT INTO `migrations` VALUES (117, '2021_01_27_000001_alter_bind_type_to_users', 1);
INSERT INTO `migrations` VALUES (118, '2021_02_03_173216_add_notice_id_to_notification_tpls', 1);
INSERT INTO `migrations` VALUES (119, '2021_02_25_110000_alter_content_to_posts', 1);
INSERT INTO `migrations` VALUES (120, '2021_03_15_210352_add_posted_at_to_threads', 1);
INSERT INTO `migrations` VALUES (121, '2021_03_19_103811_add_error_to_notification_tpls', 1);
INSERT INTO `migrations` VALUES (122, '2021_03_31_000001_create_miniprogram_scheme_manage', 1);
INSERT INTO `migrations` VALUES (123, '2021_03_31_001501_alter_nickname_to_users', 1);
INSERT INTO `migrations` VALUES (124, '2021_04_07_142710_create_thread_tom', 1);
INSERT INTO `migrations` VALUES (125, '2021_04_15_001501_alter_nickname_to_stop_words', 1);
INSERT INTO `migrations` VALUES (126, '2021_04_16_153632_create_thread_tag', 1);
INSERT INTO `migrations` VALUES (127, '2021_04_16_153727_add_share_count_to_threads', 1);
INSERT INTO `migrations` VALUES (128, '2021_04_17_103345_add_refund_to_orders', 1);
INSERT INTO `migrations` VALUES (129, '2021_04_17_103356_create_order_children', 1);
INSERT INTO `migrations` VALUES (130, '2021_04_26_173510_add_back_image_to_users', 1);
INSERT INTO `migrations` VALUES (131, '2021_05_11_175029_alter_read_status_to_dialog_message', 1);
INSERT INTO `migrations` VALUES (132, '2021_05_14_175029_create_attachments_share', 1);
INSERT INTO `migrations` VALUES (133, '2021_05_17_092200_create_username_change', 1);
INSERT INTO `migrations` VALUES (134, '2021_06_18_200700_add_file_height_file_width_to_attachments', 1);
INSERT INTO `migrations` VALUES (135, '2021_06_24_202106_add_status_to_dialog_message', 1);
INSERT INTO `migrations` VALUES (136, '2021_07_02_202107_alter_sequences', 1);
INSERT INTO `migrations` VALUES (137, '2021_08_02_153832_create_thread_vote_table', 2);
INSERT INTO `migrations` VALUES (138, '2021_08_02_154729_create_thread_vote_subitems_table', 2);
INSERT INTO `migrations` VALUES (139, '2021_08_02_155026_create_thread_vote_users_table', 2);
INSERT INTO `migrations` VALUES (140, '2021_08_17_000001_change_nickname_index', 2);
INSERT INTO `migrations` VALUES (141, '2021_08_18_180945_add_source_to_threads', 3);
INSERT INTO `migrations` VALUES (142, '2021_08_18_181532_create_thread_user_view_records', 3);
INSERT INTO `migrations` VALUES (143, '2021_09_01_154238_create_site_info_daily_table', 4);
INSERT INTO `migrations` VALUES (144, '2021_08_31_141920_create_thread_sticks', 5);
INSERT INTO `migrations` VALUES (145, '2021_09_09_143017_add_three_terminal_start_to_site_table', 6);
INSERT INTO `migrations` VALUES (146, '2021_09_06_154239_add_issue_at_to_threads', 7);
INSERT INTO `migrations` VALUES (147, '2021_09_08_202007_create_plugin_settings', 8);
INSERT INTO `migrations` VALUES (148, '2021_09_08_202024_create_plugin_group_permission', 8);
INSERT INTO `migrations` VALUES (149, '2021_09_09_173237_alter_thread_tom', 8);
INSERT INTO `migrations` VALUES (150, '2021_09_10_112512_create_plugin_activity_thread_activity', 8);
INSERT INTO `migrations` VALUES (151, '2021_09_10_130011_create_plugin_activity_user', 8);
INSERT INTO `migrations` VALUES (152, '2021_09_14_184615_add_is_downloaded_to_share', 8);
INSERT INTO `migrations` VALUES (153, '2021_09_16_145205_add_level_to_groups_table', 9);
INSERT INTO `migrations` VALUES (154, '2021_09_16_151415_create_group_user_mqs_table', 9);
INSERT INTO `migrations` VALUES (155, '2021_09_22_125749_add_describe_to_groups', 9);
INSERT INTO `migrations` VALUES (156, '2021_10_20_091120_create_thread_stick_sort_table', 10);
INSERT INTO `migrations` VALUES (157, '2021_10_08_141951_create_notification_timing', 11);
INSERT INTO `migrations` VALUES (158, '2021_10_08_143054_add_fields_to_notification_tpls', 11);
INSERT INTO `migrations` VALUES (159, '2021_10_20_201759_create_plugin_shop_wxshop_products', 11);
INSERT INTO `migrations` VALUES (160, '2021_10_21_114753_add_additional_info_to_activity', 11);
INSERT INTO `migrations` VALUES (161, '2021_10_22_113435_alert_public_value_to_plugin_settings', 11);
INSERT INTO `migrations` VALUES (162, '2021_10_25_102640_add_additional_info_to_plugin_activity_user', 11);
INSERT INTO `migrations` VALUES (163, '2021_10_25_191556_add_receive_account_to_user_wallet_cash', 11);
INSERT INTO `migrations` VALUES (164, '2021_11_03_111533_add_type_to_admin_action_logs', 11);
INSERT INTO `migrations` VALUES (165, '2021_11_03_164934_add_price_type_to_thread_tom_table', 12);
INSERT INTO `migrations` VALUES (166, '2021_11_28_155723_add_fields_to_groups', 13);
INSERT INTO `migrations` VALUES (167, '2021_11_30_153751_create_invite_users', 13);
INSERT INTO `migrations` VALUES (168, '2022_01_10_105925_add_user_subitem_id_to_thread_vote_users_table', 14);

-- ----------------------------
-- Table structure for miniprogram_scheme_manage
-- ----------------------------
DROP TABLE IF EXISTS `miniprogram_scheme_manage`;
CREATE TABLE `miniprogram_scheme_manage`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mini_app_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '小程序appid',
  `scheme` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '小程序全局scheme',
  `expired_at` int(11) NOT NULL COMMENT '过期时间',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of miniprogram_scheme_manage
-- ----------------------------

-- ----------------------------
-- Table structure for mobile_codes
-- ----------------------------
DROP TABLE IF EXISTS `mobile_codes`;
CREATE TABLE `mobile_codes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '验证码 id',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '验证类型',
  `state` tinyint(4) NOT NULL DEFAULT 0 COMMENT '验证状态',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'ip',
  `expired_at` datetime NULL DEFAULT NULL COMMENT '验证码过期时间',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mobile_codes
-- ----------------------------

-- ----------------------------
-- Table structure for notification_timing
-- ----------------------------
DROP TABLE IF EXISTS `notification_timing`;
CREATE TABLE `notification_timing`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `notice_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模板唯一标识ID',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '接收通知的用户id',
  `number` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '通知条数',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '通知数据',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `expired_at` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notification_timing
-- ----------------------------

-- ----------------------------
-- Table structure for notification_tpls
-- ----------------------------
DROP TABLE IF EXISTS `notification_tpls`;
CREATE TABLE `notification_tpls`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notice_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '模板唯一标识ID',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '模板状态:1开启0关闭',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '通知类型:0系统1微信2短信',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型名称',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `vars` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '可选的变量',
  `template_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '模板ID',
  `first_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'first.DATA',
  `keywords_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT 'keywords.DATA',
  `remark_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'remark.DATA',
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'data color',
  `redirect_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '跳转类型：0无跳转 1跳转H5 2跳转小程序',
  `redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '跳转地址',
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '跳转路由',
  `is_error` tinyint(4) NOT NULL DEFAULT 0 COMMENT '模板是否配置错误',
  `error_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '错误信息',
  `push_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '消息推送类型(0:即时推送,1:间隔推送)',
  `delay_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '间隔推送延迟时间(秒)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_notice_id`(`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notification_tpls
-- ----------------------------
INSERT INTO `notification_tpls` VALUES (1, 'system.registered.passed', 1, 0, '新用户注册通知', '欢迎加入{sitename}', '{username}您好，您已经成为{sitename} 的{groupname} ，请您在发表言论时，遵守本论坛的用户协议，祝您在这里玩的开心哟~', 'a:4:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";s:10:\"{sitename}\";s:12:\"站点名称\";s:11:\"{groupname}\";s:9:\"用户组\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (2, 'system.registered.approved', 1, 0, '注册审核通过通知', '注册审核通知', '{username}你好，你的注册申请已审核通过。', 'a:2:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (3, 'system.registered.unapproved', 1, 0, '注册审核不通过通知', '注册审核通知', '{username}你好，你的注册申请审核不通过，原因：{reason}', 'a:3:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";s:8:\"{reason}\";s:6:\"原因\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (4, 'system.post.unapproved', 1, 0, '内容审核不通过通知', '内容审核通知', '{username}您好，您发布的 \"{content}\" 不符合标准，且不可发布。原因：{reason}', 'a:4:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";s:9:\"{content}\";s:6:\"内容\";s:8:\"{reason}\";s:6:\"原因\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (5, 'system.post.approved', 1, 0, '内容审核通过通知', '内容审核通知', '{username}您好，您发布的 \"{content}\" 通过审核，希望您早日成为精品作者。', 'a:3:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";s:9:\"{content}\";s:6:\"内容\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (6, 'system.post.deleted', 1, 0, '内容删除通知', '内容通知', '{username}您好，您发布的 \"{content} \" 已被下架，原因：{reason}', 'a:4:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";s:9:\"{content}\";s:6:\"内容\";s:8:\"{reason}\";s:6:\"原因\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (7, 'system.post.essence', 1, 0, '内容精华通知', '内容通知', '{username}您好，您发布的 \"{content}\" 已被设为精品帖，您已向精品作者进发。', 'a:3:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";s:9:\"{content}\";s:6:\"内容\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (8, 'system.post.sticky', 1, 0, '内容置顶通知', '内容通知', '{username}你好，你发布的内容 \"{content}\" 已置顶', 'a:3:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";s:9:\"{content}\";s:6:\"内容\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (9, 'system.post.update', 1, 0, '内容修改通知', '内容通知', '{username}你好，你发布的内容 \"{content}\" 已被修改', 'a:3:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";s:9:\"{content}\";s:6:\"内容\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (10, 'system.user.disable', 1, 0, '用户禁用通知', '用户通知', '{username}你好，你的帐号已禁用，原因：{reason}', 'a:3:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";s:8:\"{reason}\";s:6:\"原因\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (11, 'system.user.normal', 1, 0, '用户解除禁用通知', '用户通知', '{username}你好，你的帐号已解除禁用', 'a:2:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (12, 'system.user.group', 1, 0, '用户角色调整通知', '角色通知', '{username}你好，你的角色由{oldgroupname}变更为{newgroupname}', 'a:4:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{nickname}\";s:6:\"昵称\";s:14:\"{oldgroupname}\";s:12:\"老用户组\";s:14:\"{newgroupname}\";s:12:\"新用户组\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (13, 'system.post.replied', 1, 0, '内容回复通知', '内容通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (14, 'system.post.liked', 1, 0, '内容点赞通知', '内容通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (15, 'system.post.paid', 1, 0, '内容支付通知', '内容通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (16, 'system.post.reminded', 1, 0, '内容@通知', '内容通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (17, 'system.withdraw.noticed', 1, 0, '提现通知', '财务通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (18, 'system.withdraw.withdraw', 1, 0, '提现失败通知', '财务通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (19, 'system.divide.income', 1, 0, '分成收入通知', '内容通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (20, 'system.question.asked', 1, 0, '问答提问通知', '问答通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (21, 'system.question.answered', 1, 0, '问答回答通知', '问答通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (22, 'system.question.expired', 1, 0, '问答过期通知', '内容通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (23, 'system.red_packet.gotten', 1, 0, '得到红包通知', '红包通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (24, 'system.question.rewarded', 1, 0, '悬赏问答通知', '悬赏通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (25, 'system.question.rewarded.expired', 1, 0, '悬赏过期通知', '悬赏通知', '', '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (26, 'wechat.registered.passed', 0, 1, '新用户注册通知', '微信注册通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/home/index', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (27, 'wechat.registered.approved', 0, 1, '注册审核通过通知', '微信注册审核通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/home/index', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (28, 'wechat.registered.unapproved', 0, 1, '注册审核不通过通知', '微信注册审核通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/home/index', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (29, 'wechat.post.approved', 0, 1, '内容审核通过通知', '微信内容审核通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (30, 'wechat.post.unapproved', 0, 1, '内容审核不通过通知', '微信内容审核通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (31, 'wechat.post.deleted', 0, 1, '内容删除通知', '微信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/home/index', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (32, 'wechat.post.essence', 0, 1, '内容精华通知', '微信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (33, 'wechat.post.sticky', 0, 1, '内容置顶通知', '微信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (34, 'wechat.post.update', 0, 1, '内容修改通知', '微信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (35, 'wechat.user.disable', 0, 1, '用户禁用通知', '微信用户通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=系统通知&type=system', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (36, 'wechat.user.normal', 0, 1, '用户解除禁用通知', '微信用户通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=系统通知&type=system', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (37, 'wechat.user.group', 0, 1, '用户角色调整通知', '微信角色通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=系统通知&type=system', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (38, 'wechat.post.replied', 0, 1, '内容回复通知', '微信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=回复我的&type=replied', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (39, 'wechat.post.liked', 0, 1, '内容点赞通知', '微信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=点赞我的&type=liked', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (40, 'wechat.post.paid', 0, 1, '内容支付通知', '微信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=财务通知&type=rewarded,withdrawal', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (41, 'wechat.post.reminded', 0, 1, '内容@通知', '微信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (42, 'wechat.withdraw.noticed', 0, 1, '提现通知', '微信财务通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/my/withdrawalslist', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (43, 'wechat.withdraw.withdraw', 0, 1, '提现失败通知', '微信财务通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/my/withdrawalslist', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (44, 'wechat.divide.income', 0, 1, '分成收入通知', '微信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/my/walletlist', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (45, 'wechat.question.asked', 0, 1, '问答提问通知', '微信问答通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (46, 'wechat.question.answered', 0, 1, '问答回答通知', '微信问答通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (47, 'wechat.question.expired', 0, 1, '问答过期通知', '微信问答通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (48, 'wechat.red_packet.gotten', 0, 1, '得到红包通知', '微信红包通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (49, 'wechat.question.rewarded', 0, 1, '悬赏问答通知', '微信悬赏通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (50, 'wechat.question.rewarded.expired', 0, 1, '悬赏过期通知', '微信悬赏通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (51, 'miniprogram.registered.passed', 0, 4, '新用户注册通知', '小程序注册通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/home/index', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (52, 'miniprogram.registered.approved', 0, 4, '注册审核通过通知', '小程序注册审核通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/home/index', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (53, 'miniprogram.registered.unapproved', 0, 4, '注册审核不通过通知', '小程序注册审核通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/home/index', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (54, 'miniprogram.post.approved', 0, 4, '内容审核通过通知', '小程序内容审核通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (55, 'miniprogram.post.unapproved', 0, 4, '内容审核不通过通知', '小程序内容审核通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (56, 'miniprogram.post.deleted', 0, 4, '内容删除通知', '小程序内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/home/index', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (57, 'miniprogram.post.essence', 0, 4, '内容精华通知', '小程序内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (58, 'miniprogram.post.sticky', 0, 4, '内容置顶通知', '小程序内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (59, 'miniprogram.post.update', 0, 4, '内容修改通知', '小程序内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (60, 'miniprogram.user.disable', 0, 4, '用户禁用通知', '小程序用户通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=系统通知&type=system', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (61, 'miniprogram.user.normal', 0, 4, '用户解除禁用通知', '小程序用户通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=系统通知&type=system', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (62, 'miniprogram.user.group', 0, 4, '用户角色调整通知', '小程序角色通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=系统通知&type=system', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (63, 'miniprogram.post.replied', 0, 4, '内容回复通知', '小程序内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=回复我的&type=replied', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (64, 'miniprogram.post.liked', 0, 4, '内容点赞通知', '小程序内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=点赞我的&type=liked', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (65, 'miniprogram.post.paid', 0, 4, '内容支付通知', '小程序内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/notice/notice?title=财务通知&type=rewarded,withdrawal', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (66, 'miniprogram.post.reminded', 0, 4, '内容@通知', '小程序内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (67, 'miniprogram.withdraw.noticed', 0, 4, '提现通知', '小程序财务通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/my/withdrawalslist', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (68, 'miniprogram.withdraw.withdraw', 0, 4, '提现失败通知', '小程序财务通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/my/withdrawalslist', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (69, 'miniprogram.divide.income', 0, 4, '分成收入通知', '小程序内容通知', NULL, '', '', '', NULL, '', '', 0, '', '/pages/my/walletlist', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (70, 'miniprogram.question.asked', 0, 4, '问答提问通知', '小程序问答通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (71, 'miniprogram.question.answered', 0, 4, '问答回答通知', '小程序问答通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (72, 'miniprogram.question.expired', 0, 4, '问答过期通知', '小程序问答通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (73, 'miniprogram.red_packet.gotten', 0, 4, '得到红包通知', '小程序红包通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (74, 'miniprogram.question.rewarded', 0, 4, '悬赏问答通知', '小程序悬赏通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (75, 'miniprogram.question.rewarded.expired', 0, 4, '悬赏过期通知', '小程序悬赏通知', NULL, '', '', '', NULL, '', '', 0, '', '/topic/index?id={$thread_id}', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (76, 'sms.registered.passed', 0, 2, '新用户注册通知', '短信注册通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (77, 'sms.registered.approved', 0, 2, '注册审核通过通知', '短信注册审核通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (78, 'sms.registered.unapproved', 0, 2, '注册审核不通过通知', '短信注册审核通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (79, 'sms.post.approved', 0, 2, '内容审核通过通知', '短信内容审核通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (80, 'sms.post.unapproved', 0, 2, '内容审核不通过通知', '短信内容审核通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (81, 'sms.post.deleted', 0, 2, '内容删除通知', '短信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (82, 'sms.post.essence', 0, 2, '内容精华通知', '短信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (83, 'sms.post.sticky', 0, 2, '内容置顶通知', '短信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (84, 'sms.post.update', 0, 2, '内容修改通知', '短信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (85, 'sms.user.disable', 0, 2, '用户禁用通知', '短信用户通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (86, 'sms.user.normal', 0, 2, '用户解除禁用通知', '短信用户通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (87, 'sms.user.group', 0, 2, '用户角色调整通知', '短信角色通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (88, 'sms.post.replied', 0, 2, '内容回复通知', '短信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (89, 'sms.post.liked', 0, 2, '内容点赞通知', '短信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (90, 'sms.post.paid', 0, 2, '内容支付通知', '短信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (91, 'sms.post.reminded', 0, 2, '内容@通知', '短信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (92, 'sms.withdraw.noticed', 0, 2, '提现通知', '短信财务通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (93, 'sms.withdraw.withdraw', 0, 2, '提现失败通知', '短信财务通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (94, 'sms.divide.income', 0, 2, '分成收入通知', '短信内容通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (95, 'sms.question.asked', 0, 2, '问答提问通知', '短信问答通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (96, 'sms.question.answered', 0, 2, '问答回答通知', '短信问答通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (97, 'sms.question.expired', 0, 2, '问答过期通知', '短信问答通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (98, 'sms.red_packet.gotten', 0, 2, '得到红包通知', '短信红包通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (99, 'sms.question.rewarded', 0, 2, '悬赏问答通知', '短信悬赏通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (100, 'sms.question.rewarded.expired', 0, 2, '悬赏过期通知', '短信悬赏通知', NULL, '', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (101, 'system.user.group.upgrade', 1, 0, '用户组升级通知', '账号升级通知', '【{nickname}】恭喜你，成功升级为【{groupname}】！', 'a:2:{s:10:\"{nickname}\";s:12:\"用户昵称\";s:11:\"{groupname}\";s:15:\"升级用户组\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);
INSERT INTO `notification_tpls` VALUES (102, 'system.user.group.expired', 1, 0, '站点续费用户组续费通知', '续费通知', '【{nickname}】，您购买的【{groupname}】即将过期，过期后将无法享受当前权益，请及时续费。', 'a:2:{s:10:\"{nickname}\";s:12:\"用户昵称\";s:11:\"{groupname}\";s:12:\"老用户组\";}', '', '', NULL, '', '', 0, '', '', 0, NULL, 0, 0);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '通知 id',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '通知类型',
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '通知内容',
  `read_at` datetime NULL DEFAULT NULL COMMENT '通知阅读时间',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_notifiable_type_notifiable_id_index`(`notifiable_type`, `notifiable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 449 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES (1, 'system', 'App\\Models\\User', 2, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"Jerome\\u4f60\\u597d\\uff0c\\u4f60\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u4f1a\\u5458 \\uff0c\\u8bf7\\u4f60\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u5f53\\u5730\\u6cd5\\u5f8b\\u6cd5\\u89c4\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u6109\\u5feb\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-07-31 21:44:49', '2021-07-31 21:44:17', '2021-07-31 21:44:49');
INSERT INTO `notifications` VALUES (2, 'system', 'App\\Models\\User', 2, '{\"title\":\"\\u89d2\\u8272\\u901a\\u77e5\",\"content\":\"Jerome\\u4f60\\u597d\\uff0c\\u4f60\\u7684\\u89d2\\u8272\\u7531\\u666e\\u901a\\u7528\\u6237\\u53d8\\u66f4\\u4e3a\\u7ba1\\u7406\\u5458\",\"raw\":{\"tpl_id\":12}}', '2021-07-31 23:57:10', '2021-07-31 23:56:51', '2021-07-31 23:57:10');
INSERT INTO `notifications` VALUES (3, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"Thread\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u8bf7\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-01 00:22:34', '2021-08-01 00:22:19', '2021-08-01 00:22:34');
INSERT INTO `notifications` VALUES (4, 'system', 'App\\Models\\User', 4, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"t-gar\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u8bf7\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-01 00:41:47', '2021-08-01 00:41:31', '2021-08-01 00:41:47');
INSERT INTO `notifications` VALUES (5, 'replied', 'App\\Models\\User', 3, '{\"user_id\":4,\"thread_id\":1,\"thread_username\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-01T00:39:43+08:00\",\"post_id\":3,\"post_content\":\"\\u6211\\u611f\\u89c9\\u4e0d\\u5e94\\u8be5\\u5b66\\u5230Spring\\u5c31\\u7ed3\\u675f\\u4e86\\uff0c\\u867d\\u7136\\u5230\\u8fd9\\u4e2a\\u7a0b\\u5ea6\\u5df2\\u7ecf\\u5b8c\\u5168\\u53ef\\u4ee5\\u627e\\u5de5\\u4f5c\\u4e86\\uff0c\\u4f46\\u662f\\u6280\\u672f\\u5728\\u6162\\u6162\\u6dd8\\u6c70\\uff0c\\u6700\\u597d\\u5728\\u638c\\u63e1\\u4e00\\u70b9\\u5176\\u5b83\\u6846\\u67b6MVS\\u4ec0\\u4e48\\u7684\\uff0c\\u8fd8\\u6709\\u767d\\u76d2\\u6d4b\\u8bd5\\u7b49\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T00:43:00+08:00\",\"is_first\":true}', '2021-08-01 00:53:50', '2021-08-01 00:43:00', '2021-08-01 00:53:50');
INSERT INTO `notifications` VALUES (6, 'system', 'App\\Models\\User', 5, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"knuth\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u8bf7\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-01 00:48:08', '2021-08-01 00:46:23', '2021-08-01 00:48:08');
INSERT INTO `notifications` VALUES (7, 'system', 'App\\Models\\User', 6, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"sresde\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u8bf7\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-01 00:49:35', '2021-08-01 00:49:35');
INSERT INTO `notifications` VALUES (8, 'replied', 'App\\Models\\User', 5, '{\"user_id\":6,\"thread_id\":4,\"thread_username\":\"knuth\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-01T00:47:16+08:00\",\"post_id\":7,\"post_content\":\"\\u4f60\\u5728\\u8bf4\\u4e9b\\u4ec0\\u4e48\\u82b1\\u91cc\\u80e1\\u54e8\\u7684\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T00:50:14+08:00\",\"is_first\":true}', NULL, '2021-08-01 00:50:14', '2021-08-01 00:50:14');
INSERT INTO `notifications` VALUES (9, 'replied', 'App\\Models\\User', 5, '{\"user_id\":4,\"thread_id\":4,\"thread_username\":\"knuth\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-01T00:47:16+08:00\",\"post_id\":10,\"post_content\":\":fadai::fadai::fadai:\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T00:55:02+08:00\",\"is_first\":true}', NULL, '2021-08-01 00:55:02', '2021-08-01 00:55:02');
INSERT INTO `notifications` VALUES (10, 'system', 'App\\Models\\User', 7, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"lianmeng\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u8bf7\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-01 00:57:49', '2021-08-01 00:57:35', '2021-08-01 00:57:49');
INSERT INTO `notifications` VALUES (11, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Thread\\u4f60\\u597d\\uff0c\\u4f60\\u53d1\\u5e03\\u7684\\u5185\\u5bb9 \\\"\\u4e00 \\u3001\\u5b66\\u4e60Servlet\\u548cTomcat\\n\\nServlet\\u7b2c\\u4e00\\u7bc7\\u3010\\u4ecb\\u7ecdServlet\\u3001HTTP\\u534f\\u8bae\\u3001WEB\\u76ee\\u5f55\\u7ed3\\u6784\\u3001\\u7f16\\u5199\\u5165\\u95e8Servlet\\u7a0b\\u5e8f\\u3001Servlet\\u751f\\u547d\\u5468\\u671f\\u3011\\nServlet\\u7b2c\\u4e8c\\u7bc7\\u3010Servl...\\\" \\u5df2\\u7f6e\\u9876\",\"raw\":{\"tpl_id\":8},\"thread_id\":1}', '2021-08-01 12:12:34', '2021-08-01 01:00:46', '2021-08-01 12:12:34');
INSERT INTO `notifications` VALUES (12, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Thread\\u4f60\\u597d\\uff0c\\u4f60\\u53d1\\u5e03\\u7684\\u5185\\u5bb9 \\\"\\u4e00 \\u3001\\u5b66\\u4e60Servlet\\u548cTomcat\\n\\nServlet\\u7b2c\\u4e00\\u7bc7\\u3010\\u4ecb\\u7ecdServlet\\u3001HTTP\\u534f\\u8bae\\u3001WEB\\u76ee\\u5f55\\u7ed3\\u6784\\u3001\\u7f16\\u5199\\u5165\\u95e8Servlet\\u7a0b\\u5e8f\\u3001Servlet\\u751f\\u547d\\u5468\\u671f\\u3011\\nServlet\\u7b2c\\u4e8c\\u7bc7\\u3010Servl...\\\" \\u5df2\\u7f6e\\u9876\",\"raw\":{\"tpl_id\":8},\"thread_id\":1}', '2021-08-01 12:12:34', '2021-08-01 01:02:04', '2021-08-01 12:12:34');
INSERT INTO `notifications` VALUES (13, 'system', 'App\\Models\\User', 8, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"yihou\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u8bf7\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-01 01:15:10', '2021-08-01 01:14:34', '2021-08-01 01:15:10');
INSERT INTO `notifications` VALUES (14, 'system', 'App\\Models\\User', 9, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"baima\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u8bf7\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-01 01:35:43', '2021-08-01 01:35:04', '2021-08-01 01:35:43');
INSERT INTO `notifications` VALUES (15, 'replied', 'App\\Models\\User', 8, '{\"user_id\":9,\"thread_id\":9,\"thread_username\":\"yihou\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-01T01:15:35+08:00\",\"post_id\":18,\"post_content\":\"\\u52a0\\u6211QQ112355478\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T01:36:09+08:00\",\"is_first\":true}', '2021-08-04 20:57:39', '2021-08-01 01:36:10', '2021-08-04 20:57:39');
INSERT INTO `notifications` VALUES (16, 'replied', 'App\\Models\\User', 7, '{\"user_id\":9,\"thread_id\":8,\"thread_username\":\"lianmeng\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-01T01:03:34+08:00\",\"post_id\":19,\"post_content\":\"\\u8fd9\\u90fd\\u4e0d\\u77e5\\u9053\\u5417\\uff0c\\u4f60\\u7b2c\\u4e00\\u5929\\u770b\\u6bd4\\u8d5b\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T01:39:05+08:00\",\"is_first\":true}', '2021-08-01 01:59:25', '2021-08-01 01:39:06', '2021-08-01 01:59:25');
INSERT INTO `notifications` VALUES (17, 'liked', 'App\\Models\\User', 3, '{\"user_id\":4,\"thread_id\":1,\"thread_username\":\"Thread\",\"thread_title\":\"Java\\u9ad8\\u7ea7\\u5de5\\u7a0b\\u5e08\\u5b66\\u4e60\\u6d41\\u7a0b\",\"thread_created_at\":\"2021-08-01T00:39:43+08:00\",\"post_id\":1,\"post_content\":\"\\u4e00 \\u3001\\u5b66\\u4e60Servlet\\u548cTomcat\\n\\nServlet\\u7b2c\\u4e00\\u7bc7\\u3010\\u4ecb\\u7ecdServlet\\u3001HTTP\\u534f\\u8bae\\u3001WEB\\u76ee\\u5f55\\u7ed3\\u6784\\u3001\\u7f16\\u5199\\u5165\\u95e8Servlet\\u7a0b\\u5e8f\\u3001Servlet\\u751f\\u547d\\u5468\\u671f\\u3011\\nServlet\\u7b2c\\u4e8c\\u7bc7\\u3010Servl...\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T00:39:43+08:00\",\"is_first\":true}', '2021-08-01 22:41:20', '2021-08-01 12:30:05', '2021-08-01 22:41:20');
INSERT INTO `notifications` VALUES (18, 'related', 'App\\Models\\User', 2, '{\"user_id\":4,\"thread_id\":10,\"thread_username\":\"t-gar\",\"thread_title\":\"\\u7f51\\u7ad9\\u521b\\u5efa\\u4eba\\uff1f\",\"thread_created_at\":\"2021-08-01T12:40:17+08:00\",\"post_id\":21,\"post_content\":\"@Jerome  @PDA...\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T12:40:48+08:00\"}', '2021-08-01 14:21:46', '2021-08-01 12:40:48', '2021-08-01 14:21:46');
INSERT INTO `notifications` VALUES (19, 'related', 'App\\Models\\User', 1, '{\"user_id\":4,\"thread_id\":10,\"thread_username\":\"t-gar\",\"thread_title\":\"\\u7f51\\u7ad9\\u521b\\u5efa\\u4eba\\uff1f\",\"thread_created_at\":\"2021-08-01T12:40:17+08:00\",\"post_id\":21,\"post_content\":\"@Jerome  @PDA...\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T12:40:48+08:00\"}', '2021-08-01 14:12:25', '2021-08-01 12:40:48', '2021-08-01 14:12:25');
INSERT INTO `notifications` VALUES (20, 'related', 'App\\Models\\User', 2, '{\"user_id\":4,\"thread_id\":10,\"thread_username\":\"t-gar\",\"thread_title\":\"\\u7f51\\u7ad9\\u521b\\u5efa\\u4eba\\uff1f\",\"thread_created_at\":\"2021-08-01T12:40:17+08:00\",\"post_id\":20,\"post_content\":\"@PDA \\u00a0  @Jerome \\u00a0 \\n...\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T12:40:17+08:00\"}', '2021-08-01 14:21:46', '2021-08-01 12:41:38', '2021-08-01 14:21:46');
INSERT INTO `notifications` VALUES (21, 'related', 'App\\Models\\User', 1, '{\"user_id\":4,\"thread_id\":10,\"thread_username\":\"t-gar\",\"thread_title\":\"\\u7f51\\u7ad9\\u521b\\u5efa\\u4eba\\uff1f\",\"thread_created_at\":\"2021-08-01T12:40:17+08:00\",\"post_id\":20,\"post_content\":\"@PDA \\u00a0  @Jerome \\u00a0 \\n...\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T12:40:17+08:00\"}', '2021-08-01 14:12:25', '2021-08-01 12:41:38', '2021-08-01 14:12:25');
INSERT INTO `notifications` VALUES (22, 'system', 'App\\Models\\User', 10, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"nuanle\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u8bf7\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-01 14:05:13', '2021-08-01 14:05:13');
INSERT INTO `notifications` VALUES (23, 'system', 'App\\Models\\User', 11, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"Bequ\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u8bf7\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-02 15:40:13', '2021-08-01 14:07:34', '2021-08-02 15:40:13');
INSERT INTO `notifications` VALUES (24, 'replied', 'App\\Models\\User', 10, '{\"user_id\":11,\"thread_id\":11,\"thread_username\":\"nuanle\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-01T14:06:40+08:00\",\"post_id\":23,\"post_content\":\"\\u79c1\\u53d1\\u7ed9\\u4f60\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T14:08:43+08:00\",\"is_first\":true}', NULL, '2021-08-01 14:08:43', '2021-08-01 14:08:43');
INSERT INTO `notifications` VALUES (25, 'system', 'App\\Models\\User', 9, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"baima\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"\\u8fd9\\u90fd\\u4e0d\\u77e5\\u9053\\u5417\\uff0c\\u4f60\\u7b2c\\u4e00\\u5929\\u770b\\u6bd4\\u8d5b\\uff1f \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\\u65e0\",\"raw\":{\"tpl_id\":6},\"thread_id\":8}', NULL, '2021-08-01 21:40:25', '2021-08-01 21:40:25');
INSERT INTO `notifications` VALUES (26, 'system', 'App\\Models\\User', 12, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"tjy327\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u8bf7\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\u3002\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-02 01:55:52', '2021-08-02 01:51:41', '2021-08-02 01:55:52');
INSERT INTO `notifications` VALUES (27, 'system', 'App\\Models\\User', 13, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"youer\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 02:04:04', '2021-08-02 02:04:04');
INSERT INTO `notifications` VALUES (28, 'replied', 'App\\Models\\User', 12, '{\"user_id\":13,\"thread_id\":13,\"thread_username\":\"tjy327\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T01:55:02+08:00\",\"post_id\":28,\"post_content\":\"<p><\\/p>\\u6211\\u5df2\\u7ecf\\u540e\\u6094\\u4e70\\u4e86\\uff0c\\u8fd9\\u6e38\\u620f\\u5b8c\\u5168\\u4e0d\\u662f\\u6211\\u7684\\u83dc\\uff0c\\u53c8\\u4e0d\\u80fd\\u9000\\u6b3e\\u3002\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T02:04:52+08:00\",\"is_first\":true}', '2021-08-04 00:21:52', '2021-08-02 02:04:52', '2021-08-04 00:21:52');
INSERT INTO `notifications` VALUES (29, 'replied', 'App\\Models\\User', 12, '{\"user_id\":13,\"thread_id\":13,\"thread_username\":\"tjy327\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T01:55:02+08:00\",\"post_id\":29,\"post_content\":\"<p><\\/p>\\u4e70\\u65ad\\u5236\\u8fd8\\u6709\\u5185\\u8d2d\\uff0c\\u4ec0\\u4e48\\u5783\\u573e\\u7b56\\u5212\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T02:05:00+08:00\",\"is_first\":true}', '2021-08-04 00:21:52', '2021-08-02 02:05:00', '2021-08-04 00:21:52');
INSERT INTO `notifications` VALUES (30, 'replied', 'App\\Models\\User', 12, '{\"user_id\":13,\"thread_id\":13,\"thread_username\":\"tjy327\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T01:55:02+08:00\",\"post_id\":30,\"post_content\":\"<p><\\/p>\\u4e70\\u65ad\\u5236\\u8fd8\\u52a0\\u901a\\u884c\\u8bc1\\uff0c\\u53c8\\u662f\\u5145\\u94b1\\u62bd\\u5956\\u7684\\uff0c\\u4e0d\\u6127\\u662f\\u7f51\\u6613\\u5403\\u76f8\\u96be\\u770b\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T02:05:08+08:00\",\"is_first\":true}', '2021-08-04 00:21:52', '2021-08-02 02:05:08', '2021-08-04 00:21:52');
INSERT INTO `notifications` VALUES (31, 'system', 'App\\Models\\User', 14, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"yiwang\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 02:06:12', '2021-08-02 02:06:12');
INSERT INTO `notifications` VALUES (32, 'replied', 'App\\Models\\User', 12, '{\"user_id\":14,\"thread_id\":13,\"thread_username\":\"tjy327\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T01:55:02+08:00\",\"post_id\":31,\"post_content\":\"\\u5c31\\u662f\\u5272\\u73a9\\u5bb6\\u97ed\\u83dc\\u3002\\u4e2d\\u56fd\\u5927\\u53823A\\u5927ZUO\\u30023A\\u5927\\u4f5c\\u56fd\\u6e38\\u6682\\u65f6\\u662f\\u4e0d\\u53ef\\u80fd\\u6709\\u7684\\uff0c\\u6bd5\\u7adf\\u8fd9\\u79cd\\u6740\\u732a\\u76843A\\u5927ZUO\\u5708\\u94b1\\u4e0d\\u9999\\u5417\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T02:06:51+08:00\",\"is_first\":true}', '2021-08-04 00:21:52', '2021-08-02 02:06:51', '2021-08-04 00:21:52');
INSERT INTO `notifications` VALUES (33, 'replied', 'App\\Models\\User', 12, '{\"user_id\":14,\"thread_id\":13,\"thread_username\":\"tjy327\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T01:55:02+08:00\",\"post_id\":32,\"post_content\":\"<p><\\/p>\\u7f51\\u6613\\u5565\\u65f6\\u5019\\u5403\\u76f8\\u597d\\u770b\\u8fc7\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T02:06:56+08:00\",\"is_first\":true}', '2021-08-04 00:21:52', '2021-08-02 02:06:56', '2021-08-04 00:21:52');
INSERT INTO `notifications` VALUES (34, 'replied', 'App\\Models\\User', 12, '{\"user_id\":14,\"thread_id\":13,\"thread_username\":\"tjy327\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T01:55:02+08:00\",\"post_id\":33,\"post_content\":\"\\u5c31\\u662f\\u5272\\u73a9\\u5bb6\\u97ed\\u83dc\\u3002\\u4e2d\\u56fd\\u5927\\u53823A\\u5927ZUO\\u30023A\\u5927\\u4f5c\\u56fd\\u6e38\\u6682\\u65f6\\u662f\\u4e0d\\u53ef\\u80fd\\u6709\\u7684\\uff0c\\u6bd5\\u7adf\\u8fd9\\u79cd\\u6740\\u732a\\u76843A\\u5927ZUO\\u5708\\u94b1\\u4e0d\\u9999\\u5417\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T02:07:20+08:00\",\"is_first\":true}', '2021-08-04 00:21:52', '2021-08-02 02:07:20', '2021-08-04 00:21:52');
INSERT INTO `notifications` VALUES (35, 'system', 'App\\Models\\User', 15, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"huifeng\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 02:14:07', '2021-08-02 02:14:07');
INSERT INTO `notifications` VALUES (36, 'system', 'App\\Models\\User', 15, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"huifeng\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"\\u5c31\\u662f\\u4e0d\\u60f3\\u73a9\\u4e86\\uff0c\\u4e4b\\u524ds7\\u4e0a\\u8fc7\\u94bb\\u662f\\u552f\\u4e00\\u9a84\\u50b2\\u7684\\u4e86\\uff0c\\u7136\\u540e\\u5c31\\u662f\\u9ec4\\u91d1\\u4ed4\\u4e86\\uff0c\\u771f\\u5fc3\\u5730\\u559c\\u6b22\\u8fd9\\u4e2a\\u53f7\\uff0c\\u4f46\\u662f\\u5927\\u5b66\\u6bd5\\u4e1a\\u4e86\\uff0c\\u6ca1\\u65f6\\u95f4\\u73a9\\u4e86\\uff0c\\u60f3\\u95ee\\u76ae\\u80a4\\u7ec6\\u8282\\u7684\\u8bc4\\u8bba\\u533a\\u6216\\u79c1\\u804a\\u90fd\\u53ef\\u4ee5\\uff0c\\u53ef\\u4ee5\\u8d70\\u54b8\\u9c7c\\u3002\\uff08\\u6211\\u6240\\u6307\\u7684\\u5168\\u82f1\\u96c4\\u662f\\u8fd9145\\u82f1\\u96c4\\u52a0\\u4e0a1\\u4e07\\u7cbe\\u7cb9\\uff0c\\u6240... \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\",\"raw\":{\"tpl_id\":6},\"thread_id\":15}', NULL, '2021-08-02 11:01:29', '2021-08-02 11:01:29');
INSERT INTO `notifications` VALUES (37, 'system', 'App\\Models\\User', 2, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Jerome\\u4f60\\u597d\\uff0c\\u4f60\\u53d1\\u5e03\\u7684\\u5185\\u5bb9 \\\"<p>\\u6709\\u4ec0\\u4e48\\u60f3\\u52a0\\u7684\\u677f\\u5757\\u3001\\u5206\\u7c7b\\u3001\\u529f\\u80fd\\u90fd\\u53ef\\u4ee5\\u79c1\\u4fe1\\u6211\\u54df~<\\/p>\\n\\\" \\u5df2\\u7f6e\\u9876\",\"raw\":{\"tpl_id\":8},\"thread_id\":16}', '2021-08-02 11:26:37', '2021-08-02 11:26:23', '2021-08-02 11:26:37');
INSERT INTO `notifications` VALUES (38, 'replied', 'App\\Models\\User', 2, '{\"user_id\":12,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":39,\"post_content\":\"\\u6c38\\u52ab\\u65e0\\u95f4\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T14:34:25+08:00\",\"is_first\":true}', '2021-08-02 14:59:38', '2021-08-02 14:34:25', '2021-08-02 14:59:38');
INSERT INTO `notifications` VALUES (39, 'replied', 'App\\Models\\User', 2, '{\"user_id\":12,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":40,\"post_content\":\"\\u8fd9\\u79cd\\u65b0\\u6e38\\u5e94\\u8be5\\u6709\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T14:34:36+08:00\",\"is_first\":true}', '2021-08-02 14:59:38', '2021-08-02 14:34:36', '2021-08-02 14:59:38');
INSERT INTO `notifications` VALUES (40, 'replied', 'App\\Models\\User', 2, '{\"user_id\":12,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":41,\"post_content\":\"\\u5404\\u79cd\\u5355\\u673a\\u4ec0\\u4e48\\u76843A\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T14:34:46+08:00\",\"is_first\":true}', '2021-08-02 14:59:38', '2021-08-02 14:34:46', '2021-08-02 14:59:38');
INSERT INTO `notifications` VALUES (41, 'replied', 'App\\Models\\User', 2, '{\"user_id\":12,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":42,\"post_content\":\"\\u8352\\u91ce\\u5927\\u5ad6\\u5ba2\\u8fd9\\u4e9b\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T14:34:54+08:00\",\"is_first\":true}', '2021-08-02 14:59:38', '2021-08-02 14:34:54', '2021-08-02 14:59:38');
INSERT INTO `notifications` VALUES (42, 'system', 'App\\Models\\User', 16, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"yingying\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-02 14:51:44', '2021-08-02 14:35:57', '2021-08-02 14:51:44');
INSERT INTO `notifications` VALUES (43, 'replied', 'App\\Models\\User', 2, '{\"user_id\":16,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":45,\"post_content\":\"\\u6211\\u611f\\u89c9\\u5e94\\u8be5\\u5199\\u4e00\\u70b9\\u53ef\\u4ee5\\u8986\\u76d6\\u5927\\u90e8\\u5206\\u7684\\uff0c\\u6bd4\\u5982\\u5355\\u673a\\u6e38\\u620f\\uff0c3A\\u8fd9\\u4e9b\\u3002\\u53cd\\u6b63\\u4ee3\\u7801\\u4e0d\\u662f\\u6211\\u5199\\uff0c\\u4f60\\u5c31\\u6162\\u6162\\u6389\\u5934\\u53d1\\u5427\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T14:41:00+08:00\",\"is_first\":true}', '2021-08-02 14:59:38', '2021-08-02 14:41:00', '2021-08-02 14:59:38');
INSERT INTO `notifications` VALUES (44, 'replied', 'App\\Models\\User', 14, '{\"user_id\":16,\"thread_id\":14,\"thread_username\":\"yiwang\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T02:10:08+08:00\",\"post_id\":46,\"post_content\":\"\\u5bf9\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T14:41:36+08:00\",\"is_first\":true}', NULL, '2021-08-02 14:41:36', '2021-08-02 14:41:36');
INSERT INTO `notifications` VALUES (45, 'replied', 'App\\Models\\User', 14, '{\"user_id\":16,\"thread_id\":14,\"thread_username\":\"yiwang\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T02:10:08+08:00\",\"post_id\":47,\"post_content\":\"\\u5c31\\u662f\\u5783\\u573e\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T14:41:43+08:00\",\"is_first\":true}', NULL, '2021-08-02 14:41:43', '2021-08-02 14:41:43');
INSERT INTO `notifications` VALUES (46, 'system', 'App\\Models\\User', 17, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"dengfeng\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 14:59:51', '2021-08-02 14:59:51');
INSERT INTO `notifications` VALUES (47, 'replied', 'App\\Models\\User', 17, '{\"user_id\":14,\"thread_id\":18,\"thread_username\":\"dengfeng\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T15:00:54+08:00\",\"post_id\":50,\"post_content\":\"\\u6015\\u662f\\u4e00\\u8f88\\u5b50\\u4e5f\\u627e\\u4e0d\\u5230\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T15:03:24+08:00\",\"is_first\":true}', NULL, '2021-08-02 15:03:24', '2021-08-02 15:03:24');
INSERT INTO `notifications` VALUES (48, 'replied', 'App\\Models\\User', 2, '{\"user_id\":10,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":51,\"post_content\":\"\\u6709\\u6ca1\\u6709\\u4ec0\\u4e48\\u597d\\u73a9\\u7684\\u529f\\u80fd\\uff0c\\u52a0\\u4e00\\u70b9\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T15:11:28+08:00\",\"is_first\":true}', '2021-08-02 15:14:19', '2021-08-02 15:11:28', '2021-08-02 15:14:19');
INSERT INTO `notifications` VALUES (49, 'replied', 'App\\Models\\User', 2, '{\"user_id\":11,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":52,\"post_content\":\"\\u65b9\\u821f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T15:12:47+08:00\",\"is_first\":true}', '2021-08-02 15:14:19', '2021-08-02 15:12:47', '2021-08-02 15:14:19');
INSERT INTO `notifications` VALUES (50, 'replied', 'App\\Models\\User', 2, '{\"user_id\":7,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":53,\"post_content\":\"\\u7f16\\u7a0b\\u8ba1\\u7b97\\u673a\\u662f\\u4ec0\\u4e48\\u9b3c\\uff0c\\u91cc\\u9762\\u90fd\\u662f\\u4ec0\\u4e48\\u5996\\u9b54\\u9b3c\\u602a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T15:17:02+08:00\",\"is_first\":true}', '2021-08-02 15:25:32', '2021-08-02 15:17:02', '2021-08-02 15:25:32');
INSERT INTO `notifications` VALUES (51, 'system', 'App\\Models\\User', 18, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"tianliang\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 15:18:39', '2021-08-02 15:18:39');
INSERT INTO `notifications` VALUES (52, 'system', 'App\\Models\\User', 19, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"xigua\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 15:20:55', '2021-08-02 15:20:55');
INSERT INTO `notifications` VALUES (53, 'replied', 'App\\Models\\User', 18, '{\"user_id\":19,\"thread_id\":19,\"thread_username\":\"tianliang\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T15:20:13+08:00\",\"post_id\":55,\"post_content\":\"\\u6709\\u9053\\u7406\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T15:21:19+08:00\",\"is_first\":true}', NULL, '2021-08-02 15:21:19', '2021-08-02 15:21:19');
INSERT INTO `notifications` VALUES (54, 'system', 'App\\Models\\User', 20, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"mc\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 15:24:42', '2021-08-02 15:24:42');
INSERT INTO `notifications` VALUES (55, 'replied', 'App\\Models\\User', 19, '{\"user_id\":20,\"thread_id\":20,\"thread_username\":\"xigua\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T15:22:13+08:00\",\"post_id\":58,\"post_content\":\"\\u6211\\u7b2c\\u4e00\\u4e2a\\u53f7\\u5c31\\u88ab\\u5c01\\u53f710\\u5e74\\uff0c\\u53ea\\u80fd\\u8bf4\\u4ec0\\u4e48JB\\u5783\\u573e\\u5e9f\\u7269\\u6e38\\u620f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T15:25:44+08:00\",\"is_first\":true}', NULL, '2021-08-02 15:25:45', '2021-08-02 15:25:45');
INSERT INTO `notifications` VALUES (56, 'system', 'App\\Models\\User', 21, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"fangun\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 15:32:08', '2021-08-02 15:32:08');
INSERT INTO `notifications` VALUES (57, 'system', 'App\\Models\\User', 22, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"XY15721572421\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 15:35:58', '2021-08-02 15:35:58');
INSERT INTO `notifications` VALUES (58, 'replied', 'App\\Models\\User', 21, '{\"user_id\":22,\"thread_id\":22,\"thread_username\":\"fangun\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T15:34:28+08:00\",\"post_id\":63,\"post_content\":\"\\u6284\\u88ad\\u6211\\u4e5f\\u7231\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T15:36:15+08:00\",\"is_first\":true}', NULL, '2021-08-02 15:36:15', '2021-08-02 15:36:15');
INSERT INTO `notifications` VALUES (59, 'system', 'App\\Models\\User', 23, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"moran\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 16:29:19', '2021-08-02 16:29:19');
INSERT INTO `notifications` VALUES (60, 'system', 'App\\Models\\User', 24, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"m_3b76ac733\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-02 16:31:53', '2021-08-02 16:31:53');
INSERT INTO `notifications` VALUES (61, 'replied', 'App\\Models\\User', 23, '{\"user_id\":24,\"thread_id\":23,\"thread_username\":\"moran\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T16:30:09+08:00\",\"post_id\":66,\"post_content\":\"\\u52a0\\u840c\\u65b0\\u7fa4\\uff0c\\u7136\\u540e\\u8e6d\\u8f66\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T16:33:12+08:00\",\"is_first\":true}', NULL, '2021-08-02 16:33:12', '2021-08-02 16:33:12');
INSERT INTO `notifications` VALUES (62, 'replied', 'App\\Models\\User', 2, '{\"user_id\":24,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":67,\"post_content\":\"\\u641e\\u4e2a\\u8d44\\u6e90\\u5e16\\uff0c\\u5206\\u4eab\\u8d44\\u6e90\\uff0c\\u6bd4\\u5982\\u5206\\u4eab\\u4e00\\u4e9b\\u79cd\\u5b50\\u6e38\\u620f\\u4ec0\\u4e48\\u7684\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T16:35:30+08:00\",\"is_first\":true}', '2021-08-03 12:03:05', '2021-08-02 16:35:30', '2021-08-03 12:03:05');
INSERT INTO `notifications` VALUES (63, 'system', 'App\\Models\\User', 25, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"longtai\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-02 19:38:08', '2021-08-02 16:37:05', '2021-08-02 19:38:08');
INSERT INTO `notifications` VALUES (64, 'replied', 'App\\Models\\User', 2, '{\"user_id\":25,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":69,\"post_content\":\"<p>PC\\u9996\\u9875\\u6574\\u4f53\\u7f29\\u5c0f\\u4e00\\u70b9\\uff0c\\u7535\\u8111\\u5c4f\\u5e55\\u5c0f\\u4e00\\u70b9\\u7684\\uff0c\\u7b80\\u76f4\\u94fa\\u6ee1\\u4e86\\u6574\\u4e2a\\u5c4f\\u5e55.<\\/p><p>\\u53c2\\u8003\\u5fae\\u535a\\uff0c\\u4e09\\u680f\\u7ed3\\u6784\\u7684\\u786e\\u66f4\\u7b26\\u5408\\uff0c\\u4f46\\u54b1\\u5f04\\u7684\\u592a\\u5927\\u4e86\\uff0c\\u770b\\u8d77\\u6765\\u5f88\\u4e0d\\u5f97\\u52b2\\u3002<\\/p>\\u9996\\u9875\\u548c\\u5185\\u5bb9\\u9875\\u7684\\u5927\\u5c0f\\u8fd8\\u4e0d\\u4e00\\u6837\\uff0c\\u662f\\u4e0d\\u597d\\u7684\\uff0c\\u5efa\\u8bae\\u4e00\\u4e0b\\u3002\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T16:47:00+08:00\",\"is_first\":true}', '2021-08-03 12:03:05', '2021-08-02 16:47:00', '2021-08-03 12:03:05');
INSERT INTO `notifications` VALUES (65, 'replied', 'App\\Models\\User', 20, '{\"user_id\":25,\"thread_id\":21,\"thread_username\":\"mc\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T15:27:36+08:00\",\"post_id\":71,\"post_content\":\"\\u4e00\\u8d77\\u73a9\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T20:21:25+08:00\",\"is_first\":true}', NULL, '2021-08-02 20:21:25', '2021-08-02 20:21:25');
INSERT INTO `notifications` VALUES (66, 'system', 'App\\Models\\User', 26, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"34645756756\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-02 20:29:18', '2021-08-02 20:27:27', '2021-08-02 20:29:18');
INSERT INTO `notifications` VALUES (67, 'replied', 'App\\Models\\User', 2, '{\"user_id\":26,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":73,\"post_content\":\"\\u505a\\u4e00\\u4e2a\\u8d44\\u6e90\\u5206\\u4eab\\u7ad9\\uff0c\\u4e13\\u95e8\\u5206\\u4eab\\u4e00\\u4e9b\\u6e38\\u620f\\u8d44\\u6e90\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T20:32:09+08:00\",\"is_first\":true}', '2021-08-03 12:03:05', '2021-08-02 20:32:09', '2021-08-03 12:03:05');
INSERT INTO `notifications` VALUES (68, 'system', 'App\\Models\\User', 27, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"Poners\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-02 20:38:24', '2021-08-02 20:37:01', '2021-08-02 20:38:24');
INSERT INTO `notifications` VALUES (69, 'replied', 'App\\Models\\User', 26, '{\"user_id\":27,\"thread_id\":28,\"thread_username\":\"34645756756\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T20:34:08+08:00\",\"post_id\":76,\"post_content\":\"steam\\u4ea4\\u6613\\u4e0d\\u662f\\u8981\\u53cc\\u65b9\\u90fd\\u70b9\\u540c\\u610f\\u7684\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T20:40:54+08:00\",\"is_first\":true}', NULL, '2021-08-02 20:40:54', '2021-08-02 20:40:54');
INSERT INTO `notifications` VALUES (70, 'replied', 'App\\Models\\User', 26, '{\"user_id\":27,\"thread_id\":28,\"thread_username\":\"34645756756\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T20:34:08+08:00\",\"post_id\":77,\"post_content\":\"\\u4ea4\\u6613\\u7684\\u65f6\\u5019\\u53ef\\u4ee5\\u770b\\u89c1\\u5bf9\\u65b9\\u76ae\\u80a4\\uff0c\\u53ef\\u4ee5\\u786e\\u5b9a\\u4e00\\u4e0b\\u76ae\\u80a4\\u54c1\\u8d28\\u548c\\u4ef7\\u683c\\u5728\\u4ea4\\u6613\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T20:41:56+08:00\",\"is_first\":true}', NULL, '2021-08-02 20:41:56', '2021-08-02 20:41:56');
INSERT INTO `notifications` VALUES (71, 'replied', 'App\\Models\\User', 2, '{\"user_id\":27,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":78,\"post_content\":\"\\u5927\\u4f6c\\u4e5f\\u53ef\\u4ee5\\u5076\\u5c14\\u53d1\\u4e00\\u4e9b\\u77e5\\u8bc6\\u5e16\\u5b50\\uff0c\\u6bd5\\u7adf\\u7f51\\u7ad9\\u5f00\\u53d1\\u8fd9\\u4e00\\u6280\\u672f\\u8fd8\\u662f\\u5403\\u9999\\u7684\\uff0c\\u6211\\u4e5f\\u60f3\\u5b66:leiben:\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-02T20:45:29+08:00\",\"is_first\":true}', '2021-08-03 12:03:05', '2021-08-02 20:45:29', '2021-08-03 12:03:05');
INSERT INTO `notifications` VALUES (72, 'system', 'App\\Models\\User', 25, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"longtai\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"<h1>\\u53efv\\u53efq<\\/h1>\\n \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\",\"raw\":{\"tpl_id\":6},\"thread_id\":26}', '2021-08-03 16:22:44', '2021-08-03 12:02:02', '2021-08-03 16:22:44');
INSERT INTO `notifications` VALUES (73, 'system', 'App\\Models\\User', 28, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"TEam\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-03 16:25:58', '2021-08-03 16:25:58');
INSERT INTO `notifications` VALUES (74, 'replied', 'App\\Models\\User', 25, '{\"user_id\":28,\"thread_id\":31,\"thread_username\":\"longtai\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:25:00+08:00\",\"post_id\":82,\"post_content\":\"\\u7cfb\\u7edf\\u95ee\\u9898\\u5427\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:28:10+08:00\",\"is_first\":true}', NULL, '2021-08-03 16:28:10', '2021-08-03 16:28:10');
INSERT INTO `notifications` VALUES (75, 'replied', 'App\\Models\\User', 27, '{\"user_id\":28,\"thread_id\":29,\"thread_username\":\"Poners\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T20:40:11+08:00\",\"post_id\":83,\"post_content\":\"\\u5199\\u4ec0\\u4e48\\u65e5\\u8bb0?\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:28:25+08:00\",\"is_first\":true}', NULL, '2021-08-03 16:28:25', '2021-08-03 16:28:25');
INSERT INTO `notifications` VALUES (76, 'replied', 'App\\Models\\User', 2, '{\"user_id\":28,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":84,\"post_content\":\"\\u7f51\\u7ad9\\u592a\\u7b80\\u6d01\\u4e86\\uff0c\\u641e\\u5f97\\u82b1\\u91cc\\u80e1\\u54e8\\u70b9\\uff0c\\u90a3\\u4e2a\\u8bba\\u575b\\u8fd9\\u4e48\\u7b80\\u6d01\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:29:18+08:00\",\"is_first\":true}', '2021-08-03 16:32:42', '2021-08-03 16:29:18', '2021-08-03 16:32:42');
INSERT INTO `notifications` VALUES (77, 'system', 'App\\Models\\User', 29, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u706b\\u4e4b\\u610f\\u5fd705\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-03 16:33:06', '2021-08-03 16:33:06');
INSERT INTO `notifications` VALUES (78, 'system', 'App\\Models\\User', 30, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5947\\u6e38-\\u83f2\\u59d0\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-03 16:36:04', '2021-08-03 16:36:04');
INSERT INTO `notifications` VALUES (79, 'replied', 'App\\Models\\User', 29, '{\"user_id\":30,\"thread_id\":34,\"thread_username\":\"\\u706b\\u4e4b\\u610f\\u5fd705\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:34:40+08:00\",\"post_id\":88,\"post_content\":\"\\u5947\\u6e38\\u5427 \\u9700\\u8981\\u7684\\u8bdd\\u7559\\u90ae\\u7bb1 \\u6211\\u53d1\\u5468\\u5361\\u7ed9\\u4f60\\u4f53\\u9a8c\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:36:34+08:00\",\"is_first\":true}', NULL, '2021-08-03 16:36:34', '2021-08-03 16:36:34');
INSERT INTO `notifications` VALUES (80, 'replied', 'App\\Models\\User', 29, '{\"user_id\":30,\"thread_id\":34,\"thread_username\":\"\\u706b\\u4e4b\\u610f\\u5fd705\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:34:40+08:00\",\"post_id\":89,\"post_content\":\"\\u52a0\\u901f\\u6548\\u679c\\u8d3c\\u597d\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:36:38+08:00\",\"is_first\":true}', NULL, '2021-08-03 16:36:38', '2021-08-03 16:36:38');
INSERT INTO `notifications` VALUES (81, 'replied', 'App\\Models\\User', 29, '{\"user_id\":30,\"thread_id\":34,\"thread_username\":\"\\u706b\\u4e4b\\u610f\\u5fd705\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:34:40+08:00\",\"post_id\":90,\"post_content\":\"\\u627e\\u6211\\u4e70\\u4e5f\\u4fbf\\u5b9c\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:36:51+08:00\",\"is_first\":true}', NULL, '2021-08-03 16:36:51', '2021-08-03 16:36:51');
INSERT INTO `notifications` VALUES (82, 'system', 'App\\Models\\User', 31, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5973\\u670b\\u53cb\\u8d85\\u53ef\\u7231\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-03 16:37:43', '2021-08-03 16:37:43');
INSERT INTO `notifications` VALUES (83, 'replied', 'App\\Models\\User', 30, '{\"user_id\":31,\"thread_id\":34,\"thread_username\":\"\\u706b\\u4e4b\\u610f\\u5fd705\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:34:40+08:00\",\"post_id\":91,\"post_content\":\"\\u4e00\\u822c\\u591a\\u5c11\\u94b1\\uff1f\",\"reply_post_id\":88,\"post_created_at\":\"2021-08-03T16:38:38+08:00\",\"is_first\":false,\"reply_post_user_id\":30,\"reply_post_content\":\"\\u5947\\u6e38\\u5427 \\u9700\\u8981\\u7684\\u8bdd\\u7559\\u90ae\\u7bb1 \\u6211\\u53d1\\u5468\\u5361\\u7ed9\\u4f60\\u4f53\\u9a8c\",\"reply_post_created_at\":\"2021-08-03T16:36:34+08:00\"}', NULL, '2021-08-03 16:38:38', '2021-08-03 16:38:38');
INSERT INTO `notifications` VALUES (84, 'replied', 'App\\Models\\User', 31, '{\"user_id\":10,\"thread_id\":36,\"thread_username\":\"\\u5973\\u670b\\u53cb\\u8d85\\u53ef\\u7231\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:42:48+08:00\",\"post_id\":95,\"post_content\":\"\\u4e0d\\u77e5\\u9053\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:44:07+08:00\",\"is_first\":true}', NULL, '2021-08-03 16:44:07', '2021-08-03 16:44:07');
INSERT INTO `notifications` VALUES (85, 'replied', 'App\\Models\\User', 31, '{\"user_id\":10,\"thread_id\":35,\"thread_username\":\"\\u5973\\u670b\\u53cb\\u8d85\\u53ef\\u7231\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:39:48+08:00\",\"post_id\":96,\"post_content\":\"\\u5c01\\u4e0d\\u5c01\\u53f7\\u548c\\u6218\\u7ee9\\u6ca1\\u5565\\u5173\\u7cfb\\u3002\\u6211\\u4e24\\u5e74\\u524d\\u5927\\u53f7\\u83ab\\u540d\\u5176\\u5999\\u88ab\\u6c38\\u5c01\\u4e86\\uff0c\\u6700\\u8fd1\\u56de\\u5f52\\u73a9\\u5c0f\\u53f7\\u6ca1\\u51e0\\u5929\\u53c8\\u88ab\\u5c01\\u4e86\\uff0c\\u552f\\u4e00\\u8bf4\\u5f00\\u8fc7\\u7684\\u8f85\\u52a9\\u7c7b\\u7684\\u4e1c\\u897f\\u5c31\\u662f\\u6e38\\u620f\\u52a0\\u52a0\\u7684\\u6ee4\\u955c\\u548c\\u9f20\\u6807\\u9a71\\u52a8\\u81ea\\u5e26\\u7684\\u9f20\\u6807\\u8fde\\u70b9\\u4e86\\uff08\\u62ffm16\\u7684\\u65f6\\u5019\\u53ef\\u4ee5\\u5f53\\u5168\\u81ea\\u52a8\\u6253\\uff09\\uff0c\\u6ee1\\u5927\\u8857\\u90a3\\u4e48\\u591a\\u6302...\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:44:48+08:00\",\"is_first\":true}', NULL, '2021-08-03 16:44:48', '2021-08-03 16:44:48');
INSERT INTO `notifications` VALUES (86, 'replied', 'App\\Models\\User', 2, '{\"user_id\":8,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":98,\"post_content\":\"\\u602a\\u7269\\u730e\\u4eba\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:48:25+08:00\",\"is_first\":true}', '2021-08-06 10:19:59', '2021-08-03 16:48:25', '2021-08-06 10:19:59');
INSERT INTO `notifications` VALUES (87, 'system', 'App\\Models\\User', 32, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u591c\\u7ffcsunny\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-03 16:49:58', '2021-08-03 16:49:58');
INSERT INTO `notifications` VALUES (88, 'replied', 'App\\Models\\User', 8, '{\"user_id\":32,\"thread_id\":38,\"thread_username\":\"yihou\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:49:05+08:00\",\"post_id\":100,\"post_content\":\"\\u5934\\u6765\\u719f\\u6089\\u602a\\u7684\\u52a8\\u4f5c\\uff0c\\u77e5\\u9053\\u9f99\\u8f66\\u7684\\u9884\\u5b9a\\u505c\\u8f66\\u8ddd\\u79bb\\uff0c\\u77e5\\u9053\\u54ea\\u4e9b\\u8fd1\\u8eab\\u62db\\u5f0f\\u7684\\u653b\\u51fb\\u8303\\u56f4\\u80fd\\u8eb2\\u6389\\u63d0\\u524d\\u84c4\\u529b\\u5c31\\u53ef\\u4ee5\\u4e86\\uff0c\\u9664\\u4e86\\u5c11\\u90e8\\u5206\\u602a\\u6709\\u5c41\\u80a1\\u548c\\u4fa7\\u8eab\\u7a81\\u8fdb\\uff0c\\u5927\\u90e8\\u5206\\u602a\\u5728\\u6253\\u4f60\\u4e4b\\u524d\\u90fd\\u662f\\u4f1a\\u8f6c\\u5411\\u628a\\u5934\\u671d\\u7740\\u4f60\\u540e\\u624d\\u5f00\\u59cb\\u51fa\\u4e0b\\u4e00\\u62db\\u3002TA\\u90a3\\u66f4\\u591a\\u7684\\u662f\\u7b97\\u5200\\u786c\\u76f4...\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:50:35+08:00\",\"is_first\":true}', '2021-08-04 20:57:39', '2021-08-03 16:50:35', '2021-08-04 20:57:39');
INSERT INTO `notifications` VALUES (89, 'system', 'App\\Models\\User', 33, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u9634\\u5343\\u6742\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-03 20:06:58', '2021-08-03 16:53:31', '2021-08-03 20:06:58');
INSERT INTO `notifications` VALUES (90, 'replied', 'App\\Models\\User', 2, '{\"user_id\":33,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":102,\"post_content\":\"\\u641e\\u4e00\\u4e2a\\u8d44\\u8baf\\u5e16\\uff0c\\u53d1\\u4e00\\u4e9b\\u6700\\u65b0\\u6d88\\u606f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T16:59:28+08:00\",\"is_first\":true}', '2021-08-06 10:19:59', '2021-08-03 16:59:28', '2021-08-06 10:19:59');
INSERT INTO `notifications` VALUES (91, 'replied', 'App\\Models\\User', 32, '{\"user_id\":33,\"thread_id\":39,\"thread_username\":\"\\u591c\\u7ffcsunny\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:51:57+08:00\",\"post_id\":103,\"post_content\":\"\\u8fd8\\u884c\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-03T20:06:52+08:00\",\"is_first\":true}', NULL, '2021-08-03 20:06:52', '2021-08-03 20:06:52');
INSERT INTO `notifications` VALUES (92, 'replied', 'App\\Models\\User', 2, '{\"user_id\":12,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":106,\"post_content\":\"\\u4e3a\\u4ec0\\u4e48\\u53f3\\u8fb9\\u7684\\u63a8\\u8350\\u5185\\u5bb9\\u4e00\\u76f4\\u662f\\u7a7a\\u5462\\uff0c\\u52a0\\u4e00\\u70b9\\u4e1c\\u897f\\u5427\\uff0c\\u4e0d\\u7136\\u4e0d\\u597d\\u770b\\u7684\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T00:25:41+08:00\",\"is_first\":true}', '2021-08-06 10:19:59', '2021-08-04 00:25:41', '2021-08-06 10:19:59');
INSERT INTO `notifications` VALUES (93, 'system', 'App\\Models\\User', 34, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"k\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-04 18:54:52', '2021-08-04 18:52:20', '2021-08-04 18:54:52');
INSERT INTO `notifications` VALUES (94, 'system', 'App\\Models\\User', 35, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6ca1\\u6709\\u5927\\u54e5\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-04 20:44:44', '2021-08-04 20:31:11', '2021-08-04 20:44:44');
INSERT INTO `notifications` VALUES (95, 'replied', 'App\\Models\\User', 34, '{\"user_id\":35,\"thread_id\":41,\"thread_username\":\"k\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-04T18:53:39+08:00\",\"post_id\":108,\"post_content\":\"\\u5fd9\\u731cthread\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T20:31:51+08:00\",\"is_first\":true}', '2021-08-07 19:12:45', '2021-08-04 20:31:51', '2021-08-07 19:12:45');
INSERT INTO `notifications` VALUES (96, 'replied', 'App\\Models\\User', 34, '{\"user_id\":35,\"thread_id\":41,\"thread_username\":\"k\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-04T18:53:39+08:00\",\"post_id\":109,\"post_content\":\"\\u76f2\\u731cthread\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T20:32:07+08:00\",\"is_first\":true}', '2021-08-07 19:12:45', '2021-08-04 20:32:07', '2021-08-07 19:12:45');
INSERT INTO `notifications` VALUES (97, 'replied', 'App\\Models\\User', 2, '{\"user_id\":35,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":111,\"post_content\":\"\\u8d5b\\u535a\\u670b\\u514b\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T20:37:10+08:00\",\"is_first\":true}', '2021-08-06 10:19:59', '2021-08-04 20:37:10', '2021-08-06 10:19:59');
INSERT INTO `notifications` VALUES (98, 'system', 'App\\Models\\User', 36, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5c0f\\u54aa\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-04 20:38:37', '2021-08-04 20:38:37');
INSERT INTO `notifications` VALUES (99, 'replied', 'App\\Models\\User', 35, '{\"user_id\":36,\"thread_id\":42,\"thread_username\":\"\\u6ca1\\u6709\\u5927\\u54e5\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-04T20:36:49+08:00\",\"post_id\":112,\"post_content\":\"\\u641e\\u4e2aMOD\\u8fd8\\u4ed8\\u8d39\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T20:39:27+08:00\",\"is_first\":true}', '2021-08-04 20:44:46', '2021-08-04 20:39:27', '2021-08-04 20:44:46');
INSERT INTO `notifications` VALUES (100, 'replied', 'App\\Models\\User', 35, '{\"user_id\":36,\"thread_id\":42,\"thread_username\":\"\\u6ca1\\u6709\\u5927\\u54e5\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-04T20:36:49+08:00\",\"post_id\":113,\"post_content\":\"\\u641e\\u4e2aMOD\\u8fd8\\u8981\\u94b1\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T20:39:46+08:00\",\"is_first\":true}', '2021-08-04 20:44:46', '2021-08-04 20:39:46', '2021-08-04 20:44:46');
INSERT INTO `notifications` VALUES (101, 'replied', 'App\\Models\\User', 36, '{\"user_id\":8,\"thread_id\":43,\"thread_username\":\"\\u5c0f\\u54aa\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-04T20:43:51+08:00\",\"post_id\":115,\"post_content\":\"\\u4e0d\\u90fd\\u662f\\u8fd9\\u6837\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T20:46:18+08:00\",\"is_first\":true}', NULL, '2021-08-04 20:46:18', '2021-08-04 20:46:18');
INSERT INTO `notifications` VALUES (102, 'replied', 'App\\Models\\User', 36, '{\"user_id\":8,\"thread_id\":43,\"thread_username\":\"\\u5c0f\\u54aa\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-04T20:43:51+08:00\",\"post_id\":116,\"post_content\":\"csgo\\u96be\\u9053\\u4e0d\\u662f\\u5417\\uff0c\\u6e38\\u620f\\u5982\\u679c\\u51c9\\u4e86\\u5269\\u4e0b\\u7684\\u4e5f\\u90fd\\u662f\\u9ad8\\u624b\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T20:46:50+08:00\",\"is_first\":true}', NULL, '2021-08-04 20:46:51', '2021-08-04 20:46:51');
INSERT INTO `notifications` VALUES (103, 'replied', 'App\\Models\\User', 36, '{\"user_id\":8,\"thread_id\":43,\"thread_username\":\"\\u5c0f\\u54aa\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-04T20:43:51+08:00\",\"post_id\":117,\"post_content\":\"\\u65b0\\u624b\\u5f97\\u4e0d\\u5230\\u6e38\\u620f\\u4f53\\u9a8c\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T20:47:05+08:00\",\"is_first\":true}', NULL, '2021-08-04 20:47:05', '2021-08-04 20:47:05');
INSERT INTO `notifications` VALUES (104, 'replied', 'App\\Models\\User', 35, '{\"user_id\":8,\"thread_id\":42,\"thread_username\":\"\\u6ca1\\u6709\\u5927\\u54e5\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-04T20:36:49+08:00\",\"post_id\":119,\"post_content\":\"\\u4e00\\u4e2a\\u8bba\\u575b\\u4ed8\\u8d39\\u592a\\u8fc7\\u5206\\u4e86\\u5427\\uff0c\\u800c\\u4e14\\u4e5f\\u4e0d\\u662f\\u4f60\\u505a\\u7684\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T21:25:50+08:00\",\"is_first\":true}', NULL, '2021-08-04 21:25:50', '2021-08-04 21:25:50');
INSERT INTO `notifications` VALUES (105, 'replied', 'App\\Models\\User', 35, '{\"user_id\":8,\"thread_id\":42,\"thread_username\":\"\\u6ca1\\u6709\\u5927\\u54e5\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-04T20:36:49+08:00\",\"post_id\":120,\"post_content\":\"\\u642c\\u8fd0\\u4e00\\u4e0b\\u5c31\\u4ed8\\u8d39?\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-04T21:26:04+08:00\",\"is_first\":true}', NULL, '2021-08-04 21:26:04', '2021-08-04 21:26:04');
INSERT INTO `notifications` VALUES (106, 'liked', 'App\\Models\\User', 3, '{\"user_id\":8,\"thread_id\":1,\"thread_username\":\"Thread\",\"thread_title\":\"Java\\u9ad8\\u7ea7\\u5de5\\u7a0b\\u5e08\\u5b66\\u4e60\\u6d41\\u7a0b\",\"thread_created_at\":\"2021-08-01T00:39:43+08:00\",\"post_id\":1,\"post_content\":\"\\u4e00 \\u3001\\u5b66\\u4e60Servlet\\u548cTomcat\\n\\nServlet\\u7b2c\\u4e00\\u7bc7\\u3010\\u4ecb\\u7ecdServlet\\u3001HTTP\\u534f\\u8bae\\u3001WEB\\u76ee\\u5f55\\u7ed3\\u6784\\u3001\\u7f16\\u5199\\u5165\\u95e8Servlet\\u7a0b\\u5e8f\\u3001Servlet\\u751f\\u547d\\u5468\\u671f\\u3011\\nServlet\\u7b2c\\u4e8c\\u7bc7\\u3010Servl...\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T00:39:43+08:00\",\"is_first\":true}', '2021-08-05 13:27:52', '2021-08-04 21:26:50', '2021-08-05 13:27:52');
INSERT INTO `notifications` VALUES (107, 'system', 'App\\Models\\User', 37, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5f20\\u4e91\\u9f99\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-06 12:46:23', '2021-08-06 12:45:56', '2021-08-06 12:46:23');
INSERT INTO `notifications` VALUES (108, 'replied', 'App\\Models\\User', 2, '{\"user_id\":37,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":121,\"post_content\":\"\\u628a\\u7f51\\u7ad9\\u6e90\\u7801\\u7ed9\\u6211\\u5427\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T12:48:03+08:00\",\"is_first\":true}', '2021-08-06 14:57:57', '2021-08-06 12:48:03', '2021-08-06 14:57:57');
INSERT INTO `notifications` VALUES (109, 'system', 'App\\Models\\User', 38, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u661f\\u5149\\u6708\\u5b87\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-06 15:14:26', '2021-08-06 15:14:26');
INSERT INTO `notifications` VALUES (110, 'system', 'App\\Models\\User', 39, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u8fc2\\u5974\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-06 15:15:40', '2021-08-06 15:15:40');
INSERT INTO `notifications` VALUES (111, 'replied', 'App\\Models\\User', 31, '{\"user_id\":39,\"thread_id\":36,\"thread_username\":\"\\u5973\\u670b\\u53cb\\u8d85\\u53ef\\u7231\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:42:48+08:00\",\"post_id\":124,\"post_content\":\"\\u53ef\\u80fd\\u4f60\\u7535\\u8111\\u5783\\u573e\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:18:05+08:00\",\"is_first\":true}', NULL, '2021-08-06 15:18:05', '2021-08-06 15:18:05');
INSERT INTO `notifications` VALUES (112, 'replied', 'App\\Models\\User', 31, '{\"user_id\":39,\"thread_id\":35,\"thread_username\":\"\\u5973\\u670b\\u53cb\\u8d85\\u53ef\\u7231\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:39:48+08:00\",\"post_id\":125,\"post_content\":\"\\u8fd9\\u7b97\\u5565\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:18:24+08:00\",\"is_first\":true}', NULL, '2021-08-06 15:18:24', '2021-08-06 15:18:24');
INSERT INTO `notifications` VALUES (113, 'replied', 'App\\Models\\User', 28, '{\"user_id\":39,\"thread_id\":33,\"thread_username\":\"TEam\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:31:13+08:00\",\"post_id\":126,\"post_content\":\"\\u73a9GTA\\u5417\\uff0c\\u5e26\\u4f60\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:18:44+08:00\",\"is_first\":true}', NULL, '2021-08-06 15:18:44', '2021-08-06 15:18:44');
INSERT INTO `notifications` VALUES (114, 'system', 'App\\Models\\User', 40, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u9ece\\u660e\\u54e6\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-06 15:19:17', '2021-08-06 15:19:17');
INSERT INTO `notifications` VALUES (115, 'replied', 'App\\Models\\User', 26, '{\"user_id\":40,\"thread_id\":27,\"thread_username\":\"34645756756\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T20:29:10+08:00\",\"post_id\":127,\"post_content\":\"\\u79c1\\u804a\\u6211\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:19:55+08:00\",\"is_first\":true}', NULL, '2021-08-06 15:19:55', '2021-08-06 15:19:55');
INSERT INTO `notifications` VALUES (116, 'replied', 'App\\Models\\User', 24, '{\"user_id\":40,\"thread_id\":24,\"thread_username\":\"m_3b76ac733\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T16:32:29+08:00\",\"post_id\":128,\"post_content\":\"\\u5bf9\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:20:18+08:00\",\"is_first\":true}', NULL, '2021-08-06 15:20:18', '2021-08-06 15:20:18');
INSERT INTO `notifications` VALUES (117, 'replied', 'App\\Models\\User', 21, '{\"user_id\":40,\"thread_id\":22,\"thread_username\":\"fangun\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T15:34:28+08:00\",\"post_id\":129,\"post_content\":\"\\u738b\\u8005\\u5c31\\u662f\\u5783\\u573e\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:20:38+08:00\",\"is_first\":true}', NULL, '2021-08-06 15:20:38', '2021-08-06 15:20:38');
INSERT INTO `notifications` VALUES (118, 'replied', 'App\\Models\\User', 23, '{\"user_id\":40,\"thread_id\":23,\"thread_username\":\"moran\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T16:30:09+08:00\",\"post_id\":130,\"post_content\":\"\\u79c1\\u804a\\u6211\\u6211\\u5e26\\u4f60\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:21:04+08:00\",\"is_first\":true}', NULL, '2021-08-06 15:21:04', '2021-08-06 15:21:04');
INSERT INTO `notifications` VALUES (119, 'replied', 'App\\Models\\User', 40, '{\"user_id\":22,\"thread_id\":48,\"thread_username\":\"\\u9ece\\u660e\\u54e6\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-06T15:22:46+08:00\",\"post_id\":133,\"post_content\":\"LOL\\u4e0d\\u5c31\\u662f\\u5783\\u573e\\u6e38\\u620f\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:26:26+08:00\",\"is_first\":true}', NULL, '2021-08-06 15:26:26', '2021-08-06 15:26:26');
INSERT INTO `notifications` VALUES (120, 'replied', 'App\\Models\\User', 35, '{\"user_id\":8,\"thread_id\":42,\"thread_username\":\"\\u6ca1\\u6709\\u5927\\u54e5\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-04T20:36:49+08:00\",\"post_id\":136,\"post_content\":\"\\u4f60BB\\u4f60\\u5988\\u5462\",\"reply_post_id\":135,\"post_created_at\":\"2021-08-06T15:34:18+08:00\",\"is_first\":false,\"reply_post_user_id\":35,\"reply_post_content\":\"\\u90a3\\u4f60\\u4eec\\u81ea\\u5df1\\u53bb\\u642c\\u8fd0\\u554a\\uff0c\\u5728\\u8fd9BB\\u4ec0\\u4e48\",\"reply_post_created_at\":\"2021-08-06T15:32:57+08:00\"}', NULL, '2021-08-06 15:34:18', '2021-08-06 15:34:18');
INSERT INTO `notifications` VALUES (121, 'replied', 'App\\Models\\User', 3, '{\"user_id\":25,\"thread_id\":50,\"thread_username\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-06T15:46:19+08:00\",\"post_id\":138,\"post_content\":\"\\u4f60tm\\u8c01\\u963f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:48:34+08:00\",\"is_first\":true}', '2021-08-07 15:20:21', '2021-08-06 15:48:34', '2021-08-07 15:20:21');
INSERT INTO `notifications` VALUES (122, 'replied', 'App\\Models\\User', 3, '{\"user_id\":17,\"thread_id\":50,\"thread_username\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-06T15:46:19+08:00\",\"post_id\":139,\"post_content\":\"\\u4f60\\u7ba1\\u6211\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:49:17+08:00\",\"is_first\":true}', '2021-08-07 15:20:21', '2021-08-06 15:49:17', '2021-08-07 15:20:21');
INSERT INTO `notifications` VALUES (123, 'replied', 'App\\Models\\User', 3, '{\"user_id\":8,\"thread_id\":50,\"thread_username\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-06T15:46:19+08:00\",\"post_id\":140,\"post_content\":\"\\u4f60\\u4e00\\u4e2a\\u666e\\u901a\\u7528\\u6237\\u5728BB\\u4ec0\\u4e48\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T15:50:22+08:00\",\"is_first\":true}', '2021-08-07 15:20:21', '2021-08-06 15:50:22', '2021-08-07 15:20:21');
INSERT INTO `notifications` VALUES (124, 'replied', 'App\\Models\\User', 3, '{\"user_id\":8,\"thread_id\":51,\"thread_username\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-06T22:42:57+08:00\",\"post_id\":142,\"post_content\":\"\\u4e00\\u4e2a\\u666e\\u901a\\u7528\\u6237\\u4f60\\u5728\\u88c5\\u4ec0\\u4e48\\u554a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-06T22:45:32+08:00\",\"is_first\":true}', '2021-08-07 15:20:21', '2021-08-06 22:45:32', '2021-08-07 15:20:21');
INSERT INTO `notifications` VALUES (125, 'system', 'App\\Models\\User', 41, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u708e\\u5bfb\\u51b0\\u7684\\u6545\\u4e8b\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-07 16:05:02', '2021-08-07 16:05:02');
INSERT INTO `notifications` VALUES (126, 'system', 'App\\Models\\User', 42, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6211\\u7260ma\\u5f3a\\u624b\\u9885\\u88c2\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-07 16:07:46', '2021-08-07 16:07:46');
INSERT INTO `notifications` VALUES (127, 'replied', 'App\\Models\\User', 41, '{\"user_id\":42,\"thread_id\":53,\"thread_username\":\"\\u708e\\u5bfb\\u51b0\\u7684\\u6545\\u4e8b\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-07T16:06:50+08:00\",\"post_id\":145,\"post_content\":\"\\u522b\\u5676\\u9ed1\\uff0c\\u662f\\u94bb2\\u7406\\u89e3:liuhan:\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T16:08:49+08:00\",\"is_first\":true}', NULL, '2021-08-07 16:08:49', '2021-08-07 16:08:49');
INSERT INTO `notifications` VALUES (128, 'replied', 'App\\Models\\User', 2, '{\"user_id\":42,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":146,\"post_content\":\"\\u6211\\u4e5f\\u8981\\u7f51\\u7ad9\\u6e90\\u7801\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T16:09:20+08:00\",\"is_first\":true}', '2021-08-09 09:41:11', '2021-08-07 16:09:20', '2021-08-09 09:41:11');
INSERT INTO `notifications` VALUES (129, 'system', 'App\\Models\\User', 43, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"RemSilence\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-07 16:10:46', '2021-08-07 16:10:46');
INSERT INTO `notifications` VALUES (130, 'replied', 'App\\Models\\User', 42, '{\"user_id\":43,\"thread_id\":53,\"thread_username\":\"\\u708e\\u5bfb\\u51b0\\u7684\\u6545\\u4e8b\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-07T16:06:50+08:00\",\"post_id\":148,\"post_content\":\"\\u522b\\u5676\\u9ed1\\uff0c\\u4eba\\u5bb6\\u8bf4\\u7684\\u662f\\u201c\\u78162\\u201d:qiaoda:\",\"reply_post_id\":145,\"post_created_at\":\"2021-08-07T16:11:30+08:00\",\"is_first\":false,\"reply_post_user_id\":42,\"reply_post_content\":\"\\u522b\\u5676\\u9ed1\\uff0c\\u662f\\u94bb2\\u7406\\u89e3:liuhan:\",\"reply_post_created_at\":\"2021-08-07T16:08:49+08:00\"}', NULL, '2021-08-07 16:11:30', '2021-08-07 16:11:30');
INSERT INTO `notifications` VALUES (131, 'replied', 'App\\Models\\User', 2, '{\"user_id\":43,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":150,\"post_content\":\"\\u6e90\\u7801\\u8fd8\\u80fd\\u7ed9\\uff1f\\u90a3\\u6211\\u4e5f\\u8981\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T16:14:19+08:00\",\"is_first\":true}', '2021-08-09 09:41:11', '2021-08-07 16:14:19', '2021-08-09 09:41:11');
INSERT INTO `notifications` VALUES (132, 'replied', 'App\\Models\\User', 10, '{\"user_id\":43,\"thread_id\":37,\"thread_username\":\"nuanle\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-03T16:46:15+08:00\",\"post_id\":151,\"post_content\":\"\\u79c1\\u804a\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T16:14:48+08:00\",\"is_first\":true}', NULL, '2021-08-07 16:14:48', '2021-08-07 16:14:48');
INSERT INTO `notifications` VALUES (133, 'replied', 'App\\Models\\User', 4, '{\"user_id\":43,\"thread_id\":10,\"thread_username\":\"t-gar\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-01T12:40:17+08:00\",\"post_id\":152,\"post_content\":\"\\u79c1\\u804a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T16:15:26+08:00\",\"is_first\":true}', '2021-08-24 21:08:45', '2021-08-07 16:15:26', '2021-08-24 21:08:45');
INSERT INTO `notifications` VALUES (134, 'system', 'App\\Models\\User', 44, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u548c\\u67ab\\u6c90\\u53f6\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-07 16:16:13', '2021-08-07 16:16:13');
INSERT INTO `notifications` VALUES (135, 'replied', 'App\\Models\\User', 43, '{\"user_id\":44,\"thread_id\":55,\"thread_username\":\"RemSilence\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-07T16:13:49+08:00\",\"post_id\":153,\"post_content\":\"\\u5c0f\\u56e2\\u4f53\\u7a33\\u5b9a\\u5728\\u7ebf4=6\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T16:16:41+08:00\",\"is_first\":true}', NULL, '2021-08-07 16:16:41', '2021-08-07 16:16:41');
INSERT INTO `notifications` VALUES (136, 'replied', 'App\\Models\\User', 43, '{\"user_id\":44,\"thread_id\":55,\"thread_username\":\"RemSilence\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-07T16:13:49+08:00\",\"post_id\":154,\"post_content\":\"<p>5bUg1VwNTUlFRBAMDcAE99<\\/p>\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T16:16:49+08:00\",\"is_first\":true}', NULL, '2021-08-07 16:16:49', '2021-08-07 16:16:49');
INSERT INTO `notifications` VALUES (137, 'system', 'App\\Models\\User', 45, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6e05\\u6b4c\\u4e88\\u4f60\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-07 16:30:21', '2021-08-07 16:30:21');
INSERT INTO `notifications` VALUES (138, 'replied', 'App\\Models\\User', 2, '{\"user_id\":45,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":157,\"post_content\":\"\\u5e16\\u5b50\\u7c7b\\u578b\\u9009\\u62e9\\u505a\\u4e00\\u4e2a\\u591a\\u9009\\u6a21\\u5f0f\\uff0c\\u4e0d\\u7136\\u53d1\\u7684\\u5e16\\u5b50\\u5305\\u542b\\u4e24\\u4e2a\\u6e38\\u620f\\u600e\\u4e48\\u529e\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T16:33:28+08:00\",\"is_first\":true}', '2021-08-09 09:41:11', '2021-08-07 16:33:28', '2021-08-09 09:41:11');
INSERT INTO `notifications` VALUES (139, 'replied', 'App\\Models\\User', 5, '{\"user_id\":4,\"thread_id\":62,\"thread_username\":\"knuth\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-07T16:44:39+08:00\",\"post_id\":163,\"post_content\":\"NB\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T16:47:44+08:00\",\"is_first\":true}', NULL, '2021-08-07 16:47:44', '2021-08-07 16:47:44');
INSERT INTO `notifications` VALUES (140, 'replied', 'App\\Models\\User', 5, '{\"user_id\":34,\"thread_id\":62,\"thread_username\":\"knuth\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-07T16:44:39+08:00\",\"post_id\":164,\"post_content\":\"\\u4ec0\\u4e48\\u9b3c\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T16:49:03+08:00\",\"is_first\":true}', NULL, '2021-08-07 16:49:03', '2021-08-07 16:49:03');
INSERT INTO `notifications` VALUES (141, 'replied', 'App\\Models\\User', 2, '{\"user_id\":34,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":165,\"post_content\":\"\\u6e90\\u7801\\u4e5f\\u79c1\\u53d1\\u7ed9\\u6211\\u4e00\\u4efd\\u5427\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-07T22:29:39+08:00\",\"is_first\":true}', '2021-08-09 09:41:11', '2021-08-07 22:29:39', '2021-08-09 09:41:11');
INSERT INTO `notifications` VALUES (142, 'replied', 'App\\Models\\User', 2, '{\"user_id\":37,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":167,\"post_content\":\"\\u6e90\\u7801\\u79c1\\u804a\\u53d1\\u7ed9\\u6211\\u5c31\\u884c\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-08T12:40:06+08:00\",\"is_first\":true}', '2021-08-09 09:41:11', '2021-08-08 12:40:06', '2021-08-09 09:41:11');
INSERT INTO `notifications` VALUES (143, 'system', 'App\\Models\\User', 46, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4e00\\u888b\\u7c73\\u6297\\u51e0\\u55bd\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 13:48:13', '2021-08-09 13:48:13');
INSERT INTO `notifications` VALUES (144, 'system', 'App\\Models\\User', 47, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5357\\u660c\\u4e36\\u5927\\u9a6c\\u7334\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 13:49:51', '2021-08-09 13:49:51');
INSERT INTO `notifications` VALUES (145, 'replied', 'App\\Models\\User', 46, '{\"user_id\":47,\"thread_id\":64,\"thread_username\":\"\\u4e00\\u888b\\u7c73\\u6297\\u51e0\\u55bd\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:48:47+08:00\",\"post_id\":172,\"post_content\":\"\\u56de\\u4e0d\\u6765\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:50:53+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:50:54', '2021-08-09 13:50:54');
INSERT INTO `notifications` VALUES (146, 'system', 'App\\Models\\User', 48, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u7839-\\u82ef-\\u70ef\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 13:51:48', '2021-08-09 13:51:48');
INSERT INTO `notifications` VALUES (147, 'replied', 'App\\Models\\User', 47, '{\"user_id\":48,\"thread_id\":65,\"thread_username\":\"\\u5357\\u660c\\u4e36\\u5927\\u9a6c\\u7334\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:50:25+08:00\",\"post_id\":174,\"post_content\":\"\\u6ca1\\u6709\\u89c6\\u9891\\uff0c\\u4e0d\\u597d\\u5224\\u65ad\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:52:48+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:52:48', '2021-08-09 13:52:48');
INSERT INTO `notifications` VALUES (148, 'system', 'App\\Models\\User', 49, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6843\\u82b1\\u917f\\u9152\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 13:53:18', '2021-08-09 13:53:18');
INSERT INTO `notifications` VALUES (149, 'replied', 'App\\Models\\User', 48, '{\"user_id\":49,\"thread_id\":65,\"thread_username\":\"\\u5357\\u660c\\u4e36\\u5927\\u9a6c\\u7334\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:50:25+08:00\",\"post_id\":175,\"post_content\":\"\\u6b63\\u5e38\\u5bf9\\u5c40\\u8c01\\u4f1a\\u53bb\\u5f55\\u89c6\\u9891\\u554a\",\"reply_post_id\":174,\"post_created_at\":\"2021-08-09T13:53:55+08:00\",\"is_first\":false,\"reply_post_user_id\":48,\"reply_post_content\":\"\\u6ca1\\u6709\\u89c6\\u9891\\uff0c\\u4e0d\\u597d\\u5224\\u65ad\",\"reply_post_created_at\":\"2021-08-09T13:52:48+08:00\"}', NULL, '2021-08-09 13:53:56', '2021-08-09 13:53:56');
INSERT INTO `notifications` VALUES (150, 'replied', 'App\\Models\\User', 47, '{\"user_id\":49,\"thread_id\":65,\"thread_username\":\"\\u5357\\u660c\\u4e36\\u5927\\u9a6c\\u7334\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:50:25+08:00\",\"post_id\":176,\"post_content\":\"\\u8bf4\\u767d\\u4e86\\u817e\\u8baf\\u5c31\\u662f\\u6ca1\\u6709\\u68c0\\u6d4b\\u7684\\u80fd\\u529b \\u6709\\u4eba\\u4e3e\\u62a5\\u5c31\\u7b49\\u4e8e\\u4f60\\u6709\\u95ee\\u9898 \\u76f8\\u5f53\\u4e8e\\uff08\\u4f60\\u6ca1\\u95ee\\u9898\\u522b\\u4eba\\u4e3e\\u62a5\\u4f60\\u5e72\\u561b\\uff09\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:54:15+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:54:15', '2021-08-09 13:54:15');
INSERT INTO `notifications` VALUES (151, 'replied', 'App\\Models\\User', 48, '{\"user_id\":49,\"thread_id\":66,\"thread_username\":\"\\u7839-\\u82ef-\\u70ef\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:52:21+08:00\",\"post_id\":177,\"post_content\":\"\\u6211\\u60f3\\u4e0d\\u51fa\\u6765\\u600e\\u4e48\\u62d6\\u5230\\u5927\\u540e\\u671f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:54:39+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:54:40', '2021-08-09 13:54:40');
INSERT INTO `notifications` VALUES (152, 'replied', 'App\\Models\\User', 48, '{\"user_id\":8,\"thread_id\":66,\"thread_username\":\"\\u7839-\\u82ef-\\u70ef\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:52:21+08:00\",\"post_id\":179,\"post_content\":\"\\u88ab\\u4eba\\u5f53\\u72d7\\u6740\\u7684\\u9635\\u5bb9\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:55:59+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:55:59', '2021-08-09 13:55:59');
INSERT INTO `notifications` VALUES (153, 'replied', 'App\\Models\\User', 48, '{\"user_id\":8,\"thread_id\":66,\"thread_username\":\"\\u7839-\\u82ef-\\u70ef\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:52:21+08:00\",\"post_id\":180,\"post_content\":\"\\u54ea\\u6765\\u7684\\u5927\\u540e\\u671f\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:56:05+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:56:05', '2021-08-09 13:56:05');
INSERT INTO `notifications` VALUES (154, 'replied', 'App\\Models\\User', 48, '{\"user_id\":8,\"thread_id\":66,\"thread_username\":\"\\u7839-\\u82ef-\\u70ef\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:52:21+08:00\",\"post_id\":181,\"post_content\":\"\\u9664\\u4e86\\u8111\\u5b50\\u4e0d\\u6b63\\u5e38\\u7684\\uff0c\\u8fd9\\u56db\\u8def\\u4e0d\\u662f\\u90fd\\u88ab\\u7206\\u6740\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:56:09+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:56:09', '2021-08-09 13:56:09');
INSERT INTO `notifications` VALUES (155, 'replied', 'App\\Models\\User', 48, '{\"user_id\":16,\"thread_id\":66,\"thread_username\":\"\\u7839-\\u82ef-\\u70ef\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:52:21+08:00\",\"post_id\":182,\"post_content\":\"\\u8fd9\\uff0c\\u5bf9\\u9762\\u5927\\u540e\\u671f\\uff0c\\u4f60\\u8fd8\\u5728\\u524d\\u671f:xieyanxiao:\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:57:27+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:57:27', '2021-08-09 13:57:27');
INSERT INTO `notifications` VALUES (156, 'replied', 'App\\Models\\User', 48, '{\"user_id\":17,\"thread_id\":66,\"thread_username\":\"\\u7839-\\u82ef-\\u70ef\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:52:21+08:00\",\"post_id\":183,\"post_content\":\"\\u4f60\\u62ff\\u5c0f\\u6cd5\\u6211\\u8981\\u7b11\\u51fa\\u58f0\\u3002\\u6253\\u91ce\\u4e0d\\u6765\\u4f60\\u6ca1\\u6709\\u5355\\u6740\\u6211\\u7684\\u53ef\\u80fd\\u3002\\u4f60\\u7684w\\u51e0\\u4e4e\\u6ca1\\u6709\\u4efb\\u4f55\\u7528\\u5904\\u3002\\u53cd\\u800c\\u6211\\u6740\\u4f60\\u7b80\\u7b80\\u5355\\u5355\\u3002\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:58:14+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:58:15', '2021-08-09 13:58:15');
INSERT INTO `notifications` VALUES (157, 'replied', 'App\\Models\\User', 48, '{\"user_id\":17,\"thread_id\":66,\"thread_username\":\"\\u7839-\\u82ef-\\u70ef\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:52:21+08:00\",\"post_id\":184,\"post_content\":\"\\u6491\\u8fc715\\u4e0d\\u6295\\u964d\\u5c31\\u7b97\\u6210\\u529f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:58:41+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:58:41', '2021-08-09 13:58:41');
INSERT INTO `notifications` VALUES (158, 'replied', 'App\\Models\\User', 48, '{\"user_id\":17,\"thread_id\":66,\"thread_username\":\"\\u7839-\\u82ef-\\u70ef\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:52:21+08:00\",\"post_id\":185,\"post_content\":\"S6\\u8fd8\\u6709\\u53ef\\u80fd\\uff0c\\u56e0\\u4e3a\\u90a3\\u65f6\\u5019\\u8282\\u594f\\u6162\\u3002\\u73b0\\u5728\\u4e0d\\u5f97\\u5c4e\\u90fd\\u6253\\u51fa\\u6765\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T13:59:00+08:00\",\"is_first\":true}', NULL, '2021-08-09 13:59:00', '2021-08-09 13:59:00');
INSERT INTO `notifications` VALUES (159, 'replied', 'App\\Models\\User', 2, '{\"user_id\":22,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":186,\"post_content\":\"\\u4e3e\\u62a5\\u90fd\\u4e0d\\u53d7\\u7406\\u7684\\u5417\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T14:01:31+08:00\",\"is_first\":true}', '2021-08-09 15:09:42', '2021-08-09 14:01:31', '2021-08-09 15:09:42');
INSERT INTO `notifications` VALUES (160, 'replied', 'App\\Models\\User', 2, '{\"user_id\":22,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":187,\"post_content\":\"\\u9a82\\u4eba\\u90fd\\u4e0d\\u80fd\\u4e3e\\u62a5\\u6210\\u529f\\u554a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T14:01:48+08:00\",\"is_first\":true}', '2021-08-09 15:09:42', '2021-08-09 14:01:48', '2021-08-09 15:09:42');
INSERT INTO `notifications` VALUES (161, 'system', 'App\\Models\\User', 25, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"longtai\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"<p>\\u4e00\\u5f00\\u59cb\\u63d0\\u793a\\u7f3a\\u5c11xinput1_3\\uff0c\\u4e0b\\u8f7d\\u540e\\u53c8\\u63d0\\u793a0xc00007b\\uff0c\\u767e\\u5ea6\\u4e86\\u4e00\\u4e0b\\u540e\\u8865\\u5b89\\u88c5\\u4e86DX9.0c\\u8fd8\\u662f\\u8fd9\\u6837\\uff1f\\u5927\\u795e\\u4eec\\u5e2e\\u5e2e\\u5fd9\\u662f\\u548b\\u56de\\u4e8b\\uff1f \\u6211\\u73a92077\\u53ef\\u4ee5\\u8fd0\\u884c<\\/p>\\n \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\\u65e0\",\"raw\":{\"tpl_id\":6},\"thread_id\":31}', NULL, '2021-08-09 15:22:58', '2021-08-09 15:22:58');
INSERT INTO `notifications` VALUES (162, 'system', 'App\\Models\\User', 22, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"XY15721572421\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"\\u6284\\u88ad\\u6211\\u4e5f\\u7231 \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\\u65e0\",\"raw\":{\"tpl_id\":6},\"thread_id\":22}', NULL, '2021-08-09 15:28:14', '2021-08-09 15:28:14');
INSERT INTO `notifications` VALUES (163, 'system', 'App\\Models\\User', 2, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Jerome\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"<p>\\u6709\\u4ec0\\u4e48\\u60f3\\u52a0\\u7684\\u677f\\u5757\\u3001\\u5206\\u7c7b\\u3001\\u529f\\u80fd\\u90fd\\u53ef\\u4ee5\\u79c1\\u4fe1\\u6211\\u54df~<\\/p>\\n\\\" \\u5df2\\u88ab\\u8bbe\\u4e3a\\u7cbe\\u54c1\\u5e16\\uff0c\\u60a8\\u5df2\\u5411\\u7cbe\\u54c1\\u4f5c\\u8005\\u8fdb\\u53d1\\u3002\",\"raw\":{\"tpl_id\":7},\"thread_id\":16}', '2021-08-09 15:41:13', '2021-08-09 15:40:49', '2021-08-09 15:41:13');
INSERT INTO `notifications` VALUES (164, 'system', 'App\\Models\\User', 50, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u795e\\u5723\\u7684\\u6b7b\\u4ea1\\u9a91\\u58eb\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 17:26:11', '2021-08-09 17:26:11');
INSERT INTO `notifications` VALUES (165, 'replied', 'App\\Models\\User', 49, '{\"user_id\":50,\"thread_id\":67,\"thread_username\":\"\\u6843\\u82b1\\u917f\\u9152\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T13:55:15+08:00\",\"post_id\":189,\"post_content\":\"\\u6ca1\\u8bbe\\u7f6e\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T17:47:08+08:00\",\"is_first\":true}', NULL, '2021-08-09 17:47:09', '2021-08-09 17:47:09');
INSERT INTO `notifications` VALUES (166, 'system', 'App\\Models\\User', 51, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"-\\u5168\\u606f\\u73ab\\u7470\\u788e\\u7247\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 17:48:41', '2021-08-09 17:48:41');
INSERT INTO `notifications` VALUES (167, 'replied', 'App\\Models\\User', 50, '{\"user_id\":51,\"thread_id\":68,\"thread_username\":\"\\u795e\\u5723\\u7684\\u6b7b\\u4ea1\\u9a91\\u58eb\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T17:26:59+08:00\",\"post_id\":190,\"post_content\":\"\\u4e0d\\u540c\\u7684\\u8d5b\\u535a\\u670b\\u514b\\u8bbe\\u5b9a\\u4e0d\\u4e00\\u6837\\uff0c\\u73b0\\u5728\\u7684\\u591c\\u4e4b\\u57ce\\u8fd8\\u662f\\u5728\\u539f\\u7248\\u8bbe\\u5b9a\\u63a8\\u8fdf\\u4e86\\u51e0\\u5341\\u5e74\\u624d\\u6709\\u8fd9\\u4e48\\u591a\\u9ad8\\u697c\\uff0c\\u4e0d\\u7136\\u57fa\\u672c\\u548c\\u73b0\\u4ee3\\u6ca1\\u533a\\u522b\\uff0c\\u4f60\\u8981\\u7684\\u90a3\\u79cd\\u53ef\\u4ee5\\u770b\\u7f8e\\u5267\\u526f\\u672c\\uff0c\\u6e38\\u620f\\u6ca1\\u6709\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T17:49:04+08:00\",\"is_first\":true}', NULL, '2021-08-09 17:49:04', '2021-08-09 17:49:04');
INSERT INTO `notifications` VALUES (168, 'system', 'App\\Models\\User', 52, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"YHCS9\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 17:50:32', '2021-08-09 17:50:32');
INSERT INTO `notifications` VALUES (169, 'replied', 'App\\Models\\User', 51, '{\"user_id\":52,\"thread_id\":69,\"thread_username\":\"-\\u5168\\u606f\\u73ab\\u7470\\u788e\\u7247\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T17:50:07+08:00\",\"post_id\":192,\"post_content\":\"\\u8fd9\\u6e38\\u620f\\u672c\\u6765\\u5c31\\u5783\\u573e\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T17:51:10+08:00\",\"is_first\":true}', NULL, '2021-08-09 17:51:10', '2021-08-09 17:51:10');
INSERT INTO `notifications` VALUES (170, 'system', 'App\\Models\\User', 53, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u9ed1\\u679c\\u5b50\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 17:52:37', '2021-08-09 17:52:37');
INSERT INTO `notifications` VALUES (171, 'system', 'App\\Models\\User', 54, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u771f\\u5fc3\\u7d2f\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 17:53:39', '2021-08-09 17:53:39');
INSERT INTO `notifications` VALUES (172, 'replied', 'App\\Models\\User', 53, '{\"user_id\":54,\"thread_id\":71,\"thread_username\":\"\\u9ed1\\u679c\\u5b50\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T17:53:10+08:00\",\"post_id\":195,\"post_content\":\"\\u90a3\\u4e2a\\u670d\\u52a1\\u5668\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T17:54:09+08:00\",\"is_first\":true}', NULL, '2021-08-09 17:54:09', '2021-08-09 17:54:09');
INSERT INTO `notifications` VALUES (173, 'system', 'App\\Models\\User', 55, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"limbshadow2013\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 17:55:22', '2021-08-09 17:55:22');
INSERT INTO `notifications` VALUES (174, 'system', 'App\\Models\\User', 56, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5251\\u4e44\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 18:01:36', '2021-08-09 18:01:36');
INSERT INTO `notifications` VALUES (175, 'replied', 'App\\Models\\User', 55, '{\"user_id\":56,\"thread_id\":73,\"thread_username\":\"limbshadow2013\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T17:56:57+08:00\",\"post_id\":200,\"post_content\":\"\\u5783\\u573e\\u738b\\u8005\\u54ea\\u6709\\u90a3\\u4e48\\u591a\\u82b1\\u91cc\\u80e1\\u54e8\\u7684\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T18:03:40+08:00\",\"is_first\":true}', NULL, '2021-08-09 18:03:40', '2021-08-09 18:03:40');
INSERT INTO `notifications` VALUES (176, 'replied', 'App\\Models\\User', 55, '{\"user_id\":56,\"thread_id\":73,\"thread_username\":\"limbshadow2013\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T17:56:57+08:00\",\"post_id\":201,\"post_content\":\"\\u7528\\u811a\\u6253\\u90fd\\u80fd\\u4e0a\\u738b\\u8005\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T18:03:51+08:00\",\"is_first\":true}', NULL, '2021-08-09 18:03:51', '2021-08-09 18:03:51');
INSERT INTO `notifications` VALUES (177, 'system', 'App\\Models\\User', 57, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u9c7c\\u9c7c\\u8fb0joke\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-09 18:05:24', '2021-08-09 18:05:24');
INSERT INTO `notifications` VALUES (178, 'replied', 'App\\Models\\User', 55, '{\"user_id\":57,\"thread_id\":73,\"thread_username\":\"limbshadow2013\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T17:56:57+08:00\",\"post_id\":203,\"post_content\":\"\\u7136\\u540e\\u5462\\uff1f\\u4e0d\\u8fd8\\u662f\\u5783\\u573e\\u6e38\\u620f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T18:06:37+08:00\",\"is_first\":true}', NULL, '2021-08-09 18:06:37', '2021-08-09 18:06:37');
INSERT INTO `notifications` VALUES (179, 'replied', 'App\\Models\\User', 56, '{\"user_id\":57,\"thread_id\":74,\"thread_username\":\"\\u5251\\u4e44\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-09T18:02:51+08:00\",\"post_id\":204,\"post_content\":\"\\u6211\\u53ef\\u4ee5\\u514d\\u8d39\\u7ed9\\u4f60\\u4e00\\u4e2a\\u53f7\\uff0c\\u79c1\\u804a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-09T18:07:03+08:00\",\"is_first\":true}', NULL, '2021-08-09 18:07:03', '2021-08-09 18:07:03');
INSERT INTO `notifications` VALUES (180, 'replied', 'App\\Models\\User', 2, '{\"user_id\":3,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":206,\"post_content\":\"http:\\/\\/207.148.72.116:8888\\/810145a3\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-10T00:49:51+08:00\",\"is_first\":true}', '2021-08-10 10:42:54', '2021-08-10 00:49:51', '2021-08-10 10:42:54');
INSERT INTO `notifications` VALUES (181, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Thread\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"http:\\/\\/207.148.72.116:8888\\/810145a3 \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\\u65e0\",\"raw\":{\"tpl_id\":6},\"thread_id\":16}', '2021-08-11 10:49:37', '2021-08-10 10:43:12', '2021-08-11 10:49:37');
INSERT INTO `notifications` VALUES (182, 'system', 'App\\Models\\User', 58, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u786c\\u5e01\\u5149\\u7ea40-\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-10 22:53:04', '2021-08-10 22:53:04');
INSERT INTO `notifications` VALUES (183, 'replied', 'App\\Models\\User', 58, '{\"user_id\":56,\"thread_id\":77,\"thread_username\":\"\\u786c\\u5e01\\u5149\\u7ea40-\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-10T22:54:05+08:00\",\"post_id\":209,\"post_content\":\"\\u540c\\u60c5\\u697c\\u4e3b\\uff0c\\u6211\\u4e5f\\u4e0d\\u77e5\\u9053\\u600e\\u4e48\\u89e3\\u51b3\\uff0c\\u6211\\u7528pcl2\\u542f\\u52a8\\u5668\\u7684\\u65f6\\u5019\\uff0c\\u4e0b\\u8f7d\\u9875\\u9762\\u76f4\\u63a5\\u628aoptifine forge......\\u7684\\u9009\\u9879\\u5168\\u9009\\u4e0a\\uff0c\\u4e5f\\u80fd\\u73a9\\uff0c\\u8981\\u4e0d\\u697c\\u4e3b\\u4e5f\\u8bd5\\u8bd5pcl2&hmcl\\u90a3\\u4e9b\\u542f\\u52a8\\u5668\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-10T22:55:30+08:00\",\"is_first\":true}', NULL, '2021-08-10 22:55:31', '2021-08-10 22:55:31');
INSERT INTO `notifications` VALUES (184, 'system', 'App\\Models\\User', 59, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u865a\\u5f71\\u8f6e\\u56de\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-10 23:00:51', '2021-08-10 23:00:51');
INSERT INTO `notifications` VALUES (185, 'replied', 'App\\Models\\User', 57, '{\"user_id\":59,\"thread_id\":78,\"thread_username\":\"\\u9c7c\\u9c7c\\u8fb0joke\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-10T23:00:08+08:00\",\"post_id\":212,\"post_content\":\"\\u5927\\u54e5\\uff0c\\u4f60\\u786e\\u5b9a\\u4f60\\u7684\\u670d\\u52a1\\u5668\\u8fd8\\u5f00\\u7740\\u4e48\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-10T23:02:24+08:00\",\"is_first\":true}', NULL, '2021-08-10 23:02:24', '2021-08-10 23:02:24');
INSERT INTO `notifications` VALUES (186, 'system', 'App\\Models\\User', 60, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u963f\\u4f1f\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-10 23:07:14', '2021-08-10 23:07:14');
INSERT INTO `notifications` VALUES (187, 'replied', 'App\\Models\\User', 33, '{\"user_id\":60,\"thread_id\":80,\"thread_username\":\"\\u9634\\u5343\\u6742\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-10T23:05:56+08:00\",\"post_id\":214,\"post_content\":\"<p>\\u6027\\u683c\\u5f88\\u8f6f\\u5c31\\u7b97\\u4e86\\u2026\\u6211\\u5bf9\\u8c61\\u6559\\u821e\\u8e48\\u7684\\uff0c\\u8fd8\\u7ec3\\u8dc6\\u62f3\\u9053\\uff0c\\u6211\\u4eec\\u4e00\\u8d77\\u73a9\\u7684\\u602a\\u7269\\u730e\\u4eba\\uff0c\\u4ec1\\u738b2\\uff0c\\u547d\\u8fd02\\uff0c\\u4f60\\u53ef\\u4ee5\\u8bd5\\u8bd5\\u53cc\\u4eba\\u6210\\u884c\\uff0c\\u80e1\\u95f9\\u53a8\\u623f<\\/p>\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-10T23:08:09+08:00\",\"is_first\":true}', NULL, '2021-08-10 23:08:09', '2021-08-10 23:08:09');
INSERT INTO `notifications` VALUES (188, 'system', 'App\\Models\\User', 61, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"hk5123\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-10 23:09:32', '2021-08-10 23:09:32');
INSERT INTO `notifications` VALUES (189, 'replied', 'App\\Models\\User', 33, '{\"user_id\":61,\"thread_id\":80,\"thread_username\":\"\\u9634\\u5343\\u6742\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-10T23:05:56+08:00\",\"post_id\":217,\"post_content\":\"\\u5e26\\u5979\\u73a9\\u53cc\\u4eba\\u6210\\u884c\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-10T23:11:21+08:00\",\"is_first\":true}', NULL, '2021-08-10 23:11:21', '2021-08-10 23:11:21');
INSERT INTO `notifications` VALUES (190, 'replied', 'App\\Models\\User', 60, '{\"user_id\":61,\"thread_id\":81,\"thread_username\":\"\\u963f\\u4f1f\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-10T23:08:51+08:00\",\"post_id\":218,\"post_content\":\"\\u6211\\u4e5f\\u662f \\u4eca\\u5929\\u521a\\u6c38\\u5c01 \\u621119\\u5e74\\u73a9\\u7684 3000\\u5c0f\\u65f6 \\u4ece\\u6765\\u6ca1\\u5f00\\u4efb\\u4f55\\u8f85\\u52a9 \\u5c31\\u79bb\\u8c31\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-10T23:11:38+08:00\",\"is_first\":true}', NULL, '2021-08-10 23:11:38', '2021-08-10 23:11:38');
INSERT INTO `notifications` VALUES (191, 'system', 'App\\Models\\User', 62, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5584\\u826f\\u7684Serb\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-10 23:55:15', '2021-08-10 23:55:15');
INSERT INTO `notifications` VALUES (192, 'replied', 'App\\Models\\User', 61, '{\"user_id\":62,\"thread_id\":82,\"thread_username\":\"hk5123\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-10T23:10:46+08:00\",\"post_id\":222,\"post_content\":\"\\u79c1\\u804a\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-10T23:56:21+08:00\",\"is_first\":true}', NULL, '2021-08-10 23:56:21', '2021-08-10 23:56:21');
INSERT INTO `notifications` VALUES (193, 'system', 'App\\Models\\User', 63, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5077\\u730e\\u8005\\u534f\\u4f1a\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-10 23:58:01', '2021-08-10 23:58:01');
INSERT INTO `notifications` VALUES (194, 'replied', 'App\\Models\\User', 2, '{\"user_id\":63,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":225,\"post_content\":\"\\u66f4\\u65b0\\u4e00\\u4e2a\\u4ea4\\u6613\\u533a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-10T23:59:52+08:00\",\"is_first\":true}', '2021-08-11 10:53:44', '2021-08-10 23:59:52', '2021-08-11 10:53:44');
INSERT INTO `notifications` VALUES (195, 'system', 'App\\Models\\User', 64, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u77ee\\u6bdb\\u6bdb\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-11 00:00:35', '2021-08-11 00:00:35');
INSERT INTO `notifications` VALUES (196, 'replied', 'App\\Models\\User', 63, '{\"user_id\":64,\"thread_id\":85,\"thread_username\":\"\\u5077\\u730e\\u8005\\u534f\\u4f1a\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-10T23:59:26+08:00\",\"post_id\":228,\"post_content\":\"\\u722a\\u5b50\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-11T00:03:43+08:00\",\"is_first\":true}', NULL, '2021-08-11 00:03:43', '2021-08-11 00:03:43');
INSERT INTO `notifications` VALUES (197, 'system', 'App\\Models\\User', 65, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u671f\\u8bb8\\u4eba\\u751f\\u5982\\u4e09\\u6708\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-11 00:04:58', '2021-08-11 00:04:58');
INSERT INTO `notifications` VALUES (198, 'replied', 'App\\Models\\User', 64, '{\"user_id\":65,\"thread_id\":86,\"thread_username\":\"\\u77ee\\u6bdb\\u6bdb\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-11T00:03:10+08:00\",\"post_id\":230,\"post_content\":\"\\u6211\\u4e5f\\u662f\\u8fd9\\u6837\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-11T00:05:53+08:00\",\"is_first\":true}', NULL, '2021-08-11 00:05:53', '2021-08-11 00:05:53');
INSERT INTO `notifications` VALUES (199, 'system', 'App\\Models\\User', 66, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5c0f\\u4f0a\\u5bfb\\u5b9d\\u65e5\\u8bb0\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-11 00:07:15', '2021-08-11 00:07:15');
INSERT INTO `notifications` VALUES (200, 'system', 'App\\Models\\User', 2, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Jerome\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"\\u5168\\u7aef\\u524d\\u53f0\\u4f18\\u5316\\u4e0e\\u4fee\\u590d\\n\\n\\u6dfb\\u52a0\\u516c\\u5b89\\u5907\\u6848\\u4fe1\\u606f\\u30022. \\u4fee\\u590d\\u540e\\u53f0\\u4e0d\\u8bbe\\u7f6e\\u516c\\u5b89\\u5907\\u6848\\u4fe1\\u606f\\u7684\\u8bdd\\uff0cpc\\u9996\\u9875\\u53f3\\u4e0b\\u89d2\\u7f51\\u7ad9\\u5907\\u6848\\u4fe1\\u606f\\u4e0d\\u663e\\u793a\\u30023. \\u4fee\\u590d\\u56fe\\u6587\\u6df7\\u6392\\u65f6\\u53d1\\u5e03\\u4e00\\u5f20\\u957f\\u56fe\\uff0c\\u6ca1\\u6709\\u5bf9\\u957f\\u56fe\\u6298\\u53e0\\u8fc7\\u957f\\u7684\\u5185\\u5bb9\\u30024. \\u4fee\\u590d H5 \\u624b\\u673a\\u5916\\u90e8\\u6d4f...\\\" \\u5df2\\u88ab\\u8bbe\\u4e3a\\u7cbe\\u54c1\\u5e16\\uff0c\\u60a8\\u5df2\\u5411\\u7cbe\\u54c1\\u4f5c\\u8005\\u8fdb\\u53d1\\u3002\",\"raw\":{\"tpl_id\":7},\"thread_id\":89}', '2021-08-11 19:24:16', '2021-08-11 19:23:41', '2021-08-11 19:24:16');
INSERT INTO `notifications` VALUES (201, 'replied', 'App\\Models\\User', 2, '{\"user_id\":8,\"thread_id\":89,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-11T19:22:52+08:00\",\"post_id\":233,\"post_content\":\"OK\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-11T21:57:09+08:00\",\"is_first\":true}', '2021-08-12 10:52:12', '2021-08-11 21:57:09', '2021-08-12 10:52:12');
INSERT INTO `notifications` VALUES (202, 'replied', 'App\\Models\\User', 2, '{\"user_id\":8,\"thread_id\":89,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-11T19:22:52+08:00\",\"post_id\":234,\"post_content\":\"\\u4e3a\\u4ec0\\u4e48\\u4e0d\\u5220\\u6389\\u90a3\\u4e2a\\u88c5\\u7ba1\\u7406\\u53d1\\u5e16\\u7684\\u5e16\\u5b50\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-11T21:57:41+08:00\",\"is_first\":true}', '2021-08-12 10:52:12', '2021-08-11 21:57:41', '2021-08-12 10:52:12');
INSERT INTO `notifications` VALUES (203, 'replied', 'App\\Models\\User', 2, '{\"user_id\":8,\"thread_id\":89,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-11T19:22:52+08:00\",\"post_id\":235,\"post_content\":\"<span id=\\\"member\\\" value=\\\"3\\\">@Thread<\\/span>\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-11T21:57:56+08:00\",\"is_first\":true}', '2021-08-12 10:52:12', '2021-08-11 21:57:56', '2021-08-12 10:52:12');
INSERT INTO `notifications` VALUES (204, 'related', 'App\\Models\\User', 3, '{\"user_id\":8,\"thread_id\":89,\"thread_username\":\"Jerome\",\"thread_title\":\"\\u7f51\\u7ad9\\u4f18\\u5316\\u5185\\u5bb9\",\"thread_created_at\":\"2021-08-11T19:22:52+08:00\",\"post_id\":235,\"post_content\":\"<span id=\\\"member\\\" value=\\\"3\\\">@Thread<\\/span>\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-11T21:57:56+08:00\"}', '2021-08-12 01:18:06', '2021-08-11 21:57:56', '2021-08-12 01:18:06');
INSERT INTO `notifications` VALUES (205, 'system', 'App\\Models\\User', 67, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"Mi\\u968f\\u98ce\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-12 14:49:26', '2021-08-12 14:49:26');
INSERT INTO `notifications` VALUES (206, 'replied', 'App\\Models\\User', 2, '{\"user_id\":67,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":238,\"post_content\":\"\\u4fee\\u590d\\u4e00\\u4e0bBUG\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T14:51:45+08:00\",\"is_first\":true}', '2021-08-12 15:06:00', '2021-08-12 14:51:45', '2021-08-12 15:06:00');
INSERT INTO `notifications` VALUES (207, 'system', 'App\\Models\\User', 68, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6458\\u5c0f\\u592a\\u9633\\u7ed9\\u4f60\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-12 14:52:06', '2021-08-12 14:52:06');
INSERT INTO `notifications` VALUES (208, 'replied', 'App\\Models\\User', 67, '{\"user_id\":68,\"thread_id\":90,\"thread_username\":\"Mi\\u968f\\u98ce\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T14:50:05+08:00\",\"post_id\":239,\"post_content\":\"\\u524d\\u6392\\u63d0\\u793a\\u7b49\\u7ea7\\u3002\\u4e9a\\u7d22\\u4e0d\\u5c31\\u6076\\u5fc3\\u4e00\\u4e0b\\u73a9\\u5339\\u914d\\u7684\\u6cd5\\u5e08\\uff1f\\uff1f\\uff1f\\u6211\\u9009\\u4e2a\\u8155\\u8c6a\\u9cc4\\u9c7c\\uff0c\\u4f60\\u4e9a\\u7d22\\u80fd\\u5e72\\u561b\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T14:52:35+08:00\",\"is_first\":true}', NULL, '2021-08-12 14:52:35', '2021-08-12 14:52:35');
INSERT INTO `notifications` VALUES (209, 'replied', 'App\\Models\\User', 2, '{\"user_id\":68,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":241,\"post_content\":\"\\u66f4\\u65b0\\u70b9\\u63d2\\u4ef6\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T14:54:35+08:00\",\"is_first\":true}', '2021-08-12 15:06:00', '2021-08-12 14:54:35', '2021-08-12 15:06:00');
INSERT INTO `notifications` VALUES (210, 'system', 'App\\Models\\User', 69, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u8a00\\u8bed-\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-12 14:57:16', '2021-08-12 14:57:16');
INSERT INTO `notifications` VALUES (211, 'replied', 'App\\Models\\User', 68, '{\"user_id\":69,\"thread_id\":92,\"thread_username\":\"\\u6458\\u5c0f\\u592a\\u9633\\u7ed9\\u4f60\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T14:56:31+08:00\",\"post_id\":244,\"post_content\":\"\\u7537\\u7684\\u5973\\u7684\\uff0c\\u7537\\u7684\\u4e0d\\u73a9\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T14:58:20+08:00\",\"is_first\":true}', NULL, '2021-08-12 14:58:20', '2021-08-12 14:58:20');
INSERT INTO `notifications` VALUES (212, 'replied', 'App\\Models\\User', 68, '{\"user_id\":69,\"thread_id\":91,\"thread_username\":\"\\u6458\\u5c0f\\u592a\\u9633\\u7ed9\\u4f60\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T14:52:53+08:00\",\"post_id\":245,\"post_content\":\"\\u6211\\u4e5f\\u662f\\u554a\\uff0c\\u7136\\u540e\\u4e0d\\u77e5\\u9053\\u548b\\u6309\\u6309\\u5c31\\u53c8\\u597d\\u4e86 \\uff0c\\u4f60\\u628awegame\\u5173\\u4e86\\u770b\\u770b\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T14:58:30+08:00\",\"is_first\":true}', NULL, '2021-08-12 14:58:30', '2021-08-12 14:58:30');
INSERT INTO `notifications` VALUES (213, 'replied', 'App\\Models\\User', 2, '{\"user_id\":69,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":247,\"post_content\":\"\\u66f4\\u65b0\\u8df3\\u8f6c\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T14:59:43+08:00\",\"is_first\":true}', '2021-08-12 15:06:00', '2021-08-12 14:59:43', '2021-08-12 15:06:00');
INSERT INTO `notifications` VALUES (214, 'system', 'App\\Models\\User', 70, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u9e23\\u6211\\u7684\\u4e00\\u751f\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-12 15:00:13', '2021-08-12 15:00:13');
INSERT INTO `notifications` VALUES (215, 'replied', 'App\\Models\\User', 69, '{\"user_id\":70,\"thread_id\":94,\"thread_username\":\"\\u8a00\\u8bed-\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T14:59:15+08:00\",\"post_id\":249,\"post_content\":\"\\u5783\\u573e\\u6e38\\u620f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:01:13+08:00\",\"is_first\":true}', NULL, '2021-08-12 15:01:13', '2021-08-12 15:01:13');
INSERT INTO `notifications` VALUES (216, 'replied', 'App\\Models\\User', 2, '{\"user_id\":70,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":250,\"post_content\":\"\\u66f4\\u65b0\\u624b\\u673a\\u7f51\\u7ad9\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:01:32+08:00\",\"is_first\":true}', '2021-08-12 15:06:00', '2021-08-12 15:01:32', '2021-08-12 15:06:00');
INSERT INTO `notifications` VALUES (217, 'system', 'App\\Models\\User', 71, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"conglai\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-12 15:04:23', '2021-08-12 15:04:23');
INSERT INTO `notifications` VALUES (218, 'system', 'App\\Models\\User', 72, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4e37\\u70c1\\u91d1\\u91d1\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-12 15:06:16', '2021-08-12 15:06:16');
INSERT INTO `notifications` VALUES (219, 'replied', 'App\\Models\\User', 71, '{\"user_id\":72,\"thread_id\":96,\"thread_username\":\"conglai\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:05:32+08:00\",\"post_id\":254,\"post_content\":\"\\u53ef\\u80fd\\u662fbug\\uff0c\\u6211\\u4e4b\\u524d\\u4e5f\\u662f\\u8fd9\\u6837\\uff0c\\u5176\\u5b9e\\u65e9\\u6392\\u4e0a\\u4e86\\uff0c\\u4f46\\u662f\\u6ca1\\u6709\\u5f39\\u51fa\\u7a97\\u53e3\\uff0c\\u4e00\\u76f4\\u5728\\u52a0\\u8f7d\\uff0c\\u4f60\\u9664\\u975e\\u5173\\u6389\\u91cd\\u6392\\uff0c\\u6211\\u4e0a\\u6b21\\u94c22\\u6392\\u4e863\\u5c0f\\u65f6\\uff0c\\u5173\\u4e86\\u518d\\u5f005\\u5206\\u949f\",\"reply_post_id\":252,\"post_created_at\":\"2021-08-12T15:06:58+08:00\",\"is_first\":false,\"reply_post_user_id\":71,\"reply_post_content\":\"\\u53f8\\u9a6c\\u6e38\\u620f\",\"reply_post_created_at\":\"2021-08-12T15:05:43+08:00\"}', NULL, '2021-08-12 15:06:58', '2021-08-12 15:06:58');
INSERT INTO `notifications` VALUES (220, 'replied', 'App\\Models\\User', 71, '{\"user_id\":8,\"thread_id\":96,\"thread_username\":\"conglai\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:05:32+08:00\",\"post_id\":256,\"post_content\":\"\\u554a\\u8fd9\\uff0c\\u8981\\u4e0d\\u6362\\u4e2a\\u533a\\u3002\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:08:16+08:00\",\"is_first\":true}', NULL, '2021-08-12 15:08:16', '2021-08-12 15:08:16');
INSERT INTO `notifications` VALUES (221, 'replied', 'App\\Models\\User', 71, '{\"user_id\":16,\"thread_id\":96,\"thread_username\":\"conglai\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:05:32+08:00\",\"post_id\":257,\"post_content\":\"\\u8fd9\\u4e5f\\u592a\\u5938\\u5f20\\u4e86\\u3002\\u3002\\u3002\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:08:59+08:00\",\"is_first\":true}', NULL, '2021-08-12 15:08:59', '2021-08-12 15:08:59');
INSERT INTO `notifications` VALUES (222, 'replied', 'App\\Models\\User', 71, '{\"user_id\":16,\"thread_id\":96,\"thread_username\":\"conglai\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:05:32+08:00\",\"post_id\":258,\"post_content\":\"\\u5efa\\u8bae\\u6362\\u533a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:09:04+08:00\",\"is_first\":true}', NULL, '2021-08-12 15:09:04', '2021-08-12 15:09:04');
INSERT INTO `notifications` VALUES (223, 'replied', 'App\\Models\\User', 71, '{\"user_id\":21,\"thread_id\":96,\"thread_username\":\"conglai\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:05:32+08:00\",\"post_id\":259,\"post_content\":\"\\u767d\\u94f6\\u5c31\\u8fd9\\u6837\\uff0c\\u73b0\\u5728\\u4eba\\u6700\\u591a\\u7684\\u6bb5\\u4f4d\\u662f\\u9ec4\\u91d1\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:09:57+08:00\",\"is_first\":true}', NULL, '2021-08-12 15:09:57', '2021-08-12 15:09:57');
INSERT INTO `notifications` VALUES (224, 'replied', 'App\\Models\\User', 72, '{\"user_id\":21,\"thread_id\":97,\"thread_username\":\"\\u4e37\\u70c1\\u91d1\\u91d1\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:07:28+08:00\",\"post_id\":260,\"post_content\":\"\\u591a\\u770b\\u9738\\u54e5\\u76f4\\u64ad \\u4ee5\\u540e\\u53ea\\u8865\\u5854\\u5200:xieyanxiao:\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:10:17+08:00\",\"is_first\":true}', NULL, '2021-08-12 15:10:17', '2021-08-12 15:10:17');
INSERT INTO `notifications` VALUES (225, 'system', 'App\\Models\\User', 73, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"xingyuan\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-12 15:12:58', '2021-08-12 15:12:58');
INSERT INTO `notifications` VALUES (226, 'replied', 'App\\Models\\User', 21, '{\"user_id\":73,\"thread_id\":98,\"thread_username\":\"fangun\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:12:11+08:00\",\"post_id\":263,\"post_content\":\"\\u6ca1\\u9519\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:13:38+08:00\",\"is_first\":true}', NULL, '2021-08-12 15:13:38', '2021-08-12 15:13:38');
INSERT INTO `notifications` VALUES (227, 'replied', 'App\\Models\\User', 21, '{\"user_id\":73,\"thread_id\":98,\"thread_username\":\"fangun\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:12:11+08:00\",\"post_id\":264,\"post_content\":\"\\u6211\\u670b\\u53cb\\u90fd\\u662f\\u8fd9\\u6837\\u8bf4\\u7684\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:13:47+08:00\",\"is_first\":true}', NULL, '2021-08-12 15:13:47', '2021-08-12 15:13:47');
INSERT INTO `notifications` VALUES (228, 'replied', 'App\\Models\\User', 2, '{\"user_id\":73,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":265,\"post_content\":\"\\u66f4\\u65b0\\u529f\\u80fd\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:14:28+08:00\",\"is_first\":true}', '2021-08-13 15:56:06', '2021-08-12 15:14:28', '2021-08-13 15:56:06');
INSERT INTO `notifications` VALUES (229, 'system', 'App\\Models\\User', 74, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"AV\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u4f60\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u3002\",\"raw\":{\"tpl_id\":1}}', '2021-08-13 17:47:53', '2021-08-12 15:18:58', '2021-08-13 17:47:53');
INSERT INTO `notifications` VALUES (230, 'replied', 'App\\Models\\User', 74, '{\"user_id\":8,\"thread_id\":100,\"thread_username\":\"AV\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:32:33+08:00\",\"post_id\":268,\"post_content\":\"\\u52a0\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:33:33+08:00\",\"is_first\":true}', '2021-08-13 17:47:56', '2021-08-12 15:33:33', '2021-08-13 17:47:56');
INSERT INTO `notifications` VALUES (231, 'replied', 'App\\Models\\User', 74, '{\"user_id\":3,\"thread_id\":100,\"thread_username\":\"AV\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:32:33+08:00\",\"post_id\":269,\"post_content\":\"\\u8981\\u68af\\u5b50\\u79c1\\u804a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:34:31+08:00\",\"is_first\":true}', '2021-08-13 17:47:56', '2021-08-12 15:34:31', '2021-08-13 17:47:56');
INSERT INTO `notifications` VALUES (232, 'replied', 'App\\Models\\User', 74, '{\"user_id\":16,\"thread_id\":100,\"thread_username\":\"AV\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:32:33+08:00\",\"post_id\":270,\"post_content\":\"\\u7f51\\u7ad9\\u8fd8\\u80fd\\u53d1\\u8fd9\\u79cd\\u4e1c\\u897f\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:35:15+08:00\",\"is_first\":true}', '2021-08-13 17:47:56', '2021-08-12 15:35:15', '2021-08-13 17:47:56');
INSERT INTO `notifications` VALUES (233, 'replied', 'App\\Models\\User', 3, '{\"user_id\":16,\"thread_id\":100,\"thread_username\":\"AV\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:32:33+08:00\",\"post_id\":271,\"post_content\":\"\\u68af\\u5b50\\u662f\\u4ec0\\u4e48\",\"reply_post_id\":269,\"post_created_at\":\"2021-08-12T15:35:26+08:00\",\"is_first\":false,\"reply_post_user_id\":3,\"reply_post_content\":\"\\u8981\\u68af\\u5b50\\u79c1\\u804a\",\"reply_post_created_at\":\"2021-08-12T15:34:31+08:00\"}', '2021-09-11 14:10:21', '2021-08-12 15:35:26', '2021-09-11 14:10:21');
INSERT INTO `notifications` VALUES (234, 'replied', 'App\\Models\\User', 74, '{\"user_id\":45,\"thread_id\":100,\"thread_username\":\"AV\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-12T15:32:33+08:00\",\"post_id\":272,\"post_content\":\"\\u5df2\\u7ecf\\u79c1\\u804a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-12T15:36:39+08:00\",\"is_first\":true}', '2021-08-13 17:47:56', '2021-08-12 15:36:39', '2021-08-13 17:47:56');
INSERT INTO `notifications` VALUES (235, 'system', 'App\\Models\\User', 74, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"AV\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"[\\u56fe\\u7247] \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\",\"raw\":{\"tpl_id\":6},\"thread_id\":100}', '2021-08-13 17:47:53', '2021-08-13 15:55:10', '2021-08-13 17:47:53');
INSERT INTO `notifications` VALUES (241, 'system', 'App\\Models\\User', 74, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"AV\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"<p>\\u7ba1\\u7406\\u51fa\\u6765\\u89e3\\u91ca\\uff0c\\u5728\\u5220\\u6211\\u5c31\\u627e\\u4ebaDDOS\\u653b\\u51fb\\u7f51\\u7ad9 <span id=\\\"member\\\" value=\\\"2\\\">@Jerome<\\/span> <\\/p>\\n<p>\\u8272\\u60c5\\u7247\\u79c1\\u804a<\\/p>\\n \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\",\"raw\":{\"tpl_id\":6},\"thread_id\":101}', NULL, '2021-08-13 23:24:25', '2021-08-13 23:24:25');
INSERT INTO `notifications` VALUES (242, 'system', 'App\\Models\\User', 74, '{\"title\":\"\\u7528\\u6237\\u901a\\u77e5\",\"content\":\"AV\\u4f60\\u597d\\uff0c\\u4f60\\u7684\\u5e10\\u53f7\\u5df2\\u7981\\u7528\\uff0c\\u539f\\u56e0\\uff1a\\u8fdd\\u53cd\\u672c\\u7f51\\u7ad9\\u7528\\u6237\\u534f\\u8bae\",\"raw\":{\"tpl_id\":10}}', NULL, '2021-08-13 23:34:29', '2021-08-13 23:34:29');
INSERT INTO `notifications` VALUES (243, 'system', 'App\\Models\\User', 2, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Jerome\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"\\u65b0\\u589e\\u529f\\u80fd\\n\\n\\u65b0\\u589e\\u652f\\u6301 iframe \\u4ee3\\u7801\\u590d\\u5236\\u5728\\u7f16\\u8f91\\u5668\\u540e\\u6b63\\u5e38\\u5728\\u7ad9\\u70b9\\u5c55\\u793a\\u97f3\\u89c6\\u9891\\u5185\\u5bb9\\u3002\\uff08\\u76ee\\u524d\\u4ec5\\u652f\\u6301\\u7f51\\u6613\\u4e91\\u97f3\\u4e50\\u3001B\\u7ad9\\u3001\\u817e\\u8baf\\u89c6\\u9891\\u3001\\u4f18\\u9177\\u3001\\u7231\\u5947\\u827a\\uff09\\n\\u65b0\\u589e\\u652f\\u6301\\u5927\\u56fe\\u4e0a\\u4f20\\uff0815M\\uff09\\u3002\\n\\u65b0\\u589e\\u652f\\u6301**\\u6a21\\u5f0f\\u4e0b\\u8df3\\u8fc7**\\u7ed1\\u5b9a\\u3002\\n...\\\" \\u5df2\\u88ab\\u8bbe\\u4e3a\\u7cbe\\u54c1\\u5e16\\uff0c\\u60a8\\u5df2\\u5411\\u7cbe\\u54c1\\u4f5c\\u8005\\u8fdb\\u53d1\\u3002\",\"raw\":{\"tpl_id\":7},\"thread_id\":103}', '2021-08-14 00:38:39', '2021-08-14 00:38:00', '2021-08-14 00:38:39');
INSERT INTO `notifications` VALUES (244, 'system', 'App\\Models\\User', 75, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"lhy4251\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', '2021-08-20 20:04:07', '2021-08-14 15:30:40', '2021-08-20 20:04:07');
INSERT INTO `notifications` VALUES (245, 'system', 'App\\Models\\User', 76, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"qiugeng\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-14 15:31:42', '2021-08-14 15:31:42');
INSERT INTO `notifications` VALUES (246, 'system', 'App\\Models\\User', 77, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u65f6\\u95f4\\u4f3c\\u6df1\\u6d77\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-14 15:32:10', '2021-08-14 15:32:10');
INSERT INTO `notifications` VALUES (247, 'system', 'App\\Models\\User', 78, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4e00\\u676f\\u5496\\u5561\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-14 15:32:45', '2021-08-14 15:32:45');
INSERT INTO `notifications` VALUES (248, 'system', 'App\\Models\\User', 79, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"A|V\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-14 15:34:19', '2021-08-14 15:34:19');
INSERT INTO `notifications` VALUES (249, 'system', 'App\\Models\\User', 80, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4e3a\\u4ec0\\u4e48\\u8981\\u5ba1\\u6838\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-14 15:35:17', '2021-08-14 15:35:17');
INSERT INTO `notifications` VALUES (250, 'system', 'App\\Models\\User', 75, '{\"title\":\"\\u6ce8\\u518c\\u5ba1\\u6838\\u901a\\u77e5\",\"content\":\"lhy4251\\u4f60\\u597d\\uff0c\\u4f60\\u7684\\u6ce8\\u518c\\u7533\\u8bf7\\u5df2\\u5ba1\\u6838\\u901a\\u8fc7\\u3002\",\"raw\":{\"tpl_id\":2}}', '2021-08-20 20:04:07', '2021-08-15 01:30:49', '2021-08-20 20:04:07');
INSERT INTO `notifications` VALUES (251, 'system', 'App\\Models\\User', 76, '{\"title\":\"\\u6ce8\\u518c\\u5ba1\\u6838\\u901a\\u77e5\",\"content\":\"qiugeng\\u4f60\\u597d\\uff0c\\u4f60\\u7684\\u6ce8\\u518c\\u7533\\u8bf7\\u5df2\\u5ba1\\u6838\\u901a\\u8fc7\\u3002\",\"raw\":{\"tpl_id\":2}}', NULL, '2021-08-15 01:30:49', '2021-08-15 01:30:49');
INSERT INTO `notifications` VALUES (252, 'system', 'App\\Models\\User', 77, '{\"title\":\"\\u6ce8\\u518c\\u5ba1\\u6838\\u901a\\u77e5\",\"content\":\"\\u65f6\\u95f4\\u4f3c\\u6df1\\u6d77\\u4f60\\u597d\\uff0c\\u4f60\\u7684\\u6ce8\\u518c\\u7533\\u8bf7\\u5df2\\u5ba1\\u6838\\u901a\\u8fc7\\u3002\",\"raw\":{\"tpl_id\":2}}', NULL, '2021-08-15 01:30:49', '2021-08-15 01:30:49');
INSERT INTO `notifications` VALUES (253, 'system', 'App\\Models\\User', 78, '{\"title\":\"\\u6ce8\\u518c\\u5ba1\\u6838\\u901a\\u77e5\",\"content\":\"\\u4e00\\u676f\\u5496\\u5561\\u4f60\\u597d\\uff0c\\u4f60\\u7684\\u6ce8\\u518c\\u7533\\u8bf7\\u5df2\\u5ba1\\u6838\\u901a\\u8fc7\\u3002\",\"raw\":{\"tpl_id\":2}}', NULL, '2021-08-15 01:30:49', '2021-08-15 01:30:49');
INSERT INTO `notifications` VALUES (254, 'system', 'App\\Models\\User', 79, '{\"title\":\"\\u6ce8\\u518c\\u5ba1\\u6838\\u901a\\u77e5\",\"content\":\"A|V\\u4f60\\u597d\\uff0c\\u4f60\\u7684\\u6ce8\\u518c\\u7533\\u8bf7\\u5df2\\u5ba1\\u6838\\u901a\\u8fc7\\u3002\",\"raw\":{\"tpl_id\":2}}', NULL, '2021-08-15 01:30:49', '2021-08-15 01:30:49');
INSERT INTO `notifications` VALUES (255, 'system', 'App\\Models\\User', 80, '{\"title\":\"\\u6ce8\\u518c\\u5ba1\\u6838\\u901a\\u77e5\",\"content\":\"\\u4e3a\\u4ec0\\u4e48\\u8981\\u5ba1\\u6838\\u4f60\\u597d\\uff0c\\u4f60\\u7684\\u6ce8\\u518c\\u7533\\u8bf7\\u5df2\\u5ba1\\u6838\\u901a\\u8fc7\\u3002\",\"raw\":{\"tpl_id\":2}}', NULL, '2021-08-15 01:30:49', '2021-08-15 01:30:49');
INSERT INTO `notifications` VALUES (256, 'system', 'App\\Models\\User', 79, '{\"title\":\"\\u7528\\u6237\\u901a\\u77e5\",\"content\":\"\\u5c01\\u7981\\u7528\\u62371\\u4f60\\u597d\\uff0c\\u4f60\\u7684\\u5e10\\u53f7\\u5df2\\u7981\\u7528\\uff0c\\u539f\\u56e0\\uff1a\\u65e0\",\"raw\":{\"tpl_id\":10}}', NULL, '2021-08-15 01:33:09', '2021-08-15 01:33:09');
INSERT INTO `notifications` VALUES (257, 'system', 'App\\Models\\User', 2, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Jerome\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"PC \\u4e0e H5 \\u524d\\u53f0\\u4f18\\u5316\\u4e0e\\u4fee\\u590d\\n\\n\\u4fee\\u590d\\u7ba1\\u7406\\u540e\\u53f0\\u8bbe\\u7f6e\\u7981\\u6b62\\u65b0\\u7528\\u6237\\u6ce8\\u518c\\uff0c\\u4f46 PC \\u548c H5 \\u7aef\\u8fd8\\u663e\\u793a\\u6ce8\\u518c\\u6309\\u94ae\\u3002\\n\\u4fee\\u590d\\u53d1\\u60ac\\u8d4f\\u8d34\\uff0c\\u70b9\\u51fb\\u53d1\\u5e03\\u786e\\u8ba4\\u652f\\u4ed8\\u540e\\uff0c\\u63d0\\u793a\\u8bed\\u6709\\u8bef\\uff0c\\u63d0\\u793a\\u4fdd\\u5b58\\u8349\\u7a3f\\u4e2d\\u3002\\n\\u4fee\\u6539 web \\u7aef\\u8bc4\\u8bba\\u5b9a\\u4f4d\\u6570\\u636e\\u4e0d...\\\" \\u5df2\\u88ab\\u8bbe\\u4e3a\\u7cbe\\u54c1\\u5e16\\uff0c\\u60a8\\u5df2\\u5411\\u7cbe\\u54c1\\u4f5c\\u8005\\u8fdb\\u53d1\\u3002\",\"raw\":{\"tpl_id\":7},\"thread_id\":104}', '2021-10-18 11:39:10', '2021-08-20 16:32:20', '2021-10-18 11:39:10');
INSERT INTO `notifications` VALUES (258, 'system', 'App\\Models\\User', 81, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6c34\\u6676\\u5148\\u5148\\u950b\\u950b\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-20 19:33:52', '2021-08-20 19:33:52');
INSERT INTO `notifications` VALUES (259, 'system', 'App\\Models\\User', 82, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"bruce\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-20 19:35:07', '2021-08-20 19:35:07');
INSERT INTO `notifications` VALUES (260, 'replied', 'App\\Models\\User', 81, '{\"user_id\":82,\"thread_id\":105,\"thread_username\":\"\\u6c34\\u6676\\u5148\\u5148\\u950b\\u950b\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T19:34:31+08:00\",\"post_id\":279,\"post_content\":\"8\\u5e74\\u64b8\\u9f84\\u5df2\\u7ecf\\u4e0d\\u7231\\u73a9\\u4e86\\uff0c\\u4ece\\u5f53\\u521d\\u9ed1\\u5207\\u65e5\\u708e\\u8054\\u76df\\u5230\\u73b0\\u5728\\u628a\\u628a\\u585e\\u62c9\\u65af\\u7834\\u8d25\\u738b\\u683c\\u6e29\\uff0c\\u5dee\\u4e0d\\u591a\\u8be5\\u548c\\u6e38\\u620f\\u8bf4\\u518d\\u89c1\\u4e86\\u3002\\u6700\\u7231\\u7684\\u82f1\\u96c4\\uff0c\\u5996\\u59ec\\uff0cez\\uff0c\\u87b3\\u8782\\u3002\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:35:42+08:00\",\"is_first\":true}', NULL, '2021-08-20 19:35:42', '2021-08-20 19:35:42');
INSERT INTO `notifications` VALUES (261, 'system', 'App\\Models\\User', 83, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"humengjun2\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-20 19:37:57', '2021-08-20 19:37:57');
INSERT INTO `notifications` VALUES (262, 'replied', 'App\\Models\\User', 81, '{\"user_id\":83,\"thread_id\":105,\"thread_username\":\"\\u6c34\\u6676\\u5148\\u5148\\u950b\\u950b\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T19:34:31+08:00\",\"post_id\":282,\"post_content\":\"\\u521a\\u9000\\u6e38\\uff0c\\u670b\\u53cb\\u53eb\\u73a9\\u5c31\\u4e0a\\u53f7\\u6253\\u6253\\u5a31\\u4e50\\u6216\\u8005\\u7075\\u6d3b\\u3002\\u6211\\u4e00\\u4e2a\\u901a\\u5bb5\\u5341\\u628a\\u8d62\\u516d\\u628a\\u90fd\\u662f\\u6389\\u5206\\uff0c\\u73a9***\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:38:36+08:00\",\"is_first\":true}', NULL, '2021-08-20 19:38:36', '2021-08-20 19:38:36');
INSERT INTO `notifications` VALUES (263, 'replied', 'App\\Models\\User', 82, '{\"user_id\":83,\"thread_id\":106,\"thread_username\":\"bruce\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T19:36:10+08:00\",\"post_id\":283,\"post_content\":\"\\u662f\\u7684\\uff0cs5\\u8d5b\\u5b63\\u7684\\u65f6\\u5019\\u767d\\u91d1\\u5c40\\u6253\\u7684\\u90fd\\u5f88\\u723d\\uff0c\\u52bf\\u5747\\u529b\\u654c\\u9760\\u6293\\u4eba\\u8d62\\u4e00\\u6ce2\\u7684\\uff0c\\u9760\\u961f\\u53cb\\u62d6\\u540e\\u671f\\u7ffb\\u76d8\\u7684\\uff0c\\u52a3\\u52bf\\u6293\\u4eba\\u7ffb\\u76d8\\u7684\\uff0c\\u73b0\\u5728\\u6839\\u672c\\u770b\\u4e0d\\u89c1\\u3002\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:39:19+08:00\",\"is_first\":true}', NULL, '2021-08-20 19:39:19', '2021-08-20 19:39:19');
INSERT INTO `notifications` VALUES (264, 'replied', 'App\\Models\\User', 2, '{\"user_id\":83,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":285,\"post_content\":\"\\u505a\\u4e00\\u4e2a\\u8ba8\\u8bba\\u533a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:40:13+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-20 19:40:13', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (265, 'system', 'App\\Models\\User', 84, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u8d38\\u6613\\u6e2f-\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-20 19:42:34', '2021-08-20 19:42:34');
INSERT INTO `notifications` VALUES (266, 'replied', 'App\\Models\\User', 2, '{\"user_id\":84,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":287,\"post_content\":\"\\u505a\\u4e2a\\u4ea4\\u6613\\u533a\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:44:07+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-20 19:44:07', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (267, 'system', 'App\\Models\\User', 85, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4e00\\u8def\\u5411\\u5317\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-20 19:46:07', '2021-08-20 19:46:07');
INSERT INTO `notifications` VALUES (268, 'replied', 'App\\Models\\User', 84, '{\"user_id\":85,\"thread_id\":108,\"thread_username\":\"\\u8d38\\u6613\\u6e2f-\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T19:43:34+08:00\",\"post_id\":288,\"post_content\":\"\\u4e0d\\u77e5\\u9053\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:46:45+08:00\",\"is_first\":true}', NULL, '2021-08-20 19:46:45', '2021-08-20 19:46:45');
INSERT INTO `notifications` VALUES (269, 'replied', 'App\\Models\\User', 2, '{\"user_id\":85,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":291,\"post_content\":\"\\u505a\\u4e00\\u4e2a\\u5728\\u7ebf\\u529f\\u80fd\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:48:00+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-20 19:48:00', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (270, 'system', 'App\\Models\\User', 86, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4e66\\u4e663399\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-20 19:50:42', '2021-08-20 19:50:42');
INSERT INTO `notifications` VALUES (271, 'replied', 'App\\Models\\User', 85, '{\"user_id\":86,\"thread_id\":109,\"thread_username\":\"\\u4e00\\u8def\\u5411\\u5317\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T19:47:03+08:00\",\"post_id\":292,\"post_content\":\"\\u6362\\u4e2a3090\\u9a6c\\u4e0a\\u5c31\\u53ef\\u4ee5\\u6740\\u75af\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:52:02+08:00\",\"is_first\":true}', NULL, '2021-08-20 19:52:02', '2021-08-20 19:52:02');
INSERT INTO `notifications` VALUES (272, 'replied', 'App\\Models\\User', 2, '{\"user_id\":86,\"thread_id\":104,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T16:04:04+08:00\",\"post_id\":294,\"post_content\":\"\\u4e3a\\u4ec0\\u4e48\\u90fd\\u662f\\u4fee\\u590d\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:53:11+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-20 19:53:11', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (273, 'system', 'App\\Models\\User', 87, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u9e26\\u9752-\\u7fbd\\u7f0e\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-20 19:55:45', '2021-08-20 19:55:45');
INSERT INTO `notifications` VALUES (274, 'replied', 'App\\Models\\User', 86, '{\"user_id\":87,\"thread_id\":111,\"thread_username\":\"\\u4e66\\u4e663399\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T19:54:08+08:00\",\"post_id\":298,\"post_content\":\"\\u52a0\\u6211**+1545562154\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:56:57+08:00\",\"is_first\":true}', NULL, '2021-08-20 19:56:57', '2021-08-20 19:56:57');
INSERT INTO `notifications` VALUES (275, 'replied', 'App\\Models\\User', 86, '{\"user_id\":87,\"thread_id\":111,\"thread_username\":\"\\u4e66\\u4e663399\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T19:54:08+08:00\",\"post_id\":299,\"post_content\":\"\\u79c1\\u804a\\u6211\\u4e5f\\u884c\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:57:04+08:00\",\"is_first\":true}', NULL, '2021-08-20 19:57:04', '2021-08-20 19:57:04');
INSERT INTO `notifications` VALUES (276, 'replied', 'App\\Models\\User', 2, '{\"user_id\":87,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":300,\"post_content\":\"\\u6709\\u70b9\\u5361\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:58:20+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-20 19:58:21', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (277, 'replied', 'App\\Models\\User', 2, '{\"user_id\":87,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":301,\"post_content\":\"\\u4f18\\u5316\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T19:58:27+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-20 19:58:27', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (278, 'replied', 'App\\Models\\User', 86, '{\"user_id\":87,\"thread_id\":104,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T16:04:04+08:00\",\"post_id\":302,\"post_content\":\"\\u8fd8\\u4e0d\\u5982\\u52a0\\u70b9\\u65b0\\u529f\\u80fd\",\"reply_post_id\":294,\"post_created_at\":\"2021-08-20T19:59:16+08:00\",\"is_first\":false,\"reply_post_user_id\":86,\"reply_post_content\":\"\\u4e3a\\u4ec0\\u4e48\\u90fd\\u662f\\u4fee\\u590d\",\"reply_post_created_at\":\"2021-08-20T19:53:11+08:00\"}', NULL, '2021-08-20 19:59:16', '2021-08-20 19:59:16');
INSERT INTO `notifications` VALUES (279, 'replied', 'App\\Models\\User', 86, '{\"user_id\":75,\"thread_id\":111,\"thread_username\":\"\\u4e66\\u4e663399\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T19:54:08+08:00\",\"post_id\":303,\"post_content\":\"\\u79c1\\u804a\\u4f60\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T20:02:03+08:00\",\"is_first\":true}', NULL, '2021-08-20 20:02:03', '2021-08-20 20:02:03');
INSERT INTO `notifications` VALUES (280, 'replied', 'App\\Models\\User', 2, '{\"user_id\":75,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":304,\"post_content\":\"\\u79fb\\u52a8\\u7aef\\u5728\\u54ea\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-20T20:03:44+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-20 20:03:44', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (281, 'system', 'App\\Models\\User', 88, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u662f\\u5230\\u8d24\\u5440\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-21 21:05:33', '2021-08-21 21:05:33');
INSERT INTO `notifications` VALUES (282, 'replied', 'App\\Models\\User', 87, '{\"user_id\":88,\"thread_id\":112,\"thread_username\":\"\\u9e26\\u9752-\\u7fbd\\u7f0e\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-20T19:56:21+08:00\",\"post_id\":306,\"post_content\":\"\\u79c1\\u804a\\u4f60\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-21T21:08:24+08:00\",\"is_first\":true}', NULL, '2021-08-21 21:08:24', '2021-08-21 21:08:24');
INSERT INTO `notifications` VALUES (283, 'replied', 'App\\Models\\User', 2, '{\"user_id\":88,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":307,\"post_content\":\"\\u52a0\\u4e2a\\u6295\\u7968\\u529f\\u80fd\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-21T21:09:20+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-21 21:09:20', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (284, 'replied', 'App\\Models\\User', 88, '{\"user_id\":8,\"thread_id\":113,\"thread_username\":\"\\u662f\\u5230\\u8d24\\u5440\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-21T21:07:38+08:00\",\"post_id\":308,\"post_content\":\"\\u610f\\u601d\\u5728\\u4f60\\u8ba4\\u77e5\\u91cc\\u4e00\\u4e2a\\u54b3\\u8840\\u56de\\u6ee1\\u624d\\u662f\\u6b63\\u5e38\\u5f3a\\u5ea6\\u662f\\u5427:cahan:\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-21T21:12:34+08:00\",\"is_first\":true}', NULL, '2021-08-21 21:12:34', '2021-08-21 21:12:34');
INSERT INTO `notifications` VALUES (285, 'system', 'App\\Models\\User', 89, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"gugu\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-21 21:13:59', '2021-08-21 21:13:59');
INSERT INTO `notifications` VALUES (286, 'replied', 'App\\Models\\User', 89, '{\"user_id\":75,\"thread_id\":115,\"thread_username\":\"gugu\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-21T21:15:15+08:00\",\"post_id\":311,\"post_content\":\"\\u4f60\\u7ec3\\u662f\\u6253\\u7b97\\u7ec3\\u4ec0\\u4e48\\u4f4d\\u7f6e\\u54df\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-21T21:19:07+08:00\",\"is_first\":true}', NULL, '2021-08-21 21:19:07', '2021-08-21 21:19:07');
INSERT INTO `notifications` VALUES (287, 'system', 'App\\Models\\User', 90, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6e29\\u9152\\u65a9\\u534e\\u817e5\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-21 21:20:27', '2021-08-21 21:20:27');
INSERT INTO `notifications` VALUES (288, 'replied', 'App\\Models\\User', 89, '{\"user_id\":90,\"thread_id\":115,\"thread_username\":\"gugu\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-21T21:15:15+08:00\",\"post_id\":313,\"post_content\":\"\\u6253\\u4eba\\u673a\\u770bb\\u7ad9\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-21T21:22:06+08:00\",\"is_first\":true}', NULL, '2021-08-21 21:22:07', '2021-08-21 21:22:07');
INSERT INTO `notifications` VALUES (289, 'replied', 'App\\Models\\User', 2, '{\"user_id\":90,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":314,\"post_content\":\"\\u52a0\\u4e2a\\u6295\\u7968\\u5427\\uff0c\\u6709\\u4e9b\\u4e8b\\u60c5\\u60f3\\u770b\\u770b\\u522b\\u4eba\\u600e\\u4e48\\u770b\\u7684\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-21T21:23:08+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-21 21:23:09', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (290, 'replied', 'App\\Models\\User', 88, '{\"user_id\":90,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":315,\"post_content\":\"+1\",\"reply_post_id\":307,\"post_created_at\":\"2021-08-21T21:23:59+08:00\",\"is_first\":false,\"reply_post_user_id\":88,\"reply_post_content\":\"\\u52a0\\u4e2a\\u6295\\u7968\\u529f\\u80fd\",\"reply_post_created_at\":\"2021-08-21T21:09:20+08:00\"}', NULL, '2021-08-21 21:23:59', '2021-08-21 21:23:59');
INSERT INTO `notifications` VALUES (291, 'withdrawal', 'App\\Models\\User', 1, '{\"user_id\":1,\"wallet_cash_id\":1,\"cash_actual_amount\":\"10.00\",\"cash_apply_amount\":\"10.00\",\"cash_status\":3,\"remark\":\"\\u63d0\\u73b0\\u6d4b\\u8bd5\\u5b8c\\u6210\",\"created_at\":\"2021-08-21T21:30:51+08:00\"}', NULL, '2021-08-21 21:32:27', '2021-08-21 21:32:27');
INSERT INTO `notifications` VALUES (292, 'system', 'App\\Models\\User', 91, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"-\\u884c\\u4f46\\u662f\\u5f97\\u52a0\\u94b1\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-22 19:25:13', '2021-08-22 19:25:13');
INSERT INTO `notifications` VALUES (293, 'replied', 'App\\Models\\User', 2, '{\"user_id\":91,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":317,\"post_content\":\"?\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-22T19:26:42+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-22 19:26:42', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (294, 'system', 'App\\Models\\User', 92, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"0o0re0o\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-22 19:28:21', '2021-08-22 19:28:21');
INSERT INTO `notifications` VALUES (295, 'replied', 'App\\Models\\User', 91, '{\"user_id\":92,\"thread_id\":117,\"thread_username\":\"-\\u884c\\u4f46\\u662f\\u5f97\\u52a0\\u94b1\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-22T19:25:57+08:00\",\"post_id\":319,\"post_content\":\"\\u6211\\u4e5f\\u662f\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-22T19:29:19+08:00\",\"is_first\":true}', NULL, '2021-08-22 19:29:19', '2021-08-22 19:29:19');
INSERT INTO `notifications` VALUES (296, 'system', 'App\\Models\\User', 93, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"xiangei\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-24 20:55:43', '2021-08-24 20:55:43');
INSERT INTO `notifications` VALUES (297, 'replied', 'App\\Models\\User', 92, '{\"user_id\":93,\"thread_id\":118,\"thread_username\":\"0o0re0o\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-22T19:28:54+08:00\",\"post_id\":321,\"post_content\":\"\\u4efb\\u52a1\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-24T20:57:17+08:00\",\"is_first\":true}', NULL, '2021-08-24 20:57:17', '2021-08-24 20:57:17');
INSERT INTO `notifications` VALUES (298, 'replied', 'App\\Models\\User', 2, '{\"user_id\":93,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":322,\"post_content\":\"\\u66f4\\u65b0\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-24T20:57:32+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-24 20:57:32', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (299, 'system', 'App\\Models\\User', 94, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u964c\\u5df2\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-24 20:58:21', '2021-08-24 20:58:21');
INSERT INTO `notifications` VALUES (300, 'replied', 'App\\Models\\User', 93, '{\"user_id\":94,\"thread_id\":119,\"thread_username\":\"xiangei\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-24T20:56:34+08:00\",\"post_id\":324,\"post_content\":\"wegame\\u672c\\u6765\\u5c31\\u6709\\u4e00\\u5806\\u95ee\\u9898\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-24T20:59:15+08:00\",\"is_first\":true}', NULL, '2021-08-24 20:59:15', '2021-08-24 20:59:15');
INSERT INTO `notifications` VALUES (301, 'replied', 'App\\Models\\User', 4, '{\"user_id\":3,\"thread_id\":121,\"thread_username\":\"t-gar\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-24T21:15:11+08:00\",\"post_id\":326,\"post_content\":\"\\u62bd\\u4e0d\\u5230\\u4e5f\\u4e0d\\u5fc5\\u653e\\u4e2a\\u8d1e\\u5b50\\u5728\\u697c\\u9053\\u5413\\u4eba\\u5427\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-24T21:17:42+08:00\",\"is_first\":true}', NULL, '2021-08-24 21:17:42', '2021-08-24 21:17:42');
INSERT INTO `notifications` VALUES (302, 'system', 'App\\Models\\User', 95, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"zhizi\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-25 21:22:52', '2021-08-25 21:22:52');
INSERT INTO `notifications` VALUES (303, 'system', 'App\\Models\\User', 96, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4eba\\u95f4\\u5ffd\\u665a\\u5c71\\u6cb3\\u8fdf\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-08-25 21:24:16', '2021-08-25 21:24:16');
INSERT INTO `notifications` VALUES (304, 'replied', 'App\\Models\\User', 81, '{\"user_id\":96,\"thread_id\":123,\"thread_username\":\"\\u6c34\\u6676\\u5148\\u5148\\u950b\\u950b\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-25T21:21:39+08:00\",\"post_id\":331,\"post_content\":\"\\u786e\\u5b9e\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-25T21:24:44+08:00\",\"is_first\":true}', NULL, '2021-08-25 21:24:44', '2021-08-25 21:24:44');
INSERT INTO `notifications` VALUES (305, 'replied', 'App\\Models\\User', 2, '{\"user_id\":96,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":333,\"post_content\":\"1\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-25T21:26:12+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-08-25 21:26:12', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (306, 'system', 'App\\Models\\User', 97, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u8bb0\\u5fc6\\u91cc\\u7684\\u4e36\\u82b1\\u9999\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-01 23:05:39', '2021-09-01 23:05:39');
INSERT INTO `notifications` VALUES (307, 'system', 'App\\Models\\User', 98, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"WhatHarker\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-01 23:07:04', '2021-09-01 23:07:04');
INSERT INTO `notifications` VALUES (308, 'replied', 'App\\Models\\User', 97, '{\"user_id\":98,\"thread_id\":126,\"thread_username\":\"\\u8bb0\\u5fc6\\u91cc\\u7684\\u4e36\\u82b1\\u9999\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-01T23:06:17+08:00\",\"post_id\":336,\"post_content\":\"\\u5df2\\u7ecf\\u78b0\\u89c1\\u5f88\\u591a\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-01T23:08:36+08:00\",\"is_first\":true}', NULL, '2021-09-01 23:08:36', '2021-09-01 23:08:36');
INSERT INTO `notifications` VALUES (309, 'replied', 'App\\Models\\User', 2, '{\"user_id\":98,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":337,\"post_content\":\"\\u66f4\\u65b0\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-01T23:09:42+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-09-01 23:09:42', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (310, 'system', 'App\\Models\\User', 99, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6740\\u751f\\u4e3a\\u62a4\\u751f\\u4e36\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-02 23:07:11', '2021-09-02 23:07:11');
INSERT INTO `notifications` VALUES (311, 'system', 'App\\Models\\User', 100, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u7231\\u82b1\\u65b0\\u96e8\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-02 23:09:24', '2021-09-02 23:09:24');
INSERT INTO `notifications` VALUES (312, 'replied', 'App\\Models\\User', 99, '{\"user_id\":100,\"thread_id\":128,\"thread_username\":\"\\u6740\\u751f\\u4e3a\\u62a4\\u751f\\u4e36\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-02T23:07:57+08:00\",\"post_id\":340,\"post_content\":\"\\u5c0f\\u5929\\u5c31\\u79bb\\u8c31\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-02T23:10:49+08:00\",\"is_first\":true}', NULL, '2021-09-02 23:10:49', '2021-09-02 23:10:49');
INSERT INTO `notifications` VALUES (313, 'replied', 'App\\Models\\User', 2, '{\"user_id\":100,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":341,\"post_content\":\"\\u7f51\\u7ad9\\u600e\\u4e48\\u4e0d\\u66f4\\u65b0\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-02T23:11:36+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-09-02 23:11:36', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (314, 'system', 'App\\Models\\User', 101, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6444\\u5f71\\u5e08\\u95e8\\u77e2\\u58eb\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-02 23:12:43', '2021-09-02 23:12:43');
INSERT INTO `notifications` VALUES (315, 'system', 'App\\Models\\User', 102, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u7483\\u6446\\u6446\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-04 20:54:06', '2021-09-04 20:54:06');
INSERT INTO `notifications` VALUES (316, 'replied', 'App\\Models\\User', 2, '{\"user_id\":102,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":350,\"post_content\":\"\\u600e\\u4e48\\u505c\\u66f4\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-04T20:56:20+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-09-04 20:56:20', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (317, 'system', 'App\\Models\\User', 103, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u54c7\\u560e\\u560e\\u560e\\u798f\\u5a03\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-04 20:56:46', '2021-09-04 20:56:46');
INSERT INTO `notifications` VALUES (318, 'replied', 'App\\Models\\User', 102, '{\"user_id\":103,\"thread_id\":134,\"thread_username\":\"\\u7483\\u6446\\u6446\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-04T20:55:36+08:00\",\"post_id\":352,\"post_content\":\"\\u79c1\\u804a\\u4f60\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-04T21:08:05+08:00\",\"is_first\":true}', NULL, '2021-09-04 21:08:05', '2021-09-04 21:08:05');
INSERT INTO `notifications` VALUES (319, 'system', 'App\\Models\\User', 104, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"Q2tUAyZ\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-07 21:34:15', '2021-09-07 21:34:15');
INSERT INTO `notifications` VALUES (320, 'replied', 'App\\Models\\User', 103, '{\"user_id\":104,\"thread_id\":135,\"thread_username\":\"\\u54c7\\u560e\\u560e\\u560e\\u798f\\u5a03\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-04T21:07:10+08:00\",\"post_id\":354,\"post_content\":\"\\u6765\\u6211\\u7684\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-07T21:36:03+08:00\",\"is_first\":true}', NULL, '2021-09-07 21:36:03', '2021-09-07 21:36:03');
INSERT INTO `notifications` VALUES (321, 'system', 'App\\Models\\User', 105, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"2668680510lhq\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-07 21:36:21', '2021-09-07 21:36:21');
INSERT INTO `notifications` VALUES (322, 'replied', 'App\\Models\\User', 104, '{\"user_id\":105,\"thread_id\":136,\"thread_username\":\"Q2tUAyZ\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-07T21:34:54+08:00\",\"post_id\":355,\"post_content\":\"\\u8fd8\\u6709\\u4e00\\u4e2a \\u7cfb\\u7edf\\u5236\\u88c1 \\u5c31\\u7ed9\\u6211\\u5361\\u9ec4\\u91d1\\u56db \\u8981\\u4e48\\u961f\\u53cb\\u5f00\\u5c40\\u72af\\u75c5\\u4e00\\u7ea7\\u56e2\\u9001...\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-07T21:37:04+08:00\",\"is_first\":true}', NULL, '2021-09-07 21:37:04', '2021-09-07 21:37:04');
INSERT INTO `notifications` VALUES (323, 'system', 'App\\Models\\User', 106, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4f60\\u5440\\u4e36\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-07 21:39:12', '2021-09-07 21:39:12');
INSERT INTO `notifications` VALUES (324, 'replied', 'App\\Models\\User', 2, '{\"user_id\":106,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":359,\"post_content\":\"\\u73b0\\u5728\\u7f51\\u7ad9\\u6ca1\\u4eba\\u7ba1\\u4e86\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-07T21:40:29+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-09-07 21:40:29', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (325, 'replied', 'App\\Models\\User', 105, '{\"user_id\":106,\"thread_id\":138,\"thread_username\":\"2668680510lhq\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-07T21:38:48+08:00\",\"post_id\":360,\"post_content\":\"\\u4e00\\u8d77\\u554a\\uff0c**2840493212\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-07T21:40:50+08:00\",\"is_first\":true}', NULL, '2021-09-07 21:40:50', '2021-09-07 21:40:50');
INSERT INTO `notifications` VALUES (326, 'system', 'App\\Models\\User', 107, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u72b9\\u671b\\u84dd\\u5c71\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', '2021-09-07 21:45:33', '2021-09-07 21:42:44', '2021-09-07 21:45:33');
INSERT INTO `notifications` VALUES (327, 'replied', 'App\\Models\\User', 106, '{\"user_id\":107,\"thread_id\":139,\"thread_username\":\"\\u4f60\\u5440\\u4e36\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-07T21:39:49+08:00\",\"post_id\":361,\"post_content\":\"\\u51c6\\u5907500G\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-07T21:43:18+08:00\",\"is_first\":true}', NULL, '2021-09-07 21:43:18', '2021-09-07 21:43:18');
INSERT INTO `notifications` VALUES (328, 'replied', 'App\\Models\\User', 45, '{\"user_id\":107,\"thread_id\":57,\"thread_username\":\"\\u6e05\\u6b4c\\u4e88\\u4f60\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-07T16:31:27+08:00\",\"post_id\":363,\"post_content\":\"\\u8fd8\\u884c\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-07T21:46:08+08:00\",\"is_first\":true}', NULL, '2021-09-07 21:46:08', '2021-09-07 21:46:08');
INSERT INTO `notifications` VALUES (329, 'system', 'App\\Models\\User', 2, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Jerome\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"\\u7f51\\u7ad9\\u4f18\\u5316\\u5185\\u5bb9 \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\\u65e0\",\"raw\":{\"tpl_id\":6},\"thread_id\":89}', '2021-10-18 11:39:10', '2021-09-07 21:51:06', '2021-10-18 11:39:10');
INSERT INTO `notifications` VALUES (330, 'system', 'App\\Models\\User', 2, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Jerome\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"8.13\\u66f4\\u65b0\\u516c\\u544a \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\\u65e0\",\"raw\":{\"tpl_id\":6},\"thread_id\":103}', '2021-10-18 11:39:10', '2021-09-07 21:51:13', '2021-10-18 11:39:10');
INSERT INTO `notifications` VALUES (331, 'system', 'App\\Models\\User', 2, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Jerome\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"8.20\\u66f4\\u65b0\\u516c\\u544a \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\\u65e0\",\"raw\":{\"tpl_id\":6},\"thread_id\":104}', '2021-10-18 11:39:10', '2021-09-07 21:51:20', '2021-10-18 11:39:10');
INSERT INTO `notifications` VALUES (332, 'system', 'App\\Models\\User', 108, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"TedsAb\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-07 21:52:26', '2021-09-07 21:52:26');
INSERT INTO `notifications` VALUES (333, 'replied', 'App\\Models\\User', 107, '{\"user_id\":108,\"thread_id\":140,\"thread_username\":\"\\u72b9\\u671b\\u84dd\\u5c71\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-07T21:43:45+08:00\",\"post_id\":365,\"post_content\":\"\\u8fd9\\u817f:tiaopi:\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-07T21:55:04+08:00\",\"is_first\":true}', NULL, '2021-09-07 21:55:04', '2021-09-07 21:55:04');
INSERT INTO `notifications` VALUES (334, 'replied', 'App\\Models\\User', 2, '{\"user_id\":108,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":366,\"post_content\":\"\\u7f51\\u7ad9\\u5df2\\u7ecf\\u5e9f\\u4e86\\u5417\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-07T21:55:52+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-09-07 21:55:52', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (335, 'liked', 'App\\Models\\User', 3, '{\"user_id\":108,\"thread_id\":132,\"thread_username\":\"Thread\",\"thread_title\":\"Python\\u5b66\\u4e60\\u8def\\u7ebf\\u56fe(\\u8be6\\u7ec6)\",\"thread_created_at\":\"2021-09-04T20:24:20+08:00\",\"post_id\":345,\"post_content\":\"<p><strong>\\u4e00\\u3001Python\\u57fa\\u7840\\u77e5\\u8bc6\\u3001\\u53d8\\u91cf\\u3001\\u6570\\u636e\\u7c7b\\u578b<\\/strong><br \\/>\\n<strong>\\u4e8c\\u3001Python\\u6761\\u4ef6\\u7ed3\\u6784\\u3001\\u5faa\\u73af\\u7ed3\\u6784<\\/strong><br \\/>\\n<strong>\\u4e09\\u3001Python\\u51fd\\u6570<\\/strong><br \\/>\\n<strong>\\u56db\\u3001\\u7efc\\u5408\\u7ec3\\u4e60\\uff0c\\u505a\\u4e00\\u4e2a\\u63a7\\u5236\\u53f0\\u7684\\u5458\\u5de5\\u7ba1\\u7406<\\/strong><\\/p>\\n<pre><code>&quot;&quot;&quot;\\nprint(&quot;helloworld&quot;)\\na=123\\nb=\'a\'\\nc=[1,2,3,4]\\nprint(a,b,c,sep=\'\\\\n\')\\n\\nprint(&quot;C:\\\\\\\\demo&quot;)\\n\\nch=&quot;\\u5357\\u4eac&quot;\\nch1=&quot;\\u5de5\\u7a0b\\u5b66\\u9662&quot;\\nch2=&quot;\\u5b66\\u9662&quot;\\nprint(ch+ch1+ch2)\\nprint(&quot;\\u5730\\u5740\\u662f\\uff1a%s,\\\\n\\u5b66\\u6821\\u662f\\uff1a%s&quot;%(ch,ch1))\\n\\nage=19\\nmessage=\'\\u6211\\u4eca\\u5e74{}\\u5c81\\u4e86,\\u5c31\\u8bfb\\u4e8e{}\'.format(age,ch)\\nprint(message)\\n\\nname=\'admin\'\\n\\nprint(id(name),name)\\n\\nname1=name\\n\\nprint(id(name1),name1)\\n\\nname2=&quot;admin&quot;\\nprint(id(name2),name2)\\n\\nnum=8\\nprint(id(num),num)\\n\\nnum+=5\\nprint(id(num),num)\\n\\nhell=3\\nprint(hell**3)\\n\\n\\nprint(&quot;hello&quot;*3)\\n&quot;&quot;&quot;\\n<span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span><span id=\\\"topic\\\" value=\\\"1\\\">##<\\/span>##\\n\'\'\'\\n\\u9700\\u6c42\\uff1a\\u5458\\u5de5\\u7ba1\\u7406\\u7cfb\\u7edf\\n\\u529f\\u80fd\\uff1a\\n1.\\u6dfb\\u52a0\\u5458\\u5de5\\u4fe1\\u606f\\n2.\\u5220\\u9664\\u5458\\u5de5\\u4fe1\\u606f\\n3.\\u4fee\\u6539\\u5458\\u5de5\\u4fe1\\u606f\\n4.\\u67e5\\u770b\\u5355\\u4e2a\\u5458\\u5de5\\u4fe1\\u606f\\n5.\\u67e5\\u770b\\u6240\\u6709\\u5458\\u5de5\\u4fe1\\u606f\\n6.\\u9000\\u51fa\\n\\nKMOWLEDGE:\\u51fd\\u6570\\uff0c\\u6570\\u636e\\u7c7b\\u578b\\uff08\\u5217\\u8868\\u5b57\\u5178\\uff09\\uff0c\\u5faa\\u73af\\uff0c\\u6761\\u4ef6\\u8bed\\u53e5\\n\'\'\'\\nemps=[]\\n\\ndef choiceFunc():\\n        \'\'\'\\u9009\\u62e9\\u529f\\u80fd\\u5217\\u8868\'\'\'\\n        print(&quot;*&quot;*30)\\n        print(&quot;1.\\u6dfb\\u52a0\\u5458\\u5de5\\u4fe1\\u606f&quot;)\\n        print(&quot;2.\\u5220\\u9664\\u5458\\u5de5\\u4fe1\\u606f&quot;)\\n        print(&quot;3.\\u4fee\\u6539\\u5458\\u5de5\\u4fe1\\u606f&quot;)\\n        print(&quot;4.\\u67e5\\u770b\\u5355\\u4e2a\\u5458\\u5de5\\u4fe1\\u606f&quot;)\\n        print(&quot;5.\\u67e5\\u770b\\u6240\\u6709\\u5458\\u5de5\\u4fe1\\u606f&quot;)\\n        print(&quot;6.\\u9000\\u51fa&quot;)\\n\\ndef addEmp():\\n        \'\'\'\\u6dfb\\u52a0\\u5458\\u5de5\\u4fe1\\u606f\'\'\'\\n        Id=input(&quot;\\u8bf7\\u8f93\\u5165\\u5458\\u5de5\\u7f16\\u53f7\\uff1a&quot;)\\n        name=input(&quot;\\u8bf7\\u8f93\\u5165\\u5458\\u5de5\\u59d3\\u540d\\uff1a&quot;)\\n        gender=input(&quot;\\u8bf7\\u8f93\\u5165\\u5458\\u5de5\\u6027\\u522b\\uff1a&quot;)\\n        age=input(&quot;\\u8bf7\\u8f93\\u5165\\u5458\\u5de5\\u5e74\\u9f84:&quot;)\\n        emp={\'Id\':Id,\'name\':name,\'gender\':gender,\'age\':age}\\n        emps.append(emp)\\n        print(&quot;\\u6dfb\\u52a0OK!&quot;)\\n\\ndef delEmp():\\n        choice=(int)(input(&quot;1.\\u6309\\u7f16\\u53f7\\u5220\\u9664\\\\\\\\2.\\u6309\\u59d3\\u540d\\u5220\\u9664\\uff1a&quot;))\\n        if choice==1:\\n                ID=input(&quot;\\u8bf7\\u8f93\\u5165\\u8981\\u5220\\u9664\\u7684\\u5458\\u5de5\\u7f16\\u53f7:&quot;)\\n                for i in emps:\\n                        if i.get(\'Id\')==ID:\\n                                emps.remove(i)\\n                                print(&quot;\\u5220\\u9664OK!&quot;)\\n                                break\\n                        else:\\n                                print(&quot;\\u8bf7\\u8f93\\u5165\\u6b63\\u786e\\u7684\\u5458\\u5de5\\u7f16\\u53f7\\uff1a&quot;)\\n        elif choice==2:\\n                name=input(&quot;\\u8bf7\\u8f93\\u5165\\u8981\\u5220\\u9664\\u7684\\u5458\\u5de5\\u59d3\\u540d\\uff1a&quot;)\\n                for k in emps:\\n                        if k.get(\'name\')==name:\\n                                emps.remove(k)\\n                                print(&quot;\\u5220\\u9664OK!&quot;)\\n                                break\\n                        else:\\n                                print(&quot;\\u8bf7\\u8f93\\u5165\\u6b63\\u786e\\u7684\\u5458\\u5de5\\u59d3\\u540d\\uff1a&quot;)\\n        else:\\n                print(&quot;\\u8bf7\\u8f93\\u5165\\u6b63\\u786e\\u7684\\u6307\\u4ee4\\uff1a&quot;)\\n\\ndef updateEmp():\\n        \'\'\'\\u4fee\\u6539\\u5458\\u5de5\\u4fe1\\u606f\'\'\'\\n        ID=input(&quot;\\u8bf7\\u8f93\\u5165\\u8981\\u4fee\\u6539\\u7684\\u5458\\u5de5\\u7f16\\u53f7\\uff1a&quot;)\\n        for elem in emps:\\n                if elem.get(\'Id\')==ID:\\n                        elem[&quot;name&quot;]=input(&quot;\\u8bf7\\u8f93\\u5165\\u4fee\\u6539\\u540e\\u7684\\u5458\\u5de5\\u59d3\\u540d\\uff1a&quot;)\\n                        elem[&quot;gender&quot;]=input(&quot;\\u8bf7\\u8f93\\u5165\\u4fee\\u6539\\u540e\\u7684\\u5458\\u5de5\\u6027\\u522b\\uff1a&quot;)\\n                        elem[&quot;age&quot;]=input(&quot;\\u8bf7\\u8f93\\u5165\\u8981\\u4fee\\u6539\\u540e\\u7684\\u5458\\u5de5\\u5e74\\u9f84\\uff1a&quot;)\\n                        print(&quot;\\u4fee\\u6539\\u6210\\u529f\\uff01\\uff01\\uff01&quot;)\\n                        break\\n                else:\\n                        print(&quot;\\u67e5\\u65e0\\u6b64\\u4eba\\uff01&quot;)\\n\\ndef getEmpByld():\\n        \'\'\'\\u67e5\\u770b\\u5355\\u4e2a\\u5458\\u5de5\\u4fe1\\u606f\'\'\'\\n        select=(int)(input(&quot;1.\\u6309\\u7f16\\u53f7\\u67e5\\u8be2\\\\\\\\2.\\u6309\\u59d3\\u540d\\u67e5\\u8be2\\uff1a&quot;))\\n        if select==1:\\n                ID=input(&quot;\\u8bf7\\u8f93\\u5165\\u8981\\u67e5\\u8be2\\u7684\\u5458\\u5de5\\u7f16\\u53f7:&quot;)\\n                for emp in emps:\\n                        if emp.get(\'Id\')==ID:\\n                                print(&quot;\\u7f16\\u53f7\\uff1a%s\\\\n\\u59d3\\u540d\\uff1a%s\\\\n\\u6027\\u522b\\uff1a%s\\\\n\\u5e74\\u9f84\\uff1a%s&quot;%(emp[&quot;Id&quot;],emp[&quot;name&quot;],emp[&quot;gender&quot;],emp[&quot;age&quot;]))\\n                                break\\n                        else:\\n                                print(&quot;\\u67e5\\u65e0\\u6b64\\u4eba!!!&quot;)\\n        elif select==2:\\n                name=input(&quot;\\u8bf7\\u8f93\\u5165\\u8981\\u67e5\\u8be2\\u7684\\u5458\\u5de5\\u59d3\\u540d\\uff1a&quot;)\\n                for j in emps:\\n                        if j.get(\'name\')==name:\\n                                print(&quot;\\u7f16\\u53f7\\uff1a%s\\\\n\\u59d3\\u540d\\uff1a%s\\\\n\\u6027\\u522b\\uff1a%s\\\\n\\u5e74\\u9f84\\uff1a%s&quot;%(j[&quot;Id&quot;],j[&quot;name&quot;],j[&quot;gender&quot;],j[&quot;age&quot;]))\\n                                break\\n                        else:\\n                                print(&quot;\\u67e5\\u65e0\\u6b64\\u4eba!!!&quot;)\\n        else:\\n                print(&quot;\\u8bf7\\u8f93\\u5165\\u6b63\\u786e\\u7684\\u6307\\u4ee4\\uff1a&quot;)\\n\\n\\ndef getEmpAll():\\n        \'\'\'\\u67e5\\u770b\\u6240\\u6709\\u5458\\u5de5\\u4fe1\\u606f\'\'\'\\n        for emp in emps:\\n                print(&quot;\\u7f16\\u53f7\\uff1a%s\\\\n\\u59d3\\u540d\\uff1a%s\\\\n\\u6027\\u522b\\uff1a%s\\\\n\\u5e74\\u9f84\\uff1a%s&quot;%(emp[&quot;Id&quot;],emp[&quot;name&quot;],emp[&quot;gender&quot;],emp[&quot;age&quot;]))\\n        print(&quot;\\u4e00\\u5171\\u67e5\\u8be2\\u5230%d\\u591a\\u5c11\\u6761\\u6570\\u636e\\u4fe1\\u606f&quot;%(len(emps)))\\n\\n\\n\\ndef Main():\\n        print(&quot;*******\\u6b22\\u8fce\\u4f7f\\u7528\\u5458\\u5de5\\u7cfb\\u7edf*******&quot;)\\n        while True:\\n                choiceFunc()\\n                num=(int)(input(&quot;\\u8bf7\\u8f93\\u5165\\u6307\\u4ee4\\uff1a&quot;))\\n                if num==1:\\n                        #pass\\n                        addEmp()\\n                elif num==2:\\n                        #pass\\n                        delEmp()\\n                elif num==3:\\n                        #pass\\n                        updateEmp()\\n                elif num==4:\\n                        #pass\\n                        getEmpByld()\\n                elif num==5:\\n                        #pass\\n                        getEmpAll()\\n                elif num==6:\\n                        print(&quot;\\u60a8\\u5df2\\u9000\\u51fa\\u7cfb\\u7edf\\uff01\\uff01\\uff01&quot;)\\n                        break\\n                else:\\n                        print(&quot;\\u8bf7\\u8f93\\u5165\\u6b63\\u786e\\u7684\\u6307\\u4ee4\\uff1a&quot;)\\nMain()\\n<\\/code><\\/pre>\\n<p><strong>\\u4e94\\u3001\\u5b57\\u7b26\\u4e32<\\/strong><br \\/>\\n<strong>\\u516d\\u3001\\u5217\\u8868\\u4e0e\\u5143\\u7ec4<\\/strong><br \\/>\\n<strong>\\u4e03\\u3001\\u5b57\\u5178\\u4e0e\\u96c6\\u5408<\\/strong><br \\/>\\n<strong>\\u516b\\u3001\\u6587\\u4ef6\\u5bf9\\u8c61<\\/strong><br \\/>\\n<strong>\\u4e5d\\u3001\\u6a21\\u5757\\u4e0e\\u5305(\\u8bc4\\u8bba\\u533a)<\\/strong>\\u00a0<\\/p>\\n\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-04T20:24:21+08:00\",\"is_first\":true}', '2021-09-11 14:10:21', '2021-09-07 21:56:53', '2021-09-11 14:10:21');
INSERT INTO `notifications` VALUES (336, 'liked', 'App\\Models\\User', 3, '{\"user_id\":108,\"thread_id\":131,\"thread_username\":\"Thread\",\"thread_title\":\"Python\\u5b66\\u4e60\\u8def\\u7ebf\\u56fe\",\"thread_created_at\":\"2021-09-04T20:12:41+08:00\",\"post_id\":343,\"post_content\":\"<p><strong>python\\u5927\\u81f4\\u7684\\u9636\\u6bb5\\u5b66\\u4e60\\u8def\\u7ebf\\u56fe\\uff1a<\\/strong><br \\/>\\n<strong>1.python\\u57fa\\u7840\\uff1a<\\/strong><br \\/>\\n<strong>2.python\\u9ad8\\u7ea7\\u7f16\\u7a0b\\uff1a<\\/strong><br \\/>\\n<strong>3.python\\u5168\\u6808\\u524d\\u7aef\\u3001\\u540e\\u7aef\\uff1a<\\/strong><br \\/>\\n<strong>4.Linux\\u7f16\\u7a0b\\u5b66\\u4e60\\uff1a<\\/strong><br \\/>\\n<strong>5.python\\u5927\\u6570\\u636e\\u3001\\u4eba\\u5de5\\u667a\\u80fd\\u5b66\\u4e60\\uff1a<\\/strong><\\/p>\\n\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-04T20:12:41+08:00\",\"is_first\":true}', '2021-09-11 14:10:21', '2021-09-07 21:56:57', '2021-09-11 14:10:21');
INSERT INTO `notifications` VALUES (337, 'liked', 'App\\Models\\User', 3, '{\"user_id\":108,\"thread_id\":63,\"thread_username\":\"Thread\",\"thread_title\":\"Java\\u5b66\\u5b8c\\u54ea\\u4e9b\\u5185\\u5bb9\\u80fd\\u591f\\u51fa\\u53bb\\u627e\\u5de5\\u4f5c\",\"thread_created_at\":\"2021-08-08T01:09:29+08:00\",\"post_id\":166,\"post_content\":\"<h2>\\u7b2c\\u4e00\\uff0cJavase\\u5185\\u5bb9\\uff1a<\\/h2>\\n<p>1\\uff0c<strong>\\u73af\\u5883\\u642d\\u5efa\\uff1a<\\/strong> JDK\\u4e0b\\u8f7d\\u5b89\\u88c5\\uff0c\\u914d\\u7f6e\\u73af\\u5883\\u53d8\\u91cf\\u3002<\\/p>\\n<p>2\\uff0c<strong>\\u57fa\\u7840\\u8bed\\u6cd5<\\/strong> \\uff1a\\u5173\\u952e\\u5b57\\u8bb2\\u89e3\\uff0c\\u53d8\\u91cf\\/\\u5e38\\u91cf\\u8bb2\\u89e3\\uff0c\\u6ce8\\u91ca\\u3002<\\/p>\\n<p>3\\uff0c<strong>\\u9762\\u5411\\u5bf9\\u8c61<\\/strong> \\uff1a\\u4ec0\\u4e48\\u662f\\u9762\\u5411\\u5bf9\\u8c61\\uff0c\\u5bf9\\u8c61\\u4e0e\\u7c7b\\u7684\\u533a\\u522b\\uff0c\\u7c7b\\u7684\\u6784\\u9020\\u65b9\\u6cd5\\uff0c\\u7c7b\\u7684\\u5b9e\\u4f8b\\u65b9\\u6cd5\\uff0c\\u5982\\u4f55\\u5c01\\u88c5\\u7c7b\\uff0c\\u5982\\u4f55\\u7ee7\\u627f\\u7c7b\\uff0c\\u591a\\u6001\\u662f\\u4ec0\\u4e48\\uff0c\\u62bd\\u8c61\\u7c7b\\u8bb2\\u89e3\\uff0c\\u63a5\\u53e3\\u3002<\\/p>\\n<p>4\\uff0c<strong>\\u6570\\u7ec4<\\/strong> \\uff1a\\u4e00\\u7ef4\\u6570\\u7ec4\\uff0c\\u4e8c\\u7ef4\\u6570\\u7ec4\\uff0c\\u591a\\u7ef4\\u6570\\u7ec4\\u3002<\\/p>\\n<p>5\\uff0c<strong>\\u96c6\\u5408<\\/strong> \\uff1a\\u8fed\\u4ee3\\u5668\\/Iterator\\uff0cMap\\uff0cCollection\\u3002<\\/p>\\n<p>6\\uff0c<strong>\\u5e38\\u7528API<\\/strong> \\uff1aObject\\uff0cStirng\\uff0cStirngBuilder\\uff0cMath\\uff0cDate\\uff0cSimpleDateFormat\\u3002<\\/p>\\n<p>7\\uff0c<strong>IO\\u6d41<\\/strong> \\uff1a\\u5b57\\u7b26\\u6d41\\uff0c\\u5b57\\u8282\\u6d41\\u3002<\\/p>\\n<p>8\\uff0c<strong>\\u53cd\\u5c04\\u673a\\u5236<\\/strong> \\uff1a\\u4ec0\\u4e48\\u662f\\u53cd\\u5c04\\u673a\\u5236\\uff0c\\u5173\\u4e8eClass\\uff0c\\u53cd\\u5c04\\u7c7b\\u83b7\\u53d6\\u5bf9\\u8c61\\u65b9\\u5f0f\\uff0cClassLoader\\u7c7b\\u7684\\u52a0\\u8f7d\\u5668\\u8bb2\\u89e3\\uff0c\\u53cd\\u5c04\\u5e38\\u7528\\u7c7b\\u3002<\\/p>\\n<p>9\\uff0c<strong>\\u591a\\u7ebf\\u7a0b<\\/strong> \\uff1aThread\\/Runnable\\uff0c\\u7ebf\\u7a0b\\u72b6\\u6001\\u8bb2\\u89e3\\uff0c\\u7ebf\\u7a0b\\u5e38\\u7528API\\u4f7f\\u7528\\uff0c\\u7ebf\\u7a0b\\u6c60\\u8bb2\\u89e3\\uff0c\\u7ebf\\u7a0b\\u8c03\\u5ea6\\uff0c\\u5e76\\u53d1\\u548c\\u5e76\\u884c\\u7684\\u533a\\u522b\\uff0c\\u540c\\u6b65\\u548c\\u5f02\\u6b65\\u8bb2\\u89e3\\u3002<\\/p>\\n<p>10, <strong>\\u7f51\\u7edc\\u7f16\\u7a0b<\\/strong> \\uff1a\\u7f51\\u7edc\\u901a\\u8baf\\u534f\\u8bae\\uff0cTCP\\/IP\\/UDP\\u534f\\u8bae\\uff0cOSI\\/TCP IP\\u53c2\\u8003\\uff0cSocket\\u7f16\\u7a0b\\u3002<\\/p>\\n<p>11\\uff0c<strong>Junit<\\/strong> \\uff1a\\u8ba4\\u8bc6Junit\\uff0cJunit\\u73af\\u5883\\u914d\\u7f6e\\uff0c\\u6d4b\\u8bd5\\u6846\\u67b6\\uff0c\\u57fa\\u672c\\u7528\\u6cd5\\uff0c\\u5e38\\u7528API\\u3002<\\/p>\\n<p>\\u5b66\\u4e60\\u8981\\u6c42\\uff1a\\u5b66\\u5b8c\\u8fd9\\u4e9b\\uff0c\\u81f3\\u5c11\\u8981\\u7528\\u8fd9\\u4e9b\\u53ea\\u662f\\u5199\\u51fa\\u4e00\\u4e2asoket\\u804a\\u5929\\u5ba4\\u548c\\u6253\\u5b57\\u6e38\\u620f\\u51fa\\u6765\\u3002<\\/p>\\n<p>\\u4e0d\\u505a\\u8fd9\\u4e9b\\u5c0f\\u9879\\u76ee\\u7ec3\\u4e60\\u7684\\u8bdd\\uff0c\\u4e00\\u53e5\\u8bdd\\uff1a\\u57fa\\u7840\\u4e0d\\u7262\\uff0c\\u5730\\u52a8\\u5c71\\u6447 \\uff01<\\/p>\\n<p>\\u57fa\\u7840\\u5b66\\u4e60\\u63a8\\u8350\\u4e66\\u7c4d\\u914d\\u5408\\u5b66\\u4e60\\uff1a<\\/p>\\n<p>1\\uff0c\\u300a<strong>Thinking in java\\u300b<\\/strong><\\/p>\\n<p>2\\uff0c\\u300aHead First Java\\u300b<\\/p>\\n<h2>\\u7b2c\\u4e8c\\uff0c\\u6570\\u636e\\u5e93\\uff1a<\\/h2>\\n<p>\\u6570\\u636e\\u5e93\\u662f\\u5f00\\u53d1\\u7a0b\\u5e8f\\u4e2d\\u5fc5\\u4e0d\\u53ef\\u5c11\\u7684\\u4e00\\u4e2a\\u90e8\\u5206\\uff0c\\u6570\\u636e\\u5e93\\u4e3b\\u8981\\u662f\\u7528\\u6765\\u4fdd\\u5b58\\u6570\\u636e\\u7684\\uff0c\\u8ba9\\u6570\\u636e\\u4e0d\\u9519\\u4e71\\uff0c\\u4e0d\\u968f\\u610f\\u6539\\u52a8\\uff0c\\u4e0d\\u8ba9\\u6570\\u636e\\u4e22\\u5931\\uff0c\\u4fdd\\u8bc1\\u6570\\u636e\\u5b8c\\u6574\\u3002<\\/p>\\n<p>\\u6570\\u636e\\u5e93\\u641e\\u5b9aMySQL\\u5c31\\u53ef\\u4ee5\\u4e86\\uff0c\\u56e0\\u4e3a\\u73b0\\u5728\\u5f88\\u591a\\u4e92\\u8054\\u7f51\\u516c\\u53f8\\u591a\\u6570\\u90fd\\u662f\\u7528\\u8fd9\\u4e2a\\u6570\\u636e\\u5e93\\uff0c<\\/p>\\n<p>\\u5b66\\u5b8cMySQL\\u4e00\\u5b9a\\u8981\\u591a\\u53bb\\u7ec3\\u4e60SQL\\uff0c\\u7279\\u522b\\u662fselect\\uff0c\\u73b0\\u5728\\u4e0d\\u7ec3\\u7684\\u8bdd\\uff0c\\u540e\\u9762\\u5c31\\u5e9f\\u4e86\\u3002<\\/p>\\n<h2>\\u7b2c\\u4e09\\uff0cJDBC\\uff1a<\\/h2>\\n<p>1\\uff0cjdbc\\u57fa\\u7840\\uff1aJDBC Connection\\uff0cCallableStatement\\uff0cStatement\\uff0cPreparedStatement\\uff0cResultSet\\uff0c\\u7b49\\u7b49\\u4e0d\\u540c\\u7c7b\\u7684\\u4f7f\\u7528<\\/p>\\n<p>2\\uff0c\\u8fde\\u63a5\\u6c60\\u6280\\u672f\\uff1a\\u5b66\\u4e60\\u8fde\\u63a5\\u6c60\\u6982\\u5ff5\\uff0c\\u638c\\u63e1\\u8fde\\u63a5\\u6c60\\u7684\\u914d\\u7f6e\\uff0c\\u5efa\\u7acb\\uff0c\\u6cbb\\u7406\\u548c\\u5173\\u95ed\\u3002<\\/p>\\n<h2>\\u7b2c\\u56db\\uff0c\\u524d\\u7aef\\uff1a<\\/h2>\\n<p>\\u524d\\u7aef\\u7684\\u4e09\\u5927\\u6838\\u5fc3\\u6280\\u672fHTML , CSS , JavaScript\\u8fd9\\u4e9b\\u4e8b\\u5fc5\\u987b\\u8981\\u5b66\\u7684\\uff0c\\u8fd9\\u5c31\\u662f\\u6240\\u8c13\\u7684\\u524d\\u7aef\\u4e09\\u5251\\u5ba2\\u3002<\\/p>\\n<p>\\u5b66\\u4e60\\u8981\\u6c42\\uff1a\\u5b66\\u5b8c\\u8fd9\\u4e9b\\u8981\\u80fd\\u591f\\u624b\\u5199\\u51fa\\u4e00\\u4e2a\\u9759\\u6001\\u4e1a\\u9762\\uff0c\\u8fd9\\u662f\\u5fc5\\u987b\\u8981\\u7ec3\\u4e60\\u7684\\u3002\\u4e0d\\u7ec3\\u4e60\\u7684\\u8bdd\\uff0c\\u5230\\u540e\\u9762\\u5f88\\u5bb9\\u6613\\u5fd8\\u8bb0\\u4ee3\\u7801\\u3002<\\/p>\\n<p>\\u5916\\u5e26\\u5b66\\u4e60\\u4e24\\u4e2a\\u6846\\u67b6\\uff08JQuery\\u548cBootstrap\\uff09<\\/p>\\n<h2>\\u7b2c\\u4e94\\uff0cweb\\uff1a<\\/h2>\\n<p>1\\uff0cXML<\\/p>\\n<p>2\\uff0cMVC\\u67b6\\u6784\\u6a21\\u5f0f<\\/p>\\n<p>3\\uff0cServlet<\\/p>\\n<p>4\\uff0cFilter<\\/p>\\n<p>5\\uff0cJSP<\\/p>\\n<p>6\\uff0cEL<\\/p>\\n<p>7\\uff0cJSTL<\\/p>\\n<p>8\\uff0cAJAX<\\/p>\\n<p>9\\uff0c\\u4ee3\\u7406\\u6a21\\u5f0f<\\/p>\\n<p>10\\uff0c\\u5de5\\u5382\\u6a21\\u5f0f<\\/p>\\n<p>11\\uff0c\\u6570\\u636e\\u5e93\\u94fe\\u63a5\\u6c60<\\/p>\\n<p>\\u5b66\\u4e60\\u8981\\u6c42\\uff1a\\u5b66\\u5b8c\\u8fd9\\u4e9b\\u4e00\\u5b9a\\u8981\\u6df1\\u523b\\u7406\\u89e3MVC\\u67b6\\u6784\\u6a21\\u5f0f<\\/p>\\n<p>\\u7136\\u540e\\u7ec3\\u4e60\\u4e00\\u4e2aMVC\\u6a21\\u5f0f\\u7684\\u9879\\u76ee\\uff0c\\u7528servlet+Ajax+MySQL+jQuery+JDBC+JSP\\u7b49\\u7b49\\u4f60\\u4e4b\\u524d\\u5b66\\u8fc7\\u7684\\u6280\\u672f\\u5199\\u51faOA\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0c\\u8d85\\u5e02\\u8ba2\\u5355\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0c\\u91c7\\u8d2d\\u8ba2\\u5355\\u7ba1\\u7406\\u7cfb\\u7edf\\u7b49\\u7b49\\u9879\\u76ee\\u7684\\u7ec3\\u4e60\\u3002\\u8fd9\\u4e9b\\u9879\\u76ee\\u4e8b\\u5fc5\\u987b\\u7ec3\\u4e60\\u7684\\uff0c\\u8f6c\\u53d8\\u4f60\\u7684mvc\\u601d\\u60f3\\uff0c\\u7ec3\\u5f97\\u8d8a\\u591a\\uff0c\\u540e\\u9762\\u5b66\\u4e60\\u6846\\u67b6\\u5c31\\u8d8a\\u8f7b\\u677e\\uff0c\\u4e0d\\u7ec3\\u7684\\u8bdd\\u540e\\u9762\\u5b66\\u4e60\\u5c31\\u4f1a\\u5f88\\u5403\\u529b\\u3002<\\/p>\\n<h2>\\u7b2c\\u516d\\uff0c\\u9879\\u76ee\\u7ba1\\u7406\\uff1aMaven\\u548cGit<\\/h2>\\n<p>\\u8fd9\\u4e24\\u4e2a\\u6280\\u672f\\u6ca1\\u6709\\u4ec0\\u4e48\\u7279\\u522b\\u7684\\u8981\\u6c42\\uff0c\\u80fd\\u591f\\u719f\\u7ec3\\u64cd\\u4f5c\\u5c31\\u884c\\u4e86\\u3002<\\/p>\\n<h2>\\u7b2c\\u4e03\\uff0c\\u6846\\u67b6\\uff1a<\\/h2>\\n<p>1\\uff0cSpring<\\/p>\\n<p>2\\uff0cSpringMVC<\\/p>\\n<p>3\\uff0cMyBatis<\\/p>\\n<p>\\u8fd9\\u4e9b\\u6846\\u67b6\\u4e8b\\u5fc5\\u987b\\u8981\\u5b66\\u4e60\\u638c\\u63e1\\u7684\\uff0c\\u522b\\u770b\\u5c31\\u8fd9\\u51e0\\u4e2a\\u6846\\u67b6\\uff0c\\u6211\\u4f30\\u8ba1\\u6ca1\\u6709\\u5b66\\u8fc7\\u7684\\u65b0\\u624b\\uff0c\\u6ca1\\u6709\\u8001\\u5e08\\u5e26\\u7684\\u8bdd\\u4e00\\u4e2a\\u6708\\u80af\\u5b9a\\u5403\\u4e0d\\u6d88\\u3002<\\/p>\\n<p>\\u5982\\u679c\\u4e4b\\u524d\\u7684MVC\\u67b6\\u6784\\u6a21\\u5f0f\\u9879\\u76ee\\u6ca1\\u6709\\u7ec3\\u4e60\\u8fc7\\uff0c\\u8fd8\\u6ca1\\u6709\\u641e\\u660e\\u767d\\u7684\\u8bdd\\uff0c\\u5f88\\u591a\\u4eba\\u5728\\u5b66\\u4e60\\u6846\\u67b6\\u8fd9\\u91cc\\u5c31\\u5df2\\u7ecf\\u60f3\\u653e\\u5f03\\u4e86\\u3002<\\/p>\\n<p>\\u5b66\\u5b8c\\u8fd9\\u4e09\\u4e2a\\u6846\\u67b6\\uff0c\\u7136\\u540e\\u518d\\u53bb\\u8fc7\\u4e00\\u904d\\u8fd9\\u4e24\\u4e2a\\u6846\\u67b6Struts2\\u548cHibernate\\uff0c\\u8fd9\\u4e24\\u4e2a\\u6846\\u67b6\\u8fc7\\u4e00\\u904d\\u5c31\\u53ef\\u4ee5\\u4e86\\u3002<\\/p>\\n<p>\\u5b66\\u4e60\\u8981\\u6c42\\uff1a\\u5b66\\u5b8c\\u80055\\u4e2a\\u6846\\u67b6\\u5c31\\u53ef\\u4ee5\\u5f00\\u59cb\\u642d\\u5efa\\u4e00\\u4e2a\\u6846\\u67b6\\u73af\\u5883\\uff0c\\u5347\\u7ea7\\u4e00\\u4e0b\\u4e4b\\u524d\\u81ea\\u5df1\\u7ec3\\u4e60\\u7684MVC\\u67b6\\u6784\\u6a21\\u5f0f\\u7684\\u9879\\u76ee\\u3002<\\/p>\\n<p>\\u6bd4\\u5982\\u628aServlet\\u6362\\u6210springMVC\\uff0c\\u628aJDBC\\u6362\\u6210MyBatis\\uff0c\\u628aspring\\u653e\\u4e0a\\u53bb\\u89e3\\u8026MVC\\u3002<\\/p>\\n<p>\\u6362\\u5b8c\\u80fd\\u591f\\u8dd1\\u8d77\\u6765\\u4e4b\\u540e\\u518d\\u7ec3\\u4e60\\u4e24\\u4e2a\\u9879\\u76ee\\uff1a<\\/p>\\n<p>\\u4ec0\\u4e48ssm\\u5ba2\\u6237\\u5173\\u7cfb\\u7ba1\\u7406\\u7cfb\\u7edf\\u4e4b\\u7c7b\\u7684\\u9879\\u76ee\\uff0c\\u53ea\\u8981\\u662f\\u6709\\u5173ssm\\u7684\\u9879\\u76ee\\u5c31\\u53ef\\u4ee5\\u7ec3\\u4e60\\u4e00\\u4e0b\\u3002<\\/p>\\n<h2>\\u7b2c\\u516b\\uff0c\\u8fce\\u5408\\u5e02\\u573a\\u9700\\u6c42\\uff1a<\\/h2>\\n<p>\\u5b66\\u4e60Springboot\\uff0c\\u5e76\\u7528Springboot\\u7ec3\\u4e60\\u4e24\\u4e2a\\u9879\\u76ee\\u4ee5\\u4e0a\\uff0c\\u5982\\u679c\\u5b66\\u4e60Springboot\\u5f88\\u5403\\u529b\\u7684\\u8bdd\\uff0c\\u518d\\u56de\\u53bb\\u5b66\\u4e00\\u904dspring\\u3002<\\/p>\\n<p>\\u5b66\\u5230\\u8fd9\\u4e00\\u6b65\\u5c31\\u53ef\\u4ee5\\u9762\\u8bd5\\u4e86\\u3002<\\/p>\\n<h2>\\u7b2c\\u4e5d\\uff0c\\u52a0\\u9910\\uff1a<\\/h2>\\n<p>\\u5982\\u679c\\u89c9\\u5f97\\u81ea\\u5df1\\u6280\\u672f\\u5b66\\u4e60\\u8fd8\\u4e0d\\u591f\\u7684\\u8bdd\\uff0c\\u53ef\\u4ee5\\u7ed9\\u81ea\\u5df1\\u52a0\\u70b9\\u9910\\u3002<\\/p>\\n<p>\\u5b66\\u4e60\\u4e00\\u4e0bDubbo\\uff0cZooKeeper\\uff0cSpringCloud\\uff0cMQ,Nginx\\uff0cRedis\\uff0cLiunx\\uff0cvue\\uff0c\\u591a\\u7ebf\\u7a0b\\uff0c\\u8bbe\\u8ba1\\u6a21\\u5f0f\\uff0cJVM\\u8c03\\u4f18\\uff0c\\u7b97\\u6cd5\\u3002<\\/p>\\n<p>\\u628a\\u4e0a\\u9762\\u8fd9\\u4e9b\\u6280\\u672f\\u641e\\u5b9a\\u4e86\\uff0c\\u5c31\\u53ef\\u4ee5\\u8fbe\\u5230\\u627e\\u5de5\\u4f5c\\u7684\\u6c34\\u5e73\\u4e86\\u3002<\\/p>\\n<p>\\u8fd9\\u662f\\u4e00\\u5957\\u5b8c\\u6574\\u7684\\u6807\\u51c6\\u5b66\\u4e60\\u6c34\\u5e73<\\/p>\\n\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-08T01:09:29+08:00\",\"is_first\":true}', '2021-09-11 14:10:21', '2021-09-07 21:56:58', '2021-09-11 14:10:21');
INSERT INTO `notifications` VALUES (338, 'liked', 'App\\Models\\User', 3, '{\"user_id\":108,\"thread_id\":7,\"thread_username\":\"Thread\",\"thread_title\":\"\\u5185\\u5b58\\u533a\\u57df\",\"thread_created_at\":\"2021-08-01T00:52:51+08:00\",\"post_id\":9,\"post_content\":\"<p>\\u7cfb\\u7edf\\u7684\\u5185\\u5b58\\u53ef\\u5927\\u7565\\u5206\\u4e3a3\\u4e2a\\u533a\\u57df\\uff0c\\u5373\\u7cfb\\u7edf\\u533a(OS)\\u3001\\u7a0b\\u5e8f\\u533a(Program)\\u3001\\u548c\\u6570\\u636e\\u533a(Data)\\u3002<\\/p>\\n<p>\\u5f53\\u7a0b\\u5e8f\\u6267\\u884c\\u65f6\\uff0c\\u7a0b\\u5e8f\\u4ee3\\u7801\\u4f1a\\u52a0\\u8f7d\\u5230\\u5185\\u5b58\\u4e2d\\u7684\\u7a0b\\u5e8f\\u533a\\uff0c\\u6570\\u636e\\u6682\\u65f6\\u5b58\\u50a8\\u5728\\u6570\\u636e\\u533a\\u4e2d\\u3002<\\/p>\\n\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T00:52:52+08:00\",\"is_first\":true}', '2021-09-11 14:10:21', '2021-09-07 21:57:00', '2021-09-11 14:10:21');
INSERT INTO `notifications` VALUES (339, 'liked', 'App\\Models\\User', 3, '{\"user_id\":108,\"thread_id\":1,\"thread_username\":\"Thread\",\"thread_title\":\"Java\\u9ad8\\u7ea7\\u5de5\\u7a0b\\u5e08\\u5b66\\u4e60\\u6d41\\u7a0b\",\"thread_created_at\":\"2021-08-01T00:39:43+08:00\",\"post_id\":1,\"post_content\":\"<p>\\u4e00 \\u3001\\u5b66\\u4e60Servlet\\u548cTomcat<\\/p>\\n<ul>\\n<li>Servlet\\u7b2c\\u4e00\\u7bc7\\u3010\\u4ecb\\u7ecdServlet\\u3001HTTP\\u534f\\u8bae\\u3001WEB\\u76ee\\u5f55\\u7ed3\\u6784\\u3001\\u7f16\\u5199\\u5165\\u95e8Servlet\\u7a0b\\u5e8f\\u3001Servlet\\u751f\\u547d\\u5468\\u671f\\u3011<\\/li>\\n<li>Servlet\\u7b2c\\u4e8c\\u7bc7\\u3010Servlet\\u8c03\\u7528\\u56fe\\u3001Servlet\\u7ec6\\u8282\\u3001ServletConfig\\u3001ServletContext\\u3011<\\/li>\\n<li>Servlet\\u7b2c\\u4e09\\u7bc7\\u3010request\\u548cresponse\\u7b80\\u4ecb\\u3001response\\u7684\\u5e38\\u89c1\\u5e94\\u7528\\u3011<\\/li>\\n<li>Servlet\\u7b2c\\u56db\\u7bc7\\u3010request\\u5bf9\\u8c61\\u5e38\\u7528\\u65b9\\u6cd5\\u3001\\u5e94\\u7528\\u3011<\\/li>\\n<li>Servlet\\u7b2c\\u4e94\\u7bc7\\u3010\\u4ecb\\u7ecd\\u4f1a\\u8bdd\\u6280\\u672f\\u3001Cookie\\u7684API\\u3001\\u8be6\\u89e3\\u3001\\u5e94\\u7528\\u3011<\\/li>\\n<li>Servlet\\u7b2c\\u516d\\u7bc7\\u3010Session\\u4ecb\\u7ecd\\u3001API\\u3001\\u751f\\u547d\\u5468\\u671f\\u3001\\u5e94\\u7528\\u3001\\u4e0eCookie\\u533a\\u522b\\u3011<\\/li>\\n<\\/ul>\\n<p>\\u4e8c \\u3001\\u5b66\\u4e60JDBC\\u548c\\u6570\\u636e\\u5e93<\\/p>\\n<pre><code>JDBC<\\/code><\\/pre>\\n<ul>\\n<li>\\n<p>JDBC\\u3010\\u4ecb\\u7ecdJDBC\\u3001\\u4f7f\\u7528JDBC\\u8fde\\u63a5\\u6570\\u636e\\u5e93\\u3001\\u7b80\\u5355\\u7684\\u5de5\\u5177\\u7c7b\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>JDBC\\u3010PreparedStatment\\u3001\\u6279\\u5904\\u7406\\u3001\\u5904\\u7406\\u4e8c\\u8fdb\\u5236\\u3001\\u81ea\\u52a8\\u4e3b\\u952e\\u3001\\u8c03\\u7528\\u5b58\\u50a8\\u8fc7\\u7a0b\\u3001\\u51fd\\u6570\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>JDBC\\u3010\\u4e8b\\u52a1\\u3001\\u5143\\u6570\\u636e\\u3001\\u6539\\u9020JDBC\\u5de5\\u5177\\u7c7b\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>JDBC\\u3010\\u6570\\u636e\\u5e93\\u8fde\\u63a5\\u6c60\\u3001DbUtils\\u6846\\u67b6\\u3001\\u5206\\u9875\\u3011<\\/p>\\n<p>\\u6570\\u636e\\u5e93<\\/p>\\n<\\/li>\\n<li>\\n<p>SQLServer\\u5b89\\u88c5\\u548cJDBC\\u8fde\\u63a5SQLServer<\\/p>\\n<\\/li>\\n<li>\\n<p>\\u6570\\u636e\\u5e93\\u539f\\u7406<\\/p>\\n<\\/li>\\n<li>\\n<p>Oracle\\u603b\\u7ed3\\u3010SQL\\u7ec6\\u8282\\u3001\\u591a\\u8868\\u67e5\\u8be2\\u3001\\u5206\\u7ec4\\u67e5\\u8be2\\u3001\\u5206\\u9875\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>Oracle\\u603b\\u7ed3\\u3010\\u89c6\\u56fe\\u3001\\u7d22\\u5f15\\u3001\\u4e8b\\u52a1\\u3001\\u7528\\u6237\\u6743\\u9650\\u3001\\u6279\\u91cf\\u64cd\\u4f5c\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>Oracle\\u603b\\u7ed3\\u3010PLSQL\\u5b66\\u4e60\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>\\u6570\\u636e\\u5e93\\u4e24\\u4e2a\\u795e\\u5668\\u3010\\u7d22\\u5f15\\u548c\\u9501\\u3011<\\/p>\\n<\\/li>\\n<\\/ul>\\n<p>\\u4e09 \\u3001\\u5b66\\u4e60\\u8fc7\\u6ee4\\u5668\\u76d1\\u542c\\u5668<\\/p>\\n<ul>\\n<li>\\u8fc7\\u6ee4\\u5668\\u5e94\\u7528\\u3010\\u7f16\\u7801\\u3001\\u654f\\u611f\\u8bcd\\u3001\\u538b\\u7f29\\u3001\\u8f6c\\u4e49\\u8fc7\\u6ee4\\u5668\\u3011<\\/li>\\n<li>\\u76d1\\u542c\\u5668\\u5165\\u95e8<\\/li>\\n<li>\\u76d1\\u542c\\u5668\\u5e94\\u7528\\u3010\\u7edf\\u8ba1\\u7f51\\u7ad9\\u4eba\\u6570\\u3001\\u81ea\\u5b9a\\u4e49session\\u626b\\u63cf\\u5668\\u3001\\u8e22\\u4eba\\u5c0f\\u6848\\u4f8b\\u3011<\\/li>\\n<\\/ul>\\n<p>\\u56db \\u3001\\u5b66\\u4e60AJAX\\u3001HTTP\\u3001Web\\u524d\\u7aef\\u76f8\\u5173\\u77e5\\u8bc6<\\/p>\\n<pre><code>HTTP<\\/code><\\/pre>\\n<ul>\\n<li>\\n<p>HTTP\\u5e94\\u7528<\\/p>\\n<p>AJAX<\\/p>\\n<\\/li>\\n<li>\\n<p>AJAX\\u5e94\\u7528\\u3010\\u80a1\\u7968\\u6848\\u4f8b\\u3001\\u9a8c\\u8bc1\\u7801\\u6821\\u9a8c\\u3011<\\/p>\\n<p>XML\\u548cJSON<\\/p>\\n<\\/li>\\n<li>\\n<p>XML\\u57fa\\u672c\\u5e94\\u7528<\\/p>\\n<\\/li>\\n<li>\\n<p>JSON\\u57fa\\u672c\\u5e94\\u7528<\\/p>\\n<\\/li>\\n<\\/ul>\\n<p>\\u4e94 \\u3001\\u505a\\u4e00\\u4e24\\u4e2a\\u5c0f\\u9879\\u76ee\\u7ec3\\u624b<\\/p>\\n<ul>\\n<li>Web\\u5f00\\u53d1\\u6a21\\u5f0f\\u3010Mode I \\u548cMode II\\u7684\\u4ecb\\u7ecd\\u3001\\u5e94\\u7528\\u6848\\u4f8b\\u3011<\\/li>\\n<li>\\u7528\\u6237\\u767b\\u9646\\u6ce8\\u518c\\u3010JDBC\\u7248\\u3011<\\/li>\\n<li>\\u8d2d\\u7269\\u8f66\\u3010JavaWeb\\u5c0f\\u9879\\u76ee\\u3001\\u7b80\\u5355\\u7248\\u3011<\\/li>\\n<li>\\u3010JavaWeb\\u3011\\u5ba2\\u6237\\u5173\\u7cfb\\u7ba1\\u7406\\u7cfb\\u7edf<\\/li>\\n<li>\\u3010JavaWeb\\u3011\\u6743\\u9650\\u7ba1\\u7406\\u7cfb\\u7edf<\\/li>\\n<li>\\u56fe\\u4e66\\u7ba1\\u7406\\u7cfb\\u7edf\\u3010\\u90e8\\u7f72\\u5f00\\u53d1\\u73af\\u5883\\u3001\\u89e3\\u51b3\\u5206\\u7c7b\\u3001\\u56fe\\u4e66\\u3001\\u524d\\u53f0\\u9875\\u9762\\u6a21\\u5757\\u3011<\\/li>\\n<li>\\u56fe\\u4e66\\u7ba1\\u7406\\u7cfb\\u7edf\\u3010\\u7528\\u6237\\u3001\\u8d2d\\u4e70\\u3001\\u8ba2\\u5355\\u6a21\\u5757\\u3001\\u6dfb\\u52a0\\u6743\\u9650\\u3011<\\/li>\\n<li>\\u3010JavaWeb\\u3011\\u56fe\\u4e66\\u7ba1\\u7406\\u7cfb\\u7edf\\u3010\\u603b\\u7ed3\\u3011<\\/li>\\n<\\/ul>\\n<p>\\u516d \\u3001\\u662f\\u5426\\u8981\\u5b66\\u4e60JSP(\\u9009\\u5b66)<\\/p>\\n<ul>\\n<li>JSP\\u7b2c\\u4e00\\u7bc7\\u3010JSP\\u4ecb\\u7ecd\\u3001\\u5de5\\u4f5c\\u539f\\u7406\\u3001\\u751f\\u547d\\u5468\\u671f\\u3001\\u8bed\\u6cd5\\u3001\\u6307\\u4ee4\\u3001\\u884c\\u4e3a\\u3011<\\/li>\\n<li>JSP\\u7b2c\\u4e8c\\u7bc7\\u3010\\u5185\\u7f6e\\u5bf9\\u8c61\\u7684\\u4ecb\\u7ecd\\u30014\\u79cd\\u5c5e\\u6027\\u8303\\u56f4\\u3001\\u5e94\\u7528\\u573a\\u666f\\u3011<\\/li>\\n<li>JSP\\u7b2c\\u4e09\\u7bc7\\u3010JavaBean\\u7684\\u4ecb\\u7ecd\\u3001JSP\\u7684\\u884c\\u4e3a--JavaBean\\u3011<\\/li>\\n<li>JSP\\u7b2c\\u56db\\u7bc7\\u3010EL\\u8868\\u8fbe\\u5f0f\\u4ecb\\u7ecd\\u3001\\u83b7\\u53d6\\u5404\\u7c7b\\u6570\\u636e\\u300111\\u4e2a\\u5185\\u7f6e\\u5bf9\\u8c61\\u3001\\u6267\\u884c\\u8fd0\\u7b97\\u3001\\u56de\\u663e\\u6570\\u636e\\u3001\\u81ea\\u5b9a\\u4e49\\u51fd\\u6570\\u3001fn\\u65b9\\u6cd5\\u5e93\\u3011<\\/li>\\n<li>JSP\\u7b2c\\u4e94\\u7bc7\\u3010JSTL\\u7684\\u4ecb\\u7ecd\\u3001core\\u6807\\u7b7e\\u5e93\\u3001fn\\u65b9\\u6cd5\\u5e93\\u3001fmt\\u6807\\u7b7e\\u5e93\\u3011<\\/li>\\n<li>JSP\\u7b2c\\u516d\\u7bc7\\u3010\\u81ea\\u5b9a\\u4e49\\u6807\\u7b7e\\u4e4b\\u4f20\\u7edf\\u6807\\u7b7e\\u3011<\\/li>\\n<\\/ul>\\n<p>\\u4e03 \\u3001Spring\\u5b66\\u4e60(\\u6700\\u7ec8)<\\/p>\\n<pre><code>\\u5165\\u95e8<\\/code><\\/pre>\\n<ul>\\n<li>\\n<p>\\u5b66\\u4e60\\u5de5\\u5382\\u6a21\\u5f0f\\u548c\\u4ee3\\u7406\\u6a21\\u5f0f<\\/p>\\n<\\/li>\\n<li>\\n<p>Spring\\u3010\\u4f9d\\u8d56\\u6ce8\\u5165\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>Spring\\u3010AOP\\u6a21\\u5757\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>Spring\\u3010DAO\\u6a21\\u5757\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>Spring IOC\\u77e5\\u8bc6\\u70b9\\u4e00\\u7f51\\u6253\\u5c3d\\uff01\\u3010\\u603b\\u7ed3\\u7bc7\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>Spring AOP\\u5c31\\u662f\\u8fd9\\u4e48\\u7b80\\u5355\\u5566\\u3010\\u603b\\u7ed3\\u7bc7\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>Synchronized\\u9501\\u5728Spring\\u4e8b\\u52a1\\u7ba1\\u7406\\u4e0b\\uff0c\\u4e3a\\u5565\\u8fd8\\u7ebf\\u7a0b\\u4e0d\\u5b89\\u5168\\uff1f<\\/p>\\n<\\/li>\\n<li>\\n<p>SpringMVC\\u5165\\u95e8<\\/p>\\n<\\/li>\\n<li>\\n<p>SpringMVC\\u3010\\u5f00\\u53d1Controller\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>\\u8be6\\u89e3SpringMVC\\u3010\\u53c2\\u6570\\u7ed1\\u5b9a\\u3001\\u6570\\u636e\\u56de\\u663e\\u3001\\u6587\\u4ef6\\u4e0a\\u4f20\\u3011<\\/p>\\n<\\/li>\\n<li>\\n<p>SpringMVC\\u3010\\u6821\\u9a8c\\u5668\\u3001\\u7edf\\u4e00\\u5904\\u7406\\u5f02\\u5e38\\u3001RESTful\\u3001\\u62e6\\u622a\\u5668\\u3011<\\/p>\\n<p>\\u8fdb\\u9636<\\/p>\\n<\\/li>\\n<li>\\n<p>SpringBoot\\u81ea\\u52a8\\u914d\\u7f6e<\\/p>\\n<\\/li>\\n<li>\\n<p>SpringDataJPA<\\/p>\\n<\\/li>\\n<\\/ul>\\n\",\"reply_post_id\":0,\"post_created_at\":\"2021-08-01T00:39:43+08:00\",\"is_first\":true}', '2021-09-11 14:10:21', '2021-09-07 21:57:03', '2021-09-11 14:10:21');
INSERT INTO `notifications` VALUES (340, 'system', 'App\\Models\\User', 109, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"_\\u884c\\u8fc8\\u9761\\u9761_\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-11 14:12:09', '2021-09-11 14:12:09');
INSERT INTO `notifications` VALUES (341, 'system', 'App\\Models\\User', 110, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u81f3\\u5473\\u5373\\u6e05\\u6b22\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-15 21:46:49', '2021-09-15 21:46:49');
INSERT INTO `notifications` VALUES (342, 'replied', 'App\\Models\\User', 107, '{\"user_id\":110,\"thread_id\":140,\"thread_username\":\"\\u72b9\\u671b\\u84dd\\u5c71\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-07T21:43:45+08:00\",\"post_id\":369,\"post_content\":\"\\u73a9\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-15T21:52:50+08:00\",\"is_first\":true}', NULL, '2021-09-15 21:52:50', '2021-09-15 21:52:50');
INSERT INTO `notifications` VALUES (343, 'system', 'App\\Models\\User', 111, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"GZ\\u5c0f\\u7687\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-15 21:53:36', '2021-09-15 21:53:36');
INSERT INTO `notifications` VALUES (344, 'replied', 'App\\Models\\User', 110, '{\"user_id\":111,\"thread_id\":143,\"thread_username\":\"\\u81f3\\u5473\\u5373\\u6e05\\u6b22\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-15T21:47:44+08:00\",\"post_id\":371,\"post_content\":\"\\u786e\\u5b9e\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-15T21:56:04+08:00\",\"is_first\":true}', NULL, '2021-09-15 21:56:04', '2021-09-15 21:56:04');
INSERT INTO `notifications` VALUES (345, 'replied', 'App\\Models\\User', 2, '{\"user_id\":111,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":372,\"post_content\":\"\\u4e0d\\u66f4\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-15T21:57:26+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-09-15 21:57:26', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (346, 'system', 'App\\Models\\User', 112, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4f2f\\u7eb3\\u4e4c\\u4e0e7\\u53f7\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-21 21:16:16', '2021-09-21 21:16:16');
INSERT INTO `notifications` VALUES (347, 'replied', 'App\\Models\\User', 3, '{\"user_id\":112,\"thread_id\":145,\"thread_username\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-18T00:02:49+08:00\",\"post_id\":375,\"post_content\":\"????\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-21T21:17:43+08:00\",\"is_first\":true}', '2021-10-13 12:35:22', '2021-09-21 21:17:43', '2021-10-13 12:35:22');
INSERT INTO `notifications` VALUES (348, 'replied', 'App\\Models\\User', 3, '{\"user_id\":112,\"thread_id\":145,\"thread_username\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-18T00:02:49+08:00\",\"post_id\":376,\"post_content\":\"\\u4ec0\\u4e48\\u9b3c\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-21T21:17:53+08:00\",\"is_first\":true}', '2021-10-13 12:35:22', '2021-09-21 21:17:53', '2021-10-13 12:35:22');
INSERT INTO `notifications` VALUES (349, 'replied', 'App\\Models\\User', 2, '{\"user_id\":112,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":377,\"post_content\":\"@Jerome\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-21T21:18:15+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-09-21 21:18:15', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (350, 'related', 'App\\Models\\User', 2, '{\"user_id\":2,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\\u5f81\\u6c42\\u66f4\\u65b0\\u610f\\u89c1\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":377,\"post_content\":\"@Jerome\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-21T21:18:15+08:00\"}', '2021-10-18 11:39:17', '2021-09-21 21:18:15', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (351, 'system', 'App\\Models\\User', 113, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6df8\\u6df8\\u6df8\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-21 21:19:11', '2021-09-21 21:19:11');
INSERT INTO `notifications` VALUES (352, 'replied', 'App\\Models\\User', 112, '{\"user_id\":113,\"thread_id\":146,\"thread_username\":\"\\u4f2f\\u7eb3\\u4e4c\\u4e0e7\\u53f7\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-21T21:17:19+08:00\",\"post_id\":379,\"post_content\":\"LOL\\u73b0\\u5728\\u5c31\\u662f\\u8fd9\\u6837\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-21T21:20:57+08:00\",\"is_first\":true}', NULL, '2021-09-21 21:20:57', '2021-09-21 21:20:57');
INSERT INTO `notifications` VALUES (353, 'replied', 'App\\Models\\User', 112, '{\"user_id\":113,\"thread_id\":146,\"thread_username\":\"\\u4f2f\\u7eb3\\u4e4c\\u4e0e7\\u53f7\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-21T21:17:19+08:00\",\"post_id\":380,\"post_content\":\"\\u5783\\u573e\\u6e38\\u620f\\u4e00\\u4e2a\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-21T21:21:09+08:00\",\"is_first\":true}', NULL, '2021-09-21 21:21:09', '2021-09-21 21:21:09');
INSERT INTO `notifications` VALUES (354, 'replied', 'App\\Models\\User', 2, '{\"user_id\":113,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":381,\"post_content\":\"?\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-21T21:21:32+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-09-21 21:21:32', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (355, 'system', 'App\\Models\\User', 114, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"Wyattt\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-21 21:22:29', '2021-09-21 21:22:29');
INSERT INTO `notifications` VALUES (356, 'replied', 'App\\Models\\User', 113, '{\"user_id\":114,\"thread_id\":147,\"thread_username\":\"\\u6df8\\u6df8\\u6df8\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-21T21:20:29+08:00\",\"post_id\":382,\"post_content\":\"LOL\\u4e0d\\u4e00\\u76f4\\u90fd\\u662f\\u8fd9\\u6837\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-21T21:23:09+08:00\",\"is_first\":true}', NULL, '2021-09-21 21:23:09', '2021-09-21 21:23:09');
INSERT INTO `notifications` VALUES (357, 'replied', 'App\\Models\\User', 114, '{\"user_id\":8,\"thread_id\":148,\"thread_username\":\"Wyattt\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-21T21:23:24+08:00\",\"post_id\":384,\"post_content\":\"\\u624b\\u653e\\u4e0a\\u53bb10\\u79d2\\u5728\\u8f6c\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-21T21:24:29+08:00\",\"is_first\":true}', NULL, '2021-09-21 21:24:29', '2021-09-21 21:24:29');
INSERT INTO `notifications` VALUES (358, 'system', 'App\\Models\\User', 115, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u706c\\u4e4b\\u4e00\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-30 22:20:03', '2021-09-30 22:20:03');
INSERT INTO `notifications` VALUES (359, 'replied', 'App\\Models\\User', 3, '{\"user_id\":95,\"thread_id\":149,\"thread_username\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-21T21:49:48+08:00\",\"post_id\":390,\"post_content\":\"\\u4ec0\\u4e48\\u4e1c\\u897f\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-30T22:23:48+08:00\",\"is_first\":true}', '2021-10-13 12:35:22', '2021-09-30 22:23:48', '2021-10-13 12:35:22');
INSERT INTO `notifications` VALUES (360, 'replied', 'App\\Models\\User', 102, '{\"user_id\":95,\"thread_id\":134,\"thread_username\":\"\\u7483\\u6446\\u6446\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-04T20:55:36+08:00\",\"post_id\":391,\"post_content\":\"1\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-30T22:24:27+08:00\",\"is_first\":true}', NULL, '2021-09-30 22:24:27', '2021-09-30 22:24:27');
INSERT INTO `notifications` VALUES (361, 'replied', 'App\\Models\\User', 115, '{\"user_id\":95,\"thread_id\":150,\"thread_username\":\"\\u706c\\u4e4b\\u4e00\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-30T22:20:50+08:00\",\"post_id\":392,\"post_content\":\":fadai:\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-30T22:25:09+08:00\",\"is_first\":true}', NULL, '2021-09-30 22:25:09', '2021-09-30 22:25:09');
INSERT INTO `notifications` VALUES (362, 'system', 'App\\Models\\User', 116, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6c5f\\u6cb3\\u6e56\\u6cca\\u7684\\u6cfd\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-09-30 22:26:10', '2021-09-30 22:26:10');
INSERT INTO `notifications` VALUES (363, 'replied', 'App\\Models\\User', 115, '{\"user_id\":116,\"thread_id\":150,\"thread_username\":\"\\u706c\\u4e4b\\u4e00\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-30T22:20:50+08:00\",\"post_id\":394,\"post_content\":\"\\u4e70\\u4e2a\\u65b0\\u4e3b\\u673a\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-30T22:27:42+08:00\",\"is_first\":true}', NULL, '2021-09-30 22:27:42', '2021-09-30 22:27:42');
INSERT INTO `notifications` VALUES (364, 'replied', 'App\\Models\\User', 95, '{\"user_id\":116,\"thread_id\":151,\"thread_username\":\"zhizi\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-30T22:23:05+08:00\",\"post_id\":395,\"post_content\":\"\\u76f2\\u731c\\uff0c\\u767d\\u94f6\\u9ec4\\u91d1\\u4e0a\\u5355\\u5e73\\u65f6\\u8981\\u4e48\\u538b\\u5728\\u5bf9\\u9762\\u5854\\u4e0b\\u6216\\u88ab\\u538b\\u5728\\u81ea\\u5df1\\u5854\\u4e0b\\uff0c\\u6253\\u4e0d...\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-30T22:27:52+08:00\",\"is_first\":true}', NULL, '2021-09-30 22:27:52', '2021-09-30 22:27:52');
INSERT INTO `notifications` VALUES (365, 'replied', 'App\\Models\\User', 2, '{\"user_id\":116,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":396,\"post_content\":\"S\",\"reply_post_id\":0,\"post_created_at\":\"2021-09-30T22:28:13+08:00\",\"is_first\":true}', '2021-10-18 11:39:17', '2021-09-30 22:28:13', '2021-10-18 11:39:17');
INSERT INTO `notifications` VALUES (366, 'system', 'App\\Models\\User', 117, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"2\\u5012\\u8428\\u91d1\\u725b\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-03 21:21:56', '2021-10-03 21:21:56');
INSERT INTO `notifications` VALUES (367, 'system', 'App\\Models\\User', 118, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4e0d\\u4e8c\\u81e3lcl\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-03 21:22:58', '2021-10-03 21:22:58');
INSERT INTO `notifications` VALUES (368, 'replied', 'App\\Models\\User', 117, '{\"user_id\":118,\"thread_id\":153,\"thread_username\":\"2\\u5012\\u8428\\u91d1\\u725b\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-03T21:22:38+08:00\",\"post_id\":398,\"post_content\":\"\\u600e\\u4e48\\u53ef\\u80fd\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-03T21:23:29+08:00\",\"is_first\":true}', NULL, '2021-10-03 21:23:29', '2021-10-03 21:23:29');
INSERT INTO `notifications` VALUES (369, 'system', 'App\\Models\\User', 119, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u52ff\\u7a7a23333\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-03 21:24:52', '2021-10-03 21:24:52');
INSERT INTO `notifications` VALUES (370, 'replied', 'App\\Models\\User', 118, '{\"user_id\":119,\"thread_id\":154,\"thread_username\":\"\\u4e0d\\u4e8c\\u81e3lcl\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-03T21:24:07+08:00\",\"post_id\":400,\"post_content\":\"\\u54ea\\u4e2a\\u533a\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-03T21:25:23+08:00\",\"is_first\":true}', NULL, '2021-10-03 21:25:23', '2021-10-03 21:25:23');
INSERT INTO `notifications` VALUES (371, 'replied', 'App\\Models\\User', 119, '{\"user_id\":8,\"thread_id\":155,\"thread_username\":\"\\u52ff\\u7a7a23333\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-03T21:25:48+08:00\",\"post_id\":402,\"post_content\":\"\\u6211\\u56db\\u4e94\\u5929\\u524d\\u90fd\\u6709\\u4e0b\\u8f7d\\u5668\\u4e0b\\u8f7d\\u7684\\u9009\\u9879\\uff0c\\u4eca\\u5929\\u53bb\\u770b\\u5c31\\u53ea\\u6709wegame\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-03T21:26:25+08:00\",\"is_first\":true}', NULL, '2021-10-03 21:26:25', '2021-10-03 21:26:25');
INSERT INTO `notifications` VALUES (372, 'replied', 'App\\Models\\User', 118, '{\"user_id\":8,\"thread_id\":154,\"thread_username\":\"\\u4e0d\\u4e8c\\u81e3lcl\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-03T21:24:07+08:00\",\"post_id\":403,\"post_content\":\"\\u73a9\\u4e2a\\u732b \\u5e26\\u98de\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-03T21:26:44+08:00\",\"is_first\":true}', NULL, '2021-10-03 21:26:44', '2021-10-03 21:26:44');
INSERT INTO `notifications` VALUES (373, 'replied', 'App\\Models\\User', 116, '{\"user_id\":8,\"thread_id\":152,\"thread_username\":\"\\u6c5f\\u6cb3\\u6e56\\u6cca\\u7684\\u6cfd\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-30T22:27:12+08:00\",\"post_id\":404,\"post_content\":\"\\u91cd\\u88c5\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-03T21:27:04+08:00\",\"is_first\":true}', NULL, '2021-10-03 21:27:04', '2021-10-03 21:27:04');
INSERT INTO `notifications` VALUES (374, 'replied', 'App\\Models\\User', 95, '{\"user_id\":8,\"thread_id\":151,\"thread_username\":\"zhizi\",\"thread_title\":\"\",\"thread_created_at\":\"2021-09-30T22:23:05+08:00\",\"post_id\":405,\"post_content\":\"\\u6b63\\u5e38\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-03T21:27:15+08:00\",\"is_first\":true}', NULL, '2021-10-03 21:27:15', '2021-10-03 21:27:15');
INSERT INTO `notifications` VALUES (375, 'system', 'App\\Models\\User', 120, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6012\\u6740\\u5c0f\\u9f99\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-03 21:28:11', '2021-10-03 21:28:11');
INSERT INTO `notifications` VALUES (376, 'replied', 'App\\Models\\User', 119, '{\"user_id\":120,\"thread_id\":155,\"thread_username\":\"\\u52ff\\u7a7a23333\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-03T21:25:48+08:00\",\"post_id\":407,\"post_content\":\"\\u817e\\u8baf\\u4e0d\\u4e00\\u76f4\\u662f\\u8fd9\\u6837\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-03T21:29:23+08:00\",\"is_first\":true}', NULL, '2021-10-03 21:29:23', '2021-10-03 21:29:23');
INSERT INTO `notifications` VALUES (377, 'system', 'App\\Models\\User', 4, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"t-gar\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"\\u6211\\u611f\\u89c9\\u4e0d\\u5e94\\u8be5\\u5b66\\u5230Spring\\u5c31\\u7ed3\\u675f\\u4e86\\uff0c\\u867d\\u7136\\u5230\\u8fd9\\u4e2a\\u7a0b\\u5ea6\\u5df2\\u7ecf\\u5b8c\\u5168... \\\" \\u5df2\\u88ab\\u4e0b\\u67b6\\uff0c\\u539f\\u56e0\\uff1a\\u65e0\",\"raw\":{\"tpl_id\":6},\"thread_id\":1}', NULL, '2021-10-03 21:39:33', '2021-10-03 21:39:33');
INSERT INTO `notifications` VALUES (378, 'system', 'App\\Models\\User', 121, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"\\u9648\\u6e05\\u6e90\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', '2021-10-18 11:43:15', '2021-10-18 09:19:50', '2021-10-18 11:43:15');
INSERT INTO `notifications` VALUES (379, 'system', 'App\\Models\\User', 122, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"\\u8f7b\\u72c2\\u60ef\\u4e86\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-18 21:43:41', '2021-10-18 21:43:41');
INSERT INTO `notifications` VALUES (380, 'replied', 'App\\Models\\User', 2, '{\"user_id\":122,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":410,\"post_content\":\"bug\\u6709\\u70b9\\u591a\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-18T21:49:48+08:00\",\"is_first\":true}', '2021-10-19 10:28:16', '2021-10-18 21:49:48', '2021-10-19 10:28:16');
INSERT INTO `notifications` VALUES (381, 'replied', 'App\\Models\\User', 120, '{\"user_id\":122,\"thread_id\":156,\"thread_username\":\"\\u6012\\u6740\\u5c0f\\u9f99\",\"thread_nickname\":\"\\u6012\\u6740\\u5c0f\\u9f99\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-03T21:28:49+08:00\",\"post_id\":411,\"post_content\":\"\\u5df2\\u7ecf\\u9000\\u6e38\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-18T21:50:26+08:00\",\"is_first\":true}', NULL, '2021-10-18 21:50:26', '2021-10-18 21:50:26');
INSERT INTO `notifications` VALUES (382, 'system', 'App\\Models\\User', 123, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"hulong\\u662f\\u6211\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-18 21:51:13', '2021-10-18 21:51:13');
INSERT INTO `notifications` VALUES (383, 'replied', 'App\\Models\\User', 122, '{\"user_id\":123,\"thread_id\":157,\"thread_username\":\"\\u8f7b\\u72c2\\u60ef\\u4e86\",\"thread_nickname\":\"\\u8f7b\\u72c2\\u60ef\\u4e86\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-18T21:49:18+08:00\",\"post_id\":413,\"post_content\":\"\\u9ed8\\u8ba4\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-18T21:52:30+08:00\",\"is_first\":true}', NULL, '2021-10-18 21:52:30', '2021-10-18 21:52:30');
INSERT INTO `notifications` VALUES (384, 'replied', 'App\\Models\\User', 2, '{\"user_id\":123,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":414,\"post_content\":\"\\u63d0\\u793a\\u6211\\u8d26\\u53f7\\u5f02\\u5e38\\u80fd\\u770b\\u4e00\\u4e0b\\u600e\\u4e48\\u56de\\u4e8b\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-18T21:52:49+08:00\",\"is_first\":true}', '2021-10-19 10:28:16', '2021-10-18 21:52:49', '2021-10-19 10:28:16');
INSERT INTO `notifications` VALUES (385, 'system', 'App\\Models\\User', 124, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"\\u65e0\\u804a\\u7684\\u5f20\\u5c0f\\u4e09\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-18 21:54:33', '2021-10-18 21:54:33');
INSERT INTO `notifications` VALUES (386, 'replied', 'App\\Models\\User', 123, '{\"user_id\":124,\"thread_id\":158,\"thread_username\":\"hulong\\u662f\\u6211\",\"thread_nickname\":\"hulong\\u662f\\u6211\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-18T21:52:00+08:00\",\"post_id\":416,\"post_content\":\"\\u79c1\\u804a\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-18T21:56:40+08:00\",\"is_first\":true}', NULL, '2021-10-18 21:56:40', '2021-10-18 21:56:40');
INSERT INTO `notifications` VALUES (387, 'system', 'App\\Models\\User', 125, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"\\u79e6\\u633d\\u7434\\u5c0f\\u59d0\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-18 21:57:50', '2021-10-18 21:57:50');
INSERT INTO `notifications` VALUES (388, 'replied', 'App\\Models\\User', 123, '{\"user_id\":125,\"thread_id\":158,\"thread_username\":\"hulong\\u662f\\u6211\",\"thread_nickname\":\"hulong\\u662f\\u6211\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-18T21:52:00+08:00\",\"post_id\":418,\"post_content\":\"ID\\u591a\\u5c11\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-18T21:59:26+08:00\",\"is_first\":true}', NULL, '2021-10-18 21:59:26', '2021-10-18 21:59:26');
INSERT INTO `notifications` VALUES (389, 'replied', 'App\\Models\\User', 124, '{\"user_id\":125,\"thread_id\":159,\"thread_username\":\"\\u65e0\\u804a\\u7684\\u5f20\\u5c0f\\u4e09\",\"thread_nickname\":\"\\u65e0\\u804a\\u7684\\u5f20\\u5c0f\\u4e09\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-18T21:55:26+08:00\",\"post_id\":419,\"post_content\":\"\\u4eca\\u5e74\\u6ca1\\u5e0c\\u671b\\u4e86\\uff0c\\u70c2\\u6389\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-18T21:59:43+08:00\",\"is_first\":true}', NULL, '2021-10-18 21:59:43', '2021-10-18 21:59:43');
INSERT INTO `notifications` VALUES (390, 'replied', 'App\\Models\\User', 2, '{\"user_id\":125,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":420,\"post_content\":\"\\u5356\\u4e1c\\u897f\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-18T22:00:12+08:00\",\"is_first\":true}', '2021-10-19 10:28:16', '2021-10-18 22:00:12', '2021-10-19 10:28:16');
INSERT INTO `notifications` VALUES (391, 'system', 'App\\Models\\User', 126, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"zhaerkesi2\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-18 22:00:30', '2021-10-18 22:00:30');
INSERT INTO `notifications` VALUES (392, 'system', 'App\\Models\\User', 127, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"hyper\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-18 22:07:02', '2021-10-18 22:07:02');
INSERT INTO `notifications` VALUES (393, 'replied', 'App\\Models\\User', 126, '{\"user_id\":127,\"thread_id\":161,\"thread_username\":\"zhaerkesi2\",\"thread_nickname\":\"zhaerkesi2\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-18T22:01:33+08:00\",\"post_id\":423,\"post_content\":\":juhua:\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-18T22:09:39+08:00\",\"is_first\":true}', NULL, '2021-10-18 22:09:39', '2021-10-18 22:09:39');
INSERT INTO `notifications` VALUES (394, 'replied', 'App\\Models\\User', 2, '{\"user_id\":127,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":424,\"post_content\":\"\\u6ca1\\u529e\\u6cd5\\u4f7f\\u7528\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-18T22:10:10+08:00\",\"is_first\":true}', '2021-10-19 10:28:16', '2021-10-18 22:10:10', '2021-10-19 10:28:16');
INSERT INTO `notifications` VALUES (395, 'system', 'App\\Models\\User', 128, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"\\u8001\\u54c8\\u54c8\\u53d8\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-10-22 13:48:21', '2021-10-22 13:48:21');
INSERT INTO `notifications` VALUES (396, 'replied', 'App\\Models\\User', 3, '{\"user_id\":128,\"thread_id\":163,\"thread_username\":\"Thread\",\"thread_nickname\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-22T13:27:41+08:00\",\"post_id\":428,\"post_content\":\"\\uff1f\\uff1f\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2021-10-22T14:00:10+08:00\",\"is_first\":true}', '2021-11-07 22:01:06', '2021-10-22 14:00:10', '2021-11-07 22:01:06');
INSERT INTO `notifications` VALUES (397, 'system', 'App\\Models\\User', 129, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"\\u9ab7\\u9ac5\\u738b\\u8df3\\u5927\\u5237\\u65b0\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-11-06 21:30:01', '2021-11-06 21:30:01');
INSERT INTO `notifications` VALUES (398, 'replied', 'App\\Models\\User', 129, '{\"user_id\":8,\"thread_id\":166,\"thread_username\":\"\\u9ab7\\u9ac5\\u738b\\u8df3\\u5927\\u5237\\u65b0\",\"thread_nickname\":\"\\u9ab7\\u9ac5\\u738b\\u8df3\\u5927\\u5237\\u65b0\",\"thread_title\":\"\",\"thread_created_at\":\"2021-11-06T21:30:35+08:00\",\"post_id\":431,\"post_content\":\"\\u4eca\\u5e74\\u88c5\\u4e86\\u6bd4\\u7684\\u90fd\\u6b7b\\u4e86\",\"reply_post_id\":0,\"post_created_at\":\"2021-11-06T21:35:03+08:00\",\"is_first\":true}', NULL, '2021-11-06 21:35:03', '2021-11-06 21:35:03');
INSERT INTO `notifications` VALUES (399, 'system', 'App\\Models\\User', 130, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"\\u795e\\u7fbd\\u9a91\\u58eb\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-11-06 21:35:32', '2021-11-06 21:35:32');
INSERT INTO `notifications` VALUES (400, 'replied', 'App\\Models\\User', 129, '{\"user_id\":130,\"thread_id\":166,\"thread_username\":\"\\u9ab7\\u9ac5\\u738b\\u8df3\\u5927\\u5237\\u65b0\",\"thread_nickname\":\"\\u9ab7\\u9ac5\\u738b\\u8df3\\u5927\\u5237\\u65b0\",\"thread_title\":\"\",\"thread_created_at\":\"2021-11-06T21:30:35+08:00\",\"post_id\":433,\"post_content\":\"\\u8bb8\\u79c0\\u90a3\\u5c0f\\u77ee\\u9aa1\\u5b50:tiaopi:\\u770b\\u4ed6\\u4e27\\u7740\\u4e2a\\u8138\\u5c31\\u5f00\\u5fc3\",\"reply_post_id\":0,\"post_created_at\":\"2021-11-06T21:37:00+08:00\",\"is_first\":true}', NULL, '2021-11-06 21:37:00', '2021-11-06 21:37:00');
INSERT INTO `notifications` VALUES (401, 'system', 'App\\Models\\User', 131, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165\",\"content\":\"\\u5154\\u53c1\\u5c81\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-11-07 19:51:24', '2021-11-07 19:51:24');
INSERT INTO `notifications` VALUES (402, 'replied', 'App\\Models\\User', 2, '{\"user_id\":3,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":436,\"post_content\":\"\\u6211\\u611f\\u89c9\\u5e94\\u8be5\\u4f18\\u5316\\u4e00\\u4e0b\\u540e\\u53f0\\u901f\\u5ea6\",\"reply_post_id\":0,\"post_created_at\":\"2021-11-07T22:00:51+08:00\",\"is_first\":true}', NULL, '2021-11-07 22:00:51', '2021-11-07 22:00:51');
INSERT INTO `notifications` VALUES (403, 'replied', 'App\\Models\\User', 3, '{\"user_id\":1,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":437,\"post_content\":\"\\u5df2\\u4f18\\u5316\",\"reply_post_id\":436,\"post_created_at\":\"2021-11-07T22:03:39+08:00\",\"is_first\":false,\"reply_post_user_id\":3,\"reply_post_content\":\"\\u6211\\u611f\\u89c9\\u5e94\\u8be5\\u4f18\\u5316\\u4e00\\u4e0b\\u540e\\u53f0\\u901f\\u5ea6\",\"reply_post_created_at\":\"2021-11-07T22:00:51+08:00\"}', '2021-11-19 19:23:34', '2021-11-07 22:03:39', '2021-11-19 19:23:34');
INSERT INTO `notifications` VALUES (404, 'system', 'App\\Models\\User', 132, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4e50\\u89c2\\u7684\\u6a0a\\u8363\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-12-16 14:11:15', '2021-12-16 14:11:15');
INSERT INTO `notifications` VALUES (405, 'system', 'App\\Models\\User', 133, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5fc3\\u5982\\u67e0\\u6aac\\u5929\\u7136\\u72fb\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-12-16 14:14:33', '2021-12-16 14:14:33');
INSERT INTO `notifications` VALUES (406, 'system', 'App\\Models\\User', 134, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u58f9\\u5708\\u6212\\u75d5\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-12-16 14:18:39', '2021-12-16 14:18:39');
INSERT INTO `notifications` VALUES (407, 'system', 'App\\Models\\User', 135, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u5f62\\u5b9e\\u7c73\\u8bc6\\u5446\\u7746\\u998f\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2021-12-16 14:20:01', '2021-12-16 14:20:01');
INSERT INTO `notifications` VALUES (408, 'replied', 'App\\Models\\User', 131, '{\"user_id\":135,\"thread_id\":168,\"thread_username\":\"\\u5154\\u53c1\\u5c81\",\"thread_nickname\":\"\\u5154\\u53c1\\u5c81\",\"thread_title\":\"\",\"thread_created_at\":\"2021-11-07T19:51:57+08:00\",\"post_id\":441,\"post_content\":\"CF\\u4e70\\u53f7\\u5356\\u53f7\\u7fa4\\uff1a3717397\",\"reply_post_id\":0,\"post_created_at\":\"2021-12-16T14:20:52+08:00\",\"is_first\":true}', NULL, '2021-12-16 14:20:52', '2021-12-16 14:20:52');
INSERT INTO `notifications` VALUES (409, 'replied', 'App\\Models\\User', 132, '{\"user_id\":135,\"thread_id\":169,\"thread_username\":\"\\u4e50\\u89c2\\u7684\\u6a0a\\u8363\",\"thread_nickname\":\"\\u4e50\\u89c2\\u7684\\u6a0a\\u8363\",\"thread_title\":\"\",\"thread_created_at\":\"2021-12-16T14:12:02+08:00\",\"post_id\":442,\"post_content\":\"CF\\u4e70\\u53f7\\u5356\\u53f7\\u7fa4\\uff1a3717397\",\"reply_post_id\":0,\"post_created_at\":\"2021-12-16T14:20:58+08:00\",\"is_first\":true}', NULL, '2021-12-16 14:20:58', '2021-12-16 14:20:58');
INSERT INTO `notifications` VALUES (410, 'replied', 'App\\Models\\User', 133, '{\"user_id\":135,\"thread_id\":170,\"thread_username\":\"\\u5fc3\\u5982\\u67e0\\u6aac\\u5929\\u7136\\u72fb\",\"thread_nickname\":\"\\u5fc3\\u5982\\u67e0\\u6aac\\u5929\\u7136\\u72fb\",\"thread_title\":\"\",\"thread_created_at\":\"2021-12-16T14:15:13+08:00\",\"post_id\":443,\"post_content\":\"CF\\u4e70\\u53f7\\u5356\\u53f7\\u7fa4\\uff1a3717397\",\"reply_post_id\":0,\"post_created_at\":\"2021-12-16T14:21:03+08:00\",\"is_first\":true}', NULL, '2021-12-16 14:21:03', '2021-12-16 14:21:03');
INSERT INTO `notifications` VALUES (411, 'replied', 'App\\Models\\User', 134, '{\"user_id\":135,\"thread_id\":171,\"thread_username\":\"\\u58f9\\u5708\\u6212\\u75d5\",\"thread_nickname\":\"\\u58f9\\u5708\\u6212\\u75d5\",\"thread_title\":\"\",\"thread_created_at\":\"2021-12-16T14:19:34+08:00\",\"post_id\":444,\"post_content\":\"CF\\u4e70\\u53f7\\u5356\\u53f7\\u7fa4\\uff1a3717397\",\"reply_post_id\":0,\"post_created_at\":\"2021-12-16T14:21:23+08:00\",\"is_first\":true}', NULL, '2021-12-16 14:21:23', '2021-12-16 14:21:23');
INSERT INTO `notifications` VALUES (412, 'replied', 'App\\Models\\User', 130, '{\"user_id\":135,\"thread_id\":167,\"thread_username\":\"\\u795e\\u7fbd\\u9a91\\u58eb\",\"thread_nickname\":\"\\u795e\\u7fbd\\u9a91\\u58eb\",\"thread_title\":\"\",\"thread_created_at\":\"2021-11-06T21:36:09+08:00\",\"post_id\":445,\"post_content\":\"CF\\u4e70\\u53f7\\u5356\\u53f7\\u7fa4\\uff1a3717397\",\"reply_post_id\":0,\"post_created_at\":\"2021-12-16T14:21:33+08:00\",\"is_first\":true}', NULL, '2021-12-16 14:21:33', '2021-12-16 14:21:33');
INSERT INTO `notifications` VALUES (413, 'system', 'App\\Models\\User', 136, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"asdfsdf\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', '2021-12-17 22:51:23', '2021-12-17 22:50:59', '2021-12-17 22:51:23');
INSERT INTO `notifications` VALUES (414, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u8d26\\u53f7\\u5347\\u7ea7\\u901a\\u77e5\",\"content\":\"\\u3010Thread\\u3011\\u606d\\u559c\\u4f60\\uff0c\\u6210\\u529f\\u5347\\u7ea7\\u4e3a\\u3010\\u57fa\\u672c\\u8ba2\\u9605\\u3011\\uff01\",\"raw\":{\"tpl_id\":101}}', '2021-12-23 17:29:25', '2021-12-23 17:29:06', '2021-12-23 17:29:25');
INSERT INTO `notifications` VALUES (415, 'replied', 'App\\Models\\User', 2, '{\"user_id\":121,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":447,\"post_content\":\"\\uff1f\\uff1f\\uff1f\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-15T15:00:16+08:00\",\"is_first\":true}', NULL, '2022-01-15 15:00:16', '2022-01-15 15:00:16');
INSERT INTO `notifications` VALUES (416, 'liked', 'App\\Models\\User', 1, '{\"user_id\":121,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":437,\"post_content\":\"\\u5df2\\u4f18\\u5316\",\"reply_post_id\":436,\"post_created_at\":\"2021-11-07T22:03:39+08:00\",\"is_first\":false,\"reply_post_user_id\":3,\"reply_post_content\":\"\\u6211\\u611f\\u89c9\\u5e94\\u8be5\\u4f18\\u5316\\u4e00\\u4e0b\\u540e\\u53f0\\u901f\\u5ea6\",\"reply_post_created_at\":\"2021-11-07T22:00:51+08:00\"}', NULL, '2022-01-15 15:00:39', '2022-01-15 15:00:39');
INSERT INTO `notifications` VALUES (417, 'liked', 'App\\Models\\User', 3, '{\"user_id\":121,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":436,\"post_content\":\"\\u6211\\u611f\\u89c9\\u5e94\\u8be5\\u4f18\\u5316\\u4e00\\u4e0b\\u540e\\u53f0\\u901f\\u5ea6\",\"reply_post_id\":0,\"post_created_at\":\"2021-11-07T22:00:51+08:00\",\"is_first\":false}', '2022-01-16 15:44:30', '2022-01-15 15:00:39', '2022-01-16 15:44:30');
INSERT INTO `notifications` VALUES (418, 'system', 'App\\Models\\User', 137, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u9648\\u6e05\\u6e90\\u5927\\u738b\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2022-01-15 15:01:48', '2022-01-15 15:01:48');
INSERT INTO `notifications` VALUES (419, 'liked', 'App\\Models\\User', 1, '{\"user_id\":137,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":437,\"post_content\":\"\\u5df2\\u4f18\\u5316\",\"reply_post_id\":436,\"post_created_at\":\"2021-11-07T22:03:39+08:00\",\"is_first\":false,\"reply_post_user_id\":3,\"reply_post_content\":\"\\u6211\\u611f\\u89c9\\u5e94\\u8be5\\u4f18\\u5316\\u4e00\\u4e0b\\u540e\\u53f0\\u901f\\u5ea6\",\"reply_post_created_at\":\"2021-11-07T22:00:51+08:00\"}', NULL, '2022-01-15 15:02:55', '2022-01-15 15:02:55');
INSERT INTO `notifications` VALUES (420, 'liked', 'App\\Models\\User', 3, '{\"user_id\":137,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":436,\"post_content\":\"\\u6211\\u611f\\u89c9\\u5e94\\u8be5\\u4f18\\u5316\\u4e00\\u4e0b\\u540e\\u53f0\\u901f\\u5ea6\",\"reply_post_id\":0,\"post_created_at\":\"2021-11-07T22:00:51+08:00\",\"is_first\":false}', '2022-01-16 15:44:30', '2022-01-15 15:02:55', '2022-01-16 15:44:30');
INSERT INTO `notifications` VALUES (421, 'replied', 'App\\Models\\User', 121, '{\"user_id\":137,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":448,\"post_content\":\"\\uff1f\\uff1f\\uff1f\\uff1f\\uff1f\\uff1f\\uff1f\\uff1f\",\"reply_post_id\":447,\"post_created_at\":\"2022-01-15T15:03:05+08:00\",\"is_first\":false,\"reply_post_user_id\":121,\"reply_post_content\":\"\\uff1f\\uff1f\\uff1f\\uff1f\",\"reply_post_created_at\":\"2022-01-15T15:00:16+08:00\"}', NULL, '2022-01-15 15:03:05', '2022-01-15 15:03:05');
INSERT INTO `notifications` VALUES (422, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u7eed\\u8d39\\u901a\\u77e5\",\"content\":\"\\u3010Thread\\u3011\\uff0c\\u60a8\\u8d2d\\u4e70\\u7684\\u3010\\u57fa\\u672c\\u8ba2\\u9605\\u3011\\u5373\\u5c06\\u8fc7\\u671f\\uff0c\\u8fc7\\u671f\\u540e\\u5c06\\u65e0\\u6cd5\\u4eab\\u53d7\\u5f53\\u524d\\u6743\\u76ca\\uff0c\\u8bf7\\u53ca\\u65f6\\u7eed\\u8d39\\u3002\",\"raw\":{\"refeeType\":2,\"tpl_id\":102}}', '2022-01-20 21:25:53', '2022-01-20 00:00:08', '2022-01-20 21:25:53');
INSERT INTO `notifications` VALUES (423, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u8d26\\u53f7\\u5347\\u7ea7\\u901a\\u77e5\",\"content\":\"\\u3010Thread\\u3011\\u606d\\u559c\\u4f60\\uff0c\\u6210\\u529f\\u5347\\u7ea7\\u4e3a\\u3010\\u6807\\u51c6\\u8ba2\\u9605\\u3011\\uff01\",\"raw\":{\"tpl_id\":101}}', '2022-01-20 21:27:40', '2022-01-20 21:27:11', '2022-01-20 21:27:40');
INSERT INTO `notifications` VALUES (424, 'system', 'App\\Models\\User', 138, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"Allen\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2022-01-20 21:33:15', '2022-01-20 21:33:15');
INSERT INTO `notifications` VALUES (425, 'system', 'App\\Models\\User', 139, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4e4b\\u96ea\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2022-01-20 21:35:46', '2022-01-20 21:35:46');
INSERT INTO `notifications` VALUES (426, 'replied', 'App\\Models\\User', 2, '{\"user_id\":139,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":452,\"post_content\":\"\\u6ca1\\u4eba\\u7ba1\\u4e86\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:37:12+08:00\",\"is_first\":true}', NULL, '2022-01-20 21:37:12', '2022-01-20 21:37:12');
INSERT INTO `notifications` VALUES (427, 'replied', 'App\\Models\\User', 138, '{\"user_id\":139,\"thread_id\":174,\"thread_username\":\"Allen\",\"thread_nickname\":\"Allen\",\"thread_title\":\"\",\"thread_created_at\":\"2022-01-20T21:34:31+08:00\",\"post_id\":453,\"post_content\":\"\\u597d\\u4e86\\u70b9\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:37:32+08:00\",\"is_first\":true}', NULL, '2022-01-20 21:37:32', '2022-01-20 21:37:32');
INSERT INTO `notifications` VALUES (428, 'replied', 'App\\Models\\User', 3, '{\"user_id\":139,\"thread_id\":173,\"thread_username\":\"Thread\",\"thread_nickname\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2022-01-16T18:38:21+08:00\",\"post_id\":454,\"post_content\":\"????\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:37:40+08:00\",\"is_first\":true}', '2022-02-06 19:38:01', '2022-01-20 21:37:40', '2022-02-06 19:38:01');
INSERT INTO `notifications` VALUES (429, 'replied', 'App\\Models\\User', 3, '{\"user_id\":139,\"thread_id\":163,\"thread_username\":\"Thread\",\"thread_nickname\":\"Thread\",\"thread_title\":\"\",\"thread_created_at\":\"2021-10-22T13:27:41+08:00\",\"post_id\":455,\"post_content\":\"1\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:37:52+08:00\",\"is_first\":true}', '2022-02-06 19:38:01', '2022-01-20 21:37:52', '2022-02-06 19:38:01');
INSERT INTO `notifications` VALUES (430, 'system', 'App\\Models\\User', 140, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4ed3\\u9f2017\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2022-01-20 21:38:26', '2022-01-20 21:38:26');
INSERT INTO `notifications` VALUES (431, 'replied', 'App\\Models\\User', 2, '{\"user_id\":140,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":457,\"post_content\":\"\\u6211\\u597d\\u50cf\\u8ba4\\u8bc6\\u4f60\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:40:26+08:00\",\"is_first\":true}', NULL, '2022-01-20 21:40:27', '2022-01-20 21:40:27');
INSERT INTO `notifications` VALUES (432, 'replied', 'App\\Models\\User', 2, '{\"user_id\":140,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":458,\"post_content\":\"\\u662f\\u5f90\\u7389\\u9f99\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:40:35+08:00\",\"is_first\":true}', NULL, '2022-01-20 21:40:35', '2022-01-20 21:40:35');
INSERT INTO `notifications` VALUES (433, 'replied', 'App\\Models\\User', 2, '{\"user_id\":140,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":459,\"post_content\":\"\\u662f\\u4e86\\u56de\\u4e2a\\u8bdd\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:40:50+08:00\",\"is_first\":true}', NULL, '2022-01-20 21:40:51', '2022-01-20 21:40:51');
INSERT INTO `notifications` VALUES (434, 'system', 'App\\Models\\User', 141, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u6ca1\\u6709\\u8721\\u7b14\\u7684\\u5c0f\\u65b0\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2022-01-20 21:41:33', '2022-01-20 21:41:33');
INSERT INTO `notifications` VALUES (435, 'replied', 'App\\Models\\User', 140, '{\"user_id\":141,\"thread_id\":176,\"thread_username\":\"\\u4ed3\\u9f2017\",\"thread_nickname\":\"\\u4ed3\\u9f2017\",\"thread_title\":\"\",\"thread_created_at\":\"2022-01-20T21:39:44+08:00\",\"post_id\":461,\"post_content\":\"\\u624b\\u673a\\u574f\\u4e86\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:43:00+08:00\",\"is_first\":true}', NULL, '2022-01-20 21:43:00', '2022-01-20 21:43:00');
INSERT INTO `notifications` VALUES (436, 'replied', 'App\\Models\\User', 2, '{\"user_id\":141,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":462,\"post_content\":\"\\uff1f\\uff1f\\uff1f\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:43:12+08:00\",\"is_first\":true}', NULL, '2022-01-20 21:43:12', '2022-01-20 21:43:12');
INSERT INTO `notifications` VALUES (437, 'system', 'App\\Models\\User', 142, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u8e0f\\u5357\\u5c71\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2022-01-20 21:44:23', '2022-01-20 21:44:23');
INSERT INTO `notifications` VALUES (438, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Thread\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"spring\\u4e94\\u5929\\u7684\\u5b66\\u4e60\\uff0c\\u53ea\\u9700\\u8981\\u4e94\\u5929\\u5b66\\u4f1aspring[\\u4ee3\\u7801\\u5757]\\\" \\u5df2\\u88ab\\u8bbe\\u4e3a\\u7cbe\\u54c1\\u5e16\\uff0c\\u60a8\\u5df2\\u5411\\u7cbe\\u54c1\\u4f5c\\u8005\\u8fdb\\u53d1\\u3002\",\"raw\":{\"tpl_id\":7},\"thread_id\":163}', '2022-02-06 19:37:58', '2022-01-20 21:47:37', '2022-02-06 19:37:58');
INSERT INTO `notifications` VALUES (439, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Thread\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"Python\\u5b66\\u4e60\\u8def\\u7ebf\\u56fe(\\u8be6\\u7ec6)[\\u4ee3\\u7801\\u5757][\\u56fe\\u7247]\\\" \\u5df2\\u88ab\\u8bbe\\u4e3a\\u7cbe\\u54c1\\u5e16\\uff0c\\u60a8\\u5df2\\u5411\\u7cbe\\u54c1\\u4f5c\\u8005\\u8fdb\\u53d1\\u3002\",\"raw\":{\"tpl_id\":7},\"thread_id\":132}', '2022-02-06 19:37:58', '2022-01-20 21:47:37', '2022-02-06 19:37:58');
INSERT INTO `notifications` VALUES (440, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Thread\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"Python\\u5b66\\u4e60\\u8def\\u7ebf\\u56fe[\\u56fe\\u7247]\\\" \\u5df2\\u88ab\\u8bbe\\u4e3a\\u7cbe\\u54c1\\u5e16\\uff0c\\u60a8\\u5df2\\u5411\\u7cbe\\u54c1\\u4f5c\\u8005\\u8fdb\\u53d1\\u3002\",\"raw\":{\"tpl_id\":7},\"thread_id\":131}', '2022-02-06 19:37:58', '2022-01-20 21:47:37', '2022-02-06 19:37:58');
INSERT INTO `notifications` VALUES (441, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Thread\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"Java\\u5b66\\u5b8c\\u54ea\\u4e9b\\u5185\\u5bb9\\u80fd\\u591f\\u51fa\\u53bb\\u627e\\u5de5\\u4f5c[\\u56fe\\u7247]\\\" \\u5df2\\u88ab\\u8bbe\\u4e3a\\u7cbe\\u54c1\\u5e16\\uff0c\\u60a8\\u5df2\\u5411\\u7cbe\\u54c1\\u4f5c\\u8005\\u8fdb\\u53d1\\u3002\",\"raw\":{\"tpl_id\":7},\"thread_id\":63}', '2022-02-06 19:37:58', '2022-01-20 21:47:37', '2022-02-06 19:37:58');
INSERT INTO `notifications` VALUES (442, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u5185\\u5bb9\\u901a\\u77e5\",\"content\":\"Thread\\u60a8\\u597d\\uff0c\\u60a8\\u53d1\\u5e03\\u7684 \\\"Java\\u9ad8\\u7ea7\\u5de5\\u7a0b\\u5e08\\u5b66\\u4e60\\u6d41\\u7a0b[\\u4ee3\\u7801\\u5757]\\\" \\u5df2\\u88ab\\u8bbe\\u4e3a\\u7cbe\\u54c1\\u5e16\\uff0c\\u60a8\\u5df2\\u5411\\u7cbe\\u54c1\\u4f5c\\u8005\\u8fdb\\u53d1\\u3002\",\"raw\":{\"tpl_id\":7},\"thread_id\":1}', '2022-02-06 19:37:58', '2022-01-20 21:49:07', '2022-02-06 19:37:58');
INSERT INTO `notifications` VALUES (443, 'system', 'App\\Models\\User', 143, '{\"title\":\"\\u6b22\\u8fce\\u52a0\\u5165Evolve\",\"content\":\"\\u4e8e\\u679c-151\\u60a8\\u597d\\uff0c\\u60a8\\u5df2\\u7ecf\\u6210\\u4e3aEvolve \\u7684\\u666e\\u901a\\u7528\\u6237 \\uff0c\\u8bf7\\u60a8\\u5728\\u53d1\\u8868\\u8a00\\u8bba\\u65f6\\uff0c\\u9075\\u5b88\\u672c\\u8bba\\u575b\\u7684\\u7528\\u6237\\u534f\\u8bae\\uff0c\\u795d\\u60a8\\u5728\\u8fd9\\u91cc\\u73a9\\u7684\\u5f00\\u5fc3\\u54df~\",\"raw\":{\"tpl_id\":1}}', NULL, '2022-01-20 21:53:13', '2022-01-20 21:53:13');
INSERT INTO `notifications` VALUES (444, 'replied', 'App\\Models\\User', 142, '{\"user_id\":143,\"thread_id\":178,\"thread_username\":\"\\u8e0f\\u5357\\u5c71\",\"thread_nickname\":\"\\u8e0f\\u5357\\u5c71\",\"thread_title\":\"\",\"thread_created_at\":\"2022-01-20T21:45:22+08:00\",\"post_id\":465,\"post_content\":\"\\u94bb\\u77f3\\u4ee5\\u4e0a\\u53ea\\u6709\\u4e0d\\u52303%\\u7684\\u73a9\\u5bb6 \\u8d34\\u5427\\u4eba\\u5747\\u738b\\u8005 \\u6839\\u672c\\u4e0d\\u7406\\u89e3\\u4f60\\u8bf4\\u7684\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:54:07+08:00\",\"is_first\":true}', NULL, '2022-01-20 21:54:08', '2022-01-20 21:54:08');
INSERT INTO `notifications` VALUES (445, 'replied', 'App\\Models\\User', 141, '{\"user_id\":143,\"thread_id\":177,\"thread_username\":\"\\u6ca1\\u6709\\u8721\\u7b14\\u7684\\u5c0f\\u65b0\",\"thread_nickname\":\"\\u6ca1\\u6709\\u8721\\u7b14\\u7684\\u5c0f\\u65b0\",\"thread_title\":\"\",\"thread_created_at\":\"2022-01-20T21:42:32+08:00\",\"post_id\":466,\"post_content\":\"0\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:54:28+08:00\",\"is_first\":true}', NULL, '2022-01-20 21:54:28', '2022-01-20 21:54:28');
INSERT INTO `notifications` VALUES (446, 'replied', 'App\\Models\\User', 141, '{\"user_id\":143,\"thread_id\":176,\"thread_username\":\"\\u4ed3\\u9f2017\",\"thread_nickname\":\"\\u4ed3\\u9f2017\",\"thread_title\":\"\",\"thread_created_at\":\"2022-01-20T21:39:44+08:00\",\"post_id\":467,\"post_content\":\"1\",\"reply_post_id\":461,\"post_created_at\":\"2022-01-20T21:54:37+08:00\",\"is_first\":false,\"reply_post_user_id\":141,\"reply_post_content\":\"\\u624b\\u673a\\u574f\\u4e86\\uff1f\",\"reply_post_created_at\":\"2022-01-20T21:43:00+08:00\"}', NULL, '2022-01-20 21:54:37', '2022-01-20 21:54:37');
INSERT INTO `notifications` VALUES (447, 'replied', 'App\\Models\\User', 2, '{\"user_id\":143,\"thread_id\":16,\"thread_username\":\"Jerome\",\"thread_nickname\":\"Jerome\",\"thread_title\":\"\",\"thread_created_at\":\"2021-08-02T11:25:24+08:00\",\"post_id\":468,\"post_content\":\"\\u6709\\u751f\\u610f\\u5148\\u4ed8\\u6b3e\\u505a\\u5417\",\"reply_post_id\":0,\"post_created_at\":\"2022-01-20T21:55:02+08:00\",\"is_first\":true}', NULL, '2022-01-20 21:55:03', '2022-01-20 21:55:03');
INSERT INTO `notifications` VALUES (448, 'system', 'App\\Models\\User', 3, '{\"title\":\"\\u7eed\\u8d39\\u901a\\u77e5\",\"content\":\"\\u3010Thread\\u3011\\uff0c\\u60a8\\u8d2d\\u4e70\\u7684\\u3010\\u6807\\u51c6\\u8ba2\\u9605\\u3011\\u5373\\u5c06\\u8fc7\\u671f\\uff0c\\u8fc7\\u671f\\u540e\\u5c06\\u65e0\\u6cd5\\u4eab\\u53d7\\u5f53\\u524d\\u6743\\u76ca\\uff0c\\u8bf7\\u53ca\\u65f6\\u7eed\\u8d39\\u3002\",\"raw\":{\"refeeType\":2,\"tpl_id\":102}}', NULL, '2022-02-17 00:00:09', '2022-02-17 00:00:09');

-- ----------------------------
-- Table structure for operation_logs
-- ----------------------------
DROP TABLE IF EXISTS `operation_logs`;
CREATE TABLE `operation_logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '日志 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'url路径',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '请求方式',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'ip 地址',
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'body请求数据',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '日志类型:0后台操作',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of operation_logs
-- ----------------------------

-- ----------------------------
-- Table structure for order_children
-- ----------------------------
DROP TABLE IF EXISTS `order_children`;
CREATE TABLE `order_children`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_sn` char(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `thread_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '关联的threads主键ID',
  `type` int(10) UNSIGNED NOT NULL COMMENT '订单类型：1注册，2打赏，3购买主题，4购买权限组，5付费提问，6问答围观，7购买附件，8站点付费，9红包，10悬赏，11合并订单',
  `status` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单状态：0待付款，1已付款，2取消，3支付失败，4过期，5部分退款，10全额退款，11异常订单',
  `amount` decimal(10, 2) UNSIGNED NOT NULL COMMENT '金额',
  `refund` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '退款金额',
  `return_at` timestamp NULL DEFAULT NULL COMMENT '退款时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_children
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单 id',
  `order_sn` char(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `payment_sn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付编号',
  `amount` decimal(10, 2) UNSIGNED NOT NULL COMMENT '订单总金额',
  `master_amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '站长分成金额',
  `author_amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '作者分成金额',
  `third_party_amount` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '第三者收益金额',
  `be_scale` double(3, 1) NOT NULL DEFAULT 0.0 COMMENT '作者受邀时的分成比例',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '付款人 id',
  `payee_id` bigint(20) UNSIGNED NOT NULL COMMENT '收款人 id',
  `third_party_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '第三者收益人 id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '交易类型：1注册、2打赏、3付费主题、4付费用户组',
  `group_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '用户组 id',
  `thread_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '主题 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单状态：0待付款；1已付款；2.取消订单；3支付失败；4订单过期',
  `payment_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '付款方式：微信（10：pc扫码，11：h5支付，12：微信内支付',
  `is_anonymous` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否匿名(0否1是)',
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联的posts主键ID',
  `refund` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '退款金额',
  `expired_at` datetime NULL DEFAULT NULL COMMENT '付费注册过期时长',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `return_at` timestamp NULL DEFAULT NULL COMMENT '退款时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orders_thread_id_index`(`thread_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '2021080612465510255999', '202108062410255995', 50.00, 0.00, 0.00, 0.00, 0.0, 37, 2, 0, 2, NULL, 16, 0, 0, 0, 0, 0.00, NULL, '2021-08-06 12:46:55', '2021-08-06 12:46:55', NULL);
INSERT INTO `orders` VALUES (2, '2021101809242153981019', '202110188753981019', 500.00, 0.00, 0.00, 0.00, 0.0, 121, 3, 0, 3, NULL, 149, 0, 0, 0, 0, 0.00, NULL, '2021-10-18 09:24:21', '2021-10-18 09:24:21', NULL);
INSERT INTO `orders` VALUES (3, '2021121722513252571009', '202112171952571005', 50.00, 0.00, 0.00, 0.00, 0.0, 136, 0, 0, 4, 16, NULL, 0, 0, 0, 0, 0.00, NULL, '2021-12-17 22:51:32', '2021-12-17 22:51:32', NULL);
INSERT INTO `orders` VALUES (4, '2021122317265410157564', '202112231210157551', 50.00, 0.00, 0.00, 0.00, 0.0, 3, 0, 0, 4, 16, NULL, 0, 0, 0, 0, 0.00, NULL, '2021-12-23 17:26:54', '2021-12-23 17:26:54', NULL);
INSERT INTO `orders` VALUES (5, '2021122317284610151975', '202112237910151975', 500.00, 0.00, 0.00, 0.00, 0.0, 3, 0, 0, 4, 13, NULL, 0, 0, 0, 0, 0.00, NULL, '2021-12-23 17:28:46', '2021-12-23 17:28:46', NULL);
INSERT INTO `orders` VALUES (6, '2021122317285454102495', '202112236154102494', 50.00, 0.00, 0.00, 0.00, 0.0, 3, 0, 0, 4, 16, NULL, 1, 20, 0, 0, 0.00, NULL, '2021-12-23 17:28:54', '2021-12-23 17:29:06', NULL);
INSERT INTO `orders` VALUES (7, '2022012001113151555755', '202201206951555752', 3000.00, 0.00, 0.00, 0.00, 0.0, 3, 0, 0, 4, 17, NULL, 4, 0, 0, 0, 0.00, NULL, '2022-01-20 01:11:31', '2022-01-21 01:12:01', NULL);
INSERT INTO `orders` VALUES (8, '2022012021265648551015', '202201203448551015', 5000.00, 0.00, 0.00, 0.00, 0.0, 3, 0, 0, 4, 14, NULL, 4, 0, 0, 0, 0.00, NULL, '2022-01-20 21:26:56', '2022-01-21 21:27:01', NULL);
INSERT INTO `orders` VALUES (9, '2022012021270456975253', '202201209056975251', 3000.00, 0.00, 0.00, 0.00, 0.0, 3, 0, 0, 4, 17, NULL, 1, 20, 0, 0, 0.00, NULL, '2022-01-20 21:27:04', '2022-01-20 21:27:11', NULL);

-- ----------------------------
-- Table structure for pay_notify
-- ----------------------------
DROP TABLE IF EXISTS `pay_notify`;
CREATE TABLE `pay_notify`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '支付通知 id',
  `payment_sn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付编号',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '付款人 id',
  `trade_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商户平台交易号',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0未接受到通知，1收到通知',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pay_notify
-- ----------------------------
INSERT INTO `pay_notify` VALUES (1, '202108062410255995', 37, '', 0, '2021-08-06 12:46:55', '2021-08-06 12:46:55');
INSERT INTO `pay_notify` VALUES (2, '202110188753981019', 121, '', 0, '2021-10-18 09:24:21', '2021-10-18 09:24:21');
INSERT INTO `pay_notify` VALUES (3, '202112171952571005', 136, '', 0, '2021-12-17 22:51:32', '2021-12-17 22:51:32');
INSERT INTO `pay_notify` VALUES (4, '202112231210157551', 3, '', 0, '2021-12-23 17:26:54', '2021-12-23 17:26:54');
INSERT INTO `pay_notify` VALUES (5, '202112237910151975', 3, '', 0, '2021-12-23 17:28:46', '2021-12-23 17:28:46');
INSERT INTO `pay_notify` VALUES (6, '202112236154102494', 3, '202112236154102494', 1, '2021-12-23 17:28:54', '2021-12-23 17:29:06');
INSERT INTO `pay_notify` VALUES (7, '202201206951555752', 3, '', 0, '2022-01-20 01:11:31', '2022-01-20 01:11:31');
INSERT INTO `pay_notify` VALUES (8, '202201203448551015', 3, '', 0, '2022-01-20 21:26:56', '2022-01-20 21:26:56');
INSERT INTO `pay_notify` VALUES (9, '202201209056975251', 3, '202201209056975251', 1, '2022-01-20 21:27:04', '2022-01-20 21:27:11');

-- ----------------------------
-- Table structure for plugin_activity_thread_activity
-- ----------------------------
DROP TABLE IF EXISTS `plugin_activity_thread_activity`;
CREATE TABLE `plugin_activity_thread_activity`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '帖子id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活动内容',
  `activity_start_time` datetime NOT NULL COMMENT '活动开始时间',
  `activity_end_time` datetime NOT NULL COMMENT '活动结束时间',
  `register_start_time` datetime NULL DEFAULT NULL COMMENT '报名开始时间',
  `register_end_time` datetime NULL DEFAULT NULL COMMENT '报名结束时间',
  `total_number` int(11) NOT NULL DEFAULT 0 COMMENT '报名人数上限 0:不限制',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '地址信息',
  `location` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '位置信息',
  `longitude` decimal(10, 7) NOT NULL DEFAULT 0.0000000 COMMENT '经度',
  `latitude` decimal(10, 7) NOT NULL DEFAULT 0.0000000 COMMENT '纬度',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0:无效 1：有效',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `additional_info_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}' COMMENT '报名必填信息；1：姓名、2：手机号、3：微信号、4：地址；数据形式：{1,2,3,4}',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plugin_activity_thread_activity
-- ----------------------------

-- ----------------------------
-- Table structure for plugin_activity_user
-- ----------------------------
DROP TABLE IF EXISTS `plugin_activity_user`;
CREATE TABLE `plugin_activity_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '主题id',
  `activity_id` bigint(20) UNSIGNED NOT NULL COMMENT '活动id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0:无效 1：有效',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `additional_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '报名必填信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `plugin_activity_user_thread_id_index`(`thread_id`) USING BTREE,
  INDEX `plugin_activity_user_activity_id_user_id_index`(`activity_id`, `user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plugin_activity_user
-- ----------------------------

-- ----------------------------
-- Table structure for plugin_group_permission
-- ----------------------------
DROP TABLE IF EXISTS `plugin_group_permission`;
CREATE TABLE `plugin_group_permission`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `group_id` int(11) NOT NULL COMMENT '用户组id',
  `app_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '插件id',
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限描述符',
  `status` smallint(6) NOT NULL DEFAULT 1 COMMENT '0 关闭 1 启用',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `plugin_group_permission_app_id_index`(`app_id`) USING BTREE,
  INDEX `plugin_group_permission_permission_index`(`permission`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plugin_group_permission
-- ----------------------------
INSERT INTO `plugin_group_permission` VALUES (1, 1, '612f4217ae890', 'canInsert', 1, '2021-09-30 22:16:05', '2021-09-30 22:16:05');
INSERT INTO `plugin_group_permission` VALUES (2, 10, '612f4217ae890', 'canInsert', 1, '2021-09-30 22:16:05', '2021-09-30 22:16:05');
INSERT INTO `plugin_group_permission` VALUES (3, 11, '612f4217ae890', 'canInsert', 1, '2021-09-30 22:16:05', '2021-09-30 22:16:05');
INSERT INTO `plugin_group_permission` VALUES (4, 12, '612f4217ae890', 'canInsert', 1, '2021-09-30 22:16:05', '2021-09-30 22:16:05');
INSERT INTO `plugin_group_permission` VALUES (5, 10, '61540fef8f4de8', 'canInsert', 1, '2021-11-12 20:17:57', '2021-11-12 20:17:57');
INSERT INTO `plugin_group_permission` VALUES (6, 12, '61540fef8f4de8', 'canInsert', 1, '2021-11-12 20:18:16', '2021-11-12 20:18:16');
INSERT INTO `plugin_group_permission` VALUES (7, 13, '612f4217ae890', 'canInsert', 1, '2021-12-16 14:28:06', '2021-12-16 14:28:06');
INSERT INTO `plugin_group_permission` VALUES (8, 13, '61540fef8f4de8', 'canInsert', 1, '2021-12-16 14:28:06', '2021-12-16 14:28:06');
INSERT INTO `plugin_group_permission` VALUES (9, 14, '612f4217ae890', 'canInsert', 1, '2021-12-16 14:30:25', '2021-12-16 14:30:25');
INSERT INTO `plugin_group_permission` VALUES (10, 14, '61540fef8f4de8', 'canInsert', 1, '2021-12-16 14:30:25', '2021-12-16 14:30:25');
INSERT INTO `plugin_group_permission` VALUES (11, 15, '612f4217ae890', 'canInsert', 1, '2021-12-16 14:38:20', '2021-12-16 14:38:20');
INSERT INTO `plugin_group_permission` VALUES (12, 15, '61540fef8f4de8', 'canInsert', 1, '2021-12-16 14:38:20', '2021-12-16 14:38:20');
INSERT INTO `plugin_group_permission` VALUES (13, 16, '612f4217ae890', 'canInsert', 1, '2021-12-16 14:40:45', '2021-12-16 14:40:45');
INSERT INTO `plugin_group_permission` VALUES (14, 16, '61540fef8f4de8', 'canInsert', 1, '2021-12-16 14:40:45', '2021-12-16 14:40:45');
INSERT INTO `plugin_group_permission` VALUES (15, 17, '612f4217ae890', 'canInsert', 1, '2021-12-16 14:45:02', '2021-12-16 14:45:02');
INSERT INTO `plugin_group_permission` VALUES (16, 17, '61540fef8f4de8', 'canInsert', 1, '2021-12-16 14:45:02', '2021-12-16 14:45:02');

-- ----------------------------
-- Table structure for plugin_settings
-- ----------------------------
DROP TABLE IF EXISTS `plugin_settings`;
CREATE TABLE `plugin_settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `app_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '插件应用id',
  `app_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '插件唯一英文名',
  `type` tinyint(4) NOT NULL COMMENT '插件类型',
  `private_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '私有数据',
  `public_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON存储配置信息',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `plugin_settings_app_id_unique`(`app_id`) USING BTREE,
  UNIQUE INDEX `plugin_settings_app_name_unique`(`app_name`) USING BTREE,
  INDEX `plugin_settings_app_id_type_index`(`app_id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plugin_settings
-- ----------------------------

-- ----------------------------
-- Table structure for plugin_shop_wxshop_products
-- ----------------------------
DROP TABLE IF EXISTS `plugin_shop_wxshop_products`;
CREATE TABLE `plugin_shop_wxshop_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商店appid',
  `product_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '微信小商店商品id',
  `title` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名',
  `image_path` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品图片',
  `price` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '价格',
  `path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品原path',
  `detail_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '微信url，小程序，h5直接跳',
  `detail_qrcode` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '外部url，扫码跳',
  `is_remote` int(11) NOT NULL COMMENT '是否放在远程0不1是',
  `attach_file_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '附件文件名',
  `attach_file_path` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '附件全路径',
  `detail_scheme` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '外部url，点击跳转',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_app_product_id`(`app_id`, `product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plugin_shop_wxshop_products
-- ----------------------------

-- ----------------------------
-- Table structure for post_goods
-- ----------------------------
DROP TABLE IF EXISTS `post_goods`;
CREATE TABLE `post_goods`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '帖子 id',
  `platform_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '平台商品 id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品标题',
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '价格',
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品封面图',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品来源:0淘宝 1天猫 2京东 等',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品状态:0正常 1失效/下架',
  `ready_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '预解析内容',
  `detail_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '解析详情页地址',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user`(`user_id`) USING BTREE,
  INDEX `idx_post`(`post_id`) USING BTREE,
  INDEX `idx_platform`(`platform_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post_goods
-- ----------------------------
INSERT INTO `post_goods` VALUES (1, 96, 0, '100016034372', 'Apple iPhone 12 Pro Max (A2412) 256GB 海蓝色 支持移动联通电信5G 双卡双待手机', '10099.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/122505/19/15070/68848/5f861494Ebe330db5/24bc162f493ec940.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100016034372.html', 'https://item.m.jd.com/product/100016034372.html', '2021-08-25 21:27:21', '2021-08-25 21:27:21', NULL);
INSERT INTO `post_goods` VALUES (2, 3, 0, '100012514359', '万魔 1MORE ColorBuds 2猫眼时尚豆真无线蓝牙入耳式无线耳机运动游戏主动降噪耳机 ES602 曜夜黑', '499.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/197627/31/14006/113218/616ec627Eb3d2f568/dd74716c4bb4754b.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100012514359.html#crumb-wrap', 'https://item.m.jd.com/product/100012514359.html#crumb-wrap', '2021-10-26 13:58:25', '2021-10-26 13:58:25', NULL);
INSERT INTO `post_goods` VALUES (3, 3, 0, '100027425462', '铁三角 SQ1TW BK真无线蓝牙耳机 音乐耳机 迷你运动耳机 手机耳机 TWS苹果安卓手机', '699.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/205465/27/11704/100816/616e9588E875f5923/512296ed2602964b.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100027425462.html', 'https://item.m.jd.com/product/100027425462.html', '2021-10-26 14:01:45', '2021-10-26 14:01:45', NULL);
INSERT INTO `post_goods` VALUES (4, 3, 0, '100013332048', '万魔 1MORE ColorBuds 时尚豆真无线蓝牙入耳式无线耳机运动游戏降噪耳机 ESS6001T 蜂鸟绿', '449.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/172898/28/26544/86851/616ec717E9f62aa42/e0a22d55841adffe.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100013332048.html\nhttps://item.jd.com/100027425462.html', 'https://item.m.jd.com/product/100013332048.html', '2021-10-26 14:02:23', '2021-10-26 14:02:23', NULL);
INSERT INTO `post_goods` VALUES (5, 3, 0, '100027425462', '铁三角 SQ1TW BK真无线蓝牙耳机 音乐耳机 迷你运动耳机 手机耳机 TWS苹果安卓手机', '699.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/205465/27/11704/100816/616e9588E875f5923/512296ed2602964b.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100027425462.html\n\nhttps://item.jd.com/100013332048.html', 'https://item.m.jd.com/product/100027425462.html', '2021-10-26 14:03:29', '2021-10-26 14:03:29', NULL);
INSERT INTO `post_goods` VALUES (6, 3, 0, '100017275138', '爱国者（aigo）YOGO M4 PRO白色 游戏鞋盒电脑机箱 360冷排/E-ATX主板/侧拉式钢化玻璃/前板网孔强力散热', '299.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/169780/18/11973/124100/604b1e0bEe5b3f6bb/7d78ee2ec3e64d44.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100017275138.html', 'https://item.m.jd.com/product/100017275138.html', '2022-02-06 19:38:32', '2022-02-06 19:38:32', NULL);
INSERT INTO `post_goods` VALUES (7, 3, 0, '100017275138', '爱国者（aigo）YOGO M4 PRO白色 游戏鞋盒电脑机箱 360冷排/E-ATX主板/侧拉式钢化玻璃/前板网孔强力散热', '299.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/169780/18/11973/124100/604b1e0bEe5b3f6bb/7d78ee2ec3e64d44.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100017275138.html https://item.jd.com/100017275138.html', 'https://item.m.jd.com/product/100017275138.html', '2022-02-06 19:39:15', '2022-02-06 19:39:15', NULL);
INSERT INTO `post_goods` VALUES (8, 3, 0, '100017275138', '爱国者（aigo）YOGO M4 PRO白色 游戏鞋盒电脑机箱 360冷排/E-ATX主板/侧拉式钢化玻璃/前板网孔强力散热', '299.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/169780/18/11973/124100/604b1e0bEe5b3f6bb/7d78ee2ec3e64d44.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100017275138.html https://item.jd.com/100005578866.html', 'https://item.m.jd.com/product/100017275138.html', '2022-02-06 19:39:34', '2022-02-06 19:39:34', NULL);

-- ----------------------------
-- Table structure for post_mentions_user
-- ----------------------------
DROP TABLE IF EXISTS `post_mentions_user`;
CREATE TABLE `post_mentions_user`  (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `mentions_user_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`, `mentions_user_id`) USING BTREE,
  INDEX `post_mentions_user_mentions_user_id_foreign`(`mentions_user_id`) USING BTREE,
  CONSTRAINT `post_mentions_user_mentions_user_id_foreign` FOREIGN KEY (`mentions_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_mentions_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post_mentions_user
-- ----------------------------
INSERT INTO `post_mentions_user` VALUES (20, 1);
INSERT INTO `post_mentions_user` VALUES (21, 1);
INSERT INTO `post_mentions_user` VALUES (20, 2);
INSERT INTO `post_mentions_user` VALUES (21, 2);
INSERT INTO `post_mentions_user` VALUES (274, 2);
INSERT INTO `post_mentions_user` VALUES (377, 2);
INSERT INTO `post_mentions_user` VALUES (235, 3);

-- ----------------------------
-- Table structure for post_mod
-- ----------------------------
DROP TABLE IF EXISTS `post_mod`;
CREATE TABLE `post_mod`  (
  `post_id` bigint(20) UNSIGNED NOT NULL COMMENT '帖子 id',
  `stop_word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '触发的敏感词，半角逗号隔开',
  PRIMARY KEY (`post_id`) USING BTREE,
  CONSTRAINT `post_mod_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post_mod
-- ----------------------------

-- ----------------------------
-- Table structure for post_user
-- ----------------------------
DROP TABLE IF EXISTS `post_user`;
CREATE TABLE `post_user`  (
  `post_id` bigint(20) UNSIGNED NOT NULL COMMENT '帖子 id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户 id',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`post_id`, `user_id`) USING BTREE,
  INDEX `post_user_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post_user
-- ----------------------------
INSERT INTO `post_user` VALUES (1, 3, '2021-08-01 12:29:16');
INSERT INTO `post_user` VALUES (1, 4, '2021-08-01 12:30:05');
INSERT INTO `post_user` VALUES (1, 8, '2021-08-04 21:26:50');
INSERT INTO `post_user` VALUES (1, 108, '2021-09-07 21:57:03');
INSERT INTO `post_user` VALUES (9, 108, '2021-09-07 21:57:00');
INSERT INTO `post_user` VALUES (20, 4, '2021-08-01 12:40:23');
INSERT INTO `post_user` VALUES (166, 3, '2021-08-08 01:10:19');
INSERT INTO `post_user` VALUES (166, 108, '2021-09-07 21:56:58');
INSERT INTO `post_user` VALUES (343, 108, '2021-09-07 21:56:57');
INSERT INTO `post_user` VALUES (345, 108, '2021-09-07 21:56:53');
INSERT INTO `post_user` VALUES (436, 121, '2022-01-15 15:00:39');
INSERT INTO `post_user` VALUES (436, 137, '2022-01-15 15:02:55');
INSERT INTO `post_user` VALUES (437, 121, '2022-01-15 15:00:39');
INSERT INTO `post_user` VALUES (437, 137, '2022-01-15 15:02:54');
INSERT INTO `post_user` VALUES (447, 121, '2022-01-15 15:00:50');
INSERT INTO `post_user` VALUES (448, 137, '2022-01-15 15:03:16');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '回复 id',
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '发表用户 id',
  `thread_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '关联主题 id',
  `reply_post_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '回复 id',
  `reply_user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '回复用户 id',
  `comment_post_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '评论回复 id',
  `comment_user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '评论回复用户 id',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'ip 地址',
  `port` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '端口',
  `reply_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联回复数',
  `like_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '喜欢数',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `deleted_user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '删除用户 id',
  `is_first` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否首个回复',
  `is_comment` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否是回复回帖的内容',
  `is_approved` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否合法',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `posts_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `posts_deleted_user_id_foreign`(`deleted_user_id`) USING BTREE,
  INDEX `posts_thread_id_index`(`thread_id`) USING BTREE,
  INDEX `idx_reply_post_id`(`reply_post_id`) USING BTREE,
  CONSTRAINT `posts_deleted_user_id_foreign` FOREIGN KEY (`deleted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 469 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 3, 1, NULL, NULL, NULL, NULL, '<p>一 、学习Servlet和Tomcat</p>\n<ul>\n<li>Servlet第一篇【介绍Servlet、HTTP协议、WEB目录结构、编写入门Servlet程序、Servlet生命周期】</li>\n<li>Servlet第二篇【Servlet调用图、Servlet细节、ServletConfig、ServletContext】</li>\n<li>Servlet第三篇【request和response简介、response的常见应用】</li>\n<li>Servlet第四篇【request对象常用方法、应用】</li>\n<li>Servlet第五篇【介绍会话技术、Cookie的API、详解、应用】</li>\n<li>Servlet第六篇【Session介绍、API、生命周期、应用、与Cookie区别】</li>\n</ul>\n<p>二 、学习JDBC和数据库</p>\n<pre><code>JDBC</code></pre>\n<ul>\n<li>\n<p>JDBC【介绍JDBC、使用JDBC连接数据库、简单的工具类】</p>\n</li>\n<li>\n<p>JDBC【PreparedStatment、批处理、处理二进制、自动主键、调用存储过程、函数】</p>\n</li>\n<li>\n<p>JDBC【事务、元数据、改造JDBC工具类】</p>\n</li>\n<li>\n<p>JDBC【数据库连接池、DbUtils框架、分页】</p>\n<p>数据库</p>\n</li>\n<li>\n<p>SQLServer安装和JDBC连接SQLServer</p>\n</li>\n<li>\n<p>数据库原理</p>\n</li>\n<li>\n<p>Oracle总结【SQL细节、多表查询、分组查询、分页】</p>\n</li>\n<li>\n<p>Oracle总结【视图、索引、事务、用户权限、批量操作】</p>\n</li>\n<li>\n<p>Oracle总结【PLSQL学习】</p>\n</li>\n<li>\n<p>数据库两个神器【索引和锁】</p>\n</li>\n</ul>\n<p>三 、学习过滤器监听器</p>\n<ul>\n<li>过滤器应用【编码、敏感词、压缩、转义过滤器】</li>\n<li>监听器入门</li>\n<li>监听器应用【统计网站人数、自定义session扫描器、踢人小案例】</li>\n</ul>\n<p>四 、学习AJAX、HTTP、Web前端相关知识</p>\n<pre><code>HTTP</code></pre>\n<ul>\n<li>\n<p>HTTP应用</p>\n<p>AJAX</p>\n</li>\n<li>\n<p>AJAX应用【股票案例、验证码校验】</p>\n<p>XML和JSON</p>\n</li>\n<li>\n<p>XML基本应用</p>\n</li>\n<li>\n<p>JSON基本应用</p>\n</li>\n</ul>\n<p>五 、做一两个小项目练手</p>\n<ul>\n<li>Web开发模式【Mode I 和Mode II的介绍、应用案例】</li>\n<li>用户登陆注册【JDBC版】</li>\n<li>购物车【JavaWeb小项目、简单版】</li>\n<li>【JavaWeb】客户关系管理系统</li>\n<li>【JavaWeb】权限管理系统</li>\n<li>图书管理系统【部署开发环境、解决分类、图书、前台页面模块】</li>\n<li>图书管理系统【用户、购买、订单模块、添加权限】</li>\n<li>【JavaWeb】图书管理系统【总结】</li>\n</ul>\n<p>六 、是否要学习JSP(选学)</p>\n<ul>\n<li>JSP第一篇【JSP介绍、工作原理、生命周期、语法、指令、行为】</li>\n<li>JSP第二篇【内置对象的介绍、4种属性范围、应用场景】</li>\n<li>JSP第三篇【JavaBean的介绍、JSP的行为--JavaBean】</li>\n<li>JSP第四篇【EL表达式介绍、获取各类数据、11个内置对象、执行运算、回显数据、自定义函数、fn方法库】</li>\n<li>JSP第五篇【JSTL的介绍、core标签库、fn方法库、fmt标签库】</li>\n<li>JSP第六篇【自定义标签之传统标签】</li>\n</ul>\n<p>七 、Spring学习(最终)</p>\n<pre><code>入门</code></pre>\n<ul>\n<li>\n<p>学习工厂模式和代理模式</p>\n</li>\n<li>\n<p>Spring【依赖注入】</p>\n</li>\n<li>\n<p>Spring【AOP模块】</p>\n</li>\n<li>\n<p>Spring【DAO模块】</p>\n</li>\n<li>\n<p>Spring IOC知识点一网打尽！【总结篇】</p>\n</li>\n<li>\n<p>Spring AOP就是这么简单啦【总结篇】</p>\n</li>\n<li>\n<p>Synchronized锁在Spring事务管理下，为啥还线程不安全？</p>\n</li>\n<li>\n<p>SpringMVC入门</p>\n</li>\n<li>\n<p>SpringMVC【开发Controller】</p>\n</li>\n<li>\n<p>详解SpringMVC【参数绑定、数据回显、文件上传】</p>\n</li>\n<li>\n<p>SpringMVC【校验器、统一处理异常、RESTful、拦截器】</p>\n<p>进阶</p>\n</li>\n<li>\n<p>SpringBoot自动配置</p>\n</li>\n<li>\n<p>SpringDataJPA</p>\n</li>\n</ul>\n', '134.195.101.21', 37323, 0, 4, '2021-08-01 00:39:43', '2021-08-01 00:39:43', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (2, 4, 2, NULL, NULL, NULL, NULL, '<p>js没有纯整型，只有Number类型，实际是8字节Double，大数只要超过9223372036854775807 在js里都会丢失精度。</p>\n<p> </p>\n', '134.195.101.21', 35283, 0, 0, '2021-08-01 00:42:35', '2021-08-01 00:42:35', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (3, 4, 1, NULL, NULL, NULL, NULL, '我感觉不应该学到Spring就结束了，虽然到这个程度已经完全可以找工作了，但是技术在慢慢淘汰，最好在掌握一点其它框架MVS什么的，还有白盒测试等', '134.195.101.21', 50241, 0, 0, '2021-08-01 00:43:00', '2021-10-03 21:39:33', '2021-10-03 21:39:33', 1, 0, 0, 1);
INSERT INTO `posts` VALUES (4, 4, 3, NULL, NULL, NULL, NULL, '', '134.195.101.21', 51303, 0, 0, '2021-08-01 00:44:07', '2021-08-01 00:44:31', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (5, 5, 4, NULL, NULL, NULL, NULL, '<p>现在 Spring 越来越大，都开始使用 Gradle 构建了，支持的东西越来越多，这就导致大多数程序员对 Spring 的体系及结构都一知半解，搞得新手都分不清楚到底哪种使用方式是对的，这归根到底就是因为</p>\n<ol>\n<li>对 Spring 的版本变更不清楚</li>\n<li>对 Spring 和 J2EE 规范的关系不清楚</li>\n<li>对 Spring 那堆配置和注解背后的原理不清楚</li>\n</ol>\n<p>你可能知道 DI 是个什么概念，但你可能不知道 DI 的正确使用方式：</p>\n<ol>\n<li>你也许不知道 Spring 有自己的测试体系，我们可以直接使用</li>\n<li>Spring 的事务管理优越在哪里，和 Hibernate 自己的事务管理有啥区别，怎么配置才对。</li>\n<li>Spring 为啥提倡非侵入式（non-invasive）设计，又是从哪个版本开始这么干的，起因是什么</li>\n<li>Spring 那些注解的使用原理和适用场景是什么，哪些是Spring 自己的注解，哪些是 J2EE DI 的标准注解，使用哪个好，为什么好。<br />\n...........</li>\n</ol>\n<p>上述的一切，当你把 Spring 官方提供的 Spring Reference 看的差不多了，也就明白了，大概 500 多页吧。</p>\n<p>Spring 越来越大，衍生出其他的分支项目，虽然臃肿，但如果你知道如何筛选自己想要的功能，就不会臃肿，反而会很简洁，例如：</p>\n<ol>\n<li>你想实现 Rest 服务，那么 Spring MVC 就预置了这个功能，你没必要再去使用 CXF / Restlet 之类的 Rest 框架，还得忙着想怎么和 Spring 整合，这样，Struts 就出局了，Rest 框架也省了。</li>\n<li>你想实现权限功能，那么 Spring Security 可以替你搞定，你没必要使用 Apache Shiro 来做，也没必要苦逼地自己设计，而且人家还原生支持 OAuth 和 SAML</li>\n<li>你不想苦逼地写 DAO, 那么 Spring Data 可以替你做，这些 boilerplate code 全部替你实现了，而且对 JPA 或 NO-SQL 的支持也是相当方便。</li>\n<li>你无法忍受也无法记住 spring 的配置方式和配置逻辑，你只想专心写自己的业务代码而不愿关心工具到底如何配置，那么 SpringBoot 可以搞定一切。</li>\n</ol>\n<p>...........</p>\n<p>其他的，还有很多很多，你只需要记住，是不是臃肿，很大程度上是由你的认知和使用能力决定的，不是框架本身，具体如何学习这个优秀的框架，建议：</p>\n<ol>\n<li>视频教程点到为止，不可全信，网上流传的课程，本身就有错误存在</li>\n<li>各种帖子看看就好</li>\n<li>有问题，先去查阅 Spring Reference，懂原理才能游刃有余</li>\n</ol>\n<p>1.Spring Roo 和 Spring Boot 都是 Spring 组件，没有演变关系</p>\n<p>2.基于 SpringBoot 的 micro-service 架构目前在国外很流行，学习 SpringBoot 尤为必要</p>\n<p>3.推荐使用 Spring Boot，选择 Spring Roo 还是 Spring Boot，引用一段话如下：</p>\n<p>First, whether you use Spring Boot or Spring Roo, the reality is you\'re using Spring. So to answer your question of whether you\'d be able to use other Spring Framework components...yes, absolutely. Again, Spring Boot <em>is</em> Spring. Spring Roo <em>is</em> Spring. They\'re just different approaches to simplifying Spring development. Now, choosing between Spring Boot and Spring Roo. I was once a fan of Spring Roo, but Spring Boot outshines it in so many ways. Spring Roo was big on code generation and used aspects to perform some of its magic. It also forced you into a design model that you may or may not feel comfortable with. Spring Boot, on the other hand, uses no code generation and does not force any particular design choice. It is primarily autoconfiguration saving you from having to write a lot of common configuration yourself In short...Go with Spring Boot. You won\'t regret it.</p>\n', '134.195.101.21', 54481, 0, 0, '2021-08-01 00:47:16', '2021-08-24 21:03:34', '2021-08-24 21:03:34', 5, 1, 0, 1);
INSERT INTO `posts` VALUES (6, 5, 5, NULL, NULL, NULL, NULL, '<p>1、跟你说：这个bug没什么问题啊，你那边是不是搞错了，你再试试。</p>\n<p>实际上：刚偷偷改好这个bug，反正他们也不懂，我不背锅。</p>\n<p>2、跟你说：这个功能啊，我正在改呢，你再等等</p>\n<p>实际上：啊呀，我把这事儿忘了，一会儿做完这个就做那个。</p>\n<p>3、跟你说：你这个需求不是很合理啊？</p>\n<p>实际上：太复杂了听不懂，不好做，不想做。</p>\n<p>4、嘴上说：这个功能等下个版本时候再考虑加进去吧</p>\n<p>实际上：这么多事儿呢，根本不想做。</p>\n<p>5、嘴上说：我测试没问题啊，你试过了么？</p>\n<p>实际上：到底会不会用我的程序啊！</p>\n<p>6、嘴上说：我的时间排满了最近</p>\n<p>实际上：我不想做</p>\n<p>7、嘴上说：我有优先级更高的任务</p>\n<p>实际上：我不想做</p>\n<p>8、嘴上说：我在调试程序</p>\n<p>实际上：我不想做</p>\n<p>9、嘴上说：你这个需求不清楚</p>\n<p>实际上：我不想做</p>\n<p>10、嘴上说：你确定用户真的需要这个需求吗？</p>\n<p>实际上：又是你自己为了完成任务纂出来的吧，做出来没人用老子跟你拼了！</p>\n<p>11、嘴上说:在吗？</p>\n<p>实际上：要延期了</p>\n<p>12、嘴上说：你最近忙吗累吗要不要喝饮料？</p>\n<p>实际上：要延期了</p>\n<p>13、嘴上说：下次肯定不延期了</p>\n<p>实际上：不管下次，这次先应付过去再说</p>\n<p>1、嘴上说：你先做着吧</p>\n<p>实际上：我也不知道我到底要什么，但你做出来之后我就知道自己不要什么了</p>\n<p>2、嘴上说：你是专业的你来吧</p>\n<p>实际上：我也看不懂你搞什么呢，你自己看着办吧</p>\n<p>3、嘴上说：有个地方需要稍微调整一下</p>\n<p>实际上：需要有很大的改动之前的版本就废掉吧你重新做一次给我看看。</p>\n<p>4、嘴上说：没用户因为运营没做好/体验不好因为技术实现难/界面难看是设计做的不好</p>\n<p>实际上：反正不是我的锅</p>\n<p>5、嘴上说：你的建议不错我也是这么想的</p>\n<p>实际上：我去说的太有道理了赶紧去提需求了</p>\n<p>6、嘴上说：还在加班呢，辛苦了啊</p>\n<p>实际上：又在写bug呢？</p>\n<p>7、嘴上说：这个功能需要这么久吗？</p>\n<p>实际上：你技术不行吧？</p>\n<p>8、嘴上说：这个功能很着急，下周就要完成</p>\n<p>实际上：其实下个月才上线，但我知道你们肯定会拖延</p>\n', '134.195.101.21', 53723, 0, 0, '2021-08-01 00:47:47', '2021-08-24 21:03:26', '2021-08-24 21:03:26', 5, 1, 0, 1);
INSERT INTO `posts` VALUES (7, 6, 4, NULL, NULL, NULL, NULL, '你在说些什么花里胡哨的', '134.195.101.21', 53865, 0, 0, '2021-08-01 00:50:14', '2021-08-01 00:50:14', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (8, 6, 6, NULL, NULL, NULL, NULL, '<p><del>功能也就那样</del></p>\n', '134.195.101.21', 55533, 0, 0, '2021-08-01 00:51:26', '2021-08-01 00:51:26', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (9, 3, 7, NULL, NULL, NULL, NULL, '<p>系统的内存可大略分为3个区域，即系统区(OS)、程序区(Program)、和数据区(Data)。</p>\n<p>当程序执行时，程序代码会加载到内存中的程序区，数据暂时存储在数据区中。</p>\n', '134.195.101.21', 33487, 0, 1, '2021-08-01 00:52:52', '2021-08-01 00:52:52', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (10, 4, 4, NULL, NULL, NULL, NULL, ':fadai::fadai::fadai:', '134.195.101.21', 47779, 0, 0, '2021-08-01 00:55:02', '2021-08-01 00:55:02', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (11, 7, 8, NULL, NULL, NULL, NULL, '', '134.195.101.21', 52279, 0, 0, '2021-08-01 01:03:34', '2021-08-02 15:14:00', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (12, 7, 8, NULL, NULL, NULL, NULL, '按大分计算 BLG SN同样8分 按小分计算 同样5分 胜负关系SN 胜 BLG 为什么 BLG确认晋级季后赛 SN 要争夺 看不懂啊', '134.195.101.21', 55519, 0, 0, '2021-08-01 01:09:31', '2021-08-01 01:09:31', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (13, 7, 8, NULL, NULL, NULL, NULL, '有大佬帮忙解读一下么:yiwen::yiwen::yiwen:', '134.195.101.21', 49315, 0, 0, '2021-08-01 01:09:58', '2021-08-01 01:09:58', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (14, 7, 8, NULL, NULL, NULL, NULL, ':liulei:', '134.195.101.21', 48863, 0, 0, '2021-08-01 01:10:09', '2021-08-01 01:10:09', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (15, 8, 9, NULL, NULL, NULL, NULL, '<p>家人们，今天才下好，有一起玩的吗</p>\n', '134.195.101.21', 58023, 0, 0, '2021-08-01 01:15:35', '2021-08-02 15:13:25', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (16, 8, 9, NULL, NULL, NULL, NULL, '不要太强的', '134.195.101.21', 47549, 0, 0, '2021-08-01 01:15:43', '2021-08-01 01:15:43', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (17, 8, 9, NULL, NULL, NULL, NULL, 'LOL', '134.195.101.21', 41125, 0, 0, '2021-08-01 01:16:07', '2021-08-01 01:16:07', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (18, 9, 9, NULL, NULL, NULL, NULL, '加我QQ112355478', '134.195.101.21', 40433, 0, 0, '2021-08-01 01:36:09', '2021-08-01 01:36:10', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (20, 4, 10, NULL, NULL, NULL, NULL, '<p><span id=\"member\" value=\"1\">@PDA</span>    <span id=\"member\" value=\"2\">@Jerome</span>   </p>\n', '42.224.227.202', 17854, 0, 1, '2021-08-01 12:40:17', '2021-08-24 21:07:34', '2021-08-24 21:07:34', 4, 1, 0, 1);
INSERT INTO `posts` VALUES (21, 4, 10, NULL, NULL, NULL, NULL, '<span id=\"member\" value=\"2\">@Jerome</span>  <span id=\"member\" value=\"1\">@PDA</span>', '42.224.227.202', 17828, 0, 0, '2021-08-01 12:40:48', '2021-08-01 12:40:48', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (22, 10, 11, NULL, NULL, NULL, NULL, '<table>\n<thead>\n<tr>\n<th align=\"left\">那位大哥有雷霆1.57版本的给发下 谢谢了那位大哥有雷霆1.57版本的给发下 谢谢了那位大哥有雷霆1.57版本的给发下 谢谢了</th>\n</tr>\n</thead>\n</table>\n', '134.195.101.21', 34801, 0, 0, '2021-08-01 14:06:40', '2021-08-02 15:10:53', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (23, 11, 11, NULL, NULL, NULL, NULL, '私发给你', '134.195.101.21', 35793, 0, 0, '2021-08-01 14:08:43', '2021-08-01 14:08:43', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (24, 11, 12, NULL, NULL, NULL, NULL, '<p>下载的V281.107版本，请问怎么没有低温舱呢？有什么办法解决吗？要不抓龙带回家很麻烦啊</p>\n', '134.195.101.21', 40309, 0, 0, '2021-08-01 14:11:38', '2021-08-02 15:40:36', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (25, 11, 12, NULL, NULL, NULL, NULL, '求大神解答', '134.195.101.21', 53679, 0, 0, '2021-08-01 14:11:45', '2021-08-01 14:11:45', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (26, 12, 13, NULL, NULL, NULL, NULL, '<p>这个是网络游戏，是端游，不是单机游戏，游戏目前只有大逃杀和乱斗，金色以上皮肤只能RMB购买，目前官方宣传：购买游戏限时免费送妖刀姬，给人感觉后续角色可能要钱，游戏官方保留了先行者测试进度，这次不删档能继承（这会导致封测玩家比新玩家多很多游戏币，游戏币主要用来解锁人物的技能和符文）符文的高低决定了你钩锁的长度、闪避的使用次数、大招的充能时间，游戏目前是买断门槛钱+通行证+皮肤+开宝箱收费，每局结束后并不会产生游戏币。哎，这是我几天观望下来收集的信息，也算为大家贡献了。</p>\n', '134.195.101.21', 54343, 0, 0, '2021-08-02 01:55:02', '2021-08-02 15:01:56', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (28, 13, 13, NULL, NULL, NULL, NULL, '<p></p>我已经后悔买了，这游戏完全不是我的菜，又不能退款。', '134.195.101.21', 38807, 0, 0, '2021-08-02 02:04:52', '2021-08-02 02:04:52', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (29, 13, 13, NULL, NULL, NULL, NULL, '<p></p>买断制还有内购，什么垃圾策划', '134.195.101.21', 59109, 0, 0, '2021-08-02 02:05:00', '2021-08-02 02:05:00', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (30, 13, 13, NULL, NULL, NULL, NULL, '<p></p>买断制还加通行证，又是充钱抽奖的，不愧是网易吃相难看', '134.195.101.21', 34885, 0, 0, '2021-08-02 02:05:08', '2021-08-02 02:05:08', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (31, 14, 13, NULL, NULL, NULL, NULL, '就是割玩家韭菜。中国大厂3A大ZUO。3A大作国游暂时是不可能有的，毕竟这种杀猪的3A大ZUO圈钱不香吗？', '134.195.101.21', 44901, 0, 0, '2021-08-02 02:06:51', '2021-08-02 02:06:51', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (33, 14, 13, NULL, NULL, NULL, NULL, '就是割玩家韭菜。中国大厂3A大ZUO。3A大作国游暂时是不可能有的，毕竟这种杀猪的3A大ZUO圈钱不香吗？', '134.195.101.21', 57501, 0, 0, '2021-08-02 02:07:20', '2021-08-02 02:07:20', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (34, 12, 13, NULL, NULL, NULL, NULL, '只能聊LOL和CSGO吗', '134.195.101.21', 41643, 0, 0, '2021-08-02 02:08:28', '2021-08-02 02:08:28', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (35, 14, 14, NULL, NULL, NULL, NULL, '<table>\n<thead>\n<tr>\n<th align=\"left\">想去官网登录看看账号信息，结果卡半天登录不进去。猪场那么大，不觉得丢脸吗！？而且还不让退款，猪场还真做的出来！</th>\n</tr>\n</thead>\n</table>\n', '134.195.101.21', 36251, 0, 0, '2021-08-02 02:10:08', '2021-08-02 15:02:51', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (36, 15, 15, NULL, NULL, NULL, NULL, '<p>就是不想玩了，之前s7上过钻是唯一骄傲的了，然后就是黄金仔了，真心地喜欢这个号，但是大学毕业了，没时间玩了，想问皮肤细节的评论区或私聊都可以，可以走咸鱼。（我所指的全英雄是这145英雄加上1万精粹，所以我标题说全英雄，实际4万精粹，都理解一下）q:2574419154，v:13306323325。</p>\n', '134.195.101.21', 55881, 0, 0, '2021-08-02 02:18:30', '2021-08-02 11:01:29', '2021-08-02 11:01:29', 2, 1, 0, 1);
INSERT INTO `posts` VALUES (37, 15, 15, NULL, NULL, NULL, NULL, '25颗宝石，自己赞赞马上就够了', '134.195.101.21', 54067, 0, 0, '2021-08-02 02:20:35', '2021-08-02 02:20:35', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (38, 2, 16, NULL, NULL, NULL, NULL, '<p>有什么想加的板块、分类、功能都可以私信我哟~</p>\n', '221.13.140.87', 54088, 0, 0, '2021-08-02 11:25:24', '2021-08-02 11:25:24', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (39, 12, 16, NULL, NULL, NULL, NULL, '永劫无间', '134.195.101.21', 33519, 0, 0, '2021-08-02 14:34:25', '2021-08-02 14:34:25', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (40, 12, 16, NULL, NULL, NULL, NULL, '这种新游应该有', '134.195.101.21', 56469, 0, 0, '2021-08-02 14:34:36', '2021-08-02 14:34:36', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (41, 12, 16, NULL, NULL, NULL, NULL, '各种单机什么的3A', '134.195.101.21', 46303, 0, 0, '2021-08-02 14:34:46', '2021-08-02 14:34:46', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (42, 12, 16, NULL, NULL, NULL, NULL, '荒野大嫖客这些', '134.195.101.21', 32831, 0, 0, '2021-08-02 14:34:54', '2021-08-02 14:34:54', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (43, 16, 17, NULL, NULL, NULL, NULL, '<p>我想问一下哈 这次通行证是因为只给25个至臻点而且皮肤不好看没买 现在看了一下任务栏已经存了1800个代币了 活动就剩一周了 我如果现在买的话400个代币是挺简单的 主要问题是里程碑里的至臻点还能搞到不能 还有这个2020至臻点什么时候过期啊 如果时间长的话 再搞下一个通行证25个至臻点还能换一个至臻皮肤 我本来有50个 就这几个问题 求求哪位大佬帮我解答一下 谢谢大哥</p>\n', '134.195.101.21', 33285, 0, 0, '2021-08-02 14:37:28', '2021-08-02 14:37:28', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (44, 16, 17, NULL, NULL, NULL, NULL, '我平时玩的时间还是挺多的 里程碑任务如果可以同时完成好几个 我觉得一星期并不难 问题就是2020至臻点什么时候过期和至臻皮肤返场 先提前谢谢各位大佬了:qiang:', '134.195.101.21', 40221, 0, 0, '2021-08-02 14:38:16', '2021-08-02 14:38:16', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (45, 16, 16, NULL, NULL, NULL, NULL, '我感觉应该写一点可以覆盖大部分的，比如单机游戏，3A这些。反正代码不是我写，你就慢慢掉头发吧', '134.195.101.21', 53191, 0, 0, '2021-08-02 14:41:00', '2021-08-02 14:41:00', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (46, 16, 14, NULL, NULL, NULL, NULL, '对', '134.195.101.21', 42205, 0, 0, '2021-08-02 14:41:36', '2021-08-02 14:41:36', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (47, 16, 14, NULL, NULL, NULL, NULL, '就是垃圾', '134.195.101.21', 41829, 0, 0, '2021-08-02 14:41:43', '2021-08-02 14:41:43', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (48, 17, 18, NULL, NULL, NULL, NULL, '<p>等个妹妹，我脾气好，温柔。lol，pubg，永劫都可以玩。联盟电一钻石水平，其他的也还行。休息了可以打游戏，平时可以聊聊天。</p>\n', '134.195.101.21', 35599, 0, 0, '2021-08-02 15:00:54', '2021-08-02 15:00:54', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (49, 17, 18, NULL, NULL, NULL, NULL, 'd', '134.195.101.21', 55777, 0, 0, '2021-08-02 15:01:04', '2021-08-02 15:01:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (50, 14, 18, NULL, NULL, NULL, NULL, '怕是一辈子也找不到', '134.195.101.21', 46685, 0, 0, '2021-08-02 15:03:24', '2021-08-02 15:03:24', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (51, 10, 16, NULL, NULL, NULL, NULL, '有没有什么好玩的功能，加一点', '134.195.101.21', 35491, 0, 0, '2021-08-02 15:11:28', '2021-08-02 15:11:28', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (52, 11, 16, NULL, NULL, NULL, NULL, '方舟', '134.195.101.21', 50495, 0, 0, '2021-08-02 15:12:47', '2021-08-02 15:12:47', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (53, 7, 16, NULL, NULL, NULL, NULL, '编程计算机是什么鬼，里面都是什么妖魔鬼怪', '134.195.101.21', 46833, 0, 0, '2021-08-02 15:17:02', '2021-08-02 15:17:02', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (54, 18, 19, NULL, NULL, NULL, NULL, '<p>王者荣耀就是个垃圾游戏，所有腾讯游戏都是圈钱的游戏，还**的公平对战平台，毛线的公平，公平这两字好意思用。连胜之后必连败，然后赢一局继续连败。全是幕后操作，最大得演员团体算在天美，网上公布的演员号封停，全是天美自己的，有意思吗。见过最不公平的对战游戏就是王者荣耀，最垃圾。</p>\n', '134.195.101.21', 57345, 0, 0, '2021-08-02 15:20:13', '2021-08-02 15:20:13', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (55, 19, 19, NULL, NULL, NULL, NULL, '有道理', '134.195.101.21', 41469, 0, 0, '2021-08-02 15:21:19', '2021-08-02 15:21:19', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (56, 19, 20, NULL, NULL, NULL, NULL, '<p>我发现 王者荣耀 这个垃圾游戏越来越垃圾了，莫名其妙扣我4分信誉分，我要求给我扣分理由，真TMD不要B脸了。只要是付费玩家就是你们的爹吧</p>\n', '134.195.101.21', 39173, 0, 0, '2021-08-02 15:22:13', '2021-08-02 15:22:13', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (57, 19, 20, NULL, NULL, NULL, NULL, '举报VIP高的就没成功过', '134.195.101.21', 47409, 0, 0, '2021-08-02 15:23:41', '2021-08-02 15:23:41', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (58, 20, 20, NULL, NULL, NULL, NULL, '我第一个号就被封号10年，只能说什么JB垃圾废物游戏', '134.195.101.21', 37627, 0, 0, '2021-08-02 15:25:44', '2021-08-02 15:25:44', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (59, 20, 21, NULL, NULL, NULL, NULL, '<p><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhxlM0gIy4aw6IqIox4G1IDB2g5Oufqc14OYxzvrKRgXBwLh10OcK1uw5gNztFlBXWMg4emOlHf+gGiWHS6NDCwjbUzqvXNkBMBRCv8Z5+b6MwNe85MVb1FSF7RoRk7j+TJ9R422zofOr8G7v/gFAux4D6yvHPQdzY95XNIJdrjPOjHhKC2UoUT3zJImmE+mewnY9qHh6BM0y\">https://www.bilibili.com/video/BV1jT4y1P7bH?from=search  &amp; seid=15714202017370179864</a></p>\n<p>视频里面的Katana到底是个什么玩意？:yiwen:</p>\n', '134.195.101.21', 59315, 0, 0, '2021-08-02 15:27:36', '2021-08-02 15:27:36', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (60, 21, 22, NULL, NULL, NULL, NULL, '<p>垃圾荣耀这个健康系统哪个死妈弄的玩意？</p>\n', '134.195.101.21', 36519, 0, 0, '2021-08-02 15:34:28', '2021-08-02 15:34:28', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (61, 21, 22, NULL, NULL, NULL, NULL, '王者是个垃圾游戏，抄袭', '134.195.101.21', 38365, 0, 0, '2021-08-02 15:35:05', '2021-08-02 15:35:05', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (62, 21, 22, NULL, NULL, NULL, NULL, '匹配机制真垃圾', '134.195.101.21', 57895, 0, 0, '2021-08-02 15:35:23', '2021-08-02 15:35:23', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (63, 22, 22, NULL, NULL, NULL, NULL, '抄袭我也爱', '134.195.101.21', 51719, 0, 0, '2021-08-02 15:36:15', '2021-08-02 15:36:15', '2021-08-09 15:28:14', 2, 0, 0, 1);
INSERT INTO `posts` VALUES (64, 23, 23, NULL, NULL, NULL, NULL, '<p>有没有大佬带萌新一下</p>\n', '134.195.101.21', 40353, 0, 0, '2021-08-02 16:30:09', '2021-08-02 16:30:09', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (65, 24, 24, NULL, NULL, NULL, NULL, '<p>碰见赏金猎人，把我买的马打死了，然后我也死了，复活了以后发现马没有了，地图上只显示一个马鞍和一匹菜的不行的新马，去买马的地方也没有了，等于买的马花了四百多死一次就没有了，我还只能重新读档，玩个游戏现在还得没事存个档以防万一。<br />\n还有就是假如我打了一马屁股的动物皮，然后不小心死了，复活以后皮也没有了</p>\n', '134.195.101.21', 55591, 0, 0, '2021-08-02 16:32:29', '2021-08-02 16:32:29', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (66, 24, 23, NULL, NULL, NULL, NULL, '加萌新群，然后蹭车', '134.195.101.21', 48971, 0, 0, '2021-08-02 16:33:12', '2021-08-02 16:33:12', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (67, 24, 16, NULL, NULL, NULL, NULL, '搞个资源帖，分享资源，比如分享一些种子游戏什么的', '134.195.101.21', 58213, 0, 0, '2021-08-02 16:35:30', '2021-08-02 16:35:30', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (68, 25, 25, NULL, NULL, NULL, NULL, '<pre><code>从昨天开始，打开手机，满屏都是吴亦凡，凡凡，牙签……还以为他得金牌了，原来是淫牌，哈哈。\n    不过我倒是很有八卦的欲望，八卦的内容不是男女那些花花事，而是明星们的“背景”，我说的不是他们不是背后有谁，而是“上面”有谁。\n</code></pre>\n', '134.195.101.21', 49015, 0, 0, '2021-08-02 16:37:52', '2021-08-02 16:39:37', '2021-08-02 16:39:37', 25, 1, 0, 1);
INSERT INTO `posts` VALUES (69, 25, 16, NULL, NULL, NULL, NULL, '<p>PC首页整体缩小一点，电脑屏幕小一点的，简直铺满了整个屏幕.</p><p>参考微博，三栏结构的确更符合，但咱弄的太大了，看起来很不得劲。</p>首页和内容页的大小还不一样，是不好的，建议一下。', '134.195.101.21', 50147, 0, 0, '2021-08-02 16:47:00', '2021-08-02 16:47:00', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (70, 25, 26, NULL, NULL, NULL, NULL, '<h1>可v可q</h1>\n', '134.195.101.21', 56641, 0, 0, '2021-08-02 16:50:12', '2021-08-03 12:02:02', '2021-08-03 12:02:02', 2, 1, 0, 1);
INSERT INTO `posts` VALUES (71, 25, 21, NULL, NULL, NULL, NULL, '一起玩吗', '134.195.101.21', 56349, 0, 0, '2021-08-02 20:21:25', '2021-08-02 20:21:25', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (72, 26, 27, NULL, NULL, NULL, NULL, '<p>下了小白插件包 装ScriptHookVDotNet以后点线下模式加载一会儿后就闪退 删了就又能进了 求助大佬这种情况怎么办 游戏和插件版本都是最新的</p>\n', '134.195.101.21', 46489, 0, 0, '2021-08-02 20:29:10', '2021-08-02 20:29:10', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (73, 26, 16, NULL, NULL, NULL, NULL, '做一个资源分享站，专门分享一些游戏资源', '134.195.101.21', 49443, 0, 0, '2021-08-02 20:32:09', '2021-08-02 20:32:09', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (74, 26, 28, NULL, NULL, NULL, NULL, '<p>今天打着打着休闲 碰到一个外国人 说要加我好友 加了后说了些有的没的 然后就要跟我换皮肤 虽然我知道大概率是骗子 但是我在想交易中间有什么漏洞么。。。。</p>\n', '134.195.101.21', 39167, 0, 0, '2021-08-02 20:34:08', '2021-08-02 20:34:08', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (75, 27, 29, NULL, NULL, NULL, NULL, '<p>换一个工作，换一种心情。</p>\n', '134.195.101.21', 52635, 0, 0, '2021-08-02 20:40:11', '2021-08-02 20:40:11', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (76, 27, 28, NULL, NULL, NULL, NULL, 'steam交易不是要双方都点同意的吗', '134.195.101.21', 40361, 0, 0, '2021-08-02 20:40:54', '2021-08-02 20:40:54', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (77, 27, 28, NULL, NULL, NULL, NULL, '交易的时候可以看见对方皮肤，可以确定一下皮肤品质和价格在交易', '134.195.101.21', 54521, 0, 0, '2021-08-02 20:41:56', '2021-08-02 20:41:56', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (78, 27, 16, NULL, NULL, NULL, NULL, '大佬也可以偶尔发一些知识帖子，毕竟网站开发这一技术还是吃香的，我也想学:leiben:', '134.195.101.21', 49763, 0, 0, '2021-08-02 20:45:29', '2021-08-02 20:45:29', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (79, 3, 30, NULL, NULL, NULL, NULL, '<p>付费功能测试</p>\n', '134.195.101.21', 53145, 0, 0, '2021-08-02 20:50:23', '2021-08-02 21:38:37', '2021-08-02 21:38:37', 3, 1, 0, 1);
INSERT INTO `posts` VALUES (80, 25, 31, NULL, NULL, NULL, NULL, '<p>一开始提示缺少xinput1_3，下载后又提示0xc00007b，百度了一下后补安装了DX9.0c还是这样？大神们帮帮忙是咋回事？ 我玩2077可以运行</p>\n', '134.195.101.21', 43483, 0, 0, '2021-08-03 16:25:00', '2021-08-09 15:22:58', '2021-08-09 15:22:58', 1, 1, 0, 1);
INSERT INTO `posts` VALUES (81, 28, 32, NULL, NULL, NULL, NULL, '<p>第一次玩，不知道有没有必要弄一堆mod。</p>\n', '134.195.101.21', 52733, 0, 0, '2021-08-03 16:27:16', '2021-08-03 16:27:16', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (82, 28, 31, NULL, NULL, NULL, NULL, '系统问题吧', '134.195.101.21', 46873, 0, 0, '2021-08-03 16:28:10', '2021-08-03 16:28:10', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (83, 28, 29, NULL, NULL, NULL, NULL, '写什么日记?', '134.195.101.21', 40767, 0, 0, '2021-08-03 16:28:25', '2021-08-03 16:28:25', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (84, 28, 16, NULL, NULL, NULL, NULL, '网站太简洁了，搞得花里胡哨点，那个论坛这么简洁', '134.195.101.21', 55163, 0, 0, '2021-08-03 16:29:18', '2021-08-03 16:29:18', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (85, 28, 33, NULL, NULL, NULL, NULL, '<p>近日，根据R星母公司Take-Two数据显示，《GTA5》的销量已超过1.5亿份，达到了一个新的里程碑。</p>\n<p>该数据来自Take-Two公司近日发布的2022财年第一季度财报,游戏销量相较于5月的报告中提到的1.45亿份有所增加。</p>\n<p>据Take-Two公司称，该游戏最初于2013年9月发布，是史上零售额达到10亿美元速度最快的娱乐产品。</p>\n<p>根据NPD Group的数据，无论是单位还是美元销售额来看，这款游戏都是美国近十年来最畅销的游戏。</p>\n<p>同时，在本周一举行的Take-Two 2022财年第一季度财务会议上，该公司总裁透露旗下的2K正在打造一款全新的游戏作品，并计划在2022年4月前推出。</p>\n<p>总裁Karl Slatoff说道：“本月晚些时候，2K将公布另一个令人兴奋的新系列的细节内容，计划在本财年内推出。”</p>\n<p>在周一的财报电话会议上，Take-Two还表示，将两款“沉浸式”游戏的发布时间推迟到本财年的晚些时候，而不是原先的计划。</p>\n<p>该公司首席执行官Strauss Zelnick在5月份表示，计划在本财年推出21款游戏，其中包括4款沉浸式游戏——其中两款来自“成熟”的授权游戏，另外两款来自“新”游戏。</p>\n', '134.195.101.21', 52191, 0, 0, '2021-08-03 16:31:13', '2021-08-03 16:31:13', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (86, 29, 34, NULL, NULL, NULL, NULL, '<p>绝地求生现在需要加速器吗，哪个比较好，纯小白一个</p>\n', '134.195.101.21', 53229, 0, 0, '2021-08-03 16:34:40', '2021-08-03 16:34:40', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (87, 29, 34, NULL, NULL, NULL, NULL, '有人吗', '134.195.101.21', 55739, 0, 0, '2021-08-03 16:34:47', '2021-08-03 16:34:47', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (88, 30, 34, NULL, NULL, NULL, NULL, '奇游吧 需要的话留邮箱 我发周卡给你体验', '134.195.101.21', 49195, 1, 0, '2021-08-03 16:36:34', '2021-08-03 16:36:34', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (89, 30, 34, NULL, NULL, NULL, NULL, '加速效果贼好', '134.195.101.21', 58853, 0, 0, '2021-08-03 16:36:38', '2021-08-03 16:36:38', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (90, 30, 34, NULL, NULL, NULL, NULL, '找我买也便宜', '134.195.101.21', 51927, 0, 0, '2021-08-03 16:36:51', '2021-08-03 16:36:51', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (91, 31, 34, 88, 30, NULL, NULL, '一般多少钱？', '134.195.101.21', 50845, 0, 0, '2021-08-03 16:38:38', '2021-08-03 16:38:38', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (92, 31, 35, NULL, NULL, NULL, NULL, '<p>这种战绩是人能打出来的？多长时间了不见封。</p>\n', '134.195.101.21', 49965, 0, 0, '2021-08-03 16:39:48', '2021-08-03 16:39:48', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (93, 31, 35, NULL, NULL, NULL, NULL, '还带俩陪玩小号。', '134.195.101.21', 57527, 0, 0, '2021-08-03 16:40:18', '2021-08-03 16:40:18', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (94, 31, 36, NULL, NULL, NULL, NULL, '', '134.195.101.21', 58463, 0, 0, '2021-08-03 16:42:48', '2021-09-07 21:48:29', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (95, 10, 36, NULL, NULL, NULL, NULL, '不知道', '134.195.101.21', 57145, 0, 0, '2021-08-03 16:44:07', '2021-08-03 16:44:07', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (96, 10, 35, NULL, NULL, NULL, NULL, '封不封号和战绩没啥关系。我两年前大号莫名其妙被永封了，最近回归玩小号没几天又被封了，唯一说开过的辅助类的东西就是游戏加加的滤镜和鼠标驱动自带的鼠标连点了（拿m16的时候可以当全自动打），满大街那么多挂不封封我我是没想到的', '134.195.101.21', 58167, 0, 0, '2021-08-03 16:44:48', '2021-08-03 16:44:48', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (97, 10, 37, NULL, NULL, NULL, NULL, '<p>wv群 群里人不多但是每天都有喊开黑组队 再也不用担心没对友了野排碰见sb队友 来的私聊 欢迎欢迎</p>\n', '134.195.101.21', 39905, 0, 0, '2021-08-03 16:46:15', '2021-08-03 16:46:15', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (98, 8, 16, NULL, NULL, NULL, NULL, '怪物猎人', '134.195.101.21', 57515, 0, 0, '2021-08-03 16:48:25', '2021-08-03 16:48:25', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (99, 8, 38, NULL, NULL, NULL, NULL, '<p>大剑有像丧天彪，喵小西，猛男这种拿武器讲解怪物ai拆招的up吗，被头来剑法酷到了，但是很少看到偏新手进阶向的，好多都是ta炫技，想重新开荒一个怪一个怪的打，估计解锁斗技能场要点时间</p>\n', '134.195.101.21', 54089, 0, 0, '2021-08-03 16:49:06', '2021-08-06 15:33:43', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (100, 32, 38, NULL, NULL, NULL, NULL, '<p>头来熟悉怪的动作，知道龙车的预定停车距离，知道哪些近身招式的攻击范围能躲掉提前蓄力就可以了，除了少部分怪有屁股和侧身突进，大部分怪在打你之前都是会转向把头朝着你后才开始出下一招。</p>TA那更多的是算刀硬直，知道动作后已经可以头来但打完后没进硬直自己也有概率被打飞。视频有些没蓄之类的小伤害和不追都是故意的，留到下一招再触发硬直。', '134.195.101.21', 40957, 0, 0, '2021-08-03 16:50:35', '2021-08-03 16:50:35', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (101, 32, 39, NULL, NULL, NULL, NULL, '<p>坐等正式版爆肝</p>\n', '134.195.101.21', 56411, 0, 0, '2021-08-03 16:51:57', '2021-08-06 15:30:47', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (102, 33, 16, NULL, NULL, NULL, NULL, '搞一个资讯帖，发一些最新消息', '134.195.101.21', 35135, 0, 0, '2021-08-03 16:59:28', '2021-08-03 16:59:28', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (103, 33, 39, NULL, NULL, NULL, NULL, '还行', '134.195.101.21', 51473, 0, 0, '2021-08-03 20:06:52', '2021-08-03 20:06:52', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (104, 33, 40, NULL, NULL, NULL, NULL, '<p>20年图片这种高质量的大型作品连出了3部，今年却一整年都很寂静</p>\n', '134.195.101.21', 44831, 0, 0, '2021-08-04 00:19:58', '2021-08-10 23:04:32', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (105, 33, 40, NULL, NULL, NULL, NULL, '发点别人的图', '134.195.101.21', 46861, 0, 0, '2021-08-04 00:20:39', '2021-08-04 00:20:39', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (106, 12, 16, NULL, NULL, NULL, NULL, '为什么右边的推荐内容一直是空呢，加一点东西吧，不然不好看的', '134.195.101.21', 56565, 0, 0, '2021-08-04 00:25:41', '2021-08-04 00:25:41', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (107, 34, 41, NULL, NULL, NULL, NULL, '<p>编程计算机里面谁最牛逼啊</p>\n', '134.195.101.21', 58935, 0, 0, '2021-08-04 18:53:39', '2021-08-07 16:48:40', '2021-08-07 16:48:40', 34, 1, 0, 1);
INSERT INTO `posts` VALUES (109, 35, 41, NULL, NULL, NULL, NULL, '盲猜thread', '134.195.101.21', 50997, 0, 0, '2021-08-04 20:32:07', '2021-08-04 20:32:07', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (110, 35, 42, NULL, NULL, NULL, NULL, '<p>目前用控制台刷出来的装备都是随机或者白板。。。需要自己折腾到传奇很是麻烦。。。。而且老觉得怪怪的不像原生装备。。。</p>\n<p>这个MOD直接就把游戏世界内所有掉落的装备都刷成传奇装备。。。一劳永逸。。。分享给大家~（自己进游戏去体会吧，没截图意义）</p>\n<p>**安装方法复制到：\\Cyberpunk 2077\\archive\\pc\\patch（没有这个文件夹就自己建立一个）<br />\n**<br />\nMOD文件：</p>\n', '134.195.101.21', 37551, 0, 0, '2021-08-04 20:36:49', '2021-08-06 15:32:30', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (111, 35, 16, NULL, NULL, NULL, NULL, '赛博朋克', '134.195.101.21', 42533, 0, 0, '2021-08-04 20:37:10', '2021-08-04 20:37:10', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (113, 36, 42, NULL, NULL, NULL, NULL, '搞个MOD还要钱？', '134.195.101.21', 45371, 0, 0, '2021-08-04 20:39:46', '2021-08-04 20:39:46', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (114, 36, 43, NULL, NULL, NULL, NULL, '<p>1.那帮老玩家都成家退游了<br />\n2.手机游戏占理市场较大<br />\n3.一帮不要脸的高分段玩家打小号，弄得新手玩家没得玩，不敢玩，导致无新鲜血液注入（我朋友就是）<br />\n下面这个人就是不要脸的，引以为戒，不要你玩的好就欺负新玩家，总有你玩不动的那一天。如果觉得自己牛逼就喜欢欺负菜鸟，觉得理所当然，那我没话说，一报还一报。英雄联盟也会被这帮人加速退隐。</p>\n', '134.195.101.21', 37269, 0, 0, '2021-08-04 20:43:51', '2021-08-04 20:43:51', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (115, 8, 43, NULL, NULL, NULL, NULL, '不都是这样吗', '134.195.101.21', 59097, 0, 0, '2021-08-04 20:46:18', '2021-08-04 20:46:18', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (116, 8, 43, NULL, NULL, NULL, NULL, 'csgo难道不是吗，游戏如果凉了剩下的也都是高手了', '134.195.101.21', 59203, 0, 0, '2021-08-04 20:46:50', '2021-08-04 20:46:51', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (117, 8, 43, NULL, NULL, NULL, NULL, '新手得不到游戏体验', '134.195.101.21', 54567, 0, 0, '2021-08-04 20:47:05', '2021-08-04 20:47:05', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (118, 8, 44, NULL, NULL, NULL, NULL, '<p><a href=\"http://jump2.bdimg.com/safecheck/index?url=rN3wPs8te/owrmQ6pfU7rms2AM1SQAgiNGE3z1dAkSkPVh+tqy6Rw19XZYQEtzBFCrfl4PEJEmeFArbrsV8+obPauZal54YBavEFkpMRuyG0sUCip27GxsqVMVSGEiabwV00iBT9MzR5z8Bn4gXBxDA8Zu4mdgY0\">https://docs.扣扣.com/doc/DSXBVT0d2RmNRVHRh </a>所有信息都在这个文档里面</p>\n', '134.195.101.21', 34025, 0, 0, '2021-08-04 20:52:11', '2021-08-04 20:52:11', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (119, 8, 42, NULL, NULL, NULL, NULL, '一个论坛付费太过分了吧，而且也不是你做的', '134.195.101.21', 47049, 0, 0, '2021-08-04 21:25:50', '2021-08-04 21:25:50', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (120, 8, 42, NULL, NULL, NULL, NULL, '搬运一下就付费?', '134.195.101.21', 49637, 0, 0, '2021-08-04 21:26:04', '2021-08-04 21:26:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (121, 37, 16, NULL, NULL, NULL, NULL, '把网站源码给我吧', '61.158.147.207', 42585, 0, 0, '2021-08-06 12:48:03', '2021-08-06 12:48:03', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (122, 38, 45, NULL, NULL, NULL, NULL, '<p>电一区遇见TayoDj 和 Yklyhn这两个人。 赶紧举报。 除了会骂人。 就是演你们。 各种演。 抢人头。 挂架。 无缘无故骂队友。 不打团。 等人都死了。 再去送。 反正就是各种演你们。 记住。 遇见了。 千万要举报。 这样的人真的坑死你们。</p>\n', '134.195.101.21', 34535, 0, 0, '2021-08-06 15:14:56', '2021-08-06 15:14:56', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (123, 39, 46, NULL, NULL, NULL, NULL, '<p>有没有人能用LOL名字查VX号或者其他信息，需要差一个，500块，谢谢</p>\n', '134.195.101.21', 33843, 0, 0, '2021-08-06 15:17:33', '2021-08-06 15:17:33', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (124, 39, 36, NULL, NULL, NULL, NULL, '可能你电脑垃圾', '134.195.101.21', 54217, 0, 0, '2021-08-06 15:18:05', '2021-08-06 15:18:05', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (125, 39, 35, NULL, NULL, NULL, NULL, '这算啥', '134.195.101.21', 42779, 0, 0, '2021-08-06 15:18:24', '2021-08-06 15:18:24', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (126, 39, 33, NULL, NULL, NULL, NULL, '玩GTA吗，带你', '134.195.101.21', 50391, 0, 0, '2021-08-06 15:18:44', '2021-08-06 15:18:44', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (127, 40, 27, NULL, NULL, NULL, NULL, '私聊我', '134.195.101.21', 54735, 0, 0, '2021-08-06 15:19:55', '2021-08-06 15:19:55', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (128, 40, 24, NULL, NULL, NULL, NULL, '对', '134.195.101.21', 43177, 0, 0, '2021-08-06 15:20:18', '2021-08-06 15:20:18', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (129, 40, 22, NULL, NULL, NULL, NULL, '王者就是垃圾', '134.195.101.21', 38961, 0, 0, '2021-08-06 15:20:38', '2021-08-06 15:20:38', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (130, 40, 23, NULL, NULL, NULL, NULL, '私聊我我带你', '134.195.101.21', 55331, 0, 0, '2021-08-06 15:21:04', '2021-08-06 15:21:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (131, 40, 47, NULL, NULL, NULL, NULL, '<p>有没有想做主播的联系我 Q：2221156571</p>\n', '134.195.101.21', 47163, 0, 0, '2021-08-06 15:21:48', '2021-08-06 15:22:03', '2021-08-06 15:22:03', 40, 1, 0, 1);
INSERT INTO `posts` VALUES (132, 40, 48, NULL, NULL, NULL, NULL, '<p>班德尔城区服务器在四川，这个区里面的人大多也是四川人了，这个区打个排位 在铂金三以下真的是毫无游戏体验，王者来了单排都是无能为力都能给你打成瓜皮。打不过硬是刚和四川的脾气很像啊，反正就是打不过我非要打。打的没法打了 然后我挂机反正你封任你封，我有钱 三十块钱一个我买七个号，你封七天 我一天换一个号玩，说说打野吧，打野一级打完红或者蓝BUFF到2J中路也差不多快二级了 打野在刷第二到第三波野怪的时候中路对拼基本都是残血，这个反正我在四区玩单排的时候永远来的对面的打野 ，我家打野永远是被野怪的香味蒙蔽了双眼在野区刷步数，下路双人组辅助不做眼ADC是那个经打打那个坚决不打脆皮，结果吧对面辅助打的闪现走了 自己双人路送双杀，上单都是视频看多了的 结果没那个技术， 多余的就不讲了 浪费时间 想到在四川区玩的时候 真的是范高血压</p>\n', '134.195.101.21', 57535, 0, 0, '2021-08-06 15:22:46', '2021-08-06 15:22:46', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (133, 22, 48, NULL, NULL, NULL, NULL, 'LOL不就是垃圾游戏吗', '134.195.101.21', 33719, 0, 0, '2021-08-06 15:26:26', '2021-08-06 15:26:26', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (134, 22, 49, NULL, NULL, NULL, NULL, '<p>我已经准备好了，谁来分享下怎么抽黑猫套，我准备通过这次的高福利活动改命</p>\n', '134.195.101.21', 33471, 0, 0, '2021-08-06 15:26:45', '2021-08-06 15:26:45', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (135, 35, 42, NULL, NULL, NULL, NULL, '那你们自己去搬运啊，在这BB什么', '134.195.101.21', 37635, 1, 0, '2021-08-06 15:32:57', '2021-08-06 15:32:57', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (136, 8, 42, 135, 35, NULL, NULL, '你BB你妈呢', '134.195.101.21', 54969, 0, 0, '2021-08-06 15:34:18', '2021-08-06 15:34:18', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (137, 3, 50, NULL, NULL, NULL, NULL, '<p>全端前台优化与修复：</p>\n<ol>\n<li>超链接样式优化。</li>\n<li>付费内容/付费附件的价格上限调整为10W。</li>\n<li>修复红包帖评论领取红包异常报错。</li>\n<li>发帖上传GIF图报错优化。</li>\n<li>修复在私聊界面聊天，然后回到消息首页，私聊列表不重新渲染的问题。</li>\n</ol>\n<p>PC 端优化与修复：</p>\n<ol>\n<li>修复表情@ 或 话题卡片 显示时 点击设置付费 它们会存在同时出现。</li>\n<li>修复点击空白处，表情列表未隐藏@ 和 话题 也是一样不会隐藏。</li>\n<li>修复点击表情时，误点击到表情之间的空白，表情选择框会消失掉。</li>\n<li>修复Chat社区编辑帖子的时候，如果帖子内容超过一屏，动态表情图总是浮在表层。</li>\n<li>修复后台关闭查看主题列表权限后，我的收藏和我的点赞一直加载。</li>\n</ol>\n<p>小程序/H5优化与修复：</p>\n<p>首页顶栏透明显示红包贴上面的字体、点赞头像、语音的icon。</p>\n<p>修复小程序用户点赞取消，首页未刷新查看点赞列表，点赞列表塌陷。</p>\n<p>修复小程序首页长文章贴与纯长表情贴未折叠。</p>\n<p>H5发帖区附件，详情页删除键位置修复。</p>\n<p>优化H5 @ 人 的没有更多内容的底色。 </p>\n<p>修复小程序发帖上传附件，格式异常。</p>\n<p>修复小程序发帖二级分类弹框的取消按钮上面的横线过粗。</p>\n<p>修复H5屏蔽用户再关注用户，提示语错乱。</p>\n<p>修复小程序从他人主页的粉丝列表进入到其他的主页，然后返回到他人的粉丝列表，在返回他人主页顶部会闪烁，或者闪烁成匿名用户，顶部也没有显示是谁的主页，然后再展示他人主页（从关注列表返回也是会出现）。</p>\n<p>修复重新进入小程序，显示是已登录状态，进入发帖区发帖会跳转到登录页面。</p>\n<p> 管理后台优化与修复：4项更新</p>\n', '134.195.101.21', 60755, 0, 0, '2021-08-06 15:46:19', '2021-09-04 20:53:05', '2021-09-04 20:53:05', 3, 1, 0, 1);
INSERT INTO `posts` VALUES (138, 25, 50, NULL, NULL, NULL, NULL, '你tm谁阿', '134.195.101.21', 37259, 0, 0, '2021-08-06 15:48:34', '2021-08-06 15:48:34', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (139, 17, 50, NULL, NULL, NULL, NULL, '你管我？', '134.195.101.21', 38451, 0, 0, '2021-08-06 15:49:17', '2021-08-06 15:49:17', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (140, 8, 50, NULL, NULL, NULL, NULL, '你一个普通用户在BB什么', '134.195.101.21', 58329, 0, 0, '2021-08-06 15:50:22', '2021-08-06 15:50:22', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (141, 3, 51, NULL, NULL, NULL, NULL, '<p>全端前台优化与修复：</p>\n<ol>\n<li>支持VX换绑。</li>\n<li>发帖/评论时提示必须绑定手机流程优化。</li>\n<li>推荐内容规则优化。</li>\n<li>音频支持在线预览。</li>\n<li>消息中心查看他人回帖支持定位所在楼层。</li>\n<li>发帖时编辑器保存已输入内容。</li>\n<li>首页分类帖子总数优化。</li>\n<li>隐藏站点敏感信息。</li>\n<li>登录注册-昵称补充流程完善。</li>\n<li>当发帖没有任何内容的时候，不应该能保存草稿。</li>\n<li>修复详情页没有带id时，会无限刷新问题。</li>\n<li>用户名注册昵称逻辑优化。</li>\n<li>修复帖子审核通过不发送消息问题。</li>\n</ol>\n<p>PC 端优化与修复：</p>\n<ol>\n<li>编辑器支持图文混排，可拖拽或复制图片到编辑器中。</li>\n<li>发现页看帖可返回当前位置。</li>\n<li>修复进入个人中心后，头部搜索失效。</li>\n<li>修复打赏和点赞信息卡片，按钮文字靠下，未垂直居中。</li>\n<li>修复评论回复输入框显示回复某人时，帖子评论输入框也会出现回复某人。</li>\n<li>修复评论框发布时底部出现色块。</li>\n<li>修复评论区内容带上换行符后低分辨率屏幕出现字体尺寸不一致。</li>\n<li>修复悬赏发放的金额与总金额不一致。</li>\n<li>修复评论一次添加多个表情。</li>\n<li>修复未上传视频，发布时提示等待视频上传完成再发布。</li>\n<li>修复修改用户名后，没有及时更新数据，需要手动刷新才能看到修改后的用户名。</li>\n<li>修复对推荐内容进行分类筛选时不起作用。</li>\n</ol>\n<p>小程序/H5优化与修复：</p>\n<ol>\n<li>支持小程序点击链接后复制链接。</li>\n<li>支持H5分享分类，接收者打开是对应分类页面而不是首页。</li>\n<li>新增H5备案号展示。</li>\n<li>修复分类栏首次点击其中一个分类，然后进入筛选，不改内容直接点击筛选，分类会直接跳到全部版块，展示全部帖子。</li>\n<li>修复点赞人数过多时，点赞弹框列表无法加载剩余用户的点赞数据。</li>\n<li>修复小程序悬赏贴子，采纳回复后进度条显示，返回首页重新进入，进度条消失，悬赏百分比的进度条也没有变化。</li>\n<li>修复发帖区上传视频成功，输入内容后，点击视频，视频会消失。</li>\n<li>修复钱包列表展示样式有问题。</li>\n<li>修复语音贴保存草稿箱内，点击播放后会直接跳转到发帖区后点击发布，发布成功后跳转到详情页内，语音还在持续播放，未暂停，再返回到草稿箱内语音播放暂停。</li>\n</ol>\n<p>管理后台优化与修复：</p>\n<ol>\n<li>管理后台可修改用户昵称。</li>\n<li>修复回收站再次点击菜单时，文字变了。</li>\n<li>后台管理最新主题支持内容搜索。</li>\n</ol>\n', '134.195.101.21', 41663, 0, 0, '2021-08-06 22:42:57', '2021-09-04 20:53:15', '2021-09-04 20:53:15', 3, 1, 0, 1);
INSERT INTO `posts` VALUES (142, 8, 51, NULL, NULL, NULL, NULL, '一个普通用户你在装什么啊', '134.195.101.21', 52329, 0, 0, '2021-08-06 22:45:32', '2021-08-06 22:45:32', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (143, 8, 52, NULL, NULL, NULL, NULL, '<p>就发你能怎么样</p>\n', '134.195.101.21', 53403, 0, 0, '2021-08-06 22:47:19', '2021-08-07 16:23:36', '2021-08-07 16:23:36', 8, 1, 0, 1);
INSERT INTO `posts` VALUES (144, 41, 53, NULL, NULL, NULL, NULL, '<p>诺手e后有破甲，顶级理解</p>\n<p> </p>\n', '134.195.101.21', 42465, 0, 0, '2021-08-07 16:06:50', '2021-08-07 16:22:00', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (145, 42, 53, NULL, NULL, NULL, NULL, '别噶黑，是钻2理解:liuhan:', '134.195.101.21', 57019, 1, 0, '2021-08-07 16:08:49', '2021-08-07 16:08:49', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (146, 42, 16, NULL, NULL, NULL, NULL, '我也要网站源码', '134.195.101.21', 59867, 0, 0, '2021-08-07 16:09:20', '2021-08-07 16:09:20', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (147, 42, 54, NULL, NULL, NULL, NULL, '<p>猫咪这个英雄薄凉没情谊。欺软怕硬，你强的时候就跟着你混吃混喝，你弱就跟着别人跑了！头都不带回的。像极了渣女！其实我觉得一个人的性格很大程度上影响了他对游戏的理解和选择</p>\n', '134.195.101.21', 40691, 0, 0, '2021-08-07 16:09:50', '2021-08-07 16:09:50', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (148, 43, 53, 145, 42, NULL, NULL, '别噶黑，人家说的是“砖2”:qiaoda:', '134.195.101.21', 41035, 0, 0, '2021-08-07 16:11:30', '2021-08-07 16:11:30', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (149, 43, 55, NULL, NULL, NULL, NULL, '<p>5bUg1UgNUVVlcDgoMCHgL 还有没有活人缺团的</p>\n', '134.195.101.21', 47123, 0, 0, '2021-08-07 16:13:49', '2021-08-07 16:13:49', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (150, 43, 16, NULL, NULL, NULL, NULL, '源码还能给？那我也要', '134.195.101.21', 37637, 0, 0, '2021-08-07 16:14:19', '2021-08-07 16:14:19', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (151, 43, 37, NULL, NULL, NULL, NULL, '私聊了', '134.195.101.21', 51117, 0, 0, '2021-08-07 16:14:48', '2021-08-07 16:14:48', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (152, 43, 10, NULL, NULL, NULL, NULL, '私聊', '134.195.101.21', 42915, 0, 0, '2021-08-07 16:15:26', '2021-08-07 16:15:26', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (153, 44, 55, NULL, NULL, NULL, NULL, '小团体稳定在线4=6', '134.195.101.21', 50187, 0, 0, '2021-08-07 16:16:41', '2021-08-07 16:16:41', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (154, 44, 55, NULL, NULL, NULL, NULL, '<p>5bUg1VwNTUlFRBAMDcAE99</p>', '134.195.101.21', 38265, 0, 0, '2021-08-07 16:16:49', '2021-08-07 16:16:49', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (155, 44, 56, NULL, NULL, NULL, NULL, '<p>他打字也不利索 憋半天憋出这么一句话:cahan:</p>\n', '134.195.101.21', 46945, 0, 0, '2021-08-07 16:19:25', '2021-08-07 16:19:25', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (156, 45, 57, NULL, NULL, NULL, NULL, '<p>看了隔壁一拳超人重置一话明白了<a href=\"\">海贼王</a>战斗体系崩的部分原因，琦玉强，肉体也让人难以破防，这点龙珠也是，能打碎山体的一拳打在身上没啥效果足见肉体强悍。反观<a href=\"\">海贼王</a>里除了凯多和大妈刀枪不入，谁挨一枪都会死，子弹威力这么大的前提下拳头带来的伤害就显得小，但拳头又能裂岛，这就前后发生矛盾。再来就是凯多的言论，说御田下油锅的事，泡澡一个小时都会晕，世界最强生物就这。隔壁一拳超人不被破防没受过伤，人家肉体下岩浆就是泡澡，反观真的在温泉泡澡一小时会晕的，下了油锅会不如御田的凯多，被九侠砍成那样凭什么没事？强悍就应该一直强悍，大妈打1天1夜能抗住，泡个澡都扛不住，大妈的伤害还不如个油锅:xieyanxiao:</p>\n<p> </p>\n', '134.195.101.21', 41009, 0, 0, '2021-08-07 16:31:27', '2021-08-07 16:31:27', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (157, 45, 16, NULL, NULL, NULL, NULL, '帖子类型选择做一个多选模式，不然发的帖子包含两个游戏怎么办', '134.195.101.21', 51095, 0, 0, '2021-08-07 16:33:28', '2021-08-07 16:33:28', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (158, 4, 58, NULL, NULL, NULL, NULL, '<p>@RunWith(SpringRunner.class)<br />\n@SpringBootTest </p>\n<pre><code>public class HelloWorldControlerTests {\n    private MockMvc mvc;\n    @Before\n    public void setUp() throws Exception {\n        mvc = MockMvcBuilders.standaloneSetup(new HelloWorldController()).build();\n    }\n    @Test\n    public void getHello() throws Exception {\n    mvc.perform(MockMvcRequestBuilders.get(&quot;/hello&quot;).accept(MediaType.APPLICATION_JSON))\n                .andExpect(MockMvcResultMatchers.status().isOk())\n                .andDo(MockMvcResultHandlers.print())\n                .andReturn();\n    }\n}\n</code></pre>\n', '134.195.101.21', 36921, 0, 0, '2021-08-07 16:37:29', '2021-08-07 16:37:29', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (159, 4, 59, NULL, NULL, NULL, NULL, '<pre><code>public ConfigurableApplicationContext run(String... args) {\n        StopWatch stopWatch = new StopWatch();\n       //启动一个停止监视器\n        stopWatch.start();\n        ConfigurableApplicationContext context = null;\n        FailureAnalyzers analyzers = null;\n        configureHeadlessProperty();\n        SpringApplicationRunListeners listeners = getRunListeners(args);\n        //启动Listener\n        listeners.starting();\n        try {\n            ApplicationArguments applicationArguments = new DefaultApplicationArguments(\n                    args);\n            ConfigurableEnvironment environment = prepareEnvironment(listeners,\n                    applicationArguments);\n            Banner printedBanner = printBanner(environment);\n            //这个是核心，创建Srping的beanFactory容器\n            context = createApplicationContext();\n            analyzers = new FailureAnalyzers(context);\n          // 这里springBoot会把run的参数所在的类，load进入beanDefinition\n            prepareContext(context, environment, listeners, applicationArguments,\n                    printedBanner);\n            refreshContext(context);\n            afterRefresh(context, applicationArguments);\n            listeners.finished(context, null);\n            stopWatch.stop();\n            if (this.logStartupInfo) {\n                new StartupInfoLogger(this.mainApplicationClass)\n                        .logStarted(getApplicationLog(), stopWatch);\n            }\n            return context;\n        }\n        catch (Throwable ex) {\n            handleRunFailure(context, listeners, analyzers, ex);\n            throw new IllegalStateException(ex);\n        }\n    }\n</code></pre>\n', '134.195.101.21', 48867, 0, 0, '2021-08-07 16:39:12', '2021-08-07 16:40:43', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (160, 5, 60, NULL, NULL, NULL, NULL, '<pre><code>protected final SourceClass doProcessConfigurationClass(ConfigurationClass configClass, SourceClass sourceClass)\n            throws IOException {\n\n        // Recursively process any member (nested) classes first\n        processMemberClasses(configClass, sourceClass);\n\n        // Process any @PropertySource annotations\n        for (AnnotationAttributes propertySource : AnnotationConfigUtils.attributesForRepeatable(\n                sourceClass.getMetadata(), PropertySources.class,\n                org.springframework.context.annotation.PropertySource.class)) {\n            if (this.environment instanceof ConfigurableEnvironment) {\n                processPropertySource(propertySource);\n            }\n            else {\n                logger.warn(&quot;Ignoring @PropertySource annotation on [&quot; + sourceClass.getMetadata().getClassName() +\n                        &quot;]. Reason: Environment must implement ConfigurableEnvironment&quot;);\n            }\n        }\n\n        // Process any @ComponentScan annotations\n        Set&lt;AnnotationAttributes&gt; componentScans = AnnotationConfigUtils.attributesForRepeatable(\n                sourceClass.getMetadata(), ComponentScans.class, ComponentScan.class);\n        if (!componentScans.isEmpty() &amp;&amp;\n                !this.conditionEvaluator.shouldSkip(sourceClass.getMetadata(), ConfigurationPhase.REGISTER_BEAN)) {\n            for (AnnotationAttributes componentScan : componentScans) {\n                // The config class is annotated with @ComponentScan -&gt; perform the scan immediately\n                Set&lt;BeanDefinitionHolder&gt; scannedBeanDefinitions =\n                        this.componentScanParser.parse(componentScan, sourceClass.getMetadata().getClassName());\n                // Check the set of scanned definitions for any further config classes and parse recursively if needed\n                for (BeanDefinitionHolder holder : scannedBeanDefinitions) {\n                    if (ConfigurationClassUtils.checkConfigurationClassCandidate(\n                            holder.getBeanDefinition(), this.metadataReaderFactory)) {\n                        parse(holder.getBeanDefinition().getBeanClassName(), holder.getBeanName());\n                    }\n                }\n            }\n        }\n\n        // Process any @Import annotations\n        processImports(configClass, sourceClass, getImports(sourceClass), true);\n\n        // Process any @ImportResource annotations\n        if (sourceClass.getMetadata().isAnnotated(ImportResource.class.getName())) {\n            AnnotationAttributes importResource =\n                    AnnotationConfigUtils.attributesFor(sourceClass.getMetadata(), ImportResource.class);\n            String[] resources = importResource.getStringArray(&quot;locations&quot;);\n            Class&lt;? extends BeanDefinitionReader&gt; readerClass = importResource.getClass(&quot;reader&quot;);\n            for (String resource : resources) {\n                String resolvedResource = this.environment.resolveRequiredPlaceholders(resource);\n                configClass.addImportedResource(resolvedResource, readerClass);\n            }\n        }\n\n        // Process individual @Bean methods\n        Set&lt;MethodMetadata&gt; beanMethods = retrieveBeanMethodMetadata(sourceClass);\n        for (MethodMetadata methodMetadata : beanMethods) {\n            configClass.addBeanMethod(new BeanMethod(methodMetadata, configClass));\n        }\n\n        // Process default methods on interfaces\n        processInterfaces(configClass, sourceClass);\n\n        // Process superclass, if any\n        if (sourceClass.getMetadata().hasSuperClass()) {\n            String superclass = sourceClass.getMetadata().getSuperClassName();\n            if (!superclass.startsWith(&quot;java&quot;) &amp;&amp; !this.knownSuperclasses.containsKey(superclass)) {\n                this.knownSuperclasses.put(superclass, configClass);\n                // Superclass found, return its annotation metadata and recurse\n                return sourceClass.getSuperClass();\n            }\n        }\n\n        // No superclass -&gt; processing is complete\n        return null;\n    }\n</code></pre>\n', '134.195.101.21', 55657, 0, 0, '2021-08-07 16:43:32', '2021-08-07 16:46:23', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (161, 5, 61, NULL, NULL, NULL, NULL, '<pre><code>/**\n     * Configure the factory\'s standard context characteristics,\n     * such as the context\'s ClassLoader and post-processors.\n     * @param beanFactory the BeanFactory to configure\n     */\n    protected void prepareBeanFactory(ConfigurableListableBeanFactory beanFactory) {\n        // Tell the internal bean factory to use the context\'s class loader etc.\n        beanFactory.setBeanClassLoader(getClassLoader());\n        beanFactory.setBeanExpressionResolver(new StandardBeanExpressionResolver(beanFactory.getBeanClassLoader()));\n        beanFactory.addPropertyEditorRegistrar(new ResourceEditorRegistrar(this, getEnvironment()));\n\n        // Configure the bean factory with context callbacks.\n        beanFactory.addBeanPostProcessor(new ApplicationContextAwareProcessor(this));\n        beanFactory.ignoreDependencyInterface(EnvironmentAware.class);\n        beanFactory.ignoreDependencyInterface(EmbeddedValueResolverAware.class);\n        beanFactory.ignoreDependencyInterface(ResourceLoaderAware.class);\n        beanFactory.ignoreDependencyInterface(ApplicationEventPublisherAware.class);\n        beanFactory.ignoreDependencyInterface(MessageSourceAware.class);\n        beanFactory.ignoreDependencyInterface(ApplicationContextAware.class);\n\n        // BeanFactory interface not registered as resolvable type in a plain factory.\n        // MessageSource registered (and found for autowiring) as a bean.\n        beanFactory.registerResolvableDependency(BeanFactory.class, beanFactory);\n        beanFactory.registerResolvableDependency(ResourceLoader.class, this);\n        beanFactory.registerResolvableDependency(ApplicationEventPublisher.class, this);\n        beanFactory.registerResolvableDependency(ApplicationContext.class, this);\n\n        // Register early post-processor for detecting inner beans as ApplicationListeners.\n        beanFactory.addBeanPostProcessor(new ApplicationListenerDetector(this));\n\n        // Detect a LoadTimeWeaver and prepare for weaving, if found.\n        if (beanFactory.containsBean(LOAD_TIME_WEAVER_BEAN_NAME)) {\n            beanFactory.addBeanPostProcessor(new LoadTimeWeaverAwareProcessor(beanFactory));\n            // Set a temporary ClassLoader for type matching.\n            beanFactory.setTempClassLoader(new ContextTypeMatchClassLoader(beanFactory.getBeanClassLoader()));\n        }\n\n        // Register default environment beans.\n        if (!beanFactory.containsLocalBean(ENVIRONMENT_BEAN_NAME)) {\n            beanFactory.registerSingleton(ENVIRONMENT_BEAN_NAME, getEnvironment());\n        }\n        if (!beanFactory.containsLocalBean(SYSTEM_PROPERTIES_BEAN_NAME)) {\n            beanFactory.registerSingleton(SYSTEM_PROPERTIES_BEAN_NAME, getEnvironment().getSystemProperties());\n        }\n        if (!beanFactory.containsLocalBean(SYSTEM_ENVIRONMENT_BEAN_NAME)) {\n            beanFactory.registerSingleton(SYSTEM_ENVIRONMENT_BEAN_NAME, getEnvironment().getSystemEnvironment());\n        }\n    }\n</code></pre>\n', '134.195.101.21', 45803, 0, 0, '2021-08-07 16:44:05', '2021-08-07 16:45:26', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (162, 5, 62, NULL, NULL, NULL, NULL, '<pre><code>public static void invokeBeanFactoryPostProcessors(\n            ConfigurableListableBeanFactory beanFactory, List&lt;BeanFactoryPostProcessor&gt; beanFactoryPostProcessors) {\n\n        // Invoke BeanDefinitionRegistryPostProcessors first, if any.\n        Set&lt;String&gt; processedBeans = new HashSet&lt;String&gt;();\n\n        if (beanFactory instanceof BeanDefinitionRegistry) {\n            BeanDefinitionRegistry registry = (BeanDefinitionRegistry) beanFactory;\n            List&lt;BeanFactoryPostProcessor&gt; regularPostProcessors = new LinkedList&lt;BeanFactoryPostProcessor&gt;();\n            List&lt;BeanDefinitionRegistryPostProcessor&gt; registryPostProcessors =\n                    new LinkedList&lt;BeanDefinitionRegistryPostProcessor&gt;();\n\n            for (BeanFactoryPostProcessor postProcessor : beanFactoryPostProcessors) {\n                if (postProcessor instanceof BeanDefinitionRegistryPostProcessor) {\n                    BeanDefinitionRegistryPostProcessor registryPostProcessor =\n                            (BeanDefinitionRegistryPostProcessor) postProcessor;\n                    registryPostProcessor.postProcessBeanDefinitionRegistry(registry);\n                    registryPostProcessors.add(registryPostProcessor);\n                }\n                else {\n                    regularPostProcessors.add(postProcessor);\n                }\n            }\n\n            // Do not initialize FactoryBeans here: We need to leave all regular beans\n            // uninitialized to let the bean factory post-processors apply to them!\n            // Separate between BeanDefinitionRegistryPostProcessors that implement\n            // PriorityOrdered, Ordered, and the rest.\n            String[] postProcessorNames =\n                    beanFactory.getBeanNamesForType(BeanDefinitionRegistryPostProcessor.class, true, false);\n\n            // First, invoke the BeanDefinitionRegistryPostProcessors that implement PriorityOrdered.\n            List&lt;BeanDefinitionRegistryPostProcessor&gt; priorityOrderedPostProcessors = new ArrayList&lt;BeanDefinitionRegistryPostProcessor&gt;();\n            for (String ppName : postProcessorNames) {\n                if (beanFactory.isTypeMatch(ppName, PriorityOrdered.class)) {\n                    priorityOrderedPostProcessors.add(beanFactory.getBean(ppName, BeanDefinitionRegistryPostProcessor.class));\n                    processedBeans.add(ppName);\n                }\n            }\n            sortPostProcessors(beanFactory, priorityOrderedPostProcessors);\n            registryPostProcessors.addAll(priorityOrderedPostProcessors);\n            invokeBeanDefinitionRegistryPostProcessors(priorityOrderedPostProcessors, registry);\n\n            // Next, invoke the BeanDefinitionRegistryPostProcessors that implement Ordered.\n            postProcessorNames = beanFactory.getBeanNamesForType(BeanDefinitionRegistryPostProcessor.class, true, false);\n            List&lt;BeanDefinitionRegistryPostProcessor&gt; orderedPostProcessors = new ArrayList&lt;BeanDefinitionRegistryPostProcessor&gt;();\n            for (String ppName : postProcessorNames) {\n                if (!processedBeans.contains(ppName) &amp;&amp; beanFactory.isTypeMatch(ppName, Ordered.class)) {\n                    orderedPostProcessors.add(beanFactory.getBean(ppName, BeanDefinitionRegistryPostProcessor.class));\n                    processedBeans.add(ppName);\n                }\n            }\n            sortPostProcessors(beanFactory, orderedPostProcessors);\n            registryPostProcessors.addAll(orderedPostProcessors);\n            invokeBeanDefinitionRegistryPostProcessors(orderedPostProcessors, registry);\n\n            // Finally, invoke all other BeanDefinitionRegistryPostProcessors until no further ones appear.\n            boolean reiterate = true;\n            while (reiterate) {\n                reiterate = false;\n                postProcessorNames = beanFactory.getBeanNamesForType(BeanDefinitionRegistryPostProcessor.class, true, false);\n                for (String ppName : postProcessorNames) {\n                    if (!processedBeans.contains(ppName)) {\n                        BeanDefinitionRegistryPostProcessor pp = beanFactory.getBean(ppName, BeanDefinitionRegistryPostProcessor.class);\n                        registryPostProcessors.add(pp);\n                        processedBeans.add(ppName);\n                        pp.postProcessBeanDefinitionRegistry(registry);\n                        reiterate = true;\n                    }\n                }\n            }\n\n            // Now, invoke the postProcessBeanFactory callback of all processors handled so far.\n            invokeBeanFactoryPostProcessors(registryPostProcessors, beanFactory);\n            invokeBeanFactoryPostProcessors(regularPostProcessors, beanFactory);\n        }\n\n        else {\n            // Invoke factory processors registered with the context instance.\n            invokeBeanFactoryPostProcessors(beanFactoryPostProcessors, beanFactory);\n        }\n\n        // Do not initialize FactoryBeans here: We need to leave all regular beans\n        // uninitialized to let the bean factory post-processors apply to them!\n        String[] postProcessorNames =\n                beanFactory.getBeanNamesForType(BeanFactoryPostProcessor.class, true, false);\n\n        // Separate between BeanFactoryPostProcessors that implement PriorityOrdered,\n        // Ordered, and the rest.\n        List&lt;BeanFactoryPostProcessor&gt; priorityOrderedPostProcessors = new ArrayList&lt;BeanFactoryPostProcessor&gt;();\n        List&lt;String&gt; orderedPostProcessorNames = new ArrayList&lt;String&gt;();\n        List&lt;String&gt; nonOrderedPostProcessorNames = new ArrayList&lt;String&gt;();\n        for (String ppName : postProcessorNames) {\n            if (processedBeans.contains(ppName)) {\n                // skip - already processed in first phase above\n            }\n            else if (beanFactory.isTypeMatch(ppName, PriorityOrdered.class)) {\n                priorityOrderedPostProcessors.add(beanFactory.getBean(ppName, BeanFactoryPostProcessor.class));\n            }\n            else if (beanFactory.isTypeMatch(ppName, Ordered.class)) {\n                orderedPostProcessorNames.add(ppName);\n            }\n            else {\n                nonOrderedPostProcessorNames.add(ppName);\n            }\n        }\n\n        // First, invoke the BeanFactoryPostProcessors that implement PriorityOrdered.\n        sortPostProcessors(beanFactory, priorityOrderedPostProcessors);\n        invokeBeanFactoryPostProcessors(priorityOrderedPostProcessors, beanFactory);\n\n        // Next, invoke the BeanFactoryPostProcessors that implement Ordered.\n        List&lt;BeanFactoryPostProcessor&gt; orderedPostProcessors = new ArrayList&lt;BeanFactoryPostProcessor&gt;();\n        for (String postProcessorName : orderedPostProcessorNames) {\n            orderedPostProcessors.add(beanFactory.getBean(postProcessorName, BeanFactoryPostProcessor.class));\n        }\n        sortPostProcessors(beanFactory, orderedPostProcessors);\n        invokeBeanFactoryPostProcessors(orderedPostProcessors, beanFactory);\n\n        // Finally, invoke all other BeanFactoryPostProcessors.\n        List&lt;BeanFactoryPostProcessor&gt; nonOrderedPostProcessors = new ArrayList&lt;BeanFactoryPostProcessor&gt;();\n        for (String postProcessorName : nonOrderedPostProcessorNames) {\n            nonOrderedPostProcessors.add(beanFactory.getBean(postProcessorName, BeanFactoryPostProcessor.class));\n        }\n        invokeBeanFactoryPostProcessors(nonOrderedPostProcessors, beanFactory);\n\n        // Clear cached merged bean definitions since the post-processors might have\n        // modified the original metadata, e.g. replacing placeholders in values...\n        beanFactory.clearMetadataCache();\n    }\n</code></pre>\n', '134.195.101.21', 54335, 0, 0, '2021-08-07 16:44:39', '2021-08-07 16:44:39', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (163, 4, 62, NULL, NULL, NULL, NULL, 'NB', '134.195.101.21', 42241, 0, 0, '2021-08-07 16:47:44', '2021-08-07 16:47:44', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (164, 34, 62, NULL, NULL, NULL, NULL, '什么鬼', '134.195.101.21', 56617, 0, 0, '2021-08-07 16:49:03', '2021-08-07 16:49:03', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (165, 34, 16, NULL, NULL, NULL, NULL, '源码也私发给我一份吧', '134.195.101.21', 38049, 0, 0, '2021-08-07 22:29:39', '2021-08-07 22:29:39', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (166, 3, 63, NULL, NULL, NULL, NULL, '<h2>第一，Javase内容：</h2>\n<p>1，<strong>环境搭建：</strong> JDK下载安装，配置环境变量。</p>\n<p>2，<strong>基础语法</strong> ：关键字讲解，变量/常量讲解，注释。</p>\n<p>3，<strong>面向对象</strong> ：什么是面向对象，对象与类的区别，类的构造方法，类的实例方法，如何封装类，如何继承类，多态是什么，抽象类讲解，接口。</p>\n<p>4，<strong>数组</strong> ：一维数组，二维数组，多维数组。</p>\n<p>5，<strong>集合</strong> ：迭代器/Iterator，Map，Collection。</p>\n<p>6，<strong>常用API</strong> ：Object，Stirng，StirngBuilder，Math，Date，SimpleDateFormat。</p>\n<p>7，<strong>IO流</strong> ：字符流，字节流。</p>\n<p>8，<strong>反射机制</strong> ：什么是反射机制，关于Class，反射类获取对象方式，ClassLoader类的加载器讲解，反射常用类。</p>\n<p>9，<strong>多线程</strong> ：Thread/Runnable，线程状态讲解，线程常用API使用，线程池讲解，线程调度，并发和并行的区别，同步和异步讲解。</p>\n<p>10, <strong>网络编程</strong> ：网络通讯协议，TCP/IP/UDP协议，OSI/TCP IP参考，Socket编程。</p>\n<p>11，<strong>Junit</strong> ：认识Junit，Junit环境配置，测试框架，基本用法，常用API。</p>\n<p>学习要求：学完这些，至少要用这些只是写出一个soket聊天室和打字游戏出来。</p>\n<p>不做这些小项目练习的话，一句话：基础不牢，地动山摇 ！</p>\n<p>基础学习推荐书籍配合学习：</p>\n<p>1，《<strong>Thinking in java》</strong></p>\n<p>2，《Head First Java》</p>\n<h2>第二，数据库：</h2>\n<p>数据库是开发程序中必不可少的一个部分，数据库主要是用来保存数据的，让数据不错乱，不随意改动，不让数据丢失，保证数据完整。</p>\n<p>数据库搞定MySQL就可以了，因为现在很多互联网公司多数都是用这个数据库，</p>\n<p>学完MySQL一定要多去练习SQL，特别是select，现在不练的话，后面就废了。</p>\n<h2>第三，JDBC：</h2>\n<p>1，jdbc基础：JDBC Connection，CallableStatement，Statement，PreparedStatement，ResultSet，等等不同类的使用</p>\n<p>2，连接池技术：学习连接池概念，掌握连接池的配置，建立，治理和关闭。</p>\n<h2>第四，前端：</h2>\n<p>前端的三大核心技术HTML , CSS , JavaScript这些事必须要学的，这就是所谓的前端三剑客。</p>\n<p>学习要求：学完这些要能够手写出一个静态业面，这是必须要练习的。不练习的话，到后面很容易忘记代码。</p>\n<p>外带学习两个框架（JQuery和Bootstrap）</p>\n<h2>第五，web：</h2>\n<p>1，XML</p>\n<p>2，MVC架构模式</p>\n<p>3，Servlet</p>\n<p>4，Filter</p>\n<p>5，JSP</p>\n<p>6，EL</p>\n<p>7，JSTL</p>\n<p>8，AJAX</p>\n<p>9，代理模式</p>\n<p>10，工厂模式</p>\n<p>11，数据库链接池</p>\n<p>学习要求：学完这些一定要深刻理解MVC架构模式</p>\n<p>然后练习一个MVC模式的项目，用servlet+Ajax+MySQL+jQuery+JDBC+JSP等等你之前学过的技术写出OA管理系统，超市订单管理系统，采购订单管理系统等等项目的练习。这些项目事必须练习的，转变你的mvc思想，练得越多，后面学习框架就越轻松，不练的话后面学习就会很吃力。</p>\n<h2>第六，项目管理：Maven和Git</h2>\n<p>这两个技术没有什么特别的要求，能够熟练操作就行了。</p>\n<h2>第七，框架：</h2>\n<p>1，Spring</p>\n<p>2，SpringMVC</p>\n<p>3，MyBatis</p>\n<p>这些框架事必须要学习掌握的，别看就这几个框架，我估计没有学过的新手，没有老师带的话一个月肯定吃不消。</p>\n<p>如果之前的MVC架构模式项目没有练习过，还没有搞明白的话，很多人在学习框架这里就已经想放弃了。</p>\n<p>学完这三个框架，然后再去过一遍这两个框架Struts2和Hibernate，这两个框架过一遍就可以了。</p>\n<p>学习要求：学完者5个框架就可以开始搭建一个框架环境，升级一下之前自己练习的MVC架构模式的项目。</p>\n<p>比如把Servlet换成springMVC，把JDBC换成MyBatis，把spring放上去解耦MVC。</p>\n<p>换完能够跑起来之后再练习两个项目：</p>\n<p>什么ssm客户关系管理系统之类的项目，只要是有关ssm的项目就可以练习一下。</p>\n<h2>第八，迎合市场需求：</h2>\n<p>学习Springboot，并用Springboot练习两个项目以上，如果学习Springboot很吃力的话，再回去学一遍spring。</p>\n<p>学到这一步就可以面试了。</p>\n<h2>第九，加餐：</h2>\n<p>如果觉得自己技术学习还不够的话，可以给自己加点餐。</p>\n<p>学习一下Dubbo，ZooKeeper，SpringCloud，MQ,Nginx，Redis，Liunx，vue，多线程，设计模式，JVM调优，算法。</p>\n<p>把上面这些技术搞定了，就可以达到找工作的水平了。</p>\n<p>这是一套完整的标准学习水平</p>\n', '134.195.101.21', 57803, 0, 2, '2021-08-08 01:09:29', '2021-08-08 01:14:24', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (167, 37, 16, NULL, NULL, NULL, NULL, '源码私聊发给我就行', '61.158.147.206', 44785, 0, 0, '2021-08-08 12:40:06', '2021-08-08 12:40:06', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (168, 46, 64, NULL, NULL, NULL, NULL, '<p>游戏对局中难免碰到nt队友 气不过确实口嗨两句，当然口嗨是自己问题没错但结束发现聊天限制十把就算了 荣誉还被封了，打了俩周多了现在才解锁0级，就这么正常对局需要大改多少吧回2级呀，有大佬知道嘛？</p>\n', '134.195.101.21', 48697, 0, 0, '2021-08-09 13:48:47', '2021-08-09 13:48:47', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (169, 46, 64, NULL, NULL, NULL, NULL, '哎，弄的现在被坑也不敢骂 顶多点一点他 ，自己要坑了更不敢说话 但有些人上线送上线送十分钟0-8确实离谱啊 你真的忍不住', '134.195.101.21', 45661, 0, 0, '2021-08-09 13:49:05', '2021-08-09 13:49:05', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (170, 46, 64, NULL, NULL, NULL, NULL, '有没明白哥说说，0到2大改多少吧 天天玩一俩个月？ 主要没那功夫和时间呀', '134.195.101.21', 50943, 0, 0, '2021-08-09 13:49:11', '2021-08-09 13:49:11', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (171, 47, 65, NULL, NULL, NULL, NULL, '<p>终极魔典模式选了把剑姬下路，猫给我辅助，对面泽拉斯选的蚂蚱大招，亚索选的石头大。那天运气过于逆天，我w连续几次挡住蚂蚱大和亚索吹风，上单腕豪下来抓我又被挡了e，他们直接公屏说我是脚本剑姬。我真服了，我比较习惯q上去a几刀开w,每次我开着w的时候他们拼命往我身上砸控制技能，这被挡不是很正常我，打完了我战绩也就15/3，我家打野直接没死过。但他们全队人说我是脚本，运气好也叫脚本么?明明他们自己碰瓷我w的，完了还举报我，我呵呵一笑，我赢得光明正大当时我就回了一句:打不过就是挂?你去举报啊。万万没想到的是，我号开第二把的时候，真的被封了一天，写着游戏内违规！我连人都没骂，更别说开脚本了，系统是凭什么封我号，真的离谱，他这个检测，到底测的是什么玩意？<br />\n本人在次申明，我绝对没有开挂，没有开脚本，连挡蚂蚱两次大招纯属运气好，我真的无话可说了，原来这游戏，打不过就举报，居然真的有用:weixiao:</p>\n', '134.195.101.21', 45701, 0, 0, '2021-08-09 13:50:26', '2021-08-09 13:50:26', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (172, 47, 64, NULL, NULL, NULL, NULL, '回不来', '134.195.101.21', 41965, 0, 0, '2021-08-09 13:50:53', '2021-08-09 13:50:53', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (173, 48, 66, NULL, NULL, NULL, NULL, '<p>这阵容大后期是不是无敌的节奏？</p>\n', '134.195.101.21', 53195, 0, 0, '2021-08-09 13:52:21', '2021-08-09 13:52:21', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (174, 48, 65, NULL, NULL, NULL, NULL, '没有视频，不好判断', '134.195.101.21', 42005, 1, 0, '2021-08-09 13:52:48', '2021-08-09 13:52:48', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (175, 49, 65, 174, 48, NULL, NULL, '正常对局谁会去录视频啊', '134.195.101.21', 45889, 0, 0, '2021-08-09 13:53:55', '2021-08-09 13:53:55', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (176, 49, 65, NULL, NULL, NULL, NULL, '说白了腾讯就是没有检测的能力 有人举报就等于你有问题 相当于（你没问题别人举报你干嘛）', '134.195.101.21', 60029, 0, 0, '2021-08-09 13:54:15', '2021-08-09 13:54:15', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (177, 49, 66, NULL, NULL, NULL, NULL, '我想不出来怎么拖到大后期', '134.195.101.21', 40225, 0, 0, '2021-08-09 13:54:39', '2021-08-09 13:54:39', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (178, 49, 67, NULL, NULL, NULL, NULL, '<p>戒指的击中敌人给提示的属性和感知有威胁的敌人这俩属性没了，有没有大佬解释一下？？穿箱子准星不亮红，结果还会有助攻，就很烦，不知道自己究竟有没有打中敌人。</p>\n', '134.195.101.21', 42823, 0, 0, '2021-08-09 13:55:15', '2021-08-09 13:55:15', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (179, 8, 66, NULL, NULL, NULL, NULL, '被人当狗杀的阵容', '134.195.101.21', 60015, 0, 0, '2021-08-09 13:55:59', '2021-08-09 13:55:59', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (180, 8, 66, NULL, NULL, NULL, NULL, '哪来的大后期？', '134.195.101.21', 39091, 0, 0, '2021-08-09 13:56:05', '2021-08-09 13:56:05', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (181, 8, 66, NULL, NULL, NULL, NULL, '除了脑子不正常的，这四路不是都被爆杀', '134.195.101.21', 49487, 0, 0, '2021-08-09 13:56:09', '2021-08-09 13:56:09', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (182, 16, 66, NULL, NULL, NULL, NULL, '这，对面大后期，你还在前期:xieyanxiao:', '134.195.101.21', 44967, 0, 0, '2021-08-09 13:57:27', '2021-08-09 13:57:27', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (183, 17, 66, NULL, NULL, NULL, NULL, '你拿小法我要笑出声。打野不来你没有单杀我的可能。你的w几乎没有任何用处。反而我杀你简简单单。', '134.195.101.21', 44811, 0, 0, '2021-08-09 13:58:14', '2021-08-09 13:58:14', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (184, 17, 66, NULL, NULL, NULL, NULL, '撑过15不投降就算成功', '134.195.101.21', 43905, 0, 0, '2021-08-09 13:58:41', '2021-08-09 13:58:41', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (185, 17, 66, NULL, NULL, NULL, NULL, 'S6还有可能，因为那时候节奏慢。现在不得屎都打出来？', '134.195.101.21', 37265, 0, 0, '2021-08-09 13:59:00', '2021-08-09 13:59:00', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (186, 22, 16, NULL, NULL, NULL, NULL, '举报都不受理的吗？', '134.195.101.21', 52641, 0, 0, '2021-08-09 14:01:31', '2021-08-09 14:01:31', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (187, 22, 16, NULL, NULL, NULL, NULL, '骂人都不能举报成功啊', '134.195.101.21', 52829, 0, 0, '2021-08-09 14:01:48', '2021-08-09 14:01:48', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (188, 50, 68, NULL, NULL, NULL, NULL, '<p>感觉这游戏挺令我失望的，没有多少期待的中高平台的立体设计，感觉更多都是和现代一样，事情都在地面，有事上个电梯去顶楼。我渴望的那种是能正常生活的都在中层平台，地面完全成了垃圾场臭水沟，楼和楼基本相连在一起，飞行器为主要工具，比如机械迷城，就有点符合我的描述。是不是机械朋克才符合这样的场景，赛博朋克就是和现代类似的？我想要的只是科技看起来比较先进酷炫一点的机械朋克？</p>\n', '134.195.101.21', 53709, 0, 0, '2021-08-09 17:26:59', '2021-08-09 17:26:59', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (189, 50, 67, NULL, NULL, NULL, NULL, '没设置', '134.195.101.21', 44319, 0, 0, '2021-08-09 17:47:08', '2021-08-09 17:47:08', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (190, 51, 68, NULL, NULL, NULL, NULL, '不同的赛博朋克设定不一样，现在的夜之城还是在原版设定推迟了几十年才有这么多高楼，不然基本和现代没区别，你要的那种可以看美剧副本，游戏没有', '134.195.101.21', 59933, 0, 0, '2021-08-09 17:49:04', '2021-08-09 17:49:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (191, 51, 69, NULL, NULL, NULL, NULL, '<p>1：海岛花里胡哨，纯净的海岛已经成为历史<br />\n2：出新时装太快且太多，同时十多套衣服一起卖<br />\n3：外挂泛滥，特别是团竞和单排，比的就是谁的挂更厉害<br />\n4：资源少，一再的阉割，现在落地想捡把枪都是很奢侈的事<br />\n5：追猎，特种作战，极速对决等纯粹是娱乐模式类型的玩法也计入排位分<br />\n6：穿模一直不修复<br />\n7：游戏垃圾</p>\n', '134.195.101.21', 40073, 0, 0, '2021-08-09 17:50:07', '2021-08-09 17:50:07', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (192, 52, 69, NULL, NULL, NULL, NULL, '这游戏本来就垃圾', '134.195.101.21', 44399, 0, 0, '2021-08-09 17:51:10', '2021-08-09 17:51:10', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (193, 52, 70, NULL, NULL, NULL, NULL, '<p>大厅展示枪械拿心之恋语有排面还是梦幻火箭scar有排面？</p>\n<p> </p>\n', '134.195.101.21', 34073, 0, 0, '2021-08-09 17:51:37', '2021-08-09 17:51:37', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (194, 53, 71, NULL, NULL, NULL, NULL, '<p>再找俩人开荒呀，目前两个人，不要喜欢指挥的</p>\n', '134.195.101.21', 34245, 0, 0, '2021-08-09 17:53:10', '2021-08-09 17:53:10', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (195, 54, 71, NULL, NULL, NULL, NULL, '那个服务器', '134.195.101.21', 47549, 0, 0, '2021-08-09 17:54:09', '2021-08-09 17:54:09', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (196, 54, 72, NULL, NULL, NULL, NULL, '<p>不限玩了多久。<br />\n萌新、大佬都可以。只需要你有全dlc就行，没有的话也不强求🌝。有意者可以dd我。长期招人！</p>\n', '134.195.101.21', 52613, 0, 0, '2021-08-09 17:54:20', '2021-08-09 17:54:20', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (197, 55, 73, NULL, NULL, NULL, NULL, '<p>虽说这是个推塔游戏，不战而屈人之兵，依靠拉扯就能无伤破塔，并最终获得胜利，当然是上策，但更多时候，团战也一样是无法避免的。</p>\n<p>但不论路人局，还是组排，很多玩家对什么时候可以开团这件事，并不理解，或者说不敏感，抓不住机会，该上的时候磨磨唧唧，不该上的时候又葫芦娃救爷爷。<br />\n那么，什么时候适合开团呢？团战开启时，有哪些需要注意的呢？<br />\n话说，我怎么觉得我的语气有点像那些公众号里的小编...<br />\n闲言少叙，我将内容分为两部分来讲，一是开团基础，二是开团信号。</p>\n<p> </p>\n<p>首先，开团基础！<br />\n我们假设，两队十个人，摆开阵势，3、2、1开始打，这种情况，双方是均势，也就是五五开的一个状态，那么，我下面提到的这些有利项，就是所谓的开团基础！</p>\n<p>1、经济优势</p>\n<p>不过，这里虽然说是经济优势，但其实只是为了便于大家分辨，其本质其实是装备优势。<br />\n前期，也就是四分钟以前，哪怕只高1000经济，也算有经济优势，但中期，也就是4-10分钟的时候，经济不差个3、4K，不会拉开本质差距，而后期10-20分钟，少说8K才算有经济优势，至于20分钟以后，大后期经济饱和之后，经济差的优势就愈发不那么重要了，钱多的一方顶多也就是能多换两次装而已，我不是说能多换装备不算优势，但这和中前期的优势比起来，确实算不上那么大的差距。<br />\n所以这里只是为了便于理解和观察，简单做个比喻，还希望大家能理解背后本质，自己灵活掌控。</p>\n<p>2、人数优势</p>\n<p>这个没啥好解释的，兄弟多就是有优势。不然你以为为啥会有41分带？为啥大乔和孙膑作为辅助却可以当核？集合优势兵力，进攻敌人弱势点，是兵法中的基础。</p>\n<p>3、视野优势</p>\n<p>哪一方占据即将爆发团战位置附近的视野，包括但不限于草丛视野，团战对哪一方自然更加有利，根据地形情况，可以简单分为左、右、后三个方向。<br />\n这一点很多人并不太在意，但其实，视野是很多行动的基础，没有视野的行动，俗称，瞎打。</p>\n<p>4、阵容优势</p>\n<p>这个东西相对而言就不是那么好临场判断了，而是BP的时候就确认的，己方牛魔+吕布+王昭君+后羿+赵云，打正面团自然就比什么大乔+程咬金+鲁班+老虎+妲己这种阵容，要强，主要参考点无非就是先手、后手、反手、拆伙、poke、AOE、收割、爆发这些因素，你说你就是判断不出来，那我也没辙，毕竟不是这篇帖要讲的重点。</p>\n<p>5、地形优势</p>\n<p>地形，包括，但不限于：防御塔、隘口、墙体、草丛、地图边缘。<br />\n另外，地形优势，其实也和阵容有关，野区打架，自然有武则天、吕布、八戒之类的就比较强，因为可以更好地利用地形。</p>\n<p>按照这个原则去分析形势，大致就能判断出来，哪一边的有利项占比多，从而判断当前阶段，我们要不要打团。<br />\n己方有利项比对方多，那就可以主动开团；<br />\n双方有利项差不太多，那就视情况选择接团；<br />\n敌方有利项比己方多，那就尽量避团。</p>\n<p>这里需要注意的是：这五点里面，人数和视野，是可以根据场上形势直接观察到的，而经济问题，是需要有人时刻去注意并提醒大家的，阵容问题，是正式开始游戏之前，脑子里就应该有的一个概念，贯穿游戏始终，而地形，是需要结合阵容问题和当前游戏状态来判断的。</p>\n<p>所以，那些能瞬间判断出团战是否可以打的人，也并不是单纯的反应快而已，只是，有些东西他们脑子里一直都有，结合临场状况，才能快速做出判断，并且准确率比较高。<br />\n</p>\n<p>接下来说一下开团信号！</p>\n<p>开团信号的本质核心，其实就是一个词“机会”！<br />\n相对的，如果站在对方角度考虑，就是我们自己不要有“失误”，从而被对方抓到机会。<br />\n而机会，或者说失误，具体是什么？<br />\n比如，站位失误，或者叫走位失误，再比如，技能真空期，再比如，阵型过于压缩或分散，再比如，带线过深，等等。<br />\n毕竟，前面讲的那五条开团基础，如果双方都做的比较谨慎，其实五条咱们都有优势是不太可能的，或者说，己方整体比对方明显有利的比例，是比较少的，大部分时候，都是你有一些优势，我有另一些优势，加加减减，其实双方优势程度都差不太多。<br />\n但，只要是人，就不会没有失误，人非圣贤孰能无过？<br />\n抓机会能力，在开团，包括抓人、推塔、拿龙等时候，都是非常重要的一个能力，也是moba类游戏能否达到更高水平的一个明显衡量标准。<br />\n所以，所谓的开团信号，其实本质就是，你能不能抓住机会！</p>\n<p>1、寻找机会<br />\n刚才说了，是人就会犯错，能否及时发现并抓住机会是很重要的，但机会往往转瞬即逝，比如走位失误，对面后羿可能是站位靠前了，但可能也就那么一瞬间，比如就一秒钟，这是很快就过去了的，但你从发现，到反应过来，到采取行动，到技能效果打出来，到队友跟上，也是需要时间的，换句话说，机会发生的时候你才开始有反应，往往是来不及的，所以就需要我们去主动寻找团战机会。<br />\n比如，你玩的是钟馗，emmm…算了，我很不喜欢钟馗这个英雄，换一个吧，比如，你玩的是西施。那西施的核心打法就是钓鱼，这是一个很明显的需要玩家有很强抓机会能力的英雄，那么比如对方抱团集合准备推你家中路二塔，这时候你就要干什么啊？提前等待机会，或者说是，为了机会出现时能及时把握，而提前做准备。<br />\n具体包括但不限于：<br />\n1、尽量不要提前用一技能清兵，导致有机会时候技能在CD；<br />\n2、站位稍微靠前一点，保证有机会时自己技能可以快速命中，但别太靠前别给敌人机会；<br />\n3、观察地图上敌人移动趋势，从而大致分辨出可能出现机会的方位；<br />\n4、提醒队友，注意自己技能，最好语音沟通，或者发信号“技能已经好了”。<br />\n这里有一点可能有些人不是很理解，就是第三条，观察敌人移动趋势，这个在dota时代被我们叫做提前量预判或者提前量计算，同样是moba游戏，王者荣耀里也是存在这个概念的，但貌似没怎么听人提到过提前量这个词啊…<br />\n话说，我为什么举例“敌人要推你们家二塔”？</p>\n<p>我为什么举例“敌人要推你们家二塔”？<br />\n因为二塔附近的地形构造相对复杂，但特点明显。二塔左侧有一个己方蓝区入口，推塔方经常藏在那片小草丛里，对不对？二塔右侧也有一个己方红区入口，也有一片草丛，敌人绕过来的可能性也不是没有，对不对？敌方推二塔肯定是要先清理掉己方兵线和一塔的，而兵线消失前会提供短暂的原地视野，完全可以利用这个短暂视野，看到敌人移动方向的趋势，从而判断，是否有人去两侧埋伏以及是谁，包括从正面过来的人，站在最前面的是谁，他和兵线的相对位置，是靠墙还是靠近兵线之类的，而兵线的移速是相对固定的，兵线为参照物的话，大致就可以推断出，在短暂的两三秒后，某个敌人的位置，至少是可能的位置，对不对？<br />\n而西施大摇大摆的过去放一技能，拉到人的概率是不会太大的，毕竟一技能落下来也是需要时间的，但如果是敌人没有你视野的前提下，你计算提前量，预判了敌方的移动趋势，从而在敌人视野外放技能，敌人走过来看到你的瞬间，正好被技能砸中，开大两次回拉，这不就是钓鱼的精髓所在么？虽然看起来被人推二塔是劣势，但你先手开团，拉到塔下，利用地形优势，成功拿下这波团战，爽不爽？<br />\n包括一些长意识的预判，比如，你看到对方打野在中路清掉了兵线，然后钻入了自己家红野区，那他去干啥了？清野，支援上路，开龙，无非就这三个选项对不对？那你作为打野，如果此时正在自己家蓝区附近，是不是就可以从河道往上路走，在上路和龙坑之间那个草提前埋伏一下？叫上队友，来一波有视野优势的埋伏，当然了，如果5秒没有敌人过来，也没人打龙，是不是对面打野基本就是在打红？而他不知道你已经过来了对不对？一样是有视野优势，同时可能你还带着队友一起过去的，一个技能都放了正在打红血且量不一定健康，甚至可能惩戒之前也交了的打野，虽然这不是团战，算是抓人，但，这是不是机会？<br />\n再比如，队友给出视野，敌方伽罗和打野以及辅助正在打蓝，但你正在己方红区，过去也抢不到了，很可惜，但，这时你发现敌方打野和辅助来到了中路清线，而伽罗并没有露头，并且打野身上没有蓝buff，那么，刚才那个蓝自然是给了伽罗，而伽罗此时自身状态不佳拿完蓝回城的概率是比较小的，又没出现在中路，是不是他去下路的可能性非常大？别问为什么辅助没有跟着射手，这不就是失误么？那你是不是可以抓住这个机会？你可以选择走过去抓一波落单的伽罗，也可以叫队友过来中路五人集合，来个有人数差的5V4团战？<br />\n这不都是主动寻找机会么！<br />\n机会，会突然从天上掉下来砸中你么？<br />\n会，但几率很小，而且到时候你有没有能力把握也是另一回事！<br />\n总结，这一条的本质，说白了，其实就是基于意识的预判，不要被动等待机会降临，要主动寻找哪里可能有机会即将出现，并提前做好准备！</p>\n<p>2、创造机会<br />\n随着段位的提升，你会发现，敌人变得越来越猥琐，没那么多失误，根本不给机会，咋办？<br />\n没机会，自己创造机会！<br />\n你要时刻谨记一点，机会，是相对的！你在寻找对方失误的同时，对方也在寻找你的失误，双方都在找机会！<br />\n那么，既然对方行动不好预判，难以找到突破口，那我们就“先发制人”，给他们希望，从而诱导他们的行动，让他们以为这边有机会，其实是我们的陷阱，这就叫创造机会。<br />\n最常见的应用，就是用龙逼团。<br />\n地图全黑，对面动向不明，局势僵持不下，龙刷新了，好，我们去打，不是真的玩儿命甩技能打龙，而是把龙拉出来一点，处在随时可以拉脱的位置附近，让龙放技能，让对方看到我们在打龙，然后所有人在附近埋伏好，站好视野，捏好技能，等猎物上钩。<br />\n那句话怎么说得来的？高级的猎手，往往是以猎物的身份登场的！<br />\n相应的，比如姜子牙这个英雄，放大招时候那个预警线很多人都觉得太蠢了，真的能打到人么？其实你如果会利用，这也是一个可以创造机会的契机！<br />\n比如，敌方对C位的保护非常到位，辅助寸步不离，坦边时刻警惕，他们来推塔了，姜子牙就放个大招在路中间嘛，或者瞄着敌方C的位置，这个大肯定打不到人，对吧？但，敌人也一定会躲开对不对？你瞄的是中间位置，那就势必有可能出现，敌人三个往左躲，两个往右躲，对不对？有没有机会可趁？如果其中某一侧，提前有四个队友埋伏好呢？瞬间的人数差对不对？<br />\n类似的技能诱导，还有比如武则天，都知道，武则天如果先手开大，打中人的概率其实是非常低的，一般都是队友给先手控制，然后武则天接大招，对不对？但比如，如果敌人五人集合推己方上路高地，五个人站位本身就相对集中，他们刚想过来点塔，武则天一个先手大招砸下去，会发生什么？一个人也打不到，对吧？但敌人本能地，大概率就都会往后撤，并且因为上路高地外侧地形相对狭窄，越往后撤越容易站位集中，这时候一个大团控突然出现，他们往前走就会中武则天的大，往后退就会被另外的团控技能打中，左边是墙，右边有我们其他人的埋伏，强行开到四五个人，是不是很爽？这可能就是一波完美团对不对？<br />\n很多人是知道利用大招逼走位的，但实际应用起来，往往只能打出空大的效果，怎么说呢，多交流吧，毕竟，如果运用得好，往往是有奇效的。<br />\n总结，这一条，就是利用一切可能的条件，诱导敌人的下一步行动，从而让己方更容易判断出敌方的行动趋势，并做好准备，进而主动创造并抓住机会。</p>\n<p>3、跟上机会<br />\n一些开团型英雄经常抱怨这样一句话“我这波开到三个人，你们怎么不跟上啊？”<br />\n然后可能后面C位就会反驳：“我没状态啊！”或者“我太远了跟不上啊！”<br />\n那到底是开团点的错，还是后续输出点的错？<br />\n其实都有可能，有时候确实是开团的人不注意队友的状态和位置，自以为是看到了机会，其实是进去送，但有些时候，确实也是后面输出位不知道注意开团点，以及看不到团战机会。<br />\n我没有统计，也没人会去统计，到底哪种情况多，到底谁的锅，如果可以的话，其实解决问题的最好办法就是复盘，总结才会有提高。<br />\n我突然想起以前打dota，和一个朋友，配合默契度非常高，我上了，他就一定会跟上，他在旁边埋伏，我就知道肉身勾引敌人。<br />\n有人说这是打得多了，相互了解，默契不可强求，但真的是如此么？难道两个陌生人之间，就不可能存在默契么？<br />\n答案当然是否定的！<br />\n老朋友之间经常一起打游戏，相互之间有足够了解，不言而喻，不说就能懂，那是默契，没错，路人局可遇而不可求。<br />\n但，我想说的是，更多时候，所谓的没有默契，没有配合，其实只是你不知道、没注意、反应慢，然后给自己找了个借口罢了。<br />\n就算是路人局，我问你：<br />\n如果，你看到队友鬼谷子在草丛里开了技能，贴墙上去准备拉人了，你作为一个法师，比如干将，是不是就应该准备好技能了，瞄准鬼谷子附近，等待他拉到人，拉几个死几个对不对？但，鬼谷子拉到人了，你才开始找，等鬼谷子死了，你还问呢：哪儿呢哪儿呢？你当然抓不住机会！问题是，这跟默契，跟配合，有毛线关系？你就是菜罢了！<br />\n反过来思考一下：<br />\n如果，队友干将迫于兵线压力，技能全都用来收兵了，处于技能真空期，而且他自身血量不健康，站位也相对靠后，你鬼谷子自以为抓住了机会，拉到了五个，然后没人跟技能，自己死了，你骂队友不跟上？这跟默契，跟配合，有毛线关系？你就是菜罢了！</p>\n<p>关于这个跟上机会，我其实没啥太多理论好讲，我就是想告诉你一个残酷的现实，那就是：菜就别老找借口！<br />\n我们如果想要提高，那么要做的，其实就是三件事：<br />\n1、补充基础知识！<br />\n你都不知道英雄的常见配合方式，不知道技能组合起来有什么效果，谈什么配合？你就是菜而已！别找借口！<br />\n2、注意场上情况！<br />\n队友和敌人的技能情况、血量状态、位置方向、装备经济等等，你注意不到，赖谁？你就是菜而已！别找借口！<br />\n3、多沟通交流！<br />\n不知道，没事，没看见，没事，开麦，沟通交流，报点、报位、报状态，记住，你是人，你有嘴，同时，你也是在和人打游戏。别开麦净说没用的，谁管你中午吃的啥？要么开麦就是互喷，就这还想赢？别找借口了，什么没配合没默契？什么队友太菜带不动？什么匹配机制太辣鸡？你就是最菜，最不配赢的那个！<br />\n你可能以为我只是很幽默，我说的菜，只是一种比喻，不是在骂你，其实，是不是在骂你并不重要，你到底是否真的明白我再说什么，才是重点。<br />\n<br />\n4、放弃机会<br />\n最后一点，好多人看标题估计直接蒙了，怎么又放弃机会了？<br />\n这里就要稍微拓展一下了！<br />\n前面一直在讲团战，讲开团，但，实际上，团战，只是游戏中的一部分而已！<br />\n懂得人已经知道我后面要说啥了吧？<br />\n这波团能不能开，我上面讲了五个基础，分别是：经济、人数、视野、阵容、地形。<br />\n但有一点，明明很重要，我却只字未提，没错，那就是：兵线！<br />\n上面讲的所有的一切一切，都是建立在“客观条件允许我们有时间去打团”的基础上！<br />\n什么叫客观条件允许？说白了就是兵线有优势！<br />\n处理好兵线再开团，这是基础中的基础！<br />\n兵线有优势，自己被团灭了，也基本不会被一波。<br />\n兵线没优势，对方被团灭了，你也只能回去处理兵线。<br />\n有人肯定想来杠，就算边路兵线没有优势，但只要高地基地没有威胁，我们团灭了对面，也可以带着中路仅存的一个小兵直接一波啊！<br />\n我也打过这种局，你说的没有错，但！<br />\n朋友，你能问出来这个问题，其实已经证明，你对游戏是有一定理解的，你能发现或者说注意到场上形势和很多细节，所以，硬杠，没意思，懂我再说什么就行了。<br />\n难道你让我几句话把所有对局所有情况都囊括么？<br />\n杠精？<br />\n所以，兵线有问题的时候，压根就不要思考开团的问题，优先处理兵线，尽量避团才对！<br />\n另外，除了兵线，还有龙，对开团那这件事也有很大影响，分两点：<br />\n第一，有龙可以打的时候，没有绝对把握能团赢，尽量先开龙，这和没把握推高地尽量先开龙是一个道理。<br />\n第二，其中一方有龙，不论是主宰先锋还是暴君buff，另一方尽量要避团，不然拿龙是为啥啊？<br />\n除此之外，影响团战的还有一点，就是野区经济，如果条件允许的话，开团前，尽量清干净野区，毕竟，如果团输了，顺风等于给了对面拉回经济的机会，逆风更是将自己逼入绝境，反过来，如果团赢了，但对面已经把野区打扫干净了，龙也没刷，没兵线也推不了塔，那我们团战胜利所带来的优势，也就仅限于团战的那些人头而已。<br />\n所以，很多时候，就算有机会，有些团战，也应该放弃！<br />\n昨天我有点困了，但还是被拉去打五排，所以全程有点迷糊，但我没想到的是，王者低星局，我也不知道为啥，十五分钟五十多个人头，全程不知道在打个啥…这种局，胜负和MVP，也都变得索然无味…</p>\n', '134.195.101.21', 37557, 0, 0, '2021-08-09 17:56:57', '2021-08-09 17:59:01', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (198, 55, 73, NULL, NULL, NULL, NULL, '<p>字数有点多，所以，最后，总结一下！</p><p>1、经济、人数、视野、阵容、地形，五个开团基础，己方占据更多优势的情况下，才可以考虑开团。</p><p>2、开团的核心就是抓机会，但机会要靠主动寻找，没机会的时候想办法创造机会。</p><p>3、不仅要注意抓住机会，也要知道跟上机会，最完美的情况就是，队友等着你开先手，你也知道队友会跟后手，做不到那么默契，那就多沟通交流。</p><p>4、以上关于团战的一切，都是基于兵线有优势的基础上，同时要注意野区中立资源的抢夺和龙buff带来的影响，并且牢记，塔通常都比命重要！</p><p>最后一句话：开团，不是单纯的为了这波团打赢而已，几个人头并不足以直接决定最终的胜负，一切的最终目的，都是推掉敌方水晶，我们只是尽量从各方面，不断增加自己胜利的筹码，而团战，只是其中一个方法，而已。</p><p>还是那句话，希望能对你有一定帮助！</p>完结撒花！', '134.195.101.21', 37585, 0, 0, '2021-08-09 17:59:08', '2021-08-09 17:59:08', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (199, 56, 74, NULL, NULL, NULL, NULL, '<p>手游直接开放资格不好吗，非要一直恶心玩家<img src=\"http://91king.xyz/storage/attachments/2021/08/09/gZDbowgJcpShdYcy9VqU5zxWFCitED7SijgO3M75.png\" alt=\"attachmentId-40\" />。</p>\n', '134.195.101.21', 55063, 0, 0, '2021-08-09 18:02:51', '2021-08-10 22:56:13', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (200, 56, 73, NULL, NULL, NULL, NULL, '垃圾王者哪有那么多花里胡哨的', '134.195.101.21', 42503, 0, 0, '2021-08-09 18:03:40', '2021-08-09 18:03:40', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (201, 56, 73, NULL, NULL, NULL, NULL, '用脚打都能上王者', '134.195.101.21', 58973, 0, 0, '2021-08-09 18:03:51', '2021-08-09 18:03:51', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (202, 57, 75, NULL, NULL, NULL, NULL, '<p>本人各种moba游戏都玩，dota2超凡，联盟网一白金.王者早期王者段位，这几把游戏就离谱，平a和移动手感极差，有时候莫名其妙得走的脸贴脸才能a到，有的时候就是正常距离，尤其是玩剑姬这种上单近战的英雄，于是玩了几天就不玩了.不知道你们有没有发现哪里游戏体验差一些.理性讨论一下<img src=\"http://91king.xyz/storage/attachments/2021/08/09/JIhrbyNEIcN4FXOOkQhq3RnfzVn57DB7pqG88NV9.png\" alt=\"attachmentId-41\" /></p>\n', '134.195.101.21', 57783, 0, 0, '2021-08-09 18:06:09', '2021-08-10 22:57:29', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (203, 57, 73, NULL, NULL, NULL, NULL, '然后呢？不还是垃圾游戏', '134.195.101.21', 41169, 0, 0, '2021-08-09 18:06:37', '2021-08-09 18:06:37', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (204, 57, 74, NULL, NULL, NULL, NULL, '我可以免费给你一个号，私聊', '134.195.101.21', 39781, 0, 0, '2021-08-09 18:07:03', '2021-08-09 18:07:03', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (205, 16, 76, NULL, NULL, NULL, NULL, '', '134.195.101.21', 46845, 0, 0, '2021-08-09 23:14:44', '2021-08-09 23:14:44', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (206, 3, 16, NULL, NULL, NULL, NULL, 'http://207.148.72.116:8888/810145a3', '134.195.101.21', 57401, 0, 0, '2021-08-10 00:49:51', '2021-08-10 00:49:51', '2021-08-10 10:43:12', 2, 0, 0, 1);
INSERT INTO `posts` VALUES (207, 58, 77, NULL, NULL, NULL, NULL, '<p>是这样的，我下载了12.2纯净版，带一个启动侠启动器。然后按照提示首先要安装optifine，而安装optifine要先安装forge，我下了forge点击后没反应打不开。然后发现在启动侠里直接安装了带forge的游戏版本。 OK开始装optifine，按照提示安装optifine时报错缺少launcher_profile.json，然后按照说明【先不要安装Optifine 首先安装Forge，之后将Optifine放入.minecraft/Mods文件夹，启动的时候选择装了Forge的版本即可】。</p>\n<p>问题来了，终于走到这一步，启动侠给我来了个启动失败！Forge与Optifine版本不兼容。</p>\n<p>搞了好久我有点儿破防了，所以请问一下这个正确的安装顺序是什么？最好能给个下载链接....谢谢各位了:leiben:</p>\n', '134.195.101.21', 53999, 0, 0, '2021-08-10 22:54:05', '2021-08-10 22:54:05', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (208, 58, 77, NULL, NULL, NULL, NULL, '整合包我也下过，但是设置里依旧是没有光影选项', '134.195.101.21', 34631, 0, 0, '2021-08-10 22:54:26', '2021-08-10 22:54:26', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (209, 56, 77, NULL, NULL, NULL, NULL, '同情楼主，我也不知道怎么解决，我用pcl2启动器的时候，下载页面直接把optifine forge......的选项全选上，也能玩，要不楼主也试试pcl2&hmcl那些启动器？', '134.195.101.21', 39755, 0, 0, '2021-08-10 22:55:30', '2021-08-10 22:55:30', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (210, 57, 78, NULL, NULL, NULL, NULL, '<p>开了1.12.2服务器，ip 192.168.0.100,没搞啥插件，科学家狂喜服</p>\n', '134.195.101.21', 49405, 0, 0, '2021-08-10 23:00:08', '2021-08-10 23:00:08', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (211, 59, 79, NULL, NULL, NULL, NULL, '<p>我电脑有点毛病总是自动给我重启一下。刚才自动重启好了之后我再登下游戏发现进度全给清空了，但统计信息还在，我手上的地图也变白了:liulei:存档的备份时间隔的比较久，不想再从那时候开始玩，有啥补救方法吗:daku:</p>\n<p> </p>\n', '134.195.101.21', 59791, 0, 0, '2021-08-10 23:02:02', '2021-08-10 23:02:02', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (212, 59, 78, NULL, NULL, NULL, NULL, '大哥，你确定你的服务器还开着么', '134.195.101.21', 39069, 0, 0, '2021-08-10 23:02:24', '2021-08-10 23:02:24', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (213, 33, 80, NULL, NULL, NULL, NULL, '<p>老婆每天都很无聊，想帮她看看有没有什么合适的娱乐手段，手机游戏最好，电脑游戏也行，她是那种性格很软的妹子，不愿意动脑，不知道各位有没有什么推荐的</p>\n', '134.195.101.21', 41621, 0, 0, '2021-08-10 23:05:56', '2021-08-10 23:05:56', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (214, 60, 80, NULL, NULL, NULL, NULL, '<p>性格很软就算了…我对象教舞蹈的，还练跆拳道，我们一起玩的怪物猎人，仁王2，命运2，你可以试试双人成行，胡闹厨房</p>', '134.195.101.21', 35491, 0, 0, '2021-08-10 23:08:09', '2021-08-10 23:08:09', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (215, 60, 81, NULL, NULL, NULL, NULL, '<p>老玩家被封永久，这玩意还能不能解封了，Rainbow_Paradise ID可查<br />\n是不是外挂贴吧的鉴挂大神来鉴定一下吧<br />\n13个赛季的号<br />\n以前一直打FPP挺菜的，最近两天打了TPP比FPP多杀了两个人就被永久了<br />\n解封不了真的被劝退了<br />\n刚封的，热乎的</p>\n', '134.195.101.21', 35643, 0, 0, '2021-08-10 23:08:51', '2021-08-10 23:08:51', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (216, 61, 82, NULL, NULL, NULL, NULL, '<p>现在是2个人只打竞技，快乐为主什么都不需要不管你多少kd什么段位都行，每天都玩从下午到凌晨2点</p>\n', '134.195.101.21', 54273, 0, 0, '2021-08-10 23:10:46', '2021-08-10 23:10:46', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (217, 61, 80, NULL, NULL, NULL, NULL, '带她玩双人成行', '134.195.101.21', 51895, 0, 0, '2021-08-10 23:11:21', '2021-08-10 23:11:21', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (218, 61, 81, NULL, NULL, NULL, NULL, '我也是 今天刚永封 我19年玩的 3000小时 从来没开任何辅助 就离谱', '134.195.101.21', 38667, 0, 0, '2021-08-10 23:11:38', '2021-08-10 23:11:38', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (219, 62, 83, NULL, NULL, NULL, NULL, '<p>在完美平台玩躲猫猫</p>\n<p>很多人开局就飞了起来，飞到高点，这是挂吗</p>\n', '134.195.101.21', 42643, 0, 0, '2021-08-10 23:55:48', '2021-08-10 23:55:48', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (220, 62, 83, NULL, NULL, NULL, NULL, ':yiwen:', '134.195.101.21', 47679, 0, 0, '2021-08-10 23:56:00', '2021-08-10 23:56:00', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (221, 62, 83, NULL, NULL, NULL, NULL, '有人吗', '134.195.101.21', 39837, 0, 0, '2021-08-10 23:56:08', '2021-08-10 23:56:08', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (222, 62, 82, NULL, NULL, NULL, NULL, '私聊了', '134.195.101.21', 60673, 0, 0, '2021-08-10 23:56:21', '2021-08-10 23:56:21', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (223, 63, 84, NULL, NULL, NULL, NULL, '<p>有没有老哥没办法调成4:3的 我之前一直可以调 今天打游戏打开发现根本调不了 重启也没办法解决问题 调成16:9反而可以 打开游戏了</p>\n', '134.195.101.21', 58299, 0, 0, '2021-08-10 23:58:37', '2021-08-10 23:58:37', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (224, 63, 85, NULL, NULL, NULL, NULL, '<p>xdm爪子和m9哪个好 主玩ak和m4 不打狙</p>\n', '134.195.101.21', 48051, 0, 0, '2021-08-10 23:59:26', '2021-08-10 23:59:26', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (225, 63, 16, NULL, NULL, NULL, NULL, '更新一个交易区', '134.195.101.21', 57291, 0, 0, '2021-08-10 23:59:52', '2021-08-10 23:59:52', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (226, 64, 86, NULL, NULL, NULL, NULL, '<p>xdm 有没有人知道 csgo5e 和完美被禁言（黄信了）该怎么恢复呀 ！！！ 每次都要队友打开我的麦才可以听到我讲话！ 我该如何恢复！！！</p>\n', '134.195.101.21', 34715, 0, 0, '2021-08-11 00:03:10', '2021-08-11 00:03:10', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (227, 64, 86, NULL, NULL, NULL, NULL, '<p>感谢大哥有没有告诉我一下的 ，她们说一直打就可以了 。我快打了5/60局了，都还没有恢复回来</p>', '134.195.101.21', 32899, 0, 0, '2021-08-11 00:03:18', '2021-08-11 00:03:18', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (228, 64, 85, NULL, NULL, NULL, NULL, '爪子', '134.195.101.21', 46891, 0, 0, '2021-08-11 00:03:43', '2021-08-11 00:03:43', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (229, 65, 87, NULL, NULL, NULL, NULL, '<p>我用完美对战平台玩CSGO CPU温度一直在50-70 这块浮动 FPS 稳定在250-300 不等<br />\n这个赛我用5E对战平台玩 玩10分钟 CPU温度立马飙升到100% 然后开始掉帧 掉到50 30 这种卡的不行 我想问问是怎么回事 有知道的吗 肯定不是配置问题 不然玩完美平台也不会没事 求解答</p>\n', '134.195.101.21', 44669, 0, 0, '2021-08-11 00:05:30', '2021-08-11 00:05:30', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (230, 65, 86, NULL, NULL, NULL, NULL, '我也是这样', '134.195.101.21', 43387, 0, 0, '2021-08-11 00:05:53', '2021-08-11 00:05:53', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (231, 66, 88, NULL, NULL, NULL, NULL, '<p>有没有固 能天天和我一块玩的</p>\n', '134.195.101.21', 44579, 0, 0, '2021-08-11 00:07:52', '2021-08-11 00:07:52', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (232, 2, 89, NULL, NULL, NULL, NULL, '<p>全端前台优化与修复</p>\n<ol>\n<li>添加公安备案信息。2. 修复后台不设置公安备案信息的话，pc首页右下角网站备案信息不显示。3. 修复图文混排时发布一张长图，没有对长图折叠过长的内容。4. 修复 H5 手机外部浏览器兼容性问题。5. 修复楼中楼回复用户信息与内容没对齐。6. 后台对象存储（cos）的文档预览开关，打开或关闭，前端都可以正常预览。7. 修复 fileUrl 图片上传 bug。</li>\n</ol>\n<p>PC 端优化与修复</p>\n<ol>\n<li>首页筛选点击二级分类的一级分类，下划线移除。2. 修复个人中心站点信息文案没有对齐。3. 修复对推荐内容进行分类筛选时不起作用。</li>\n</ol>\n<p>小程序/H5优化与修复</p>\n<ol>\n<li>修复发布三张长图时，小程序的图片没有对齐，且H5的图片展示规则有误。2. 修复小程序己发布红包贴后，其他用户在另一端领取红包成功，再次进入帖子详情评论显示已领取，红包进度条不显示，刷新后正常。3. 修复小程序评论他人悬赏贴，他人采纳回复后，进入到帖子详情，评论显示成功领取到悬赏金额，悬赏贴的进度条不显示进度。4. 修复站点调成付费模式，小程序登录成功后首页没有提示付费加入，发帖时提示当前站点是付费模式，消息页一直处于加载更多中。5. 修复站点信息成员头像与成员列表头像显示不一致，H5也有。6. 修复PC端发布内容时用编辑器进行文字加粗，小程序端首页详情页自动换行，PC和H5正常。</li>\n</ol>\n', '103.136.124.143', 36948, 0, 0, '2021-08-11 19:22:52', '2021-09-07 21:51:05', '2021-09-07 21:51:05', 1, 1, 0, 1);
INSERT INTO `posts` VALUES (233, 8, 89, NULL, NULL, NULL, NULL, 'OK', '134.195.101.21', 36629, 0, 0, '2021-08-11 21:57:09', '2021-08-11 21:57:09', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (234, 8, 89, NULL, NULL, NULL, NULL, '为什么不删掉那个装管理发帖的帖子', '134.195.101.21', 55585, 0, 0, '2021-08-11 21:57:41', '2021-08-11 21:57:41', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (235, 8, 89, NULL, NULL, NULL, NULL, '<span id=\"member\" value=\"3\">@Thread</span>', '134.195.101.21', 48733, 0, 0, '2021-08-11 21:57:56', '2021-08-11 21:57:56', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (236, 67, 90, NULL, NULL, NULL, NULL, '<p>真的不需要什么操作就可以吊打各种中单法师，亚索那q的伤害和CD，不是数值怪是什么?说白了亚索就算没用风墙和E躲掉法师的技能，法师也是打不过他的，当然是前期法师伤害还不能秒人的时候，这不是数值高是什么?更别说亚索实际特别好躲技能。</p>\n', '134.195.101.21', 58517, 0, 0, '2021-08-12 14:50:05', '2021-08-12 14:50:05', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (237, 67, 90, NULL, NULL, NULL, NULL, '当然对线也要考虑换血，数值再高换血一直换的很亏也不行，但这种情况会在亚索回家出了吸血鬼之后就消失，上来就无脑上来干你一波，换血换没了，直接无脑推线推一会，血又满了，而且亚索这英雄推线的效率和安全是非常高的', '134.195.101.21', 39157, 0, 0, '2021-08-12 14:50:22', '2021-08-12 14:50:22', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (238, 67, 16, NULL, NULL, NULL, NULL, '修复一下BUG', '134.195.101.21', 49591, 0, 0, '2021-08-12 14:51:45', '2021-08-12 14:51:45', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (239, 68, 90, NULL, NULL, NULL, NULL, '前排提示等级。亚索不就恶心一下玩匹配的法师？？？我选个腕豪鳄鱼，你亚索能干嘛？', '134.195.101.21', 44825, 0, 0, '2021-08-12 14:52:35', '2021-08-12 14:52:35', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (240, 68, 91, NULL, NULL, NULL, NULL, '<p>兄弟们 LOL游戏内打不了字是什么情况 就是一打汉字选字框一直闪打不出来 但是英文可以</p>\n', '134.195.101.21', 58481, 0, 0, '2021-08-12 14:52:53', '2021-08-12 14:52:53', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (241, 68, 16, NULL, NULL, NULL, NULL, '更新点插件', '134.195.101.21', 42699, 0, 0, '2021-08-12 14:54:35', '2021-08-12 14:54:35', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (242, 68, 92, NULL, NULL, NULL, NULL, '<p>超级新手 今天才下载的游戏qaq</p>\n', '134.195.101.21', 42055, 0, 0, '2021-08-12 14:56:31', '2021-08-12 14:56:31', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (243, 69, 93, NULL, NULL, NULL, NULL, '<p>是不是贴吧大部分都打三排，不怎么用匕首啊？这武器真的是强的离谱，而且不需要什么操作就能打，A中接升龙空中A接下劈，你甲必碎，甚至可能带走你点血，至于高手，更是有可能压到你的起身，继续连，抛开继续连不说，这套伤害也太高了吧？<br />\n可能有人会说，这个不好打出来，这么说的我看是单排没怎么遇到匕首，因为新武器刚出来使用的人确实不多，但目前用的人可是越来越多了，当你遇到匕首的时候，你会发现，他先上来A，A不中，后撤闪，此时，你最好是闪走，因为你这个时候如果振刀，可能对方是右键，如果不振可能是左键，而当你闪走后，你会发现，他没A中，继续这个套路重复，或者蓄力骗你振刀，你不振，你继续闪，他继续重复这个套路<br />\n有人可能又会说了，那你不会蓄力吗？好，你蓄力，打出来，他后撤左键A是蓝霸体，拼刀你没打中，你蓄力不打出来，他蓝霸体A中你，你蓄力还不如闪走<br />\n综合来说，强主要强在压迫感，这种情况下你失误的几率会很大，又很难猜中他，因为他蓝霸体非常的快，振也不是特好振，这如果还不算强的话，我感觉其他武器除了太刀，都可以删除了，这个武器给我一种感觉就像是升级版的太刀，虽然机制不同，但是，都是很难猜中的武器，匕首比太刀更难猜，所以更强<br />\n那么，请问，怎么打匕首？？？？？</p>\n', '134.195.101.21', 50209, 0, 0, '2021-08-12 14:57:56', '2021-08-12 14:57:56', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (244, 69, 92, NULL, NULL, NULL, NULL, '男的女的，男的不玩', '134.195.101.21', 41507, 0, 0, '2021-08-12 14:58:20', '2021-08-12 14:58:20', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (245, 69, 91, NULL, NULL, NULL, NULL, '我也是啊，然后不知道咋按按就又好了 ，你把wegame关了看看', '134.195.101.21', 38111, 0, 0, '2021-08-12 14:58:30', '2021-08-12 14:58:30', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (246, 69, 94, NULL, NULL, NULL, NULL, '<p>你们出这个匕首是不是不玩单排啊。 这个匕首只要震不到 就是一套连招就没血了 说拿长枪近不了身的 你去多玩玩试试行吗？ 他的这个金霸体游走 等空隙你拿他有办法吗？ 你跑的赢人家吗？</p>\n', '134.195.101.21', 53885, 0, 0, '2021-08-12 14:59:15', '2021-08-12 14:59:15', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (247, 69, 16, NULL, NULL, NULL, NULL, '更新跳转', '134.195.101.21', 38429, 0, 0, '2021-08-12 14:59:43', '2021-08-12 14:59:43', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (248, 70, 95, NULL, NULL, NULL, NULL, '<p>上赛季通行证980还是多少？攒了1100 想着新赛季怎么都够开了。现在1360可好 你充240都还差20，你见过哪个游戏攒了一个赛季的通行证不够开下个赛季的，而且里面给的东西除了箱子狗J8不是。真当玩家是猪B？</p>\n', '134.195.101.21', 59621, 0, 0, '2021-08-12 15:00:58', '2021-08-12 15:00:58', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (249, 70, 94, NULL, NULL, NULL, NULL, '垃圾游戏', '134.195.101.21', 44447, 0, 0, '2021-08-12 15:01:13', '2021-08-12 15:01:13', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (250, 70, 16, NULL, NULL, NULL, NULL, '更新手机网站', '134.195.101.21', 50477, 0, 0, '2021-08-12 15:01:32', '2021-08-12 15:01:32', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (251, 71, 96, NULL, NULL, NULL, NULL, '<p>每天下班就玩俩小时，就这样？玩你吗</p>\n<p>白银一排半小时，玩***</p>\n', '134.195.101.21', 59395, 0, 0, '2021-08-12 15:05:32', '2021-08-12 15:05:32', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (252, 71, 96, NULL, NULL, NULL, NULL, '司马游戏', '134.195.101.21', 53899, 1, 0, '2021-08-12 15:05:43', '2021-08-12 15:05:43', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (253, 71, 96, NULL, NULL, NULL, NULL, '<p>单机贴吧？</p>', '134.195.101.21', 34299, 0, 0, '2021-08-12 15:05:47', '2021-08-12 15:05:47', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (254, 72, 96, 252, 71, NULL, NULL, '可能是bug，我之前也是这样，其实早排上了，但是没有弹出窗口，一直在加载，你除非关掉重排，我上次铂2排了3小时，关了再开5分钟', '134.195.101.21', 44629, 0, 0, '2021-08-12 15:06:58', '2021-08-12 15:06:58', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (255, 72, 97, NULL, NULL, NULL, NULL, '<p>如题，原来也上过几个赛季的钻石~</p>\n<p>后来忙就没有正经玩过了，一直在玩大乱斗之类的。</p>\n<p>现在想重新打一下排位，定级黄金后，在上单中单就各种被单杀吊打。打野方面也有点抓瞎，总之像是5个位置都玩得很菜了。</p>\n<p>求大佬支招，该怎么办</p>\n', '134.195.101.21', 37227, 0, 0, '2021-08-12 15:07:28', '2021-08-12 15:07:28', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (256, 8, 96, NULL, NULL, NULL, NULL, '啊这，要不换个区。', '134.195.101.21', 53915, 0, 0, '2021-08-12 15:08:16', '2021-08-12 15:08:16', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (257, 16, 96, NULL, NULL, NULL, NULL, '这也太夸张了。。。', '134.195.101.21', 37967, 0, 0, '2021-08-12 15:08:59', '2021-08-12 15:08:59', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (258, 16, 96, NULL, NULL, NULL, NULL, '建议换区', '134.195.101.21', 59481, 0, 0, '2021-08-12 15:09:04', '2021-08-12 15:09:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (259, 21, 96, NULL, NULL, NULL, NULL, '白银就这样，现在人最多的段位是黄金', '134.195.101.21', 53441, 0, 0, '2021-08-12 15:09:57', '2021-08-12 15:09:57', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (260, 21, 97, NULL, NULL, NULL, NULL, '多看霸哥直播 以后只补塔刀:xieyanxiao:', '134.195.101.21', 58665, 0, 0, '2021-08-12 15:10:17', '2021-08-12 15:10:17', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (261, 21, 98, NULL, NULL, NULL, NULL, '<p>打10局最少6局不会是认真游戏，不是对面，就是队伍，有人故意坑队友。感觉就是一天都是遇到一些故意坑的，他们的游戏乐趣不是建立在胜利上，也不是建立在段位上，就是坑了队友，但是我开心，已经没有所谓的竞技体验了。</p>\n', '134.195.101.21', 33271, 0, 0, '2021-08-12 15:12:11', '2021-08-12 15:12:11', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (262, 21, 98, NULL, NULL, NULL, NULL, '最明显的就是，一局遇到神坑，其他四个都已经投了，结果这个坑不投，出门就是送，他非要拖着大家给对面杀，呵呵', '134.195.101.21', 41033, 0, 0, '2021-08-12 15:12:21', '2021-08-12 15:12:21', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (263, 73, 98, NULL, NULL, NULL, NULL, '没错', '134.195.101.21', 33181, 0, 0, '2021-08-12 15:13:38', '2021-08-12 15:13:38', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (264, 73, 98, NULL, NULL, NULL, NULL, '我朋友都是这样说的', '134.195.101.21', 36851, 0, 0, '2021-08-12 15:13:47', '2021-08-12 15:13:47', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (265, 73, 16, NULL, NULL, NULL, NULL, '更新功能', '134.195.101.21', 58597, 0, 0, '2021-08-12 15:14:28', '2021-08-12 15:14:28', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (266, 73, 99, NULL, NULL, NULL, NULL, '<p>我在b站和贴吧看到有人说冰原的缺点之一是粪怪多，但是以我自己的开荒(太刀)过程来看，我觉得只有冰牙龙和金狮子很难缠，打的很难受，其他的（除黑龙，煌黑龙，绚辉龙）我基本上都是一两次就过了，感觉没什么特别粪的，难道说是我对“粪”的理解不对吗:yiwen:</p>\n', '134.195.101.21', 34363, 0, 0, '2021-08-12 15:16:21', '2021-08-12 15:16:21', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (267, 74, 100, NULL, NULL, NULL, NULL, '', '134.195.101.21', 39827, 0, 0, '2021-08-12 15:32:33', '2021-08-13 15:55:10', '2021-08-13 15:55:10', 2, 1, 0, 1);
INSERT INTO `posts` VALUES (268, 8, 100, NULL, NULL, NULL, NULL, '加了', '134.195.101.21', 49899, 0, 0, '2021-08-12 15:33:33', '2021-08-12 15:33:33', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (269, 3, 100, NULL, NULL, NULL, NULL, '要梯子私聊', '134.195.101.21', 44783, 0, 0, '2021-08-12 15:34:31', '2021-08-12 15:34:31', '2021-08-12 15:37:34', 3, 0, 0, 1);
INSERT INTO `posts` VALUES (270, 16, 100, NULL, NULL, NULL, NULL, '网站还能发这种东西吗', '134.195.101.21', 46941, 0, 0, '2021-08-12 15:35:15', '2021-08-12 15:35:15', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (271, 16, 100, 269, 3, NULL, NULL, '梯子是什么', '134.195.101.21', 32809, 0, 0, '2021-08-12 15:35:26', '2021-08-12 15:35:26', '2021-08-12 15:35:31', 16, 0, 1, 1);
INSERT INTO `posts` VALUES (272, 45, 100, NULL, NULL, NULL, NULL, '已经私聊', '134.195.101.21', 40303, 0, 0, '2021-08-12 15:36:39', '2021-08-12 15:36:39', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (273, 74, 16, NULL, NULL, NULL, NULL, '为什么删我帖子', '134.195.101.21', 58897, 0, 0, '2021-08-13 17:48:36', '2021-08-13 17:48:36', '2021-08-13 19:56:41', 74, 0, 0, 1);
INSERT INTO `posts` VALUES (274, 74, 101, NULL, NULL, NULL, NULL, '<p>管理出来解释，在删我就找人DDOS攻击网站 <span id=\"member\" value=\"2\">@Jerome</span> </p>\n<p>色情片私聊</p>\n', '134.195.101.21', 55627, 0, 0, '2021-08-13 19:55:03', '2021-08-13 23:24:25', '2021-08-13 23:24:25', 2, 1, 0, 1);
INSERT INTO `posts` VALUES (275, 2, 102, NULL, NULL, NULL, NULL, '<p>新增功能</p>\n<pre><code> 1. 新增支持 iframe 代码复制在编辑器后正常在站点展示音视频内容。（目前仅支持网易云音乐、B站、腾讯视频、优酷、爱奇艺）\n\n 2. 新增支持大图上传（15M）。\n 3. 新增支持**模式下跳过**绑定。\n 4. 新增首页附件过多时可折叠展示。\n 5. 新增帖子详情页评论区标记楼主身份。全端前台优化与修复\n\n 1. 编辑器@交互优化：输入@后，输入用户昵称，可以直接显示在@框中。\n 2. 优化个人中心子页面（帖子列表）支持返回当前浏览位置。\n 3. 修复帖子标题在首页展示，会被部分截取。\n 4. 修复首页名称根据后台配置相关问题。\n 5. 修复音频附件贴，首页详情页点击下载时，两个预览按钮会同时进行加载。\n 6. 修复点击左上角的 Discuz Q 的 Logo，无法回到首页。\n 7. 已付费已过期的用户，再次进入付费站点时，付费按钮文案优化。\n 8. 修复三级回复无法收到通知问题。\n</code></pre>\n<p>PC 端优化与修复</p>\n<pre><code> 1. 首页筛选点击二级分类的一级分类，下划线移除。\n 2. 修复个人中心站点信息文案没有对齐。\n 3. 修复对推荐内容进行分类筛选时不起作用。\n</code></pre>\n<p>小程序/H5优化与修复</p>\n<pre><code> 1. 评论框样式优化。\n 2. 修复小程序消息跳转详情页评论定位不准的问题。\n 3. 修复H5进行二次搜索时，搜索的内容过多会导致页面疯狂刷新。\n 4. 修复潮流话题列表，话题无内容时，提示语异。\n 5. 修复发布帖子有很多标点符号时第一行没添加满会自动跳到第二行。\n 6. 修复找回支付密码，点击发送验证，拉起验证码 lite 小程序时点击取消，发送验证码按钮失效，不能再次点击。\n 7. 修复站点信息页面，站长头像显示为匿名头像。\n 8. 修复我的钱包的数据遮挡。\n</code></pre>\n<p>管理后台优化与修复</p>\n<pre><code> 1. 绑定手机开关优化。\n 2. 修复付费模式永久有效，勾选提交后，页面刷新后又变成选中加入起几天后的选项。实际是永久有效。\n 3. 修复后台云点播设置文案错误。\n</code></pre>\n', '208.87.132.216', 37325, 0, 0, '2021-08-13 23:26:00', '2021-08-13 23:27:26', '2021-08-13 23:27:26', 2, 1, 0, 1);
INSERT INTO `posts` VALUES (276, 2, 103, NULL, NULL, NULL, NULL, '<p>新增功能</p>\n<ol>\n<li>新增支持 iframe 代码复制在编辑器后正常在站点展示音视频内容。（目前仅支持网易云音乐、B站、腾讯视频、优酷、爱奇艺）</li>\n<li>新增支持大图上传（15M）。</li>\n<li>新增支持**模式下跳过**绑定。</li>\n<li>新增首页附件过多时可折叠展示。</li>\n<li>新增帖子详情页评论区标记楼主身份。</li>\n</ol>\n<p>全端前台优化与修复</p>\n<ol>\n<li>编辑器@交互优化：输入@后，输入用户昵称，可以直接显示在@框中。</li>\n<li>优化个人中心子页面（帖子列表）支持返回当前浏览位置。</li>\n<li>修复帖子标题在首页展示，会被部分截取。</li>\n<li>修复首页名称根据后台配置相关问题。</li>\n<li>修复音频附件贴，首页详情页点击下载时，两个预览按钮会同时进行加载。</li>\n<li>修复点击左上角的 Discuz Q 的 Logo，无法回到首页。</li>\n<li>已付费已过期的用户，再次进入付费站点时，付费按钮文案优化。</li>\n<li>修复三级回复无法收到通知问题。</li>\n</ol>\n<p>PC 端优化与修复</p>\n<ol>\n<li>首页筛选点击二级分类的一级分类，下划线移除。</li>\n<li>修复个人中心站点信息文案没有对齐。</li>\n<li>修复对推荐内容进行分类筛选时不起作用。</li>\n</ol>\n<p>小程序/H5优化与修复</p>\n<ol>\n<li>评论框样式优化。</li>\n<li>修复小程序消息跳转详情页评论定位不准的问题。</li>\n<li>修复H5进行二次搜索时，搜索的内容过多会导致页面疯狂刷新。</li>\n<li>修复潮流话题列表，话题无内容时，提示语异。</li>\n<li>修复发布帖子有很多标点符号时第一行没添加满会自动跳到第二行。</li>\n<li>修复找回支付密码，点击发送验证，拉起验证码 lite 小程序时点击取消，发送验证码按钮失效，不能再次点击。</li>\n<li>修复站点信息页面，站长头像显示为匿名头像。</li>\n<li>修复我的钱包的数据遮挡。</li>\n</ol>\n<p>管理后台优化与修复</p>\n<ol>\n<li>绑定手机开关优化。</li>\n<li>修复付费模式永久有效，勾选提交后，页面刷新后又变成选中加入起几天后的选项。实际是永久有效。</li>\n<li>修复后台云点播设置文案错误。</li>\n</ol>\n', '208.87.132.216', 34309, 0, 0, '2021-08-14 00:37:24', '2021-09-07 21:51:13', '2021-09-07 21:51:13', 1, 1, 0, 1);
INSERT INTO `posts` VALUES (277, 2, 104, NULL, NULL, NULL, NULL, '<p>PC 与 H5 前台优化与修复</p>\n<ol>\n<li>修复管理后台设置禁止新用户注册，但 PC 和 H5 端还显示注册按钮。</li>\n<li>修复发悬赏贴，点击发布确认支付后，提示语有误，提示保存草稿中。</li>\n<li>修改 web 端评论定位数据不刷新的问题。</li>\n</ol>\n<p>PC 端优化与修复</p>\n<ol>\n<li>修复点击任何人的个人中心，头像背景图都会和自己的一样。</li>\n</ol>\n<p>小程序/H5优化与修复</p>\n<ol>\n<li>修复小程序的排版问题：上一条A和下一条Q挤在一起。</li>\n<li>修复H5站点信息页面展示的成员头像与成员列表内的头像不一致。</li>\n<li>修复H5外部浏览器付费功能不能正常拉起**支付管理后台修复。</li>\n<li>修复帖子详情页内，点击打赏输入金额时键盘会遮挡一点取消与确认按钮的底部。</li>\n<li>修复帖子分享给未填写过资料的用户，用户编辑评论，点击发布跳转到补充信息页，提示语异常，补充信息页正常显示，点击返回无效。</li>\n<li>修复胶囊里的匿名分享用户未登录时出现。</li>\n<li>修改小程序评论定位的问题。</li>\n<li>修复H5外部浏览器，备案信息展示错位。</li>\n</ol>\n<p>管理后台优化与修复</p>\n<ol>\n<li>修复批量移动到二级分类不起作用，只能移动到二级分类的父类。</li>\n</ol>\n', '221.13.140.87', 6692, 0, 0, '2021-08-20 16:04:04', '2021-09-07 21:51:20', '2021-09-07 21:51:20', 1, 1, 0, 1);
INSERT INTO `posts` VALUES (278, 81, 105, NULL, NULL, NULL, NULL, '<p>top1，平衡性，现在的LOL，平衡性上可以说是最烂的一个版本，下水道英雄之多，令人惊讶，上单蛮王，炼金，大虫子，打野木木，龙龟，猪妹，皇子，蝎子，中路沙漠皇帝，狐狸，下路琴女，都是老牌英雄，基本都已经弱得可以删除的程度，现在把把只有艾克凯隐，神圣青钢影，一脚999，以前游戏就算是下水道英雄，只是玩的人少，现在的下水道英雄，都是已经弱到玩不了的程度，你看狐狸，以前玩的人不多吗？现在就是不行，但是设计师完全忽略了很多弱势英雄，但凡设计师愿意把调整格温弗耶戈阿克尚一半的心思放在船长巨魔蝎子沙皇这种老英雄身上，不至于让玩家诟病好几个版本</p>\n', '134.195.101.35', 32943, 0, 0, '2021-08-20 19:34:31', '2021-08-20 19:34:31', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (279, 82, 105, NULL, NULL, NULL, NULL, '8年撸龄已经不爱玩了，从当初黑切日炎联盟到现在把把塞拉斯破败王格温，差不多该和游戏说再见了。最爱的英雄，妖姬，ez，螳螂。', '134.195.101.35', 38289, 0, 0, '2021-08-20 19:35:42', '2021-08-20 19:35:42', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (280, 82, 106, NULL, NULL, NULL, NULL, '<p>今天想发个帖子吐槽LOL，这个游戏已经彻底的变味儿了，我将从以下几点进行吐槽。我们以S8为分界点！<br />\n一，恶心到极点的匹配机制，S8之前的S34567和s8之后的匹配机制一样，你玩儿一百盘，基本上输赢各占50% ，但是S8之前的匹配机制是，双方不会差太多，你完全可以自己来c，这种感觉就像打江山一样，每一盘胜利都是自己干出来的，有时候队友逆风，你可以叫队友拖住，然后自己用优势弥补队友劣势，从而逆风翻盘。现在的游戏环境就是，躺赢和躺输，你努不努力没有意义，这把能不能赢全看队友，靠自己翻盘的局数，少之又少，几乎没有！这样的游戏环境我感觉恶心。如果一个游戏不能靠自己去奋斗赢得胜利，而是百分之78十完全看天意，那这样的游戏环境没有任何竞技意义。真实状况是这样，你进行了10盘游戏，输了5盘赢了5盘，而那赢的5盘，你挂机都能赢，输的5盘，是你无论如何努力都没有办法赢下来的，虽然说匹配机制胜负55开，但是和你没有多大关系的对局，还有什么意义吗？<br />\n而S8之前的匹配机制，假如结果是赢5输5，那赢的5把几乎都是和自己有很大的关系，输的那5把是因为技不如人，所以同样是输5赢5，感觉却完全不一样。<br />\n就像打篮球，打10场比赛赢5输5，赢的5场库里汤普森杜兰特是你队友，你怎么打都是赢的，输的5场对面是库里汤普森杜兰特，你怎么打都是输的。而s8之前是，你这儿有杜兰特，对面还有库里，所以输赢真的是博弈，双方打的有来有回，最后无论结局，自己都认了，而不是说对面全是库里杜兰特，不管你怎么打都赢不了，或者说队友是杜兰特库里，对面怎么打，自己哪怕挂机不上场，瞎**打，对面都赢不了，这两者有本质的区别。<br />\n2无比快速的游戏节奏，自从S8之后，游戏节奏一天比一天块，我记得几年前看直播，有些主播，带上水友，先送对面15个，然后再开始打，最后竟然赢了，当然，那是S8之前，如果是现在的版本，那是不可能的。***的主播，也不可能像以前那种玩儿。而大部分情况是，这样的，比如对面有阿卡丽，凯隐，亚索，卡特这类英雄，别说15个，对线死上两次，那你这把就不用玩儿了，你就等着，对面像人机一样屠杀你的边路队友吧。因为游戏节奏的加快，所以，滚雪球效应特别明显。而快节奏，竟然把投降时间缩短到15分，以前玩游戏都是逆风等着翻盘，现在的节奏，基本就是逆风投就完事儿了，不是说不能打逆风，而是版本就这样，逆风翻盘难度和s8相比，如果说s8之前逆风翻盘概率有百分之30到我40，而现在的几率就是不到5%几乎。<br />\n3代打太过于猖獗，以前游戏玩家白银黄金白金钻石王者，分布的很合理，如果你是白金的水平，去打黄金或者白银局，基本上赢的概率有95%，而现在，因为代打泛滥，有可能是代练，也有可能是陪玩儿，有可能是同学，同事，网友，朋友，总之，就是经常出现的情况是，发打个黄金局，其实10个里有56个白金1到4的水平，有时候还有钻石大师混迹在里面，就是无论是白银黄金还是白金钻石，你要打的根本不是同水准的玩家，而是远远超越你好几个段位的玩家，甚至你是白金，你去打黄金，可是对面的黄金其实是王者，还双排。有一段时间，我是真不明白，为啥自己赢不了总是，就花几百块请了陪玩儿，对方是王者，我俩费劲全力，结果却是胜率仅仅比我单排高一点点。我记得光晋级赛就打了两次还是三次，经常刚赢两局，就开始两连跪，哇，我和王者双排，打个黄金到白金的排位，没想到对面竟然也有如此多的代打，连代打都这么内卷，这样的环境下，就像我刚才说的，游戏其实有你没你一个样了，这样的竞技环境就没有什么意义了。</p>\n', '134.195.101.35', 41917, 0, 0, '2021-08-20 19:36:10', '2021-08-20 19:36:10', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (281, 82, 106, NULL, NULL, NULL, NULL, '唉，这样的竞技环境，我累了', '134.195.101.35', 47639, 0, 0, '2021-08-20 19:37:01', '2021-08-20 19:37:01', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (282, 83, 105, NULL, NULL, NULL, NULL, '刚退游，朋友叫玩就上号打打娱乐或者灵活。我一个通宵十把赢六把都是掉分，玩***', '134.195.101.35', 42237, 0, 0, '2021-08-20 19:38:36', '2021-08-20 19:38:36', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (283, 83, 106, NULL, NULL, NULL, NULL, '是的，s5赛季的时候白金局打的都很爽，势均力敌靠抓人赢一波的，靠队友拖后期翻盘的，劣势抓人翻盘的，现在根本看不见。', '134.195.101.35', 46217, 0, 0, '2021-08-20 19:39:19', '2021-08-20 19:39:19', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (284, 83, 107, NULL, NULL, NULL, NULL, '<p>当时玩石头人，哪怕被压的补刀少对面3分之2，都没事，只要闻经验就行~<br />\n然后团战给关键位置大招，赢个比赛还是很容易~<br />\n当时我就感叹，这真的是混分巨兽啊！</p>\n<p>但是转眼我又想，我玩其他英雄，为什么胜率低？<br />\n于是我想到了上单位置的定位，以及对英雄的定位~<br />\n以及高手常说的如何赢游戏！</p>\n<p>其实大多数玩家应该和我一样，只顾着研究对线，忽略了这3点~<br />\n还有一心想着c全程<br />\n其实用处都不大，为什么呢？<br />\n因为哪怕你svp，mvp，你数据好，你很C，也未必能赢游戏！<br />\n而且，你要把把都做到超级C，得有多难？对面也不是人机，对吧？</p>\n<p>所以玩好上单，我就想到了，要了解上单的作用，以及了解英雄的作用！</p>\n<p>比如石头人的作用，就是肉，大招！为什么石头人大家都混的很好，因为对石头人的理解，基本都知道，因为他简单啊！</p>\n<p>但是对其他英雄呢？相信大家肯定没多想~</p>\n<p>但是从石头出发，其实都是一个道理：<br />\n1.就是你不能让对手上单发育起来！<br />\n2.你得有基础输出打团！所以第一个核心装备你得有！<br />\n3.你得够肉，更具对手发育情况针对装备，这样才能更好承受伤害，支援队友，保护队友，让队友有足够的输出空间！<br />\n4.团战选择优先级，是保护队友，还是切对面C位？具体看英雄决定~<br />\n5.不让对面英雄滚雪球，限制他们发育，同时保障队友发育~</p>\n', '134.195.101.35', 59871, 0, 0, '2021-08-20 19:39:40', '2021-08-20 19:39:40', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (285, 83, 16, NULL, NULL, NULL, NULL, '做一个讨论区', '134.195.101.35', 33591, 0, 0, '2021-08-20 19:40:13', '2021-08-20 19:40:13', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (286, 84, 108, NULL, NULL, NULL, NULL, '<p>这个月才过了20天。已经禁赛三天2次了。上个月是3次。上赛季764豆。这赛季初一直禁赛。咋玩嘛</p>\n', '134.195.101.35', 58567, 0, 0, '2021-08-20 19:43:34', '2021-08-20 19:43:34', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (287, 84, 16, NULL, NULL, NULL, NULL, '做个交易区', '134.195.101.35', 44441, 0, 0, '2021-08-20 19:44:07', '2021-08-20 19:44:07', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (288, 85, 108, NULL, NULL, NULL, NULL, '不知道', '134.195.101.35', 44285, 0, 0, '2021-08-20 19:46:45', '2021-08-20 19:46:45', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (289, 85, 109, NULL, NULL, NULL, NULL, '<p>想问一下，玩csgo菜是因为鼠标 鼠标垫之类的问题吗？我的鼠标垫买不知道什么东西送的，然后鼠标g302，显示器60hz，现在完美才c+，是因为外设问题吗？</p>\n', '134.195.101.35', 54715, 0, 0, '2021-08-20 19:47:03', '2021-08-20 19:47:03', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (290, 85, 109, NULL, NULL, NULL, NULL, '有人能解答一下吗？', '134.195.101.35', 47689, 0, 0, '2021-08-20 19:47:10', '2021-08-20 19:47:10', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (291, 85, 16, NULL, NULL, NULL, NULL, '做一个在线功能', '134.195.101.35', 48433, 0, 0, '2021-08-20 19:48:00', '2021-08-20 19:48:00', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (292, 86, 109, NULL, NULL, NULL, NULL, '换个3090马上就可以杀疯', '134.195.101.35', 35871, 0, 0, '2021-08-20 19:52:02', '2021-08-20 19:52:02', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (293, 86, 110, NULL, NULL, NULL, NULL, '<p>赛博朋克那么好玩没人玩吗？</p>\n<p> </p>\n', '134.195.101.35', 42163, 0, 0, '2021-08-20 19:52:38', '2021-08-20 19:52:38', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (294, 86, 104, NULL, NULL, NULL, NULL, '为什么都是修复', '134.195.101.35', 58713, 1, 0, '2021-08-20 19:53:11', '2021-08-20 19:53:11', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (295, 86, 111, NULL, NULL, NULL, NULL, '<p>有人知道怎么去外网吗</p>\n', '134.195.101.35', 36029, 0, 0, '2021-08-20 19:54:08', '2021-08-20 19:54:08', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (296, 86, 111, NULL, NULL, NULL, NULL, '暗网也行', '134.195.101.35', 49413, 0, 0, '2021-08-20 19:54:20', '2021-08-20 19:54:20', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (297, 87, 112, NULL, NULL, NULL, NULL, '<p>这游戏前几天下载玩了一下真好玩这个游戏。<br />\n玩到第二章了，做了几个任务。<br />\n一直在探索，风景不错。<br />\n我特别喜欢骑马赶路，喜欢在路上遇到突发事件。（比如抢劫之类的<img src=\"http://91king.xyz/storage/attachments/2021/08/20/WDbQP7KmZNu64gY7w3w491GXjK9HPxs6hkQ9kZwr.png\" alt=\"attachmentId-53\" />）<br />\n这游戏好真实啊。<br />\n我现在钱有1700刀（卖了3根金条）不知道做什么。<br />\n营地里的感叹号是什么意思？<br />\n这么多钱买枪买什么枪呢？</p>\n', '134.195.101.35', 48053, 0, 0, '2021-08-20 19:56:21', '2021-08-20 19:56:21', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (298, 87, 111, NULL, NULL, NULL, NULL, '加我**+1545562154', '134.195.101.35', 42329, 0, 0, '2021-08-20 19:56:57', '2021-08-20 19:56:57', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (299, 87, 111, NULL, NULL, NULL, NULL, '私聊我也行', '134.195.101.35', 58043, 0, 0, '2021-08-20 19:57:04', '2021-08-20 19:57:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (300, 87, 16, NULL, NULL, NULL, NULL, '有点卡', '134.195.101.35', 60947, 0, 0, '2021-08-20 19:58:20', '2021-08-20 19:58:20', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (301, 87, 16, NULL, NULL, NULL, NULL, '优化', '134.195.101.35', 60481, 0, 0, '2021-08-20 19:58:27', '2021-08-20 19:58:27', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (302, 87, 104, 294, 86, NULL, NULL, '还不如加点新功能', '134.195.101.35', 54199, 0, 0, '2021-08-20 19:59:16', '2021-08-20 19:59:16', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (303, 75, 111, NULL, NULL, NULL, NULL, '私聊你了', '134.195.101.35', 44515, 0, 0, '2021-08-20 20:02:03', '2021-08-20 20:02:03', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (304, 75, 16, NULL, NULL, NULL, NULL, '移动端在哪', '134.195.101.35', 51261, 0, 0, '2021-08-20 20:03:44', '2021-08-20 20:03:44', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (305, 88, 113, NULL, NULL, NULL, NULL, '<p>这版本战士英雄太弱了，还有一件巨蛇之牙这种不亏模的nt装备无脑针对就可以，想想赛季初的咳血血手挺近，战士一直在被削弱，战士太惨了，现在战士一个血手就能扛几秒就没了，咳血也回不了多少，就算你在人堆里面顶多回半管，赛季初都能快回满的。这回巨蛇之牙削弱就不能无脑出了，这样血手能多抗一会</p>\n<p> </p>\n', '134.195.101.35', 40781, 0, 0, '2021-08-21 21:07:38', '2021-08-21 21:07:38', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (306, 88, 112, NULL, NULL, NULL, NULL, '私聊你了', '134.195.101.35', 44971, 0, 0, '2021-08-21 21:08:24', '2021-08-21 21:08:24', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (307, 88, 16, NULL, NULL, NULL, NULL, '加个投票功能', '134.195.101.35', 63803, 1, 0, '2021-08-21 21:09:20', '2021-08-21 21:09:20', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (308, 8, 113, NULL, NULL, NULL, NULL, '意思在你认知里一个咳血回满才是正常强度是吧:cahan:', '134.195.101.35', 30123, 0, 0, '2021-08-21 21:12:34', '2021-08-21 21:12:34', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (309, 8, 114, NULL, NULL, NULL, NULL, '<p>白金黄金来个通宵的</p>\n', '134.195.101.35', 5055, 0, 0, '2021-08-21 21:13:08', '2021-08-21 21:13:08', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (310, 89, 115, NULL, NULL, NULL, NULL, '<p>想玩lol，特别菜，不怕被骂，想练一练，但是不知道怎么玩这个游戏...想问问大家这个游戏怎么玩，有什么注意事项吗？感觉进入游戏以后他们都好凶.....（学生党，晚上有时间去练，但是做不到一整天都玩lol）</p>\n', '134.195.101.35', 63005, 0, 0, '2021-08-21 21:15:15', '2021-08-21 21:15:15', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (311, 75, 115, NULL, NULL, NULL, NULL, '你练是打算练什么位置哟', '134.195.101.35', 19235, 0, 0, '2021-08-21 21:19:07', '2021-08-21 21:19:07', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (312, 90, 116, NULL, NULL, NULL, NULL, '<p>15号那天被气得挂了盘机，到现在排位打了2 30把了还一直是低优先级队列盘盘都等五分钟，简直是不让人玩了</p>\n', '134.195.101.35', 37869, 0, 0, '2021-08-21 21:21:16', '2021-08-21 21:21:16', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (313, 90, 115, NULL, NULL, NULL, NULL, '打人机看b站', '134.195.101.35', 18493, 0, 0, '2021-08-21 21:22:06', '2021-08-21 21:22:06', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (314, 90, 16, NULL, NULL, NULL, NULL, '加个投票吧，有些事情想看看别人怎么看的', '134.195.101.35', 20143, 0, 0, '2021-08-21 21:23:08', '2021-08-21 21:23:08', '2021-08-21 21:23:26', 90, 0, 0, 1);
INSERT INTO `posts` VALUES (315, 90, 16, 307, 88, NULL, NULL, '+1', '134.195.101.35', 10557, 0, 0, '2021-08-21 21:23:59', '2021-08-21 21:23:59', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (316, 91, 117, NULL, NULL, NULL, NULL, '<p>一把打完退出来，客户端一直显示重新连接，强制关闭客户端重新登陆，就直接重连黑屏，已经三个小时了</p>\n', '134.195.101.35', 24149, 0, 0, '2021-08-22 19:25:57', '2021-08-22 19:25:57', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (317, 91, 16, NULL, NULL, NULL, NULL, '?', '134.195.101.35', 20557, 0, 0, '2021-08-22 19:26:42', '2021-08-22 19:26:42', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (318, 92, 118, NULL, NULL, NULL, NULL, '<p>本人目前在第二章，没救迈卡没去唐斯那要钱，也没去见亚瑟的前女友，一切都挺好的就是拿不到滚轮闭锁式步枪，有没有什么方法能拿到</p>\n', '134.195.101.35', 38405, 0, 0, '2021-08-22 19:28:54', '2021-08-22 19:28:54', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (319, 92, 117, NULL, NULL, NULL, NULL, '我也是', '134.195.101.35', 60833, 0, 0, '2021-08-22 19:29:19', '2021-08-22 19:29:19', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (320, 93, 119, NULL, NULL, NULL, NULL, '<p>因为使用wegame创建的lol快捷方式登录游戏，直接给我封了一天，我请问官方你礼貌吗？</p>\n', '208.87.132.216', 34457, 0, 0, '2021-08-24 20:56:34', '2021-08-24 20:56:34', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (321, 93, 118, NULL, NULL, NULL, NULL, '任务', '208.87.132.216', 27033, 0, 0, '2021-08-24 20:57:17', '2021-08-24 20:57:17', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (322, 93, 16, NULL, NULL, NULL, NULL, '更新', '208.87.132.216', 63929, 0, 0, '2021-08-24 20:57:32', '2021-08-24 20:57:32', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (323, 94, 120, NULL, NULL, NULL, NULL, '<p>问下小伙伴们，排位华甲获取以后，新赛季会更新吗？还是说拿到了就永久有效了</p>\n', '208.87.132.216', 63909, 0, 0, '2021-08-24 20:58:50', '2021-08-24 20:58:50', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (324, 94, 119, NULL, NULL, NULL, NULL, 'wegame本来就有一堆问题', '208.87.132.216', 14489, 0, 0, '2021-08-24 20:59:15', '2021-08-24 20:59:15', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (325, 4, 121, NULL, NULL, NULL, NULL, '<p>首先说一下 我是六月份回归玩家 手残党技术菜不玩pvp 只玩挑战pve 玩什么游戏基本都是不氪不玩 微氪党 六月回归到现在一个半月 粗略估计氪了两个w<br />\n我属于那种盲目消费的类型 一般花了钱 睡一觉就忘了的那种 下文字数比较多 不愿意看的请绕道隔壁2.97元暗裔 白虎 王魅</p>\n', '208.87.132.216', 23935, 0, 0, '2021-08-24 21:15:11', '2021-08-24 21:15:11', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (326, 3, 121, NULL, NULL, NULL, NULL, '抽不到也不必放个贞子在楼道吓人吧', '208.87.132.216', 43661, 0, 0, '2021-08-24 21:17:42', '2021-08-24 21:17:42', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (327, 67, 122, NULL, NULL, NULL, NULL, '<p>还有上个版本减速90的挺近，相比起来坦克法师刺客ad的神话装真不行。</p>\n', '208.87.132.216', 15527, 0, 0, '2021-08-25 21:20:33', '2021-08-25 21:20:33', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (328, 67, 122, NULL, NULL, NULL, NULL, '<p>上版本挺近真就强无敌装备，没位移等于直接罚站，但已经被设计师一刀砍废了，那我想知道神分渴血什么时候砍?</p>', '208.87.132.216', 58617, 0, 0, '2021-08-25 21:20:41', '2021-08-25 21:20:41', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (329, 81, 123, NULL, NULL, NULL, NULL, '<p>top1，平衡性，现在的LOL，平衡性上可以说是最烂的一个版本，下水道英雄之多，令人惊讶，上单蛮王，炼金，大虫子，打野木木，龙龟，猪妹，皇子，蝎子，中路沙漠皇帝，狐狸，下路琴女，都是老牌英雄，基本都已经弱得可以删除的程度，现在把把只有艾克凯隐，神圣青钢影，一脚999，以前游戏就算是下水道英雄，只是玩的人少，现在的下水道英雄，都是已经弱到玩不了的程度，你看狐狸，以前玩的人不多吗？现在就是不行，但是设计师完全忽略了很多弱势英雄，但凡设计师愿意把调整格温弗耶戈阿克尚一半的心思放在船长巨魔蝎子沙皇这种老英雄身上，不至于让玩家诟病好几个版本</p>\n', '208.87.132.216', 47819, 0, 0, '2021-08-25 21:21:39', '2021-08-25 21:21:39', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (330, 95, 124, NULL, NULL, NULL, NULL, '<p>人头多也秒杀不了对面的辅助泽拉斯，人家有闪现，征服者凭什么秒掉，感觉现在锐雯肉刮痧不说了，脆皮也是刮痧，副w和主w电刑穿透秒杀脆皮才快。穿甲流容错率低？战士流才低，操作失误一点就会差伤害，就可能导致<br />\n崩盘，伤害高了qwa脆皮就没了，一刀半血。现在的征服者要很高操作不能失误才能秒杀人，一个r放跑的敌人还不多吗，穿透就是基础连招就可以秒了，而且er3awqrq对面滚起雪球的也能交不出闪现被秒杀，<br />\n穿透r打到脆皮身上，至少掉60%的血，征服者r呵呵10%都不一定斩杀.没了真伤征服者就是个屁。</p>\n', '208.87.132.216', 19831, 0, 0, '2021-08-25 21:23:20', '2021-08-25 21:23:20', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (331, 96, 123, NULL, NULL, NULL, NULL, '确实', '208.87.132.216', 63677, 0, 0, '2021-08-25 21:24:44', '2021-08-25 21:24:44', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (332, 96, 125, NULL, NULL, NULL, NULL, '<h3>玩了十年现在还混迹在黄金，我还有希望嘛</h3>\n', '208.87.132.216', 57613, 0, 0, '2021-08-25 21:25:38', '2021-08-25 21:25:38', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (333, 96, 16, NULL, NULL, NULL, NULL, '1', '208.87.132.216', 16593, 0, 0, '2021-08-25 21:26:12', '2021-08-25 21:26:12', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (334, 97, 126, NULL, NULL, NULL, NULL, '<p>而且是那种游戏中可以设定躲谁的技能，不躲谁的，而且可以一键开关。真的离谱，官方再不加大力度，我想我真的要玩不下去了</p>\n', '134.195.101.21', 50531, 0, 0, '2021-09-01 23:06:17', '2021-09-01 23:06:17', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (335, 98, 127, NULL, NULL, NULL, NULL, '<p>克隆是真杀币 官方 绝对有问题 为啥没把都对面比自己强 这把用寒冰对面用剑圣 下把用扎克对面又寒冰 克的死死的 真没意思 反正把把都没人家阵容强 一天了</p>\n', '134.195.101.21', 31951, 0, 0, '2021-09-01 23:07:41', '2021-09-01 23:07:41', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (336, 98, 126, NULL, NULL, NULL, NULL, '已经碰见很多了', '134.195.101.21', 55301, 0, 0, '2021-09-01 23:08:36', '2021-09-01 23:08:36', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (337, 98, 16, NULL, NULL, NULL, NULL, '更新', '134.195.101.21', 33677, 0, 0, '2021-09-01 23:09:42', '2021-09-01 23:09:42', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (338, 99, 128, NULL, NULL, NULL, NULL, '', '134.195.101.21', 27483, 0, 0, '2021-09-02 23:07:58', '2021-09-02 23:07:58', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (339, 100, 129, NULL, NULL, NULL, NULL, '<p>退役退役，再也不想看到这人了，太装了！！！</p>\n', '134.195.101.21', 48073, 0, 0, '2021-09-02 23:09:54', '2021-09-02 23:09:54', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (340, 100, 128, NULL, NULL, NULL, NULL, '小天就离谱', '134.195.101.21', 20359, 0, 0, '2021-09-02 23:10:49', '2021-09-02 23:10:49', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (341, 100, 16, NULL, NULL, NULL, NULL, '网站怎么不更新了', '134.195.101.21', 11947, 0, 0, '2021-09-02 23:11:36', '2021-09-02 23:11:36', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (342, 101, 130, NULL, NULL, NULL, NULL, '<p>希望一切顺利</p>\n', '134.195.101.21', 18577, 0, 0, '2021-09-02 23:13:28', '2021-09-02 23:13:28', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (343, 3, 131, NULL, NULL, NULL, NULL, '<p><strong>python大致的阶段学习路线图：</strong><br />\n<strong>1.python基础：</strong><br />\n<strong>2.python高级编程：</strong><br />\n<strong>3.python全栈前端、后端：</strong><br />\n<strong>4.Linux编程学习：</strong><br />\n<strong>5.python大数据、人工智能学习：</strong></p>\n', '134.195.101.21', 7465, 0, 1, '2021-09-04 20:12:41', '2021-09-04 20:26:42', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (344, 3, 131, NULL, NULL, NULL, NULL, '', '134.195.101.21', 19981, 0, 0, '2021-09-04 20:19:47', '2021-09-04 20:19:47', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (345, 3, 132, NULL, NULL, NULL, NULL, '<p><strong>一、Python基础知识、变量、数据类型</strong><br />\n<strong>二、Python条件结构、循环结构</strong><br />\n<strong>三、Python函数</strong><br />\n<strong>四、综合练习，做一个控制台的员工管理</strong></p>\n<pre><code>&quot;&quot;&quot;\nprint(&quot;helloworld&quot;)\na=123\nb=\'a\'\nc=[1,2,3,4]\nprint(a,b,c,sep=\'\\n\')\n\nprint(&quot;C:\\\\demo&quot;)\n\nch=&quot;南京&quot;\nch1=&quot;工程学院&quot;\nch2=&quot;学院&quot;\nprint(ch+ch1+ch2)\nprint(&quot;地址是：%s,\\n学校是：%s&quot;%(ch,ch1))\n\nage=19\nmessage=\'我今年{}岁了,就读于{}\'.format(age,ch)\nprint(message)\n\nname=\'admin\'\n\nprint(id(name),name)\n\nname1=name\n\nprint(id(name1),name1)\n\nname2=&quot;admin&quot;\nprint(id(name2),name2)\n\nnum=8\nprint(id(num),num)\n\nnum+=5\nprint(id(num),num)\n\nhell=3\nprint(hell**3)\n\n\nprint(&quot;hello&quot;*3)\n&quot;&quot;&quot;\n<span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span>##\n\'\'\'\n需求：员工管理系统\n功能：\n1.添加员工信息\n2.删除员工信息\n3.修改员工信息\n4.查看单个员工信息\n5.查看所有员工信息\n6.退出\n\nKMOWLEDGE:函数，数据类型（列表字典），循环，条件语句\n\'\'\'\nemps=[]\n\ndef choiceFunc():\n        \'\'\'选择功能列表\'\'\'\n        print(&quot;*&quot;*30)\n        print(&quot;1.添加员工信息&quot;)\n        print(&quot;2.删除员工信息&quot;)\n        print(&quot;3.修改员工信息&quot;)\n        print(&quot;4.查看单个员工信息&quot;)\n        print(&quot;5.查看所有员工信息&quot;)\n        print(&quot;6.退出&quot;)\n\ndef addEmp():\n        \'\'\'添加员工信息\'\'\'\n        Id=input(&quot;请输入员工编号：&quot;)\n        name=input(&quot;请输入员工姓名：&quot;)\n        gender=input(&quot;请输入员工性别：&quot;)\n        age=input(&quot;请输入员工年龄:&quot;)\n        emp={\'Id\':Id,\'name\':name,\'gender\':gender,\'age\':age}\n        emps.append(emp)\n        print(&quot;添加OK!&quot;)\n\ndef delEmp():\n        choice=(int)(input(&quot;1.按编号删除\\\\2.按姓名删除：&quot;))\n        if choice==1:\n                ID=input(&quot;请输入要删除的员工编号:&quot;)\n                for i in emps:\n                        if i.get(\'Id\')==ID:\n                                emps.remove(i)\n                                print(&quot;删除OK!&quot;)\n                                break\n                        else:\n                                print(&quot;请输入正确的员工编号：&quot;)\n        elif choice==2:\n                name=input(&quot;请输入要删除的员工姓名：&quot;)\n                for k in emps:\n                        if k.get(\'name\')==name:\n                                emps.remove(k)\n                                print(&quot;删除OK!&quot;)\n                                break\n                        else:\n                                print(&quot;请输入正确的员工姓名：&quot;)\n        else:\n                print(&quot;请输入正确的指令：&quot;)\n\ndef updateEmp():\n        \'\'\'修改员工信息\'\'\'\n        ID=input(&quot;请输入要修改的员工编号：&quot;)\n        for elem in emps:\n                if elem.get(\'Id\')==ID:\n                        elem[&quot;name&quot;]=input(&quot;请输入修改后的员工姓名：&quot;)\n                        elem[&quot;gender&quot;]=input(&quot;请输入修改后的员工性别：&quot;)\n                        elem[&quot;age&quot;]=input(&quot;请输入要修改后的员工年龄：&quot;)\n                        print(&quot;修改成功！！！&quot;)\n                        break\n                else:\n                        print(&quot;查无此人！&quot;)\n\ndef getEmpByld():\n        \'\'\'查看单个员工信息\'\'\'\n        select=(int)(input(&quot;1.按编号查询\\\\2.按姓名查询：&quot;))\n        if select==1:\n                ID=input(&quot;请输入要查询的员工编号:&quot;)\n                for emp in emps:\n                        if emp.get(\'Id\')==ID:\n                                print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(emp[&quot;Id&quot;],emp[&quot;name&quot;],emp[&quot;gender&quot;],emp[&quot;age&quot;]))\n                                break\n                        else:\n                                print(&quot;查无此人!!!&quot;)\n        elif select==2:\n                name=input(&quot;请输入要查询的员工姓名：&quot;)\n                for j in emps:\n                        if j.get(\'name\')==name:\n                                print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(j[&quot;Id&quot;],j[&quot;name&quot;],j[&quot;gender&quot;],j[&quot;age&quot;]))\n                                break\n                        else:\n                                print(&quot;查无此人!!!&quot;)\n        else:\n                print(&quot;请输入正确的指令：&quot;)\n\n\ndef getEmpAll():\n        \'\'\'查看所有员工信息\'\'\'\n        for emp in emps:\n                print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(emp[&quot;Id&quot;],emp[&quot;name&quot;],emp[&quot;gender&quot;],emp[&quot;age&quot;]))\n        print(&quot;一共查询到%d多少条数据信息&quot;%(len(emps)))\n\n\n\ndef Main():\n        print(&quot;*******欢迎使用员工系统*******&quot;)\n        while True:\n                choiceFunc()\n                num=(int)(input(&quot;请输入指令：&quot;))\n                if num==1:\n                        #pass\n                        addEmp()\n                elif num==2:\n                        #pass\n                        delEmp()\n                elif num==3:\n                        #pass\n                        updateEmp()\n                elif num==4:\n                        #pass\n                        getEmpByld()\n                elif num==5:\n                        #pass\n                        getEmpAll()\n                elif num==6:\n                        print(&quot;您已退出系统！！！&quot;)\n                        break\n                else:\n                        print(&quot;请输入正确的指令：&quot;)\nMain()\n</code></pre>\n<p><strong>五、字符串</strong><br />\n<strong>六、列表与元组</strong><br />\n<strong>七、字典与集合</strong><br />\n<strong>八、文件对象</strong><br />\n<strong>九、模块与包(评论区)</strong> </p>\n', '134.195.101.21', 21383, 0, 1, '2021-09-04 20:24:21', '2021-09-04 20:40:05', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (346, 3, 132, NULL, NULL, NULL, NULL, '', '134.195.101.21', 28503, 0, 0, '2021-09-04 20:24:51', '2021-09-04 20:24:51', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (347, 3, 132, NULL, NULL, NULL, NULL, '', '134.195.101.21', 58621, 0, 0, '2021-09-04 20:25:04', '2021-09-04 20:25:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (348, 3, 133, NULL, NULL, NULL, NULL, '<pre><code>  &quot;&quot;&quot;\n  print(&quot;helloworld&quot;)\n  a=123\n  b=\'a\'\n  c=[1,2,3,4]\n  print(a,b,c,sep=\'\\n\')\n  \n  print(&quot;C:\\\\demo&quot;)\n  \n  ch=&quot;南京&quot;\n  ch1=&quot;工程学院&quot;\n  ch2=&quot;学院&quot;\n  print(ch+ch1+ch2)\n  print(&quot;地址是：%s,\\n学校是：%s&quot;%(ch,ch1))\n  \n  age=19\n  message=\'我今年{}岁了,就读于{}\'.format(age,ch)\n  print(message)\n  \n  name=\'admin\'\n  \n  print(id(name),name)\n  \n  name1=name\n  \n  print(id(name1),name1)\n  \n  name2=&quot;admin&quot;\n  print(id(name2),name2)\n  \n  num=8\n  print(id(num),num)\n  \n  num+=5\n  print(id(num),num)\n  \n  hell=3\n  print(hell**3)\n  \n  \n  print(&quot;hello&quot;*3)\n  &quot;&quot;&quot;\n  <span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span><span id=\"topic\" value=\"1\">##</span>##\n  \'\'\'\n  需求：员工管理系统\n  功能：\n  1.添加员工信息\n  2.删除员工信息\n  3.修改员工信息\n  4.查看单个员工信息\n  5.查看所有员工信息\n  6.退出\n  \n  KMOWLEDGE:函数，数据类型（列表字典），循环，条件语句\n  \'\'\'\n  emps=[]\n  \n  def choiceFunc():\n          \'\'\'选择功能列表\'\'\'\n          print(&quot;*&quot;*30)\n          print(&quot;1.添加员工信息&quot;)\n          print(&quot;2.删除员工信息&quot;)\n          print(&quot;3.修改员工信息&quot;)\n          print(&quot;4.查看单个员工信息&quot;)\n          print(&quot;5.查看所有员工信息&quot;)\n          print(&quot;6.退出&quot;)\n  \n  def addEmp():\n          \'\'\'添加员工信息\'\'\'\n          Id=input(&quot;请输入员工编号：&quot;)\n          name=input(&quot;请输入员工姓名：&quot;)\n          gender=input(&quot;请输入员工性别：&quot;)\n          age=input(&quot;请输入员工年龄:&quot;)\n          emp={\'Id\':Id,\'name\':name,\'gender\':gender,\'age\':age}\n          emps.append(emp)\n          print(&quot;添加OK!&quot;)\n  \n  def delEmp():\n          choice=(int)(input(&quot;1.按编号删除\\\\2.按姓名删除：&quot;))\n          if choice==1:\n                  ID=input(&quot;请输入要删除的员工编号:&quot;)\n                  for i in emps:\n                          if i.get(\'Id\')==ID:\n                                  emps.remove(i)\n                                  print(&quot;删除OK!&quot;)\n                                  break\n                          else:\n                                  print(&quot;请输入正确的员工编号：&quot;)\n          elif choice==2:\n                  name=input(&quot;请输入要删除的员工姓名：&quot;)\n                  for k in emps:\n                          if k.get(\'name\')==name:\n                                  emps.remove(k)\n                                  print(&quot;删除OK!&quot;)\n                                  break\n                          else:\n                                  print(&quot;请输入正确的员工姓名：&quot;)\n          else:\n                  print(&quot;请输入正确的指令：&quot;)\n  \n  def updateEmp():\n          \'\'\'修改员工信息\'\'\'\n          ID=input(&quot;请输入要修改的员工编号：&quot;)\n          for elem in emps:\n                  if elem.get(\'Id\')==ID:\n                          elem[&quot;name&quot;]=input(&quot;请输入修改后的员工姓名：&quot;)\n                          elem[&quot;gender&quot;]=input(&quot;请输入修改后的员工性别：&quot;)\n                          elem[&quot;age&quot;]=input(&quot;请输入要修改后的员工年龄：&quot;)\n                          print(&quot;修改成功！！！&quot;)\n                          break\n                  else:\n                          print(&quot;查无此人！&quot;)\n  \n  def getEmpByld():\n          \'\'\'查看单个员工信息\'\'\'\n          select=(int)(input(&quot;1.按编号查询\\\\2.按姓名查询：&quot;))\n          if select==1:\n                  ID=input(&quot;请输入要查询的员工编号:&quot;)\n                  for emp in emps:\n                          if emp.get(\'Id\')==ID:\n                                  print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(emp[&quot;Id&quot;],emp[&quot;name&quot;],emp[&quot;gender&quot;],emp[&quot;age&quot;]))\n                                  break\n                          else:\n                                  print(&quot;查无此人!!!&quot;)\n          elif select==2:\n                  name=input(&quot;请输入要查询的员工姓名：&quot;)\n                  for j in emps:\n                          if j.get(\'name\')==name:\n                                  print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(j[&quot;Id&quot;],j[&quot;name&quot;],j[&quot;gender&quot;],j[&quot;age&quot;]))\n                                  break\n                          else:\n                                  print(&quot;查无此人!!!&quot;)\n          else:\n                  print(&quot;请输入正确的指令：&quot;)\n  \n  \n  def getEmpAll():\n          \'\'\'查看所有员工信息\'\'\'\n          for emp in emps:\n                  print(&quot;编号：%s\\n姓名：%s\\n性别：%s\\n年龄：%s&quot;%(emp[&quot;Id&quot;],emp[&quot;name&quot;],emp[&quot;gender&quot;],emp[&quot;age&quot;]))\n          print(&quot;一共查询到%d多少条数据信息&quot;%(len(emps)))\n  \n  \n  \n  def Main():\n          print(&quot;*******欢迎使用员工系统*******&quot;)\n          while True:\n                  choiceFunc()\n                  num=(int)(input(&quot;请输入指令：&quot;))\n                  if num==1:\n                          #pass\n                          addEmp()\n                  elif num==2:\n                          #pass\n                          delEmp()\n                  elif num==3:\n                          #pass\n                          updateEmp()\n                  elif num==4:\n                          #pass\n                          getEmpByld()\n                  elif num==5:\n                          #pass\n                          getEmpAll()\n                  elif num==6:\n                          print(&quot;您已退出系统！！！&quot;)\n                          break\n                  else:\n                          print(&quot;请输入正确的指令：&quot;)\n  Main()\n</code></pre>\n', '134.195.101.21', 34527, 0, 0, '2021-09-04 20:30:38', '2021-09-04 20:38:37', '2021-09-04 20:38:37', 3, 1, 0, 1);
INSERT INTO `posts` VALUES (349, 102, 134, NULL, NULL, NULL, NULL, '<p>想找几个一起玩的兄弟好难啊（主要是我太菜了）<br />\n电一有没有兄弟每天晚上来整几把啊，正常水平，不看段位，别把兄弟们坑麻了就行:fanu:</p>\n', '134.195.101.21', 36247, 0, 0, '2021-09-04 20:55:36', '2021-09-04 20:55:36', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (350, 102, 16, NULL, NULL, NULL, NULL, '怎么停更了', '134.195.101.21', 28553, 0, 0, '2021-09-04 20:56:20', '2021-09-04 20:56:20', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (351, 103, 135, NULL, NULL, NULL, NULL, '<p>有没有一起抢手游注册id呢，来组队，**我拉你，或者我进你队也可以</p>\n', '134.195.101.21', 32273, 0, 0, '2021-09-04 21:07:10', '2021-09-04 21:07:10', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (352, 103, 134, NULL, NULL, NULL, NULL, '私聊你了', '134.195.101.21', 53443, 0, 0, '2021-09-04 21:08:05', '2021-09-04 21:08:05', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (353, 104, 136, NULL, NULL, NULL, NULL, '<p>想聊一些白银局很多人上分问题。（给那些真正想上分的人来看）<br />\n1大环境：整体水平确实都提高了，特别是操作这块不比黄金差。意识呢有，但是不高，偶尔灵光但是大部分病态。还有很多前几个赛季在黄金和白金4，5水平的这几个赛季都有可能还在白银。导致水平参差不齐。<br />\n2想上分就得研究版本，不能经常随着自己性子玩那些不强的英雄。多玩强势和近期好上分英雄是首选。在白银局有很大一批坑都是一直玩瑞文，亚索的。这些英雄特点就是操作难度极高，控制不稳定不好配合打野。打团容错率极低，熟练度和意识要求极高。吃天赋，真正有天赋的玩这些早钻石以上了。那些玩了几百上千还在白银的，真的想劝劝你们放弃这几个英雄排位。匹配娱乐随你们玩。<br />\n3对线意识。很多可以说大部分白银对线意识确实差的离谱，甚至连兵线原理不懂，不知道如何利用兵线建立优势以及开阔视野。这些控线细节直接决定你是否能击杀对面和防止打野抓死。所以经常看到很多人即使玩那种很好单杀的英雄比如劫，男刀等等。对线了几十分钟却拿不到一个人头，而且极大可能还会被对面打野抓蹦。然后这把能不能赢只能靠其他队友是否能c。说到底线上取得不了优势就是自己问题。一把，两把可能不是自己问题，经常这样只能说对线细节太差，即使不死，也只能靠混上分。这样肯定上不了分。<br />\n4再说版本。当前版本装备和技能数值伤害溢出，护甲和血量成长不高。大家进场都是各种秒。很多玩家还是不研究版本去玩那种自己没熟练度和意识驾驭不起来的英雄。比如经常可以看见的vn(进场容易被秒，前期发育碰到手长的根本没法对线，队友给不了输出环境，即使有装备也打不了多少输出)所以这种英雄还是少玩，白银路人局不会有人保自己ad。<br />\n5游戏玩的少的玩家，这个是硬伤。很多英雄熟练度不够，英雄池潜，对自己英雄伤害都没有把握更不用说对自己队友伤害。所以经常有入场时机不对，或者跟不上队友情况。这个英雄理解是参差不齐的，所以这也是白银局配合极差的主要原因。<br />\n6辅助位我单独说一下。白银局已经几乎看不到正常和会一点点的辅助了。其实想上分就是考验自己游戏理解和基本功，这个没有捷径可言，辅助位置是可以增加自己和队友配合以及游走意识的最好位置。如果每个人不花时间去玩下辅助我敢打包票，你的游戏水平绝对有个长期瓶颈和无法突破的点。<br />\n最后上分干货：两种玩家分别说。第一老玩家：1赶快去找版本上分强势英雄。找一个最适合自己的，然后多练练。尽量争取每把都可以把对面打爆，这是最低要求。（因为路人局单排上分最少要一打3才能赢，对线都没有优势更别谈上分了）2碰到不合理阵容一定要沟通，沟通不了要舍得秒，不然进去也是输。什么是不合理阵容，打个比方对面一堆控，你们这边基本没稳定控制和打团配合，开团等英雄大概率会输。3不要下路上分，建议放弃。实在要玩下路建议玩游走类型辅助，老玩家应该知道什么是游走型，风女就是很好例子。下路没优势或者有优势都需要去其他路帮忙，扩大优势。4单排过程中一定要发掘玩的好或者配合度好的英雄，拉他们以后进行双排，有条件的请高段位陪玩一起。5当自己双排队友没上线，自己又想玩建议克制自己，尽量不要单排，单排只会无限增加你上分速度，赢1把输一把没有任何含义。宁愿去玩匹配等自己玩的好队友上线再排位。否则即使你把把单路把对面杀穿，系统还是会安排让你上不了分的队友。懂的都懂。<br />\n下面说下新手玩家怎么上分：1上面有说到，版本装备和技能数值溢出来所以选择英雄是决定你上分关键。多玩不需要太多操作但是伤害爆炸英雄，比如石头人。2不要玩下路和打野，新手没几万把游戏经验，驾驭不了这几个位置。只玩中和上路。3实在线上打不出优势改完上路装甲坦克，保证不死到打团混分就行。或者玩控多猥琐英雄，比如小法。打团可以打团控和aoe伤害.<br />\n4.留意打的好的打野队友，拉进去双排，多帮你抓。当然如果打野比你强，你英雄熟练度又一般，建议选硬控多的这样配合更容易，比如小法，石头人，泰坦，潘森。5不要好奇玩那些高操作或者需要高熟练度的英雄，一定要忍住，不然玩一次自己坑自己一次。6新手号其实系统一般比较友好，匹配到的队友不会太离谱。平时多看看回放和别人视频，增加对游戏理解。<br />\n插曲ad方面：个人认为版本最好白银局上分ad就是轮子妈，而且也是唯一不依靠辅助的ad，即使辅助玩的跟屎一样，或者躲你后面放技能完全不影响。先说原理：1符文方面带艾离和血量高于百分之70增加伤害那个，副系选红色增加伤害眼石，以及增加非战争状态下移动速度，或者吸血。这套符文的好处就是最大化把你数值增加，前期你的平a和q将会比百分之99，ad输出都高。<br />\n2打架尽量放弃你平a想法（除非输出环境很好），你把你q用好，刮2下，比你任何平a伤害都高。关键是还可以保命，你能平a到对面，对面技能或者平a也能打到你。在这个版本打团基本ad还没平a几次就暴毙了！3利用好清线最快的优势。比如对面打野喜欢抓下，一波兵一个q加几下w平a基本就收掉了，然后没兵缩自己塔下，打野不可能还会来抓你。如果队友崩了，你也可以用同样原理快速清线，让线很难进塔，守家第一人。最后，熟练度高可以根据阵容把艾利换成黑暗收割，核心打法还是尽量抛弃平a，用q打伤害。不太建议用ad上分，但是这个ad可以试试。<br />\n最后最后，系统强制匹配队友保持胜率这点的克星只能是双排，白银玩家不要幻想一夜到钻石，这个很吃天赋。好好双排加上我上面的建议，上分是最快的。</p>\n', '134.195.101.21', 50085, 0, 0, '2021-09-07 21:34:54', '2021-09-07 21:34:54', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (354, 104, 135, NULL, NULL, NULL, NULL, '来我的', '134.195.101.21', 27531, 0, 0, '2021-09-07 21:36:03', '2021-09-07 21:36:03', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (355, 105, 136, NULL, NULL, NULL, NULL, '还有一个 系统制裁 就给我卡黄金四 要么队友开局犯病一级团送头心态爆炸 要么打一半挂机恶心队友 我自己也就只能做到不坑不c 对线几乎都能赢 但是队友就硬给养出个大爹', '134.195.101.21', 5599, 0, 0, '2021-09-07 21:37:04', '2021-09-07 21:37:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (356, 105, 137, NULL, NULL, NULL, NULL, '<p>我打完一把游戏，突然多了一个什么回归大礼的活动，先是整个客户端放了一大段以前cg的混剪，然后完事，出来一个信封让我点，我一点就说访问人数过多，我重新登陆发下不见了，叫回归大礼那个活动，在客户端里面，没去网吧，在家里</p>\n', '134.195.101.21', 62747, 0, 0, '2021-09-07 21:37:22', '2021-09-07 21:37:22', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (357, 105, 138, NULL, NULL, NULL, NULL, '<p>养老玩家求收，只玩官服，上班党，时间不固定，需要的留下联系方式我加。</p>\n', '134.195.101.21', 8535, 0, 0, '2021-09-07 21:38:48', '2021-09-07 21:38:48', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (358, 106, 139, NULL, NULL, NULL, NULL, '<p>官方和平服现在还有恶意占地的现象吗？我不想玩战争服，不想自己辛辛苦苦建立起来的东西一夜就被打没了，而且喜欢自己一个人玩，不太希望加入部落。<br />\n还有就是，这游戏现在多大？不是刚安装完的大小，而是玩了一段时间之后的大小。</p>\n', '134.195.101.21', 3063, 0, 0, '2021-09-07 21:39:49', '2021-09-07 21:39:49', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (359, 106, 16, NULL, NULL, NULL, NULL, '现在网站没人管了吗', '134.195.101.21', 29631, 0, 0, '2021-09-07 21:40:29', '2021-09-07 21:40:29', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (360, 106, 138, NULL, NULL, NULL, NULL, '一起啊，**2840493212', '134.195.101.21', 30765, 0, 0, '2021-09-07 21:40:50', '2021-09-07 21:40:50', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (361, 107, 139, NULL, NULL, NULL, NULL, '准备500G', '134.195.101.21', 17509, 0, 0, '2021-09-07 21:43:18', '2021-09-07 21:43:18', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (362, 107, 140, NULL, NULL, NULL, NULL, '<p>烧！卡婊 我滴超人</p>\n', '134.195.101.21', 61943, 0, 0, '2021-09-07 21:43:45', '2021-09-07 21:43:45', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (363, 107, 57, NULL, NULL, NULL, NULL, '还行', '134.195.101.21', 61311, 0, 0, '2021-09-07 21:46:08', '2021-09-07 21:46:08', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (364, 108, 141, NULL, NULL, NULL, NULL, '<p>感觉好难写出那种社会分层的割裂感。<br />\n很想写出那种从破败街道底层慢慢上升到整个霓虹灯闪烁的摩天大厦的震撼场景。</p>\n', '134.195.101.21', 64745, 0, 0, '2021-09-07 21:53:12', '2021-09-07 21:53:12', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (365, 108, 140, NULL, NULL, NULL, NULL, '这腿:tiaopi:', '134.195.101.21', 17663, 0, 0, '2021-09-07 21:55:04', '2021-09-07 21:55:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (366, 108, 16, NULL, NULL, NULL, NULL, '网站已经废了吗？', '134.195.101.21', 16645, 0, 0, '2021-09-07 21:55:52', '2021-09-07 21:55:52', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (367, 109, 142, NULL, NULL, NULL, NULL, '<p>好久没怎么玩了，最近又想回来上上分练练ad</p>\n', '134.195.101.21', 49474, 0, 0, '2021-09-11 14:12:54', '2021-09-11 14:12:54', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (368, 110, 143, NULL, NULL, NULL, NULL, '<p>已经摸清规律了，这就是为什么很多钻石大师虽然段位上去了，依然很辣鸡的原因，并不是因为他们有多强（当然有双排带上去和真的很强的人，想必各位钻石，大师，王者高段位大神也在自己段位遇到这过这种辣鸡队友吧），但是依然能上去分。<br />\n1强行胜率百分之五十左右，这个大家都知道不是什么秘密了。<br />\n2几天不打，一上来就连胜，连胜后必连败。<br />\n3冲点钱，大概率匹配会玩的队友，长时间不充钱就给你辣鸡队友。<br />\n4每天第一把赢了后再打，直到输为止，输一把就下线，然后第二天或者第三天再玩，反复这样做，后台系统就会读取你是娱乐玩家，经常给你好队友，为了最大化留住你。<br />\n5如果你是死磕那种人，连输了还不走，就经常给你辣鸡队友，或者经常给你不玩的位置（我最离谱的一把是五个队友都不是在自己的位置，辛好那把我沟通后有四个人换过来了，强行赢了一把），就这样利用心理学pua你。<br />\n6系统会每天读取你的盘数，盘数多的利用心理学pua附着粘性，盘数一般的五五开，盘数少的利用胜多败少吸引。</p>\n', '134.195.101.21', 14459, 0, 0, '2021-09-15 21:47:44', '2021-09-15 21:47:44', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (369, 110, 140, NULL, NULL, NULL, NULL, '玩吗', '134.195.101.21', 38281, 0, 0, '2021-09-15 21:52:50', '2021-09-15 21:52:50', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (370, 111, 144, NULL, NULL, NULL, NULL, '<p>1.弱势路没人选，强势路选的人太多！<br />\n从面板数值可以看出，上路的强度是所有位置中高得离谱的。如果两个上路选手有较大的水平差距，那么打野是照顾不了的。一是等级和装备的劣势，二是上路的路程太长，往返消耗掉太多时间！</p>\n<p>2.资源分配不合理<br />\n下路放龙，上路放峡谷。如果你是一名主攻ADC的玩家，前期如果其他路逆风，只有下路对线有一定优势，你肯定需要抢峡谷先锋来尽快抱团，结束又长又臭的对线期。<br />\n如果你是一名打野，更想要的是小龙，而不是峡谷先锋。如果小龙放在上路，一是可以制约过强的上路属性，二是下路被打得逆风，小龙位置放在下路打野是很难拿到小龙的。加上打野不是靠刷野起来的英雄。和线上对刷没有任何优势！</p>\n<p>3.强度分配不合理<br />\n打野难以建立优势（等级低线上崩了带不了节奏）<br />\n辅助没有成长优势（前期有强度但没人理，后期肉起来也很难肉过上单）<br />\n<br />\n4.神话装备能契合的英雄不多<br />\n所以神话装造就了两个问题，要么选契合度高的英雄赢下比赛，要么选契合度低的英雄获得失败！造成了玩法过于的单调！</p>\n', '134.195.101.21', 50629, 0, 0, '2021-09-15 21:55:39', '2021-09-15 21:55:39', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (371, 111, 143, NULL, NULL, NULL, NULL, '确实', '134.195.101.21', 28139, 0, 0, '2021-09-15 21:56:04', '2021-09-15 21:56:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (372, 111, 16, NULL, NULL, NULL, NULL, '不更？', '134.195.101.21', 44041, 0, 0, '2021-09-15 21:57:26', '2021-09-15 21:57:26', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (373, 3, 145, NULL, NULL, NULL, NULL, '<p>811231806<br />\n13213630562</p>\n', '134.195.101.21', 7123, 0, 0, '2021-09-18 00:02:49', '2021-09-18 00:02:49', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (374, 112, 146, NULL, NULL, NULL, NULL, '<p>晚上想着玩两把LOL，上号发现一个人在玩，而且玩了好几局游戏了，我就改了个密码，然后发现号被封了七天，理由是第三方软件，本来想着自认倒霉，申请处罚减免，结果现在七天变三年了，有没有大佬出出主意有啥办法，玩了六七年了，挺不甘心的.</p>\n', '104.168.83.91', 33628, 0, 0, '2021-09-21 21:17:19', '2021-09-21 21:17:19', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (375, 112, 145, NULL, NULL, NULL, NULL, '????', '104.168.83.91', 33726, 0, 0, '2021-09-21 21:17:43', '2021-09-21 21:17:43', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (376, 112, 145, NULL, NULL, NULL, NULL, '什么鬼', '104.168.83.91', 33770, 0, 0, '2021-09-21 21:17:53', '2021-09-21 21:17:53', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (377, 112, 16, NULL, NULL, NULL, NULL, '<span id=\"member\" value=\"2\">@Jerome</span>', '104.168.83.91', 33908, 0, 0, '2021-09-21 21:18:15', '2021-09-21 21:18:15', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (378, 113, 147, NULL, NULL, NULL, NULL, '<p>用心做皮肤用脚做游戏，打一把一把掉，还无法重连….有没有人知道，网络绝对没问题</p>\n', '104.168.83.91', 34764, 0, 0, '2021-09-21 21:20:29', '2021-09-21 21:20:29', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (379, 113, 146, NULL, NULL, NULL, NULL, 'LOL现在就是这样', '104.168.83.91', 34922, 0, 0, '2021-09-21 21:20:57', '2021-09-21 21:20:57', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (380, 113, 146, NULL, NULL, NULL, NULL, '垃圾游戏一个', '104.168.83.91', 34932, 0, 0, '2021-09-21 21:21:09', '2021-09-21 21:21:09', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (381, 113, 16, NULL, NULL, NULL, NULL, '?', '104.168.83.91', 34990, 0, 0, '2021-09-21 21:21:32', '2021-09-21 21:21:32', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (382, 114, 147, NULL, NULL, NULL, NULL, 'LOL不一直都是这样', '104.168.83.91', 35374, 0, 0, '2021-09-21 21:23:09', '2021-09-21 21:23:09', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (383, 114, 148, NULL, NULL, NULL, NULL, '<p>这个有技巧嘛？今天转到了站台载具，这个东西贵吗。新人不太懂，麻烦告诉一下</p>\n', '104.168.83.91', 35512, 0, 0, '2021-09-21 21:23:24', '2021-09-21 21:23:24', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (384, 8, 148, NULL, NULL, NULL, NULL, '手放上去10秒在转', '104.168.83.91', 35822, 0, 0, '2021-09-21 21:24:29', '2021-09-21 21:24:29', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (385, 3, 149, NULL, NULL, NULL, NULL, '<p>inquire</p>\n<p> </p>\n', '104.168.83.91', 40546, 0, 0, '2021-09-21 21:49:49', '2021-09-21 21:49:49', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (386, 3, 1, NULL, NULL, NULL, NULL, 'https://www.zhihu.com/question/321913492?utm_source=wechat_session', '104.168.83.91', 42354, 0, 0, '2021-09-21 22:00:08', '2021-09-21 22:00:08', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (387, 3, 145, NULL, NULL, NULL, NULL, '906839075', '134.195.101.35', 61543, 0, 0, '2021-09-25 21:53:26', '2021-09-25 21:53:26', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (388, 115, 150, NULL, NULL, NULL, NULL, '<p>开电脑好好的，开进加载界面直接笔记本断网，连无线网的选项都没有，什么鬼啊到底是</p>\n', '134.195.101.21', 8771, 0, 0, '2021-09-30 22:20:50', '2021-09-30 22:20:50', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (389, 95, 151, NULL, NULL, NULL, NULL, '<p>能不能别乱带节奏啊，不看兵线抓上，<br />\n结果导致上路崩盘，亏不亏心里没数吗，<br />\n劣势路可以帮但是要在兵线很好的时候，<br />\n兵线进塔年来抓，杀掉还亏死</p>\n', '134.195.101.21', 7033, 0, 0, '2021-09-30 22:23:05', '2021-09-30 22:23:05', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (390, 95, 149, NULL, NULL, NULL, NULL, '什么东西', '134.195.101.21', 6585, 0, 0, '2021-09-30 22:23:48', '2021-09-30 22:23:48', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (391, 95, 134, NULL, NULL, NULL, NULL, '1', '134.195.101.21', 3071, 0, 0, '2021-09-30 22:24:27', '2021-09-30 22:24:27', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (392, 95, 150, NULL, NULL, NULL, NULL, ':fadai:', '134.195.101.21', 22733, 0, 0, '2021-09-30 22:25:09', '2021-09-30 22:25:09', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (393, 116, 152, NULL, NULL, NULL, NULL, '<p>登录后，选完区，就不显示了，防火墙关了、电脑管家卸载了，还是没用，有人知道怎么搞吗？？？</p>\n', '134.195.101.21', 30955, 0, 0, '2021-09-30 22:27:12', '2021-09-30 22:27:12', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (394, 116, 150, NULL, NULL, NULL, NULL, '买个新主机', '134.195.101.21', 9499, 0, 0, '2021-09-30 22:27:42', '2021-09-30 22:27:42', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (395, 116, 151, NULL, NULL, NULL, NULL, '盲猜，白银黄金上单平时要么压在对面塔下或被压在自己塔下，打不赢就怪打野', '134.195.101.21', 17067, 0, 0, '2021-09-30 22:27:52', '2021-09-30 22:27:52', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (396, 116, 16, NULL, NULL, NULL, NULL, 'S', '134.195.101.21', 4519, 0, 0, '2021-09-30 22:28:13', '2021-09-30 22:28:13', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (397, 117, 153, NULL, NULL, NULL, NULL, '<p>上午刚刚买的战斗学院EZ，下午就没了</p>\n', '103.152.113.197', 1088, 0, 0, '2021-10-03 21:22:38', '2021-10-03 21:22:38', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (398, 118, 153, NULL, NULL, NULL, NULL, '怎么可能', '103.152.113.35', 1716, 0, 0, '2021-10-03 21:23:29', '2021-10-03 21:23:29', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (399, 118, 154, NULL, NULL, NULL, NULL, '<p>啥都不会那种:xieyanxiao:<br />\n纯纯过来练心态那种</p>\n', '103.152.113.225', 2036, 0, 0, '2021-10-03 21:24:07', '2021-10-03 21:24:07', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (400, 119, 154, NULL, NULL, NULL, NULL, '哪个区', '103.152.113.116', 2714, 0, 0, '2021-10-03 21:25:23', '2021-10-03 21:25:23', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (401, 119, 155, NULL, NULL, NULL, NULL, '<p>我不用wegame就只能下载补丁是怎么回事？强行让人用你伴生软件？</p>\n', '103.152.113.1', 2880, 0, 0, '2021-10-03 21:25:48', '2021-10-03 21:25:48', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (402, 8, 155, NULL, NULL, NULL, NULL, '我四五天前都有下载器下载的选项，今天去看就只有wegame了', '103.152.113.35', 3140, 0, 0, '2021-10-03 21:26:25', '2021-10-03 21:26:25', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (403, 8, 154, NULL, NULL, NULL, NULL, '玩个猫 带飞', '103.152.113.88', 3310, 0, 0, '2021-10-03 21:26:44', '2021-10-03 21:26:44', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (404, 8, 152, NULL, NULL, NULL, NULL, '重装', '103.152.113.228', 3608, 0, 0, '2021-10-03 21:27:04', '2021-10-03 21:27:04', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (405, 8, 151, NULL, NULL, NULL, NULL, '正常', '103.152.113.163', 3716, 0, 0, '2021-10-03 21:27:15', '2021-10-03 21:27:15', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (406, 120, 156, NULL, NULL, NULL, NULL, '<p>这个游戏到底怎么了？匹配机制越来越沙雕了，我想问问，这是故意的么？</p>\n', '103.152.113.191', 4516, 0, 0, '2021-10-03 21:28:49', '2021-10-03 21:28:49', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (407, 120, 155, NULL, NULL, NULL, NULL, '腾讯不一直是这样吗', '103.152.113.249', 4798, 1, 0, '2021-10-03 21:29:23', '2021-10-03 21:29:23', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (408, 120, 155, 407, 120, NULL, NULL, '强制让使用自己的软件', '103.152.113.24', 5350, 0, 0, '2021-10-03 21:30:38', '2021-10-03 21:30:38', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (409, 122, 157, NULL, NULL, NULL, NULL, '<p>换了个电脑，mk2只能鼠标开火了，以前在小破站上看教程把开火键改成0，现在换了个电脑改不回去了，那个教程也找不到了，有没有知道的大佬告知一下:hecai::hecai::hecai:</p>\n', '103.152.113.62', 62634, 0, 0, '2021-10-18 21:49:18', '2021-10-18 21:49:18', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (410, 122, 16, NULL, NULL, NULL, NULL, 'bug有点多', '103.152.113.19', 63148, 0, 0, '2021-10-18 21:49:48', '2021-10-18 21:49:48', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (411, 122, 156, NULL, NULL, NULL, NULL, '已经退游了', '103.152.113.179', 63856, 0, 0, '2021-10-18 21:50:26', '2021-10-18 21:50:26', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (412, 123, 158, NULL, NULL, NULL, NULL, '<p>有偿 速通 有没有大佬能带一下！ 感谢感谢！ 最好能通宵</p>\n', '103.152.113.122', 65380, 0, 0, '2021-10-18 21:52:00', '2021-10-18 21:52:00', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (413, 123, 157, NULL, NULL, NULL, NULL, '默认', '103.152.113.134', 1356, 0, 0, '2021-10-18 21:52:30', '2021-10-18 21:52:30', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (414, 123, 16, NULL, NULL, NULL, NULL, '提示我账号异常能看一下怎么回事吗', '103.152.113.49', 1734, 0, 0, '2021-10-18 21:52:49', '2021-10-18 21:52:49', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (415, 124, 159, NULL, NULL, NULL, NULL, '<p>不会玩猫咪就办了不行吗？非要去抢猫咪。<br />\n劣势一点翻盘点都没有。lpl优势就是打架啊，不选抓机会开团辅助，玩啥呢？<br />\n你看看几个队伍玩的猫咪，真的浪费辅助一个位置。真是谁上谁都行。反正就挂机嘛</p>\n', '103.152.113.150', 4160, 0, 0, '2021-10-18 21:55:26', '2021-10-18 21:55:26', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (416, 124, 158, NULL, NULL, NULL, NULL, '私聊', '103.152.113.198', 5120, 0, 0, '2021-10-18 21:56:40', '2021-10-18 21:56:40', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (417, 125, 160, NULL, NULL, NULL, NULL, '<p>卢仙娜美组合，不愧是下路T0组合，我的娜美基本是Q不到人的，但是只要点出电刑这个天赋，对线必特么优势，卧槽。<br />\n卢仙滑步过去点点，我上个w，触发电刑，一套下去对面AD直接大残好家伙，艾欧尼亚好几个千场白金的AD选手，在我的教唆下使用卢仙，都说太爽了，那伤害直接拉满，操作都透着一股子自信的味道，对线压制力拉满，团战疯狂操作输出，强得像个大师，卢仙娜美，不愧是版本T0，大家还有别的下路T0组合吗。</p>\n', '103.152.113.122', 7142, 0, 0, '2021-10-18 21:58:35', '2021-10-18 21:58:35', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (418, 125, 158, NULL, NULL, NULL, NULL, 'ID多少', '103.152.113.215', 8110, 0, 0, '2021-10-18 21:59:26', '2021-10-18 21:59:26', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (419, 125, 159, NULL, NULL, NULL, NULL, '今年没希望了，烂掉了', '103.152.113.227', 8260, 0, 0, '2021-10-18 21:59:43', '2021-10-18 21:59:43', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (420, 125, 16, NULL, NULL, NULL, NULL, '卖东西吗', '103.152.113.27', 8648, 0, 0, '2021-10-18 22:00:12', '2021-10-18 22:00:12', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (421, 126, 161, NULL, NULL, NULL, NULL, '<p>看了今年的比赛，感觉和s7到s10的lpl相比就是没有一个或多个选手能站出来。比如s7的mlxg和uzi，s8的ig三叉戟，s9的天，s10的阿bin，今年没啥让人眼前一亮可以靠自己操作逆天改命的，全都打的比较稳健，优势送机会，劣势没能力找机会:cahan:这样的比赛看着也郁闷啊。</p>\n<p> </p>\n', '103.152.113.63', 10410, 0, 0, '2021-10-18 22:01:34', '2021-10-18 22:01:34', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (422, 127, 162, NULL, NULL, NULL, NULL, '<p>之前ns版的时候因为正式版快出了就没想着练这怪了，这两天趁着pc试玩练了几天终于打过了</p>\n<p>:liulei::liulei::liulei:</p>\n<p>打起来有当年打王咩的感觉了:xieyanxiao::xieyanxiao:</p>\n<p> </p>\n', '103.152.113.70', 16920, 0, 0, '2021-10-18 22:08:31', '2021-10-18 22:08:31', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (423, 127, 161, NULL, NULL, NULL, NULL, ':juhua:', '103.152.113.1', 18014, 0, 0, '2021-10-18 22:09:39', '2021-10-18 22:09:39', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (424, 127, 16, NULL, NULL, NULL, NULL, '没办法使用', '103.152.113.38', 18584, 0, 0, '2021-10-18 22:10:10', '2021-10-18 22:10:10', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (425, 3, 163, NULL, NULL, NULL, NULL, '<p><strong>======================</strong></p>\n<p><strong>第一天</strong></p>\n<p><strong>================</strong></p>\n<p><strong>1.Spring框架作用和优点</strong></p>\n<p><strong>Spring提供了一个整合应用平台。<br />\n该框架具有IOC和AOP机制的实现，<br />\n基于这些特性开发系统，<br />\n可以提高系统结构的灵活性，<br />\n降低组件之间的耦合度。</strong></p>\n<pre><code>在整合应用，\n我们会将应用程序的Action,DAO,Service组件交给Spring框架负责管理，\n使用Spring框架的IOC和AOP机制以低耦合方式建立关联。\n</code></pre>\n<p>*<strong>2.Spring框架容器</strong></p>\n<pre><code>Spring框架提供了一个容器，主要在该容器中管理应用程序的各个组件，建立组件关联</code></pre>\n<p><strong>1）容器特性，如何实例化</strong></p>\n<pre><code>Spring容器首先具有工厂特性，除此之外还具备了IOC和AOP机制的实现。</code></pre>\n<p><strong>BeanFactory&lt;-继承-ApplicationContext<br />\n两个实现类:<br />\nClassPathApplicationContext<br />\nFileSystemApplicationContext</strong></p>\n<p><strong>2）容器如何对Bean组件管理</strong></p>\n<pre><code>当将一个Bean组件交给Spring容器后，Spring容器可以负责创建、销毁该对象。\n\n\n*a.Bean对象创建模式\n\n Spring容器支持singleton和prototype两种模式创建对象。\n 默认为singleton，如果想改变可以使用scope属性定义。\n （如果在Web整合应用，还支持request,session等值）\n\n\nb.Bean对象的创建时机\n\nsingleton 模式对象在容器实例化时创建，\n通过lazy=true属性可以将创建推迟到getBean方法。\nprototype 模式对象在getBean方法时创建\n</code></pre>\n<p><strong>c.Bean对象初始化设置</strong></p>\n<p><strong>通过init-method属性可以指定一个方法当做初始化方法，<br />\n在对象创建后自动执行。</strong></p>\n<p><strong>通过destroy-method属性可以指定一个销毁方法，<br />\n在对象被垃圾回收前自动执行。<br />\n（仅对singleton对象有效）</strong></p>\n<p>*<strong>3.Spring框架的IOC机制</strong></p>\n<p><strong>1)IOC概念</strong></p>\n<pre><code>Inverse of Controller 被称为反向控制、控制反转。\n更确切的讲应该是控制的转移。\n</code></pre>\n<p><strong>意思是当两个组件之间具有使用关系时，<br />\n原有将对象创建和关系指定逻辑交给了使用一方负责。<br />\n最终导致了两个组件耦合度过高，<br />\n为维护和组件替换带来的不便。<br />\n采用了IOC机制后，<br />\n会将对象创建和关系指定这些逻辑交给第三方框架或容器负责，<br />\n将这些控制逻辑转移给了第三方负责，<br />\n这样发生变更后，只需要修改第三方配置就可以了。</strong></p>\n<p><strong>2)DI概念（Dependency Injection）</strong></p>\n<pre><code>DI被称为依赖注入。Spring框架中IOC机制是通过DI技术实现的。\nDI注入技术有以下几种实现：\n</code></pre>\n<p>*<strong>a.setter方式注入（推荐）</strong></p>\n<pre><code> 依靠setter方法接收注入的对象实例\n --添加setter方法\n --采用&lt;property&gt;描述\n</code></pre>\n<p><strong>b.constructor方式注入</strong></p>\n<pre><code> 依靠构造方法接收注入的对象实例\n --添加带参数构造方法\n --采用&lt;constructor-arg&gt;描述\n</code></pre>\n<p><strong>4.DI注入的使用</strong></p>\n<h1>可以通过注入技术注入各种不同类型的数据</h1>\n<p><strong>1)注入一个Bean对象<br />\n采用ref=&quot;Bean的ID名称&quot;<br />\n<code>   &lt;property name=&quot;costDao&quot; ref=&quot;hibernateCostDao&quot;&gt;</code> <br />\n<code>&lt;/property&gt;</code> <br />\n2)注入一个基本类型数据<br />\n采用value=&quot;值&quot;<br />\n<code>   &lt;property name=&quot;password&quot; value=&quot;123456&quot;&gt;</code> <br />\n<code>&lt;/property&gt;</code> <br />\n3)注入集合类型数据<br />\nList,Set,Map,Properties</strong></p>\n<p><strong>第二天</strong></p>\n<p><strong>================</strong></p>\n<p><strong>1.Spring框架的AOP机制</strong></p>\n<p><strong>1)什么是AOP和优点</strong></p>\n<p><strong>Apsect Oriented Programming面向方面编程。<br />\n面向方面编程是以OOP面向对象编程为基础。<br />\nAOP关注的是共通处理问题，可以将共通处理封装成一个组件（方面组件），<br />\n然后采用AOP机制可以以低耦合方式作用到指定的目标组件上。</strong></p>\n<p><strong>2)AOP使用步骤</strong></p>\n<pre><code>a.引入Spring的IOC和AOP开发包\nb.添加Spring容器配置文件\nc.将共通处理封装成一个独立Bean组件\nd.采用AOP配置将Bean组件作用到其它目标组件及其方法上\n</code></pre>\n<p><strong>3)AOP相关概念</strong></p>\n<pre><code> *a.方面(Aspect)\n  方面指的封装共通处理的组件。可以灵活的切入到目标对象及方法上。\n *b.切入点(Pointcut)\n  切入点用于指定目标对象及方法，利用特定表式指定目标对象及方法\n c.连接点(JoinPoint)\n 连接点指的是方面和某一个目标方法的关联点。切入点是连接点的集合\n *d.通知(Advice)\n  通知用于指定方面功能在目标对象方法上执行的时机。\n  例如方法前、方法后、异常发生后等。\n e.目标组件(Target)\n  使用方面功能的Bean组件，或者切入点指定的Bean组件\n f.动态代理(AutoProxy)\n 动态代理机制是AOP机制的实现原理.\n Spring框架在使用AOP配置后，返回的Bean对象，\n 是采用动态代理机制生成的一个新类型。\n 该类型的方法负责去执行方面组件和目标组件的处理。\n</code></pre>\n<p><strong>Spring框架采用了两种方式生成动态代理类。<br />\n--采用CGLIB工具生成(目标对象没有接口)<br />\npublic class 代理类 extends 原目标组件{<br />\n// 重写原目标组件的方法<br />\n}<br />\n--采用JDK Proxy API生成(目标对象有接口)<br />\npublic class 代理类 implements 原目标组件接口{<br />\n// 重写原目标组件的方法<br />\n}</strong></p>\n<p>*<strong>4)切入点表达式</strong></p>\n<pre><code>利用表达式指定目标组件及方法。</code></pre>\n<p><em><em><em><em><em>a.方法限定表达式<br />\nexecution(修饰符?<br />\n返回类型 方法名(参数列表) throws异常?)<br />\n示例1:匹配容器中所有组件以add开始的方法<br />\nexecution(</em> add</em> (..))<br />\n示例2:匹配CostService组件的所有方法<br />\nexecution(</em><br />\norg.tarena.service.CostService.<em>(..))<br />\n示例3:匹配service包下所有类的所有方法<br />\nexecution(</em> org.tarena.service.<em>.</em> (..))<br />\n示例4:匹配service包下及其子包中所有类的所有方法<br />\nexecution(</em> org.tarena.service..<em>.</em> (..))</em>***</p>\n<p>**<em><em><em>b.类型限定表达式<br />\nwithin(类型)<br />\n示例1:匹配CostService类中所有方法<br />\nwithin(org.tarena.service.CostService)<br />\n示例2:匹配service包下所有类的所有方法<br />\nwithin(org.tarena.service.</em> )<br />\n示例3:匹配service包及其子包所有类所有方法<br />\nwithin(org.tarena.service..</em> )</em> ***</p>\n<p>*<em><strong>c.Bean名称限定表达式<br />\nbean(Bean的id或name属性值)<br />\n示例1:匹配id=costAction的Bean组件方法<br />\nbean(costAction)<br />\n示例2:匹配名称以DAO结尾的Bean组件方法<br />\nbean(<em>DAO)<br />\nd.参数限定表达式<br />\nargs(参数列表)<br />\n示例1:匹配只有一个参数，并且符合Serializable类型<br />\nargs(java.io.Serializable)<br />\n(注意:上述表达式可以采用&amp;&amp;,||连接在一起)</em></strong></em></p>\n<p><strong>5)通知类型</strong></p>\n<p><strong>通知主要用于指定方面组件在目标组件方法上作用的时机。<br />\na.前置通知<a href=\"aop:before\">aop:before</a><br />\n方面组件在目标方法之前调用<br />\nb.后置通知<a href=\"aop:after-returnning\">aop:after-returnning</a><br />\n方面组件在目标方法之后调用，如果目标方法抛出异常，将不再执行方面组件<br />\nc.最终通知<a href=\"aop:after\">aop:after</a><br />\n方面组件在目标方法之后调用，目标方法有无异常都会执行<br />\nd.异常通知<a href=\"aop:after-throwing\">aop:after-throwing</a><br />\n方面组件在目标方法抛出异常后执行。<br />\ne.环绕通知<a href=\"aop:around\">aop:around</a><br />\n方面组件在目标方法之前和之后都要执行<br />\ntry{<br />\n// 前置通知--执行方面组件<br />\n// 执行目标方法<br />\n// 后置通知--执行方面组件<br />\n}catch(Exception ex){<br />\n// 异常通知--执行方面组件<br />\n}finally{<br />\n// 最终通知--执行方面组件<br />\n}</strong></p>\n<p><strong>6)采用AOP记录异常日志信息</strong></p>\n<p><strong>a.编写记录异常信息的方面组件ExceptionBean<br />\nb.将方面组件定义到Spring容器<br />\nc.添加AOP配置，定义切入点，方面和通知元素</strong></p>\n<p><strong>7)Log4j工具简介</strong></p>\n<p><strong>Log4j是一款日志工具。<br />\n优点：该日志器可以灵活的控制输出信息的级别和输出的方式。<br />\nLog4j主要由以下3部分构成：<br />\na.日志器组件<br />\n(Logger)</strong></p>\n<h1>提供了消息输出的方法，可以按消息级别输出</h1>\n<p><strong>b.输出器组件(Appender)<br />\n用于指定消息采用哪种方式输出。例如以文件形式输出，以控制台形式输出<br />\nc.布局器组件(Layout)<br />\n用于指定消息输出的格式。<br />\n一个日志器可以指定多个不同的输出器，每个输出器只能对应一个布局器。</strong></p>\n<p><strong>第三天</strong></p>\n<p><strong>===========</strong></p>\n<p><strong>1.Spring注解配置的使用</strong></p>\n<p><strong>注解技术源于JDK 5.0,从Spring2.5版本开始支持注解配置形式，可以替代原有的XML配置。<br />\n注解可以在类定义、方法定义、成员定义前使用。</strong></p>\n<p><strong>1)<code>&lt;bean&gt;</code>  元素和注入的配置</strong></p>\n<pre><code> 可以采用组件扫描技术替代原有的&lt;bean&gt;定义和注入配置。\n 使用方法如下：\n a.在applicationContext.xml中开启组件扫描功能，指定要扫描的package路径  \n b.如果需要将组件扫描到Spring容器，需要在组件类定义前使用以下注解标记。\n  --@Controller\n  --@Service\n  --@Repository\n  --@Component\n 默认扫描到容器采用类名首字母小写当id值，\n 如果需要指定可采用@Service(&quot;id值&quot;)格式指定。\n 如果需要修改scope创建对象的模式，\n 可使用@Scope(&quot;prototype&quot;)格式指定\nc.如果两个组件之间有注入关系，可以在变量定义前或setter方法前使用下面注解标记\n --@Resource\n --@Autowired\n 如果不指定注入的id名，会采用类型匹配注入。\n @Resource(name=&quot;costDao&quot;)将指定的costDao对象注入。\n</code></pre>\n<p><strong>2)<code>&lt;aop&gt;</code>  元素配置</strong></p>\n<pre><code> AOP注解配置的使用方法如下：\na.在applicationContext.xml中开启AOP注解配置。\nb.在方面组件中使用以下注解标记。\n--@Aspect // 将Bean组件定义成方面，类定义前使用\n--@Pointcut// 定义切入点表达式,方法定义前使用。因此需要编写个空方法，才能使用该标记。\n--通知定义,@Around,@Before,\n  @After,@AfterReturning,\n  @AfterThrowing,在方法前使用\n</code></pre>\n<p><strong>2.利用Spring整合JDBC和Hibernate</strong></p>\n<p><strong>1)Spring框架对数据库访问技术提供了以下支持</strong></p>\n<pre><code>a.提供了一致的异常处理层次.提供了一套异常类型，例如DataAccessException  \nb.提供了编写DAO的一套工具类,主要有DaoSupport和Template两种封装类型。\n</code></pre>\n<p><strong>JDBC技术:JdbcDaoSupport,JdbcTemplate<br />\nHibernate技术:HibernateDaoSupport,<br />\nHibernateTemplate<br />\nc.提供了事务管理的支持。只需要添加AOP配置即可。</strong></p>\n<p><strong>2)Spring和Jdbc技术的整合</strong></p>\n<p><strong>--新建工程，引入jar包<br />\n(spring开发包,ojdbc.jar,dbcp开发包)<br />\n--在src下添加applicationContext.xml<br />\n--针对COST表编写实体类<br />\n--编写CostDAO接口,定义要实现的方法<br />\n--编写JdbcCostDAO实现类<br />\n(继承JdbcDaoSupport,在方法体中使用JdbcTemplate类完成增删改查操作)<br />\nupdate:用于增、删、改操作<br />\nqueryForObject:用于查询一条记录<br />\nquery:用于查询多条记录<br />\nqueryForInt:用于查询一个数值的<br />\n--将JdbcCostDAO在Spring容器中定义<br />\n--追加一个连接池，在Spring容器中定义一个dataSource组件对象Bean，<br />\n并将该Bean组件对象给JdbcCostDAO注入。<br />\n(JdbcDaoSupport里有一个setDataSource方法，<br />\n接收容器注入的DataSource对象，<br />\n利用DataSource对象实例化JdbcTemplate)</strong></p>\n<p><strong>3)Spring和Hibernate技术的整合</strong></p>\n<pre><code>--创建工程，引入开发包\n(spring开发包,ojdbc.jar,dbcp连接池,hibernate框架开发包)\n--在src下添加applicationContext.xml\n--针对数据表添加实体类和映射描述文件\n  (Cost类,Cost.hbm.xml)\n--编写CostDAO接口\n--编写实现类HibernateCostDAO\n (继承HibernateDaoSupport,采用HibernateTemplate的方法完成增删改查)\n  save():添加\n  update():更新\n  delete():删除\n  load(),get():按主键查询\n  find():执行HQL语句\n--在Spring容器配置HibernateCostDAO\n</code></pre>\n<p><strong>需要事先定义DataSource,SessionFactory<br />\n组件对象，按DataSource-注入-&gt;<br />\nSessionFactory-注入-&gt;<br />\nHibernateCostDAO顺序建立关联</strong></p>\n<h1>提示：如果需要在DAO中使用Session，</h1>\n<p><strong>可以采用DaoSupport的getSession()获取，<br />\n也可以通过HibernateTemplate.execute方法以回调方式使用。<br />\n(参考spring_03_2中HibernateCostDAO.java的useSession()方法)</strong></p>\n<p><strong>第四天</strong></p>\n<p><strong>================</strong></p>\n<p><strong>1.Spring框架整合Struts2步骤</strong></p>\n<p>*<em><strong>a.创建工程，引入开发包<br />\nStruts开发包,Spring开发包<br />\nb.添加Struts控制器配置和struts.xml配置文件<br />\n<em>c.引入struts2-spring-plugin.jar整合包<br />\n然后将 <code>&lt;action&gt;</code>  配置的class指定为Spring容器中Action组件定义的id值。<br />\n(plugin.jar整合包提供一个StrutsSpringObjectFactory,采用该组件获取Action对象。<br />\n该组件可以访问Spring容器，获取容器中定义的Bean对象)</em></strong></em></p>\n<p>*<strong>d.在web.xml中添ContextLoaderListener组件,用于在启动服务器时实例化Spring容器</strong></p>\n<p><strong>2.struts-spring-plugin.jar作用</strong></p>\n<p><strong>该plugin.jar提供了一个StrutsSpringObjectFactory类，<br />\n当引入该jar后，Struts2会采用该组件获取Action对象<br />\nObjectFactory在获取Action对象时，有以下两种途径：</strong></p>\n<p>****a.利用 <code>&lt;action&gt;</code>  元素的class属性值去Spring容器中寻找Bean对象，寻找规则是id=class值<br />\n参考(ssh2-2.jpg结构图)<br />\nb.如果利用 <code>&lt;action&gt;</code>  的class属性值去Spring容器获取不到Bean对象，<br />\nObjectFactory会利用反射机制创建一个Action对象，<br />\n然后访问Spring容器，<br />\n将容器中id名与Action属性一致的Bean对象注入给Action。<br />\n参考(ssh2-1.jpg结构图)<br />\ntry{<br />\n// 第一种利用class值去Spring获取Bean对象<br />\n}catch(){<br />\n// 第二种自己创建一个Action，之后将Spring中的Bean对象给Action属性注入。<br />\n//注入规则是属性名=id值<br />\n}****</p>\n<p><strong>3.SSH学习建议</strong></p>\n<p><strong>XML和注解配置，XML配置方式了解，学会使用注解配置形式。<br />\nStruts2+Spring整合，建议采用ssh2-1.jpg结构整合。<br />\n掌握：ssh2-1.jpg采用注解方法整合应用。<br />\n（参考spring_04_4的demo2案例）</strong></p>\n<p><strong>======================</strong></p>\n<p><strong>第五天</strong></p>\n<p><strong>===================</strong></p>\n<p>*<strong>1.重构netctoss系统的资费管理模块处理</strong></p>\n<p><strong>1)重构资费列表显示功能<br />\na.梳理处理流程<br />\n/cost/list.action--&gt;ListCostAction<br />\n--&gt;CostDAO.findAll/getTotalPages<br />\n--&gt;cost_list.jsp<br />\nb.重构CostDAO的findAll/getTotalPages<br />\n（参考原来总结过的Spring+Hibernate步骤）<br />\nc.测试Spring容器中的DAO<br />\nd.改造ListCostAction<br />\n--引入struts-spring-plugin.jar<br />\n--将Spring容器中的DAO给Action注入<br />\ne.在web.xml中添加ContextLoaderListener配置，启动服务器时实例化Spring容器对象。</strong></p>\n<p><strong>2)重构资费修改操作</strong></p>\n<p><strong>a.梳理处理流程<br />\n/cost/detail.action--&gt;DetailCostAction<br />\n--&gt;CostDAO.findById--&gt;cost_detail.jsp<br />\nb.重构CostDAO.findById方法<br />\n由于前面重构已经将CostDAO交给Spring容器管理，因此只要将findById实现就可以了<br />\nc.重构DetailCostAction<br />\n--将Spring容器中的DAO给Action注入<br />\nd.测试功能</strong></p>\n<p>*<strong>3)Spring对Hibernate延迟加载操作的支持<br />\n为了支持Hibernate延迟加载操作，<br />\nSpring提供了一个Filter组件，<br />\n该组件为OpenSessionInViewFilter。<br />\n可以在web.xml中定义该Filter。<br />\n这样可以将Template方法关闭Session时机推迟到JSP解析之后。<br />\n注意：定义在StrutsFilter之前才有效</strong></p>\n<p>*<strong>2.Spring的事务管理</strong></p>\n<pre><code>Spring提供了以下两种事务管理方法</code></pre>\n<p>*<strong>a.声明式事务管理<br />\n以AOP配置的形式实现事务管理<br />\nJDBC事务管理的方面组件：<br />\n（DataSourceTransactionManager）<br />\nHibernate事务管理的方面组件：<br />\n（HibernateTransactionManager）<br />\n事务管理通知：&lt;tx:advice&gt;<br />\n切入点：根据实际情况编写表达式<br />\n-----如果采用注解方式配置事务------<br />\n首先在applicationContext中开启事务注解<br />\n<code>   &lt;bean id=&quot;txManager&quot; class=&quot;org.springframework.orm.hibernate3.HibernateTransactionManager&quot;&gt;</code> <br />\n<code>   &lt;property name=&quot;sessionFactory&quot; ref=&quot;sessionFactory&quot;&gt;</code> <br />\n<code>&lt;/property&gt;</code> <br />\n<code>&lt;/bean&gt;</code> <br />\n&lt;tx:annotation-driven<br />\ntransaction-manager=&quot;txManager&quot;/&gt;<br />\n然后在目标组件中，使用@Transactional.<br />\n该标记可用在类定义和方法定前。类定义前指定全局，方法定以前指定当前方法。<br />\nb.编程式事务管理(简单了解)<br />\n在业务组件中添加事务管理代码.<br />\n代码中使用TransactionTemplate控制事务</strong></p>\n<p><strong>3.Spring MVC框架</strong></p>\n<p><strong>1)了解Spring MVC主要实现<br />\nSpring提供的MVC框架主要有以下实现组件：<br />\n控制器DispatcherServlet，Controller<br />\n映射处理器HandlerMapping<br />\n视图解析器ViewResolver<br />\n模型和视图ModelAndView</strong></p>\n<p><strong>2)了解Spring MVC的处理流程<br />\na.客户端发送请求，请求交给DispatcherServlet控制器<br />\nb.DispatcherServlet控制器调用HandlerMapping映射器组件，<br />\n根据请求找到对应的Controller组件<br />\n(HandlerMapping组件负责维护请求和Controller组件的对应关系)<br />\nc.控制器调用请求对应的Controller处理请求，也可以调用DAO实现对数据库的操作<br />\nd.Controller处理完毕后，会返回一个ModelAndView对象。<br />\n(ModelAndView负责封装响应数据和视图名)<br />\ne.控制器会调用ViewResolver组件，<br />\n根据ModelAndView信息，<br />\n定位到指定的JSP，生成响应的HTML结果<br />\nf.将响应结果输出，为客户浏览器显示</strong></p>\n<p><strong>3)入门示例<br />\n--基于XML配置的示例<br />\na.引入spring ioc和springmvc开发包<br />\nb.在src下添加applicationContext.xml<br />\nc.在web.xml中添加DispatcherServlet配置,<br />\n指定classpath:applicationContext.xml<br />\nd.编写Controller组件，实现Controller接口，<br />\n实现handleRequest方法。<br />\ne.在Spring配置文件中定义Controller组件，<br />\n定义handlerMapping和viewResolver组件</strong></p>\n<pre><code> --基于注解配置的示例(推荐)\n   a.引入spring ioc和springmvc开发包\n   b.在src下添加applicationContext.xml\n   c.在web.xml中添加DispatcherServlet配置,\n   指定classpath:applicationContext.xml\n   d.在applicationContext.xml中定义\n</code></pre>\n<p><strong>AnnotationMethodHandlerAdapter（支持注解的handlerMapping组件）和viewResolver组件。<br />\n开启组件扫描配置。<br />\ne.编写Action组件。<br />\nAction类定义前使用@Controller将Action扫描到容器。<br />\n业务方法前使用@RequestMapping,指定该方法处理哪个请求<br />\n————————————————</strong></p>\n', '42.228.228.203', 5185, 0, 0, '2021-10-22 13:27:41', '2021-10-22 13:30:34', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (426, 128, 164, NULL, NULL, NULL, NULL, '<p>什么话都不说 就一直拉人 拒绝了又拉 而且还是不同的人<br />\n也不是最近一起游戏的人 我看ID 近期几十盘里面都没有</p>\n', '42.228.228.203', 7006, 0, 0, '2021-10-22 13:50:09', '2021-10-22 13:50:09', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (427, 128, 164, NULL, NULL, NULL, NULL, '<p>邀请的都是自定义 进去了没人 然后突然又加进来几个 我问他们也不回</p>ID都是那种装可爱的妹子的 总有种不好的预感 来个大神告诉我是什么情况', '42.228.228.203', 6004, 0, 0, '2021-10-22 13:50:32', '2021-10-22 13:50:32', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (428, 128, 163, NULL, NULL, NULL, NULL, '？？？', '42.228.228.203', 5782, 0, 0, '2021-10-22 14:00:10', '2021-10-22 14:00:10', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (429, 3, 165, NULL, NULL, NULL, NULL, '<p>21°12\'09&quot;S 159°49\'23&quot;W</p>\n<p> </p>\n', '134.195.101.38', 3796, 0, 0, '2021-11-01 19:22:37', '2021-11-01 19:22:37', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (430, 129, 166, NULL, NULL, NULL, NULL, '<p>第一把给DK打这B样 那dk中单许秀怎么就能添个逼脸说3比0 太装逼了 牙给他掰下去！  <span id=\"topic\" value=\"2\">#EDG 3:0 DK#</span>   </p>\n<p> </p>\n', '103.172.116.78', 35292, 0, 0, '2021-11-06 21:30:35', '2021-11-06 21:34:09', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (431, 8, 166, NULL, NULL, NULL, NULL, '今年装了比的都死了', '103.172.116.78', 36820, 0, 0, '2021-11-06 21:35:03', '2021-11-06 21:35:03', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (432, 130, 167, NULL, NULL, NULL, NULL, '<p>一天打了十三把输了十把，输的十把里除去打的坑和菜的下路，足足有四把下路是在恶心人，而且是变本加厉连着来。黄金局环境没救了真的我为什么不去考个证来玩这种东西，我也该给自己来一刀</p>\n', '103.172.116.78', 38866, 0, 0, '2021-11-06 21:36:10', '2021-11-06 21:36:10', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (433, 130, 166, NULL, NULL, NULL, NULL, '许秀那小矮骡子:tiaopi:看他丧着个脸就开心', '103.172.116.78', 40142, 0, 0, '2021-11-06 21:37:00', '2021-11-06 21:37:00', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (434, 131, 168, NULL, NULL, NULL, NULL, '<p>如题。。解锁我倒是解锁了，打了8天，差不多80几把人机。第八天早上第一次登陆后显示解锁。即11日早晨，目前到今天一共打了121把人机，每天10把，穿插5,6把其他模式，人机基本每把都有点赞，个别几天运气好一把会有2,3个，总体大约有150个点赞了。<br />\n我到处翻阅各种帖子基本都是去年或者年初的，<em>1**2级的时候大多数都是</em>7 10天1个里程点。不过他们多数都是打乱斗或者其他模式。难道赛季末他改成人机不加里程了?有最近刚刷回去，而且基本只打人机的老哥吗？给我吃个定心丸啊</p>\n', '103.172.116.78', 36700, 0, 0, '2021-11-07 19:51:57', '2021-11-07 19:52:36', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (435, 131, 168, NULL, NULL, NULL, NULL, '<p>真的是给我整麻了。。</p>', '103.172.116.78', 36294, 0, 0, '2021-11-07 19:52:12', '2021-11-07 19:52:12', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (436, 3, 16, NULL, NULL, NULL, NULL, '我感觉应该优化一下后台速度', '103.172.116.78', 57432, 1, 2, '2021-11-07 22:00:51', '2021-11-07 22:00:51', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (437, 1, 16, 436, 3, NULL, NULL, '已优化', '103.172.116.78', 37898, 0, 2, '2021-11-07 22:03:39', '2021-11-07 22:03:39', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (438, 132, 169, NULL, NULL, NULL, NULL, '<p>今天难得想起玩LOL开开心心地打了一把匹配，结果第一把就被队友骂的破防。本人S2玩的英雄联盟，因为学业及生活原因S5左右就不玩了。后面几个赛季就看看比赛，玩的也少。今天上线打了一把匹配，我选的中单小鱼人，对面中单时光老头。开局正常发育，到中期时没节奏AD就一直骂辅助菜，上单也跟着骂（疑是上单和AD一起的）。我玩小鱼人只敢呆在塔下补塔刀争取不死，直到一波对面3个人强抓死我然后放峡谷破掉中路2座塔之后我们家节奏就炸了。之后AD和上单就从辅助转移到我身上，说什么小鱼人打不过时光第一次见，之后就各种嘲讽什么小鱼人用脚都能单杀时光之类的。我是打的挺难受的，打野一次没来过，连对面抓我放峡谷那波也没有一个人过来守塔。本来玩个游戏开心就好，这又不是排位非要带入这么重的输赢观念。队友有点失误或菜就各种骂各种嘲讽，自己不看小地图自己浪怪队友不支援。觉得队友菜没用就自己吃3路试图1打5。游戏环境感觉是越来越差了，经历了这次之后我是真的一点没心思玩这个游戏了，以后看看比赛就好。</p>\n', '45.88.42.171', 50964, 0, 0, '2021-12-16 14:12:02', '2021-12-16 14:12:02', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (439, 133, 170, NULL, NULL, NULL, NULL, '<p>刚刚花了150去抽葫芦娃一个背包一个赤血龙魂那把枪扎心了好多鸡腿没有了心拔凉拔凉的</p>\n', '45.88.42.171', 54044, 0, 0, '2021-12-16 14:15:14', '2021-12-16 14:15:14', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (440, 134, 171, NULL, NULL, NULL, NULL, '<p>我真服了，每次都有几个任务显示未完成。做完了还是显示未完成，垃圾策划:zhouma:</p>\n<p> </p>\n', '45.88.42.171', 57944, 0, 0, '2021-12-16 14:19:34', '2021-12-16 14:19:34', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (441, 135, 168, NULL, NULL, NULL, NULL, 'CF买号卖号群：3717397', '45.88.42.171', 59522, 0, 0, '2021-12-16 14:20:52', '2021-12-16 14:20:52', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (442, 135, 169, NULL, NULL, NULL, NULL, 'CF买号卖号群：3717397', '45.88.42.171', 59622, 0, 0, '2021-12-16 14:20:58', '2021-12-16 14:20:58', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (443, 135, 170, NULL, NULL, NULL, NULL, 'CF买号卖号群：3717397', '45.88.42.171', 59752, 0, 0, '2021-12-16 14:21:03', '2021-12-16 14:21:03', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (444, 135, 171, NULL, NULL, NULL, NULL, 'CF买号卖号群：3717397', '45.88.42.171', 60044, 0, 0, '2021-12-16 14:21:23', '2021-12-16 14:21:23', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (445, 135, 167, NULL, NULL, NULL, NULL, 'CF买号卖号群：3717397', '45.88.42.171', 60140, 0, 0, '2021-12-16 14:21:33', '2021-12-16 14:21:33', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (446, 3, 172, NULL, NULL, NULL, NULL, '<p>25°44\'18&quot;N 90°15\'42&quot;W</p>\n', '45.88.42.171', 38650, 0, 0, '2021-12-16 16:03:56', '2021-12-16 16:03:56', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (447, 121, 16, NULL, NULL, NULL, NULL, '？？？？', '42.224.225.219', 15413, 1, 1, '2022-01-15 15:00:16', '2022-01-15 15:00:16', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (448, 137, 16, 447, 121, NULL, NULL, '？？？？？？？？', '42.224.225.219', 15650, 0, 1, '2022-01-15 15:03:05', '2022-01-15 15:03:05', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (449, 3, 173, NULL, NULL, NULL, NULL, '<p>936961473<br />\nwk200266</p>\n', '185.200.34.110', 44729, 0, 0, '2022-01-16 18:38:21', '2022-01-16 18:38:21', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (450, 138, 174, NULL, NULL, NULL, NULL, '<p>???</p>\n', '185.200.34.110', 40695, 0, 0, '2022-01-20 21:34:31', '2022-01-20 21:34:31', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (451, 139, 175, NULL, NULL, NULL, NULL, '<p>来个厉害点的好队友，单排被自己家的队友要气死了！带我满地图追野怪！就是不打对面！就定位在了白银</p>\n<p>:zhouma:</p>\n', '185.200.34.110', 38889, 0, 0, '2022-01-20 21:36:57', '2022-01-20 21:36:57', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (452, 139, 16, NULL, NULL, NULL, NULL, '没人管了吗', '185.200.34.110', 33763, 0, 0, '2022-01-20 21:37:12', '2022-01-20 21:37:12', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (453, 139, 174, NULL, NULL, NULL, NULL, '好了点', '185.200.34.110', 36329, 0, 0, '2022-01-20 21:37:32', '2022-01-20 21:37:32', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (454, 139, 173, NULL, NULL, NULL, NULL, '????', '185.200.34.110', 45577, 0, 0, '2022-01-20 21:37:40', '2022-01-20 21:37:40', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (455, 139, 163, NULL, NULL, NULL, NULL, '1', '185.200.34.110', 39033, 0, 0, '2022-01-20 21:37:52', '2022-01-20 21:37:52', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (456, 140, 176, NULL, NULL, NULL, NULL, '<p>这不剑圣嘛</p>\n', '185.200.34.110', 37827, 0, 0, '2022-01-20 21:39:44', '2022-01-20 21:39:44', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (457, 140, 16, NULL, NULL, NULL, NULL, '我好像认识你', '185.200.34.110', 43629, 0, 0, '2022-01-20 21:40:26', '2022-01-20 21:40:26', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (458, 140, 16, NULL, NULL, NULL, NULL, '是徐玉龙吗', '185.200.34.110', 42201, 0, 0, '2022-01-20 21:40:35', '2022-01-20 21:40:35', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (459, 140, 16, NULL, NULL, NULL, NULL, '是了回个话', '185.200.34.110', 41913, 0, 0, '2022-01-20 21:40:50', '2022-01-20 21:40:50', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (460, 141, 177, NULL, NULL, NULL, NULL, '', '185.200.34.110', 42473, 0, 0, '2022-01-20 21:42:32', '2022-01-20 21:42:32', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (461, 141, 176, NULL, NULL, NULL, NULL, '手机坏了？', '185.200.34.110', 33833, 1, 0, '2022-01-20 21:43:00', '2022-01-20 21:43:00', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (462, 141, 16, NULL, NULL, NULL, NULL, '？？？', '185.200.34.110', 34967, 0, 0, '2022-01-20 21:43:12', '2022-01-20 21:43:12', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (463, 142, 178, NULL, NULL, NULL, NULL, '<p>我是网二很多年的一名钻石守门🐶了，主打上单打野，打自己的号有时候能c，打不过也能稳住不爆炸，被军训除外。打野的话，只能在线上有优势的情况下会带节奏，逆风就比较混。<br />\n我看过很多高端局直播，不存在看不懂的地方，觉得自己该有的意识和思路都有，但就是上不去分，胜率无限接近赢一把输一把的样子。<br />\n昨天看小明剑魔的直播，峡谷宗师四百多分的局，小明和打野双排的，已经连胜很多把了，中单是某战队青训队员。但下路ad意外混进来一名钻4玩家，其他9人都是宗师，然后下路线上无限被杀爆，其他路都是优势，就下路一直死，最后成为突破口被翻盘。<br />\n因为看的是上单第一视角，不清楚下路对线是个什么情况，但钻4在宗师面前真的就毫无还手之力吗？还有个宗师的辅助在呢。<br />\n钻4到钻一钻二的差距又有多大，差在哪里，求求从钻4打出去的大佬们hxdm指点一下:xiaojiujie::xiaojiujie::xiaojiujie:</p>\n', '185.200.34.110', 33917, 0, 0, '2022-01-20 21:45:23', '2022-01-20 21:45:23', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (464, 143, 179, NULL, NULL, NULL, NULL, '<p>无限乱斗到哪天结束啊，从今天开始，我将一场别的模式都不打。</p>\n<p>另外虎年那个提莫皮肤售卖到什么时候结束啊，我本来以为199不想买了，就把这个月优惠券用了，这一看99，我又想用20元优惠券买了，可是下批优惠券应该是2月8号才发，那时候还卖吗？</p>\n', '185.200.34.110', 45555, 0, 0, '2022-01-20 21:53:45', '2022-01-20 21:53:45', NULL, NULL, 1, 0, 1);
INSERT INTO `posts` VALUES (465, 143, 178, NULL, NULL, NULL, NULL, '钻石以上只有不到3%的玩家 贴吧人均王者 根本不理解你说的', '185.200.34.110', 39257, 0, 0, '2022-01-20 21:54:07', '2022-01-20 21:54:07', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (466, 143, 177, NULL, NULL, NULL, NULL, '0', '185.200.34.110', 35139, 0, 0, '2022-01-20 21:54:28', '2022-01-20 21:54:28', NULL, NULL, 0, 0, 1);
INSERT INTO `posts` VALUES (467, 143, 176, 461, 141, NULL, NULL, '1', '185.200.34.110', 37279, 0, 0, '2022-01-20 21:54:37', '2022-01-20 21:54:37', NULL, NULL, 0, 1, 1);
INSERT INTO `posts` VALUES (468, 143, 16, NULL, NULL, NULL, NULL, '有生意先付款做吗', '185.200.34.110', 44757, 0, 0, '2022-01-20 21:55:02', '2022-01-20 21:55:03', NULL, NULL, 0, 0, 1);

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thread_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '主题 id',
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '提问人用户 id',
  `be_user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '被提问的用户 id',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '回答内容',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '回答人 ip 地址',
  `port` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '回答人端口',
  `price` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '问答价格',
  `onlooker_unit_price` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '围观单价',
  `onlooker_price` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '当前围观总价格',
  `onlooker_number` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前围观总人数',
  `is_onlooker` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否允许围观',
  `is_answer` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已回答 0未回答 1已回答 2已过期',
  `is_approved` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '回答内容是否合法',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `expired_at` datetime NOT NULL COMMENT '过期时间',
  `answered_at` datetime NULL DEFAULT NULL COMMENT '回答时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_thread_id`(`thread_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_be_user_id`(`be_user_id`) USING BTREE,
  CONSTRAINT `questions_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of questions
-- ----------------------------

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '举报 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `thread_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '主题 id',
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '回复 id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '举报类型:0个人主页 1主题 2评论/回复',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '举报理由',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '举报状态:0未处理 1已处理',
  `created_at` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reports
-- ----------------------------
INSERT INTO `reports` VALUES (1, 7, 8, 19, 2, '不好听言论', 1, '2021-08-01 01:42:13', '2021-08-01 21:38:34');
INSERT INTO `reports` VALUES (2, 21, 19, 0, 1, '说的非常好，请顶置加精华', 1, '2021-08-02 15:33:24', '2021-08-09 15:26:04');
INSERT INTO `reports` VALUES (3, 21, 20, 0, 1, '这个说的也好，顶置', 1, '2021-08-02 15:33:45', '2021-08-09 15:26:04');
INSERT INTO `reports` VALUES (4, 22, 22, 0, 1, '违规内容', 1, '2021-08-02 15:36:22', '2021-08-09 15:26:04');
INSERT INTO `reports` VALUES (5, 22, 20, 0, 1, '违规内容', 1, '2021-08-02 15:36:31', '2021-08-09 15:26:04');
INSERT INTO `reports` VALUES (6, 22, 20, 58, 2, '违规内容', 1, '2021-08-02 15:36:38', '2021-08-09 15:26:04');
INSERT INTO `reports` VALUES (7, 22, 19, 0, 1, '违规内容', 1, '2021-08-02 15:36:47', '2021-08-09 15:26:04');
INSERT INTO `reports` VALUES (8, 21, 22, 63, 2, '抄袭他也爱？直接封号，还用我多说？除非你感觉王者是个好游戏', 1, '2021-08-02 15:38:25', '2021-08-09 15:26:04');
INSERT INTO `reports` VALUES (10, 92, 4, 0, 1, '恶意灌水', 0, '2021-08-22 19:32:39', '2021-08-22 19:32:39');

-- ----------------------------
-- Table structure for sequences
-- ----------------------------
DROP TABLE IF EXISTS `sequences`;
CREATE TABLE `sequences`  (
  `category_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容分类ID',
  `group_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户角色ID',
  `user_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户ID',
  `topic_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '话题ID',
  `thread_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '主题ID/帖子',
  `block_user_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '阻止显示的用户ID',
  `block_topic_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '阻止显示的话题ID',
  `block_thread_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '阻止显示的主题ID/帖子'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sequences
-- ----------------------------
INSERT INTO `sequences` VALUES ('', '1,7,11,12', '2', '', '', '', '', '');

-- ----------------------------
-- Table structure for session_tokens
-- ----------------------------
DROP TABLE IF EXISTS `session_tokens`;
CREATE TABLE `session_tokens`  (
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'token',
  `scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作用域',
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '负载',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户 id',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `expired_at` datetime NOT NULL COMMENT '过期时间',
  UNIQUE INDEX `session_tokens_token_unique`(`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of session_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设置项 key',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '设置项 value',
  `tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default' COMMENT '设置项 tag',
  PRIMARY KEY (`key`, `tag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('api_freq', '{\"get\":{\"freq\":500,\"forbidden\":20},\"post\":{\"freq\":200,\"forbidden\":30}}', 'default');
INSERT INTO `settings` VALUES ('is_need_transition', '1', 'default');
INSERT INTO `settings` VALUES ('miniprogram_video', '0', 'wx_miniprogram');
INSERT INTO `settings` VALUES ('open_api_log', '0', 'default');
INSERT INTO `settings` VALUES ('open_ext_fields', '0', 'default');
INSERT INTO `settings` VALUES ('oplatform_close', '0', 'wx_oplatform');
INSERT INTO `settings` VALUES ('password_length', '6', 'default');
INSERT INTO `settings` VALUES ('password_strength', '0,3', 'default');
INSERT INTO `settings` VALUES ('post_count', '436', 'default');
INSERT INTO `settings` VALUES ('privacy', '1', 'agreement');
INSERT INTO `settings` VALUES ('privacy_content', '隐私协议\n此应用程序尊重并保护使用该服务的所有用户的隐私。为了向您提供更准确和个性化的服务，此应用将根据本隐私政策使用和披露您的个人信息。但是，此应用程序将高度努力和谨慎地处理此信息。除非本隐私政策另有规定，否则未经您的事先许可，本应用程序不会向第三方披露或提供此信息。这个应用程式会不时更新本隐私权政策。同意本应用程序服务使用协议，即表示您已同意本隐私政策的全部内容。本隐私政策是本应用服务协议的组成部分。\n1.\n适用范围\nA、您在注册此应用程序帐户时根据本应用程序的要求提供的个人注册信息；\nB、当您使用App Network Service或访问App Platform网页时，应用程序在浏览器和计算机上自动接收并记录的信息，包括但不限于您的IP地址，浏览器类型，数据（如使用的语言，日期）访问时间，硬件和软件功能信息以及所需的网页记录；\nC、应用程序通过合法手段从业务合作伙伴获得的用户个人数据。您理解并同意以下信息不适用于本隐私政策：\nA、您在使用应用提供的搜索服务时输入的关键字信息；\nB、您在此应用程序中收集的相关信息，包括但不限于参与活动，交易信息和评估详细信息；\nC、违反法律或违反本《行为准则》以及本申请对您采取的行动。\n2.\n信息使用\nA、除非您事先获得您的许可，或者该第三方与该应用程序（包括应用程序关联公司）是分开的，否则该应用程序不会向任何无关的第三方提供，出售，出租，共享或交易您的个人信息。共同。为了向您提供服务，并且在服务结束后，将禁止其访问以前可以访问的所有此类材料。\nB、此应用程序也不允许任何第三方以任何方式收集，编辑，出售或分发您的个人信息。一旦发现上述应用程序平台的任何用户从事上述活动，则该应用程序有权立即终止与该用户的服务协议。\nC、为了服务用户，应用程序可能会使用您使用的信息为您提供您感兴趣的信息，包括但不限于向您发送产品和服务信息，或与应用程序合作伙伴共享信息，以便他们可能会向您发送有关其产品和服务的信息（后者需要您的事先同意）\n3.\n信息公开\n在以下情况下，此应用程序将根据您的个人意愿或法律全部或部分披露您的个人信息：\nA、在您事先同意的情况下向第三方披露；\nB、要提供您要求的产品和服务，您必须与第三方共享您的个人信息；\nC、根据法律的有关规定，或应行政或司法当局的要求，向第三方或行政或司法当局公开；\nD、如果您违反了中国相关法律，法规或本应用程序服务协议或相关规则，则需要将其披露给第三方；\nE、如果您是合格的IP投诉人，并且已提出投诉，则应投诉人的要求将其披露给被投诉人，以便双方可以处理可能的权利纠纷；\nF、在此应用程序平台上创建的交易中，如果交易的任何一方履行或部分履行了交易义务并要求信息披露，则该应用程序有权决定向用户提供交易对手的联系信息，等有助于完成交易或解决争端的信息。\nG、根据法律，法规或网站政策，本申请认为适当的其他披露。\n4.\n信息存储与交流您在此应用程序中收集的信息和资料将存储在应用程序和/或其附属公司的服务器上，这些信息和资料可能会传输到您所在国家，地区或应用程序收集信息和资料的位置。它可以在国外访问，存储和显示。\n5. Cookies的使用\nA、如果您不拒绝接受cookie，则该应用程序将在您的计算机上设置或访问cookie，以便您可以登或使用基于cookie的服务或依赖cookie的功能。此应用程序使用Cookie为您提供更周到和个性化的服务，包括促销服务。\nB、您有权接受或拒绝接受cookie。您可以通过修改浏览器设置来拒绝接受Cookie。但是，如果您选择拒绝接受cookie，则可能无法登录或使用依赖于cookie的此应用程序Web服务或功能。晓致隐私号让网站App快速实现即时通讯功能广告 基于互联网中间号通话，短信，智能机器人等通讯服务 查看详情 >\nC、本政策将适用于通过本应用程序中提供的cookie获得的信息。\n6.\n信息安全\nA、此应用程序帐户具有安全保护。请确保您的用户名和密码信息安全。该应用程序将通过诸如加密用户密码之类的安全措施来确保您的信息不会丢失，不被滥用或更改。尽管有上述安全措施，但也请注意，信息网络上没有“完美的安全措施”。\nB、使用此应用程序Web服务进行在线交易时，您将不可避免地要与交易对手或潜在交易对进行交易\n7.\n本隐私政策的变更\nA、如果我们决定更改我们的隐私政策，我们将在本政策，我们的网站以及我们认为适当的位置上发布这些更改，以便您了解我们如何收集和使用您的个人信息以及谁可以访问它。在什么情况下，我们将披露此信息。', 'agreement');
INSERT INTO `settings` VALUES ('qcloud_sms', '0', 'qcloud');
INSERT INTO `settings` VALUES ('qcloud_vod', '0', 'qcloud');
INSERT INTO `settings` VALUES ('register', '1', 'agreement');
INSERT INTO `settings` VALUES ('register_captcha', '0', 'default');
INSERT INTO `settings` VALUES ('register_close', '1', 'default');
INSERT INTO `settings` VALUES ('register_content', '用户注册使用协议\n\n本协议由您与此网站共同缔结，本协议具有合同效力。\n本协议中协议双方合称协议方，本网站在协议中亦称为“论坛网”\n协议内容及签署\n1.本协议内容包括协议正文及所有论坛网已经发布的或将来可能发布的各类规则。所有规购为本协议不可分割的组成部分，与协议正文具有同等法律效力。除另行明确声明外，任何论坛网及其关联公司提供的服务(以下称为论坛网服务)均受本协议约束。\n2.您应当在使用论坛网服务之前认真阅读全部协议内容，对于协议中以加粗字体显示的内容，您应重点阅读。如您对协议有任何疑问的，应向论坛网咨询。但无论您事实上是否在使用论坛网服务之前认真阅读了本协议内容，只要您使用论坛网服务，则本协议即对您产生约束，届时您不应以未阅读本协议的内容或者未获得论坛网对您问询的解答等理由，主张本协议无效，或要求撤销本协议，\n3您承诺接受并遵守本协议的约定。如果您不同意本协议的约定，您应立即停止注册程序或停止使用论坛网服务\n4.论坛网有权根据雷要不时地制订、修改本协议及/或各类规则，并以网站公示的方式进行公告，不再单独通知您。变更后的协议和规则一经在网站公布后，立即自动生效。如您不同意相关变更，应当立即停止使用论坛网服务。若您继续使用论坛网服务，即表示您接受经修订的协议。\n二、 注册\n1.注册者资格\n您确认，在您完成注册程序或以其他论坛网允许的方式实际使用论坛网服务时，您应当是具备完全民事权利能力和完全民事行为能力的自然人、法人或其他组织。若您不具备前述主体资格，则您及您的监护人应承担因此而导致的一切后果，且论坛网有权注销(永久冻结)您的论坛网账户，并向您及您的监护人索偿。\n2.账户\n在您签署本协议，完成会员注册程序或以其他论坛网允许的方式实际使用论坛网服务时，论坛网会向您提供唯一编号的论坛网账户(以下亦称账户)。\n您可以对账户设置会员名和密码，通过该会员密码或与该会员密码关联的其它用户名密码登录论坛网(wwwzfhch您设置的会员名不得侵犯或涉嫌侵犯他人合法权益。当您的账户设立完成后，您应当在此后90日内使用您的会员号和密码登录论坛网。逾期未登录的，论坛网有权终止向您提供论坛网服务，注销您的账户。账户注销后，相应的会员号将开放给任意用户注册登记使用。\n您应对您的账户(会员号)和密码的安全，以及对通过您的账户(会员号)和密码实施的行为负责。除非有法律规定或司法裁定，且征得论坛网的同意，否则，账户(会员号)和密码不得以任何方式转让、赠与或继承(与账户相关的财产权益除外)。如果发现任何人不当使用您的账户或有任何其他可能危及您的账户安全的情形时。您应当立即以有效方式通知论坛网，要求论坛网暂停相关服务。您理解论坛网对您的请求采取行动需要合理时间，论坛网对在采取行动前已经产生的后果(包括但不限于您的任何损失)不承担任何责任。\n为方便您使用论坛网服务及智富惠关联公司或其他组织的服务(以下称其他服务)，您同意并授权论坛网将您在注册、使用论坛网服务过程中提供、形成的信息传递给向您提供其他服务的论坛网关联公司或其他组织，或从提供其他服务的论坛网关联公司或其他组织获取您在注册、使用其他服务期间提供、形成的信息。\n3.会员\n在您按照注册页面提示填写信息、阅读并同意本协议并完成全部注册程序后或以其他论坛网允许的方式实际使用论坛网服务时，您即成为论坛网会员(亦称会员)。\n在注册时，您应当按照法律法规要求，或注册页面的提示准确提供，并及时更新您的资料，以使之真实、及时，完整和准确。如有合理理由怀疑您提供的资料错误、不实、过时或不完整的，论坛网有权向您发出询问及/或要求改正的通知，并有权直接做出删除相应资料的处理，直至中止、终止对您提供部分或全部论坛网服务。论坛网对此不承担任何责任，您将承担因此产生的任何直接或间接支出。\n您应当准确填写并及时更新您提供的电子邮件地址、联系电话、联系地址、邮政编码等联系方式，以便论坛网或其他会员与您进行有效联系，因通过这些联系方式无法与您取得联系，导致您在使用论坛网服务过程中产生任何损失或增加费用的，应由您完全独自承担。\n您在使用论坛网服务过程中，所产生的应纳税赋，以及一切硬件、软件、服务及其它方面的费用，均由您独自承担。\n三、 论坛网服务\n1.通过论坛网及其关联公司提供的论坛网服务和其它服务，会员可在论坛网上查询商家和服务信息、达成消费意向并进行实际消费、对其他会员进行评价、参加论坛网组织的活动以及使用其它信息服务及技术服务。\n2.您通过论坛网的消费过程中与其他会员、联盟商家发生消费纠纷时，一且您或其它会员、商家任一方或双方共同提交论坛网要求调处，则论坛网有权根据单方判断做出调处决定，您了解并同意接受论坛网的判断和调处决定。该决定将对您具有法律约束力。\n3.您了解并同意，论坛网有权应政府部门(包括司法及行政部门)的要求，向其提供您在论坛网填写的注册信息和交易纪录等必要信息。如您涉嫌侵犯他人知识产权，则论坛网亦有权在初步判断涉嫌侵权行为存在的情况下，向权利人提供您必要的身份信息。\n四、 论坛网服务使用规范\n1.通过论坛网使用智富惠服务过程中，您承诺遵守以下约定;\na)在使用论坛网服务过程中实施的所有行为均遵守国家法律、法规等规范性文件及论坛网各项规则的规定和要求，不违背社会公共利益或公共道德，不损害他人的合法权益，不违反本协议及相关规则。您如果违反前述承诺，产生任何法律后果的，您应以自己的名义独立承担所有的法律责任，并确保论坛网免于因此产生任何损失。\nb)在与其他会员交易过程中，遵守诚实信用原则，不采取不正当竞争行为，不扰乱网上交易的正常秩序，不从事与网上交易无关的行为。\nc)不发布国家禁止销售的或限制销售的商品或服务信息(除非取得合法且足够的许可)，不发布涉嫌侵犯他人知识产权或其它合法权益的商品或服务信息，不发布违背社会公共利益或公共道德或论坛网认为不适合在论坛网网上销售的商品或服务信息，不发布其它涉嫌违法或违反本协议及各类规则的信息。\nd)不以虚构或无曲事实的方式不当评价其他会员，不采取不正当方式制造或提高自身的信用度，不采取不正当方式制造或提高(降低)其他会员的信用度:\ne)不对论坛网的任何数据作商业性利用，包括但不限于在未经淘宝事先书面同意的情况下以复制、传播等任何方式使用论坛网网站上展示的资料。\nf)不使用任何装置、软件或例行程序于预或试图干预论坛网的正常运作或正在论坛网上进行的任何交易、活动。您不得采取任何将导致不合理的庞大数据负载加诸论坛网网络设备的行动。\n2.您了解并同意:\na)论坛网有权对您是否违反上述承诺做出单方认定，并根据单方认定结果适用规则予以处理或终止向您提供服务，且无须征得您的同意或提前通知予您。\nb)经国家行政或司法机关的生效法律文书确认您存在违法或侵权行为，或者论坛网根据自身的判断，认为您的行为涉嫌违反本协议和或规则的条款或涉嫌违反法律法规的规定的，则论坛网有权在论坛网上公示您的该等涉嫌违法或违约行为及论坛网已对您采取的措施。\nc)对于您在论坛网上发布的涉嫌违法或涉嫌侵犯他人合法权利或违反本协议和(成规则的信息，淘宝有权不经通知您即予以别除，且按照规则的规定进行处罚。\nd)对于您在论坛网上实施的行为，包括您未在论坛网上实施但已经对论坛网及其用户产生影响的行为，论坛网有权单方认定您行为的性质及是否构成对本协议和(威规则的违反，并据此作出相应处罚您应自行保存与您行为有关的全部证据，并应对无法提供充要证据而承担的不利后果。\ne)对于您涉嫌违反承诺的行为对任意第三方造成损害的，您均应当以自己的名义独立承担所有的法律责任，并应确保淘宝免于因此产生损失或增加费用。\nf)如您涉嫌违反有关法律或者本协议之规定，使论坛网遭受任何损失，或受到任何第三方的索赔，或受到任何行政管理部门的处罚，您应当赔偿论坛网因此造成的损失及(或)发生的费用，包括合理的律师费用。\n五、 特别授权\n您完全理解并不可撤销地授予论坛网及其关联公司下列权利:\n1一旦您向论坛网及(或)其关联公司(包括联盟商家)等作出任何形式的承诺，且相关公司已确认您违反了该承诺，则论坛网有权立即按您的承诺或协议约定的方式对您的账户采取限制措施，包括中止或终止向您提供服务，并公示相关公司确认的您的违约情况。您了解并同意，论坛网无须就相关确认与您核对事实，或另行征得您的同意，且论坛网无须就此限制措施或公示行为向您承担任何的责任。\n2.一旦您违反本协议，或与论坛网签订的其他协议的约定，论坛网有权以任何方式通知论坛网关联公司，要求其对您的权益采取限制措施。包括将您账户内的款项支付给论坛网指定的对象，要求关联公司中止、终止对您提供部分或全部服务，且在其经营或实际控制的任何网站公示您的违约情况:\n3.对于您提供的资料及数据信息，您授予论坛网及其关联公司独家的、全球通用的、永久的、免费的许可使用权利(并有权在多个层面对该权利进行再授权)。此外，论坛网及其关联公司有权(全部或部份地)使用、复制、修订、改写、发布、翻译、分发、执行和展示您的全部资料数据(包括但不限于注册资料、交易行为数据及全部展示于论坛网的各类信息)或制作其派生作品，并以现在已知或日后开发的任何形式、媒体或技术，将上述信息纳入其它作品内。\n六、责任范围和责任限制\n1、论坛网负责按”现状”和”可得到”的状态向您提供论坛网服务。但论坛网对论坛网服务不作任何明示或暗示的保证，包括但不限于论坛网服务的适用性，没有错误或疏漏、持续性、准确性、可靠性、适用于某一特定用途。同时，论坛网也不对论坛网服务所涉及的技术及信息的有效性、准确性、正确性、可黛性、质量、稳定、完整和及时性作出任何承诺和保证。\n2、您了解论坛网上的信息系用户自行发布，且可能存在风险和瑕瘦。论坛网仅作为信息交流平台。论坛网仅作为沟通您与商家的一个平台，一座桥梁，但论坛网无法控制消费所涉及的物品的质量，安全或合法性，商贸信息的真实性或准确性，以及消费各方展行其在贸易协议中各项义务的能力您应自行谨慎判断确定相关物品及/或信息的真实性、合法性和有效性，并自行承担因此产生的责任与损失。\n3、除非法律法规明确要求，或出现以下情况，否则论坛网没有义务对所有用户的注册数据。商品(服务)信息、交易行为以及与交易有关的其它事项进行事先审查:\na)论坛网有合理的理由认为特定会员及具体交易事项可能存在重大违法或违约情形。 \nb)论坛网有合理的理由认为用户在智富惠网上的行为涉嫌违法或不当。\n4、论坛网及其关联公司有权受理您与商家因消费产生的争议，并有权判断与该争议相关的事实及应适用的规则，进而作出处理决定。该处理决定对您有约束力。如您在商家消费未能正常支付，论坛网在与您，商家确定真实数据后，有权通过系统后台扣除您该支付的款项给商家。\n您理解并同意，论坛网及其关联公司并非司法机构，仅能以普通人的身份对证据进行鉴别，论坛网及其关联公司对争议的调处完全是基于您的委托，论坛网及其关联公司无法保证争议处理结果符合您的期望，也不对争议调处结论承担任何责任。如您因此遭受损失，您同意自行向受益人索偿。\n5、您了解并网意，论坛网不对因下述任一情况而导致您的任何损害赔偿承担责任，包括但不限于利润、商誉、使用、数据等方面的损失或其它无形损失的损害赔偿(无论论坛网是否已被告知该等损害赔偿的可能性): \na)使用或未能使用论坛网服务。\nb) 第三方未经批准的使用您的账户或更改您的数据。\nc)通过论坛网服务购买或获取任何商品、样品、数据、信息或进行交易等行为或替代行为产生的费用及损失。\nd) 您对论坛网服务的误解，\ne)任何非因论坛网的原因而引起的与论坛网服务有关的其它损失。\n6.不论在何种情况下，论坛网均不对由于互联网正常的设备维护，互联网络连接故障，电脑通讯或其他系统的故障，电力故障，罢工，劳动争议，暴乱，起义，骚乱，生产力或生产资料不足，火灾，洪水，风暴，爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的不能服务或延迟服务承担责任。\n七、 协议终止\n1、您同意，论坛网有权自行全权决定以任何理由不经事先通知的中止、终止向您提供部分或全部服务', 'agreement');
INSERT INTO `settings` VALUES ('register_validate', '0', 'default');
INSERT INTO `settings` VALUES ('site_author', '1', 'default');
INSERT INTO `settings` VALUES ('site_author_scale', '3', 'default');
INSERT INTO `settings` VALUES ('site_can_reward', '1', 'default');
INSERT INTO `settings` VALUES ('site_charge', '1', 'default');
INSERT INTO `settings` VALUES ('site_close', '0', 'default');
INSERT INTO `settings` VALUES ('site_close_msg', '', 'default');
INSERT INTO `settings` VALUES ('site_create_thread0', '1', 'default');
INSERT INTO `settings` VALUES ('site_create_thread1', '1', 'default');
INSERT INTO `settings` VALUES ('site_create_thread2', '1', 'default');
INSERT INTO `settings` VALUES ('site_create_thread3', '1', 'default');
INSERT INTO `settings` VALUES ('site_create_thread4', '1', 'default');
INSERT INTO `settings` VALUES ('site_create_thread5', '0', 'default');
INSERT INTO `settings` VALUES ('site_create_thread6', '1', 'default');
INSERT INTO `settings` VALUES ('site_id', '038be1a661c745ceacf7f7f183a4aed4', 'default');
INSERT INTO `settings` VALUES ('site_init_version', '3.0.220211', 'default');
INSERT INTO `settings` VALUES ('site_init_version_time', '2022-02-22 17:29:43', 'default');
INSERT INTO `settings` VALUES ('site_install', '2021-07-30 16:17:57', 'default');
INSERT INTO `settings` VALUES ('site_introduction', '正在持续更新中...尽情期待。', 'default');
INSERT INTO `settings` VALUES ('site_keywords', '论坛', 'default');
INSERT INTO `settings` VALUES ('site_manage', '[]', 'default');
INSERT INTO `settings` VALUES ('site_master_scale', '7', 'default');
INSERT INTO `settings` VALUES ('site_mode', 'public', 'default');
INSERT INTO `settings` VALUES ('site_name', 'Evolve', 'default');
INSERT INTO `settings` VALUES ('site_open_sort', '1', 'default');
INSERT INTO `settings` VALUES ('site_price', NULL, 'default');
INSERT INTO `settings` VALUES ('site_record', '', 'default');
INSERT INTO `settings` VALUES ('site_record_code', '', 'default');
INSERT INTO `settings` VALUES ('site_secret', 'bkkEo8oVpUlhDKoU2fYglydRDzmPGb12', 'default');
INSERT INTO `settings` VALUES ('site_stat', '', 'default');
INSERT INTO `settings` VALUES ('site_title', 'Evolve', 'default');
INSERT INTO `settings` VALUES ('site_url', 'http://1lin.xyz', 'default');
INSERT INTO `settings` VALUES ('support_file_ext', 'doc,docx,pdf,zip', 'default');
INSERT INTO `settings` VALUES ('support_img_ext', 'png,gif,jpg,jpeg,heic', 'default');
INSERT INTO `settings` VALUES ('support_max_size', '5', 'default');
INSERT INTO `settings` VALUES ('thread_count', '159', 'default');
INSERT INTO `settings` VALUES ('thread_optimize', '1', 'default');
INSERT INTO `settings` VALUES ('user_count', '143', 'default');

-- ----------------------------
-- Table structure for site_info_dailies
-- ----------------------------
DROP TABLE IF EXISTS `site_info_dailies`;
CREATE TABLE `site_info_dailies`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT '统计日期',
  `mini_active_users` int(11) NOT NULL DEFAULT 0 COMMENT '小程序活跃用户数',
  `pc_active_users` int(11) NOT NULL DEFAULT 0 COMMENT 'PC端活跃用户数',
  `h5_active_users` int(11) NOT NULL DEFAULT 0 COMMENT 'h5端活跃用户数',
  `new_users` int(11) NOT NULL DEFAULT 0 COMMENT '新增用户数',
  `mini_threads` int(11) NOT NULL DEFAULT 0 COMMENT '小程序发帖数',
  `pc_threads` int(11) NOT NULL DEFAULT 0 COMMENT 'pc发帖数',
  `h5_threads` int(11) NOT NULL DEFAULT 0 COMMENT 'h5发帖数',
  `mini_posts` int(11) NOT NULL DEFAULT 0 COMMENT '小程序回帖数',
  `pc_posts` int(11) NOT NULL DEFAULT 0 COMMENT 'pc回帖数',
  `h5_posts` int(11) NOT NULL DEFAULT 0 COMMENT 'h5回帖数',
  `threads_sum` int(11) NOT NULL DEFAULT 0 COMMENT '总发帖数',
  `posts_sum` int(11) NOT NULL DEFAULT 0 COMMENT '总回复数',
  `start_count` int(11) NOT NULL DEFAULT 0 COMMENT '启动数',
  `pc_start_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'pc端启动数',
  `h5_start_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'h5端启动数',
  `mini_start_peoples` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '小程序端启动人数',
  `mini_start_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '小程序端启动数',
  `start_peoples` int(11) NOT NULL DEFAULT 0 COMMENT '启动人数',
  `pc_start_peoples` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'pc端启动人数',
  `h5_start_peoples` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'h5端启动人数',
  `orders_count` int(11) NOT NULL DEFAULT 0 COMMENT '订单数',
  `orders_money` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '订单金额',
  `withdrawal_profit` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '提现收付费收入',
  `order_royalty` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '打赏提成收入',
  `total_register_profit` decimal(12, 2) NOT NULL DEFAULT 0.00 COMMENT '注册加入收入',
  `is_upload` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 179 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of site_info_dailies
-- ----------------------------
INSERT INTO `site_info_dailies` VALUES (1, '2021-09-04', 0, 3, 0, 2, 0, 5, 0, 0, 5, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-04 20:10:07', '2021-09-07 21:34:12');
INSERT INTO `site_info_dailies` VALUES (2, '2021-09-07', 0, 6, 0, 5, 0, 6, 0, 0, 8, 0, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-07 21:34:20', '2021-09-11 14:05:45');
INSERT INTO `site_info_dailies` VALUES (3, '2021-09-11', 0, 2, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-11 14:10:06', '2021-09-15 21:47:22');
INSERT INTO `site_info_dailies` VALUES (4, '2021-09-15', 0, 3, 0, 3, 0, 2, 0, 0, 3, 0, 2, 3, 26, 24, 2, 0, 0, 3, 1, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-15 21:46:57', '2021-09-21 21:12:33');
INSERT INTO `site_info_dailies` VALUES (5, '2021-09-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 6, 15, 0, 0, 21, 6, 15, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-16 00:20:32', '2021-09-21 21:12:33');
INSERT INTO `site_info_dailies` VALUES (6, '2021-09-17', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 4, 10, 0, 0, 14, 4, 10, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-17 00:13:30', '2021-09-21 21:12:33');
INSERT INTO `site_info_dailies` VALUES (7, '2021-09-18', 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 36, 36, 0, 0, 0, 22, 22, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-18 00:00:19', '2021-09-21 21:12:33');
INSERT INTO `site_info_dailies` VALUES (8, '2021-09-19', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5, 5, 0, 0, 10, 5, 5, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-19 02:55:02', '2021-09-21 21:12:33');
INSERT INTO `site_info_dailies` VALUES (9, '2021-09-20', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 4, 19, 0, 0, 23, 4, 19, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-20 00:19:10', '2021-09-21 21:12:33');
INSERT INTO `site_info_dailies` VALUES (10, '2021-09-21', 0, 6, 0, 3, 0, 4, 0, 0, 9, 0, 4, 9, 96, 96, 0, 0, 0, 22, 22, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-21 07:30:34', '2021-09-24 22:13:55');
INSERT INTO `site_info_dailies` VALUES (11, '2021-09-22', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 5, 0, 0, 8, 3, 5, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-22 04:01:07', '2021-09-24 22:13:55');
INSERT INTO `site_info_dailies` VALUES (12, '2021-09-23', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 10, 8, 0, 0, 16, 8, 8, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-23 09:25:39', '2021-09-24 22:13:55');
INSERT INTO `site_info_dailies` VALUES (13, '2021-09-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 9, 6, 0, 0, 15, 9, 6, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-24 02:19:09', '2021-09-25 22:17:38');
INSERT INTO `site_info_dailies` VALUES (14, '2021-09-25', 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 15, 13, 2, 0, 0, 12, 10, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-25 05:00:47', '2021-09-30 22:13:38');
INSERT INTO `site_info_dailies` VALUES (15, '2021-09-26', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 3, 6, 0, 0, 9, 3, 6, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-26 01:21:14', '2021-09-30 22:13:38');
INSERT INTO `site_info_dailies` VALUES (16, '2021-09-27', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 8, 0, 0, 7, 0, 7, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-27 03:19:57', '2021-09-30 22:13:38');
INSERT INTO `site_info_dailies` VALUES (17, '2021-09-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 0, 0, 2, 1, 1, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-28 02:07:29', '2021-09-30 22:13:38');
INSERT INTO `site_info_dailies` VALUES (18, '2021-09-29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 8, 0, 0, 8, 0, 8, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-29 21:43:15', '2021-09-30 22:13:38');
INSERT INTO `site_info_dailies` VALUES (19, '2021-09-30', 0, 4, 0, 2, 0, 3, 0, 0, 6, 0, 3, 6, 118, 62, 56, 0, 0, 64, 8, 56, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-09-30 04:04:10', '2021-10-03 21:31:10');
INSERT INTO `site_info_dailies` VALUES (20, '2021-10-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 3, 0, 0, 4, 1, 3, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-01 06:00:14', '2021-10-03 21:31:10');
INSERT INTO `site_info_dailies` VALUES (21, '2021-10-02', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 15, 3, 0, 0, 13, 10, 3, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-02 00:21:43', '2021-10-03 21:31:10');
INSERT INTO `site_info_dailies` VALUES (22, '2021-10-03', 0, 5, 0, 4, 0, 4, 0, 0, 8, 0, 4, 8, 91, 79, 12, 0, 0, 20, 8, 12, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-03 12:31:11', '2021-10-06 21:48:14');
INSERT INTO `site_info_dailies` VALUES (23, '2021-10-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 6, 0, 0, 6, 0, 6, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-04 08:22:24', '2021-10-06 21:48:14');
INSERT INTO `site_info_dailies` VALUES (24, '2021-10-05', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2, 0, 0, 4, 2, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-05 04:18:42', '2021-10-06 21:48:14');
INSERT INTO `site_info_dailies` VALUES (25, '2021-10-06', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 5, 0, 0, 8, 3, 5, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-06 04:18:08', '2021-10-07 21:14:39');
INSERT INTO `site_info_dailies` VALUES (26, '2021-10-07', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-07 01:55:12', '2021-10-08 19:33:03');
INSERT INTO `site_info_dailies` VALUES (27, '2021-10-08', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 0, 0, 2, 1, 1, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-08 13:26:50', '2021-10-13 12:23:38');
INSERT INTO `site_info_dailies` VALUES (28, '2021-10-09', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0, 0, 3, 0, 3, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-09 00:57:50', '2021-10-13 12:23:38');
INSERT INTO `site_info_dailies` VALUES (29, '2021-10-10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 3, 0, 0, 4, 1, 3, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-10 02:45:56', '2021-10-13 12:23:38');
INSERT INTO `site_info_dailies` VALUES (30, '2021-10-11', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 4, 4, 0, 0, 8, 4, 4, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-11 01:01:51', '2021-10-13 12:23:38');
INSERT INTO `site_info_dailies` VALUES (31, '2021-10-12', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 1, 0, 0, 3, 2, 1, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-12 14:24:52', '2021-10-13 12:23:38');
INSERT INTO `site_info_dailies` VALUES (32, '2021-10-13', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 13, 2, 0, 0, 9, 7, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-13 08:53:36', '2021-10-17 18:47:40');
INSERT INTO `site_info_dailies` VALUES (33, '2021-10-14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 9, 0, 0, 9, 0, 9, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-14 11:01:08', '2021-10-17 18:47:40');
INSERT INTO `site_info_dailies` VALUES (34, '2021-10-15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 3, 2, 0, 0, 5, 3, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-15 00:28:59', '2021-10-17 18:47:40');
INSERT INTO `site_info_dailies` VALUES (35, '2021-10-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 3, 2, 0, 0, 5, 3, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-16 03:27:38', '2021-10-17 18:47:40');
INSERT INTO `site_info_dailies` VALUES (36, '2021-10-17', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 4, 5, 0, 0, 9, 4, 5, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-17 04:54:40', '2021-10-18 11:34:07');
INSERT INTO `site_info_dailies` VALUES (37, '2021-10-18', 0, 9, 0, 7, 0, 6, 0, 0, 10, 0, 6, 10, 157, 150, 7, 0, 0, 35, 28, 7, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-18 02:08:17', '2021-10-21 14:46:07');
INSERT INTO `site_info_dailies` VALUES (38, '2021-10-19', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 33, 1, 0, 0, 5, 4, 1, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-19 00:42:50', '2021-10-21 14:46:07');
INSERT INTO `site_info_dailies` VALUES (39, '2021-10-20', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 2, 2, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-20 03:53:43', '2021-10-21 14:46:07');
INSERT INTO `site_info_dailies` VALUES (40, '2021-10-21', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 11, 8, 0, 0, 18, 10, 8, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-21 03:21:05', '2021-10-23 14:02:20');
INSERT INTO `site_info_dailies` VALUES (41, '2021-10-22', 0, 2, 0, 1, 0, 2, 0, 0, 2, 0, 2, 2, 59, 57, 2, 0, 0, 10, 8, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-22 06:41:47', '2021-10-23 14:02:20');
INSERT INTO `site_info_dailies` VALUES (42, '2021-10-23', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 35, 2, 0, 0, 21, 19, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-23 07:01:58', '2021-10-24 01:58:06');
INSERT INTO `site_info_dailies` VALUES (43, '2021-10-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 10, 5, 0, 0, 15, 10, 5, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-24 01:58:04', '2021-10-25 08:29:33');
INSERT INTO `site_info_dailies` VALUES (44, '2021-10-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 0, 0, 0, 6, 6, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-25 08:29:31', '2021-10-26 03:09:45');
INSERT INTO `site_info_dailies` VALUES (45, '2021-10-26', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 19, 2, 0, 0, 12, 10, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-26 03:09:44', '2021-10-27 01:00:07');
INSERT INTO `site_info_dailies` VALUES (46, '2021-10-27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 5, 0, 0, 8, 3, 5, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-27 01:00:06', '2021-10-28 03:06:56');
INSERT INTO `site_info_dailies` VALUES (47, '2021-10-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2, 0, 0, 4, 2, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-28 03:06:55', '2021-10-29 16:06:06');
INSERT INTO `site_info_dailies` VALUES (48, '2021-10-29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 6, 1, 0, 0, 5, 4, 1, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-29 16:06:03', '2021-10-30 12:52:32');
INSERT INTO `site_info_dailies` VALUES (49, '2021-10-30', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-30 12:52:30', '2021-10-31 03:49:39');
INSERT INTO `site_info_dailies` VALUES (50, '2021-10-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 1, 7, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-10-31 03:49:38', '2021-11-01 00:27:19');
INSERT INTO `site_info_dailies` VALUES (51, '2021-11-01', 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 21, 16, 5, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-01 00:27:17', '2021-11-02 20:30:49');
INSERT INTO `site_info_dailies` VALUES (52, '2021-11-02', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-02 20:47:15', '2021-11-03 01:05:33');
INSERT INTO `site_info_dailies` VALUES (53, '2021-11-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-03 01:05:32', '2021-11-04 00:37:11');
INSERT INTO `site_info_dailies` VALUES (54, '2021-11-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 4, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-04 00:37:09', '2021-11-05 20:48:25');
INSERT INTO `site_info_dailies` VALUES (55, '2021-11-05', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-05 20:52:08', '2021-11-06 00:46:30');
INSERT INTO `site_info_dailies` VALUES (56, '2021-11-06', 0, 3, 0, 2, 0, 2, 0, 0, 2, 0, 2, 2, 42, 41, 1, 0, 0, 3, 3, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-06 00:46:29', '2021-11-07 02:10:54');
INSERT INTO `site_info_dailies` VALUES (57, '2021-11-07', 0, 3, 0, 1, 0, 1, 0, 0, 3, 0, 1, 3, 55, 54, 1, 0, 0, 3, 3, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-07 02:10:53', '2021-11-08 00:31:41');
INSERT INTO `site_info_dailies` VALUES (58, '2021-11-08', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 5, 4, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-08 00:31:38', '2021-11-09 00:53:38');
INSERT INTO `site_info_dailies` VALUES (59, '2021-11-09', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 4, 6, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-09 00:53:37', '2021-11-10 03:19:31');
INSERT INTO `site_info_dailies` VALUES (60, '2021-11-10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-10 03:19:30', '2021-11-11 20:23:53');
INSERT INTO `site_info_dailies` VALUES (61, '2021-11-12', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 18, 2, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-12 09:57:23', '2021-11-13 02:20:24');
INSERT INTO `site_info_dailies` VALUES (62, '2021-11-13', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 7, 9, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-13 02:20:22', '2021-11-14 11:01:52');
INSERT INTO `site_info_dailies` VALUES (63, '2021-11-14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 4, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-14 11:01:51', '2021-11-15 00:17:36');
INSERT INTO `site_info_dailies` VALUES (64, '2021-11-15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 8, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-15 00:17:35', '2021-11-16 02:11:15');
INSERT INTO `site_info_dailies` VALUES (65, '2021-11-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 5, 7, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-16 02:11:13', '2021-11-17 10:14:04');
INSERT INTO `site_info_dailies` VALUES (66, '2021-11-17', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 6, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-17 10:14:03', '2021-11-18 03:06:40');
INSERT INTO `site_info_dailies` VALUES (67, '2021-11-18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 5, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-18 03:06:39', '2021-11-19 12:40:12');
INSERT INTO `site_info_dailies` VALUES (68, '2021-11-19', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 0, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-19 12:40:08', '2021-11-20 07:43:36');
INSERT INTO `site_info_dailies` VALUES (69, '2021-11-20', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 22, 1, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-20 07:43:35', '2021-11-21 01:25:47');
INSERT INTO `site_info_dailies` VALUES (70, '2021-11-21', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 4, 4, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-21 01:25:45', '2021-11-22 18:35:51');
INSERT INTO `site_info_dailies` VALUES (71, '2021-11-22', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-22 18:35:49', '2021-11-23 11:15:27');
INSERT INTO `site_info_dailies` VALUES (72, '2021-11-23', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-23 11:15:26', '2021-11-24 02:31:45');
INSERT INTO `site_info_dailies` VALUES (73, '2021-11-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 4, 16, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-24 02:31:44', '2021-11-25 03:01:56');
INSERT INTO `site_info_dailies` VALUES (74, '2021-11-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 6, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-25 03:01:55', '2021-11-26 03:00:49');
INSERT INTO `site_info_dailies` VALUES (75, '2021-11-26', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-26 03:00:48', '2021-11-27 13:20:35');
INSERT INTO `site_info_dailies` VALUES (76, '2021-11-27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 6, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-27 13:20:34', '2021-11-28 00:20:57');
INSERT INTO `site_info_dailies` VALUES (77, '2021-11-28', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 15, 4, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-28 00:20:56', '2021-11-29 14:35:53');
INSERT INTO `site_info_dailies` VALUES (78, '2021-11-29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-29 14:35:52', '2021-11-30 03:09:27');
INSERT INTO `site_info_dailies` VALUES (79, '2021-11-30', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 4, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-11-30 03:09:26', '2021-12-01 13:24:09');
INSERT INTO `site_info_dailies` VALUES (80, '2021-12-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-01 13:24:07', '2021-12-02 01:23:15');
INSERT INTO `site_info_dailies` VALUES (81, '2021-12-02', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 5, 4, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-02 01:23:13', '2021-12-03 06:24:49');
INSERT INTO `site_info_dailies` VALUES (82, '2021-12-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 2, 7, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-03 06:24:47', '2021-12-04 00:25:59');
INSERT INTO `site_info_dailies` VALUES (83, '2021-12-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 3, 9, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-04 00:25:56', '2021-12-05 01:31:28');
INSERT INTO `site_info_dailies` VALUES (84, '2021-12-05', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 6, 14, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-05 01:31:27', '2021-12-06 04:25:17');
INSERT INTO `site_info_dailies` VALUES (85, '2021-12-06', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 8, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-06 04:25:16', '2021-12-07 02:59:48');
INSERT INTO `site_info_dailies` VALUES (86, '2021-12-07', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-07 02:59:46', '2021-12-08 00:42:06');
INSERT INTO `site_info_dailies` VALUES (87, '2021-12-08', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 4, 10, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-08 00:42:05', '2021-12-09 04:51:20');
INSERT INTO `site_info_dailies` VALUES (88, '2021-12-09', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 6, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-09 04:51:19', '2021-12-10 16:46:49');
INSERT INTO `site_info_dailies` VALUES (89, '2021-12-10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-10 16:46:47', '2021-12-11 05:52:39');
INSERT INTO `site_info_dailies` VALUES (90, '2021-12-11', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 8, 7, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-11 05:52:38', '2021-12-12 05:30:44');
INSERT INTO `site_info_dailies` VALUES (91, '2021-12-12', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-12 05:30:43', '2021-12-13 05:21:23');
INSERT INTO `site_info_dailies` VALUES (92, '2021-12-13', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 14, 4, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-13 05:21:22', '2021-12-14 07:32:34');
INSERT INTO `site_info_dailies` VALUES (93, '2021-12-14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-14 07:32:33', '2021-12-15 12:23:15');
INSERT INTO `site_info_dailies` VALUES (94, '2021-12-15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-15 12:23:14', '2021-12-16 03:21:19');
INSERT INTO `site_info_dailies` VALUES (95, '2021-12-16', 0, 8, 0, 6, 0, 4, 0, 0, 5, 0, 4, 5, 111, 105, 6, 0, 0, 8, 8, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-16 03:21:17', '2021-12-17 00:10:30');
INSERT INTO `site_info_dailies` VALUES (96, '2021-12-17', 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 34, 31, 3, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-17 00:10:29', '2021-12-18 03:28:12');
INSERT INTO `site_info_dailies` VALUES (97, '2021-12-18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 5, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-18 03:28:11', '2021-12-19 01:20:23');
INSERT INTO `site_info_dailies` VALUES (98, '2021-12-19', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 8, 5, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-19 01:20:21', '2021-12-20 02:34:45');
INSERT INTO `site_info_dailies` VALUES (99, '2021-12-20', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 6, 5, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-20 02:34:44', '2021-12-21 00:29:01');
INSERT INTO `site_info_dailies` VALUES (100, '2021-12-21', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-21 00:28:59', '2021-12-23 00:31:15');
INSERT INTO `site_info_dailies` VALUES (101, '2021-12-23', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 37, 12, 0, 0, 1, 1, 0, 1, 50.00, 0.00, 0.00, 0.00, 1, '2021-12-23 00:31:13', '2021-12-24 12:41:36');
INSERT INTO `site_info_dailies` VALUES (102, '2021-12-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 2, 8, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-24 12:41:33', '2021-12-25 02:23:14');
INSERT INTO `site_info_dailies` VALUES (103, '2021-12-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 5, 7, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-25 02:23:13', '2021-12-26 05:46:17');
INSERT INTO `site_info_dailies` VALUES (104, '2021-12-26', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 7, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-26 05:46:16', '2021-12-27 21:36:33');
INSERT INTO `site_info_dailies` VALUES (105, '2021-12-27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-27 21:36:30', '2021-12-28 01:45:33');
INSERT INTO `site_info_dailies` VALUES (106, '2021-12-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 4, 9, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-28 01:45:32', '2021-12-29 00:29:30');
INSERT INTO `site_info_dailies` VALUES (107, '2021-12-29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 4, 4, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-29 00:29:28', '2021-12-30 02:31:42');
INSERT INTO `site_info_dailies` VALUES (108, '2021-12-30', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 2, 4, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2021-12-30 03:08:47', '2022-01-01 04:42:56');
INSERT INTO `site_info_dailies` VALUES (109, '2022-01-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 6, 9, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-01 04:42:55', '2022-01-02 08:03:21');
INSERT INTO `site_info_dailies` VALUES (110, '2022-01-02', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-02 08:03:20', '2022-01-03 02:09:44');
INSERT INTO `site_info_dailies` VALUES (111, '2022-01-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 6, 9, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-03 02:09:42', '2022-01-04 12:46:44');
INSERT INTO `site_info_dailies` VALUES (112, '2022-01-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-04 12:46:43', '2022-01-05 06:32:25');
INSERT INTO `site_info_dailies` VALUES (113, '2022-01-05', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 7, 8, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-05 06:32:24', '2022-01-06 00:10:14');
INSERT INTO `site_info_dailies` VALUES (114, '2022-01-06', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 10, 2, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-06 06:54:13', '2022-01-07 22:48:07');
INSERT INTO `site_info_dailies` VALUES (115, '2022-01-07', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-07 22:53:06', '2022-01-08 15:39:00');
INSERT INTO `site_info_dailies` VALUES (116, '2022-01-08', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-08 15:38:58', '2022-01-09 00:08:43');
INSERT INTO `site_info_dailies` VALUES (117, '2022-01-09', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 1, 12, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-09 00:08:40', '2022-01-10 03:26:35');
INSERT INTO `site_info_dailies` VALUES (118, '2022-01-10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 6, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-10 03:26:34', '2022-01-11 02:12:37');
INSERT INTO `site_info_dailies` VALUES (119, '2022-01-11', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5, 5, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-11 02:12:34', '2022-01-12 13:07:06');
INSERT INTO `site_info_dailies` VALUES (120, '2022-01-12', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-12 13:07:05', '2022-01-13 00:22:33');
INSERT INTO `site_info_dailies` VALUES (121, '2022-01-13', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 11, 8, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-13 00:22:29', '2022-01-14 02:29:00');
INSERT INTO `site_info_dailies` VALUES (122, '2022-01-14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 11, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-14 02:28:59', '2022-01-15 03:34:17');
INSERT INTO `site_info_dailies` VALUES (123, '2022-01-15', 0, 0, 2, 1, 0, 0, 0, 0, 0, 2, 0, 2, 18, 6, 12, 0, 0, 2, 0, 2, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-15 03:34:15', '2022-01-16 01:08:44');
INSERT INTO `site_info_dailies` VALUES (124, '2022-01-16', 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 31, 24, 7, 0, 0, 1, 0, 1, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-16 01:08:42', '2022-01-17 08:55:23');
INSERT INTO `site_info_dailies` VALUES (125, '2022-01-17', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 3, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-17 08:55:21', '2022-01-18 02:11:59');
INSERT INTO `site_info_dailies` VALUES (126, '2022-01-18', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 23, 1, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-18 02:11:58', '2022-01-19 16:04:57');
INSERT INTO `site_info_dailies` VALUES (127, '2022-01-19', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 8, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-19 09:51:32', '2022-01-20 01:04:25');
INSERT INTO `site_info_dailies` VALUES (128, '2022-01-20', 0, 7, 0, 6, 0, 6, 0, 0, 13, 0, 6, 13, 138, 134, 4, 0, 0, 7, 7, 0, 1, 3000.00, 0.00, 0.00, 0.00, 1, '2022-01-20 01:04:35', '2022-01-22 00:29:51');
INSERT INTO `site_info_dailies` VALUES (129, '2022-01-22', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-22 00:29:46', '2022-01-24 14:47:44');
INSERT INTO `site_info_dailies` VALUES (130, '2022-01-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 4, 5, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-24 14:47:42', '2022-01-25 05:23:42');
INSERT INTO `site_info_dailies` VALUES (131, '2022-01-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-25 05:23:41', '2022-01-26 17:03:23');
INSERT INTO `site_info_dailies` VALUES (132, '2022-01-26', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-26 17:03:22', '2022-01-27 01:40:28');
INSERT INTO `site_info_dailies` VALUES (133, '2022-01-29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 3, 7, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-29 04:46:43', '2022-01-30 02:11:59');
INSERT INTO `site_info_dailies` VALUES (134, '2022-01-30', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 4, 5, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-30 13:31:08', '2022-01-31 16:27:34');
INSERT INTO `site_info_dailies` VALUES (135, '2022-01-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-01-31 16:27:32', '2022-02-01 03:46:12');
INSERT INTO `site_info_dailies` VALUES (136, '2022-02-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 24, 7, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-01 03:46:10', '2022-02-02 00:32:36');
INSERT INTO `site_info_dailies` VALUES (137, '2022-02-02', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 10, 7, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-02 00:32:34', '2022-02-03 01:07:57');
INSERT INTO `site_info_dailies` VALUES (138, '2022-02-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 3, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-03 01:07:55', '2022-02-04 12:00:56');
INSERT INTO `site_info_dailies` VALUES (139, '2022-02-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-04 12:00:54', '2022-02-05 10:36:18');
INSERT INTO `site_info_dailies` VALUES (140, '2022-02-05', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-05 10:36:14', '2022-02-06 00:30:12');
INSERT INTO `site_info_dailies` VALUES (141, '2022-02-06', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 26, 10, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-06 00:30:10', '2022-02-07 11:22:36');
INSERT INTO `site_info_dailies` VALUES (142, '2022-02-07', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 4, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-07 11:22:34', '2022-02-08 13:07:58');
INSERT INTO `site_info_dailies` VALUES (143, '2022-02-08', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-08 13:07:55', '2022-02-09 07:31:56');
INSERT INTO `site_info_dailies` VALUES (144, '2022-02-09', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 8, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-09 07:31:55', '2022-02-10 13:52:35');
INSERT INTO `site_info_dailies` VALUES (145, '2022-02-10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1, 5, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-10 13:52:33', '2022-02-11 04:01:44');
INSERT INTO `site_info_dailies` VALUES (146, '2022-02-11', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-11 04:01:42', '2022-02-12 08:29:00');
INSERT INTO `site_info_dailies` VALUES (147, '2022-02-12', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 3, 8, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-12 08:28:58', '2022-02-13 01:00:15');
INSERT INTO `site_info_dailies` VALUES (148, '2022-02-13', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-13 01:00:13', '2022-02-16 22:09:52');
INSERT INTO `site_info_dailies` VALUES (149, '2022-02-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-16 22:09:49', '2022-02-17 01:33:38');
INSERT INTO `site_info_dailies` VALUES (150, '2022-02-17', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 12, 6, 0, 0, 1, 1, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-17 01:33:37', '2022-02-18 17:56:24');
INSERT INTO `site_info_dailies` VALUES (151, '2022-02-18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-18 17:56:19', '2022-02-19 21:00:34');
INSERT INTO `site_info_dailies` VALUES (152, '2022-02-19', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-19 21:00:32', '2022-02-20 02:16:02');
INSERT INTO `site_info_dailies` VALUES (153, '2022-02-20', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-20 02:16:00', '2022-02-21 19:17:17');
INSERT INTO `site_info_dailies` VALUES (154, '2022-02-21', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 6, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-21 19:17:15', '2022-02-22 09:11:56');
INSERT INTO `site_info_dailies` VALUES (155, '2022-02-22', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 3, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-22 09:11:55', '2022-02-24 09:15:06');
INSERT INTO `site_info_dailies` VALUES (156, '2022-02-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-24 09:15:04', '2022-02-26 02:12:34');
INSERT INTO `site_info_dailies` VALUES (157, '2022-02-26', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-26 16:57:27', '2022-02-28 22:14:44');
INSERT INTO `site_info_dailies` VALUES (158, '2022-02-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-02-28 22:14:41', '2022-03-01 07:52:01');
INSERT INTO `site_info_dailies` VALUES (159, '2022-03-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-01 07:52:00', '2022-03-03 12:06:23');
INSERT INTO `site_info_dailies` VALUES (160, '2022-03-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-03 12:06:21', '2022-03-05 04:59:42');
INSERT INTO `site_info_dailies` VALUES (161, '2022-03-05', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 5, 5, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-05 04:59:40', '2022-03-06 22:18:10');
INSERT INTO `site_info_dailies` VALUES (162, '2022-03-06', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-06 22:18:08', '2022-03-07 12:02:25');
INSERT INTO `site_info_dailies` VALUES (163, '2022-03-07', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 11, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-07 12:02:19', '2022-03-08 04:09:19');
INSERT INTO `site_info_dailies` VALUES (164, '2022-03-08', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 5, 3, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-08 04:09:15', '2022-03-09 14:42:14');
INSERT INTO `site_info_dailies` VALUES (165, '2022-03-09', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 4, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-09 14:42:09', '2022-03-10 11:08:26');
INSERT INTO `site_info_dailies` VALUES (166, '2022-03-10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-10 11:08:25', '2022-03-13 20:00:30');
INSERT INTO `site_info_dailies` VALUES (167, '2022-03-13', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 7, 7, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-13 20:00:28', '2022-03-14 00:14:41');
INSERT INTO `site_info_dailies` VALUES (168, '2022-03-14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 4, 8, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-14 00:14:37', '2022-03-15 08:34:29');
INSERT INTO `site_info_dailies` VALUES (169, '2022-03-15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-15 08:34:27', '2022-03-16 16:27:28');
INSERT INTO `site_info_dailies` VALUES (170, '2022-03-16', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-16 16:27:11', '2022-03-17 21:09:07');
INSERT INTO `site_info_dailies` VALUES (171, '2022-03-17', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-17 21:09:06', '2022-03-18 08:16:48');
INSERT INTO `site_info_dailies` VALUES (172, '2022-03-18', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 11, 7, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-18 08:16:46', '2022-03-20 12:14:13');
INSERT INTO `site_info_dailies` VALUES (173, '2022-03-20', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-20 12:14:11', '2022-03-21 18:31:08');
INSERT INTO `site_info_dailies` VALUES (174, '2022-03-21', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-21 18:31:06', '2022-03-22 16:33:02');
INSERT INTO `site_info_dailies` VALUES (175, '2022-03-22', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-22 16:33:00', '2022-03-23 03:38:52');
INSERT INTO `site_info_dailies` VALUES (176, '2022-03-23', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-23 03:38:50', '2022-03-24 08:13:00');
INSERT INTO `site_info_dailies` VALUES (177, '2022-03-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 1, '2022-03-24 08:12:58', '2022-03-25 14:48:26');
INSERT INTO `site_info_dailies` VALUES (178, '2022-03-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 0, '2022-03-25 14:48:25', '2022-03-25 14:49:26');

-- ----------------------------
-- Table structure for stop_words
-- ----------------------------
DROP TABLE IF EXISTS `stop_words`;
CREATE TABLE `stop_words`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '敏感词 id',
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建用户 id',
  `ugc` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户内容处理方式',
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名处理方式',
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `signature` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户签名处理方式',
  `dialog` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '短消息处理方式',
  `find` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '敏感词或查找方式',
  `replacement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '替换词或替换规则',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stop_words
-- ----------------------------

-- ----------------------------
-- Table structure for thread_red_packets
-- ----------------------------
DROP TABLE IF EXISTS `thread_red_packets`;
CREATE TABLE `thread_red_packets`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '红包ID',
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的threads主键ID',
  `post_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的posts主键ID',
  `rule` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发放规则，0定额，1随机',
  `condition` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '领取红包条件，0回复，1集赞',
  `likenum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '若红包领取条件为集赞，必填集赞数',
  `money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '红包总金额',
  `number` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '红包个数',
  `remain_money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '剩余红包总额',
  `remain_number` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '剩余红包个数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0:红包已过期,1:红包未过期',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_red_packets
-- ----------------------------

-- ----------------------------
-- Table structure for thread_rewards
-- ----------------------------
DROP TABLE IF EXISTS `thread_rewards`;
CREATE TABLE `thread_rewards`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '悬赏帖ID',
  `thread_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '关联的threads主键ID',
  `post_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '关联的posts主键ID',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0为所有人回答，1为指定人回答',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `answer_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '被指定人ID，可为空',
  `money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '悬赏金额',
  `remain_money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '剩余的悬赏金额',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `expired_at` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_rewards
-- ----------------------------

-- ----------------------------
-- Table structure for thread_stick_sort
-- ----------------------------
DROP TABLE IF EXISTS `thread_stick_sort`;
CREATE TABLE `thread_stick_sort`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '置顶排序 id',
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '主题 id',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_stick_sort
-- ----------------------------

-- ----------------------------
-- Table structure for thread_sticks
-- ----------------------------
DROP TABLE IF EXISTS `thread_sticks`;
CREATE TABLE `thread_sticks`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_sticks
-- ----------------------------

-- ----------------------------
-- Table structure for thread_tag
-- ----------------------------
DROP TABLE IF EXISTS `thread_tag`;
CREATE TABLE `thread_tag`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '帖子id',
  `tag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签 TEXT/IMAGE/AUDIO/VIDEO/QA/GOODS...',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `thread_id_tag`(`thread_id`, `tag`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 269 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_tag
-- ----------------------------
INSERT INTO `thread_tag` VALUES (1, 1, '100', '2021-08-01 00:39:43', '2021-08-01 00:39:43');
INSERT INTO `thread_tag` VALUES (2, 2, '100', '2021-08-01 00:42:35', '2021-08-01 00:42:35');
INSERT INTO `thread_tag` VALUES (4, 3, '101', '2021-08-01 00:44:31', '2021-08-01 00:44:31');
INSERT INTO `thread_tag` VALUES (5, 4, '100', '2021-08-01 00:47:16', '2021-08-01 00:47:16');
INSERT INTO `thread_tag` VALUES (7, 5, '100', '2021-08-01 00:48:01', '2021-08-01 00:48:01');
INSERT INTO `thread_tag` VALUES (8, 6, '100', '2021-08-01 00:51:26', '2021-08-01 00:51:26');
INSERT INTO `thread_tag` VALUES (9, 7, '100', '2021-08-01 00:52:52', '2021-08-01 00:52:52');
INSERT INTO `thread_tag` VALUES (10, 7, '101', '2021-08-01 00:52:52', '2021-08-01 00:52:52');
INSERT INTO `thread_tag` VALUES (14, 10, '100', '2021-08-01 12:41:38', '2021-08-01 12:41:38');
INSERT INTO `thread_tag` VALUES (15, 10, '101', '2021-08-01 12:41:38', '2021-08-01 12:41:38');
INSERT INTO `thread_tag` VALUES (20, 15, '100', '2021-08-02 02:18:30', '2021-08-02 02:18:30');
INSERT INTO `thread_tag` VALUES (21, 15, '101', '2021-08-02 02:18:30', '2021-08-02 02:18:30');
INSERT INTO `thread_tag` VALUES (22, 16, '100', '2021-08-02 11:25:24', '2021-08-02 11:25:24');
INSERT INTO `thread_tag` VALUES (23, 17, '100', '2021-08-02 14:37:28', '2021-08-02 14:37:28');
INSERT INTO `thread_tag` VALUES (24, 18, '100', '2021-08-02 15:00:54', '2021-08-02 15:00:54');
INSERT INTO `thread_tag` VALUES (25, 13, '100', '2021-08-02 15:01:57', '2021-08-02 15:01:57');
INSERT INTO `thread_tag` VALUES (26, 14, '100', '2021-08-02 15:02:52', '2021-08-02 15:02:52');
INSERT INTO `thread_tag` VALUES (27, 11, '100', '2021-08-02 15:10:53', '2021-08-02 15:10:53');
INSERT INTO `thread_tag` VALUES (29, 9, '100', '2021-08-02 15:13:25', '2021-08-02 15:13:25');
INSERT INTO `thread_tag` VALUES (30, 8, '101', '2021-08-02 15:14:00', '2021-08-02 15:14:00');
INSERT INTO `thread_tag` VALUES (31, 19, '100', '2021-08-02 15:20:13', '2021-08-02 15:20:13');
INSERT INTO `thread_tag` VALUES (32, 20, '100', '2021-08-02 15:22:13', '2021-08-02 15:22:13');
INSERT INTO `thread_tag` VALUES (33, 21, '100', '2021-08-02 15:27:36', '2021-08-02 15:27:36');
INSERT INTO `thread_tag` VALUES (34, 22, '100', '2021-08-02 15:34:28', '2021-08-02 15:34:28');
INSERT INTO `thread_tag` VALUES (35, 12, '100', '2021-08-02 15:40:36', '2021-08-02 15:40:36');
INSERT INTO `thread_tag` VALUES (36, 23, '100', '2021-08-02 16:30:09', '2021-08-02 16:30:09');
INSERT INTO `thread_tag` VALUES (37, 24, '100', '2021-08-02 16:32:29', '2021-08-02 16:32:29');
INSERT INTO `thread_tag` VALUES (41, 25, '100', '2021-08-02 16:39:30', '2021-08-02 16:39:30');
INSERT INTO `thread_tag` VALUES (42, 26, '100', '2021-08-02 16:50:12', '2021-08-02 16:50:12');
INSERT INTO `thread_tag` VALUES (43, 27, '100', '2021-08-02 20:29:10', '2021-08-02 20:29:10');
INSERT INTO `thread_tag` VALUES (44, 28, '100', '2021-08-02 20:34:08', '2021-08-02 20:34:08');
INSERT INTO `thread_tag` VALUES (45, 29, '100', '2021-08-02 20:40:11', '2021-08-02 20:40:11');
INSERT INTO `thread_tag` VALUES (47, 30, '100', '2021-08-02 20:50:40', '2021-08-02 20:50:40');
INSERT INTO `thread_tag` VALUES (49, 31, '100', '2021-08-03 16:25:29', '2021-08-03 16:25:29');
INSERT INTO `thread_tag` VALUES (50, 32, '100', '2021-08-03 16:27:16', '2021-08-03 16:27:16');
INSERT INTO `thread_tag` VALUES (51, 33, '100', '2021-08-03 16:31:13', '2021-08-03 16:31:13');
INSERT INTO `thread_tag` VALUES (52, 34, '100', '2021-08-03 16:34:40', '2021-08-03 16:34:40');
INSERT INTO `thread_tag` VALUES (53, 35, '100', '2021-08-03 16:39:48', '2021-08-03 16:39:48');
INSERT INTO `thread_tag` VALUES (54, 35, '101', '2021-08-03 16:39:48', '2021-08-03 16:39:48');
INSERT INTO `thread_tag` VALUES (56, 37, '100', '2021-08-03 16:46:15', '2021-08-03 16:46:15');
INSERT INTO `thread_tag` VALUES (64, 41, '100', '2021-08-04 18:55:03', '2021-08-04 18:55:03');
INSERT INTO `thread_tag` VALUES (67, 43, '100', '2021-08-04 20:43:51', '2021-08-04 20:43:51');
INSERT INTO `thread_tag` VALUES (68, 44, '100', '2021-08-04 20:52:11', '2021-08-04 20:52:11');
INSERT INTO `thread_tag` VALUES (69, 45, '100', '2021-08-06 15:14:56', '2021-08-06 15:14:56');
INSERT INTO `thread_tag` VALUES (70, 46, '100', '2021-08-06 15:17:33', '2021-08-06 15:17:33');
INSERT INTO `thread_tag` VALUES (71, 47, '100', '2021-08-06 15:21:48', '2021-08-06 15:21:48');
INSERT INTO `thread_tag` VALUES (72, 48, '100', '2021-08-06 15:22:46', '2021-08-06 15:22:46');
INSERT INTO `thread_tag` VALUES (73, 49, '100', '2021-08-06 15:26:45', '2021-08-06 15:26:45');
INSERT INTO `thread_tag` VALUES (74, 39, '100', '2021-08-06 15:30:48', '2021-08-06 15:30:48');
INSERT INTO `thread_tag` VALUES (75, 39, '101', '2021-08-06 15:30:48', '2021-08-06 15:30:48');
INSERT INTO `thread_tag` VALUES (76, 42, '100', '2021-08-06 15:32:30', '2021-08-06 15:32:30');
INSERT INTO `thread_tag` VALUES (77, 42, '108', '2021-08-06 15:32:30', '2021-08-06 15:32:30');
INSERT INTO `thread_tag` VALUES (78, 38, '100', '2021-08-06 15:33:43', '2021-08-06 15:33:43');
INSERT INTO `thread_tag` VALUES (80, 50, '100', '2021-08-06 15:47:10', '2021-08-06 15:47:10');
INSERT INTO `thread_tag` VALUES (81, 51, '100', '2021-08-06 22:42:57', '2021-08-06 22:42:57');
INSERT INTO `thread_tag` VALUES (82, 52, '100', '2021-08-06 22:47:19', '2021-08-06 22:47:19');
INSERT INTO `thread_tag` VALUES (85, 54, '100', '2021-08-07 16:09:50', '2021-08-07 16:09:50');
INSERT INTO `thread_tag` VALUES (86, 55, '100', '2021-08-07 16:13:49', '2021-08-07 16:13:49');
INSERT INTO `thread_tag` VALUES (87, 56, '100', '2021-08-07 16:19:25', '2021-08-07 16:19:25');
INSERT INTO `thread_tag` VALUES (88, 56, '101', '2021-08-07 16:19:25', '2021-08-07 16:19:25');
INSERT INTO `thread_tag` VALUES (89, 53, '100', '2021-08-07 16:22:00', '2021-08-07 16:22:00');
INSERT INTO `thread_tag` VALUES (90, 53, '101', '2021-08-07 16:22:00', '2021-08-07 16:22:00');
INSERT INTO `thread_tag` VALUES (91, 57, '100', '2021-08-07 16:31:27', '2021-08-07 16:31:27');
INSERT INTO `thread_tag` VALUES (92, 58, '100', '2021-08-07 16:37:29', '2021-08-07 16:37:29');
INSERT INTO `thread_tag` VALUES (94, 59, '100', '2021-08-07 16:40:43', '2021-08-07 16:40:43');
INSERT INTO `thread_tag` VALUES (97, 62, '100', '2021-08-07 16:44:39', '2021-08-07 16:44:39');
INSERT INTO `thread_tag` VALUES (98, 61, '100', '2021-08-07 16:45:26', '2021-08-07 16:45:26');
INSERT INTO `thread_tag` VALUES (99, 60, '100', '2021-08-07 16:46:23', '2021-08-07 16:46:23');
INSERT INTO `thread_tag` VALUES (108, 63, '100', '2021-08-08 01:14:24', '2021-08-08 01:14:24');
INSERT INTO `thread_tag` VALUES (109, 63, '101', '2021-08-08 01:14:24', '2021-08-08 01:14:24');
INSERT INTO `thread_tag` VALUES (110, 64, '100', '2021-08-09 13:48:47', '2021-08-09 13:48:47');
INSERT INTO `thread_tag` VALUES (111, 65, '100', '2021-08-09 13:50:26', '2021-08-09 13:50:26');
INSERT INTO `thread_tag` VALUES (112, 66, '100', '2021-08-09 13:52:21', '2021-08-09 13:52:21');
INSERT INTO `thread_tag` VALUES (113, 67, '100', '2021-08-09 13:55:15', '2021-08-09 13:55:15');
INSERT INTO `thread_tag` VALUES (114, 68, '100', '2021-08-09 17:26:59', '2021-08-09 17:26:59');
INSERT INTO `thread_tag` VALUES (115, 69, '100', '2021-08-09 17:50:07', '2021-08-09 17:50:07');
INSERT INTO `thread_tag` VALUES (116, 70, '100', '2021-08-09 17:51:37', '2021-08-09 17:51:37');
INSERT INTO `thread_tag` VALUES (117, 71, '100', '2021-08-09 17:53:10', '2021-08-09 17:53:10');
INSERT INTO `thread_tag` VALUES (118, 72, '100', '2021-08-09 17:54:20', '2021-08-09 17:54:20');
INSERT INTO `thread_tag` VALUES (120, 73, '100', '2021-08-09 17:59:01', '2021-08-09 17:59:01');
INSERT INTO `thread_tag` VALUES (123, 76, '101', '2021-08-09 23:14:44', '2021-08-09 23:14:44');
INSERT INTO `thread_tag` VALUES (124, 77, '100', '2021-08-10 22:54:05', '2021-08-10 22:54:05');
INSERT INTO `thread_tag` VALUES (125, 74, '100', '2021-08-10 22:56:13', '2021-08-10 22:56:13');
INSERT INTO `thread_tag` VALUES (126, 75, '100', '2021-08-10 22:57:29', '2021-08-10 22:57:29');
INSERT INTO `thread_tag` VALUES (127, 78, '100', '2021-08-10 23:00:08', '2021-08-10 23:00:08');
INSERT INTO `thread_tag` VALUES (128, 79, '100', '2021-08-10 23:02:02', '2021-08-10 23:02:02');
INSERT INTO `thread_tag` VALUES (129, 40, '100', '2021-08-10 23:04:32', '2021-08-10 23:04:32');
INSERT INTO `thread_tag` VALUES (130, 40, '101', '2021-08-10 23:04:32', '2021-08-10 23:04:32');
INSERT INTO `thread_tag` VALUES (131, 80, '100', '2021-08-10 23:05:56', '2021-08-10 23:05:56');
INSERT INTO `thread_tag` VALUES (132, 81, '100', '2021-08-10 23:08:51', '2021-08-10 23:08:51');
INSERT INTO `thread_tag` VALUES (133, 81, '101', '2021-08-10 23:08:51', '2021-08-10 23:08:51');
INSERT INTO `thread_tag` VALUES (134, 82, '100', '2021-08-10 23:10:46', '2021-08-10 23:10:46');
INSERT INTO `thread_tag` VALUES (135, 83, '100', '2021-08-10 23:55:48', '2021-08-10 23:55:48');
INSERT INTO `thread_tag` VALUES (136, 84, '100', '2021-08-10 23:58:37', '2021-08-10 23:58:37');
INSERT INTO `thread_tag` VALUES (137, 85, '100', '2021-08-10 23:59:26', '2021-08-10 23:59:26');
INSERT INTO `thread_tag` VALUES (138, 86, '100', '2021-08-11 00:03:10', '2021-08-11 00:03:10');
INSERT INTO `thread_tag` VALUES (139, 87, '100', '2021-08-11 00:05:30', '2021-08-11 00:05:30');
INSERT INTO `thread_tag` VALUES (140, 88, '100', '2021-08-11 00:07:52', '2021-08-11 00:07:52');
INSERT INTO `thread_tag` VALUES (141, 88, '101', '2021-08-11 00:07:52', '2021-08-11 00:07:52');
INSERT INTO `thread_tag` VALUES (142, 89, '100', '2021-08-11 19:22:52', '2021-08-11 19:22:52');
INSERT INTO `thread_tag` VALUES (143, 90, '100', '2021-08-12 14:50:05', '2021-08-12 14:50:05');
INSERT INTO `thread_tag` VALUES (144, 91, '100', '2021-08-12 14:52:53', '2021-08-12 14:52:53');
INSERT INTO `thread_tag` VALUES (145, 92, '100', '2021-08-12 14:56:31', '2021-08-12 14:56:31');
INSERT INTO `thread_tag` VALUES (146, 93, '100', '2021-08-12 14:57:56', '2021-08-12 14:57:56');
INSERT INTO `thread_tag` VALUES (147, 94, '100', '2021-08-12 14:59:15', '2021-08-12 14:59:15');
INSERT INTO `thread_tag` VALUES (148, 95, '100', '2021-08-12 15:00:58', '2021-08-12 15:00:58');
INSERT INTO `thread_tag` VALUES (149, 96, '100', '2021-08-12 15:05:32', '2021-08-12 15:05:32');
INSERT INTO `thread_tag` VALUES (150, 96, '101', '2021-08-12 15:05:32', '2021-08-12 15:05:32');
INSERT INTO `thread_tag` VALUES (151, 97, '100', '2021-08-12 15:07:28', '2021-08-12 15:07:28');
INSERT INTO `thread_tag` VALUES (152, 98, '100', '2021-08-12 15:12:11', '2021-08-12 15:12:11');
INSERT INTO `thread_tag` VALUES (153, 99, '100', '2021-08-12 15:16:21', '2021-08-12 15:16:21');
INSERT INTO `thread_tag` VALUES (154, 100, '101', '2021-08-12 15:32:33', '2021-08-12 15:32:33');
INSERT INTO `thread_tag` VALUES (158, 101, '100', '2021-08-13 19:55:50', '2021-08-13 19:55:50');
INSERT INTO `thread_tag` VALUES (159, 102, '100', '2021-08-13 23:26:00', '2021-08-13 23:26:00');
INSERT INTO `thread_tag` VALUES (160, 103, '100', '2021-08-14 00:37:24', '2021-08-14 00:37:24');
INSERT INTO `thread_tag` VALUES (161, 104, '100', '2021-08-20 16:04:04', '2021-08-20 16:04:04');
INSERT INTO `thread_tag` VALUES (162, 105, '100', '2021-08-20 19:34:31', '2021-08-20 19:34:31');
INSERT INTO `thread_tag` VALUES (163, 106, '100', '2021-08-20 19:36:10', '2021-08-20 19:36:10');
INSERT INTO `thread_tag` VALUES (164, 107, '100', '2021-08-20 19:39:40', '2021-08-20 19:39:40');
INSERT INTO `thread_tag` VALUES (165, 108, '100', '2021-08-20 19:43:34', '2021-08-20 19:43:34');
INSERT INTO `thread_tag` VALUES (166, 108, '101', '2021-08-20 19:43:34', '2021-08-20 19:43:34');
INSERT INTO `thread_tag` VALUES (167, 109, '100', '2021-08-20 19:47:03', '2021-08-20 19:47:03');
INSERT INTO `thread_tag` VALUES (168, 110, '100', '2021-08-20 19:52:38', '2021-08-20 19:52:38');
INSERT INTO `thread_tag` VALUES (169, 111, '100', '2021-08-20 19:54:08', '2021-08-20 19:54:08');
INSERT INTO `thread_tag` VALUES (170, 112, '100', '2021-08-20 19:56:21', '2021-08-20 19:56:21');
INSERT INTO `thread_tag` VALUES (171, 113, '100', '2021-08-21 21:07:39', '2021-08-21 21:07:39');
INSERT INTO `thread_tag` VALUES (172, 114, '100', '2021-08-21 21:13:08', '2021-08-21 21:13:08');
INSERT INTO `thread_tag` VALUES (173, 115, '100', '2021-08-21 21:15:15', '2021-08-21 21:15:15');
INSERT INTO `thread_tag` VALUES (174, 116, '100', '2021-08-21 21:21:16', '2021-08-21 21:21:16');
INSERT INTO `thread_tag` VALUES (175, 117, '100', '2021-08-22 19:25:57', '2021-08-22 19:25:57');
INSERT INTO `thread_tag` VALUES (176, 118, '100', '2021-08-22 19:28:54', '2021-08-22 19:28:54');
INSERT INTO `thread_tag` VALUES (177, 119, '100', '2021-08-24 20:56:34', '2021-08-24 20:56:34');
INSERT INTO `thread_tag` VALUES (178, 119, '101', '2021-08-24 20:56:34', '2021-08-24 20:56:34');
INSERT INTO `thread_tag` VALUES (179, 120, '100', '2021-08-24 20:58:50', '2021-08-24 20:58:50');
INSERT INTO `thread_tag` VALUES (180, 121, '100', '2021-08-24 21:15:11', '2021-08-24 21:15:11');
INSERT INTO `thread_tag` VALUES (181, 121, '101', '2021-08-24 21:15:11', '2021-08-24 21:15:11');
INSERT INTO `thread_tag` VALUES (182, 122, '100', '2021-08-25 21:20:33', '2021-08-25 21:20:33');
INSERT INTO `thread_tag` VALUES (183, 123, '100', '2021-08-25 21:21:40', '2021-08-25 21:21:40');
INSERT INTO `thread_tag` VALUES (184, 124, '100', '2021-08-25 21:23:20', '2021-08-25 21:23:20');
INSERT INTO `thread_tag` VALUES (185, 125, '100', '2021-08-25 21:25:38', '2021-08-25 21:25:38');
INSERT INTO `thread_tag` VALUES (186, 125, '101', '2021-08-25 21:25:38', '2021-08-25 21:25:38');
INSERT INTO `thread_tag` VALUES (187, 126, '100', '2021-09-01 23:06:17', '2021-09-01 23:06:17');
INSERT INTO `thread_tag` VALUES (188, 127, '100', '2021-09-01 23:07:41', '2021-09-01 23:07:41');
INSERT INTO `thread_tag` VALUES (189, 128, '101', '2021-09-02 23:07:58', '2021-09-02 23:07:58');
INSERT INTO `thread_tag` VALUES (190, 129, '100', '2021-09-02 23:09:54', '2021-09-02 23:09:54');
INSERT INTO `thread_tag` VALUES (191, 130, '100', '2021-09-02 23:13:28', '2021-09-02 23:13:28');
INSERT INTO `thread_tag` VALUES (192, 130, '101', '2021-09-02 23:13:28', '2021-09-02 23:13:28');
INSERT INTO `thread_tag` VALUES (203, 131, '100', '2021-09-04 20:26:42', '2021-09-04 20:26:42');
INSERT INTO `thread_tag` VALUES (204, 131, '101', '2021-09-04 20:26:42', '2021-09-04 20:26:42');
INSERT INTO `thread_tag` VALUES (209, 133, '100', '2021-09-04 20:37:37', '2021-09-04 20:37:37');
INSERT INTO `thread_tag` VALUES (210, 132, '100', '2021-09-04 20:40:05', '2021-09-04 20:40:05');
INSERT INTO `thread_tag` VALUES (211, 132, '101', '2021-09-04 20:40:05', '2021-09-04 20:40:05');
INSERT INTO `thread_tag` VALUES (212, 134, '100', '2021-09-04 20:55:36', '2021-09-04 20:55:36');
INSERT INTO `thread_tag` VALUES (213, 135, '100', '2021-09-04 21:07:10', '2021-09-04 21:07:10');
INSERT INTO `thread_tag` VALUES (214, 136, '100', '2021-09-07 21:34:54', '2021-09-07 21:34:54');
INSERT INTO `thread_tag` VALUES (215, 137, '100', '2021-09-07 21:37:22', '2021-09-07 21:37:22');
INSERT INTO `thread_tag` VALUES (216, 138, '100', '2021-09-07 21:38:48', '2021-09-07 21:38:48');
INSERT INTO `thread_tag` VALUES (217, 139, '100', '2021-09-07 21:39:49', '2021-09-07 21:39:49');
INSERT INTO `thread_tag` VALUES (218, 140, '100', '2021-09-07 21:43:45', '2021-09-07 21:43:45');
INSERT INTO `thread_tag` VALUES (219, 140, '101', '2021-09-07 21:43:45', '2021-09-07 21:43:45');
INSERT INTO `thread_tag` VALUES (220, 36, '101', '2021-09-07 21:48:29', '2021-09-07 21:48:29');
INSERT INTO `thread_tag` VALUES (221, 141, '100', '2021-09-07 21:53:12', '2021-09-07 21:53:12');
INSERT INTO `thread_tag` VALUES (222, 142, '100', '2021-09-11 14:12:54', '2021-09-11 14:12:54');
INSERT INTO `thread_tag` VALUES (223, 143, '100', '2021-09-15 21:47:44', '2021-09-15 21:47:44');
INSERT INTO `thread_tag` VALUES (224, 144, '100', '2021-09-15 21:55:39', '2021-09-15 21:55:39');
INSERT INTO `thread_tag` VALUES (225, 144, '101', '2021-09-15 21:55:39', '2021-09-15 21:55:39');
INSERT INTO `thread_tag` VALUES (226, 145, '100', '2021-09-18 00:02:49', '2021-09-18 00:02:49');
INSERT INTO `thread_tag` VALUES (227, 146, '100', '2021-09-21 21:17:19', '2021-09-21 21:17:19');
INSERT INTO `thread_tag` VALUES (228, 146, '101', '2021-09-21 21:17:19', '2021-09-21 21:17:19');
INSERT INTO `thread_tag` VALUES (229, 147, '100', '2021-09-21 21:20:29', '2021-09-21 21:20:29');
INSERT INTO `thread_tag` VALUES (230, 147, '101', '2021-09-21 21:20:29', '2021-09-21 21:20:29');
INSERT INTO `thread_tag` VALUES (231, 148, '100', '2021-09-21 21:23:24', '2021-09-21 21:23:24');
INSERT INTO `thread_tag` VALUES (232, 149, '100', '2021-09-21 21:49:49', '2021-09-21 21:49:49');
INSERT INTO `thread_tag` VALUES (233, 150, '100', '2021-09-30 22:20:50', '2021-09-30 22:20:50');
INSERT INTO `thread_tag` VALUES (234, 151, '100', '2021-09-30 22:23:05', '2021-09-30 22:23:05');
INSERT INTO `thread_tag` VALUES (235, 152, '100', '2021-09-30 22:27:12', '2021-09-30 22:27:12');
INSERT INTO `thread_tag` VALUES (236, 153, '100', '2021-10-03 21:22:38', '2021-10-03 21:22:38');
INSERT INTO `thread_tag` VALUES (237, 154, '100', '2021-10-03 21:24:07', '2021-10-03 21:24:07');
INSERT INTO `thread_tag` VALUES (238, 155, '100', '2021-10-03 21:25:48', '2021-10-03 21:25:48');
INSERT INTO `thread_tag` VALUES (239, 156, '100', '2021-10-03 21:28:49', '2021-10-03 21:28:49');
INSERT INTO `thread_tag` VALUES (240, 157, '100', '2021-10-18 21:49:18', '2021-10-18 21:49:18');
INSERT INTO `thread_tag` VALUES (241, 158, '100', '2021-10-18 21:52:00', '2021-10-18 21:52:00');
INSERT INTO `thread_tag` VALUES (242, 159, '100', '2021-10-18 21:55:26', '2021-10-18 21:55:26');
INSERT INTO `thread_tag` VALUES (243, 160, '100', '2021-10-18 21:58:35', '2021-10-18 21:58:35');
INSERT INTO `thread_tag` VALUES (244, 161, '100', '2021-10-18 22:01:34', '2021-10-18 22:01:34');
INSERT INTO `thread_tag` VALUES (245, 162, '100', '2021-10-18 22:08:31', '2021-10-18 22:08:31');
INSERT INTO `thread_tag` VALUES (246, 162, '101', '2021-10-18 22:08:31', '2021-10-18 22:08:31');
INSERT INTO `thread_tag` VALUES (249, 163, '100', '2021-10-22 13:30:34', '2021-10-22 13:30:34');
INSERT INTO `thread_tag` VALUES (250, 164, '100', '2021-10-22 13:50:09', '2021-10-22 13:50:09');
INSERT INTO `thread_tag` VALUES (251, 165, '100', '2021-11-01 19:22:37', '2021-11-01 19:22:37');
INSERT INTO `thread_tag` VALUES (253, 166, '100', '2021-11-06 21:34:09', '2021-11-06 21:34:09');
INSERT INTO `thread_tag` VALUES (254, 167, '100', '2021-11-06 21:36:10', '2021-11-06 21:36:10');
INSERT INTO `thread_tag` VALUES (256, 168, '100', '2021-11-07 19:52:36', '2021-11-07 19:52:36');
INSERT INTO `thread_tag` VALUES (257, 169, '100', '2021-12-16 14:12:02', '2021-12-16 14:12:02');
INSERT INTO `thread_tag` VALUES (258, 170, '100', '2021-12-16 14:15:14', '2021-12-16 14:15:14');
INSERT INTO `thread_tag` VALUES (259, 171, '100', '2021-12-16 14:19:34', '2021-12-16 14:19:34');
INSERT INTO `thread_tag` VALUES (260, 172, '100', '2021-12-16 16:03:56', '2021-12-16 16:03:56');
INSERT INTO `thread_tag` VALUES (261, 173, '100', '2022-01-16 18:38:21', '2022-01-16 18:38:21');
INSERT INTO `thread_tag` VALUES (262, 174, '100', '2022-01-20 21:34:31', '2022-01-20 21:34:31');
INSERT INTO `thread_tag` VALUES (263, 175, '100', '2022-01-20 21:36:57', '2022-01-20 21:36:57');
INSERT INTO `thread_tag` VALUES (264, 176, '100', '2022-01-20 21:39:44', '2022-01-20 21:39:44');
INSERT INTO `thread_tag` VALUES (265, 176, '101', '2022-01-20 21:39:44', '2022-01-20 21:39:44');
INSERT INTO `thread_tag` VALUES (266, 177, '101', '2022-01-20 21:42:32', '2022-01-20 21:42:32');
INSERT INTO `thread_tag` VALUES (267, 178, '100', '2022-01-20 21:45:23', '2022-01-20 21:45:23');
INSERT INTO `thread_tag` VALUES (268, 179, '100', '2022-01-20 21:53:45', '2022-01-20 21:53:45');

-- ----------------------------
-- Table structure for thread_tom
-- ----------------------------
DROP TABLE IF EXISTS `thread_tom`;
CREATE TABLE `thread_tom`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '帖子id',
  `tom_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '帖子插件id',
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '元数据索引 $0,$1,$2 资源占位符',
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资源结构化数据',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '-1：删除 0：正常',
  `price_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '插件/组件是否部分付费',
  `price_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}' COMMENT '插件/组件部分付费id集合',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `thread_id_key`(`thread_id`, `tom_type`, `key`, `status`) USING BTREE,
  INDEX `tom_type`(`tom_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_tom
-- ----------------------------
INSERT INTO `thread_tom` VALUES (1, 3, '101', '101', '{\"imageIds\":[1]}', 0, 0, '{}', '2021-08-01 00:44:07', '2021-08-01 00:44:31');
INSERT INTO `thread_tom` VALUES (2, 7, '101', '101', '{\"imageIds\":[2]}', 0, 0, '{}', '2021-08-01 00:52:52', '2021-08-01 00:52:52');
INSERT INTO `thread_tom` VALUES (3, 8, '101', '101', '{\"imageIds\":[4,6,7]}', 0, 0, '{}', '2021-08-01 01:03:34', '2021-08-01 01:03:34');
INSERT INTO `thread_tom` VALUES (4, 10, '101', '101', '{\"imageIds\":[11,12]}', 0, 0, '{}', '2021-08-01 12:40:17', '2021-08-01 12:41:38');
INSERT INTO `thread_tom` VALUES (5, 15, '101', '101', '{\"imageIds\":[16,15]}', 0, 0, '{}', '2021-08-02 02:18:30', '2021-08-02 02:18:30');
INSERT INTO `thread_tom` VALUES (6, 8, '101', '101', '{\"imageIds\":[4,6,7]}', 0, 0, '{}', '2021-08-02 15:14:00', '2021-08-02 15:14:00');
INSERT INTO `thread_tom` VALUES (7, 35, '101', '101', '{\"imageIds\":[18]}', 0, 0, '{}', '2021-08-03 16:39:48', '2021-08-03 16:39:48');
INSERT INTO `thread_tom` VALUES (8, 36, '101', '101', '{\"imageIds\":[19]}', 0, 0, '{}', '2021-08-03 16:42:48', '2021-09-07 21:48:29');
INSERT INTO `thread_tom` VALUES (9, 39, '101', '101', '{\"imageIds\":[20]}', 0, 0, '{}', '2021-08-03 16:51:57', '2021-08-06 15:30:48');
INSERT INTO `thread_tom` VALUES (10, 40, '101', '101', '{\"imageIds\":[21,22,23]}', 0, 0, '{}', '2021-08-04 00:19:58', '2021-08-10 23:04:32');
INSERT INTO `thread_tom` VALUES (11, 42, '108', '108', '{\"docIds\":[26]}', 0, 0, '{}', '2021-08-04 20:36:49', '2021-08-06 15:32:30');
INSERT INTO `thread_tom` VALUES (12, 53, '101', '101', '{\"imageIds\":[36,35,37]}', 0, 0, '{}', '2021-08-07 16:06:50', '2021-08-07 16:22:00');
INSERT INTO `thread_tom` VALUES (13, 56, '101', '101', '{\"imageIds\":[34]}', 0, 0, '{}', '2021-08-07 16:19:25', '2021-08-07 16:19:25');
INSERT INTO `thread_tom` VALUES (14, 63, '101', '101', '{\"imageIds\":[38,39]}', 0, 0, '{}', '2021-08-08 01:09:29', '2021-08-08 01:14:24');
INSERT INTO `thread_tom` VALUES (15, 76, '101', '101', '{\"imageIds\":[42]}', 0, 0, '{}', '2021-08-09 23:14:44', '2021-08-09 23:14:44');
INSERT INTO `thread_tom` VALUES (16, 81, '101', '101', '{\"imageIds\":[43]}', 0, 0, '{}', '2021-08-10 23:08:51', '2021-08-10 23:08:51');
INSERT INTO `thread_tom` VALUES (17, 88, '101', '101', '{\"imageIds\":[45]}', 0, 0, '{}', '2021-08-11 00:07:52', '2021-08-11 00:07:52');
INSERT INTO `thread_tom` VALUES (18, 96, '101', '101', '{\"imageIds\":[46,47]}', 0, 0, '{}', '2021-08-12 15:05:32', '2021-08-12 15:05:32');
INSERT INTO `thread_tom` VALUES (19, 100, '101', '101', '{\"imageIds\":[50,51]}', 0, 0, '{}', '2021-08-12 15:32:33', '2021-08-12 15:32:33');
INSERT INTO `thread_tom` VALUES (20, 108, '101', '101', '{\"imageIds\":[52]}', 0, 0, '{}', '2021-08-20 19:43:34', '2021-08-20 19:43:34');
INSERT INTO `thread_tom` VALUES (21, 119, '101', '101', '{\"imageIds\":[54]}', 0, 0, '{}', '2021-08-24 20:56:34', '2021-08-24 20:56:34');
INSERT INTO `thread_tom` VALUES (22, 121, '101', '101', '{\"imageIds\":[56,55,57]}', 0, 0, '{}', '2021-08-24 21:15:11', '2021-08-24 21:15:11');
INSERT INTO `thread_tom` VALUES (23, 125, '101', '101', '{\"imageIds\":[58]}', 0, 0, '{}', '2021-08-25 21:25:38', '2021-08-25 21:25:38');
INSERT INTO `thread_tom` VALUES (24, 128, '101', '101', '{\"imageIds\":[59]}', 0, 0, '{}', '2021-09-02 23:07:58', '2021-09-02 23:07:58');
INSERT INTO `thread_tom` VALUES (25, 130, '101', '101', '{\"imageIds\":[60]}', 0, 0, '{}', '2021-09-02 23:13:28', '2021-09-02 23:13:28');
INSERT INTO `thread_tom` VALUES (26, 131, '101', '101', '{\"imageIds\":[67,68,69,70,71,72]}', 0, 0, '{}', '2021-09-04 20:12:41', '2021-09-04 20:26:42');
INSERT INTO `thread_tom` VALUES (27, 132, '101', '101', '{\"imageIds\":[75,76,77,78,79,80,81,82,83]}', 0, 0, '{}', '2021-09-04 20:24:21', '2021-09-04 20:40:05');
INSERT INTO `thread_tom` VALUES (28, 140, '101', '101', '{\"imageIds\":[87]}', 0, 0, '{}', '2021-09-07 21:43:45', '2021-09-07 21:43:45');
INSERT INTO `thread_tom` VALUES (29, 144, '101', '101', '{\"imageIds\":[88]}', 0, 0, '{}', '2021-09-15 21:55:39', '2021-09-15 21:55:39');
INSERT INTO `thread_tom` VALUES (30, 146, '101', '101', '{\"imageIds\":[89,90]}', 0, 0, '{}', '2021-09-21 21:17:19', '2021-09-21 21:17:19');
INSERT INTO `thread_tom` VALUES (31, 147, '101', '101', '{\"imageIds\":[91]}', 0, 0, '{}', '2021-09-21 21:20:29', '2021-09-21 21:20:29');
INSERT INTO `thread_tom` VALUES (32, 162, '101', '101', '{\"imageIds\":[92]}', 0, 0, '{}', '2021-10-18 22:08:31', '2021-10-18 22:08:31');
INSERT INTO `thread_tom` VALUES (33, 176, '101', '101', '{\"imageIds\":[93]}', 0, 1, '{}', '2022-01-20 21:39:44', '2022-01-20 21:39:44');
INSERT INTO `thread_tom` VALUES (34, 177, '101', '101', '{\"imageIds\":[94]}', 0, 1, '{}', '2022-01-20 21:42:32', '2022-01-20 21:42:32');

-- ----------------------------
-- Table structure for thread_topic
-- ----------------------------
DROP TABLE IF EXISTS `thread_topic`;
CREATE TABLE `thread_topic`  (
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '主题ID',
  `topic_id` bigint(20) UNSIGNED NOT NULL COMMENT '话题ID',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`thread_id`, `topic_id`) USING BTREE,
  INDEX `thread_topic_topic_id_foreign`(`topic_id`) USING BTREE,
  CONSTRAINT `thread_topic_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `thread_topic_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_topic
-- ----------------------------
INSERT INTO `thread_topic` VALUES (132, 1, '2021-09-04 20:40:05');
INSERT INTO `thread_topic` VALUES (133, 1, '2021-09-04 20:30:38');

-- ----------------------------
-- Table structure for thread_user
-- ----------------------------
DROP TABLE IF EXISTS `thread_user`;
CREATE TABLE `thread_user`  (
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '主题 id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户 id',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`thread_id`, `user_id`) USING BTREE,
  INDEX `thread_user_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `thread_user_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `thread_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_user
-- ----------------------------

-- ----------------------------
-- Table structure for thread_user_view_records
-- ----------------------------
DROP TABLE IF EXISTS `thread_user_view_records`;
CREATE TABLE `thread_user_view_records`  (
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `view_at` datetime NOT NULL COMMENT '浏览时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_user_view_records
-- ----------------------------

-- ----------------------------
-- Table structure for thread_video
-- ----------------------------
DROP TABLE IF EXISTS `thread_video`;
CREATE TABLE `thread_video`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '音视频 id',
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '主题 id',
  `post_id` bigint(20) UNSIGNED NOT NULL COMMENT '帖子 id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户 id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型：0 视频 1 音频',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '音视频状态：0 转码中 1 转码完成 2 转码失败',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '转码失败原因',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '媒体文件唯一标识',
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '视频高',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '视频宽',
  `duration` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '视频时长',
  `media_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '媒体播放地址',
  `cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '媒体封面地址',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `thread_video_thread_id_index`(`thread_id`) USING BTREE,
  INDEX `thread_video_post_id_index`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_video
-- ----------------------------

-- ----------------------------
-- Table structure for thread_vote_subitems
-- ----------------------------
DROP TABLE IF EXISTS `thread_vote_subitems`;
CREATE TABLE `thread_vote_subitems`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '投票选项 id',
  `thread_vote_id` bigint(20) UNSIGNED NOT NULL COMMENT '投票主题 id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '内容',
  `vote_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '投票数量',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_vote_subitems
-- ----------------------------

-- ----------------------------
-- Table structure for thread_vote_users
-- ----------------------------
DROP TABLE IF EXISTS `thread_vote_users`;
CREATE TABLE `thread_vote_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '投票用户 id',
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '投票主题 id',
  `thread_vote_subitem_id` bigint(20) UNSIGNED NOT NULL COMMENT '投票选项 id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_subitem_id`(`user_id`, `thread_vote_subitem_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_vote_users
-- ----------------------------

-- ----------------------------
-- Table structure for thread_votes
-- ----------------------------
DROP TABLE IF EXISTS `thread_votes`;
CREATE TABLE `thread_votes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '投票 id',
  `thread_id` bigint(20) UNSIGNED NOT NULL COMMENT '主题 id',
  `vote_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '投票标题',
  `choice_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '选择类型；1：单选、2：多选',
  `vote_users` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '参与人数',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `expired_at` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thread_votes
-- ----------------------------

-- ----------------------------
-- Table structure for threads
-- ----------------------------
DROP TABLE IF EXISTS `threads`;
CREATE TABLE `threads`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主题 id',
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建用户 id',
  `last_posted_user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '最后回复用户 id',
  `category_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '分类 id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型：0普通 1长文 2视频 3图片',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `price` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格',
  `attachment_price` decimal(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '附件价格',
  `free_words` double UNSIGNED NOT NULL DEFAULT 0 COMMENT '免费字数百分比',
  `post_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '回复数',
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '查看数',
  `rewarded_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '打赏数',
  `paid_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '付费数',
  `share_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分享数',
  `longitude` decimal(10, 7) NOT NULL DEFAULT 0.0000000 COMMENT '经度',
  `latitude` decimal(10, 7) NOT NULL DEFAULT 0.0000000 COMMENT '纬度',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置',
  `posted_at` datetime NULL DEFAULT NULL COMMENT '最新评论时间',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  `issue_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '帖子首次发布、草稿箱发布、审核通过发布，重新编辑内容发布，四种变更的时间记录',
  `deleted_user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '删除用户 id',
  `is_approved` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否合法',
  `is_sticky` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶',
  `is_essence` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否加精',
  `is_site` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐到首页（0否 1是）',
  `is_anonymous` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否匿名 0否 1是',
  `is_display` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否显示 0否 1是',
  `is_red_packet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否添加红包，0未添加，1添加',
  `is_draft` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为草稿，0不是，1是',
  `source` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 站内;1 微博;2 贴吧;3 豆瓣',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `threads_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `threads_last_posted_user_id_foreign`(`last_posted_user_id`) USING BTREE,
  INDEX `threads_deleted_user_id_foreign`(`deleted_user_id`) USING BTREE,
  INDEX `idx_category_id`(`category_id`) USING BTREE,
  INDEX `idx_is_sticky`(`is_sticky`) USING BTREE,
  CONSTRAINT `threads_deleted_user_id_foreign` FOREIGN KEY (`deleted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `threads_last_posted_user_id_foreign` FOREIGN KEY (`last_posted_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `threads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of threads
-- ----------------------------
INSERT INTO `threads` VALUES (1, 3, 3, 3, 99, 'Java高级工程师学习流程', 0.00, 0.00, 0, 2, 19, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-21 22:00:08', '2021-08-01 00:39:43', '2022-02-01 10:21:12', NULL, '2021-08-01 00:39:43', NULL, 1, 0, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (2, 4, NULL, 3, 99, '踩了一坨JavaScript大整数支持的屎', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-01 00:42:35', '2021-08-01 00:42:39', NULL, '2021-08-01 00:42:35', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (3, 4, NULL, 3, 99, 'Java后端学习图', 0.00, 0.00, 0, 1, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-01 00:44:07', '2021-11-12 20:22:34', NULL, '2021-08-01 00:44:07', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (4, 5, 4, 3, 99, '关于Spring的缺点', 0.00, 0.00, 0, 3, 6, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-01 00:55:02', '2021-08-01 00:47:16', '2021-10-03 21:36:30', '2021-08-24 21:03:34', '2021-08-01 00:47:16', 5, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (5, 5, NULL, 3, 99, '内心', 0.00, 0.00, 0, 1, 7, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-01 00:47:47', '2021-08-24 21:03:26', '2021-08-24 21:03:26', '2021-08-01 00:47:47', 5, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (6, 6, NULL, 3, 99, '这个就是新网站吗', 0.00, 0.00, 0, 1, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-01 00:51:26', '2021-08-01 14:09:05', NULL, '2021-08-01 00:51:26', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (7, 3, 3, 3, 99, '内存区域', 0.00, 0.00, 0, 1, 6, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-01 00:52:51', '2021-11-24 05:00:36', NULL, '2021-08-01 00:52:51', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (8, 7, 9, 4, 99, '这个是怎么计算的呢', 0.00, 0.00, 0, 4, 13, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-01 01:10:09', '2021-08-01 01:03:34', '2021-12-24 20:55:31', NULL, '2021-08-01 01:03:34', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (9, 8, 9, 4, 99, '家人们，今天才下好，有一起玩的吗', 0.00, 0.00, 0, 4, 7, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-01 01:36:09', '2021-08-01 01:15:35', '2021-12-05 17:42:38', NULL, '2021-08-01 01:15:35', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (10, 4, 43, 18, 99, '网站创建人？', 0.00, 0.00, 0, 3, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-07 16:15:26', '2021-08-01 12:40:17', '2021-08-24 21:07:34', '2021-08-24 21:07:34', '2021-08-01 12:40:17', 4, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (11, 10, 11, 19, 99, '那位大哥有雷霆1.57版本的给发下 谢谢了', 0.00, 0.00, 0, 2, 10, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-01 14:08:43', '2021-08-01 14:06:40', '2021-08-07 16:15:06', NULL, '2021-08-01 14:06:40', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (12, 11, 11, 42, 99, '下载的V281.107版本，请问怎么没有低温舱呢？', 0.00, 0.00, 0, 2, 6, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-01 14:11:45', '2021-08-01 14:11:38', '2021-12-06 00:56:41', NULL, '2021-08-01 14:11:38', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (13, 12, 12, 7, 99, '买永劫无间前请来看下此贴', 0.00, 0.00, 0, 7, 8, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-02 02:08:28', '2021-08-02 01:55:02', '2021-08-04 00:21:16', NULL, '2021-08-02 01:55:02', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (14, 14, 16, 7, 99, '永劫无间这JB垃圾服务器，我明明买了预购登录的时候说我没激活', 0.00, 0.00, 0, 3, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-02 14:41:43', '2021-08-02 02:10:08', '2021-08-02 15:02:51', NULL, '2021-08-02 02:10:08', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (16, 2, 143, 18, 99, '征求更新意见', 0.00, 0.00, 0, 63, 109, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2022-01-20 21:55:02', '2021-08-02 11:25:24', '2022-03-16 18:31:18', NULL, '2021-08-02 11:25:24', NULL, 1, 1, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (17, 16, 16, 4, 99, '通行证任务', 0.00, 0.00, 0, 2, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-02 14:38:16', '2021-08-02 14:37:28', '2021-08-02 14:38:16', NULL, '2021-08-02 14:37:28', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (18, 17, 14, 4, 99, '等个妹妹，我脾气好，温柔。lol，pubg，永劫都可以玩。', 0.00, 0.00, 0, 3, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-02 15:03:24', '2021-08-02 15:00:54', '2021-08-02 15:03:24', NULL, '2021-08-02 15:00:54', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (19, 18, 19, 10, 99, '王者荣耀就是个垃圾游戏，所有腾讯游戏都是圈钱的游戏', 0.00, 0.00, 0, 2, 7, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-02 15:21:19', '2021-08-02 15:20:13', '2021-08-09 15:28:07', NULL, '2021-08-02 15:20:13', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (20, 19, 20, 10, 99, '垃圾王者别BB', 0.00, 0.00, 0, 3, 7, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-02 15:25:44', '2021-08-02 15:22:13', '2021-08-09 15:27:56', NULL, '2021-08-02 15:22:13', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (21, 20, 25, 13, 99, '这是什么地图或者mod吗？', 0.00, 0.00, 0, 2, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-02 20:21:25', '2021-08-02 15:27:36', '2021-08-03 16:22:13', NULL, '2021-08-02 15:27:36', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (22, 21, 40, 10, 99, '王者垃圾荣耀，设置的什么乱七八糟的健康系统？', 0.00, 0.00, 0, 4, 8, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-06 15:20:38', '2021-08-02 15:34:28', '2021-08-09 15:28:18', NULL, '2021-08-02 15:34:28', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (23, 23, 40, 41, 99, '萌新做完线上主线了，不知该做什么', 0.00, 0.00, 0, 3, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-06 15:21:04', '2021-08-02 16:30:09', '2021-08-06 15:21:04', NULL, '2021-08-02 16:30:09', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (24, 24, 40, 41, 99, '线下的这个马死亡以后不能复活的设定也太辣鸡了', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-06 15:20:18', '2021-08-02 16:32:29', '2021-08-06 15:20:18', NULL, '2021-08-02 16:32:29', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (27, 26, 40, 19, 99, '求助 装了SHDN以后进线下模式就停止运行怎么办', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-06 15:19:55', '2021-08-02 20:29:10', '2021-08-06 15:19:55', NULL, '2021-08-02 20:29:10', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (28, 26, 27, 5, 99, 'HXD们 一个老外想跟我换皮肤玩 是不是骗子啊', 0.00, 0.00, 0, 3, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-02 20:41:56', '2021-08-02 20:34:08', '2022-01-12 14:38:19', NULL, '2021-08-02 20:34:08', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (29, 27, 28, 35, 99, '有人喜欢写日记吗', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-03 16:28:25', '2021-08-02 20:40:11', '2021-08-03 16:28:25', NULL, '2021-08-02 20:40:11', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (31, 25, 28, 15, 99, '生化危机8学习版运行游戏提示0xc00007b', 0.00, 0.00, 0, 2, 4, 0, 0, 1, 0.0000000, 0.0000000, '', '', '2021-08-03 16:28:10', '2021-08-03 16:25:00', '2021-08-09 15:22:58', '2021-08-09 15:22:58', '2021-08-03 16:25:00', 1, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (32, 28, NULL, 15, 99, '老滚5不打任何mod的话，可玩性高吗？', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-03 16:27:16', '2021-08-03 16:27:19', NULL, '2021-08-03 16:27:16', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (33, 28, 39, 19, 99, 'GTA5销量超1.5亿份 2K正打造新IP明年4月前推出', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-06 15:18:44', '2021-08-03 16:31:13', '2021-08-06 15:18:44', NULL, '2021-08-03 16:31:13', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (34, 29, 31, 8, 99, '绝地求生现在需要加速器吗，哪个比较好，纯小白一个', 0.00, 0.00, 0, 5, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-03 16:38:38', '2021-08-03 16:34:40', '2021-08-03 16:38:38', NULL, '2021-08-03 16:34:40', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (35, 31, 39, 8, 99, '这种战绩是人能打出来的？多长时间了不见封。', 0.00, 0.00, 0, 4, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-06 15:18:24', '2021-08-03 16:39:48', '2021-08-06 15:18:24', NULL, '2021-08-03 16:39:48', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (36, 31, 39, 8, 99, '绝地求生只有30多帧为什么', 0.00, 0.00, 0, 3, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-06 15:18:05', '2021-08-03 16:42:48', '2021-09-07 21:48:29', NULL, '2021-08-03 16:42:48', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (37, 10, 43, 8, 99, '有个小群 组队开黑群', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-07 16:14:48', '2021-08-03 16:46:15', '2021-08-07 16:14:48', NULL, '2021-08-03 16:46:15', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (38, 8, 32, 43, 99, '怪物猎人大剑想玩好有啥要注意的吗', 0.00, 0.00, 0, 2, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-03 16:50:35', '2021-08-03 16:49:05', '2021-12-13 06:34:32', NULL, '2021-08-03 16:49:05', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (39, 32, 33, 43, 99, '舒服了 9分台 我满足了 耶～', 0.00, 0.00, 0, 2, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-03 20:06:52', '2021-08-03 16:51:57', '2021-08-06 15:30:47', NULL, '2021-08-03 16:51:57', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (40, 33, 33, 15, 99, 'vr已经一年多没出大型游戏了', 0.00, 0.00, 0, 2, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-04 00:20:39', '2021-08-04 00:19:58', '2021-08-10 23:04:32', NULL, '2021-08-04 00:19:58', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (42, 35, 8, 44, 99, '赛博朋克运功能性MOD：橙色！橙色！橙色！终于特么有一个传奇装备MOD了，让游戏世界内所有掉落的物品都是传奇品质，搬了这么多MOD这个才是真爱啊~', 0.00, 3.00, 0, 5, 11, 0, 0, 1, 0.0000000, 0.0000000, '', '', '2021-08-06 15:34:18', '2021-08-04 20:36:49', '2022-01-11 00:22:48', NULL, '2021-08-04 20:36:49', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (43, 36, 8, 4, 99, '为什么英雄联盟没有以前那么火了', 0.00, 0.00, 0, 4, 9, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-04 20:47:05', '2021-08-04 20:43:51', '2021-08-06 12:42:43', NULL, '2021-08-04 20:43:51', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (44, 8, NULL, 4, 99, 'LOL最大外挂团伙，希望官方管管', 0.00, 0.00, 0, 1, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-04 20:52:11', '2021-12-06 03:56:34', NULL, '2021-08-04 20:52:11', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (45, 38, NULL, 4, 99, '电一区艾欧尼亚演员实锤', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-06 15:14:56', '2021-08-06 15:14:59', NULL, '2021-08-06 15:14:56', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (46, 39, NULL, 4, 99, '有没有人能用LOL名字查VX号或者其他信息，需要差一个', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-06 15:17:33', '2021-08-06 15:17:37', NULL, '2021-08-06 15:17:33', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (48, 40, 22, 4, 99, '说说LOL班德尔城这个区吧', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-06 15:26:26', '2021-08-06 15:22:46', '2021-08-06 15:26:26', NULL, '2021-08-06 15:22:46', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (49, 22, NULL, 11, 99, '求分享怎么抽黑猫套啊', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-06 15:26:45', '2021-08-06 15:26:49', NULL, '2021-08-06 15:26:45', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (50, 3, 8, 18, 99, '网站目前正在上传已更新/修复BUG，请勿发帖', 0.00, 0.00, 0, 4, 13, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-06 15:50:22', '2021-08-06 15:46:19', '2021-09-04 20:53:05', '2021-09-04 20:53:05', '2021-08-06 15:46:19', 3, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (51, 3, 8, 18, 99, '网站目前正在上传第二轮更新/修复BUG，请勿发帖', 0.00, 0.00, 0, 2, 8, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-06 22:45:32', '2021-08-06 22:42:57', '2021-09-04 20:53:15', '2021-09-04 20:53:15', '2021-08-06 22:42:57', 3, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (53, 41, 43, 4, 99, '抖音还真是王者理解', 0.00, 0.00, 0, 2, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-07 16:11:30', '2021-08-07 16:06:50', '2021-08-07 16:22:00', NULL, '2021-08-07 16:06:50', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (54, 42, NULL, 4, 99, '理智讨论有什么英雄比猫咪更能代表负能量', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-07 16:09:50', '2021-08-07 16:09:54', NULL, '2021-08-07 16:09:50', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (55, 43, 44, 14, 99, '周年庆团再来几个活人', 0.00, 0.00, 0, 3, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-07 16:16:49', '2021-08-07 16:13:49', '2021-08-07 16:16:49', NULL, '2021-08-07 16:13:49', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (56, 44, NULL, 4, 99, '黑色玫瑰 请问下这算辱华吗？', 0.00, 0.00, 0, 1, 3, 0, 0, 1, 0.0000000, 0.0000000, '', '', NULL, '2021-08-07 16:19:25', '2021-08-08 12:42:10', NULL, '2021-08-07 16:19:25', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (57, 45, 107, 23, 99, '看了隔壁一拳超人重置一话明白了海贼王战斗体系崩的部分原因，琦', 0.00, 0.00, 0, 2, 7, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-07 21:46:08', '2021-08-07 16:31:27', '2022-03-16 18:31:48', NULL, '2021-08-07 16:31:27', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (58, 4, NULL, 3, 99, '单元测试', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-07 16:37:29', '2021-08-07 16:37:33', NULL, '2021-08-07 16:37:29', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (59, 4, NULL, 3, 99, '示例', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-07 16:39:12', '2021-08-07 16:40:43', NULL, '2021-08-07 16:39:12', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (60, 5, NULL, 3, 99, 'doProcessConfigurationClass方法', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-07 16:43:32', '2021-08-07 16:46:23', NULL, '2021-08-07 16:43:32', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (61, 5, NULL, 3, 99, 'prepareBeanFactory方法', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-07 16:44:05', '2021-08-07 16:45:26', NULL, '2021-08-07 16:44:05', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (62, 5, 34, 3, 99, 'invokeBeanFactoryPostProcessors(beanFactory)方法', 0.00, 0.00, 0, 3, 7, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-07 16:49:03', '2021-08-07 16:44:39', '2021-10-18 15:51:57', NULL, '2021-08-07 16:44:39', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (63, 3, 3, 3, 99, 'Java学完哪些内容能够出去找工作', 0.00, 0.00, 0, 1, 12, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-08 01:09:29', '2021-11-24 02:31:54', NULL, '2021-08-08 01:09:29', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (64, 46, 47, 4, 99, 'LOL荣誉等级多少局才能回2级呀？', 0.00, 0.00, 0, 4, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-09 13:50:53', '2021-08-09 13:48:47', '2021-08-09 13:50:54', NULL, '2021-08-09 13:48:47', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (65, 47, 49, 4, 99, '现在lol封号的依据到底是什么！', 0.00, 0.00, 0, 3, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-09 13:54:15', '2021-08-09 13:50:25', '2021-08-09 15:09:54', NULL, '2021-08-09 13:50:25', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (66, 48, 17, 4, 99, '上单狗头，中单小法，打野塞恩，辅助锤石，ADC千珏', 0.00, 0.00, 0, 9, 9, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-09 13:59:00', '2021-08-09 13:52:21', '2021-08-09 15:31:39', NULL, '2021-08-09 13:52:21', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (67, 49, 50, 14, 99, 'CF戒指属性消失', 0.00, 0.00, 0, 2, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-09 17:47:08', '2021-08-09 13:55:15', '2021-08-09 17:47:09', NULL, '2021-08-09 13:55:15', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (68, 50, 51, 44, 99, '话说赛博朋克2077的场景就是比较标准的赛博朋克定义么', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-09 17:49:04', '2021-08-09 17:26:59', '2021-08-09 17:49:04', NULL, '2021-08-09 17:26:59', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (69, 51, 52, 11, 99, '来说一下这游戏为什么凉的这么快吧', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-09 17:51:10', '2021-08-09 17:50:07', '2021-08-09 17:51:10', NULL, '2021-08-09 17:50:07', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (70, 52, NULL, 11, 99, '大厅展示枪械拿心之恋语有排面还是梦幻火箭scar有排面？', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-09 17:51:37', '2021-08-09 17:51:41', NULL, '2021-08-09 17:51:37', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (71, 53, 54, 42, 99, '再找俩人开荒呀，目前两个人，不要喜欢指挥的', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-09 17:54:09', '2021-08-09 17:53:10', '2021-08-09 17:54:09', NULL, '2021-08-09 17:53:10', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (72, 54, NULL, 42, 99, '官服pvp招人', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-09 17:54:20', '2021-08-09 17:54:24', NULL, '2021-08-09 17:54:20', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (73, 55, 57, 10, 99, '关于团战，你该知道的基础', 0.00, 0.00, 0, 5, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-09 18:06:37', '2021-08-09 17:56:57', '2021-08-11 13:06:02', NULL, '2021-08-09 17:56:57', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (74, 56, 57, 4, 99, '这波被官方恶心了。', 0.00, 0.00, 0, 2, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-09 18:07:03', '2021-08-09 18:02:51', '2021-08-10 22:56:13', NULL, '2021-08-09 18:02:51', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (75, 57, NULL, 4, 99, '我觉得lol手游体验差主要在这个方面', 0.00, 0.00, 0, 1, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-09 18:06:09', '2021-08-11 13:11:50', NULL, '2021-08-09 18:06:09', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (76, 16, NULL, 35, 99, '有什么好玩的吗', 0.00, 0.00, 0, 1, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-09 23:14:44', '2021-08-11 13:05:51', NULL, '2021-08-09 23:14:44', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (77, 58, 56, 13, 99, '求助帖，萌新不会安装光影包', 0.00, 0.00, 0, 3, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-10 22:55:30', '2021-08-10 22:54:05', '2021-08-11 13:11:45', NULL, '2021-08-10 22:54:05', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (78, 57, 59, 13, 99, '谁来玩我的世界服务器', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-10 23:02:24', '2021-08-10 23:00:08', '2021-08-10 23:02:24', NULL, '2021-08-10 23:00:08', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (79, 59, NULL, 13, 99, '为什么存档的进度会突然消失', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-10 23:02:02', '2021-08-10 23:02:06', NULL, '2021-08-10 23:02:02', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (80, 33, 61, 15, 99, '女生一般都喜欢玩什么游戏', 0.00, 0.00, 0, 3, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-10 23:11:21', '2021-08-10 23:05:56', '2021-08-10 23:11:21', NULL, '2021-08-10 23:05:56', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (81, 60, 61, 8, 99, '进来看个笑话吧', 0.00, 0.00, 0, 2, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-10 23:11:38', '2021-08-10 23:08:51', '2021-08-11 13:11:42', NULL, '2021-08-10 23:08:51', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (82, 61, 62, 8, 99, '来几个小伙伴一起啊', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-10 23:56:21', '2021-08-10 23:10:46', '2021-08-10 23:56:21', NULL, '2021-08-10 23:10:46', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (83, 62, 62, 5, 99, '为什么他们会飞啊', 0.00, 0.00, 0, 3, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-10 23:56:08', '2021-08-10 23:55:48', '2021-08-10 23:56:08', NULL, '2021-08-10 23:55:48', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (84, 63, NULL, 5, 99, '无法调4:3', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-10 23:58:37', '2021-08-10 23:58:40', NULL, '2021-08-10 23:58:37', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (85, 63, 64, 5, 99, 'xdm爪子和m9哪个好 主玩ak和m4 不打狙', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-11 00:03:43', '2021-08-10 23:59:26', '2021-08-11 00:03:43', NULL, '2021-08-10 23:59:26', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (86, 64, 65, 5, 99, 'xdm 有没有人知道 csgo5e 和完美被禁言（黄信了）该', 0.00, 0.00, 0, 3, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-11 00:05:53', '2021-08-11 00:03:10', '2021-08-11 00:05:53', NULL, '2021-08-11 00:03:10', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (87, 65, NULL, 5, 99, '5E，CPU占用率100%掉帧', 0.00, 0.00, 0, 1, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-11 00:05:30', '2021-08-11 13:10:56', NULL, '2021-08-11 00:05:30', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (88, 66, NULL, 11, 99, '有没有固 能天天和我一块玩的', 0.00, 0.00, 0, 1, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-11 00:07:52', '2021-08-11 10:53:54', NULL, '2021-08-11 00:07:52', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (89, 2, 8, 18, 99, '网站优化内容', 0.00, 0.00, 0, 4, 10, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-11 21:57:56', '2021-08-11 19:22:52', '2021-09-07 21:51:05', '2021-09-07 21:51:05', '2021-08-11 19:22:52', 1, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (90, 67, 68, 4, 99, '我觉得亚索也能算数值怪，中单数值怪', 0.00, 0.00, 0, 3, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-12 14:52:35', '2021-08-12 14:50:05', '2021-08-12 14:52:35', NULL, '2021-08-12 14:50:05', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (91, 68, 69, 4, 99, '兄弟们 LOL游戏内打不了字是什么情况 就是一打汉字', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-12 14:58:30', '2021-08-12 14:52:53', '2021-08-12 14:58:30', NULL, '2021-08-12 14:52:53', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (92, 68, 69, 7, 99, '有人一起玩吗？', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-12 14:58:20', '2021-08-12 14:56:31', '2021-08-12 14:58:20', NULL, '2021-08-12 14:56:31', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (93, 69, NULL, 7, 99, '就想问问匕首什么时候削弱？大家难道感受不到匕首很强？', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-12 14:57:56', '2021-08-12 14:58:00', NULL, '2021-08-12 14:57:56', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (94, 69, 70, 7, 99, '策划是不是nt啊', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-12 15:01:13', '2021-08-12 14:59:15', '2021-08-12 15:01:13', NULL, '2021-08-12 14:59:15', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (95, 70, NULL, 7, 99, '真当玩家是猪B？', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-12 15:00:58', '2021-08-12 15:01:02', NULL, '2021-08-12 15:00:58', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (96, 71, 21, 4, 99, '英雄联盟是什么垃圾游戏？', 0.00, 0.00, 0, 7, 6, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-12 15:09:57', '2021-08-12 15:05:32', '2021-08-15 01:39:46', NULL, '2021-08-12 15:05:32', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (97, 72, 21, 4, 99, 'LOL线上老是打不过被单杀，求大佬支招', 0.00, 0.00, 0, 2, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-12 15:10:17', '2021-08-12 15:07:28', '2021-08-15 01:39:02', NULL, '2021-08-12 15:07:28', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (98, 21, 73, 4, 99, '你们有没有发现，英雄联盟现在已经变成一个报复性游戏', 0.00, 0.00, 0, 4, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-12 15:13:47', '2021-08-12 15:12:11', '2021-08-12 15:13:47', NULL, '2021-08-12 15:12:11', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (99, 73, NULL, 43, 99, '关于冰原的粪怪', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-12 15:16:21', '2021-08-12 15:16:25', NULL, '2021-08-12 15:16:21', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (100, 74, 45, 35, 99, '看片私聊加Q1586623415', 0.00, 0.00, 0, 4, 10, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-12 15:36:39', '2021-08-12 15:32:33', '2021-08-13 15:55:10', '2021-08-13 15:55:10', '2021-08-12 15:32:33', 2, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (101, 74, NULL, 18, 99, '为什么删我帖子', 0.00, 0.00, 0, 1, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-13 19:55:03', '2021-08-13 23:24:25', '2021-08-13 23:24:25', '2021-08-13 19:55:03', 2, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (102, 2, NULL, 18, 99, '8.13更新公告', 0.00, 0.00, 0, 1, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-13 23:26:00', '2021-08-13 23:27:26', '2021-08-13 23:27:26', '2021-08-13 23:26:00', 2, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (103, 2, NULL, 18, 99, '8.13更新公告', 0.00, 0.00, 0, 1, 8, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-14 00:37:24', '2021-09-07 21:51:13', '2021-09-07 21:51:13', '2021-08-14 00:37:24', 1, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (104, 2, 87, 18, 99, '8.20更新公告', 0.00, 0.00, 0, 2, 12, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-20 19:59:16', '2021-08-20 16:04:04', '2021-09-07 21:51:20', '2021-09-07 21:51:20', '2021-08-20 16:04:04', 1, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (105, 81, 83, 4, 99, '现在的LOL只会劝退更多的人吧？细数现在版本最烂的设计', 0.00, 0.00, 0, 3, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-20 19:38:36', '2021-08-20 19:34:31', '2021-08-20 19:38:36', NULL, '2021-08-20 19:34:31', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (106, 82, 83, 4, 99, '已经彻底变质的LOL，不能叫做电子竞技。', 0.00, 0.00, 0, 3, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-20 19:39:19', '2021-08-20 19:36:10', '2021-08-20 19:39:19', NULL, '2021-08-20 19:36:10', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (107, 83, NULL, 4, 99, '自从玩了几盘上单石头，我对上单位置有了新的感悟！', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-20 19:39:40', '2021-08-20 19:39:45', NULL, '2021-08-20 19:39:40', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (108, 84, 85, 14, 99, 'cf的检测机制到底是什么鬼', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-20 19:46:45', '2021-08-20 19:43:34', '2021-08-20 19:46:45', NULL, '2021-08-20 19:43:34', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (109, 85, 86, 5, 99, '天赋与外设', 0.00, 0.00, 0, 3, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-20 19:52:02', '2021-08-20 19:47:03', '2021-08-20 19:52:02', NULL, '2021-08-20 19:47:03', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (110, 86, NULL, 44, 99, '赛博朋克那么好玩没人玩吗？', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-20 19:52:38', '2021-08-20 19:52:42', NULL, '2021-08-20 19:52:38', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (111, 86, 75, 36, 99, '有人会翻墙吗', 0.00, 0.00, 0, 5, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-20 20:02:03', '2021-08-20 19:54:08', '2021-10-19 15:35:56', NULL, '2021-08-20 19:54:08', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (112, 87, 88, 41, 99, '萌新一个。', 0.00, 0.00, 0, 2, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-21 21:08:24', '2021-08-20 19:56:21', '2021-08-21 21:08:24', NULL, '2021-08-20 19:56:21', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (113, 88, 8, 4, 99, '不得不说，这波巨蛇之牙的改动太好了', 0.00, 0.00, 0, 2, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-21 21:12:34', '2021-08-21 21:07:38', '2021-08-21 21:12:34', NULL, '2021-08-21 21:07:38', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (114, 8, NULL, 4, 99, '一区今晚有通宵的吗', 0.00, 0.00, 0, 1, 0, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-21 21:13:08', '2021-08-21 21:13:08', NULL, '2021-08-21 21:13:08', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (115, 89, 90, 4, 99, '萌新想要入坑lol，请问有什么注意事项吗？ (*≧▽≦)', 0.00, 0.00, 0, 3, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-21 21:22:06', '2021-08-21 21:15:15', '2021-08-21 21:22:07', NULL, '2021-08-21 21:15:15', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (116, 90, NULL, 4, 99, 'LOL一直低优先级队列怎么破啊？', 0.00, 0.00, 0, 1, 0, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-21 21:21:16', '2021-08-21 21:21:16', NULL, '2021-08-21 21:21:16', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (117, 91, 92, 4, 99, '对局结束就再也登陆不进去了，怎么回事', 0.00, 0.00, 0, 2, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-22 19:29:19', '2021-08-22 19:25:57', '2021-08-22 19:29:19', NULL, '2021-08-22 19:25:57', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (118, 92, 93, 41, 99, '想问下大家二周目都在哪章养老啊', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-24 20:57:17', '2021-08-22 19:28:54', '2021-08-24 20:57:17', NULL, '2021-08-22 19:28:54', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (119, 93, 94, 4, 99, '【无语】被封号', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-24 20:59:15', '2021-08-24 20:56:34', '2021-08-24 20:59:15', NULL, '2021-08-24 20:56:34', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (120, 94, NULL, 4, 99, '排位华甲', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-24 20:58:50', '2021-08-24 20:58:52', NULL, '2021-08-24 20:58:50', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (121, 4, 3, 14, 99, '没抽到暗裔交流贴', 0.00, 0.00, 0, 2, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-24 21:17:42', '2021-08-24 21:15:11', '2021-08-25 07:54:38', NULL, '2021-08-24 21:15:11', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (122, 67, 67, 4, 99, '我觉得这个版本不是战士英雄强，而是神圣分离者和渴血战斧太强', 0.00, 0.00, 0, 2, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-25 21:20:41', '2021-08-25 21:20:33', '2021-08-25 21:20:41', NULL, '2021-08-25 21:20:33', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (123, 81, 96, 4, 99, '现在的LOL只会劝退更多的人吧？细数现在版本最烂的设计', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-08-25 21:24:44', '2021-08-25 21:21:39', '2021-08-25 21:24:44', NULL, '2021-08-25 21:21:39', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (124, 95, NULL, 4, 99, '征服者瑞文伤害太低了。', 0.00, 0.00, 0, 1, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-25 21:23:20', '2021-12-08 11:53:31', NULL, '2021-08-25 21:23:20', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (125, 96, NULL, 4, 99, '玩了十年现在还混迹在黄金，我还有希望嘛', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-08-25 21:25:38', '2021-08-25 21:25:41', NULL, '2021-08-25 21:25:38', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (126, 97, 98, 4, 99, '我只想说lol脚本越来越多了。', 0.00, 0.00, 0, 2, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-01 23:08:36', '2021-09-01 23:06:17', '2021-09-01 23:08:36', NULL, '2021-09-01 23:06:17', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (127, 98, NULL, 4, 99, '克隆？', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-09-01 23:07:40', '2021-09-01 23:07:53', NULL, '2021-09-01 23:07:40', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (128, 99, 100, 4, 99, '第四把被翻盘太离谱了吧', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-02 23:10:49', '2021-09-02 23:07:57', '2021-09-02 23:10:50', NULL, '2021-09-02 23:07:57', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (129, 100, NULL, 4, 99, '小天赶紧滚吧！', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-09-02 23:09:54', '2021-09-02 23:09:58', NULL, '2021-09-02 23:09:54', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (130, 101, NULL, 19, 99, '越狱，直播开始', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-09-02 23:13:28', '2021-09-02 23:13:32', NULL, '2021-09-02 23:13:28', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (131, 3, 3, 3, 99, 'Python学习路线图', 0.00, 0.00, 0, 2, 10, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-04 20:19:47', '2021-09-04 20:12:41', '2022-02-10 16:24:59', NULL, '2021-09-04 20:12:41', NULL, 1, 0, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (132, 3, 3, 3, 99, 'Python学习路线图(详细)', 0.00, 0.00, 0, 3, 12, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-04 20:25:04', '2021-09-04 20:24:20', '2022-02-01 10:20:20', NULL, '2021-09-04 20:24:20', NULL, 1, 0, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (133, 3, NULL, 3, 99, '1', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-09-04 20:30:38', '2021-09-04 20:38:37', '2021-09-04 20:38:37', '2021-09-04 20:30:38', 3, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (134, 102, 95, 4, 99, '有没有一起玩的啊 电一', 0.00, 0.00, 0, 3, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-30 22:24:27', '2021-09-04 20:55:36', '2021-09-30 22:24:27', NULL, '2021-09-04 20:55:36', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (135, 103, 104, 4, 99, '组队抢手游注册id', 0.00, 0.00, 0, 2, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-07 21:36:03', '2021-09-04 21:07:10', '2021-09-07 21:36:03', NULL, '2021-09-04 21:07:10', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (136, 104, 105, 4, 99, '老玩家对这个游戏白银局上不了分真正系统的分析', 0.00, 0.00, 0, 2, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-07 21:37:04', '2021-09-07 21:34:54', '2021-09-30 22:24:04', NULL, '2021-09-07 21:34:54', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (137, 105, NULL, 4, 99, '刚才玩的时候发现出了个新活动', 0.00, 0.00, 0, 1, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-09-07 21:37:22', '2021-10-23 15:03:40', NULL, '2021-09-07 21:37:22', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (138, 105, 106, 42, 99, '想找队友一起玩', 0.00, 0.00, 0, 2, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-07 21:40:50', '2021-09-07 21:38:48', '2021-12-09 15:56:50', NULL, '2021-09-07 21:38:48', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (139, 106, 107, 42, 99, '想回归了，想问问各位这游戏的现状', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-07 21:43:18', '2021-09-07 21:39:49', '2021-09-07 21:43:18', NULL, '2021-09-07 21:39:49', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (140, 107, 110, 43, 99, '烧！卡婊 我滴超人', 0.00, 0.00, 0, 3, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-15 21:52:50', '2021-09-07 21:43:45', '2021-11-24 07:54:09', NULL, '2021-09-07 21:43:45', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (141, 108, NULL, 44, 99, '有没有人会写描写赛博朋克的场景的，比如都市，底层之类的', 0.00, 0.00, 0, 1, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-09-07 21:53:12', '2021-10-23 15:03:59', NULL, '2021-09-07 21:53:12', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (142, 109, NULL, 4, 99, '网一来个脾气好点的妹子辅助黄金白金', 0.00, 0.00, 0, 1, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-09-11 14:12:54', '2021-10-24 12:08:11', NULL, '2021-09-11 14:12:54', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (143, 110, 111, 4, 99, 'lol排位机制真的恶心啊，已经存粹为了钱和留住玩家了', 0.00, 0.00, 0, 2, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-15 21:56:04', '2021-09-15 21:47:44', '2021-11-24 07:15:38', NULL, '2021-09-15 21:47:44', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (144, 111, NULL, 4, 99, '英雄联盟中那些不合理的设定', 0.00, 0.00, 0, 1, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-09-15 21:55:38', '2021-11-24 16:03:32', NULL, '2021-09-15 21:55:38', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (145, 3, 3, 15, 99, '赛尔号', 500.00, 0.00, 0, 4, 22, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-25 21:53:26', '2021-09-18 00:02:49', '2022-02-17 01:34:55', NULL, '2021-09-18 00:02:49', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (146, 112, 113, 4, 99, 'LOL被盗被封大佬救救！！！', 0.00, 0.00, 0, 3, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-21 21:21:09', '2021-09-21 21:17:19', '2021-12-05 15:40:52', NULL, '2021-09-21 21:17:19', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (147, 113, 114, 4, 99, '用心做皮肤用脚做游戏', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-21 21:23:09', '2021-09-21 21:20:29', '2021-10-24 07:48:52', NULL, '2021-09-21 21:20:29', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (148, 114, 8, 19, 99, '赌场转盘', 0.00, 0.00, 0, 2, 9, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-21 21:24:29', '2021-09-21 21:23:24', '2022-03-20 12:45:52', NULL, '2021-09-21 21:23:24', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (149, 3, 95, 3, 99, '数据库账户', 500.00, 0.00, 0, 2, 7, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-30 22:23:48', '2021-09-21 21:49:48', '2021-10-20 15:09:26', NULL, '2021-09-21 21:49:48', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (150, 115, 116, 4, 99, '这两天开电脑第一局LOL一定断网是什么鬼，笔记本', 0.00, 0.00, 0, 3, 15, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-09-30 22:27:42', '2021-09-30 22:20:50', '2022-03-14 10:19:53', NULL, '2021-09-30 22:20:50', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (151, 95, 8, 4, 99, '黄金白银局老有nt打野', 0.00, 0.00, 0, 3, 4, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-03 21:27:15', '2021-09-30 22:23:05', '2021-12-05 13:38:08', NULL, '2021-09-30 22:23:05', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (152, 116, 8, 4, 99, '大厅界面不显示', 0.00, 0.00, 0, 2, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-03 21:27:04', '2021-09-30 22:27:12', '2021-12-16 09:22:06', NULL, '2021-09-30 22:27:12', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (153, 117, 118, 4, 99, '皮肤被吞了', 0.00, 0.00, 0, 2, 11, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-03 21:23:29', '2021-10-03 21:22:38', '2022-03-13 23:17:55', NULL, '2021-10-03 21:22:38', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (154, 118, 8, 4, 99, '有人带萌新吗', 0.00, 0.00, 0, 3, 10, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-03 21:26:44', '2021-10-03 21:24:07', '2022-03-14 03:27:19', NULL, '2021-10-03 21:24:07', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (155, 119, 120, 4, 99, '下载客户端只能用wegame?', 0.00, 0.00, 0, 3, 11, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-03 21:30:38', '2021-10-03 21:25:48', '2022-02-12 04:34:49', NULL, '2021-10-03 21:25:48', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (156, 120, 122, 4, 99, '这个游戏还能玩么？', 0.00, 0.00, 0, 2, 7, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-18 21:50:26', '2021-10-03 21:28:49', '2022-02-07 05:35:54', NULL, '2021-10-03 21:28:49', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (157, 122, 123, 19, 99, '求助mk2怎么改开火键啊', 0.00, 0.00, 0, 2, 12, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-18 21:52:30', '2021-10-18 21:49:18', '2022-03-14 09:06:50', NULL, '2021-10-18 21:49:18', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (158, 123, 125, 19, 99, '求带上岛', 0.00, 0.00, 0, 3, 9, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-18 21:59:26', '2021-10-18 21:52:00', '2022-02-22 08:11:57', NULL, '2021-10-18 21:52:00', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (159, 124, 125, 4, 99, 'lpl是在干嘛？蜜汁猫咪？', 0.00, 0.00, 0, 2, 6, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-18 21:59:43', '2021-10-18 21:55:26', '2022-01-20 08:05:26', NULL, '2021-10-18 21:55:26', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (160, 125, NULL, 4, 99, '卧槽，发现上分利器。', 0.00, 0.00, 0, 1, 8, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-10-18 21:58:35', '2022-01-11 15:17:03', NULL, '2021-10-18 21:58:35', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (161, 126, 127, 4, 99, 'Lpl没有一个人能站出来', 0.00, 0.00, 0, 2, 5, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-18 22:09:39', '2021-10-18 22:01:33', '2021-12-20 12:23:49', NULL, '2021-10-18 22:01:33', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (162, 127, NULL, 43, 99, '萌新终于打过试玩怨虎龙了', 0.00, 0.00, 0, 1, 3, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-10-18 22:08:31', '2021-10-19 15:26:17', NULL, '2021-10-18 22:08:31', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (163, 3, 139, 3, 99, 'spring五天的学习，只需要五天学会spring', 0.00, 0.00, 0, 3, 21, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2022-01-20 21:37:52', '2021-10-22 13:27:41', '2022-02-04 12:02:04', NULL, '2021-10-22 13:30:34', NULL, 1, 0, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (164, 128, 128, 4, 99, '这几天打完一局排位都会接到陌生人邀请', 0.00, 0.00, 0, 2, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-10-22 13:50:32', '2021-10-22 13:50:09', '2021-10-22 13:50:32', NULL, '2021-10-22 13:50:09', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (165, 3, NULL, 37, 99, '记录坐标', 0.00, 0.00, 0, 1, 11, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-11-01 19:22:37', '2021-12-16 16:04:11', NULL, '2021-11-01 19:22:37', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (166, 129, 130, 4, 99, '第一把EDG太给力了', 0.00, 0.00, 0, 3, 8, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-11-06 21:37:00', '2021-11-06 21:30:35', '2021-12-29 09:21:20', NULL, '2021-11-06 21:34:09', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (167, 130, 135, 4, 99, '有些话我真不得不说', 0.00, 0.00, 0, 2, 12, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-12-16 14:21:33', '2021-11-06 21:36:09', '2022-01-11 06:23:13', NULL, '2021-11-06 21:36:09', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (168, 131, 135, 4, 99, '荣誉是打解锁了，但只打人机真的能上去吗？钥匙碎片不少不加里程', 0.00, 0.00, 0, 3, 14, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-12-16 14:20:52', '2021-11-07 19:51:57', '2021-12-16 14:20:52', NULL, '2021-11-07 19:52:36', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (169, 132, 135, 4, 99, '感觉现在游戏环境对回坑玩家和萌新太不友好了', 0.00, 0.00, 0, 2, 16, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-12-16 14:20:58', '2021-12-16 14:12:02', '2022-03-14 00:46:35', NULL, '2021-12-16 14:12:02', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (170, 133, 135, 14, 99, '血亏，抽了个寂寞', 0.00, 0.00, 0, 2, 18, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-12-16 14:21:03', '2021-12-16 14:15:13', '2022-03-18 09:44:12', NULL, '2021-12-16 14:15:13', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (171, 134, 135, 14, 99, '传说之路还能不能做了？', 0.00, 0.00, 0, 2, 24, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2021-12-16 14:21:23', '2021-12-16 14:19:34', '2022-03-14 09:46:01', NULL, '2021-12-16 14:19:34', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (172, 3, NULL, 37, 99, '记录坐标', 0.00, 0.00, 0, 1, 11, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2021-12-16 16:03:56', '2022-03-05 21:56:32', NULL, '2021-12-16 16:03:56', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (173, 3, 139, 15, 99, '赛尔号小', 500.00, 0.00, 0, 2, 7, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2022-01-20 21:37:40', '2022-01-16 18:38:21', '2022-03-25 14:48:44', NULL, '2022-01-16 18:38:21', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (174, 138, 139, 44, 99, '话说，现在2077BUG 还多吗？', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2022-01-20 21:37:32', '2022-01-20 21:34:31', '2022-01-20 21:37:32', NULL, '2022-01-20 21:34:31', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (175, 139, NULL, 4, 99, '开黑双排', 0.00, 0.00, 0, 1, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2022-01-20 21:36:56', '2022-02-17 17:42:43', NULL, '2022-01-20 21:36:56', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (176, 140, 143, 4, 99, '我不理解', 0.00, 0.00, 0, 2, 12, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2022-01-20 21:54:37', '2022-01-20 21:39:44', '2022-03-14 02:54:10', NULL, '2022-01-20 21:39:44', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (177, 141, 143, 4, 99, '这是几等奖', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2022-01-20 21:54:28', '2022-01-20 21:42:32', '2022-01-20 21:54:28', NULL, '2022-01-20 21:42:32', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (178, 142, 143, 4, 99, '求助，钻4到钻二钻一的差距到底在哪里', 0.00, 0.00, 0, 2, 2, 0, 0, 0, 0.0000000, 0.0000000, '', '', '2022-01-20 21:54:07', '2022-01-20 21:45:22', '2022-01-20 21:54:08', NULL, '2022-01-20 21:45:22', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `threads` VALUES (179, 143, NULL, 4, 99, '虎年限定皮肤和无限乱斗持续到哪天啊？', 0.00, 0.00, 0, 1, 1, 0, 0, 0, 0.0000000, 0.0000000, '', '', NULL, '2022-01-20 21:53:45', '2022-01-20 21:53:48', NULL, '2022-01-20 21:53:45', NULL, 1, 0, 0, 0, 0, 1, 0, 0, 0);

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '话题ID',
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT 'user_id',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '话题名称',
  `thread_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '主题数',
  `view_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '阅读数',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐',
  `recommended_at` datetime NULL DEFAULT NULL COMMENT '推荐时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES (1, 3, '', 1, 10, '2021-09-07 21:57:31', '2021-09-04 20:30:38', 0, NULL);

-- ----------------------------
-- Table structure for user_action_logs
-- ----------------------------
DROP TABLE IF EXISTS `user_action_logs`;
CREATE TABLE `user_action_logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '日志 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作用户 id',
  `action` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `log_able_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模型 id',
  `log_able_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '模型',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_action_logs
-- ----------------------------
INSERT INTO `user_action_logs` VALUES (1, 2, 'hide', '', 19, 'App\\Models\\Post', '2021-08-01 21:40:25');
INSERT INTO `user_action_logs` VALUES (2, 14, 'hide', '', 32, 'App\\Models\\Post', '2021-08-02 02:07:06');
INSERT INTO `user_action_logs` VALUES (3, 12, 'hide', '', 27, 'App\\Models\\Post', '2021-08-02 02:08:17');
INSERT INTO `user_action_logs` VALUES (4, 35, 'hide', '', 108, 'App\\Models\\Post', '2021-08-04 20:31:56');
INSERT INTO `user_action_logs` VALUES (5, 36, 'hide', '', 112, 'App\\Models\\Post', '2021-08-04 20:39:31');
INSERT INTO `user_action_logs` VALUES (6, 1, 'hide', '', 31, 'App\\Models\\Thread', '2021-08-09 15:22:58');
INSERT INTO `user_action_logs` VALUES (7, 2, 'hide', '', 63, 'App\\Models\\Post', '2021-08-09 15:28:14');
INSERT INTO `user_action_logs` VALUES (8, 2, 'hide', '', 206, 'App\\Models\\Post', '2021-08-10 10:43:12');
INSERT INTO `user_action_logs` VALUES (9, 16, 'hide', '', 271, 'App\\Models\\Post', '2021-08-12 15:35:31');
INSERT INTO `user_action_logs` VALUES (10, 3, 'hide', '', 269, 'App\\Models\\Post', '2021-08-12 15:37:34');
INSERT INTO `user_action_logs` VALUES (11, 74, 'hide', '', 273, 'App\\Models\\Post', '2021-08-13 19:56:41');
INSERT INTO `user_action_logs` VALUES (12, 1, 'ban', '违反本网站用户协议', 74, 'App\\Models\\User', '2021-08-13 23:34:29');
INSERT INTO `user_action_logs` VALUES (13, 1, 'normal', '', 75, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO `user_action_logs` VALUES (14, 1, 'normal', '', 76, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO `user_action_logs` VALUES (15, 1, 'normal', '', 77, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO `user_action_logs` VALUES (16, 1, 'normal', '', 78, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO `user_action_logs` VALUES (17, 1, 'normal', '', 79, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO `user_action_logs` VALUES (18, 1, 'normal', '', 80, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO `user_action_logs` VALUES (19, 1, 'ban', '', 79, 'App\\Models\\User', '2021-08-15 01:33:09');
INSERT INTO `user_action_logs` VALUES (20, 90, 'hide', '', 314, 'App\\Models\\Post', '2021-08-21 21:23:26');
INSERT INTO `user_action_logs` VALUES (21, 1, 'hide', '', 3, 'App\\Models\\Post', '2021-10-03 21:39:33');

-- ----------------------------
-- Table structure for user_distributions
-- ----------------------------
DROP TABLE IF EXISTS `user_distributions`;
CREATE TABLE `user_distributions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '父级id',
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
  `be_scale` double(3, 1) NOT NULL DEFAULT 0.0 COMMENT '受邀时的分成比例',
  `level` tinyint(4) NOT NULL DEFAULT 1 COMMENT '当前用户所处深度',
  `is_subordinate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否可以 推广下线',
  `is_commission` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否可以 收入提成',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user`(`user_id`) USING BTREE,
  CONSTRAINT `user_distributions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_distributions
-- ----------------------------

-- ----------------------------
-- Table structure for user_follow
-- ----------------------------
DROP TABLE IF EXISTS `user_follow`;
CREATE TABLE `user_follow`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `from_user_id` bigint(20) UNSIGNED NOT NULL COMMENT '关注人',
  `to_user_id` bigint(20) UNSIGNED NOT NULL COMMENT '被关注人',
  `is_mutual` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否互相关注：0否 1是',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `from_user_id`(`from_user_id`) USING BTREE,
  INDEX `to_user_id`(`to_user_id`) USING BTREE,
  CONSTRAINT `user_follow_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_follow_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_follow
-- ----------------------------

-- ----------------------------
-- Table structure for user_login_fail_log
-- ----------------------------
DROP TABLE IF EXISTS `user_login_fail_log`;
CREATE TABLE `user_login_fail_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '日志 id',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'ip 地址',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `count` tinyint(4) NOT NULL DEFAULT 1 COMMENT '错误次数',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_login_fail_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_login_fail_log
-- ----------------------------
INSERT INTO `user_login_fail_log` VALUES (1, '148.163.161.103', 1, 'PDA', 0, '2021-07-31 21:47:47', '2022-03-14 13:01:01');
INSERT INTO `user_login_fail_log` VALUES (2, '134.195.101.21', 1, 'PDA', 0, '2021-08-02 16:23:13', '2022-03-14 13:01:01');
INSERT INTO `user_login_fail_log` VALUES (3, '134.195.101.21', 35, '没有大哥', 0, '2021-08-06 15:31:17', '2021-08-06 15:31:40');
INSERT INTO `user_login_fail_log` VALUES (4, '134.195.101.21', 3, 'Thread', 0, '2021-08-08 01:05:33', '2022-02-17 01:33:52');
INSERT INTO `user_login_fail_log` VALUES (5, '134.195.101.21', 21, 'fangun', 0, '2021-08-09 14:00:12', '2021-08-12 15:09:35');
INSERT INTO `user_login_fail_log` VALUES (6, '134.195.101.21', 16, 'yingying', 0, '2021-08-09 23:13:29', '2021-08-12 15:34:51');
INSERT INTO `user_login_fail_log` VALUES (7, '134.195.101.35', 1, 'PDA', 0, '2021-08-21 21:27:31', '2022-03-14 13:01:01');
INSERT INTO `user_login_fail_log` VALUES (8, '134.195.101.21', 0, '栀子沫', 2, '2021-09-30 22:22:26', '2021-09-30 22:22:29');
INSERT INTO `user_login_fail_log` VALUES (9, '221.13.140.87', 1, 'PDA', 0, '2021-10-18 11:32:31', '2022-03-14 13:01:01');
INSERT INTO `user_login_fail_log` VALUES (10, '221.13.140.87', 2, 'Jerome', 0, '2021-10-18 11:35:03', '2021-10-18 11:42:13');
INSERT INTO `user_login_fail_log` VALUES (11, '103.172.116.151', 1, 'PDA', 0, '2021-11-28 23:02:05', '2022-03-14 13:01:01');
INSERT INTO `user_login_fail_log` VALUES (12, '103.136.127.146', 1, 'PDA', 0, '2021-12-03 17:28:46', '2022-03-14 13:01:01');
INSERT INTO `user_login_fail_log` VALUES (13, '134.195.101.38', 1, 'PDA', 0, '2022-01-20 01:04:12', '2022-03-14 13:01:01');
INSERT INTO `user_login_fail_log` VALUES (14, '134.195.101.38', 3, 'Thread', 0, '2022-01-20 01:04:49', '2022-02-17 01:33:52');
INSERT INTO `user_login_fail_log` VALUES (15, '43.249.39.220', 1, 'PDA', 0, '2022-03-14 13:00:49', '2022-03-14 13:01:01');

-- ----------------------------
-- Table structure for user_qq
-- ----------------------------
DROP TABLE IF EXISTS `user_qq`;
CREATE TABLE `user_qq`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'openid',
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'qq昵称',
  `sex` tinyint(4) NOT NULL DEFAULT 0 COMMENT '性别',
  `province` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '城市',
  `headimgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_qq
-- ----------------------------

-- ----------------------------
-- Table structure for user_qy_wechats
-- ----------------------------
DROP TABLE IF EXISTS `user_qy_wechats`;
CREATE TABLE `user_qy_wechats`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `qy_userid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '企业微信企业用户id, corpid_userid联合全局唯一',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '企业微信昵称',
  `sex` tinyint(4) NOT NULL DEFAULT 0 COMMENT '性别',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '电话',
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '地址',
  `headimgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_qy_wechats
-- ----------------------------

-- ----------------------------
-- Table structure for user_sign_in_fields
-- ----------------------------
DROP TABLE IF EXISTS `user_sign_in_fields`;
CREATE TABLE `user_sign_in_fields`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户user_id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户端显示的字段名称',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:单行文本框 1:多行文本框 2:单选 3:复选 4:图片上传 5:附件上传',
  `fields_ext` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段扩展信息，Json表示选项内容',
  `fields_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段介绍',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '审核意见',
  `sort` tinyint(4) NOT NULL DEFAULT 1 COMMENT '自定义显示顺序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0:废弃 1:待审核 2:驳回 3:审核通过',
  `required` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否必填项 0:否 1:是',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_sign_in_fields_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_sign_in_fields
-- ----------------------------

-- ----------------------------
-- Table structure for user_ucenters
-- ----------------------------
DROP TABLE IF EXISTS `user_ucenters`;
CREATE TABLE `user_ucenters`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `ucenter_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'uc用户 id',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_ucenters_user_id_index`(`user_id`) USING BTREE,
  INDEX `user_ucenters_ucenter_id_index`(`ucenter_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_ucenters
-- ----------------------------

-- ----------------------------
-- Table structure for user_wallet_cash
-- ----------------------------
DROP TABLE IF EXISTS `user_wallet_cash`;
CREATE TABLE `user_wallet_cash`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '提现 id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '提现用户 id',
  `cash_sn` bigint(20) UNSIGNED NOT NULL COMMENT '提现交易编号',
  `cash_charge` decimal(10, 2) UNSIGNED NOT NULL COMMENT '提现手续费',
  `cash_actual_amount` decimal(10, 2) UNSIGNED NOT NULL COMMENT '实际提现金额',
  `cash_apply_amount` decimal(10, 2) UNSIGNED NOT NULL COMMENT '提现申请金额',
  `cash_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '提现状态：1：待审核，2：审核通过，3：审核不通过，4：待打款， 5，已打款， 6：打款失败',
  `cash_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '提现到账手机号码',
  `cash_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '提现转账类型：0：人工转账， 1：企业零钱付款',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注或原因',
  `trade_time` datetime NULL DEFAULT NULL COMMENT '交易时间',
  `trade_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交易号',
  `error_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '错误代码',
  `error_message` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交易失败描叙',
  `refunds_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '返款状态，0未返款，1已返款',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `receive_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '收款账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_wallet_cash
-- ----------------------------
INSERT INTO `user_wallet_cash` VALUES (1, 1, 202108218698102515, 0.00, 10.00, 10.00, 3, '', 0, '提现测试完成', NULL, '', '', '', 1, '2021-08-21 21:30:51', '2021-08-21 21:32:27', '');

-- ----------------------------
-- Table structure for user_wallet_fail_logs
-- ----------------------------
DROP TABLE IF EXISTS `user_wallet_fail_logs`;
CREATE TABLE `user_wallet_fail_logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '日志 id',
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'ip 地址',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_wallet_fail_logs_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_wallet_fail_logs
-- ----------------------------

-- ----------------------------
-- Table structure for user_wallet_logs
-- ----------------------------
DROP TABLE IF EXISTS `user_wallet_logs`;
CREATE TABLE `user_wallet_logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '钱包明细 id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '明细所属用户 id',
  `source_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '金额来源用户',
  `change_available_amount` decimal(10, 2) NOT NULL COMMENT '变动可用金额',
  `change_freeze_amount` decimal(10, 2) NOT NULL COMMENT '变动冻结金额',
  `change_type` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '10：提现冻结，11：提现成功，12：撤销提现解冻； 31：打赏收入，32：人工收入； 50：人工支出',
  `change_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '变动描述',
  `order_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '关联订单记录ID',
  `user_wallet_cash_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '关联提现记录ID',
  `question_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联问答记录 id',
  `thread_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '关联的threads主键ID',
  `post_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '关联的posts主键ID',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_wallet_logs
-- ----------------------------
INSERT INTO `user_wallet_logs` VALUES (1, 1, 0, 10.00, 0.00, 32, '测试使用', NULL, NULL, 0, 0, 0, '2021-08-21 21:29:01', '2021-08-21 21:29:01');
INSERT INTO `user_wallet_logs` VALUES (2, 1, 0, -10.00, 10.00, 10, '提现冻结', NULL, 1, 0, 0, 0, '2021-08-21 21:30:52', '2021-08-21 21:30:52');
INSERT INTO `user_wallet_logs` VALUES (3, 3, 0, 5.00, 0.00, 32, '测试使用', NULL, NULL, 0, 0, 0, '2021-08-21 21:31:29', '2021-08-21 21:31:29');
INSERT INTO `user_wallet_logs` VALUES (4, 1, 0, 10.00, -10.00, 12, '审核不通过，退回', NULL, 1, 0, 0, 0, '2021-08-21 21:32:27', '2021-08-21 21:32:27');
INSERT INTO `user_wallet_logs` VALUES (5, 3, 0, -5.00, 0.00, 50, '测试删减余额', NULL, NULL, 0, 0, 0, '2021-08-21 21:35:15', '2021-08-21 21:35:15');
INSERT INTO `user_wallet_logs` VALUES (6, 2, 0, 6666.00, 0.00, 32, '人工收入', NULL, NULL, 0, 0, 0, '2021-10-19 10:31:52', '2021-10-19 10:31:52');
INSERT INTO `user_wallet_logs` VALUES (7, 3, 0, 50.00, 0.00, 32, '测试', NULL, NULL, 0, 0, 0, '2021-12-23 17:28:07', '2021-12-23 17:28:07');
INSERT INTO `user_wallet_logs` VALUES (8, 3, 0, -50.00, 0.00, 51, '付费升级用户组', 6, NULL, 0, 0, 0, '2021-12-23 17:29:06', '2021-12-23 17:29:06');
INSERT INTO `user_wallet_logs` VALUES (9, 3, 0, 3000.00, 0.00, 32, '测试', NULL, NULL, 0, 0, 0, '2022-01-20 21:25:05', '2022-01-20 21:25:05');
INSERT INTO `user_wallet_logs` VALUES (10, 3, 0, -3000.00, 0.00, 51, '付费升级用户组', 9, NULL, 0, 0, 0, '2022-01-20 21:27:11', '2022-01-20 21:27:11');

-- ----------------------------
-- Table structure for user_wallets
-- ----------------------------
DROP TABLE IF EXISTS `user_wallets`;
CREATE TABLE `user_wallets`  (
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '钱包所属人 id',
  `available_amount` decimal(10, 2) UNSIGNED NOT NULL COMMENT '可用金额',
  `freeze_amount` decimal(10, 2) UNSIGNED NOT NULL COMMENT '冻结金额',
  `wallet_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '钱包状态:0正常，1冻结提现',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_wallets
-- ----------------------------
INSERT INTO `user_wallets` VALUES (1, 10.00, 0.00, 0, '2021-07-30 20:24:49', '2021-08-21 21:32:27');
INSERT INTO `user_wallets` VALUES (2, 6666.00, 0.00, 0, '2021-07-31 21:44:17', '2021-10-19 10:31:52');
INSERT INTO `user_wallets` VALUES (3, 0.00, 0.00, 0, '2021-08-01 00:22:19', '2022-01-20 21:27:11');
INSERT INTO `user_wallets` VALUES (4, 0.00, 0.00, 0, '2021-08-01 00:41:31', '2021-08-01 00:41:31');
INSERT INTO `user_wallets` VALUES (5, 0.00, 0.00, 0, '2021-08-01 00:46:23', '2021-08-01 00:46:23');
INSERT INTO `user_wallets` VALUES (6, 0.00, 0.00, 0, '2021-08-01 00:49:35', '2021-08-01 00:49:35');
INSERT INTO `user_wallets` VALUES (7, 0.00, 0.00, 0, '2021-08-01 00:57:35', '2021-08-01 00:57:35');
INSERT INTO `user_wallets` VALUES (8, 0.00, 0.00, 0, '2021-08-01 01:14:34', '2021-08-01 01:14:34');
INSERT INTO `user_wallets` VALUES (9, 0.00, 0.00, 0, '2021-08-01 01:35:04', '2021-08-01 01:35:04');
INSERT INTO `user_wallets` VALUES (10, 0.00, 0.00, 0, '2021-08-01 14:05:13', '2021-08-01 14:05:13');
INSERT INTO `user_wallets` VALUES (11, 0.00, 0.00, 0, '2021-08-01 14:07:34', '2021-08-01 14:07:34');
INSERT INTO `user_wallets` VALUES (12, 0.00, 0.00, 0, '2021-08-02 01:51:41', '2021-08-02 01:51:41');
INSERT INTO `user_wallets` VALUES (13, 0.00, 0.00, 0, '2021-08-02 02:04:04', '2021-08-02 02:04:04');
INSERT INTO `user_wallets` VALUES (14, 0.00, 0.00, 0, '2021-08-02 02:06:12', '2021-08-02 02:06:12');
INSERT INTO `user_wallets` VALUES (15, 0.00, 0.00, 0, '2021-08-02 02:14:07', '2021-08-02 02:14:07');
INSERT INTO `user_wallets` VALUES (16, 0.00, 0.00, 0, '2021-08-02 14:35:57', '2021-08-02 14:35:57');
INSERT INTO `user_wallets` VALUES (17, 0.00, 0.00, 0, '2021-08-02 14:59:51', '2021-08-02 14:59:51');
INSERT INTO `user_wallets` VALUES (18, 0.00, 0.00, 0, '2021-08-02 15:18:39', '2021-08-02 15:18:39');
INSERT INTO `user_wallets` VALUES (19, 0.00, 0.00, 0, '2021-08-02 15:20:55', '2021-08-02 15:20:55');
INSERT INTO `user_wallets` VALUES (20, 0.00, 0.00, 0, '2021-08-02 15:24:42', '2021-08-02 15:24:42');
INSERT INTO `user_wallets` VALUES (21, 0.00, 0.00, 0, '2021-08-02 15:32:08', '2021-08-02 15:32:08');
INSERT INTO `user_wallets` VALUES (22, 0.00, 0.00, 0, '2021-08-02 15:35:58', '2021-08-02 15:35:58');
INSERT INTO `user_wallets` VALUES (23, 0.00, 0.00, 0, '2021-08-02 16:29:19', '2021-08-02 16:29:19');
INSERT INTO `user_wallets` VALUES (24, 0.00, 0.00, 0, '2021-08-02 16:31:53', '2021-08-02 16:31:53');
INSERT INTO `user_wallets` VALUES (25, 0.00, 0.00, 0, '2021-08-02 16:37:05', '2021-08-02 16:37:05');
INSERT INTO `user_wallets` VALUES (26, 0.00, 0.00, 0, '2021-08-02 20:27:27', '2021-08-02 20:27:27');
INSERT INTO `user_wallets` VALUES (27, 0.00, 0.00, 0, '2021-08-02 20:37:01', '2021-08-02 20:37:01');
INSERT INTO `user_wallets` VALUES (28, 0.00, 0.00, 0, '2021-08-03 16:25:58', '2021-08-03 16:25:58');
INSERT INTO `user_wallets` VALUES (29, 0.00, 0.00, 0, '2021-08-03 16:33:06', '2021-08-03 16:33:06');
INSERT INTO `user_wallets` VALUES (30, 0.00, 0.00, 0, '2021-08-03 16:36:04', '2021-08-03 16:36:04');
INSERT INTO `user_wallets` VALUES (31, 0.00, 0.00, 0, '2021-08-03 16:37:43', '2021-08-03 16:37:43');
INSERT INTO `user_wallets` VALUES (32, 0.00, 0.00, 0, '2021-08-03 16:49:58', '2021-08-03 16:49:58');
INSERT INTO `user_wallets` VALUES (33, 0.00, 0.00, 0, '2021-08-03 16:53:31', '2021-08-03 16:53:31');
INSERT INTO `user_wallets` VALUES (34, 0.00, 0.00, 0, '2021-08-04 18:52:20', '2021-08-04 18:52:20');
INSERT INTO `user_wallets` VALUES (35, 0.00, 0.00, 0, '2021-08-04 20:31:11', '2021-08-04 20:31:11');
INSERT INTO `user_wallets` VALUES (36, 0.00, 0.00, 0, '2021-08-04 20:38:37', '2021-08-04 20:38:37');
INSERT INTO `user_wallets` VALUES (37, 0.00, 0.00, 0, '2021-08-06 12:45:56', '2021-08-06 12:45:56');
INSERT INTO `user_wallets` VALUES (38, 0.00, 0.00, 0, '2021-08-06 15:14:26', '2021-08-06 15:14:26');
INSERT INTO `user_wallets` VALUES (39, 0.00, 0.00, 0, '2021-08-06 15:15:40', '2021-08-06 15:15:40');
INSERT INTO `user_wallets` VALUES (40, 0.00, 0.00, 0, '2021-08-06 15:19:17', '2021-08-06 15:19:17');
INSERT INTO `user_wallets` VALUES (41, 0.00, 0.00, 0, '2021-08-07 16:05:02', '2021-08-07 16:05:02');
INSERT INTO `user_wallets` VALUES (42, 0.00, 0.00, 0, '2021-08-07 16:07:46', '2021-08-07 16:07:46');
INSERT INTO `user_wallets` VALUES (43, 0.00, 0.00, 0, '2021-08-07 16:10:46', '2021-08-07 16:10:46');
INSERT INTO `user_wallets` VALUES (44, 0.00, 0.00, 0, '2021-08-07 16:16:13', '2021-08-07 16:16:13');
INSERT INTO `user_wallets` VALUES (45, 0.00, 0.00, 0, '2021-08-07 16:30:21', '2021-08-07 16:30:21');
INSERT INTO `user_wallets` VALUES (46, 0.00, 0.00, 0, '2021-08-09 13:48:13', '2021-08-09 13:48:13');
INSERT INTO `user_wallets` VALUES (47, 0.00, 0.00, 0, '2021-08-09 13:49:51', '2021-08-09 13:49:51');
INSERT INTO `user_wallets` VALUES (48, 0.00, 0.00, 0, '2021-08-09 13:51:48', '2021-08-09 13:51:48');
INSERT INTO `user_wallets` VALUES (49, 0.00, 0.00, 0, '2021-08-09 13:53:18', '2021-08-09 13:53:18');
INSERT INTO `user_wallets` VALUES (50, 0.00, 0.00, 0, '2021-08-09 17:26:11', '2021-08-09 17:26:11');
INSERT INTO `user_wallets` VALUES (51, 0.00, 0.00, 0, '2021-08-09 17:48:41', '2021-08-09 17:48:41');
INSERT INTO `user_wallets` VALUES (52, 0.00, 0.00, 0, '2021-08-09 17:50:32', '2021-08-09 17:50:32');
INSERT INTO `user_wallets` VALUES (53, 0.00, 0.00, 0, '2021-08-09 17:52:37', '2021-08-09 17:52:37');
INSERT INTO `user_wallets` VALUES (54, 0.00, 0.00, 0, '2021-08-09 17:53:39', '2021-08-09 17:53:39');
INSERT INTO `user_wallets` VALUES (55, 0.00, 0.00, 0, '2021-08-09 17:55:22', '2021-08-09 17:55:22');
INSERT INTO `user_wallets` VALUES (56, 0.00, 0.00, 0, '2021-08-09 18:01:36', '2021-08-09 18:01:36');
INSERT INTO `user_wallets` VALUES (57, 0.00, 0.00, 0, '2021-08-09 18:05:24', '2021-08-09 18:05:24');
INSERT INTO `user_wallets` VALUES (58, 0.00, 0.00, 0, '2021-08-10 22:53:04', '2021-08-10 22:53:04');
INSERT INTO `user_wallets` VALUES (59, 0.00, 0.00, 0, '2021-08-10 23:00:51', '2021-08-10 23:00:51');
INSERT INTO `user_wallets` VALUES (60, 0.00, 0.00, 0, '2021-08-10 23:07:13', '2021-08-10 23:07:13');
INSERT INTO `user_wallets` VALUES (61, 0.00, 0.00, 0, '2021-08-10 23:09:32', '2021-08-10 23:09:32');
INSERT INTO `user_wallets` VALUES (62, 0.00, 0.00, 0, '2021-08-10 23:55:15', '2021-08-10 23:55:15');
INSERT INTO `user_wallets` VALUES (63, 0.00, 0.00, 0, '2021-08-10 23:58:01', '2021-08-10 23:58:01');
INSERT INTO `user_wallets` VALUES (64, 0.00, 0.00, 0, '2021-08-11 00:00:35', '2021-08-11 00:00:35');
INSERT INTO `user_wallets` VALUES (65, 0.00, 0.00, 0, '2021-08-11 00:04:58', '2021-08-11 00:04:58');
INSERT INTO `user_wallets` VALUES (66, 0.00, 0.00, 0, '2021-08-11 00:07:15', '2021-08-11 00:07:15');
INSERT INTO `user_wallets` VALUES (67, 0.00, 0.00, 0, '2021-08-12 14:49:26', '2021-08-12 14:49:26');
INSERT INTO `user_wallets` VALUES (68, 0.00, 0.00, 0, '2021-08-12 14:52:06', '2021-08-12 14:52:06');
INSERT INTO `user_wallets` VALUES (69, 0.00, 0.00, 0, '2021-08-12 14:57:16', '2021-08-12 14:57:16');
INSERT INTO `user_wallets` VALUES (70, 0.00, 0.00, 0, '2021-08-12 15:00:13', '2021-08-12 15:00:13');
INSERT INTO `user_wallets` VALUES (71, 0.00, 0.00, 0, '2021-08-12 15:04:23', '2021-08-12 15:04:23');
INSERT INTO `user_wallets` VALUES (72, 0.00, 0.00, 0, '2021-08-12 15:06:16', '2021-08-12 15:06:16');
INSERT INTO `user_wallets` VALUES (73, 0.00, 0.00, 0, '2021-08-12 15:12:58', '2021-08-12 15:12:58');
INSERT INTO `user_wallets` VALUES (74, 0.00, 0.00, 0, '2021-08-12 15:18:58', '2021-08-12 15:18:58');
INSERT INTO `user_wallets` VALUES (75, 0.00, 0.00, 0, '2021-08-14 15:30:40', '2021-08-14 15:30:40');
INSERT INTO `user_wallets` VALUES (76, 0.00, 0.00, 0, '2021-08-14 15:31:42', '2021-08-14 15:31:42');
INSERT INTO `user_wallets` VALUES (77, 0.00, 0.00, 0, '2021-08-14 15:32:10', '2021-08-14 15:32:10');
INSERT INTO `user_wallets` VALUES (78, 0.00, 0.00, 0, '2021-08-14 15:32:45', '2021-08-14 15:32:45');
INSERT INTO `user_wallets` VALUES (79, 0.00, 0.00, 0, '2021-08-14 15:34:19', '2021-08-14 15:34:19');
INSERT INTO `user_wallets` VALUES (80, 0.00, 0.00, 0, '2021-08-14 15:35:17', '2021-08-14 15:35:17');
INSERT INTO `user_wallets` VALUES (81, 0.00, 0.00, 0, '2021-08-20 19:33:52', '2021-08-20 19:33:52');
INSERT INTO `user_wallets` VALUES (82, 0.00, 0.00, 0, '2021-08-20 19:35:07', '2021-08-20 19:35:07');
INSERT INTO `user_wallets` VALUES (83, 0.00, 0.00, 0, '2021-08-20 19:37:57', '2021-08-20 19:37:57');
INSERT INTO `user_wallets` VALUES (84, 0.00, 0.00, 0, '2021-08-20 19:42:34', '2021-08-20 19:42:34');
INSERT INTO `user_wallets` VALUES (85, 0.00, 0.00, 0, '2021-08-20 19:46:07', '2021-08-20 19:46:07');
INSERT INTO `user_wallets` VALUES (86, 0.00, 0.00, 0, '2021-08-20 19:50:42', '2021-08-20 19:50:42');
INSERT INTO `user_wallets` VALUES (87, 0.00, 0.00, 0, '2021-08-20 19:55:45', '2021-08-20 19:55:45');
INSERT INTO `user_wallets` VALUES (88, 0.00, 0.00, 0, '2021-08-21 21:05:33', '2021-08-21 21:05:33');
INSERT INTO `user_wallets` VALUES (89, 0.00, 0.00, 0, '2021-08-21 21:13:59', '2021-08-21 21:13:59');
INSERT INTO `user_wallets` VALUES (90, 0.00, 0.00, 0, '2021-08-21 21:20:27', '2021-08-21 21:20:27');
INSERT INTO `user_wallets` VALUES (91, 0.00, 0.00, 0, '2021-08-22 19:25:13', '2021-08-22 19:25:13');
INSERT INTO `user_wallets` VALUES (92, 0.00, 0.00, 0, '2021-08-22 19:28:21', '2021-08-22 19:28:21');
INSERT INTO `user_wallets` VALUES (93, 0.00, 0.00, 0, '2021-08-24 20:55:43', '2021-08-24 20:55:43');
INSERT INTO `user_wallets` VALUES (94, 0.00, 0.00, 0, '2021-08-24 20:58:21', '2021-08-24 20:58:21');
INSERT INTO `user_wallets` VALUES (95, 0.00, 0.00, 0, '2021-08-25 21:22:52', '2021-08-25 21:22:52');
INSERT INTO `user_wallets` VALUES (96, 0.00, 0.00, 0, '2021-08-25 21:24:16', '2021-08-25 21:24:16');
INSERT INTO `user_wallets` VALUES (97, 0.00, 0.00, 0, '2021-09-01 23:05:39', '2021-09-01 23:05:39');
INSERT INTO `user_wallets` VALUES (98, 0.00, 0.00, 0, '2021-09-01 23:07:04', '2021-09-01 23:07:04');
INSERT INTO `user_wallets` VALUES (99, 0.00, 0.00, 0, '2021-09-02 23:07:11', '2021-09-02 23:07:11');
INSERT INTO `user_wallets` VALUES (100, 0.00, 0.00, 0, '2021-09-02 23:09:24', '2021-09-02 23:09:24');
INSERT INTO `user_wallets` VALUES (101, 0.00, 0.00, 0, '2021-09-02 23:12:43', '2021-09-02 23:12:43');
INSERT INTO `user_wallets` VALUES (102, 0.00, 0.00, 0, '2021-09-04 20:54:06', '2021-09-04 20:54:06');
INSERT INTO `user_wallets` VALUES (103, 0.00, 0.00, 0, '2021-09-04 20:56:46', '2021-09-04 20:56:46');
INSERT INTO `user_wallets` VALUES (104, 0.00, 0.00, 0, '2021-09-07 21:34:15', '2021-09-07 21:34:15');
INSERT INTO `user_wallets` VALUES (105, 0.00, 0.00, 0, '2021-09-07 21:36:21', '2021-09-07 21:36:21');
INSERT INTO `user_wallets` VALUES (106, 0.00, 0.00, 0, '2021-09-07 21:39:12', '2021-09-07 21:39:12');
INSERT INTO `user_wallets` VALUES (107, 0.00, 0.00, 0, '2021-09-07 21:42:44', '2021-09-07 21:42:44');
INSERT INTO `user_wallets` VALUES (108, 0.00, 0.00, 0, '2021-09-07 21:52:26', '2021-09-07 21:52:26');
INSERT INTO `user_wallets` VALUES (109, 0.00, 0.00, 0, '2021-09-11 14:12:09', '2021-09-11 14:12:09');
INSERT INTO `user_wallets` VALUES (110, 0.00, 0.00, 0, '2021-09-15 21:46:49', '2021-09-15 21:46:49');
INSERT INTO `user_wallets` VALUES (111, 0.00, 0.00, 0, '2021-09-15 21:53:36', '2021-09-15 21:53:36');
INSERT INTO `user_wallets` VALUES (112, 0.00, 0.00, 0, '2021-09-21 21:16:16', '2021-09-21 21:16:16');
INSERT INTO `user_wallets` VALUES (113, 0.00, 0.00, 0, '2021-09-21 21:19:11', '2021-09-21 21:19:11');
INSERT INTO `user_wallets` VALUES (114, 0.00, 0.00, 0, '2021-09-21 21:22:29', '2021-09-21 21:22:29');
INSERT INTO `user_wallets` VALUES (115, 0.00, 0.00, 0, '2021-09-30 22:20:03', '2021-09-30 22:20:03');
INSERT INTO `user_wallets` VALUES (116, 0.00, 0.00, 0, '2021-09-30 22:26:10', '2021-09-30 22:26:10');
INSERT INTO `user_wallets` VALUES (117, 0.00, 0.00, 0, '2021-10-03 21:21:55', '2021-10-03 21:21:55');
INSERT INTO `user_wallets` VALUES (118, 0.00, 0.00, 0, '2021-10-03 21:22:58', '2021-10-03 21:22:58');
INSERT INTO `user_wallets` VALUES (119, 0.00, 0.00, 0, '2021-10-03 21:24:52', '2021-10-03 21:24:52');
INSERT INTO `user_wallets` VALUES (120, 0.00, 0.00, 0, '2021-10-03 21:28:11', '2021-10-03 21:28:11');
INSERT INTO `user_wallets` VALUES (121, 0.00, 0.00, 0, '2021-10-18 09:19:50', '2021-10-18 09:19:50');
INSERT INTO `user_wallets` VALUES (122, 0.00, 0.00, 0, '2021-10-18 21:43:41', '2021-10-18 21:43:41');
INSERT INTO `user_wallets` VALUES (123, 0.00, 0.00, 0, '2021-10-18 21:51:13', '2021-10-18 21:51:13');
INSERT INTO `user_wallets` VALUES (124, 0.00, 0.00, 0, '2021-10-18 21:54:33', '2021-10-18 21:54:33');
INSERT INTO `user_wallets` VALUES (125, 0.00, 0.00, 0, '2021-10-18 21:57:50', '2021-10-18 21:57:50');
INSERT INTO `user_wallets` VALUES (126, 0.00, 0.00, 0, '2021-10-18 22:00:30', '2021-10-18 22:00:30');
INSERT INTO `user_wallets` VALUES (127, 0.00, 0.00, 0, '2021-10-18 22:07:02', '2021-10-18 22:07:02');
INSERT INTO `user_wallets` VALUES (128, 0.00, 0.00, 0, '2021-10-22 13:48:21', '2021-10-22 13:48:21');
INSERT INTO `user_wallets` VALUES (129, 0.00, 0.00, 0, '2021-11-06 21:30:01', '2021-11-06 21:30:01');
INSERT INTO `user_wallets` VALUES (130, 0.00, 0.00, 0, '2021-11-06 21:35:32', '2021-11-06 21:35:32');
INSERT INTO `user_wallets` VALUES (131, 0.00, 0.00, 0, '2021-11-07 19:51:24', '2021-11-07 19:51:24');
INSERT INTO `user_wallets` VALUES (132, 0.00, 0.00, 0, '2021-12-16 14:11:15', '2021-12-16 14:11:15');
INSERT INTO `user_wallets` VALUES (133, 0.00, 0.00, 0, '2021-12-16 14:14:33', '2021-12-16 14:14:33');
INSERT INTO `user_wallets` VALUES (134, 0.00, 0.00, 0, '2021-12-16 14:18:39', '2021-12-16 14:18:39');
INSERT INTO `user_wallets` VALUES (135, 0.00, 0.00, 0, '2021-12-16 14:20:01', '2021-12-16 14:20:01');
INSERT INTO `user_wallets` VALUES (136, 0.00, 0.00, 0, '2021-12-17 22:50:59', '2021-12-17 22:50:59');
INSERT INTO `user_wallets` VALUES (137, 0.00, 0.00, 0, '2022-01-15 15:01:48', '2022-01-15 15:01:48');
INSERT INTO `user_wallets` VALUES (138, 0.00, 0.00, 0, '2022-01-20 21:33:15', '2022-01-20 21:33:15');
INSERT INTO `user_wallets` VALUES (139, 0.00, 0.00, 0, '2022-01-20 21:35:46', '2022-01-20 21:35:46');
INSERT INTO `user_wallets` VALUES (140, 0.00, 0.00, 0, '2022-01-20 21:38:26', '2022-01-20 21:38:26');
INSERT INTO `user_wallets` VALUES (141, 0.00, 0.00, 0, '2022-01-20 21:41:33', '2022-01-20 21:41:33');
INSERT INTO `user_wallets` VALUES (142, 0.00, 0.00, 0, '2022-01-20 21:44:23', '2022-01-20 21:44:23');
INSERT INTO `user_wallets` VALUES (143, 0.00, 0.00, 0, '2022-01-20 21:53:13', '2022-01-20 21:53:13');

-- ----------------------------
-- Table structure for user_wechats
-- ----------------------------
DROP TABLE IF EXISTS `user_wechats`;
CREATE TABLE `user_wechats`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '用户 id',
  `mp_openid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '公众号openid',
  `dev_openid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '开放平台openid',
  `min_openid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '小程序openid',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信昵称',
  `sex` tinyint(4) NOT NULL DEFAULT 0 COMMENT '性别',
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '城市',
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '国家',
  `headimgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `privilege` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户特权信息',
  `unionid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `idx_mp_openid`(`mp_openid`) USING BTREE,
  INDEX `idx_dev_openid`(`dev_openid`) USING BTREE,
  INDEX `idx_min_openid`(`min_openid`) USING BTREE,
  INDEX `idx_unionid`(`unionid`) USING BTREE,
  CONSTRAINT `user_wechats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_wechats
-- ----------------------------

-- ----------------------------
-- Table structure for username_change
-- ----------------------------
DROP TABLE IF EXISTS `username_change`;
CREATE TABLE `username_change`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `number` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '次数',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of username_change
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户 id',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `pay_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '支付密码',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '签名',
  `last_login_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '最后登录 ip 地址',
  `last_login_port` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登录端口',
  `register_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '注册ip',
  `register_port` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '注册端口',
  `register_reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '注册原因',
  `reject_reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '审核拒绝原因',
  `username_bout` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户名修改次数',
  `thread_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '主题数',
  `follow_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关注数',
  `fans_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '粉丝数',
  `liked_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  `question_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '提问数',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '用户状态：0正常 1禁用 2审核中 3审核拒绝 4审核忽略',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像地址',
  `background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '背景图地址',
  `identity` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '身份证号码',
  `realname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '身份证姓名',
  `avatar_at` datetime NULL DEFAULT NULL COMMENT '头像修改时间',
  `login_at` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `joined_at` datetime NULL DEFAULT NULL COMMENT '付费加入时间',
  `expired_at` datetime NULL DEFAULT NULL COMMENT '付费到期时间',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `bind_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '登录绑定类型；0：默认或微信；2：qq登录；',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE,
  INDEX `nickname`(`nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'PDA', '$2y$10$ABitkUHy8CNgWGaMKTpuE.HukWIBgje2s2vFXSGNWO01yGhaJYv8W', 'PDA', '', '13000000000', 'Hello World', '43.249.39.220', 30327, '192.168.10.1', 37090, '', '', 0, 0, 0, 0, 0, 0, 0, '000/00/00/01.png', '000/00/00/yyGHc8MdxPAGYpXu1SRYnTRw4hdYFkRv6RX5OKei.png', '', '', '2021-08-01 14:23:15', '2022-03-14 13:01:01', NULL, NULL, '2021-07-30 16:17:57', '2022-03-14 13:01:01', 4);
INSERT INTO `users` VALUES (2, 'Jerome', '$2y$10$JBKzHupXXhTygalzcs3sz.JvPZ1f4mJ9fo8H0ocgJgVD4yc5YUK/S', 'Jerome', '', '13000000001', '', '221.13.140.87', 33427, '148.163.161.103', 38820, '账号密码注册', '', 0, 4, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-10-18 11:42:13', '2021-07-31 21:44:17', NULL, '2021-07-31 21:44:17', '2021-10-21 14:52:26', 4);
INSERT INTO `users` VALUES (3, 'Thread', '$2y$10$sfTdWvK2s252A8LYzyt/suSYZbx.6wflNw6tZpcJzz5jn3Yly7ONi', 'Thread', '$2y$10$tXQaZkGae0yG9UfICQ6Sc.ml0X3X2F9DfsiTJDAzvSvqKNuQ/za/G', '', 'Hello World', '42.224.227.149', 18133, '134.195.101.21', 45407, '账号密码注册', '', 0, 11, 0, 0, 2, 0, 0, '000/00/00/03.png', '', '', '', '2021-08-01 00:36:07', '2022-02-17 01:33:52', '2021-08-01 00:22:18', '2022-02-23 17:29:06', '2021-08-01 00:22:19', '2022-02-17 01:33:52', 0);
INSERT INTO `users` VALUES (4, 't-gar', '$2y$10$qy.6od5GseVhW7iPBPw0.u9fbJrhvGwMBlTcR1RrP4Yj4P912IvFi', 't-gar', '', '', '', '208.87.132.216', 64725, '134.195.101.21', 47417, '账号密码注册', '', 0, 5, 0, 0, 1, 0, 0, '000/00/00/04.png', '', '', '', '2021-08-01 00:45:02', '2021-08-24 21:07:08', '2021-08-01 00:41:31', NULL, '2021-08-01 00:41:31', '2021-08-24 21:15:14', 0);
INSERT INTO `users` VALUES (5, 'knuth', '$2y$10$NT/rjnNzh6ihmn8hWo9NreK2SMpavnSBzm0Jt33LwRLyZwROrVQIm', 'knuth', '', '', '', '208.87.132.216', 28005, '134.195.101.21', 37227, '账号密码注册', '', 0, 5, 0, 0, 0, 0, 0, '000/00/00/05.png', '', '', '', '2021-08-01 00:48:22', '2021-08-24 21:02:38', '2021-08-01 00:46:23', NULL, '2021-08-01 00:46:23', '2021-08-24 21:06:51', 0);
INSERT INTO `users` VALUES (6, 'sresde', '$2y$10$boJQ8Mc/W8ua5dO7RwkHgeQaZxqnJWDXpt2w22pGJlwA1ubjE/P3O', 'sresde', '', '', '', '134.195.101.21', 47709, '134.195.101.21', 47709, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/06.png', '', '', '', '2021-08-01 00:50:22', '2021-08-01 00:49:35', '2021-08-01 00:49:35', NULL, '2021-08-01 00:49:35', '2021-08-01 00:51:32', 0);
INSERT INTO `users` VALUES (7, 'lianmeng', '$2y$10$uv.9me5vHkTYcZvinkyv5O5Hok4SyqhhRuF1a/LqPH6gXzclNy3xW', '联盟', '', '', '', '134.195.101.21', 44255, '134.195.101.21', 47495, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/07.png', '', '', '', '2021-08-01 01:02:17', '2021-08-02 15:13:40', '2021-08-01 00:57:35', NULL, '2021-08-01 00:57:35', '2021-08-02 15:18:07', 0);
INSERT INTO `users` VALUES (8, 'yihou', '$2y$10$XJilU62WCgwyHYYrvWFtxORHqpWBkqHFabt4KSC0TpOM9Gfy2U2WC', '以后早点睡', '', '', '', '103.172.116.78', 36328, '134.195.101.21', 41741, '账号密码注册', '', 0, 4, 0, 0, 1, 0, 0, '000/00/00/08.png', '', '', '', '2021-08-01 01:15:01', '2021-11-06 21:34:46', '2021-08-01 01:14:34', NULL, '2021-08-01 01:14:34', '2021-11-06 21:35:03', 0);
INSERT INTO `users` VALUES (9, 'baima', '$2y$10$6DTa2e6eKox1RmexBIDr/OPyq7ZVc/5YiGOCEkvqKRPiwYGaxR2wS', '白马探花orz', '', '', '', '134.195.101.21', 52203, '134.195.101.21', 52203, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '000/00/00/09.png', '', '', '', '2021-08-01 01:35:35', '2021-08-01 01:35:04', '2021-08-01 01:35:04', NULL, '2021-08-01 01:35:04', '2021-08-01 01:39:05', 0);
INSERT INTO `users` VALUES (10, 'nuanle', '$2y$10$Cnl9CFUxUapdRzAcACu2XeLzbhABslQFggs610RAjZNVudYz6VTda', '暖了夏天啊', '', '', '', '134.195.101.21', 37431, '134.195.101.21', 59539, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/10.png', '', '', '', '2021-08-01 14:05:45', '2021-08-03 16:43:48', '2021-08-01 14:05:12', NULL, '2021-08-01 14:05:13', '2021-08-03 16:46:28', 0);
INSERT INTO `users` VALUES (11, 'Bequ', '$2y$10$rBFtv5r7CMMixuCdLgFC5uZfn5Hrpl2EKU9Y.adeG4091UDLc6z9i', 'Bequ', '', '', '', '134.195.101.21', 58191, '134.195.101.21', 32807, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/11.png', '', '', '', '2021-08-01 14:07:50', '2021-08-02 15:39:58', '2021-08-01 14:07:34', NULL, '2021-08-01 14:07:34', '2021-08-02 16:28:36', 0);
INSERT INTO `users` VALUES (12, 'tjy327', '$2y$10$V.lppcmoH.HmkkMp7d5SYuBqFs6Kz8.1wSm3Kw159pREE3vRTnfyq', 'tjy327', '', '', '有什么好玩的游戏', '134.195.101.21', 49853, '134.195.101.21', 49073, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/12.png', '', '', '', '2021-08-02 01:52:34', '2021-08-04 00:21:35', '2021-08-02 01:51:41', NULL, '2021-08-02 01:51:41', '2021-08-04 00:27:47', 0);
INSERT INTO `users` VALUES (13, 'youer', '$2y$10$GKvcQcm55ZrKC7vlP8bYTuLKEDHmNuqcWYeE9namhMeif/d2ULQse', '幽儿', '', '', '', '134.195.101.21', 36093, '134.195.101.21', 36093, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '000/00/00/13.png', '', '', '', '2021-08-02 02:04:31', '2021-08-02 02:04:04', '2021-08-02 02:04:04', NULL, '2021-08-02 02:04:04', '2021-08-02 02:05:08', 0);
INSERT INTO `users` VALUES (14, 'yiwang', '$2y$10$juiGo4UZNMmpeQlEnLPfveDGoRYKD85X/0dQQEN366bQHQWJvU15.', '遗忘梦境', '', '', '', '134.195.101.21', 37145, '134.195.101.21', 38569, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/14.png', '', '', '', '2021-08-02 02:06:31', '2021-08-02 15:02:27', '2021-08-02 02:06:12', NULL, '2021-08-02 02:06:12', '2021-08-02 15:09:30', 0);
INSERT INTO `users` VALUES (15, 'huifeng', '$2y$10$iFOh8QzjrvBAYODOmfJOGeYdWA3.EQQsU4OVg6KoXJxC07pS9MKAm', '灰风天下第一', '', '', '', '134.195.101.21', 49405, '134.195.101.21', 34467, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-02 02:20:16', '2021-08-02 02:14:06', NULL, '2021-08-02 02:14:07', '2021-08-02 02:20:35', 0);
INSERT INTO `users` VALUES (16, 'yingying', '$2y$10$qlKtTdP8BogMGysa2o5vjeqoLDGdDpe.FvRY0k8ElpxkXZZdjFPNC', '嘤嘤怪', '', '', '', '134.195.101.21', 41639, '134.195.101.21', 39517, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/16.png', '', '', '', '2021-08-02 14:36:30', '2021-08-12 15:34:51', '2021-08-02 14:35:57', NULL, '2021-08-02 14:35:57', '2021-08-12 15:35:58', 0);
INSERT INTO `users` VALUES (17, 'dengfeng', '$2y$10$yMLbGly5nZTrwqVp9EI.7uovF062xUcjXE6uKcHkIrMDLs5tQRRRG', '等风也等你', '', '', '', '134.195.101.21', 44995, '134.195.101.21', 55863, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/17.png', '', '', '', '2021-08-02 15:00:15', '2021-08-09 13:57:56', '2021-08-02 14:59:51', NULL, '2021-08-02 14:59:51', '2021-08-09 13:59:33', 0);
INSERT INTO `users` VALUES (18, 'tianliang', '$2y$10$orhiGN6Tci7s0kaZye.fJ.YfXhJHLh40qDDpHy6z7.X7VtweoL3PC', '天亮ll说晚安', '', '', '', '134.195.101.21', 58723, '134.195.101.21', 58723, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/18.png', '', '', '', '2021-08-02 15:19:05', '2021-08-02 15:18:39', '2021-08-02 15:18:38', NULL, '2021-08-02 15:18:39', '2021-08-02 15:20:16', 0);
INSERT INTO `users` VALUES (19, 'xigua', '$2y$10$nb5e0Uf3IrOUMSNmQMocOeuevpi77YoQODYvwqDOW1CyeKmq7qRXO', '西瓜的夏天', '', '', '', '134.195.101.21', 59999, '134.195.101.21', 59999, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/19.png', '', '', '', '2021-08-02 15:21:08', '2021-08-02 15:20:55', '2021-08-02 15:20:55', NULL, '2021-08-02 15:20:55', '2021-08-02 15:24:24', 0);
INSERT INTO `users` VALUES (20, 'mc', '$2y$10$Bsd/63PVJcYYcPUoAKVLX.MM7CdWKU8DkPaLXm.CsdKL46DWr1sxi', 'mc不洗脚', '', '', '', '134.195.101.21', 50709, '134.195.101.21', 50709, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/20.png', '', '', '', '2021-08-02 15:25:05', '2021-08-02 15:24:42', '2021-08-02 15:24:41', NULL, '2021-08-02 15:24:42', '2021-08-02 15:31:08', 0);
INSERT INTO `users` VALUES (21, 'fangun', '$2y$10$5P5O80XRY9KsjHHAecW7guWn8WiN6b2BDbOSDd9NORg2.rUzh8o82', '翻滚吧扯蛋', '', '', '', '134.195.101.21', 35061, '134.195.101.21', 35527, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/21.png', '', '', '', '2021-08-02 15:32:34', '2021-08-12 15:09:35', '2021-08-02 15:32:08', NULL, '2021-08-02 15:32:08', '2021-08-12 15:12:30', 0);
INSERT INTO `users` VALUES (22, 'XY15721572421', '$2y$10$Wa9sNB4qHIaB4ceuwKasS.G4p7ij.0dBv13NG6FrftGz8NnoeMGj6', 'XY15721572421', '', '', '', '134.195.101.21', 36419, '134.195.101.21', 32817, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-09 14:01:07', '2021-08-02 15:35:57', NULL, '2021-08-02 15:35:57', '2021-08-09 14:01:54', 0);
INSERT INTO `users` VALUES (23, 'moran', '$2y$10$EBourgObLVuNgnJTCpj3POAi3Q4cbxC9O5AUnH6RNU7tv6c/.GQvS', '墨染青衣间', '', '', '', '134.195.101.21', 57753, '134.195.101.21', 57753, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/23.png', '', '', '', '2021-08-02 16:29:46', '2021-08-02 16:29:19', '2021-08-02 16:29:19', NULL, '2021-08-02 16:29:19', '2021-08-02 16:30:26', 0);
INSERT INTO `users` VALUES (24, 'm_3b76ac733', '$2y$10$Di2IRGNGgfUlfAbz/8Abf.XG0i0X8rOSgANT2Nid2l./lOdwTFNA6', 'm_3b76ac733', '', '', '', '134.195.101.21', 41029, '134.195.101.21', 41029, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-02 16:31:53', '2021-08-02 16:31:53', NULL, '2021-08-02 16:31:53', '2021-08-02 16:36:35', 0);
INSERT INTO `users` VALUES (25, 'longtai', '$2y$10$3sFf945jS.n00HbwctbZfueUBWDbk.QIx.2i9sTYRI3Dm4iLLQAaC', '龙太子的小白菜', '', '', '', '134.195.101.21', 44025, '134.195.101.21', 48483, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '000/00/00/25.png', '', '', '', '2021-08-02 16:49:02', '2021-08-06 15:48:03', '2021-08-02 16:37:04', NULL, '2021-08-02 16:37:05', '2021-08-09 15:22:58', 0);
INSERT INTO `users` VALUES (26, '34645756756', '$2y$10$er5GyhHV5mu9GdgtFQDSNur7YXqmXSjWefr207TeO5tou0QmQsofe', '34645756756', '', '', '', '134.195.101.21', 39077, '134.195.101.21', 39077, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/26.png', '', '', '', '2021-08-02 20:27:43', '2021-08-02 20:27:27', '2021-08-02 20:27:27', NULL, '2021-08-02 20:27:27', '2021-08-02 20:35:53', 0);
INSERT INTO `users` VALUES (27, 'Poners', '$2y$10$J33O7YRdrysf.IDqZ0xH6O5dZfbS/JdWTojgwaqlxGTeylcV/6zpC', 'Poners', '', '', '', '134.195.101.21', 53221, '134.195.101.21', 53221, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/27.png', '', '', '', '2021-08-02 20:38:08', '2021-08-02 20:37:01', '2021-08-02 20:37:01', NULL, '2021-08-02 20:37:01', '2021-08-02 20:47:37', 0);
INSERT INTO `users` VALUES (28, 'TEam', '$2y$10$0tv664K8xb4kQh9k/iid.uMmJKYU65ge93Renyst7Wel3hxpZ3rdO', 'TEam血煞', '', '', '', '134.195.101.21', 43305, '134.195.101.21', 43305, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/28.png', '', '', '', '2021-08-03 16:26:19', '2021-08-03 16:25:58', '2021-08-03 16:25:58', NULL, '2021-08-03 16:25:58', '2021-08-03 16:31:58', 0);
INSERT INTO `users` VALUES (29, '火之意志05', '$2y$10$aehJfxVC4d0IRnr4rq.VUeTsj3PBbfPvzW8fsCWgDrNxefuGrQafi', '火之意志05', '', '', '', '134.195.101.21', 59759, '134.195.101.21', 59759, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/29.png', '', '', '', '2021-08-03 16:34:02', '2021-08-03 16:33:06', '2021-08-03 16:33:06', NULL, '2021-08-03 16:33:06', '2021-08-03 16:35:21', 0);
INSERT INTO `users` VALUES (30, '奇游-菲姐', '$2y$10$DRlOjtyu/OiAyaVNf4dgX.FXQjN7x/QfgT1Ly4XxVYVVjFOAVqdFq', '奇游-菲姐', '', '', '', '134.195.101.21', 37743, '134.195.101.21', 37743, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '000/00/00/30.png', '', '', '', '2021-08-03 16:36:20', '2021-08-03 16:36:04', '2021-08-03 16:36:04', NULL, '2021-08-03 16:36:04', '2021-08-03 16:37:19', 0);
INSERT INTO `users` VALUES (31, '女朋友超可爱', '$2y$10$Q4sQKtkbRmXcRYp11dPNNeJroRv5tDHcIe4SkrtygDxUZBEnX/0Ti', '女朋友超可爱', '', '', '', '134.195.101.21', 38119, '134.195.101.21', 38119, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/31.png', '', '', '', '2021-08-03 16:38:22', '2021-08-03 16:37:43', '2021-08-03 16:37:43', NULL, '2021-08-03 16:37:43', '2021-08-03 16:43:36', 0);
INSERT INTO `users` VALUES (32, '夜翼sunny', '$2y$10$nFdj5NHrsHTCbEkubfLIq.kMUSiBo3KXh6QGKnR.YT/SCeH4B1TGi', '夜翼sunny', '', '', '', '134.195.101.21', 50103, '134.195.101.21', 60249, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/32.png', '', '', '', '2021-08-03 16:50:12', '2021-08-06 15:30:08', '2021-08-03 16:49:58', NULL, '2021-08-03 16:49:58', '2021-08-06 15:30:51', 0);
INSERT INTO `users` VALUES (33, '阴千杂', '$2y$10$ONCadHm1Tf/uIIxwhP2jSO8XaMBb3JIoRsapR4SB7keM6z/CdNh7.', '阴千杂', '', '', '', '134.195.101.21', 41231, '134.195.101.21', 51845, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/33.png', '', '', '', '2021-08-03 16:55:03', '2021-08-10 23:03:38', '2021-08-03 16:53:31', NULL, '2021-08-03 16:53:31', '2021-08-10 23:06:13', 0);
INSERT INTO `users` VALUES (34, 'k', '$2y$10$QraFr3Mgme.4adtjR6w1hO0z8aOscIFMyCB3s5L84H.FYwd4VPEGq', 'k', '', '', '', '134.195.101.21', 37795, '134.195.101.21', 34595, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-07 16:48:14', '2021-08-04 18:52:20', NULL, '2021-08-04 18:52:20', '2021-08-07 22:30:44', 0);
INSERT INTO `users` VALUES (35, '没有大哥', '$2y$10$lC8xC9DMsp5BaB7CaCu0huZaHkKGtKk.C5ulXyu3jTCqbkftABsCG', '没有大哥', '', '', '', '134.195.101.21', 51031, '134.195.101.21', 34093, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/35.png', '', '', '', '2021-08-04 20:31:29', '2021-08-06 15:31:40', '2021-08-04 20:31:11', NULL, '2021-08-04 20:31:11', '2021-08-06 15:32:57', 0);
INSERT INTO `users` VALUES (36, '小咪', '$2y$10$82eyeK2KuCOZ6DlnNR4bQOV9.QwHOEd4GIo2s9LBjubVAo4yVfBj2', '小咪', '', '', '', '134.195.101.21', 56913, '134.195.101.21', 56913, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/36.png', '', '', '', '2021-08-04 20:39:05', '2021-08-04 20:38:37', '2021-08-04 20:38:36', NULL, '2021-08-04 20:38:37', '2021-08-04 20:43:59', 0);
INSERT INTO `users` VALUES (37, '张云龙', '$2y$10$9nZPgiWXHCprvXE6xjE5.Oaa4JccYCBgJYoydi2NHmEA7p2f4e7NK', '张云龙', '', '', '', '61.158.147.207', 11234, '61.158.147.207', 11234, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-06 12:45:56', '2021-08-06 12:45:55', NULL, '2021-08-06 12:45:55', '2021-08-14 13:03:36', 0);
INSERT INTO `users` VALUES (38, '星光月宇', '$2y$10$Z0qUL9J263du.gIVM7kJE.OeLR5twjGwBKCWpqwp2HsZ3e76MOvra', '星光月宇', '', '', '', '134.195.101.21', 33721, '134.195.101.21', 33721, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-06 15:14:26', '2021-08-06 15:14:26', NULL, '2021-08-06 15:14:26', '2021-08-06 15:15:08', 0);
INSERT INTO `users` VALUES (39, '迂奴', '$2y$10$Gx5wk9nyr0.Nto9eOOmVWOm3Xkz27YNJghzLuz0.gFkSvaDmeu4vO', '迂奴', '', '', '', '134.195.101.21', 53491, '134.195.101.21', 53491, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/39.png', '', '', '', '2021-08-06 15:16:28', '2021-08-06 15:15:40', '2021-08-06 15:15:40', NULL, '2021-08-06 15:15:40', '2021-08-06 15:18:54', 0);
INSERT INTO `users` VALUES (40, '黎明哦', '$2y$10$GLpKBaV3rI3KVvMojG8wHO5eLbItKn/UB8.BvHfzzS8IHZqUd1NaO', '黎明哦', '', '', '', '134.195.101.21', 52673, '134.195.101.21', 52673, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/40.png', '', '', '', '2021-08-06 15:19:37', '2021-08-06 15:19:17', '2021-08-06 15:19:16', NULL, '2021-08-06 15:19:17', '2021-08-06 15:22:50', 0);
INSERT INTO `users` VALUES (41, '炎寻冰的故事', '$2y$10$EpK1cqr7KgM15Ciqo/gMVOmpitHpotNN.7ED6DCp4L.2qqMlHCGH2', '炎寻冰的故事', '', '', '', '134.195.101.21', 34779, '134.195.101.21', 41849, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/41.png', '', '', '', '2021-08-07 16:05:51', '2021-08-07 16:19:58', '2021-08-07 16:05:02', NULL, '2021-08-07 16:05:02', '2021-08-07 16:22:32', 0);
INSERT INTO `users` VALUES (42, '我牠ma强手颅裂', '$2y$10$0BopYcShPQrVArR9HSmReOwS5IkyJzQ.ILvagNDM4N7Is5DarYRiy', '我牠ma强手颅裂', '', '', '', '134.195.101.21', 44651, '134.195.101.21', 44651, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/42.png', '', '', '', '2021-08-07 16:08:10', '2021-08-07 16:07:46', '2021-08-07 16:07:46', NULL, '2021-08-07 16:07:46', '2021-08-07 16:09:54', 0);
INSERT INTO `users` VALUES (43, 'RemSilence', '$2y$10$oNYGz3UDWuVAQ.QyyWHypO1gWUwGBXS5Se.BAh4zQLC9Q.zIYH.kW', 'RemSilence', '', '', '', '134.195.101.21', 46531, '134.195.101.21', 46531, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/43.png', '', '', '', '2021-08-07 16:10:59', '2021-08-07 16:10:46', '2021-08-07 16:10:45', NULL, '2021-08-07 16:10:46', '2021-08-07 16:15:30', 0);
INSERT INTO `users` VALUES (44, '和枫沐叶', '$2y$10$nBuiHRv1m8rDD/X3XyG0Puj7QnIvTYMY7fExZe3XJQA4v7MPCYk7q', '和枫沐叶', '', '', '', '134.195.101.21', 49875, '134.195.101.21', 49875, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/44.png', '', '', '', '2021-08-07 16:16:27', '2021-08-07 16:16:13', '2021-08-07 16:16:12', NULL, '2021-08-07 16:16:13', '2021-08-07 16:19:51', 0);
INSERT INTO `users` VALUES (45, '清歌予你', '$2y$10$.DUXMqdTmiROm3qG8CRKkOu1IW6b9iX32mWJYYJytGwxi.9GynQtq', '清歌予你', '', '', '', '134.195.101.21', 43903, '134.195.101.21', 56619, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/45.png', '', '', '', '2021-08-07 16:30:42', '2021-08-12 15:36:15', '2021-08-07 16:30:21', NULL, '2021-08-07 16:30:21', '2021-08-12 15:37:02', 0);
INSERT INTO `users` VALUES (46, '一袋米抗几喽', '$2y$10$AZ32y9KtG.q22hn46QA37uExIAVQaXMMdnk8UULPLTk8/dnlGEmRq', '一袋米抗几喽', '', '', '', '134.195.101.21', 36315, '134.195.101.21', 36315, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/46.png', '', '', '', '2021-08-09 13:48:32', '2021-08-09 13:48:13', '2021-08-09 13:48:13', NULL, '2021-08-09 13:48:13', '2021-08-09 13:49:11', 0);
INSERT INTO `users` VALUES (47, '南昌丶大马猴', '$2y$10$CXpMu/WJZVF8cfJGOEwIieoPy69zhR851zqHk6l77J6uTarWYDH0W', '南昌丶大马猴', '', '', '', '134.195.101.21', 40161, '134.195.101.21', 40161, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/47.png', '', '', '', '2021-08-09 13:50:09', '2021-08-09 13:49:51', '2021-08-09 13:49:51', NULL, '2021-08-09 13:49:51', '2021-08-09 13:51:26', 0);
INSERT INTO `users` VALUES (48, '砹-苯-烯', '$2y$10$olWAuX0TWmrtQTuNHnXLweabkMne4eAuTMymBNaq1j30Reah3x0J2', '砹-苯-烯', '', '', '', '134.195.101.21', 37745, '134.195.101.21', 37745, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/48.png', '', '', '', '2021-08-09 13:52:05', '2021-08-09 13:51:48', '2021-08-09 13:51:48', NULL, '2021-08-09 13:51:48', '2021-08-09 13:53:00', 0);
INSERT INTO `users` VALUES (49, '桃花酿酒', '$2y$10$Gi8DuhPq2BJmez9LJ1W.qex7UR5asNqADxpCgUumWvVPQhS4IuiW6', '桃花酿酒', '', '', '', '134.195.101.21', 41459, '134.195.101.21', 41459, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/49.png', '', '', '', '2021-08-09 13:53:35', '2021-08-09 13:53:18', '2021-08-09 13:53:18', NULL, '2021-08-09 13:53:18', '2021-08-09 13:55:22', 0);
INSERT INTO `users` VALUES (50, '神圣的死亡骑士', '$2y$10$glVRnhNKmvZaL6W9vfO0AOrTn34MoFitR7uIaVpGFveIWCsdIjNZC', '神圣的死亡骑士', '', '', '', '134.195.101.21', 46789, '134.195.101.21', 46789, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/50.png', '', '', '', '2021-08-09 17:26:29', '2021-08-09 17:26:11', '2021-08-09 17:26:11', NULL, '2021-08-09 17:26:11', '2021-08-09 17:48:11', 0);
INSERT INTO `users` VALUES (51, '-全息玫瑰碎片', '$2y$10$ZAaP/0esk2ah.tDpIsao5.g.j4dPKt9w09vmzM.oKO5Mtaw/cLRoG', '-全息玫瑰碎片', '', '', '', '134.195.101.21', 42199, '134.195.101.21', 42199, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/51.png', '', '', '', '2021-08-09 17:48:55', '2021-08-09 17:48:41', '2021-08-09 17:48:41', NULL, '2021-08-09 17:48:41', '2021-08-09 17:50:12', 0);
INSERT INTO `users` VALUES (52, 'YHCS9', '$2y$10$723hoi8m11zPJ0s197FD/O7Mh.4Au9FokzPEN0MURLZFwQgg9IbK6', 'YHCS9', '', '', '', '134.195.101.21', 44139, '134.195.101.21', 44139, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/52.png', '', '', '', '2021-08-09 17:50:52', '2021-08-09 17:50:32', '2021-08-09 17:50:32', NULL, '2021-08-09 17:50:32', '2021-08-09 17:52:15', 0);
INSERT INTO `users` VALUES (53, '黑果子', '$2y$10$z4FZlJxyun/Ts9Lmez751uz0NJxEukq.cIzitdTSo3K2kVfjsqCtm', '黑果子', '', '', '', '134.195.101.21', 46883, '134.195.101.21', 46883, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/53.png', '', '', '', '2021-08-09 17:52:51', '2021-08-09 17:52:37', '2021-08-09 17:52:37', NULL, '2021-08-09 17:52:37', '2021-08-09 17:53:14', 0);
INSERT INTO `users` VALUES (54, '真心累', '$2y$10$5w0qkEZefGPd8P.tO4TDouXOMdthou8eEJpNz2gGrWD0SUzerJeIG', '真心累', '', '', '', '134.195.101.21', 53793, '134.195.101.21', 53793, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/54.png', '', '', '', '2021-08-09 17:53:56', '2021-08-09 17:53:39', '2021-08-09 17:53:39', NULL, '2021-08-09 17:53:39', '2021-08-09 17:54:58', 0);
INSERT INTO `users` VALUES (55, 'limbshadow2013', '$2y$10$jtqG5fftnwf4oQXRsqr68uwMaZOgJw9oFC8sgoDCPfKibIZY3CG.S', 'limbshadow2013', '', '', '', '134.195.101.21', 49527, '134.195.101.21', 49527, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/55.png', '', '', '', '2021-08-09 17:55:45', '2021-08-09 17:55:22', '2021-08-09 17:55:21', NULL, '2021-08-09 17:55:21', '2021-08-09 18:00:54', 0);
INSERT INTO `users` VALUES (56, '剑乄', '$2y$10$.XTza7VkOp28V0caIGAcy.UemQrSRqgxqr3knPZxCB/qwrx1G6mDq', '剑乄', '', '', '', '134.195.101.21', 60573, '134.195.101.21', 46953, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/56.png', '', '', '', '2021-08-09 18:02:36', '2021-08-10 22:55:14', '2021-08-09 18:01:36', NULL, '2021-08-09 18:01:36', '2021-08-10 22:56:30', 0);
INSERT INTO `users` VALUES (57, '鱼鱼辰joke', '$2y$10$AUS.1r4VPRkAzzs9s2vTfu.NxFCifNwumn3u5JyZoL3PspqRlmA2K', '鱼鱼辰joke', '', '', '', '134.195.101.21', 55453, '134.195.101.21', 44483, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/57.png', '', '', '', '2021-08-09 18:05:47', '2021-08-10 22:56:40', '2021-08-09 18:05:23', NULL, '2021-08-09 18:05:24', '2021-08-10 23:00:12', 0);
INSERT INTO `users` VALUES (58, '硬币光纤0-', '$2y$10$VX9EhZhnnJu2CPVNMJEoOup./L98nkRQglK6gMESbCUurVn8tL4Rq', '硬币光纤0-', '', '', '', '134.195.101.21', 36133, '134.195.101.21', 36133, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/58.png', '', '', '', '2021-08-10 22:53:27', '2021-08-10 22:53:04', '2021-08-10 22:53:04', NULL, '2021-08-10 22:53:04', '2021-08-10 22:54:47', 0);
INSERT INTO `users` VALUES (59, '虚影轮回', '$2y$10$DqCF.P2.bmcmrnFVqW4G3ucPTLvazNft4Unro7WaXnoOal1qkyR5a', '虚影轮回', '', '', '', '134.195.101.21', 35349, '134.195.101.21', 35349, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/59.png', '', '', '', '2021-08-10 23:01:06', '2021-08-10 23:00:51', '2021-08-10 23:00:51', NULL, '2021-08-10 23:00:51', '2021-08-10 23:03:23', 0);
INSERT INTO `users` VALUES (60, '阿伟', '$2y$10$eTxxpwjM3WwBk66j8bJri.LDAv79/GZJV3e7evez2QJ9M78zEdvjq', '阿伟', '', '', '', '134.195.101.21', 43221, '134.195.101.21', 43221, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/60.png', '', '', '', '2021-08-10 23:07:29', '2021-08-10 23:07:14', '2021-08-10 23:07:13', NULL, '2021-08-10 23:07:13', '2021-08-10 23:08:59', 0);
INSERT INTO `users` VALUES (61, 'hk5123', '$2y$10$Sc2R5PeB9pwAbnHFZmYHxel5QB4BHiJ.YujGiqdxaVAnxdzj5ibVe', 'hk5123', '', '', '', '134.195.101.21', 39857, '134.195.101.21', 39857, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/61.png', '', '', '', '2021-08-10 23:09:48', '2021-08-10 23:09:32', '2021-08-10 23:09:32', NULL, '2021-08-10 23:09:32', '2021-08-10 23:54:30', 0);
INSERT INTO `users` VALUES (62, '善良的Serb', '$2y$10$Sw3thyjtgUYzRCqsicFNTeB2BZvHP94BYTLItHspVo5h/8YhPwaE6', '善良的Serb', '', '', '', '134.195.101.21', 55285, '134.195.101.21', 55285, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/62.png', '', '', '', '2021-08-10 23:55:31', '2021-08-10 23:55:15', '2021-08-10 23:55:15', NULL, '2021-08-10 23:55:15', '2021-08-10 23:57:25', 0);
INSERT INTO `users` VALUES (63, '偷猎者协会', '$2y$10$AUUH6oXyWd8Yin8b5Bp9fOJD8kCOkw14uMDnp.krBhCuvfEM.4e06', '偷猎者协会', '', '', '', '134.195.101.21', 48453, '134.195.101.21', 48453, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/63.png', '', '', '', '2021-08-10 23:58:20', '2021-08-10 23:58:01', '2021-08-10 23:58:01', NULL, '2021-08-10 23:58:01', '2021-08-11 00:00:07', 0);
INSERT INTO `users` VALUES (64, '矮毛毛', '$2y$10$4nzwvcNy/eV36KWdDKWFKuHuMau9guwE0Zw3r2WwwkzfLsZ4S4f1q', '矮毛毛', '', '', '', '134.195.101.21', 55543, '134.195.101.21', 55543, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/64.png', '', '', '', '2021-08-11 00:02:34', '2021-08-11 00:00:35', '2021-08-11 00:00:35', NULL, '2021-08-11 00:00:35', '2021-08-11 00:04:23', 0);
INSERT INTO `users` VALUES (65, '期许人生如三月', '$2y$10$fWCimNDtN4UDg7usoyWeUeUXxt2EZkXw.6KZurxE0OltAkVdTDUii', '期许人生如三月', '', '', '', '134.195.101.21', 36899, '134.195.101.21', 36899, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/65.png', '', '', '', '2021-08-11 00:05:13', '2021-08-11 00:04:58', '2021-08-11 00:04:57', NULL, '2021-08-11 00:04:58', '2021-08-11 00:06:57', 0);
INSERT INTO `users` VALUES (66, '小伊寻宝日记', '$2y$10$y3tLSQ2yogp2KhB.gpcrSesGW5SSGLfdPX4cPtNjOSZE3jH/dc3vO', '小伊寻宝日记', '', '', '', '134.195.101.21', 60847, '134.195.101.21', 60847, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/66.png', '', '', '', '2021-08-11 00:07:28', '2021-08-11 00:07:15', '2021-08-11 00:07:15', NULL, '2021-08-11 00:07:15', '2021-08-11 00:15:11', 0);
INSERT INTO `users` VALUES (67, 'Mi随风', '$2y$10$j9gAZL8/GKeTgfVug..0COQDuQXybR6vV8JernOW8nR1/Bgt.HOoC', 'Mi随风', '', '', '', '208.87.132.216', 24223, '134.195.101.21', 50857, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/67.png', '', '', '', '2021-08-12 14:49:47', '2021-08-25 21:19:56', '2021-08-12 14:49:26', NULL, '2021-08-12 14:49:26', '2021-08-25 21:20:41', 0);
INSERT INTO `users` VALUES (68, '摘小太阳给你', '$2y$10$cH5z5qHfjwtSZfUEzw5hauhdQOwbsY0HhDOXzgxJXkKaDYEp/f0hS', '摘小太阳给你Z', '', '', '', '134.195.101.21', 53361, '134.195.101.21', 53361, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/68.png', '', '', '', '2021-08-12 14:52:23', '2021-08-12 14:52:06', '2021-08-12 14:52:06', NULL, '2021-08-12 14:52:06', '2021-08-12 14:56:38', 0);
INSERT INTO `users` VALUES (69, '言语-', '$2y$10$qff.JXMH8Hwt79r.1O0gT.o333dgu4.wbA60g2JVsmO9oGiFyU/1S', '言语-', '', '', '', '134.195.101.21', 54557, '134.195.101.21', 54557, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/69.png', '', '', '', '2021-08-12 14:57:36', '2021-08-12 14:57:16', '2021-08-12 14:57:16', NULL, '2021-08-12 14:57:16', '2021-08-12 14:59:49', 0);
INSERT INTO `users` VALUES (70, '鸣我的一生', '$2y$10$dvPXJAPsGuzmRn1eZd2hE.9VcVYK1CZ2pz0mfb1jNGkW1WK1JzDca', '鸣我的一生', '', '', '', '134.195.101.21', 57663, '134.195.101.21', 57663, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/70.png', '', '', '', '2021-08-12 15:00:33', '2021-08-12 15:00:13', '2021-08-12 15:00:13', NULL, '2021-08-12 15:00:13', '2021-08-12 15:03:37', 0);
INSERT INTO `users` VALUES (71, 'conglai', '$2y$10$XhSgWzlAO2xJcn8AC4ZoZOUtYKzQw8vvNjsmlmFiwABpxCM6ZdFiC', '从来不插眼', '', '', '', '134.195.101.21', 49177, '134.195.101.21', 49177, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/71.png', '', '', '', '2021-08-12 15:04:39', '2021-08-12 15:04:23', '2021-08-12 15:04:23', NULL, '2021-08-12 15:04:23', '2021-08-12 15:05:52', 0);
INSERT INTO `users` VALUES (72, '丷烁金金', '$2y$10$HO6hNjbRbfBsj1O33SUURe8yW9KOJM4LaCjhDaiTTsZ6f226/I18q', '丷烁金金', '', '', '', '134.195.101.21', 45415, '134.195.101.21', 45415, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/72.png', '', '', '', '2021-08-12 15:06:45', '2021-08-12 15:06:16', '2021-08-12 15:06:15', NULL, '2021-08-12 15:06:16', '2021-08-12 15:07:32', 0);
INSERT INTO `users` VALUES (73, 'xingyuan', '$2y$10$xjgIcRejL1SGb16GTUqRBOIHv.LS7uiC0FDI5DbBE3FXT5z7dhTV2', '行远自迩', '', '', '', '134.195.101.21', 46361, '134.195.101.21', 46361, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/73.png', '', '', '', '2021-08-12 15:13:14', '2021-08-12 15:12:58', '2021-08-12 15:12:58', NULL, '2021-08-12 15:12:58', '2021-08-12 15:18:08', 0);
INSERT INTO `users` VALUES (74, '封禁用户', '$2y$10$fd3UtPb0jUa6Dt6AsSdNbOQkVV/q/fpD1cQMf.n.O9maB93vvuF8q', '封禁用户', '', '', '', '134.195.101.21', 34299, '134.195.101.21', 39083, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 1, '', '', '', '', NULL, '2021-08-13 19:46:33', '2021-08-12 15:18:58', '2100-08-31 00:00:00', '2021-08-12 15:18:58', '2021-08-13 23:36:45', 0);
INSERT INTO `users` VALUES (75, 'lhy4251', '$2y$10$4RXLWLMbzR/jvnXwMTAeq.yCGdtRNQ9Wlrqbr5iyyhTjruR569T2e', 'lhy4251', '', '', '', '134.195.101.35', 57541, '134.195.101.21', 49533, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-21 21:16:55', '2021-08-14 15:30:40', NULL, '2021-08-14 15:30:40', '2021-08-21 21:19:47', 0);
INSERT INTO `users` VALUES (76, 'qiugeng', '$2y$10$r4kpz7h.ibHaYum44YMreOwGgaHSpsoBx3lScu9rxhyWz/mY0NVR2', '求更新33', '', '', '', '', 0, '134.195.101.21', 50379, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-14 15:31:42', '2021-08-14 15:31:42', NULL, '2021-08-14 15:31:42', '2021-08-15 01:30:49', 0);
INSERT INTO `users` VALUES (77, '时间似深海', '$2y$10$WcQBFFKUZaF7HCt/XAI13uEYFr9bzQLuiMHXkmIIgVwy9yMEZJt3e', '时间似深海', '', '', '', '', 0, '134.195.101.21', 60251, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-14 15:32:10', '2021-08-14 15:32:10', NULL, '2021-08-14 15:32:10', '2021-08-15 01:30:49', 0);
INSERT INTO `users` VALUES (78, '一杯咖啡', '$2y$10$PsWVjkXJJKt9DB5lPfLmcunm3L846i97JD/up72/ppJFOanwdPPA.', '一杯咖啡', '', '', '', '', 0, '134.195.101.21', 39649, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-14 15:32:44', '2021-08-14 15:32:44', NULL, '2021-08-14 15:32:45', '2021-08-15 01:30:49', 0);
INSERT INTO `users` VALUES (79, '封禁用户1', '$2y$10$klWj31bcIeP69t/MX.ckQuGhQ4dA6L7AnpA7C0L33WlsF59Th5HSK', '封禁用户1', '', '', '', '', 0, '134.195.101.21', 42691, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 1, '', '', '', '', NULL, '2021-08-14 15:34:19', '2021-08-14 15:34:19', '2100-08-31 00:00:00', '2021-08-14 15:34:19', '2021-08-15 01:33:09', 0);
INSERT INTO `users` VALUES (80, '为什么要审核', '$2y$10$fcEM7CjKcGTjmjoGYP33feJYwiVer.tepn1AHePZk/tLD156jOXWO', '为什么要审核', '', '', '', '', 0, '134.195.101.21', 49511, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-08-14 15:35:17', '2021-08-14 15:35:17', NULL, '2021-08-14 15:35:17', '2021-08-15 01:30:49', 0);
INSERT INTO `users` VALUES (81, '水晶先先锋锋', '$2y$10$Pccn0.649Quw5InPloc.GO7p2witetWaZT.gZFLS2r6.jFABdxKQy', '水晶先先锋锋', '', '', '', '208.87.132.216', 5941, '134.195.101.35', 59579, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/81.png', '', '', '', '2021-08-20 19:34:10', '2021-08-25 21:21:19', '2021-08-20 19:33:52', NULL, '2021-08-20 19:33:52', '2021-08-25 21:22:11', 0);
INSERT INTO `users` VALUES (82, 'bruce', '$2y$10$yHfQN4dpVKthhnCLNp13y.FCM3Qtbn/PskOYlJi9KFTERRrmE6Uxe', 'bruce', '', '', '', '134.195.101.35', 54791, '134.195.101.35', 54791, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/82.png', '', '', '', '2021-08-20 19:36:47', '2021-08-20 19:35:07', '2021-08-20 19:35:07', NULL, '2021-08-20 19:35:07', '2021-08-20 19:37:39', 0);
INSERT INTO `users` VALUES (83, 'humengjun2', '$2y$10$pYb2f7WpqkwZmGreAT8vJem4U.C4yoyp8dtVWzxpnbzWkUL/FG5Lm', 'humengjun2', '', '', '', '134.195.101.35', 47393, '134.195.101.35', 47393, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/83.png', '', '', '', '2021-08-20 19:38:14', '2021-08-20 19:37:57', '2021-08-20 19:37:57', NULL, '2021-08-20 19:37:57', '2021-08-20 19:42:21', 0);
INSERT INTO `users` VALUES (84, '贸易港-', '$2y$10$qv8NqC8BO9M86UNaTkOZreZTTs8LVMIHKullyZR9bz/hDZDSgEMyC', '贸易港-', '', '', '', '134.195.101.35', 44915, '134.195.101.35', 44915, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/84.png', '', '', '', '2021-08-20 19:42:52', '2021-08-20 19:42:34', '2021-08-20 19:42:34', NULL, '2021-08-20 19:42:34', '2021-08-20 19:45:17', 0);
INSERT INTO `users` VALUES (85, '一路向北', '$2y$10$I50sEPaA7FtG7NMwjvVXRugvy5opHQxYwF9tM0ldqhPTGN3VihBYa', '一路向北', '', '', '', '134.195.101.35', 42427, '134.195.101.35', 42427, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/85.png', '', '', '', '2021-08-20 19:46:26', '2021-08-20 19:46:07', '2021-08-20 19:46:07', NULL, '2021-08-20 19:46:07', '2021-08-20 19:50:09', 0);
INSERT INTO `users` VALUES (86, '书书3399', '$2y$10$uS60ItQg7K8GmanrCi4xaOoAoGlaoavHsMLz5JByI3S8O9S.zFUFu', '书书3399', '', '', '', '134.195.101.35', 33727, '134.195.101.35', 33727, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/86.png', '', '', '', '2021-08-20 19:51:18', '2021-08-20 19:50:42', '2021-08-20 19:50:42', NULL, '2021-08-20 19:50:42', '2021-08-20 19:55:27', 0);
INSERT INTO `users` VALUES (87, '鸦青-羽缎', '$2y$10$nHp1xIWyyiMWumsBvH1W1.A73qejNCLE3GPZFvTU7.pWOtsfm.pP.', '鸦青-羽缎', '', '', '', '134.195.101.35', 36935, '134.195.101.35', 36935, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/87.png', '', '', '', '2021-08-20 19:55:59', '2021-08-20 19:55:45', '2021-08-20 19:55:45', NULL, '2021-08-20 19:55:45', '2021-08-20 20:00:56', 0);
INSERT INTO `users` VALUES (88, '是到贤呀', '$2y$10$..MgAV0h1.VgjFnHo3pZXeT1I9t5vPrM6l5apxBm2mk9W62G9lVke', '是到贤呀', '', '', '', '134.195.101.35', 54395, '134.195.101.35', 54395, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/88.png', '', '', '', '2021-08-21 21:07:01', '2021-08-21 21:05:33', '2021-08-21 21:05:33', NULL, '2021-08-21 21:05:33', '2021-08-21 21:10:32', 0);
INSERT INTO `users` VALUES (89, 'gugu', '$2y$10$3bi2HdogUsTY4ZeC6KWVauagjco.YbCOwkI/ndHKsaBLnqWqa53fS', '咕咕鱼呀', '', '', '', '134.195.101.35', 2231, '134.195.101.35', 2231, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/89.png', '', '', '', '2021-08-21 21:14:28', '2021-08-21 21:13:59', '2021-08-21 21:13:59', NULL, '2021-08-21 21:13:59', '2021-08-21 21:15:58', 0);
INSERT INTO `users` VALUES (90, '温酒斩华腾5', '$2y$10$02po9u.4/yJ7ADbvds.CtOZl5IfyAnTM89VCPHYq5R.qs/hydDtuq', '温酒斩华腾5', '', '', '', '134.195.101.35', 9607, '134.195.101.35', 9607, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/90.png', '', '', '', '2021-08-21 21:20:51', '2021-08-21 21:20:27', '2021-08-21 21:20:27', NULL, '2021-08-21 21:20:27', '2021-08-21 21:28:45', 0);
INSERT INTO `users` VALUES (91, '-行但是得加钱', '$2y$10$LvbFi2lHgSYJ9mRcuvgE5eQny8n95FrwKM0hJAlcn9j9HjQos6Q/2', '-行但是得加钱', '', '', '', '134.195.101.35', 7385, '134.195.101.35', 7385, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/91.png', '', '', '', '2021-08-22 19:25:35', '2021-08-22 19:25:13', '2021-08-22 19:25:13', NULL, '2021-08-22 19:25:13', '2021-08-22 19:27:50', 0);
INSERT INTO `users` VALUES (92, '0o0re0o', '$2y$10$0QGUferbAlgXSDk9USYvoOdao5j8hTK0RdvEyjLYFPOWSlTCSN/M2', '0o0re0o', '', '', '', '134.195.101.35', 37451, '134.195.101.35', 37451, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/92.png', '', '', '', '2021-08-22 19:28:36', '2021-08-22 19:28:21', '2021-08-22 19:28:21', NULL, '2021-08-22 19:28:21', '2021-08-22 19:33:26', 0);
INSERT INTO `users` VALUES (93, 'xiangei', '$2y$10$zig4bLAtfQ52msmBjV56SO/LcLbfvglNpLkg8hNsyjcCek2P/Ib0q', '献给泉水的花束', '', '', '', '208.87.132.216', 48969, '208.87.132.216', 48969, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/93.png', '', '', '', '2021-08-24 20:56:07', '2021-08-24 20:55:43', '2021-08-24 20:55:43', NULL, '2021-08-24 20:55:43', '2021-08-24 20:57:42', 0);
INSERT INTO `users` VALUES (94, '陌已', '$2y$10$pxZlnu3D.KzUlyDKNOS9x.DrrSq6q65CY2/PgacVnRqfEtPi71Dlm', '陌已', '', '', '', '208.87.132.216', 34707, '208.87.132.216', 34707, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/94.png', '', '', '', '2021-08-24 20:58:34', '2021-08-24 20:58:21', '2021-08-24 20:58:21', NULL, '2021-08-24 20:58:21', '2021-08-24 21:02:06', 0);
INSERT INTO `users` VALUES (95, 'zhizi', '$2y$10$OujU62M.uBS4AAThJ02zjuyzKEOFYenRjGJT6VsslinAJWXCpwbJu', '栀子沫', '', '', '', '134.195.101.21', 15657, '208.87.132.216', 55777, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/00/95.png', '', '', '', '2021-08-25 21:23:06', '2021-09-30 22:22:37', '2021-08-25 21:22:52', NULL, '2021-08-25 21:22:52', '2021-09-30 22:25:52', 0);
INSERT INTO `users` VALUES (96, '人间忽晚山河迟', '$2y$10$zIgX5nYg6JBUf3HCso8Exu18z0AJHrY4KxEq22QsPMkF2Nxc7NWBG', '人间忽晚山河迟', '', '', '', '208.87.132.216', 16179, '208.87.132.216', 16179, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/96.png', '', '', '', '2021-08-25 21:24:28', '2021-08-25 21:24:16', '2021-08-25 21:24:16', NULL, '2021-08-25 21:24:16', '2021-08-25 21:28:55', 0);
INSERT INTO `users` VALUES (97, '记忆里的丶花香', '$2y$10$1A/mQe0bMRs86Q57TdPej.tncbFV2MrAOtgKCfzMJDYpYw8vNnyQq', '记忆里的丶花香', '', '', '', '134.195.101.21', 56733, '134.195.101.21', 56733, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/97.png', '', '', '', '2021-09-01 23:05:58', '2021-09-01 23:05:39', '2021-09-01 23:05:39', NULL, '2021-09-01 23:05:39', '2021-09-01 23:06:33', 0);
INSERT INTO `users` VALUES (98, 'WhatHarker', '$2y$10$aF45EeRz2/fjbV86FZ.55eYoRLfCg5u/Jts80nZ8f.k1nAzOTYIIi', 'WhatHarker', '', '', '', '134.195.101.21', 31233, '134.195.101.21', 31233, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/98.png', '', '', '', '2021-09-01 23:07:21', '2021-09-01 23:07:04', '2021-09-01 23:07:04', NULL, '2021-09-01 23:07:04', '2021-09-01 23:09:56', 0);
INSERT INTO `users` VALUES (99, '杀生为护生丶', '$2y$10$rizI.3AQ.O4eWTk1Tu6PCOdfpY3lxOdGl8FsOFAhZ4D.IPfz01s62', '杀生为护生丶', '', '', '', '134.195.101.21', 23193, '134.195.101.21', 23193, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/00/99.png', '', '', '', '2021-09-02 23:07:30', '2021-09-02 23:07:11', '2021-09-02 23:07:11', NULL, '2021-09-02 23:07:11', '2021-09-02 23:09:13', 0);
INSERT INTO `users` VALUES (100, '爱花新雨', '$2y$10$cVgRhwG6GHNK77Osi8fgcO/LExFBf8XbTrvFWruxXZE7edOwhfA8G', '爱花新雨', '', '', '', '134.195.101.21', 45415, '134.195.101.21', 45415, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/00.png', '', '', '', '2021-09-02 23:09:38', '2021-09-02 23:09:24', '2021-09-02 23:09:24', NULL, '2021-09-02 23:09:24', '2021-09-02 23:12:15', 0);
INSERT INTO `users` VALUES (101, '摄影师门矢士', '$2y$10$UXLi11dw/8J5KVlFq/D0NedrF42UoUBHy7gCo3NwJIECY2.ZaG30m', '摄影师门矢士', '', '', '', '134.195.101.21', 23745, '134.195.101.21', 23745, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/01.png', '', '', '', '2021-09-02 23:12:57', '2021-09-02 23:12:43', '2021-09-02 23:12:42', NULL, '2021-09-02 23:12:43', '2021-09-02 23:15:33', 0);
INSERT INTO `users` VALUES (102, '璃摆摆', '$2y$10$FXYgBGS9Y//LjnK3ptRLve92akotmVFHgBtyFjMvWVWnzP3JQf132', '璃摆摆', '', '', '', '134.195.101.21', 11203, '134.195.101.21', 11203, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/02.png', '', '', '', '2021-09-04 20:54:42', '2021-09-04 20:54:06', '2021-09-04 20:54:06', NULL, '2021-09-04 20:54:06', '2021-09-04 20:56:28', 0);
INSERT INTO `users` VALUES (103, '哇嘎嘎嘎福娃', '$2y$10$Q/OLzLjL86srKiEwdJ.alOP3ju..44xwdbPxZ7GifHt8pTza/eIDW', '哇嘎嘎嘎福娃', '', '', '', '134.195.101.21', 64409, '134.195.101.21', 64409, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/03.png', '', '', '', '2021-09-04 21:06:46', '2021-09-04 20:56:46', '2021-09-04 20:56:46', NULL, '2021-09-04 20:56:46', '2021-09-04 21:26:12', 0);
INSERT INTO `users` VALUES (104, 'Q2tUAyZ', '$2y$10$RwWjyPR5ifUlkdSzEhmLCOkM2FM4c58zHHLXa2GUbjp4C8iIUgg2a', 'Q2tUAyZ', '', '', '', '134.195.101.21', 41809, '134.195.101.21', 41809, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/04.png', '', '', '', '2021-09-07 21:34:30', '2021-09-07 21:34:15', '2021-09-07 21:34:15', NULL, '2021-09-07 21:34:15', '2021-09-07 21:36:02', 0);
INSERT INTO `users` VALUES (105, '2668680510lhq', '$2y$10$o0CUedTAVEW3N3ZTF3NnceQz5l9cD6Tapo61WqjUSFEeBpWQSn6YC', '2668680510lhq', '', '', '', '134.195.101.21', 64193, '134.195.101.21', 64193, '账号密码注册', '', 0, 2, 0, 0, 0, 0, 0, '000/00/01/05.png', '', '', '', '2021-09-07 21:36:47', '2021-09-07 21:36:21', '2021-09-07 21:36:21', NULL, '2021-09-07 21:36:21', '2021-09-07 21:38:52', 0);
INSERT INTO `users` VALUES (106, '你呀丶', '$2y$10$asyP6jpol6EoJLbaVa1lQe0Lu0HmHXacJ7COBuyuGrBmosAYChEP2', '你呀丶', '', '', '', '134.195.101.21', 27777, '134.195.101.21', 27777, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/06.png', '', '', '', '2021-09-07 21:39:28', '2021-09-07 21:39:12', '2021-09-07 21:39:12', NULL, '2021-09-07 21:39:12', '2021-09-07 21:42:32', 0);
INSERT INTO `users` VALUES (107, '犹望蓝山', '$2y$10$f/NkXUfnmAD8rDRjJMJKXeo0s0M8GfqvLPZE52eRU9J3eMTrDA2VK', '犹望蓝山', '', '', '', '134.195.101.21', 16597, '134.195.101.21', 16597, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/07.png', '', '', '', '2021-09-07 21:42:58', '2021-09-07 21:42:44', '2021-09-07 21:42:43', NULL, '2021-09-07 21:42:44', '2021-09-07 21:46:32', 0);
INSERT INTO `users` VALUES (108, 'TedsAb', '$2y$10$udj8wr85ebEP0uwmabbJZeioDDhQ5HR.xaJurdUT3qL5NHN4Z8nVK', 'TedsAb', '', '', '', '134.195.101.21', 63175, '134.195.101.21', 63175, '账号密码注册', '', 0, 1, 0, 0, 5, 0, 0, '000/00/01/08.png', '', '', '', '2021-09-07 21:52:41', '2021-09-07 21:52:26', '2021-09-07 21:52:26', NULL, '2021-09-07 21:52:26', '2021-09-07 21:57:38', 0);
INSERT INTO `users` VALUES (109, '_行迈靡靡_', '$2y$10$pWUZ8mGBqv8bS.MwUNCciuQzJpWXbrebMV5pfBUcfeNe4pnrrNf/i', '_行迈靡靡_', '', '', '', '134.195.101.21', 48910, '134.195.101.21', 48910, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/09.png', '', '', '', '2021-09-11 14:12:31', '2021-09-11 14:12:09', '2021-09-11 14:12:09', NULL, '2021-09-11 14:12:09', '2021-09-11 14:14:15', 0);
INSERT INTO `users` VALUES (110, '至味即清欢', '$2y$10$JifCvyNYYH8AaSg6Uuff/OMjeRjRDhp1LBLkfMUwZolfbFqSRsBt2', '至味即清欢', '', '', '', '134.195.101.21', 60463, '134.195.101.21', 60463, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/10.png', '', '', '', '2021-09-15 21:47:14', '2021-09-15 21:46:49', '2021-09-15 21:46:48', NULL, '2021-09-15 21:46:49', '2021-09-15 21:53:13', 0);
INSERT INTO `users` VALUES (111, 'GZ小皇', '$2y$10$MRnuWlcNnQ4SFkb66IQ8R.xNhClK2aQ4F1FvOkIlfXT.YmX6DUO1W', 'GZ小皇', '', '', '', '134.195.101.21', 11729, '134.195.101.21', 11729, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/11.png', '', '', '', '2021-09-15 21:53:57', '2021-09-15 21:53:36', '2021-09-15 21:53:35', NULL, '2021-09-15 21:53:35', '2021-09-15 21:58:31', 0);
INSERT INTO `users` VALUES (112, '伯纳乌与7号', '$2y$10$Mk5cM3x.miM8I1kzzpuPl.mQL9kdHxGbqHDVjLIaxnSD.x8e9WBm.', '伯纳乌与7号', '', '', '', '104.168.83.91', 33112, '104.168.83.91', 33112, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/12.png', '', '', '', '2021-09-21 21:16:49', '2021-09-21 21:16:16', '2021-09-21 21:16:16', NULL, '2021-09-21 21:16:16', '2021-09-21 21:18:55', 0);
INSERT INTO `users` VALUES (113, '淸淸淸', '$2y$10$HkKbha5TB8fyyVYnS1m/a.zbv1NUGIwCyI7y7607u6cFAMOjCGyV2', '淸淸淸', '', '', '', '104.168.83.91', 34262, '104.168.83.91', 34262, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/13.png', '', '', '', '2021-09-21 21:19:25', '2021-09-21 21:19:11', '2021-09-21 21:19:11', NULL, '2021-09-21 21:19:11', '2021-09-21 21:22:12', 0);
INSERT INTO `users` VALUES (114, 'Wyattt', '$2y$10$3kRBJSfOSL94IgDRz1t.OOoTDGmh8mZ2S8VyAu1JEL1xZbdFwLp6C', 'Wyattt', '', '', '', '104.168.83.91', 35226, '104.168.83.91', 35226, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/14.png', '', '', '', '2021-09-21 21:22:50', '2021-09-21 21:22:29', '2021-09-21 21:22:29', NULL, '2021-09-21 21:22:29', '2021-09-21 21:23:49', 0);
INSERT INTO `users` VALUES (115, '灬之一', '$2y$10$Aw3J.P8XZ1mo6nTtk9PdpukN97VxC5hJSie1sT2VlpeGO5Jzf9LT6', '灬之一', '', '', '', '134.195.101.21', 24319, '134.195.101.21', 24319, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/15.png', '', '', '', '2021-09-30 22:20:26', '2021-09-30 22:20:03', '2021-09-30 22:20:03', NULL, '2021-09-30 22:20:03', '2021-09-30 22:21:21', 0);
INSERT INTO `users` VALUES (116, '江河湖泊的泽', '$2y$10$M0NCc0v3c3eA6r6K3WAK3umz6Yp75kD98yuWKDEVk7o26SAN58mty', '江河湖泊的泽', '', '', '', '134.195.101.21', 21747, '134.195.101.21', 21747, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/16.png', '', '', '', '2021-09-30 22:26:47', '2021-09-30 22:26:10', '2021-09-30 22:26:10', NULL, '2021-09-30 22:26:10', '2021-09-30 22:29:21', 0);
INSERT INTO `users` VALUES (117, '2倒萨金牛', '$2y$10$mSSjKqqAgHl4ovKKIzokMOcEfd3l8TszeZiJP64b2CM/wiogIrlgW', '2倒萨金牛', '', '', '', '103.152.113.80', 65202, '103.152.113.80', 65202, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/17.png', '', '', '', '2021-10-03 21:22:18', '2021-10-03 21:21:56', '2021-10-03 21:21:55', NULL, '2021-10-03 21:21:55', '2021-10-03 21:22:40', 0);
INSERT INTO `users` VALUES (118, '不二臣lcl', '$2y$10$QhwPusBf0EyTwtXuaZKd0u5cgNE1itn0BJpzT6kEN0p.LrGzHY0gC', '不二臣lcl', '', '', '', '103.152.113.208', 1314, '103.152.113.208', 1314, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/18.png', '', '', '', '2021-10-03 21:23:36', '2021-10-03 21:22:58', '2021-10-03 21:22:57', NULL, '2021-10-03 21:22:58', '2021-10-03 21:24:31', 0);
INSERT INTO `users` VALUES (119, '勿空23333', '$2y$10$NrThEgM/VPchwwsgn5Q1JuxOkEsX/.PJeLoyqgezzsdqlWnaroiQy', '勿空23333', '', '', '', '103.152.113.50', 2350, '103.152.113.50', 2350, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/19.png', '', '', '', '2021-10-03 21:25:28', '2021-10-03 21:24:52', '2021-10-03 21:24:51', NULL, '2021-10-03 21:24:52', '2021-10-03 21:25:52', 0);
INSERT INTO `users` VALUES (120, '怒杀小龙', '$2y$10$nU0xqF70XROhVgIO3m4Etu/UNF/LNdhAZdXtqxQJtvBGUvN.WzW02', '怒杀小龙', '', '', '', '103.152.113.119', 4226, '103.152.113.119', 4226, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/20.png', '', '', '', '2021-10-03 21:28:26', '2021-10-03 21:28:11', '2021-10-03 21:28:10', NULL, '2021-10-03 21:28:11', '2021-10-03 21:40:25', 0);
INSERT INTO `users` VALUES (121, '陈清源', '$2y$10$A.3T7JMf06OHqRLkDVFRpOvHuHUZ6cWUaUQBLDVyggzuW9XPgerli', '陈清源', '$2y$10$M5dM.o3jo1OklRCj2mi.uOWvQSkErvgYiSK4W/HlfVmn9L8XuEtr6', '', '陈', '42.224.225.219', 17304, '42.228.230.157', 37059, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2022-01-15 14:58:42', '2021-10-18 09:19:49', NULL, '2021-10-18 09:19:49', '2022-01-15 14:58:42', 0);
INSERT INTO `users` VALUES (122, '轻狂惯了', '$2y$10$MdNooK3GmYT.KdJcsqUxS.TBzWS3M8dj3b/N/z/rSj75Ty4nQBney', '轻狂惯了', '', '', '', '103.152.113.41', 57502, '103.152.113.41', 57502, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/22.png', '', '', '', '2021-10-18 21:47:20', '2021-10-18 21:43:41', '2021-10-18 21:43:41', NULL, '2021-10-18 21:43:41', '2021-10-18 21:50:32', 0);
INSERT INTO `users` VALUES (123, 'hulong是我', '$2y$10$BzjUi71bVvA..FS8wvLB9uz/4zkvp46tN7w3YdewINnASXoqwLdU.', 'hulong是我', '', '', '', '103.152.113.110', 64616, '103.152.113.110', 64616, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/23.png', '', '', '', '2021-10-18 21:51:36', '2021-10-18 21:51:13', '2021-10-18 21:51:13', NULL, '2021-10-18 21:51:13', '2021-10-18 21:54:06', 0);
INSERT INTO `users` VALUES (124, '无聊的张小三', '$2y$10$h3MErCiEbA2.ZYwadvt4g.v9xRCY3xGWb3nkb3/9N2c27SzbV0eE.', '无聊的张小三', '', '', '', '103.152.113.71', 3400, '103.152.113.71', 3400, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/24.png', '', '', '', '2021-10-18 21:54:55', '2021-10-18 21:54:33', '2021-10-18 21:54:33', NULL, '2021-10-18 21:54:33', '2021-10-18 21:57:05', 0);
INSERT INTO `users` VALUES (125, '秦挽琴小姐', '$2y$10$NH58ndj8c2pAozvgCKMYFu3DmsgtRV5ViHmAmBurv8fsT3be8WZm2', '秦挽琴小姐', '', '', '', '103.152.113.163', 6232, '103.152.113.163', 6232, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/25.png', '', '', '', '2021-10-18 21:58:11', '2021-10-18 21:57:50', '2021-10-18 21:57:50', NULL, '2021-10-18 21:57:50', '2021-10-18 22:00:11', 0);
INSERT INTO `users` VALUES (126, 'zhaerkesi2', '$2y$10$SeyZLPdXIvI5JjC241cCNOtCTcRSB/TlECPx0Q3ayq.WqSnMAK5YW', 'zhaerkesi2', '', '', '', '103.152.113.26', 8988, '103.152.113.26', 8988, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/26.png', '', '', '', '2021-10-18 22:00:48', '2021-10-18 22:00:30', '2021-10-18 22:00:30', NULL, '2021-10-18 22:00:30', '2021-10-18 22:06:19', 0);
INSERT INTO `users` VALUES (127, 'hyper', '$2y$10$jgLTQOV6SLK3wdFcpv8Nou2Mba7fJsqOT9HPDFfieWNvfIs5VxczS', 'hyper', '', '', '', '103.152.113.55', 15394, '103.152.113.55', 15394, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/27.png', '', '', '', '2021-10-18 22:07:36', '2021-10-18 22:07:02', '2021-10-18 22:07:02', NULL, '2021-10-18 22:07:02', '2021-10-18 22:11:31', 0);
INSERT INTO `users` VALUES (128, '老哈哈变', '$2y$10$XRt3xgDPY8FGPeL12Fdko.4xx0O.aoD2jYQ.j7JGt53iHDo7WNnn6', '老哈哈变', '', '', '', '42.228.228.203', 5848, '42.228.228.203', 5848, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/28.png', '', '', '', '2021-10-22 13:48:36', '2021-10-22 13:48:21', '2021-10-22 13:48:20', NULL, '2021-10-22 13:48:21', '2021-10-22 15:32:53', 0);
INSERT INTO `users` VALUES (129, '骷髅王跳大刷新', '$2y$10$yBgYgslo3MnX2ai9uQGniuFZtzIwIKQ15SxbmSv6ekvKEIeKuhoYC', '骷髅王跳大刷新', '', '', '', '103.172.116.78', 55362, '103.172.116.78', 55362, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '000/00/01/29.png', '', '', '', '2021-11-06 21:30:13', '2021-11-06 21:30:01', '2021-11-06 21:30:00', NULL, '2021-11-06 21:30:01', '2021-11-06 21:34:11', 0);
INSERT INTO `users` VALUES (130, '神羽骑士', '$2y$10$CkvSeUlLjGS3qZv1Rqev1eURCc9C.NPISWncEzLn5QpiI0NzDail.', '神羽骑士', '', '', '', '103.172.116.78', 37742, '103.172.116.78', 37742, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '000/00/01/30.png', '', '', '', '2021-11-06 21:35:45', '2021-11-06 21:35:32', '2021-11-06 21:35:32', NULL, '2021-11-06 21:35:32', '2021-11-06 21:37:35', 0);
INSERT INTO `users` VALUES (131, '兔叁岁', '$2y$10$Y3eygNEKqbtGMIXYMmjdWOVbLUIF3mR9i2ZYi483s6M6wZGnP3gOK', '兔叁岁', '', '', '', '103.172.116.78', 34886, '103.172.116.78', 34886, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '000/00/01/31.png', '', '', '', '2021-11-07 19:51:36', '2021-11-07 19:51:24', '2021-11-07 19:51:24', NULL, '2021-11-07 19:51:24', '2021-11-07 19:56:13', 0);
INSERT INTO `users` VALUES (132, '乐观的樊荣', '$2y$10$yD6X33J2xS.Mnt1l5D91Y.zEUlpbYC5eEQaN1q.22EfxirN1xhUNG', '乐观的樊荣', '', '', '', '45.88.42.171', 49944, '45.88.42.171', 49944, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/32.png', '', '', '', '2021-12-16 14:11:42', '2021-12-16 14:11:15', '2021-12-16 14:11:15', NULL, '2021-12-16 14:11:15', '2021-12-16 14:12:02', 0);
INSERT INTO `users` VALUES (133, '心如柠檬天然狻', '$2y$10$7fYC08t8vUn8CxMQNsTPqOd1wV6q6RzNoJss5LmyjT6jxNtf4PQpC', '心如柠檬天然狻', '', '', '', '45.88.42.171', 53302, '45.88.42.171', 53302, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/33.png', '', '', '', '2021-12-16 14:14:50', '2021-12-16 14:14:33', '2021-12-16 14:14:33', NULL, '2021-12-16 14:14:33', '2021-12-16 14:15:13', 0);
INSERT INTO `users` VALUES (134, '壹圈戒痕', '$2y$10$.DtgOfCzpsWHF.3yPgLQPeFhd6Jumu4Ex2ISO.tDbpxddIdScQOGC', '壹圈戒痕', '', '', '', '45.88.42.171', 56768, '45.88.42.171', 56768, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/34.png', '', '', '', '2021-12-16 14:18:56', '2021-12-16 14:18:39', '2021-12-16 14:18:39', NULL, '2021-12-16 14:18:39', '2021-12-16 14:19:34', 0);
INSERT INTO `users` VALUES (135, '形实米识呆睆馏', '$2y$10$YHuAk4QdSxcQLqlhtNZY.OITezQW.4vSLXFQ2PVLikJGhmg9tEra6', '形实米识呆睆馏', '', '', '', '45.88.42.171', 58760, '45.88.42.171', 58760, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '000/00/01/35.png', '', '', '', '2021-12-16 14:20:25', '2021-12-16 14:20:01', '2021-12-16 14:20:01', NULL, '2021-12-16 14:20:01', '2021-12-16 14:20:25', 0);
INSERT INTO `users` VALUES (136, 'asdfsdf', '$2y$10$z6qLB.Y/Bg33y4fjHkwdC.xe4OiEPg/jXb/5y18/wdH.oN/cIXYX.', 'asdasfd', '$2y$10$1c0a9As1ZgO6h6XArQgdku0aANDZ.WACYTK1cltd6QrBHsHg5/9UG', '', '', '103.172.116.151', 60058, '103.172.116.151', 60058, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2021-12-17 22:50:59', '2021-12-17 22:50:59', NULL, '2021-12-17 22:50:59', '2021-12-17 22:51:48', 0);
INSERT INTO `users` VALUES (137, '陈清源大王', '$2y$10$dA3OsrClykqdUcd7M5hDIuk8ITc6CRFs69SPVmqxhK1f.OfYzo2vi', '陈清源大王', '', '', '', '42.224.225.219', 15533, '42.224.225.219', 15533, '账号密码注册', '', 0, 0, 0, 0, 0, 0, 0, '', '', '', '', NULL, '2022-01-15 15:01:48', '2022-01-15 15:01:48', NULL, '2022-01-15 15:01:48', '2022-01-15 15:01:48', 0);
INSERT INTO `users` VALUES (138, 'Allen', '$2y$10$DZ/e.jgAlBRawXqmc88IPebL4T8gVGFNwXYPVWuhejpnb2NRlzIKK', 'Allen', '', '', '', '185.200.34.110', 43259, '185.200.34.110', 43259, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/38.png', '', '', '', '2022-01-20 21:33:35', '2022-01-20 21:33:15', '2022-01-20 21:33:14', NULL, '2022-01-20 21:33:15', '2022-01-20 21:34:31', 0);
INSERT INTO `users` VALUES (139, '之雪', '$2y$10$e4GdzwV3MR4tLlzRAQ9m.ODr2GmJPsCadrXeUtDJd/jAgVd7Bag/u', '之雪', '', '', '', '185.200.34.110', 34277, '185.200.34.110', 34277, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/39.png', '', '', '', '2022-01-20 21:36:01', '2022-01-20 21:35:46', '2022-01-20 21:35:46', NULL, '2022-01-20 21:35:46', '2022-01-20 21:36:56', 0);
INSERT INTO `users` VALUES (140, '仓鼠17', '$2y$10$rmmqB1FoixATaL15TRRMDebs4NMBEvQZMeaCatvoaYe0F8qVWDaPK', '仓鼠17', '', '', '', '185.200.34.110', 44323, '185.200.34.110', 44323, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/40.png', '', '', '', '2022-01-20 21:38:51', '2022-01-20 21:38:26', '2022-01-20 21:38:26', NULL, '2022-01-20 21:38:26', '2022-01-20 21:39:44', 0);
INSERT INTO `users` VALUES (141, '没有蜡笔的小新', '$2y$10$5n6fcdNcb9hNHpWNKnhecuxST4rDxE3Gp.FbidBOMhwk6QWDyZwSi', '没有蜡笔的小新', '', '', '', '185.200.34.110', 34371, '185.200.34.110', 34371, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/41.png', '', '', '', '2022-01-20 21:41:51', '2022-01-20 21:41:33', '2022-01-20 21:41:33', NULL, '2022-01-20 21:41:33', '2022-01-20 21:42:32', 0);
INSERT INTO `users` VALUES (142, '踏南山', '$2y$10$vJ4lw0xtwEM1uX3fAr93G.8Ml4r6rx8KrutD91diI0CZLWT7niD8e', '踏南山', '', '', '', '185.200.34.110', 45975, '185.200.34.110', 45975, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/42.png', '', '', '', '2022-01-20 21:44:47', '2022-01-20 21:44:23', '2022-01-20 21:44:22', NULL, '2022-01-20 21:44:23', '2022-01-20 21:45:23', 0);
INSERT INTO `users` VALUES (143, '于果-151', '$2y$10$thhjnxKm9nQpWwsjlwbOh.6kZUSOfFCr2KTJnsn2MlRaBpCaeIhjW', '于果-151', '', '', '', '185.200.34.110', 41467, '185.200.34.110', 41467, '账号密码注册', '', 0, 1, 0, 0, 0, 0, 0, '000/00/01/43.png', '', '', '', '2022-01-20 21:53:26', '2022-01-20 21:53:13', '2022-01-20 21:53:13', NULL, '2022-01-20 21:53:13', '2022-01-20 21:53:45', 0);

-- ----------------------------
-- Table structure for wechat_offiaccount_replies
-- ----------------------------
DROP TABLE IF EXISTS `wechat_offiaccount_replies`;
CREATE TABLE `wechat_offiaccount_replies`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则名',
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `match_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '匹配类型:0全匹配1半匹配',
  `reply_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '消息回复类型',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '回复文本内容',
  `media_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '素材ID',
  `media_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '素材类型:1图片2视频3语音4图文',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT '数据类型:0被关注回复1消息回复2关键词回复',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否开启:0关闭1开启',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL COMMENT '更新时间',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_keyword`(`keyword`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wechat_offiaccount_replies
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
