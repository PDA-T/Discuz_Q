create table miniprogram_scheme_manage
(
    id          bigint unsigned auto_increment comment 'id'
        primary key,
    mini_app_id varchar(100) not null comment '小程序appid',
    scheme      varchar(100) not null comment '小程序全局scheme',
    expired_at  int          not null comment '过期时间',
    created_at  int          not null comment '创建时间'
)
    collate = utf8mb4_unicode_ci;

