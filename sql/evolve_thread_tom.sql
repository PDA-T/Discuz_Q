create table thread_tom
(
    id         bigint unsigned auto_increment comment '自增id'
        primary key,
    thread_id  bigint unsigned                        not null comment '帖子id',
    tom_type   varchar(50)  default ''                not null comment '帖子插件id',
    `key`      varchar(50)                            not null comment '元数据索引 $0,$1,$2 资源占位符',
    value      mediumtext                             not null comment '资源结构化数据',
    status     tinyint      default 0                 not null comment '-1：删除 0：正常',
    price_type tinyint      default 0                 not null comment '插件/组件是否部分付费',
    price_ids  varchar(255) default '{}'              not null comment '插件/组件部分付费id集合',
    created_at timestamp    default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 35;

create index thread_id_key
    on thread_tom (thread_id, tom_type, `key`, status);

create index tom_type
    on thread_tom (tom_type);

INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (1, 3, '101', '101', '{"imageIds":[1]}', 0, 0, '{}', '2021-08-01 00:44:07', '2021-08-01 00:44:31');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (2, 7, '101', '101', '{"imageIds":[2]}', 0, 0, '{}', '2021-08-01 00:52:52', '2021-08-01 00:52:52');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (3, 8, '101', '101', '{"imageIds":[4,6,7]}', 0, 0, '{}', '2021-08-01 01:03:34', '2021-08-01 01:03:34');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (4, 10, '101', '101', '{"imageIds":[11,12]}', 0, 0, '{}', '2021-08-01 12:40:17', '2021-08-01 12:41:38');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (5, 15, '101', '101', '{"imageIds":[16,15]}', 0, 0, '{}', '2021-08-02 02:18:30', '2021-08-02 02:18:30');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (6, 8, '101', '101', '{"imageIds":[4,6,7]}', 0, 0, '{}', '2021-08-02 15:14:00', '2021-08-02 15:14:00');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (7, 35, '101', '101', '{"imageIds":[18]}', 0, 0, '{}', '2021-08-03 16:39:48', '2021-08-03 16:39:48');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (8, 36, '101', '101', '{"imageIds":[19]}', 0, 0, '{}', '2021-08-03 16:42:48', '2021-09-07 21:48:29');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (9, 39, '101', '101', '{"imageIds":[20]}', 0, 0, '{}', '2021-08-03 16:51:57', '2021-08-06 15:30:48');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (10, 40, '101', '101', '{"imageIds":[21,22,23]}', 0, 0, '{}', '2021-08-04 00:19:58', '2021-08-10 23:04:32');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (11, 42, '108', '108', '{"docIds":[26]}', 0, 0, '{}', '2021-08-04 20:36:49', '2021-08-06 15:32:30');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (12, 53, '101', '101', '{"imageIds":[36,35,37]}', 0, 0, '{}', '2021-08-07 16:06:50', '2021-08-07 16:22:00');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (13, 56, '101', '101', '{"imageIds":[34]}', 0, 0, '{}', '2021-08-07 16:19:25', '2021-08-07 16:19:25');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (14, 63, '101', '101', '{"imageIds":[38,39]}', 0, 0, '{}', '2021-08-08 01:09:29', '2021-08-08 01:14:24');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (15, 76, '101', '101', '{"imageIds":[42]}', 0, 0, '{}', '2021-08-09 23:14:44', '2021-08-09 23:14:44');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (16, 81, '101', '101', '{"imageIds":[43]}', 0, 0, '{}', '2021-08-10 23:08:51', '2021-08-10 23:08:51');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (17, 88, '101', '101', '{"imageIds":[45]}', 0, 0, '{}', '2021-08-11 00:07:52', '2021-08-11 00:07:52');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (18, 96, '101', '101', '{"imageIds":[46,47]}', 0, 0, '{}', '2021-08-12 15:05:32', '2021-08-12 15:05:32');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (19, 100, '101', '101', '{"imageIds":[50,51]}', 0, 0, '{}', '2021-08-12 15:32:33', '2021-08-12 15:32:33');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (20, 108, '101', '101', '{"imageIds":[52]}', 0, 0, '{}', '2021-08-20 19:43:34', '2021-08-20 19:43:34');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (21, 119, '101', '101', '{"imageIds":[54]}', 0, 0, '{}', '2021-08-24 20:56:34', '2021-08-24 20:56:34');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (22, 121, '101', '101', '{"imageIds":[56,55,57]}', 0, 0, '{}', '2021-08-24 21:15:11', '2021-08-24 21:15:11');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (23, 125, '101', '101', '{"imageIds":[58]}', 0, 0, '{}', '2021-08-25 21:25:38', '2021-08-25 21:25:38');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (24, 128, '101', '101', '{"imageIds":[59]}', 0, 0, '{}', '2021-09-02 23:07:58', '2021-09-02 23:07:58');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (25, 130, '101', '101', '{"imageIds":[60]}', 0, 0, '{}', '2021-09-02 23:13:28', '2021-09-02 23:13:28');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (26, 131, '101', '101', '{"imageIds":[67,68,69,70,71,72]}', 0, 0, '{}', '2021-09-04 20:12:41', '2021-09-04 20:26:42');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (27, 132, '101', '101', '{"imageIds":[75,76,77,78,79,80,81,82,83]}', 0, 0, '{}', '2021-09-04 20:24:21', '2021-09-04 20:40:05');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (28, 140, '101', '101', '{"imageIds":[87]}', 0, 0, '{}', '2021-09-07 21:43:45', '2021-09-07 21:43:45');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (29, 144, '101', '101', '{"imageIds":[88]}', 0, 0, '{}', '2021-09-15 21:55:39', '2021-09-15 21:55:39');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (30, 146, '101', '101', '{"imageIds":[89,90]}', 0, 0, '{}', '2021-09-21 21:17:19', '2021-09-21 21:17:19');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (31, 147, '101', '101', '{"imageIds":[91]}', 0, 0, '{}', '2021-09-21 21:20:29', '2021-09-21 21:20:29');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (32, 162, '101', '101', '{"imageIds":[92]}', 0, 0, '{}', '2021-10-18 22:08:31', '2021-10-18 22:08:31');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (33, 176, '101', '101', '{"imageIds":[93]}', 0, 1, '{}', '2022-01-20 21:39:44', '2022-01-20 21:39:44');
INSERT INTO evolve.thread_tom (id, thread_id, tom_type, `key`, value, status, price_type, price_ids, created_at, updated_at) VALUES (34, 177, '101', '101', '{"imageIds":[94]}', 0, 1, '{}', '2022-01-20 21:42:32', '2022-01-20 21:42:32');
