create table thread_vote_users
(
    id                     bigint unsigned auto_increment
        primary key,
    user_id                bigint unsigned                     not null comment '投票用户 id',
    thread_id              bigint unsigned                     not null comment '投票主题 id',
    thread_vote_subitem_id bigint unsigned                     not null comment '投票选项 id',
    created_at             timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at             timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    constraint user_subitem_id
        unique (user_id, thread_vote_subitem_id)
)
    collate = utf8mb4_unicode_ci;

