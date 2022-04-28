create table user_qy_wechats
(
    id         bigint unsigned auto_increment
        primary key,
    user_id    int unsigned default 0  not null comment '用户 id',
    qy_userid  varchar(50)  default '' not null comment '企业微信企业用户id, corpid_userid联合全局唯一',
    nickname   varchar(50)  default '' not null comment '企业微信昵称',
    sex        tinyint      default 0  not null comment '性别',
    email      varchar(50)  default '' not null comment '邮箱',
    mobile     varchar(20)  default '' not null comment '电话',
    address    varchar(50)  default '' not null comment '地址',
    headimgurl varchar(255) default '' not null comment '头像',
    created_at datetime                not null comment '创建时间',
    updated_at datetime                not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

create index user_id
    on user_qy_wechats (user_id);

