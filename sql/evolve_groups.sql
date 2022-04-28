create table `groups`
(
    id             bigint unsigned auto_increment comment '用户组 id'
        primary key,
    name           varchar(255)            default ''   not null comment '用户组名称',
    type           varchar(50)             default ''   not null comment '类型',
    color          varchar(20)             default ''   not null comment '颜色',
    icon           varchar(100)            default ''   not null comment 'icon',
    `default`      tinyint unsigned        default 0    not null comment '是否默认',
    is_display     tinyint unsigned        default 0    not null comment '是否显示在用户名后',
    is_paid        tinyint unsigned        default 0    not null comment '是否收费：0不收费，1收费',
    fee            decimal(10, 2) unsigned default 0.00 not null comment '收费金额',
    level          int unsigned            default 0    not null comment '付费用户组等级',
    days           bigint unsigned         default 0    not null comment '付费获得天数',
    scale          double(3, 1)            default 0.0  not null comment '分成比例',
    is_subordinate tinyint unsigned        default 0    not null comment '是否可以 推广下线',
    is_commission  tinyint unsigned        default 0    not null comment '是否可以 收入提成',
    description    varchar(255)            default ''   not null comment '特权描述',
    notice         varchar(255)            default ''   not null comment '须知',
    time_range     int                     default 0    not null comment '访问的时间范围(天)',
    content_range  int                     default 0    not null comment '访问的内容范围(天)'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 18;

INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (1, '管理员', '', '', '', 0, 0, 0, 0.00, 0, 0, 0, 0, 0, '', '', 0, 0);
INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (6, '待付费', '', '', '', 0, 0, 0, 0.00, 0, 0, 0, 0, 0, '', '', 0, 0);
INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (7, '游客', '', '', '', 0, 0, 0, 0.00, 0, 0, 0, 0, 0, '', '', 0, 0);
INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (8, '免费体验', '', '', '', 0, 0, 0, 0.00, 0, 0, 0, 0, 0, '', '', 3, 30);
INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (10, '普通用户', '', '', '', 1, 1, 0, 0.00, 0, 0, 0, 1, 0, '', '', 0, 0);
INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (12, '资深用户', 'groups', '', '', 0, 1, 0, 0.00, 0, 0, 1, 1, 0, '', '', 0, 0);
INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (13, '普通订阅', 'groups', '', '', 0, 1, 1, 500.00, 2, 31, 5, 1, 0, '更高的裂变推广,少量插件', '购买金额将用于升级您所在的用户组。
如果购买多次同一用户组，有效期将累加。
如果购买不同用户组，则新购买的用户组权限立即生效，在此之前的用户组有效期将叠加计算。
付费站点中，如果您的站点有效期低于付费用户组有效期，则以付费用户组有效期为准。', 0, 0);
INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (14, '高级订阅', 'groups', '', '', 0, 1, 1, 5000.00, 4, 31, 9, 1, 0, '更高的裂变推广,全部插件', '购买金额将用于升级您所在的用户组。
如果购买多次同一用户组，有效期将累加。
如果购买不同用户组，则新购买的用户组权限立即生效，在此之前的用户组有效期将叠加计算。
付费站点中，如果您的站点有效期低于付费用户组有效期，则以付费用户组有效期为准。', 0, 0);
INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (15, '黑金订阅', 'groups', '', '', 0, 1, 1, 10000.00, 5, 31, 10, 1, 0, '后台特权', '购买金额将用于升级您所在的用户组。
如果购买多次同一用户组，有效期将累加。
如果购买不同用户组，则新购买的用户组权限立即生效，在此之前的用户组有效期将叠加计算。
付费站点中，如果您的站点有效期低于付费用户组有效期，则以付费用户组有效期为准。', 0, 0);
INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (16, '基本订阅', 'groups', '', '', 0, 1, 1, 50.00, 1, 31, 3, 1, 0, '更高的裂变推广', '购买金额将用于升级您所在的用户组。
如果购买多次同一用户组，有效期将累加。
如果购买不同用户组，则新购买的用户组权限立即生效，在此之前的用户组有效期将叠加计算。
付费站点中，如果您的站点有效期低于付费用户组有效期，则以付费用户组有效期为准。', 0, 0);
INSERT INTO evolve.`groups` (id, name, type, color, icon, `default`, is_display, is_paid, fee, level, days, scale, is_subordinate, is_commission, description, notice, time_range, content_range) VALUES (17, '标准订阅', 'groups', '', '', 0, 1, 1, 3000.00, 3, 31, 0, 0, 0, '更高的裂变推广,更多插件', '购买金额将用于升级您所在的用户组。
如果购买多次同一用户组，有效期将累加。
如果购买不同用户组，则新购买的用户组权限立即生效，在此之前的用户组有效期将叠加计算。
付费站点中，如果您的站点有效期低于付费用户组有效期，则以付费用户组有效期为准。', 0, 0);
