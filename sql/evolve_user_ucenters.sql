create table user_ucenters
(
    id         bigint unsigned auto_increment
        primary key,
    user_id    int unsigned default 0 not null comment '用户 id',
    ucenter_id int unsigned default 0 not null comment 'uc用户 id',
    created_at datetime               not null comment '创建时间',
    updated_at datetime               not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

create index user_ucenters_ucenter_id_index
    on user_ucenters (ucenter_id);

create index user_ucenters_user_id_index
    on user_ucenters (user_id);

