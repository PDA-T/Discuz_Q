create table thread_topic
(
    thread_id  bigint unsigned not null comment '主题ID',
    topic_id   bigint unsigned not null comment '话题ID',
    created_at datetime        not null comment '创建时间',
    primary key (thread_id, topic_id),
    constraint thread_topic_thread_id_foreign
        foreign key (thread_id) references threads (id)
            on delete cascade,
    constraint thread_topic_topic_id_foreign
        foreign key (topic_id) references topics (id)
            on delete cascade
)
    collate = utf8mb4_unicode_ci;

INSERT INTO evolve.thread_topic (thread_id, topic_id, created_at) VALUES (132, 1, '2021-09-04 20:40:05');
INSERT INTO evolve.thread_topic (thread_id, topic_id, created_at) VALUES (133, 1, '2021-09-04 20:30:38');
