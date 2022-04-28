create table thread_user
(
    thread_id  bigint unsigned not null comment '主题 id',
    user_id    bigint unsigned not null comment '用户 id',
    created_at datetime        not null comment '创建时间',
    primary key (thread_id, user_id),
    constraint thread_user_thread_id_foreign
        foreign key (thread_id) references threads (id)
            on delete cascade,
    constraint thread_user_user_id_foreign
        foreign key (user_id) references users (id)
            on delete cascade
)
    collate = utf8mb4_unicode_ci;

