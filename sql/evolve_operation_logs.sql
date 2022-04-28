create table operation_logs
(
    id         bigint unsigned auto_increment comment '日志 id'
        primary key,
    user_id    bigint unsigned  default 0  not null comment '用户 id',
    path       varchar(255)     default '' not null comment 'url路径',
    method     varchar(10)      default '' not null comment '请求方式',
    ip         varchar(45)      default '' not null comment 'ip 地址',
    input      text                        not null comment 'body请求数据',
    type       tinyint unsigned default 0  not null comment '日志类型:0后台操作',
    created_at datetime                    null comment '创建时间',
    updated_at datetime                    null comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

create index idx_user
    on operation_logs (user_id);

