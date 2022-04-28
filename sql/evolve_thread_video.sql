create table thread_video
(
    id         bigint unsigned auto_increment comment '音视频 id'
        primary key,
    thread_id  bigint unsigned                      not null comment '主题 id',
    post_id    bigint unsigned                      not null comment '帖子 id',
    user_id    bigint unsigned                      not null comment '用户 id',
    type       tinyint unsigned        default 0    not null comment '类型：0 视频 1 音频',
    status     tinyint                 default 0    not null comment '音视频状态：0 转码中 1 转码完成 2 转码失败',
    reason     varchar(255)            default ''   not null comment '转码失败原因',
    file_name  varchar(255)            default ''   not null comment '文件名',
    file_id    varchar(255)            default ''   not null comment '媒体文件唯一标识',
    height     int unsigned            default 0    not null comment '视频高',
    width      int unsigned            default 0    not null comment '视频宽',
    duration   decimal(10, 2) unsigned default 0.00 not null comment '视频时长',
    media_url  varchar(255)            default ''   not null comment '媒体播放地址',
    cover_url  varchar(255)            default ''   not null comment '媒体封面地址',
    created_at datetime                             not null comment '创建时间',
    updated_at datetime                             not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

create index thread_video_post_id_index
    on thread_video (post_id);

create index thread_video_thread_id_index
    on thread_video (thread_id);

