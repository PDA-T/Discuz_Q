create table plugin_activity_thread_activity
(
    id                   bigint unsigned auto_increment comment '自增id'
        primary key,
    user_id              bigint unsigned                          not null comment '用户id',
    thread_id            bigint unsigned                          not null comment '帖子id',
    title                varchar(100)                             not null comment '活动名称',
    content              text                                     not null comment '活动内容',
    activity_start_time  datetime                                 not null comment '活动开始时间',
    activity_end_time    datetime                                 not null comment '活动结束时间',
    register_start_time  datetime                                 null comment '报名开始时间',
    register_end_time    datetime                                 null comment '报名结束时间',
    total_number         int            default 0                 not null comment '报名人数上限 0:不限制',
    address              varchar(200)   default ''                not null comment '地址信息',
    location             varchar(200)   default ''                null comment '位置信息',
    longitude            decimal(10, 7) default 0.0000000         not null comment '经度',
    latitude             decimal(10, 7) default 0.0000000         not null comment '纬度',
    status               tinyint        default 1                 not null comment '0:无效 1：有效',
    created_at           timestamp      default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at           timestamp      default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    additional_info_type varchar(255)   default '{}'              not null comment '报名必填信息；1：姓名、2：手机号、3：微信号、4：地址；数据形式：{1,2,3,4}'
)
    collate = utf8mb4_unicode_ci;

