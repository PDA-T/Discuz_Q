create table thread_rewards
(
    id           bigint unsigned auto_increment comment '悬赏帖ID'
        primary key,
    thread_id    bigint unsigned                                   null comment '关联的threads主键ID',
    post_id      bigint unsigned                                   null comment '关联的posts主键ID',
    type         tinyint unsigned        default 0                 not null comment '0为所有人回答，1为指定人回答',
    user_id      bigint unsigned         default 0                 not null comment '用户 id',
    answer_id    bigint unsigned                                   null comment '被指定人ID，可为空',
    money        decimal(10, 2) unsigned default 0.00              not null comment '悬赏金额',
    remain_money decimal(10, 2) unsigned default 0.00              not null comment '剩余的悬赏金额',
    created_at   timestamp               default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at   timestamp               default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    expired_at   timestamp                                         null comment '过期时间'
)
    collate = utf8mb4_unicode_ci;

