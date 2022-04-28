create table thread_sticks
(
    id         bigint unsigned auto_increment comment '自增id'
        primary key,
    user_id    bigint unsigned                     not null,
    thread_id  bigint unsigned                     not null,
    status     int                                 not null,
    created_at timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    constraint index_user_id
        unique (user_id)
)
    collate = utf8mb4_unicode_ci;

