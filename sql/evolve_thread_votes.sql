create table thread_votes
(
    id          bigint unsigned auto_increment comment '投票 id'
        primary key,
    thread_id   bigint unsigned                            not null comment '主题 id',
    vote_title  varchar(255)                               not null comment '投票标题',
    choice_type tinyint unsigned default 0                 not null comment '选择类型；1：单选、2：多选',
    vote_users  int unsigned     default 0                 not null comment '参与人数',
    created_at  timestamp        default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at  timestamp        default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    expired_at  timestamp                                  null comment '过期时间',
    deleted_at  timestamp                                  null comment '删除时间'
)
    collate = utf8mb4_unicode_ci;

