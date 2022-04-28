create table user_wechats
(
    id         bigint unsigned auto_increment
        primary key,
    user_id    bigint unsigned         null comment '用户 id',
    mp_openid  varchar(30)  default '' not null comment '公众号openid',
    dev_openid varchar(30)  default '' not null comment '开放平台openid',
    min_openid varchar(30)  default '' not null comment '小程序openid',
    nickname   varchar(50)  default '' not null comment '微信昵称',
    sex        tinyint      default 0  not null comment '性别',
    province   varchar(100) default '' not null comment '省份',
    city       varchar(100) default '' not null comment '城市',
    country    varchar(100) default '' not null comment '国家',
    headimgurl varchar(255) default '' not null comment '头像',
    privilege  varchar(255) default '' not null comment '用户特权信息',
    unionid    varchar(30)  default '' not null comment '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
    created_at datetime                not null comment '创建时间',
    updated_at datetime                not null comment '更新时间',
    constraint user_wechats_user_id_foreign
        foreign key (user_id) references users (id)
            on delete cascade
)
    collate = utf8mb4_unicode_ci;

create index idx_dev_openid
    on user_wechats (dev_openid);

create index idx_min_openid
    on user_wechats (min_openid);

create index idx_mp_openid
    on user_wechats (mp_openid);

create index idx_unionid
    on user_wechats (unionid);

create index user_id
    on user_wechats (user_id);

