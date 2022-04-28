create table emoji
(
    id         bigint unsigned auto_increment comment '表情 id'
        primary key,
    category   varchar(255)                not null comment '表情分类',
    url        varchar(255)                not null comment '表情地址',
    code       varchar(255)                not null comment '表情符号',
    `order`    smallint unsigned default 0 not null comment '显示顺序',
    created_at datetime                    not null comment '创建时间',
    updated_at datetime                    not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 93;

INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (1, 'qq', 'emoji/qq/kelian.gif', ':kelian:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (2, 'qq', 'emoji/qq/haqian.gif', ':haqian:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (3, 'qq', 'emoji/qq/woshou.gif', ':woshou:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (4, 'qq', 'emoji/qq/aixin.gif', ':aixin:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (5, 'qq', 'emoji/qq/zuohengheng.gif', ':zuohengheng:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (6, 'qq', 'emoji/qq/weixiao.gif', ':weixiao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (7, 'qq', 'emoji/qq/jingkong.gif', ':jingkong:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (8, 'qq', 'emoji/qq/tiaopi.gif', ':tiaopi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (9, 'qq', 'emoji/qq/touxiao.gif', ':touxiao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (10, 'qq', 'emoji/qq/youling.gif', ':youling:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (11, 'qq', 'emoji/qq/caidao.gif', ':caidao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (12, 'qq', 'emoji/qq/cahan.gif', ':cahan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (13, 'qq', 'emoji/qq/hecai.gif', ':hecai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (14, 'qq', 'emoji/qq/keai.gif', ':keai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (15, 'qq', 'emoji/qq/ciya.gif', ':ciya:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (16, 'qq', 'emoji/qq/saorao.gif', ':saorao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (17, 'qq', 'emoji/qq/jingxi.gif', ':jingxi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (18, 'qq', 'emoji/qq/ku.gif', ':ku:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (19, 'qq', 'emoji/qq/piezui.gif', ':piezui:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (20, 'qq', 'emoji/qq/se.gif', ':se:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (21, 'qq', 'emoji/qq/xia.gif', ':xia:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (22, 'qq', 'emoji/qq/yinxian.gif', ':yinxian:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (23, 'qq', 'emoji/qq/zhouma.gif', ':zhouma:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (24, 'qq', 'emoji/qq/kulou.gif', ':kulou:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (25, 'qq', 'emoji/qq/xu.gif', ':xu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (26, 'qq', 'emoji/qq/jingya.gif', ':jingya:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (27, 'qq', 'emoji/qq/doge.gif', ':doge:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (28, 'qq', 'emoji/qq/bizui.gif', ':bizui:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (29, 'qq', 'emoji/qq/yangtuo.gif', ':yangtuo:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (30, 'qq', 'emoji/qq/shouqiang.gif', ':shouqiang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (31, 'qq', 'emoji/qq/baoquan.gif', ':baoquan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (32, 'qq', 'emoji/qq/yun.gif', ':yun:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (33, 'qq', 'emoji/qq/lanqiu.gif', ':lanqiu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (34, 'qq', 'emoji/qq/zhemo.gif', ':zhemo:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (35, 'qq', 'emoji/qq/guzhang.gif', ':guzhang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (36, 'qq', 'emoji/qq/shengli.gif', ':shengli:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (37, 'qq', 'emoji/qq/zaijian.gif', ':zaijian:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (38, 'qq', 'emoji/qq/dabing.gif', ':dabing:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (39, 'qq', 'emoji/qq/deyi.gif', ':deyi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (40, 'qq', 'emoji/qq/hanxiao.gif', ':hanxiao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (41, 'qq', 'emoji/qq/kun.gif', ':kun:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (42, 'qq', 'emoji/qq/hexie.gif', ':hexie:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (43, 'qq', 'emoji/qq/daku.gif', ':daku:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (44, 'qq', 'emoji/qq/wozuimei.gif', ':wozuimei:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (45, 'qq', 'emoji/qq/xiaoku.gif', ':xiaoku:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (46, 'qq', 'emoji/qq/xigua.gif', ':xigua:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (47, 'qq', 'emoji/qq/huaixiao.gif', ':huaixiao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (48, 'qq', 'emoji/qq/liulei.gif', ':liulei:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (49, 'qq', 'emoji/qq/lenghan.gif', ':lenghan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (50, 'qq', 'emoji/qq/qiudale.gif', ':qiudale:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (51, 'qq', 'emoji/qq/zhayanjian.gif', ':zhayanjian:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (52, 'qq', 'emoji/qq/qiaoda.gif', ':qiaoda:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (53, 'qq', 'emoji/qq/baojin.gif', ':baojin:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (54, 'qq', 'emoji/qq/OK.gif', ':OK:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (55, 'qq', 'emoji/qq/xiaojiujie.gif', ':xiaojiujie:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (56, 'qq', 'emoji/qq/gouyin.gif', ':gouyin:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (57, 'qq', 'emoji/qq/youhengheng.gif', ':youhengheng:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (58, 'qq', 'emoji/qq/tuosai.gif', ':tuosai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (59, 'qq', 'emoji/qq/nanguo.gif', ':nanguo:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (60, 'qq', 'emoji/qq/quantou.gif', ':quantou:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (61, 'qq', 'emoji/qq/haixiu.gif', ':haixiu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (62, 'qq', 'emoji/qq/koubi.gif', ':koubi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (63, 'qq', 'emoji/qq/qiang.gif', ':qiang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (64, 'qq', 'emoji/qq/pijiu.gif', ':pijiu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (65, 'qq', 'emoji/qq/bishi.gif', ':bishi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (66, 'qq', 'emoji/qq/yiwen.gif', ':yiwen:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (67, 'qq', 'emoji/qq/liuhan.gif', ':liuhan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (68, 'qq', 'emoji/qq/wunai.gif', ':wunai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (69, 'qq', 'emoji/qq/aini.gif', ':aini:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (70, 'qq', 'emoji/qq/bangbangtang.gif', ':bangbangtang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (71, 'qq', 'emoji/qq/penxue.gif', ':penxue:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (72, 'qq', 'emoji/qq/haobang.gif', ':haobang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (73, 'qq', 'emoji/qq/qinqin.gif', ':qinqin:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (74, 'qq', 'emoji/qq/xiaoyanger.gif', ':xiaoyanger:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (75, 'qq', 'emoji/qq/fendou.gif', ':fendou:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (76, 'qq', 'emoji/qq/ganga.gif', ':ganga:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (77, 'qq', 'emoji/qq/shuai.gif', ':shuai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (78, 'qq', 'emoji/qq/juhua.gif', ':juhua:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (79, 'qq', 'emoji/qq/baiyan.gif', ':baiyan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (80, 'qq', 'emoji/qq/fanu.gif', ':fanu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (81, 'qq', 'emoji/qq/jie.gif', ':jie:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (82, 'qq', 'emoji/qq/chi.gif', ':chi:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (83, 'qq', 'emoji/qq/kuaikule.gif', ':kuaikule:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (84, 'qq', 'emoji/qq/zhuakuang.gif', ':zhuakuang:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (85, 'qq', 'emoji/qq/shui.gif', ':shui:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (86, 'qq', 'emoji/qq/dan.gif', ':dan:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (87, 'qq', 'emoji/qq/aoman.gif', ':aoman:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (88, 'qq', 'emoji/qq/fadai.gif', ':fadai:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (89, 'qq', 'emoji/qq/leiben.gif', ':leiben:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (90, 'qq', 'emoji/qq/tu.gif', ':tu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (91, 'qq', 'emoji/qq/weiqu.gif', ':weiqu:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
INSERT INTO evolve.emoji (id, category, url, code, `order`, created_at, updated_at) VALUES (92, 'qq', 'emoji/qq/xieyanxiao.gif', ':xieyanxiao:', 0, '2021-07-30 20:24:49', '2021-07-30 20:24:49');
