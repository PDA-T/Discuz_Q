create table plugin_activity_user
(
    id              bigint unsigned auto_increment comment '自增id'
        primary key,
    thread_id       bigint unsigned                        not null comment '主题id',
    activity_id     bigint unsigned                        not null comment '活动id',
    user_id         bigint unsigned                        not null comment '用户id',
    status          tinyint      default 1                 not null comment '0:无效 1：有效',
    created_at      timestamp    default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at      timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    additional_info varchar(255) default ''                not null comment '报名必填信息'
)
    collate = utf8mb4_unicode_ci;

create index plugin_activity_user_activity_id_user_id_index
    on plugin_activity_user (activity_id, user_id);

create index plugin_activity_user_thread_id_index
    on plugin_activity_user (thread_id);

