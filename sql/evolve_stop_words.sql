create table stop_words
(
    id          bigint unsigned auto_increment comment '敏感词 id'
        primary key,
    user_id     bigint unsigned         null comment '创建用户 id',
    ugc         varchar(10)  default '' not null comment '用户内容处理方式',
    username    varchar(10)  default '' not null comment '用户名处理方式',
    nickname    varchar(100) default '' not null comment '用户昵称',
    signature   varchar(10)  default '' not null comment '用户签名处理方式',
    dialog      varchar(10)  default '' not null comment '短消息处理方式',
    find        varchar(255) default '' not null comment '敏感词或查找方式',
    replacement varchar(255) default '' not null comment '替换词或替换规则',
    created_at  datetime                not null comment '创建时间',
    updated_at  datetime                not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 11;

