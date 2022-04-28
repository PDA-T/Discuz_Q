create table dialog
(
    id                   bigint unsigned auto_increment comment '自增ID'
        primary key,
    dialog_message_id    bigint unsigned default 0 not null comment '最新消息ID',
    sender_user_id       bigint unsigned           not null comment '发送人UID',
    recipient_user_id    bigint unsigned           not null comment '收信人UID',
    recipient_read_at    datetime                  null comment '收信人阅读时间',
    sender_read_at       datetime                  null comment '发送人阅读时间',
    created_at           datetime                  not null comment '创建时间',
    updated_at           datetime                  not null comment '更新时间',
    sender_deleted_at    datetime                  null comment '发送人删除时间',
    recipient_deleted_at datetime                  null comment '收信人删除时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 12;

create index recipient_user_id
    on dialog (recipient_user_id);

create index sender_user_id
    on dialog (sender_user_id);

INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (1, 6, 4, 2, '2021-08-01 14:21:46', '2021-08-01 12:38:13', '2021-08-01 12:32:39', '2021-08-01 14:21:46', null, null);
INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (2, 43, 3, 2, null, '2021-12-16 14:49:39', '2021-08-01 22:43:22', '2021-12-16 14:49:39', null, null);
INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (3, 8, 25, 2, '2021-08-03 12:02:38', '2021-08-02 20:23:54', '2021-08-02 20:23:53', '2021-08-03 12:02:38', null, null);
INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (4, 13, 35, 2, '2021-08-06 10:19:52', '2021-08-04 20:45:19', '2021-08-04 20:45:18', '2021-08-06 10:19:52', null, null);
INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (5, 33, 8, 2, '2021-10-18 11:36:53', '2021-09-21 21:26:11', '2021-08-04 20:50:08', '2021-10-18 11:36:53', null, null);
INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (6, 18, 37, 2, '2021-08-09 09:40:24', '2021-08-08 12:41:08', '2021-08-08 12:41:07', '2021-08-09 09:40:24', null, null);
INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (7, 31, 75, 2, '2021-10-18 11:37:04', '2021-08-21 21:18:16', '2021-08-20 20:04:53', '2021-10-18 11:37:04', null, null);
INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (8, 36, 116, 2, '2021-10-18 12:07:32', null, '2021-09-30 22:28:46', '2021-10-18 12:07:32', null, null);
INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (9, 37, 123, 2, '2021-10-19 10:27:56', '2021-10-18 21:53:17', '2021-10-18 21:53:16', '2021-10-19 10:27:56', null, null);
INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (10, 40, 127, 2, '2021-10-19 10:28:15', '2021-10-18 22:11:07', '2021-10-18 22:10:35', '2021-10-19 10:28:15', null, null);
INSERT INTO evolve.dialog (id, dialog_message_id, sender_user_id, recipient_user_id, recipient_read_at, sender_read_at, created_at, updated_at, sender_deleted_at, recipient_deleted_at) VALUES (11, 45, 143, 2, null, '2022-01-20 21:55:32', '2022-01-20 21:55:21', '2022-01-20 21:55:32', null, null);
