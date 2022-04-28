create table dialog_message
(
    id            bigint unsigned auto_increment comment '自增ID'
        primary key,
    dialog_id     bigint unsigned            not null comment '会话ID',
    user_id       bigint unsigned            not null comment '用户ID',
    attachment_id bigint unsigned            not null comment '附件ID',
    message_text  text                       null comment '内容',
    created_at    datetime                   not null comment '创建时间',
    updated_at    datetime                   not null comment '更新时间',
    read_status   tinyint unsigned default 1 not null comment '阅读状态0.未读 1.已读',
    status        tinyint unsigned default 1 not null comment '消息状态 0空消息 1.正常消息'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 46;

create index idx_dialog_id
    on dialog_message (dialog_id);

INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (1, 1, 4, 0, '{\\"message_text\\":null,\\"image_url\\":\\"\\"}', '2021-08-01 12:32:39', '2021-08-01 12:32:39', 0, 0);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (2, 1, 4, 8, '{\\"message_text\\":null,\\"image_url\\":\\"http:\\\\/\\\\/207.148.72.116\\\\/storage\\\\/attachments\\\\/2021\\\\/08\\\\/01\\\\/xNUPpCYgzdGFoyPyIB7gD9ueyGnc1ULloFdxPPin.jpg\\"}', '2021-08-01 12:32:40', '2021-08-01 14:21:38', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (3, 1, 4, 9, '{\\"message_text\\":null,\\"image_url\\":\\"http:\\\\/\\\\/207.148.72.116\\\\/storage\\\\/attachments\\\\/2021\\\\/08\\\\/01\\\\/mlofjiIlK8EIaypvXPNkt23Luw4gaGgnv7INMROO.jpg\\"}', '2021-08-01 12:35:08', '2021-08-01 14:21:38', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (4, 1, 4, 10, '{\\"message_text\\":null,\\"image_url\\":\\"http:\\\\/\\\\/207.148.72.116\\\\/storage\\\\/attachments\\\\/2021\\\\/08\\\\/01\\\\/DikYqSHswbEh6ffSJnHDHoUIIv1372m9LSllndZn.JPG\\"}', '2021-08-01 12:35:38', '2021-08-01 14:21:38', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (5, 1, 4, 0, '{\\"message_text\\":\\"<t>\\\\u7f51\\\\u7ad9\\\\u521b\\\\u5efa\\\\u4eba\\\\uff1f<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-01 12:37:51', '2021-08-01 14:21:38', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (6, 1, 4, 0, '{\\"message_text\\":\\"<t>\\\\u6211\\\\u4e3e\\\\u62a5<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-01 12:38:12', '2021-08-01 14:21:38', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (7, 2, 3, 0, '{\\"message_text\\":\\"<t>111<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-01 22:43:22', '2021-08-02 10:55:25', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (8, 3, 25, 0, '{\\"message_text\\":\\"<t>\\\\u9ebb\\\\u70e6\\\\u95ee\\\\u4e00\\\\u4e0b\\\\u90a3\\\\u4e2a\\\\u7f16\\\\u7a0b\\\\u8ba1\\\\u7b97\\\\u673a\\\\u91cc\\\\u9762\\\\u8c01\\\\u5389\\\\u5bb3\\\\u963f\\\\uff0c\\\\u6211\\\\u4e5f\\\\u662f\\\\u521a\\\\u5f00\\\\u59cb\\\\u5b66\\\\u4e60\\\\u60f3\\\\u54a8\\\\u8be2\\\\u4e00\\\\u4e0b<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-02 20:23:53', '2021-08-03 12:02:39', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (9, 2, 3, 0, '{\\"message_text\\":\\"<t>\\\\u7528\\\\u4e0d\\\\u7528\\\\u505a\\\\u4e00\\\\u4e2a\\\\u79c1\\\\u4fe1\\\\u5df2\\\\u8bfb\\\\u8fd9\\\\u4e2a\\\\u4e1c\\\\u897f<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-02 20:25:10', '2021-08-03 12:02:51', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (10, 2, 3, 0, '{\\"message_text\\":\\"<t>\\\\u8ba9\\\\u81ea\\\\u5df1\\\\u770b\\\\u89c1\\\\u81ea\\\\u5df1\\\\u7684\\\\u79c1\\\\u4fe1\\\\u522b\\\\u4eba\\\\u8bfb\\\\u6ca1<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-02 20:25:42', '2021-08-03 12:02:51', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (11, 2, 3, 0, '{\\"message_text\\":\\"<t>\\\\u5565\\\\u65f6\\\\u5019\\\\u770b\\\\u89c1\\\\u91cd\\\\u5927BUG\\\\u7559\\\\u8a00\\\\u7ed9\\\\u6211<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-03 16:18:10', '2021-08-03 16:32:25', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (12, 2, 3, 0, '{\\"message_text\\":\\"<t>\\\\u4f60\\\\u5565\\\\u65f6\\\\u8981\\\\u6709\\\\u65f6\\\\u95f4\\\\u628a\\\\u63a8\\\\u8350\\\\u90a3\\\\u4e2a\\\\u6253\\\\u5f00\\\\uff0c\\\\u7136\\\\u540e\\\\u8bbe\\\\u7f6e\\\\u6210\\\\u666e\\\\u901a\\\\u7528\\\\u6237\\\\u53d1\\\\u7684\\\\u4e0d\\\\u663e\\\\u793a\\\\uff0c\\\\u5176\\\\u4ed6\\\\u7528\\\\u6237\\\\u7ec4\\\\u53d1\\\\u7684\\\\u53ef\\\\u4ee5\\\\u663e\\\\u793a\\\\u5728\\\\u63a8\\\\u8350\\\\u91cc<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-03 16:19:29', '2021-08-03 16:32:25', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (13, 4, 35, 0, '{\\"message_text\\":\\"<t>\\\\u80fd\\\\u628a\\\\u6211\\\\u7684MOD\\\\u5206\\\\u4eab\\\\u8d34\\\\u9876\\\\u7f6e\\\\u5417<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-04 20:45:18', '2021-08-06 10:19:53', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (14, 5, 8, 0, '{\\"message_text\\":\\"<t>\\\\u5185\\\\u5bb9\\\\u6d89\\\\u53ca\\\\u654f\\\\u611f\\\\u8bcd\\\\u65e0\\\\u6cd5\\\\u53d1\\\\u9001\\\\u662f\\\\u600e\\\\u4e48\\\\u56de\\\\u4e8b\\\\u554a<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-04 20:50:08', '2021-08-06 10:19:42', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (15, 5, 8, 0, '{\\"message_text\\":\\"<t>\\\\u80fd\\\\u8bbe\\\\u7f6e\\\\u4e00\\\\u4e0b\\\\u5417\\\\uff0c\\\\u6211\\\\u53ea\\\\u662f\\\\u53d1\\\\u4e00\\\\u4e2aLOL\\\\u7684\\\\u6587\\\\u6863<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-04 20:50:37', '2021-08-06 10:19:42', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (16, 5, 8, 0, '{\\"message_text\\":\\"<t>\\\\u6709\\\\u4eba\\\\u5192\\\\u5145\\\\u7ba1\\\\u7406\\\\u5458\\\\u66f4\\\\u65b0\\\\u7f51\\\\u7ad9\\\\u4e0d\\\\u7ba1\\\\u5417\\\\uff1f<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-06 22:46:24', '2021-08-09 09:40:16', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (17, 5, 8, 0, '{\\"message_text\\":\\"<t>\\\\u8fd8\\\\u4e0d\\\\u8ba9\\\\u53d1\\\\u5e16<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-06 22:46:34', '2021-08-09 09:40:16', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (18, 6, 37, 0, '{\\"message_text\\":\\"<t>\\\\u6e90\\\\u7801\\\\u7ed9\\\\u6211\\\\uff0c\\\\u6211\\\\u62ff\\\\u51fa\\\\u53bb\\\\u5356\\\\u80fd\\\\u8d5a\\\\u94b1<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-08 12:41:07', '2021-08-09 09:40:24', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (19, 2, 3, 0, '{\\"message_text\\":\\"<t>http:\\\\/\\\\/207.148.72.116:8888\\\\/810145a3<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-10 00:50:14', '2021-08-10 10:40:35', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (20, 2, 3, 0, '{\\"message_text\\":\\"<t>gmf24xw<br\\\\/>\\\\n3659686<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-10 00:50:41', '2021-08-10 10:40:35', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (21, 2, 3, 0, '{\\"message_text\\":\\"<t>\\\\u5168\\\\u7aef\\\\u524d\\\\u53f0\\\\u4f18\\\\u5316\\\\u4e0e\\\\u4fee\\\\u590d<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-11 19:19:06', '2021-08-11 19:19:58', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (22, 2, 3, 0, '{\\"message_text\\":\\"<t>1. \\\\u6dfb\\\\u52a0\\\\u516c\\\\u5b89\\\\u5907\\\\u6848\\\\u4fe1\\\\u606f\\\\u3002<br\\\\/>\\\\n2. \\\\u4fee\\\\u590d\\\\u540e\\\\u53f0\\\\u4e0d\\\\u8bbe\\\\u7f6e\\\\u516c\\\\u5b89\\\\u5907\\\\u6848\\\\u4fe1\\\\u606f\\\\u7684\\\\u8bdd\\\\uff0cpc\\\\u9996\\\\u9875\\\\u53f3\\\\u4e0b\\\\u89d2\\\\u7f51\\\\u7ad9\\\\u5907\\\\u6848\\\\u4fe1\\\\u606f\\\\u4e0d\\\\u663e\\\\u793a\\\\u3002<br\\\\/>\\\\n3. \\\\u4fee\\\\u590d\\\\u56fe\\\\u6587\\\\u6df7\\\\u6392\\\\u65f6\\\\u53d1\\\\u5e03\\\\u4e00\\\\u5f20\\\\u957f\\\\u56fe\\\\uff0c\\\\u6ca1\\\\u6709\\\\u5bf9\\\\u957f\\\\u56fe\\\\u6298\\\\u53e0\\\\u8fc7\\\\u957f\\\\u7684\\\\u5185\\\\u5bb9\\\\u3002<br\\\\/>\\\\n4. \\\\u4fee\\\\u590d H5 \\\\u624b\\\\u673a\\\\u5916\\\\u90e8\\\\u6d4f\\\\u89c8\\\\u5668\\\\u517c\\\\u5bb9\\\\u6027\\\\u95ee\\\\u9898\\\\u3002<br\\\\/>\\\\n5. \\\\u4fee\\\\u590d\\\\u697c\\\\u4e2d\\\\u697c\\\\u56de\\\\u590d\\\\u7528\\\\u6237\\\\u4fe1\\\\u606f\\\\u4e0e\\\\u5185\\\\u5bb9\\\\u6ca1\\\\u5bf9\\\\u9f50\\\\u3002<br\\\\/>\\\\n6. \\\\u540e\\\\u53f0\\\\u5bf9\\\\u8c61\\\\u5b58\\\\u50a8\\\\uff08cos\\\\uff09\\\\u7684\\\\u6587\\\\u6863\\\\u9884\\\\u89c8\\\\u5f00\\\\u5173\\\\uff0c\\\\u6253\\\\u5f00\\\\u6216\\\\u5173\\\\u95ed\\\\uff0c\\\\u524d\\\\u7aef\\\\u90fd\\\\u53ef\\\\u4ee5\\\\u6b63\\\\u5e38\\\\u9884\\\\u89c8\\\\u3002<br\\\\/>\\\\n7. \\\\u4fee\\\\u590d fileUrl \\\\u56fe\\\\u7247\\\\u4e0a\\\\u4f20 bug\\\\u3002<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-11 19:19:50', '2021-08-11 19:19:58', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (23, 2, 3, 0, '{\\"message_text\\":\\"<t>PC \\\\u7aef\\\\u4f18\\\\u5316\\\\u4e0e\\\\u4fee\\\\u590d<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-11 19:19:55', '2021-08-11 19:19:58', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (24, 2, 3, 0, '{\\"message_text\\":\\"<t>1. \\\\u9996\\\\u9875\\\\u7b5b\\\\u9009\\\\u70b9\\\\u51fb\\\\u4e8c\\\\u7ea7\\\\u5206\\\\u7c7b\\\\u7684\\\\u4e00\\\\u7ea7\\\\u5206\\\\u7c7b\\\\uff0c\\\\u4e0b\\\\u5212\\\\u7ebf\\\\u79fb\\\\u9664\\\\u3002<br\\\\/>\\\\n2. \\\\u4fee\\\\u590d\\\\u4e2a\\\\u4eba\\\\u4e2d\\\\u5fc3\\\\u7ad9\\\\u70b9\\\\u4fe1\\\\u606f\\\\u6587\\\\u6848\\\\u6ca1\\\\u6709\\\\u5bf9\\\\u9f50\\\\u3002<br\\\\/>\\\\n3. \\\\u4fee\\\\u590d\\\\u5bf9\\\\u63a8\\\\u8350\\\\u5185\\\\u5bb9\\\\u8fdb\\\\u884c\\\\u5206\\\\u7c7b\\\\u7b5b\\\\u9009\\\\u65f6\\\\u4e0d\\\\u8d77\\\\u4f5c\\\\u7528\\\\u3002<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-11 19:19:59', '2021-08-11 19:20:07', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (25, 2, 3, 0, '{\\"message_text\\":\\"<t>\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\/H5\\\\u4f18\\\\u5316\\\\u4e0e\\\\u4fee\\\\u590d<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-11 19:20:04', '2021-08-11 19:20:07', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (26, 2, 3, 0, '{\\"message_text\\":\\"<t>1. \\\\u4fee\\\\u590d\\\\u53d1\\\\u5e03\\\\u4e09\\\\u5f20\\\\u957f\\\\u56fe\\\\u65f6\\\\uff0c\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\u7684\\\\u56fe\\\\u7247\\\\u6ca1\\\\u6709\\\\u5bf9\\\\u9f50\\\\uff0c\\\\u4e14H5\\\\u7684\\\\u56fe\\\\u7247\\\\u5c55\\\\u793a\\\\u89c4\\\\u5219\\\\u6709\\\\u8bef\\\\u3002<br\\\\/>\\\\n2. \\\\u4fee\\\\u590d\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\u5df1\\\\u53d1\\\\u5e03\\\\u7ea2\\\\u5305\\\\u8d34\\\\u540e\\\\uff0c\\\\u5176\\\\u4ed6\\\\u7528\\\\u6237\\\\u5728\\\\u53e6\\\\u4e00\\\\u7aef\\\\u9886\\\\u53d6\\\\u7ea2\\\\u5305\\\\u6210\\\\u529f\\\\uff0c\\\\u518d\\\\u6b21\\\\u8fdb\\\\u5165\\\\u5e16\\\\u5b50\\\\u8be6\\\\u60c5\\\\u8bc4\\\\u8bba\\\\u663e\\\\u793a\\\\u5df2\\\\u9886\\\\u53d6\\\\uff0c\\\\u7ea2\\\\u5305\\\\u8fdb\\\\u5ea6\\\\u6761\\\\u4e0d\\\\u663e\\\\u793a\\\\uff0c\\\\u5237\\\\u65b0\\\\u540e\\\\u6b63\\\\u5e38\\\\u3002<br\\\\/>\\\\n3. \\\\u4fee\\\\u590d\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\u8bc4\\\\u8bba\\\\u4ed6\\\\u4eba\\\\u60ac\\\\u8d4f\\\\u8d34\\\\uff0c\\\\u4ed6\\\\u4eba\\\\u91c7\\\\u7eb3\\\\u56de\\\\u590d\\\\u540e\\\\uff0c\\\\u8fdb\\\\u5165\\\\u5230\\\\u5e16\\\\u5b50\\\\u8be6\\\\u60c5\\\\uff0c\\\\u8bc4\\\\u8bba\\\\u663e\\\\u793a\\\\u6210\\\\u529f\\\\u9886\\\\u53d6\\\\u5230\\\\u60ac\\\\u8d4f\\\\u91d1\\\\u989d\\\\uff0c\\\\u60ac\\\\u8d4f\\\\u8d34\\\\u7684\\\\u8fdb\\\\u5ea6\\\\u6761\\\\u4e0d\\\\u663e\\\\u793a\\\\u8fdb\\\\u5ea6\\\\u3002<br\\\\/>\\\\n4. \\\\u4fee\\\\u590d\\\\u7ad9\\\\u70b9\\\\u8c03\\\\u6210\\\\u4ed8\\\\u8d39\\\\u6a21\\\\u5f0f\\\\uff0c\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\u767b\\\\u5f55\\\\u6210\\\\u529f\\\\u540e\\\\u9996\\\\u9875\\\\u6ca1\\\\u6709\\\\u63d0\\\\u793a\\\\u4ed8\\\\u8d39\\\\u52a0\\\\u5165\\\\uff0c\\\\u53d1\\\\u5e16\\\\u65f6\\\\u63d0\\\\u793a\\\\u5f53\\\\u524d\\\\u7ad9\\\\u70b9\\\\u662f\\\\u4ed8\\\\u8d39\\\\u6a21\\\\u5f0f\\\\uff0c\\\\u6d88\\\\u606f\\\\u9875\\\\u4e00\\\\u76f4\\\\u5904\\\\u4e8e\\\\u52a0\\\\u8f7d\\\\u66f4\\\\u591a\\\\u4e2d\\\\u3002<br\\\\/>\\\\n5. \\\\u4fee\\\\u590d\\\\u7ad9\\\\u70b9\\\\u4fe1\\\\u606f\\\\u6210\\\\u5458\\\\u5934\\\\u50cf\\\\u4e0e\\\\u6210\\\\u5458\\\\u5217\\\\u8868\\\\u5934\\\\u50cf\\\\u663e\\\\u793a\\\\u4e0d\\\\u4e00\\\\u81f4\\\\uff0cH5\\\\u4e5f\\\\u6709\\\\u3002<br\\\\/>\\\\n6. \\\\u4fee\\\\u590dPC\\\\u7aef\\\\u53d1\\\\u5e03\\\\u5185\\\\u5bb9\\\\u65f6\\\\u7528\\\\u7f16\\\\u8f91\\\\u5668\\\\u8fdb\\\\u884c\\\\u6587\\\\u5b57\\\\u52a0\\\\u7c97\\\\uff0c\\\\u5c0f\\\\u7a0b\\\\u5e8f\\\\u7aef\\\\u9996\\\\u9875\\\\u8be6\\\\u60c5\\\\u9875\\\\u81ea\\\\u52a8\\\\u6362\\\\u884c\\\\uff0cPC\\\\u548cH5\\\\u6b63\\\\u5e38\\\\u3002<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-11 19:20:12', '2021-08-11 19:20:17', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (27, 2, 3, 0, '{\\"message_text\\":\\"<t>\\\\u9ebb\\\\u75f9\\\\u4ed6\\\\u4eec\\\\u8bf4\\\\u6211\\\\u5f04\\\\u7684\\\\u592a\\\\u6162\\\\u4e0d\\\\u7ed9\\\\u4e86<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-12 01:19:02', '2021-08-12 10:52:29', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (28, 7, 75, 0, '{\\"message_text\\":\\"<t>\\\\u8fd9\\\\u4e2a\\\\u7f51\\\\u7ad9\\\\u5e72\\\\u5176\\\\u4ed6\\\\u7684\\\\u4e8b\\\\u60c5\\\\u5417<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-20 20:04:53', '2021-10-18 11:37:05', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (29, 7, 75, 0, '{\\"message_text\\":\\"<t>\\\\u53ef\\\\u4ee5\\\\u4e00\\\\u8d77\\\\u8d5a\\\\u94b1<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-20 20:05:11', '2021-10-18 11:37:05', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (30, 7, 75, 0, '{\\"message_text\\":\\"<t>\\\\u5e72\\\\u4e00\\\\u4e9b\\\\u5c0f\\\\u751f\\\\u610f<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-20 20:05:25', '2021-10-18 11:37:05', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (31, 7, 75, 0, '{\\"message_text\\":\\"<t>\\\\u4e0d\\\\u8d5a\\\\u94b1\\\\u7684\\\\u5417\\\\uff0c\\\\u51e0\\\\u5343\\\\u751a\\\\u81f3\\\\u4e0a\\\\u4e07\\\\uff0c\\\\u5c0f\\\\u751f\\\\u610f\\\\uff0c\\\\u5e73\\\\u5206<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-08-21 21:18:13', '2021-10-18 11:37:05', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (32, 5, 8, 0, '{\\"message_text\\":\\"<t>\\\\u4e0d\\\\u7ba1\\\\u8fd9\\\\u4e2a\\\\u7f51\\\\u7ad9\\\\u4e86\\\\u5417<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-09-21 21:25:36', '2021-10-18 11:36:54', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (33, 5, 8, 0, '{\\"message_text\\":\\"<r>\\\\u4e0d\\\\u5982\\\\u7ed9\\\\u6211\\\\u4e00\\\\u4e2a\\\\u7ba1\\\\u7406\\\\u5458\\\\u6211\\\\u5e2e\\\\u4f60\\\\u7ba1\\\\u7406<E>:qiang:<\\\\/E><\\\\/r>\\",\\"image_url\\":\\"\\"}', '2021-09-21 21:26:10', '2021-10-18 11:36:54', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (34, 8, 116, 0, '{\\"message_text\\":\\"<t>\\\\u611f\\\\u89c9\\\\u7f51\\\\u7ad9\\\\u6709\\\\u70b9\\\\u5361<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-09-30 22:28:47', '2021-10-18 11:36:47', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (35, 8, 116, 0, '{\\"message_text\\":\\"<t>\\\\u4f18\\\\u5316\\\\u4e00\\\\u4e0b\\\\u5427<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-09-30 22:28:58', '2021-10-18 11:36:47', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (36, 8, 2, 0, '{\\"message_text\\":\\"<t>\\\\u7f51\\\\u7ad9\\\\u5361\\\\u987f\\\\u662f\\\\u56e0\\\\u4e3a\\\\u6211\\\\u4eec\\\\u627f\\\\u8f7d\\\\u7684\\\\u670d\\\\u52a1\\\\u5668\\\\u4e0d\\\\u662f\\\\u5f88\\\\u597d\\\\u8fd9\\\\u4e2a\\\\u6211\\\\u4eec\\\\u53ea\\\\u80fd\\\\u8d2d\\\\u4e70\\\\u66f4\\\\u597d\\\\u7684\\\\u670d\\\\u52a1\\\\u5668<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-10-18 11:39:02', '2021-10-18 11:39:02', 0, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (37, 9, 123, 0, '{\\"message_text\\":\\"<t>\\\\u63d0\\\\u793a\\\\u6211\\\\u8d26\\\\u53f7\\\\u5f02\\\\u5e38\\\\u80fd\\\\u770b\\\\u4e00\\\\u4e0b\\\\u600e\\\\u4e48\\\\u56de\\\\u4e8b\\\\u5417<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-10-18 21:53:16', '2021-10-19 10:27:47', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (38, 10, 127, 0, '{\\"message_text\\":\\"<t>\\\\u8fd9\\\\u4e2a\\\\u7f51\\\\u7ad9\\\\u53ef\\\\u4ee5\\\\u7528\\\\u6765\\\\u8d5a\\\\u94b1\\\\uff0c\\\\u5408\\\\u4f5c\\\\u5417<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-10-18 22:10:35', '2021-10-19 10:28:10', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (39, 10, 127, 0, '{\\"message_text\\":\\"<t>\\\\u4e00\\\\u5929\\\\u4e00\\\\u4e24\\\\u767e\\\\u6ca1\\\\u95ee\\\\u9898<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-10-18 22:10:56', '2021-10-19 10:28:10', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (40, 10, 127, 0, '{\\"message_text\\":\\"<t>\\\\u8003\\\\u8651\\\\u4e00\\\\u4e0b<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-10-18 22:11:03', '2021-10-19 10:28:10', 1, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (41, 2, 3, 0, '{\\"message_text\\":\\"<t>\\\\u6211\\\\u5f04\\\\u4ed8\\\\u8d39\\\\u7528\\\\u6237\\\\u7ec4\\\\u4e86<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-12-16 14:48:40', '2021-12-16 14:48:40', 0, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (42, 2, 3, 0, '{\\"message_text\\":\\"<t>\\\\u4f60\\\\u6ce8\\\\u518c\\\\u4e2a\\\\u5c0f\\\\u53f7\\\\u53bb\\\\u4e2a\\\\u4eba\\\\u4e2d\\\\u5fc3\\\\u6709\\\\u4e2a\\\\u5347\\\\u7ea7<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-12-16 14:49:12', '2021-12-16 14:49:12', 0, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (43, 2, 3, 0, '{\\"message_text\\":\\"<t>\\\\u4f60\\\\u770b\\\\u770b\\\\u884c\\\\u4e0d\\\\u884c<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2021-12-16 14:49:19', '2021-12-16 14:49:19', 0, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (44, 11, 143, 0, '{\\"message_text\\":\\"<t>\\\\u5148\\\\u4ed8\\\\u6b3e\\\\u7684\\\\u751f\\\\u610f\\\\u505a\\\\u5417<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2022-01-20 21:55:21', '2022-01-20 21:55:21', 0, 1);
INSERT INTO evolve.dialog_message (id, dialog_id, user_id, attachment_id, message_text, created_at, updated_at, read_status, status) VALUES (45, 11, 143, 0, '{\\"message_text\\":\\"<t>\\\\u5148\\\\u7ed9\\\\u4f60\\\\u94b1<\\\\/t>\\",\\"image_url\\":\\"\\"}', '2022-01-20 21:55:26', '2022-01-20 21:55:26', 0, 1);
