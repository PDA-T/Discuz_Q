create table thread_user_view_records
(
    thread_id bigint unsigned not null,
    user_id   bigint unsigned not null,
    view_at   datetime        not null comment '浏览时间'
)
    collate = utf8mb4_unicode_ci;

