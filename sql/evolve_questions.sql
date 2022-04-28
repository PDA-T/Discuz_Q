create table questions
(
    id                  bigint unsigned auto_increment
        primary key,
    thread_id           bigint unsigned                     null comment '主题 id',
    user_id             bigint unsigned                     null comment '提问人用户 id',
    be_user_id          bigint unsigned                     null comment '被提问的用户 id',
    content             text                                null comment '回答内容',
    ip                  varchar(45)            default ''   not null comment '回答人 ip 地址',
    port                int unsigned           default 0    not null comment '回答人端口',
    price               decimal(8, 2) unsigned default 0.00 not null comment '问答价格',
    onlooker_unit_price decimal(8, 2) unsigned default 0.00 not null comment '围观单价',
    onlooker_price      decimal(8, 2) unsigned default 0.00 not null comment '当前围观总价格',
    onlooker_number     bigint unsigned        default 0    not null comment '当前围观总人数',
    is_onlooker         tinyint                default 1    not null comment '是否允许围观',
    is_answer           tinyint                default 0    not null comment '是否已回答 0未回答 1已回答 2已过期',
    is_approved         tinyint unsigned       default 1    not null comment '回答内容是否合法',
    updated_at          datetime                            not null comment '更新时间',
    created_at          datetime                            not null comment '创建时间',
    expired_at          datetime                            not null comment '过期时间',
    answered_at         datetime                            null comment '回答时间',
    constraint questions_thread_id_foreign
        foreign key (thread_id) references threads (id)
            on delete set null
)
    collate = utf8mb4_unicode_ci;

create index idx_be_user_id
    on questions (be_user_id);

create index idx_thread_id
    on questions (thread_id);

create index idx_user_id
    on questions (user_id);

