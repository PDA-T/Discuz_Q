create table plugin_group_permission
(
    id         bigint unsigned auto_increment comment '自增id'
        primary key,
    group_id   int                                 not null comment '用户组id',
    app_id     varchar(100)                        not null comment '插件id',
    permission varchar(100)                        not null comment '权限描述符',
    status     smallint  default 1                 not null comment '0 关闭 1 启用',
    created_at timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 17;

create index plugin_group_permission_app_id_index
    on plugin_group_permission (app_id);

create index plugin_group_permission_permission_index
    on plugin_group_permission (permission);

INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (1, 1, '612f4217ae890', 'canInsert', 1, '2021-09-30 22:16:05', '2021-09-30 22:16:05');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (2, 10, '612f4217ae890', 'canInsert', 1, '2021-09-30 22:16:05', '2021-09-30 22:16:05');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (3, 11, '612f4217ae890', 'canInsert', 1, '2021-09-30 22:16:05', '2021-09-30 22:16:05');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (4, 12, '612f4217ae890', 'canInsert', 1, '2021-09-30 22:16:05', '2021-09-30 22:16:05');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (5, 10, '61540fef8f4de8', 'canInsert', 1, '2021-11-12 20:17:57', '2021-11-12 20:17:57');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (6, 12, '61540fef8f4de8', 'canInsert', 1, '2021-11-12 20:18:16', '2021-11-12 20:18:16');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (7, 13, '612f4217ae890', 'canInsert', 1, '2021-12-16 14:28:06', '2021-12-16 14:28:06');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (8, 13, '61540fef8f4de8', 'canInsert', 1, '2021-12-16 14:28:06', '2021-12-16 14:28:06');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (9, 14, '612f4217ae890', 'canInsert', 1, '2021-12-16 14:30:25', '2021-12-16 14:30:25');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (10, 14, '61540fef8f4de8', 'canInsert', 1, '2021-12-16 14:30:25', '2021-12-16 14:30:25');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (11, 15, '612f4217ae890', 'canInsert', 1, '2021-12-16 14:38:20', '2021-12-16 14:38:20');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (12, 15, '61540fef8f4de8', 'canInsert', 1, '2021-12-16 14:38:20', '2021-12-16 14:38:20');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (13, 16, '612f4217ae890', 'canInsert', 1, '2021-12-16 14:40:45', '2021-12-16 14:40:45');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (14, 16, '61540fef8f4de8', 'canInsert', 1, '2021-12-16 14:40:45', '2021-12-16 14:40:45');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (15, 17, '612f4217ae890', 'canInsert', 1, '2021-12-16 14:45:02', '2021-12-16 14:45:02');
INSERT INTO evolve.plugin_group_permission (id, group_id, app_id, permission, status, created_at, updated_at) VALUES (16, 17, '61540fef8f4de8', 'canInsert', 1, '2021-12-16 14:45:02', '2021-12-16 14:45:02');
