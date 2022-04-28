create table thread_tag
(
    id         bigint unsigned auto_increment comment '自增id'
        primary key,
    thread_id  bigint unsigned                     not null comment '帖子id',
    tag        varchar(20)                         not null comment '标签 TEXT/IMAGE/AUDIO/VIDEO/QA/GOODS...',
    created_at timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 269;

create index thread_id_tag
    on thread_tag (thread_id, tag);

INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (1, 1, '100', '2021-08-01 00:39:43', '2021-08-01 00:39:43');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (2, 2, '100', '2021-08-01 00:42:35', '2021-08-01 00:42:35');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (4, 3, '101', '2021-08-01 00:44:31', '2021-08-01 00:44:31');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (5, 4, '100', '2021-08-01 00:47:16', '2021-08-01 00:47:16');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (7, 5, '100', '2021-08-01 00:48:01', '2021-08-01 00:48:01');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (8, 6, '100', '2021-08-01 00:51:26', '2021-08-01 00:51:26');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (9, 7, '100', '2021-08-01 00:52:52', '2021-08-01 00:52:52');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (10, 7, '101', '2021-08-01 00:52:52', '2021-08-01 00:52:52');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (14, 10, '100', '2021-08-01 12:41:38', '2021-08-01 12:41:38');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (15, 10, '101', '2021-08-01 12:41:38', '2021-08-01 12:41:38');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (20, 15, '100', '2021-08-02 02:18:30', '2021-08-02 02:18:30');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (21, 15, '101', '2021-08-02 02:18:30', '2021-08-02 02:18:30');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (22, 16, '100', '2021-08-02 11:25:24', '2021-08-02 11:25:24');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (23, 17, '100', '2021-08-02 14:37:28', '2021-08-02 14:37:28');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (24, 18, '100', '2021-08-02 15:00:54', '2021-08-02 15:00:54');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (25, 13, '100', '2021-08-02 15:01:57', '2021-08-02 15:01:57');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (26, 14, '100', '2021-08-02 15:02:52', '2021-08-02 15:02:52');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (27, 11, '100', '2021-08-02 15:10:53', '2021-08-02 15:10:53');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (29, 9, '100', '2021-08-02 15:13:25', '2021-08-02 15:13:25');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (30, 8, '101', '2021-08-02 15:14:00', '2021-08-02 15:14:00');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (31, 19, '100', '2021-08-02 15:20:13', '2021-08-02 15:20:13');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (32, 20, '100', '2021-08-02 15:22:13', '2021-08-02 15:22:13');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (33, 21, '100', '2021-08-02 15:27:36', '2021-08-02 15:27:36');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (34, 22, '100', '2021-08-02 15:34:28', '2021-08-02 15:34:28');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (35, 12, '100', '2021-08-02 15:40:36', '2021-08-02 15:40:36');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (36, 23, '100', '2021-08-02 16:30:09', '2021-08-02 16:30:09');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (37, 24, '100', '2021-08-02 16:32:29', '2021-08-02 16:32:29');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (41, 25, '100', '2021-08-02 16:39:30', '2021-08-02 16:39:30');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (42, 26, '100', '2021-08-02 16:50:12', '2021-08-02 16:50:12');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (43, 27, '100', '2021-08-02 20:29:10', '2021-08-02 20:29:10');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (44, 28, '100', '2021-08-02 20:34:08', '2021-08-02 20:34:08');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (45, 29, '100', '2021-08-02 20:40:11', '2021-08-02 20:40:11');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (47, 30, '100', '2021-08-02 20:50:40', '2021-08-02 20:50:40');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (49, 31, '100', '2021-08-03 16:25:29', '2021-08-03 16:25:29');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (50, 32, '100', '2021-08-03 16:27:16', '2021-08-03 16:27:16');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (51, 33, '100', '2021-08-03 16:31:13', '2021-08-03 16:31:13');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (52, 34, '100', '2021-08-03 16:34:40', '2021-08-03 16:34:40');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (53, 35, '100', '2021-08-03 16:39:48', '2021-08-03 16:39:48');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (54, 35, '101', '2021-08-03 16:39:48', '2021-08-03 16:39:48');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (56, 37, '100', '2021-08-03 16:46:15', '2021-08-03 16:46:15');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (64, 41, '100', '2021-08-04 18:55:03', '2021-08-04 18:55:03');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (67, 43, '100', '2021-08-04 20:43:51', '2021-08-04 20:43:51');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (68, 44, '100', '2021-08-04 20:52:11', '2021-08-04 20:52:11');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (69, 45, '100', '2021-08-06 15:14:56', '2021-08-06 15:14:56');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (70, 46, '100', '2021-08-06 15:17:33', '2021-08-06 15:17:33');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (71, 47, '100', '2021-08-06 15:21:48', '2021-08-06 15:21:48');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (72, 48, '100', '2021-08-06 15:22:46', '2021-08-06 15:22:46');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (73, 49, '100', '2021-08-06 15:26:45', '2021-08-06 15:26:45');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (74, 39, '100', '2021-08-06 15:30:48', '2021-08-06 15:30:48');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (75, 39, '101', '2021-08-06 15:30:48', '2021-08-06 15:30:48');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (76, 42, '100', '2021-08-06 15:32:30', '2021-08-06 15:32:30');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (77, 42, '108', '2021-08-06 15:32:30', '2021-08-06 15:32:30');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (78, 38, '100', '2021-08-06 15:33:43', '2021-08-06 15:33:43');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (80, 50, '100', '2021-08-06 15:47:10', '2021-08-06 15:47:10');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (81, 51, '100', '2021-08-06 22:42:57', '2021-08-06 22:42:57');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (82, 52, '100', '2021-08-06 22:47:19', '2021-08-06 22:47:19');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (85, 54, '100', '2021-08-07 16:09:50', '2021-08-07 16:09:50');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (86, 55, '100', '2021-08-07 16:13:49', '2021-08-07 16:13:49');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (87, 56, '100', '2021-08-07 16:19:25', '2021-08-07 16:19:25');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (88, 56, '101', '2021-08-07 16:19:25', '2021-08-07 16:19:25');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (89, 53, '100', '2021-08-07 16:22:00', '2021-08-07 16:22:00');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (90, 53, '101', '2021-08-07 16:22:00', '2021-08-07 16:22:00');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (91, 57, '100', '2021-08-07 16:31:27', '2021-08-07 16:31:27');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (92, 58, '100', '2021-08-07 16:37:29', '2021-08-07 16:37:29');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (94, 59, '100', '2021-08-07 16:40:43', '2021-08-07 16:40:43');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (97, 62, '100', '2021-08-07 16:44:39', '2021-08-07 16:44:39');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (98, 61, '100', '2021-08-07 16:45:26', '2021-08-07 16:45:26');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (99, 60, '100', '2021-08-07 16:46:23', '2021-08-07 16:46:23');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (108, 63, '100', '2021-08-08 01:14:24', '2021-08-08 01:14:24');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (109, 63, '101', '2021-08-08 01:14:24', '2021-08-08 01:14:24');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (110, 64, '100', '2021-08-09 13:48:47', '2021-08-09 13:48:47');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (111, 65, '100', '2021-08-09 13:50:26', '2021-08-09 13:50:26');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (112, 66, '100', '2021-08-09 13:52:21', '2021-08-09 13:52:21');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (113, 67, '100', '2021-08-09 13:55:15', '2021-08-09 13:55:15');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (114, 68, '100', '2021-08-09 17:26:59', '2021-08-09 17:26:59');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (115, 69, '100', '2021-08-09 17:50:07', '2021-08-09 17:50:07');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (116, 70, '100', '2021-08-09 17:51:37', '2021-08-09 17:51:37');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (117, 71, '100', '2021-08-09 17:53:10', '2021-08-09 17:53:10');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (118, 72, '100', '2021-08-09 17:54:20', '2021-08-09 17:54:20');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (120, 73, '100', '2021-08-09 17:59:01', '2021-08-09 17:59:01');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (123, 76, '101', '2021-08-09 23:14:44', '2021-08-09 23:14:44');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (124, 77, '100', '2021-08-10 22:54:05', '2021-08-10 22:54:05');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (125, 74, '100', '2021-08-10 22:56:13', '2021-08-10 22:56:13');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (126, 75, '100', '2021-08-10 22:57:29', '2021-08-10 22:57:29');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (127, 78, '100', '2021-08-10 23:00:08', '2021-08-10 23:00:08');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (128, 79, '100', '2021-08-10 23:02:02', '2021-08-10 23:02:02');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (129, 40, '100', '2021-08-10 23:04:32', '2021-08-10 23:04:32');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (130, 40, '101', '2021-08-10 23:04:32', '2021-08-10 23:04:32');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (131, 80, '100', '2021-08-10 23:05:56', '2021-08-10 23:05:56');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (132, 81, '100', '2021-08-10 23:08:51', '2021-08-10 23:08:51');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (133, 81, '101', '2021-08-10 23:08:51', '2021-08-10 23:08:51');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (134, 82, '100', '2021-08-10 23:10:46', '2021-08-10 23:10:46');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (135, 83, '100', '2021-08-10 23:55:48', '2021-08-10 23:55:48');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (136, 84, '100', '2021-08-10 23:58:37', '2021-08-10 23:58:37');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (137, 85, '100', '2021-08-10 23:59:26', '2021-08-10 23:59:26');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (138, 86, '100', '2021-08-11 00:03:10', '2021-08-11 00:03:10');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (139, 87, '100', '2021-08-11 00:05:30', '2021-08-11 00:05:30');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (140, 88, '100', '2021-08-11 00:07:52', '2021-08-11 00:07:52');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (141, 88, '101', '2021-08-11 00:07:52', '2021-08-11 00:07:52');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (142, 89, '100', '2021-08-11 19:22:52', '2021-08-11 19:22:52');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (143, 90, '100', '2021-08-12 14:50:05', '2021-08-12 14:50:05');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (144, 91, '100', '2021-08-12 14:52:53', '2021-08-12 14:52:53');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (145, 92, '100', '2021-08-12 14:56:31', '2021-08-12 14:56:31');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (146, 93, '100', '2021-08-12 14:57:56', '2021-08-12 14:57:56');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (147, 94, '100', '2021-08-12 14:59:15', '2021-08-12 14:59:15');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (148, 95, '100', '2021-08-12 15:00:58', '2021-08-12 15:00:58');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (149, 96, '100', '2021-08-12 15:05:32', '2021-08-12 15:05:32');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (150, 96, '101', '2021-08-12 15:05:32', '2021-08-12 15:05:32');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (151, 97, '100', '2021-08-12 15:07:28', '2021-08-12 15:07:28');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (152, 98, '100', '2021-08-12 15:12:11', '2021-08-12 15:12:11');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (153, 99, '100', '2021-08-12 15:16:21', '2021-08-12 15:16:21');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (154, 100, '101', '2021-08-12 15:32:33', '2021-08-12 15:32:33');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (158, 101, '100', '2021-08-13 19:55:50', '2021-08-13 19:55:50');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (159, 102, '100', '2021-08-13 23:26:00', '2021-08-13 23:26:00');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (160, 103, '100', '2021-08-14 00:37:24', '2021-08-14 00:37:24');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (161, 104, '100', '2021-08-20 16:04:04', '2021-08-20 16:04:04');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (162, 105, '100', '2021-08-20 19:34:31', '2021-08-20 19:34:31');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (163, 106, '100', '2021-08-20 19:36:10', '2021-08-20 19:36:10');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (164, 107, '100', '2021-08-20 19:39:40', '2021-08-20 19:39:40');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (165, 108, '100', '2021-08-20 19:43:34', '2021-08-20 19:43:34');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (166, 108, '101', '2021-08-20 19:43:34', '2021-08-20 19:43:34');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (167, 109, '100', '2021-08-20 19:47:03', '2021-08-20 19:47:03');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (168, 110, '100', '2021-08-20 19:52:38', '2021-08-20 19:52:38');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (169, 111, '100', '2021-08-20 19:54:08', '2021-08-20 19:54:08');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (170, 112, '100', '2021-08-20 19:56:21', '2021-08-20 19:56:21');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (171, 113, '100', '2021-08-21 21:07:39', '2021-08-21 21:07:39');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (172, 114, '100', '2021-08-21 21:13:08', '2021-08-21 21:13:08');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (173, 115, '100', '2021-08-21 21:15:15', '2021-08-21 21:15:15');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (174, 116, '100', '2021-08-21 21:21:16', '2021-08-21 21:21:16');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (175, 117, '100', '2021-08-22 19:25:57', '2021-08-22 19:25:57');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (176, 118, '100', '2021-08-22 19:28:54', '2021-08-22 19:28:54');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (177, 119, '100', '2021-08-24 20:56:34', '2021-08-24 20:56:34');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (178, 119, '101', '2021-08-24 20:56:34', '2021-08-24 20:56:34');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (179, 120, '100', '2021-08-24 20:58:50', '2021-08-24 20:58:50');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (180, 121, '100', '2021-08-24 21:15:11', '2021-08-24 21:15:11');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (181, 121, '101', '2021-08-24 21:15:11', '2021-08-24 21:15:11');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (182, 122, '100', '2021-08-25 21:20:33', '2021-08-25 21:20:33');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (183, 123, '100', '2021-08-25 21:21:40', '2021-08-25 21:21:40');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (184, 124, '100', '2021-08-25 21:23:20', '2021-08-25 21:23:20');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (185, 125, '100', '2021-08-25 21:25:38', '2021-08-25 21:25:38');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (186, 125, '101', '2021-08-25 21:25:38', '2021-08-25 21:25:38');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (187, 126, '100', '2021-09-01 23:06:17', '2021-09-01 23:06:17');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (188, 127, '100', '2021-09-01 23:07:41', '2021-09-01 23:07:41');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (189, 128, '101', '2021-09-02 23:07:58', '2021-09-02 23:07:58');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (190, 129, '100', '2021-09-02 23:09:54', '2021-09-02 23:09:54');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (191, 130, '100', '2021-09-02 23:13:28', '2021-09-02 23:13:28');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (192, 130, '101', '2021-09-02 23:13:28', '2021-09-02 23:13:28');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (203, 131, '100', '2021-09-04 20:26:42', '2021-09-04 20:26:42');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (204, 131, '101', '2021-09-04 20:26:42', '2021-09-04 20:26:42');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (209, 133, '100', '2021-09-04 20:37:37', '2021-09-04 20:37:37');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (210, 132, '100', '2021-09-04 20:40:05', '2021-09-04 20:40:05');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (211, 132, '101', '2021-09-04 20:40:05', '2021-09-04 20:40:05');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (212, 134, '100', '2021-09-04 20:55:36', '2021-09-04 20:55:36');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (213, 135, '100', '2021-09-04 21:07:10', '2021-09-04 21:07:10');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (214, 136, '100', '2021-09-07 21:34:54', '2021-09-07 21:34:54');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (215, 137, '100', '2021-09-07 21:37:22', '2021-09-07 21:37:22');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (216, 138, '100', '2021-09-07 21:38:48', '2021-09-07 21:38:48');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (217, 139, '100', '2021-09-07 21:39:49', '2021-09-07 21:39:49');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (218, 140, '100', '2021-09-07 21:43:45', '2021-09-07 21:43:45');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (219, 140, '101', '2021-09-07 21:43:45', '2021-09-07 21:43:45');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (220, 36, '101', '2021-09-07 21:48:29', '2021-09-07 21:48:29');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (221, 141, '100', '2021-09-07 21:53:12', '2021-09-07 21:53:12');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (222, 142, '100', '2021-09-11 14:12:54', '2021-09-11 14:12:54');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (223, 143, '100', '2021-09-15 21:47:44', '2021-09-15 21:47:44');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (224, 144, '100', '2021-09-15 21:55:39', '2021-09-15 21:55:39');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (225, 144, '101', '2021-09-15 21:55:39', '2021-09-15 21:55:39');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (226, 145, '100', '2021-09-18 00:02:49', '2021-09-18 00:02:49');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (227, 146, '100', '2021-09-21 21:17:19', '2021-09-21 21:17:19');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (228, 146, '101', '2021-09-21 21:17:19', '2021-09-21 21:17:19');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (229, 147, '100', '2021-09-21 21:20:29', '2021-09-21 21:20:29');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (230, 147, '101', '2021-09-21 21:20:29', '2021-09-21 21:20:29');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (231, 148, '100', '2021-09-21 21:23:24', '2021-09-21 21:23:24');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (232, 149, '100', '2021-09-21 21:49:49', '2021-09-21 21:49:49');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (233, 150, '100', '2021-09-30 22:20:50', '2021-09-30 22:20:50');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (234, 151, '100', '2021-09-30 22:23:05', '2021-09-30 22:23:05');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (235, 152, '100', '2021-09-30 22:27:12', '2021-09-30 22:27:12');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (236, 153, '100', '2021-10-03 21:22:38', '2021-10-03 21:22:38');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (237, 154, '100', '2021-10-03 21:24:07', '2021-10-03 21:24:07');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (238, 155, '100', '2021-10-03 21:25:48', '2021-10-03 21:25:48');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (239, 156, '100', '2021-10-03 21:28:49', '2021-10-03 21:28:49');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (240, 157, '100', '2021-10-18 21:49:18', '2021-10-18 21:49:18');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (241, 158, '100', '2021-10-18 21:52:00', '2021-10-18 21:52:00');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (242, 159, '100', '2021-10-18 21:55:26', '2021-10-18 21:55:26');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (243, 160, '100', '2021-10-18 21:58:35', '2021-10-18 21:58:35');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (244, 161, '100', '2021-10-18 22:01:34', '2021-10-18 22:01:34');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (245, 162, '100', '2021-10-18 22:08:31', '2021-10-18 22:08:31');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (246, 162, '101', '2021-10-18 22:08:31', '2021-10-18 22:08:31');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (249, 163, '100', '2021-10-22 13:30:34', '2021-10-22 13:30:34');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (250, 164, '100', '2021-10-22 13:50:09', '2021-10-22 13:50:09');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (251, 165, '100', '2021-11-01 19:22:37', '2021-11-01 19:22:37');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (253, 166, '100', '2021-11-06 21:34:09', '2021-11-06 21:34:09');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (254, 167, '100', '2021-11-06 21:36:10', '2021-11-06 21:36:10');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (256, 168, '100', '2021-11-07 19:52:36', '2021-11-07 19:52:36');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (257, 169, '100', '2021-12-16 14:12:02', '2021-12-16 14:12:02');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (258, 170, '100', '2021-12-16 14:15:14', '2021-12-16 14:15:14');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (259, 171, '100', '2021-12-16 14:19:34', '2021-12-16 14:19:34');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (260, 172, '100', '2021-12-16 16:03:56', '2021-12-16 16:03:56');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (261, 173, '100', '2022-01-16 18:38:21', '2022-01-16 18:38:21');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (262, 174, '100', '2022-01-20 21:34:31', '2022-01-20 21:34:31');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (263, 175, '100', '2022-01-20 21:36:57', '2022-01-20 21:36:57');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (264, 176, '100', '2022-01-20 21:39:44', '2022-01-20 21:39:44');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (265, 176, '101', '2022-01-20 21:39:44', '2022-01-20 21:39:44');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (266, 177, '101', '2022-01-20 21:42:32', '2022-01-20 21:42:32');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (267, 178, '100', '2022-01-20 21:45:23', '2022-01-20 21:45:23');
INSERT INTO evolve.thread_tag (id, thread_id, tag, created_at, updated_at) VALUES (268, 179, '100', '2022-01-20 21:53:45', '2022-01-20 21:53:45');