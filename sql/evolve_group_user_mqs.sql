create table group_user_mqs
(
    id          bigint unsigned auto_increment
        primary key,
    group_id    bigint       default 0                 not null comment '用户组id',
    user_id     bigint       default 0                 not null comment '用户id',
    remain_days int unsigned default 0                 not null comment '剩余天数',
    created_at  timestamp    default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at  timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 2;

INSERT INTO evolve.group_user_mqs (id, group_id, user_id, remain_days, created_at, updated_at) VALUES (1, 16, 3, 2, '2022-01-20 21:27:11', '2022-01-20 21:27:11');
