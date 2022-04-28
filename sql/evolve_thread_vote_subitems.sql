create table thread_vote_subitems
(
    id             bigint unsigned auto_increment comment '投票选项 id'
        primary key,
    thread_vote_id bigint unsigned                        not null comment '投票主题 id',
    content        varchar(255) default ''                not null comment '内容',
    vote_count     int unsigned default 0                 not null comment '投票数量',
    created_at     timestamp    default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at     timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    deleted_at     timestamp                              null comment '删除时间'
)
    collate = utf8mb4_unicode_ci;

