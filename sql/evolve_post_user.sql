create table post_user
(
    post_id    bigint unsigned not null comment '帖子 id',
    user_id    bigint unsigned not null comment '用户 id',
    created_at datetime        not null comment '创建时间',
    primary key (post_id, user_id),
    constraint post_user_post_id_foreign
        foreign key (post_id) references posts (id)
            on delete cascade,
    constraint post_user_user_id_foreign
        foreign key (user_id) references users (id)
            on delete cascade
)
    collate = utf8mb4_unicode_ci;

INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (1, 3, '2021-08-01 12:29:16');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (1, 4, '2021-08-01 12:30:05');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (1, 8, '2021-08-04 21:26:50');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (1, 108, '2021-09-07 21:57:03');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (9, 108, '2021-09-07 21:57:00');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (20, 4, '2021-08-01 12:40:23');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (166, 3, '2021-08-08 01:10:19');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (166, 108, '2021-09-07 21:56:58');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (343, 108, '2021-09-07 21:56:57');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (345, 108, '2021-09-07 21:56:53');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (436, 121, '2022-01-15 15:00:39');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (436, 137, '2022-01-15 15:02:55');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (437, 121, '2022-01-15 15:00:39');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (437, 137, '2022-01-15 15:02:54');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (447, 121, '2022-01-15 15:00:50');
INSERT INTO evolve.post_user (post_id, user_id, created_at) VALUES (448, 137, '2022-01-15 15:03:16');
