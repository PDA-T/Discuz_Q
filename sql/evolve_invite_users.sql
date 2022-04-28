create table invite_users
(
    invite_id  int unsigned                           not null comment '邀请码id',
    code       char(32)     default ''                not null comment '邀请码',
    user_id    int unsigned                           not null comment '邀请用户 id',
    to_user_id int unsigned default 0                 not null comment '被邀请用户 id',
    created_at timestamp    default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

