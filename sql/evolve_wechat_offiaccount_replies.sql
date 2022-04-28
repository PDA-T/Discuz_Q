create table wechat_offiaccount_replies
(
    id         bigint unsigned auto_increment
        primary key,
    name       varchar(100)     default '' not null comment '规则名',
    keyword    varchar(255)     default '' not null comment '关键词',
    match_type tinyint unsigned default 0  not null comment '匹配类型:0全匹配1半匹配',
    reply_type tinyint unsigned default 1  not null comment '消息回复类型',
    content    varchar(255)     default '' not null comment '回复文本内容',
    media_id   varchar(255)     default '' not null comment '素材ID',
    media_type tinyint unsigned default 0  not null comment '素材类型:1图片2视频3语音4图文',
    type       tinyint unsigned default 2  not null comment '数据类型:0被关注回复1消息回复2关键词回复',
    status     tinyint          default 1  not null comment '是否开启:0关闭1开启',
    created_at datetime                    not null comment '创建时间',
    updated_at datetime                    not null comment '更新时间',
    deleted_at datetime                    null comment '删除时间'
)
    collate = utf8mb4_unicode_ci;

create index idx_keyword
    on wechat_offiaccount_replies (keyword);

