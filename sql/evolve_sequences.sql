create table sequences
(
    category_ids     text not null comment '内容分类ID',
    group_ids        text not null comment '用户角色ID',
    user_ids         text not null comment '用户ID',
    topic_ids        text not null comment '话题ID',
    thread_ids       text not null comment '主题ID/帖子',
    block_user_ids   text not null comment '阻止显示的用户ID',
    block_topic_ids  text not null comment '阻止显示的话题ID',
    block_thread_ids text not null comment '阻止显示的主题ID/帖子'
)
    collate = utf8mb4_unicode_ci;

INSERT INTO evolve.sequences (category_ids, group_ids, user_ids, topic_ids, thread_ids, block_user_ids, block_topic_ids, block_thread_ids) VALUES ('', '1,7,11,12', '2', '', '', '', '', '');
