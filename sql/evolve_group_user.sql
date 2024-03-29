create table group_user
(
    group_id        bigint unsigned not null comment '用户组 id',
    user_id         bigint unsigned not null comment '用户 id',
    expiration_time datetime        null comment '用户组到期时间',
    primary key (group_id, user_id),
    constraint group_user_group_id_foreign
        foreign key (group_id) references `groups` (id)
            on delete cascade,
    constraint group_user_user_id_foreign
        foreign key (user_id) references users (id)
            on delete cascade
)
    collate = utf8mb4_unicode_ci;

INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (1, 1, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (1, 2, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 4, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 5, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 6, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 7, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 8, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 9, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 10, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 11, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 12, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 13, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 14, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 15, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 16, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 17, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 18, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 19, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 20, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 21, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 22, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 23, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 24, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 25, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 26, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 27, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 28, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 29, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 30, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 31, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 32, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 33, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 34, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 35, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 36, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 37, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 38, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 39, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 40, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 41, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 42, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 43, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 44, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 45, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 46, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 47, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 48, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 49, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 50, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 51, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 52, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 53, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 54, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 55, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 56, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 57, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 58, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 59, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 60, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 61, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 62, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 63, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 64, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 65, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 66, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 67, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 68, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 69, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 70, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 71, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 72, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 73, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 74, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 75, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 76, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 77, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 78, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 79, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 80, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 81, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 82, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 83, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 84, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 85, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 86, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 87, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 88, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 89, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 90, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 91, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 92, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 93, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 94, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 95, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 96, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 97, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 98, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 99, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 100, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 101, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 102, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 103, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 104, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 105, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 106, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 107, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 108, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 109, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 110, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 111, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 112, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 113, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 114, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 115, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 116, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 117, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 118, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 119, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 120, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 121, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 122, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 123, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 124, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 125, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 126, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 127, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 128, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 129, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 130, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 131, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 132, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 133, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 134, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 135, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 136, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 137, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 138, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 139, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 140, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 141, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 142, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (10, 143, null);
INSERT INTO evolve.group_user (group_id, user_id, expiration_time) VALUES (17, 3, '2022-02-20 21:27:11');
