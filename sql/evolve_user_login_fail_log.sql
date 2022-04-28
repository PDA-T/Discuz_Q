create table user_login_fail_log
(
    id         bigint unsigned auto_increment comment '日志 id'
        primary key,
    ip         varchar(45)     default '' not null comment 'ip 地址',
    user_id    bigint unsigned default 0  not null comment '用户 id',
    username   varchar(100)               null comment '用户名',
    count      tinyint         default 1  not null comment '错误次数',
    created_at datetime                   not null comment '创建时间',
    updated_at datetime                   not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 16;

create index user_login_fail_log_user_id_index
    on user_login_fail_log (user_id);

INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (1, '148.163.161.103', 1, 'PDA', 0, '2021-07-31 21:47:47', '2022-03-14 13:01:01');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (2, '134.195.101.21', 1, 'PDA', 0, '2021-08-02 16:23:13', '2022-03-14 13:01:01');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (3, '134.195.101.21', 35, '没有大哥', 0, '2021-08-06 15:31:17', '2021-08-06 15:31:40');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (4, '134.195.101.21', 3, 'Thread', 0, '2021-08-08 01:05:33', '2022-02-17 01:33:52');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (5, '134.195.101.21', 21, 'fangun', 0, '2021-08-09 14:00:12', '2021-08-12 15:09:35');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (6, '134.195.101.21', 16, 'yingying', 0, '2021-08-09 23:13:29', '2021-08-12 15:34:51');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (7, '134.195.101.35', 1, 'PDA', 0, '2021-08-21 21:27:31', '2022-03-14 13:01:01');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (8, '134.195.101.21', 0, '栀子沫', 2, '2021-09-30 22:22:26', '2021-09-30 22:22:29');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (9, '221.13.140.87', 1, 'PDA', 0, '2021-10-18 11:32:31', '2022-03-14 13:01:01');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (10, '221.13.140.87', 2, 'Jerome', 0, '2021-10-18 11:35:03', '2021-10-18 11:42:13');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (11, '103.172.116.151', 1, 'PDA', 0, '2021-11-28 23:02:05', '2022-03-14 13:01:01');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (12, '103.136.127.146', 1, 'PDA', 0, '2021-12-03 17:28:46', '2022-03-14 13:01:01');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (13, '134.195.101.38', 1, 'PDA', 0, '2022-01-20 01:04:12', '2022-03-14 13:01:01');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (14, '134.195.101.38', 3, 'Thread', 0, '2022-01-20 01:04:49', '2022-02-17 01:33:52');
INSERT INTO evolve.user_login_fail_log (id, ip, user_id, username, count, created_at, updated_at) VALUES (15, '43.249.39.220', 1, 'PDA', 0, '2022-03-14 13:00:49', '2022-03-14 13:01:01');
