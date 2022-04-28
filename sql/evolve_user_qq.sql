create table user_qq
(
    id         bigint unsigned auto_increment
        primary key,
    user_id    int unsigned default 0  not null comment '用户 id',
    openid     varchar(50)  default '' not null comment 'openid',
    nickname   varchar(100) default '' not null comment 'qq昵称',
    sex        tinyint      default 0  not null comment '性别',
    province   varchar(10)  default '' not null comment '省份',
    city       varchar(10)  default '' not null comment '城市',
    headimgurl varchar(255) default '' not null comment '头像',
    created_at datetime                not null comment '创建时间',
    updated_at datetime                not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

create index user_id
    on user_qq (user_id);

