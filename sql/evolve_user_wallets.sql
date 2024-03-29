create table user_wallets
(
    user_id          bigint unsigned            not null comment '钱包所属人 id'
        primary key,
    available_amount decimal(10, 2) unsigned    not null comment '可用金额',
    freeze_amount    decimal(10, 2) unsigned    not null comment '冻结金额',
    wallet_status    tinyint unsigned default 0 not null comment '钱包状态:0正常，1冻结提现',
    created_at       datetime                   not null comment '创建时间',
    updated_at       datetime                   not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (1, 10.00, 0.00, 0, '2021-07-30 20:24:49', '2021-08-21 21:32:27');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (2, 6666.00, 0.00, 0, '2021-07-31 21:44:17', '2021-10-19 10:31:52');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (3, 0.00, 0.00, 0, '2021-08-01 00:22:19', '2022-01-20 21:27:11');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (4, 0.00, 0.00, 0, '2021-08-01 00:41:31', '2021-08-01 00:41:31');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (5, 0.00, 0.00, 0, '2021-08-01 00:46:23', '2021-08-01 00:46:23');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (6, 0.00, 0.00, 0, '2021-08-01 00:49:35', '2021-08-01 00:49:35');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (7, 0.00, 0.00, 0, '2021-08-01 00:57:35', '2021-08-01 00:57:35');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (8, 0.00, 0.00, 0, '2021-08-01 01:14:34', '2021-08-01 01:14:34');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (9, 0.00, 0.00, 0, '2021-08-01 01:35:04', '2021-08-01 01:35:04');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (10, 0.00, 0.00, 0, '2021-08-01 14:05:13', '2021-08-01 14:05:13');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (11, 0.00, 0.00, 0, '2021-08-01 14:07:34', '2021-08-01 14:07:34');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (12, 0.00, 0.00, 0, '2021-08-02 01:51:41', '2021-08-02 01:51:41');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (13, 0.00, 0.00, 0, '2021-08-02 02:04:04', '2021-08-02 02:04:04');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (14, 0.00, 0.00, 0, '2021-08-02 02:06:12', '2021-08-02 02:06:12');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (15, 0.00, 0.00, 0, '2021-08-02 02:14:07', '2021-08-02 02:14:07');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (16, 0.00, 0.00, 0, '2021-08-02 14:35:57', '2021-08-02 14:35:57');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (17, 0.00, 0.00, 0, '2021-08-02 14:59:51', '2021-08-02 14:59:51');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (18, 0.00, 0.00, 0, '2021-08-02 15:18:39', '2021-08-02 15:18:39');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (19, 0.00, 0.00, 0, '2021-08-02 15:20:55', '2021-08-02 15:20:55');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (20, 0.00, 0.00, 0, '2021-08-02 15:24:42', '2021-08-02 15:24:42');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (21, 0.00, 0.00, 0, '2021-08-02 15:32:08', '2021-08-02 15:32:08');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (22, 0.00, 0.00, 0, '2021-08-02 15:35:58', '2021-08-02 15:35:58');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (23, 0.00, 0.00, 0, '2021-08-02 16:29:19', '2021-08-02 16:29:19');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (24, 0.00, 0.00, 0, '2021-08-02 16:31:53', '2021-08-02 16:31:53');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (25, 0.00, 0.00, 0, '2021-08-02 16:37:05', '2021-08-02 16:37:05');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (26, 0.00, 0.00, 0, '2021-08-02 20:27:27', '2021-08-02 20:27:27');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (27, 0.00, 0.00, 0, '2021-08-02 20:37:01', '2021-08-02 20:37:01');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (28, 0.00, 0.00, 0, '2021-08-03 16:25:58', '2021-08-03 16:25:58');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (29, 0.00, 0.00, 0, '2021-08-03 16:33:06', '2021-08-03 16:33:06');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (30, 0.00, 0.00, 0, '2021-08-03 16:36:04', '2021-08-03 16:36:04');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (31, 0.00, 0.00, 0, '2021-08-03 16:37:43', '2021-08-03 16:37:43');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (32, 0.00, 0.00, 0, '2021-08-03 16:49:58', '2021-08-03 16:49:58');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (33, 0.00, 0.00, 0, '2021-08-03 16:53:31', '2021-08-03 16:53:31');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (34, 0.00, 0.00, 0, '2021-08-04 18:52:20', '2021-08-04 18:52:20');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (35, 0.00, 0.00, 0, '2021-08-04 20:31:11', '2021-08-04 20:31:11');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (36, 0.00, 0.00, 0, '2021-08-04 20:38:37', '2021-08-04 20:38:37');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (37, 0.00, 0.00, 0, '2021-08-06 12:45:56', '2021-08-06 12:45:56');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (38, 0.00, 0.00, 0, '2021-08-06 15:14:26', '2021-08-06 15:14:26');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (39, 0.00, 0.00, 0, '2021-08-06 15:15:40', '2021-08-06 15:15:40');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (40, 0.00, 0.00, 0, '2021-08-06 15:19:17', '2021-08-06 15:19:17');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (41, 0.00, 0.00, 0, '2021-08-07 16:05:02', '2021-08-07 16:05:02');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (42, 0.00, 0.00, 0, '2021-08-07 16:07:46', '2021-08-07 16:07:46');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (43, 0.00, 0.00, 0, '2021-08-07 16:10:46', '2021-08-07 16:10:46');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (44, 0.00, 0.00, 0, '2021-08-07 16:16:13', '2021-08-07 16:16:13');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (45, 0.00, 0.00, 0, '2021-08-07 16:30:21', '2021-08-07 16:30:21');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (46, 0.00, 0.00, 0, '2021-08-09 13:48:13', '2021-08-09 13:48:13');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (47, 0.00, 0.00, 0, '2021-08-09 13:49:51', '2021-08-09 13:49:51');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (48, 0.00, 0.00, 0, '2021-08-09 13:51:48', '2021-08-09 13:51:48');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (49, 0.00, 0.00, 0, '2021-08-09 13:53:18', '2021-08-09 13:53:18');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (50, 0.00, 0.00, 0, '2021-08-09 17:26:11', '2021-08-09 17:26:11');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (51, 0.00, 0.00, 0, '2021-08-09 17:48:41', '2021-08-09 17:48:41');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (52, 0.00, 0.00, 0, '2021-08-09 17:50:32', '2021-08-09 17:50:32');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (53, 0.00, 0.00, 0, '2021-08-09 17:52:37', '2021-08-09 17:52:37');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (54, 0.00, 0.00, 0, '2021-08-09 17:53:39', '2021-08-09 17:53:39');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (55, 0.00, 0.00, 0, '2021-08-09 17:55:22', '2021-08-09 17:55:22');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (56, 0.00, 0.00, 0, '2021-08-09 18:01:36', '2021-08-09 18:01:36');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (57, 0.00, 0.00, 0, '2021-08-09 18:05:24', '2021-08-09 18:05:24');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (58, 0.00, 0.00, 0, '2021-08-10 22:53:04', '2021-08-10 22:53:04');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (59, 0.00, 0.00, 0, '2021-08-10 23:00:51', '2021-08-10 23:00:51');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (60, 0.00, 0.00, 0, '2021-08-10 23:07:13', '2021-08-10 23:07:13');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (61, 0.00, 0.00, 0, '2021-08-10 23:09:32', '2021-08-10 23:09:32');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (62, 0.00, 0.00, 0, '2021-08-10 23:55:15', '2021-08-10 23:55:15');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (63, 0.00, 0.00, 0, '2021-08-10 23:58:01', '2021-08-10 23:58:01');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (64, 0.00, 0.00, 0, '2021-08-11 00:00:35', '2021-08-11 00:00:35');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (65, 0.00, 0.00, 0, '2021-08-11 00:04:58', '2021-08-11 00:04:58');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (66, 0.00, 0.00, 0, '2021-08-11 00:07:15', '2021-08-11 00:07:15');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (67, 0.00, 0.00, 0, '2021-08-12 14:49:26', '2021-08-12 14:49:26');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (68, 0.00, 0.00, 0, '2021-08-12 14:52:06', '2021-08-12 14:52:06');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (69, 0.00, 0.00, 0, '2021-08-12 14:57:16', '2021-08-12 14:57:16');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (70, 0.00, 0.00, 0, '2021-08-12 15:00:13', '2021-08-12 15:00:13');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (71, 0.00, 0.00, 0, '2021-08-12 15:04:23', '2021-08-12 15:04:23');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (72, 0.00, 0.00, 0, '2021-08-12 15:06:16', '2021-08-12 15:06:16');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (73, 0.00, 0.00, 0, '2021-08-12 15:12:58', '2021-08-12 15:12:58');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (74, 0.00, 0.00, 0, '2021-08-12 15:18:58', '2021-08-12 15:18:58');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (75, 0.00, 0.00, 0, '2021-08-14 15:30:40', '2021-08-14 15:30:40');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (76, 0.00, 0.00, 0, '2021-08-14 15:31:42', '2021-08-14 15:31:42');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (77, 0.00, 0.00, 0, '2021-08-14 15:32:10', '2021-08-14 15:32:10');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (78, 0.00, 0.00, 0, '2021-08-14 15:32:45', '2021-08-14 15:32:45');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (79, 0.00, 0.00, 0, '2021-08-14 15:34:19', '2021-08-14 15:34:19');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (80, 0.00, 0.00, 0, '2021-08-14 15:35:17', '2021-08-14 15:35:17');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (81, 0.00, 0.00, 0, '2021-08-20 19:33:52', '2021-08-20 19:33:52');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (82, 0.00, 0.00, 0, '2021-08-20 19:35:07', '2021-08-20 19:35:07');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (83, 0.00, 0.00, 0, '2021-08-20 19:37:57', '2021-08-20 19:37:57');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (84, 0.00, 0.00, 0, '2021-08-20 19:42:34', '2021-08-20 19:42:34');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (85, 0.00, 0.00, 0, '2021-08-20 19:46:07', '2021-08-20 19:46:07');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (86, 0.00, 0.00, 0, '2021-08-20 19:50:42', '2021-08-20 19:50:42');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (87, 0.00, 0.00, 0, '2021-08-20 19:55:45', '2021-08-20 19:55:45');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (88, 0.00, 0.00, 0, '2021-08-21 21:05:33', '2021-08-21 21:05:33');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (89, 0.00, 0.00, 0, '2021-08-21 21:13:59', '2021-08-21 21:13:59');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (90, 0.00, 0.00, 0, '2021-08-21 21:20:27', '2021-08-21 21:20:27');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (91, 0.00, 0.00, 0, '2021-08-22 19:25:13', '2021-08-22 19:25:13');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (92, 0.00, 0.00, 0, '2021-08-22 19:28:21', '2021-08-22 19:28:21');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (93, 0.00, 0.00, 0, '2021-08-24 20:55:43', '2021-08-24 20:55:43');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (94, 0.00, 0.00, 0, '2021-08-24 20:58:21', '2021-08-24 20:58:21');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (95, 0.00, 0.00, 0, '2021-08-25 21:22:52', '2021-08-25 21:22:52');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (96, 0.00, 0.00, 0, '2021-08-25 21:24:16', '2021-08-25 21:24:16');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (97, 0.00, 0.00, 0, '2021-09-01 23:05:39', '2021-09-01 23:05:39');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (98, 0.00, 0.00, 0, '2021-09-01 23:07:04', '2021-09-01 23:07:04');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (99, 0.00, 0.00, 0, '2021-09-02 23:07:11', '2021-09-02 23:07:11');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (100, 0.00, 0.00, 0, '2021-09-02 23:09:24', '2021-09-02 23:09:24');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (101, 0.00, 0.00, 0, '2021-09-02 23:12:43', '2021-09-02 23:12:43');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (102, 0.00, 0.00, 0, '2021-09-04 20:54:06', '2021-09-04 20:54:06');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (103, 0.00, 0.00, 0, '2021-09-04 20:56:46', '2021-09-04 20:56:46');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (104, 0.00, 0.00, 0, '2021-09-07 21:34:15', '2021-09-07 21:34:15');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (105, 0.00, 0.00, 0, '2021-09-07 21:36:21', '2021-09-07 21:36:21');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (106, 0.00, 0.00, 0, '2021-09-07 21:39:12', '2021-09-07 21:39:12');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (107, 0.00, 0.00, 0, '2021-09-07 21:42:44', '2021-09-07 21:42:44');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (108, 0.00, 0.00, 0, '2021-09-07 21:52:26', '2021-09-07 21:52:26');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (109, 0.00, 0.00, 0, '2021-09-11 14:12:09', '2021-09-11 14:12:09');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (110, 0.00, 0.00, 0, '2021-09-15 21:46:49', '2021-09-15 21:46:49');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (111, 0.00, 0.00, 0, '2021-09-15 21:53:36', '2021-09-15 21:53:36');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (112, 0.00, 0.00, 0, '2021-09-21 21:16:16', '2021-09-21 21:16:16');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (113, 0.00, 0.00, 0, '2021-09-21 21:19:11', '2021-09-21 21:19:11');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (114, 0.00, 0.00, 0, '2021-09-21 21:22:29', '2021-09-21 21:22:29');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (115, 0.00, 0.00, 0, '2021-09-30 22:20:03', '2021-09-30 22:20:03');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (116, 0.00, 0.00, 0, '2021-09-30 22:26:10', '2021-09-30 22:26:10');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (117, 0.00, 0.00, 0, '2021-10-03 21:21:55', '2021-10-03 21:21:55');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (118, 0.00, 0.00, 0, '2021-10-03 21:22:58', '2021-10-03 21:22:58');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (119, 0.00, 0.00, 0, '2021-10-03 21:24:52', '2021-10-03 21:24:52');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (120, 0.00, 0.00, 0, '2021-10-03 21:28:11', '2021-10-03 21:28:11');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (121, 0.00, 0.00, 0, '2021-10-18 09:19:50', '2021-10-18 09:19:50');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (122, 0.00, 0.00, 0, '2021-10-18 21:43:41', '2021-10-18 21:43:41');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (123, 0.00, 0.00, 0, '2021-10-18 21:51:13', '2021-10-18 21:51:13');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (124, 0.00, 0.00, 0, '2021-10-18 21:54:33', '2021-10-18 21:54:33');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (125, 0.00, 0.00, 0, '2021-10-18 21:57:50', '2021-10-18 21:57:50');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (126, 0.00, 0.00, 0, '2021-10-18 22:00:30', '2021-10-18 22:00:30');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (127, 0.00, 0.00, 0, '2021-10-18 22:07:02', '2021-10-18 22:07:02');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (128, 0.00, 0.00, 0, '2021-10-22 13:48:21', '2021-10-22 13:48:21');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (129, 0.00, 0.00, 0, '2021-11-06 21:30:01', '2021-11-06 21:30:01');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (130, 0.00, 0.00, 0, '2021-11-06 21:35:32', '2021-11-06 21:35:32');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (131, 0.00, 0.00, 0, '2021-11-07 19:51:24', '2021-11-07 19:51:24');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (132, 0.00, 0.00, 0, '2021-12-16 14:11:15', '2021-12-16 14:11:15');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (133, 0.00, 0.00, 0, '2021-12-16 14:14:33', '2021-12-16 14:14:33');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (134, 0.00, 0.00, 0, '2021-12-16 14:18:39', '2021-12-16 14:18:39');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (135, 0.00, 0.00, 0, '2021-12-16 14:20:01', '2021-12-16 14:20:01');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (136, 0.00, 0.00, 0, '2021-12-17 22:50:59', '2021-12-17 22:50:59');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (137, 0.00, 0.00, 0, '2022-01-15 15:01:48', '2022-01-15 15:01:48');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (138, 0.00, 0.00, 0, '2022-01-20 21:33:15', '2022-01-20 21:33:15');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (139, 0.00, 0.00, 0, '2022-01-20 21:35:46', '2022-01-20 21:35:46');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (140, 0.00, 0.00, 0, '2022-01-20 21:38:26', '2022-01-20 21:38:26');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (141, 0.00, 0.00, 0, '2022-01-20 21:41:33', '2022-01-20 21:41:33');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (142, 0.00, 0.00, 0, '2022-01-20 21:44:23', '2022-01-20 21:44:23');
INSERT INTO evolve.user_wallets (user_id, available_amount, freeze_amount, wallet_status, created_at, updated_at) VALUES (143, 0.00, 0.00, 0, '2022-01-20 21:53:13', '2022-01-20 21:53:13');
