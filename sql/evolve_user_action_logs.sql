create table user_action_logs
(
    id            bigint unsigned auto_increment comment '日志 id'
        primary key,
    user_id       bigint unsigned default 0  not null comment '操作用户 id',
    action        char(20)        default '' not null comment '操作',
    message       varchar(255)    default '' not null comment '备注',
    log_able_id   int unsigned    default 0  not null comment '模型 id',
    log_able_type varchar(255)    default '' not null comment '模型',
    created_at    datetime                   not null comment '创建时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 22;

INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (1, 2, 'hide', '', 19, 'App\\Models\\Post', '2021-08-01 21:40:25');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (2, 14, 'hide', '', 32, 'App\\Models\\Post', '2021-08-02 02:07:06');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (3, 12, 'hide', '', 27, 'App\\Models\\Post', '2021-08-02 02:08:17');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (4, 35, 'hide', '', 108, 'App\\Models\\Post', '2021-08-04 20:31:56');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (5, 36, 'hide', '', 112, 'App\\Models\\Post', '2021-08-04 20:39:31');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (6, 1, 'hide', '', 31, 'App\\Models\\Thread', '2021-08-09 15:22:58');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (7, 2, 'hide', '', 63, 'App\\Models\\Post', '2021-08-09 15:28:14');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (8, 2, 'hide', '', 206, 'App\\Models\\Post', '2021-08-10 10:43:12');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (9, 16, 'hide', '', 271, 'App\\Models\\Post', '2021-08-12 15:35:31');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (10, 3, 'hide', '', 269, 'App\\Models\\Post', '2021-08-12 15:37:34');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (11, 74, 'hide', '', 273, 'App\\Models\\Post', '2021-08-13 19:56:41');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (12, 1, 'ban', '违反本网站用户协议', 74, 'App\\Models\\User', '2021-08-13 23:34:29');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (13, 1, 'normal', '', 75, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (14, 1, 'normal', '', 76, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (15, 1, 'normal', '', 77, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (16, 1, 'normal', '', 78, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (17, 1, 'normal', '', 79, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (18, 1, 'normal', '', 80, 'App\\Models\\User', '2021-08-15 01:30:49');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (19, 1, 'ban', '', 79, 'App\\Models\\User', '2021-08-15 01:33:09');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (20, 90, 'hide', '', 314, 'App\\Models\\Post', '2021-08-21 21:23:26');
INSERT INTO evolve.user_action_logs (id, user_id, action, message, log_able_id, log_able_type, created_at) VALUES (21, 1, 'hide', '', 3, 'App\\Models\\Post', '2021-10-03 21:39:33');
