create table post_goods
(
    id             bigint unsigned auto_increment comment '商品 id'
        primary key,
    user_id        bigint unsigned  default 0  not null comment '用户 id',
    post_id        bigint unsigned  default 0  not null comment '帖子 id',
    platform_id    varchar(255)     default '' not null comment '平台商品 id',
    title          varchar(255)     default '' not null comment '商品标题',
    price          varchar(255)     default '' not null comment '价格',
    image_path     varchar(255)     default '' not null comment '商品封面图',
    type           tinyint unsigned default 0  not null comment '商品来源:0淘宝 1天猫 2京东 等',
    status         tinyint unsigned default 0  not null comment '商品状态:0正常 1失效/下架',
    ready_content  text                        not null comment '预解析内容',
    detail_content text                        not null comment '解析详情页地址',
    created_at     datetime                    not null comment '创建时间',
    updated_at     datetime                    not null comment '更新时间',
    deleted_at     datetime                    null comment '删除时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 9;

create index idx_platform
    on post_goods (platform_id);

create index idx_post
    on post_goods (post_id);

create index idx_user
    on post_goods (user_id);

INSERT INTO evolve.post_goods (id, user_id, post_id, platform_id, title, price, image_path, type, status, ready_content, detail_content, created_at, updated_at, deleted_at) VALUES (1, 96, 0, '100016034372', 'Apple iPhone 12 Pro Max (A2412) 256GB 海蓝色 支持移动联通电信5G 双卡双待手机', '10099.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/122505/19/15070/68848/5f861494Ebe330db5/24bc162f493ec940.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100016034372.html', 'https://item.m.jd.com/product/100016034372.html', '2021-08-25 21:27:21', '2021-08-25 21:27:21', null);
INSERT INTO evolve.post_goods (id, user_id, post_id, platform_id, title, price, image_path, type, status, ready_content, detail_content, created_at, updated_at, deleted_at) VALUES (2, 3, 0, '100012514359', '万魔 1MORE ColorBuds 2猫眼时尚豆真无线蓝牙入耳式无线耳机运动游戏主动降噪耳机 ES602 曜夜黑', '499.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/197627/31/14006/113218/616ec627Eb3d2f568/dd74716c4bb4754b.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100012514359.html#crumb-wrap', 'https://item.m.jd.com/product/100012514359.html#crumb-wrap', '2021-10-26 13:58:25', '2021-10-26 13:58:25', null);
INSERT INTO evolve.post_goods (id, user_id, post_id, platform_id, title, price, image_path, type, status, ready_content, detail_content, created_at, updated_at, deleted_at) VALUES (3, 3, 0, '100027425462', '铁三角 SQ1TW BK真无线蓝牙耳机 音乐耳机 迷你运动耳机 手机耳机 TWS苹果安卓手机', '699.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/205465/27/11704/100816/616e9588E875f5923/512296ed2602964b.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100027425462.html', 'https://item.m.jd.com/product/100027425462.html', '2021-10-26 14:01:45', '2021-10-26 14:01:45', null);
INSERT INTO evolve.post_goods (id, user_id, post_id, platform_id, title, price, image_path, type, status, ready_content, detail_content, created_at, updated_at, deleted_at) VALUES (4, 3, 0, '100013332048', '万魔 1MORE ColorBuds 时尚豆真无线蓝牙入耳式无线耳机运动游戏降噪耳机 ESS6001T 蜂鸟绿', '449.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/172898/28/26544/86851/616ec717E9f62aa42/e0a22d55841adffe.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100013332048.html
https://item.jd.com/100027425462.html', 'https://item.m.jd.com/product/100013332048.html', '2021-10-26 14:02:23', '2021-10-26 14:02:23', null);
INSERT INTO evolve.post_goods (id, user_id, post_id, platform_id, title, price, image_path, type, status, ready_content, detail_content, created_at, updated_at, deleted_at) VALUES (5, 3, 0, '100027425462', '铁三角 SQ1TW BK真无线蓝牙耳机 音乐耳机 迷你运动耳机 手机耳机 TWS苹果安卓手机', '699.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/205465/27/11704/100816/616e9588E875f5923/512296ed2602964b.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100027425462.html

https://item.jd.com/100013332048.html', 'https://item.m.jd.com/product/100027425462.html', '2021-10-26 14:03:29', '2021-10-26 14:03:29', null);
INSERT INTO evolve.post_goods (id, user_id, post_id, platform_id, title, price, image_path, type, status, ready_content, detail_content, created_at, updated_at, deleted_at) VALUES (6, 3, 0, '100017275138', '爱国者（aigo）YOGO M4 PRO白色 游戏鞋盒电脑机箱 360冷排/E-ATX主板/侧拉式钢化玻璃/前板网孔强力散热', '299.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/169780/18/11973/124100/604b1e0bEe5b3f6bb/7d78ee2ec3e64d44.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100017275138.html', 'https://item.m.jd.com/product/100017275138.html', '2022-02-06 19:38:32', '2022-02-06 19:38:32', null);
INSERT INTO evolve.post_goods (id, user_id, post_id, platform_id, title, price, image_path, type, status, ready_content, detail_content, created_at, updated_at, deleted_at) VALUES (7, 3, 0, '100017275138', '爱国者（aigo）YOGO M4 PRO白色 游戏鞋盒电脑机箱 360冷排/E-ATX主板/侧拉式钢化玻璃/前板网孔强力散热', '299.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/169780/18/11973/124100/604b1e0bEe5b3f6bb/7d78ee2ec3e64d44.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100017275138.html https://item.jd.com/100017275138.html', 'https://item.m.jd.com/product/100017275138.html', '2022-02-06 19:39:15', '2022-02-06 19:39:15', null);
INSERT INTO evolve.post_goods (id, user_id, post_id, platform_id, title, price, image_path, type, status, ready_content, detail_content, created_at, updated_at, deleted_at) VALUES (8, 3, 0, '100017275138', '爱国者（aigo）YOGO M4 PRO白色 游戏鞋盒电脑机箱 360冷排/E-ATX主板/侧拉式钢化玻璃/前板网孔强力散热', '299.00', 'm.360buyimg.com/mobilecms/s750x750_jfs/t1/169780/18/11973/124100/604b1e0bEe5b3f6bb/7d78ee2ec3e64d44.jpg!q80.dpg', 2, 0, 'https://item.jd.com/100017275138.html https://item.jd.com/100005578866.html', 'https://item.m.jd.com/product/100017275138.html', '2022-02-06 19:39:34', '2022-02-06 19:39:34', null);
