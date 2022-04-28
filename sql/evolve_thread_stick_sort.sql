create table thread_stick_sort
(
    id         bigint unsigned auto_increment comment '置顶排序 id'
        primary key,
    thread_id  bigint unsigned                        not null comment '主题 id',
    sort       int unsigned default 0                 not null comment '排序',
    created_at timestamp    default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

