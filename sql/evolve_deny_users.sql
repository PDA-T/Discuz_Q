create table deny_users
(
    user_id      bigint unsigned not null,
    deny_user_id bigint unsigned not null,
    created_at   datetime        not null comment '创建时间'
)
    collate = utf8mb4_unicode_ci;

