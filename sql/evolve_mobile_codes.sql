create table mobile_codes
(
    id         bigint unsigned auto_increment comment '验证码 id'
        primary key,
    mobile     varchar(20) default '' not null comment '手机号',
    code       varchar(10) default '' not null comment '验证码',
    type       varchar(20) default '' not null comment '验证类型',
    state      tinyint     default 0  not null comment '验证状态',
    ip         varchar(45) default '' not null comment 'ip',
    expired_at datetime               null comment '验证码过期时间',
    created_at datetime               not null comment '创建时间',
    updated_at datetime               not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

