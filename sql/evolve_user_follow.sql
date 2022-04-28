create table user_follow
(
    id           bigint unsigned auto_increment comment '自增ID'
        primary key,
    from_user_id bigint unsigned   not null comment '关注人',
    to_user_id   bigint unsigned   not null comment '被关注人',
    is_mutual    tinyint default 0 not null comment '是否互相关注：0否 1是',
    created_at   datetime          not null comment '创建时间',
    updated_at   datetime          not null comment '更新时间',
    constraint user_follow_from_user_id_foreign
        foreign key (from_user_id) references users (id)
            on delete cascade,
    constraint user_follow_to_user_id_foreign
        foreign key (to_user_id) references users (id)
            on delete cascade
)
    collate = utf8mb4_unicode_ci;

create index from_user_id
    on user_follow (from_user_id);

create index to_user_id
    on user_follow (to_user_id);

