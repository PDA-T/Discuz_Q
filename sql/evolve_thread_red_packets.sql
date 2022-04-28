create table thread_red_packets
(
    id            bigint unsigned auto_increment comment '红包ID'
        primary key,
    thread_id     bigint unsigned                                   not null comment '关联的threads主键ID',
    post_id       bigint unsigned                                   not null comment '关联的posts主键ID',
    rule          tinyint unsigned        default 0                 not null comment '发放规则，0定额，1随机',
    `condition`   tinyint unsigned        default 0                 not null comment '领取红包条件，0回复，1集赞',
    likenum       tinyint unsigned        default 0                 not null comment '若红包领取条件为集赞，必填集赞数',
    money         decimal(10, 2) unsigned default 0.00              not null comment '红包总金额',
    number        int unsigned            default 0                 not null comment '红包个数',
    remain_money  decimal(10, 2) unsigned default 0.00              not null comment '剩余红包总额',
    remain_number int unsigned            default 0                 not null comment '剩余红包个数',
    status        tinyint unsigned        default 0                 not null comment '0:红包已过期,1:红包未过期',
    created_at    timestamp               default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at    timestamp               default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

