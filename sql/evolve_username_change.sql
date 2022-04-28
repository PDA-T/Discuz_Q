create table username_change
(
    id         bigint unsigned auto_increment comment 'ID'
        primary key,
    user_id    int unsigned default 0 not null comment '用户id',
    number     int unsigned           null comment '次数',
    created_at datetime               not null comment '创建时间',
    updated_at datetime               not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

create index user_id
    on username_change (user_id);

