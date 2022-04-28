create table session_tokens
(
    token      varchar(255) not null comment 'token',
    scope      varchar(255) null comment '作用域',
    payload    text         null comment '负载',
    user_id    int unsigned null comment '用户 id',
    created_at datetime     not null comment '创建时间',
    expired_at datetime     not null comment '过期时间',
    constraint session_tokens_token_unique
        unique (token)
)
    collate = utf8mb4_unicode_ci;

