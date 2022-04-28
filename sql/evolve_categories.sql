create table categories
(
    id           bigint unsigned auto_increment comment '分类 id'
        primary key,
    name         varchar(255)      default '' not null comment '分类名称',
    description  text                         not null comment '分类描述',
    icon         varchar(255)      default '' not null comment '分类图标',
    sort         smallint unsigned default 0  not null comment '显示顺序',
    property     tinyint unsigned  default 0  not null comment '属性：0 正常 1 首页展示',
    thread_count int unsigned      default 0  not null comment '主题数',
    moderators   varchar(100)                 null comment '分类版主',
    ip           varchar(45)       default '' not null comment 'ip 地址',
    parentid     bigint unsigned   default 0  not null comment '所属一级分类的ID',
    created_at   datetime                     not null comment '创建时间',
    updated_at   datetime                     not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 47;

INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (1, '游戏电竞', '这里是玩家集结地', '', 1, 0, 137, null, '134.195.101.21', 0, '2021-07-30 20:24:49', '2022-01-20 21:53:45');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (3, '计算机', '程序员们的成功心得', '', 8, 0, 15, null, '134.195.101.21', 0, '2021-08-01 00:13:40', '2021-10-22 13:27:41');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (4, 'LOL', '瓦罗兰大陆昂扬不灭', '', 0, 0, 69, null, '134.195.101.21', 1, '2021-08-01 14:33:12', '2022-01-20 21:53:45');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (5, 'CSGO', 'rush B', '', 1, 0, 7, null, '134.195.101.21', 1, '2021-08-01 14:34:25', '2021-08-20 19:47:03');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (7, '永劫无间', '先秒大佛大佛一丝', '', 2, 0, 6, null, '134.195.101.21', 1, '2021-08-02 11:05:53', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (8, '绝地求生', '给我98K', '', 3, 0, 6, null, '134.195.101.21', 1, '2021-08-02 11:07:11', '2021-09-07 21:48:29');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (10, '王者荣耀', '心平气和', '', 4, 0, 4, null, '134.195.101.21', 1, '2021-08-02 11:09:24', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (11, '和平精英', '看我皮肤', '', 5, 0, 4, null, '134.195.101.21', 1, '2021-08-02 11:11:17', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (13, '我的世界', '最吃配置的游戏', '', 6, 0, 4, null, '134.195.101.21', 1, '2021-08-02 11:13:41', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (14, 'CF', '十年老兵回归战场', '', 7, 0, 6, null, '134.195.101.21', 1, '2021-08-02 11:15:02', '2021-12-16 14:19:34');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (15, '主机游戏', '3A制作', '', 8, 0, 5, null, '134.195.101.21', 1, '2021-08-02 11:16:17', '2022-01-16 18:38:21');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (18, '无类帖', '', '', 0, 0, 1, null, '134.195.101.21', 0, '2021-08-02 11:22:56', '2021-09-07 21:51:20');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (19, '给她爱', '谁还没有给她爱五', '', 9, 0, 7, null, '134.195.101.21', 1, '2021-08-02 11:28:05', '2021-10-18 21:52:00');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (21, '动漫番剧', '二次元yyds', '', 2, 0, 1, null, '134.195.101.21', 0, '2021-08-02 11:29:57', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (22, '七龙珠', '狗空', '', 0, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:30:51', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (23, '海贼王', '我是要成为海贼王的男人', '', 1, 0, 1, null, '134.195.101.21', 21, '2021-08-02 11:31:23', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (24, '火影忍者', '血轮眼开', '', 2, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:32:23', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (25, '鬼灭之刃', '猪头靓仔', '', 3, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:34:25', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (26, '咒术回战', '眼罩靓仔', '', 4, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:35:12', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (27, '工作细胞', '可爱的血小板', '', 5, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:35:43', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (28, '小林家的龙奴仆', '谁不想家里有个龙女仆呢', '', 6, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:36:25', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (29, 'JOJO的奇妙冒险', '乌拉乌拉乌拉', '', 7, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:39:10', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (30, '终末的女武神', '吕布奉先才是人类最强', '', 8, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:41:23', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (31, '一拳超人', '啊嘞', '', 9, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:42:22', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (32, '进军的巨人', '啊啊啊', '', 10, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:43:10', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (33, '东京喰种', '饿了', '', 11, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:43:34', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (34, '瑞克和莫迪', '我们去探险吧', '', 12, 0, 0, null, '134.195.101.21', 21, '2021-08-02 11:45:50', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (35, '生活美食', '生活还是多姿多彩的', '', 3, 0, 2, null, '134.195.101.21', 0, '2021-08-02 11:47:34', '2021-08-13 15:55:10');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (36, '知识科普', '知识是最大的武器', '', 4, 0, 1, null, '134.195.101.21', 0, '2021-08-02 11:49:27', '2021-08-20 19:54:08');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (37, '娱乐八卦', 'CP什么CP在哪呢CP', '', 5, 0, 2, null, '134.195.101.21', 0, '2021-08-02 11:50:45', '2021-12-16 16:03:56');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (38, '时尚潮流', '我最美', '', 6, 0, 0, null, '134.195.101.21', 0, '2021-08-02 11:51:18', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (39, '科技工业', '科技才能增强实力', '', 7, 0, 0, null, '134.195.101.21', 0, '2021-08-02 11:54:38', '2021-08-12 15:15:22');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (41, '荒野大镖客', '', '', 10, 0, 4, null, '134.195.101.21', 1, '2021-08-02 15:24:35', '2021-08-22 19:28:54');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (42, '方舟生存进化', '', '', 11, 0, 5, null, '134.195.101.21', 1, '2021-08-02 15:25:22', '2021-09-07 21:39:49');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (43, '怪物猎人系列', '', '', 12, 0, 5, null, '134.195.101.21', 1, '2021-08-06 10:25:16', '2021-10-18 22:08:31');
INSERT INTO evolve.categories (id, name, description, icon, sort, property, thread_count, moderators, ip, parentid, created_at, updated_at) VALUES (44, '赛博朋克', '', '', 13, 0, 5, null, '134.195.101.21', 1, '2021-08-06 10:25:30', '2022-01-20 21:34:31');
