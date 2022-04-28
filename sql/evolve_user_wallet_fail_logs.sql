create table user_wallet_fail_logs
(
    id         bigint unsigned auto_increment comment '日志 id'
        primary key,
    ip         varchar(45)     default '' not null comment 'ip 地址',
    user_id    bigint unsigned default 0  not null comment '用户 id',
    created_at datetime                   not null comment '创建时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 2;

create index user_wallet_fail_logs_user_id_index
    on user_wallet_fail_logs (user_id);

