create table post_mod
(
    post_id   bigint unsigned not null comment '帖子 id'
        primary key,
    stop_word varchar(255)    not null comment '触发的敏感词，半角逗号隔开',
    constraint post_mod_post_id_foreign
        foreign key (post_id) references posts (id)
            on delete cascade
)
    collate = utf8mb4_unicode_ci;

