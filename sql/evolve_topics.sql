create table topics
(
    id             bigint unsigned auto_increment comment '话题ID'
        primary key,
    user_id        bigint unsigned            null comment 'user_id',
    content        text                       null comment '话题名称',
    thread_count   int unsigned     default 0 not null comment '主题数',
    view_count     int unsigned     default 0 not null comment '阅读数',
    updated_at     datetime                   not null comment '更新时间',
    created_at     datetime                   not null comment '创建时间',
    recommended    tinyint unsigned default 0 not null comment '是否推荐',
    recommended_at datetime                   null comment '推荐时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 3;

INSERT INTO evolve.topics (id, user_id, content, thread_count, view_count, updated_at, created_at, recommended, recommended_at) VALUES (1, 3, '', 1, 10, '2021-09-07 21:57:31', '2021-09-04 20:30:38', 0, null);
