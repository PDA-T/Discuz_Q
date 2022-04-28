create table attachments_share
(
    sign           varchar(50)                                 not null comment '唯一标识',
    attachments_id bigint unsigned                             not null comment '附件id',
    user_id        bigint unsigned                             not null comment '用户id',
    download_count int               default 0                 null comment '下载次数',
    is_downloaded  smallint unsigned default 0                 not null comment '是否下载 0没有下载 1已下载',
    code           varchar(6)                                  null comment '验证码',
    created_at     timestamp         default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at     timestamp         default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    expired_at     timestamp                                   null comment '过期时间'
)
    collate = utf8mb4_unicode_ci;

INSERT INTO evolve.attachments_share (sign, attachments_id, user_id, download_count, is_downloaded, code, created_at, updated_at, expired_at) VALUES ('9b7f4c0e7aeb51af974e6168ec1b6a76', 26, 35, 0, 0, null, '2021-08-04 20:37:20', '2021-08-04 20:37:20', '2021-08-04 20:47:20');
INSERT INTO evolve.attachments_share (sign, attachments_id, user_id, download_count, is_downloaded, code, created_at, updated_at, expired_at) VALUES ('2486bfb3f2c4aedc0f78784c1eefc621', 26, 2, 1, 0, null, '2021-08-06 11:57:50', '2021-08-06 11:57:51', '2021-08-06 12:07:50');
INSERT INTO evolve.attachments_share (sign, attachments_id, user_id, download_count, is_downloaded, code, created_at, updated_at, expired_at) VALUES ('4dac340058eb8e9f08a1a27d8f9e3032', 26, 2, 0, 0, null, '2021-08-06 11:59:03', '2021-08-06 11:59:03', '2021-08-06 12:09:03');
INSERT INTO evolve.attachments_share (sign, attachments_id, user_id, download_count, is_downloaded, code, created_at, updated_at, expired_at) VALUES ('e8f130ac5d1b431a730361f8b8be0d23', 26, 2, 1, 0, null, '2021-08-06 11:59:05', '2021-08-06 11:59:06', '2021-08-06 12:09:05');
