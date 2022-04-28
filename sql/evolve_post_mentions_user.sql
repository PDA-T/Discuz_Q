create table post_mentions_user
(
    post_id          bigint unsigned not null,
    mentions_user_id bigint unsigned not null,
    primary key (post_id, mentions_user_id),
    constraint post_mentions_user_mentions_user_id_foreign
        foreign key (mentions_user_id) references users (id)
            on delete cascade,
    constraint post_mentions_user_post_id_foreign
        foreign key (post_id) references posts (id)
            on delete cascade
)
    collate = utf8mb4_unicode_ci;

INSERT INTO evolve.post_mentions_user (post_id, mentions_user_id) VALUES (20, 1);
INSERT INTO evolve.post_mentions_user (post_id, mentions_user_id) VALUES (21, 1);
INSERT INTO evolve.post_mentions_user (post_id, mentions_user_id) VALUES (20, 2);
INSERT INTO evolve.post_mentions_user (post_id, mentions_user_id) VALUES (21, 2);
INSERT INTO evolve.post_mentions_user (post_id, mentions_user_id) VALUES (274, 2);
INSERT INTO evolve.post_mentions_user (post_id, mentions_user_id) VALUES (377, 2);
INSERT INTO evolve.post_mentions_user (post_id, mentions_user_id) VALUES (235, 3);
