create table notification_timing
(
    id         bigint unsigned auto_increment comment '自增长id'
        primary key,
    notice_id  varchar(255)                           not null comment '模板唯一标识ID',
    user_id    bigint unsigned                        not null comment '接收通知的用户id',
    number     int unsigned default 0                 not null comment '通知条数',
    data       text                                   not null comment '通知数据',
    created_at timestamp    default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    expired_at timestamp                              null comment '过期时间'
)
    collate = utf8mb4_unicode_ci;

