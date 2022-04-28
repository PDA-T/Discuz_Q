create table reports
(
    id         bigint unsigned auto_increment comment '举报 id'
        primary key,
    user_id    bigint unsigned  default 0 not null comment '用户 id',
    thread_id  bigint unsigned  default 0 not null comment '主题 id',
    post_id    bigint unsigned  default 0 not null comment '回复 id',
    type       tinyint unsigned default 0 not null comment '举报类型:0个人主页 1主题 2评论/回复',
    reason     text                       not null comment '举报理由',
    status     tinyint unsigned default 0 not null comment '举报状态:0未处理 1已处理',
    created_at datetime                   null comment '创建时间',
    updated_at datetime                   null comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 12;

create index idx_user
    on reports (user_id);

INSERT INTO evolve.reports (id, user_id, thread_id, post_id, type, reason, status, created_at, updated_at) VALUES (1, 7, 8, 19, 2, '不好听言论', 1, '2021-08-01 01:42:13', '2021-08-01 21:38:34');
INSERT INTO evolve.reports (id, user_id, thread_id, post_id, type, reason, status, created_at, updated_at) VALUES (2, 21, 19, 0, 1, '说的非常好，请顶置加精华', 1, '2021-08-02 15:33:24', '2021-08-09 15:26:04');
INSERT INTO evolve.reports (id, user_id, thread_id, post_id, type, reason, status, created_at, updated_at) VALUES (3, 21, 20, 0, 1, '这个说的也好，顶置', 1, '2021-08-02 15:33:45', '2021-08-09 15:26:04');
INSERT INTO evolve.reports (id, user_id, thread_id, post_id, type, reason, status, created_at, updated_at) VALUES (4, 22, 22, 0, 1, '违规内容', 1, '2021-08-02 15:36:22', '2021-08-09 15:26:04');
INSERT INTO evolve.reports (id, user_id, thread_id, post_id, type, reason, status, created_at, updated_at) VALUES (5, 22, 20, 0, 1, '违规内容', 1, '2021-08-02 15:36:31', '2021-08-09 15:26:04');
INSERT INTO evolve.reports (id, user_id, thread_id, post_id, type, reason, status, created_at, updated_at) VALUES (6, 22, 20, 58, 2, '违规内容', 1, '2021-08-02 15:36:38', '2021-08-09 15:26:04');
INSERT INTO evolve.reports (id, user_id, thread_id, post_id, type, reason, status, created_at, updated_at) VALUES (7, 22, 19, 0, 1, '违规内容', 1, '2021-08-02 15:36:47', '2021-08-09 15:26:04');
INSERT INTO evolve.reports (id, user_id, thread_id, post_id, type, reason, status, created_at, updated_at) VALUES (8, 21, 22, 63, 2, '抄袭他也爱？直接封号，还用我多说？除非你感觉王者是个好游戏', 1, '2021-08-02 15:38:25', '2021-08-09 15:26:04');
INSERT INTO evolve.reports (id, user_id, thread_id, post_id, type, reason, status, created_at, updated_at) VALUES (10, 92, 4, 0, 1, '恶意灌水', 0, '2021-08-22 19:32:39', '2021-08-22 19:32:39');
