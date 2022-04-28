create table group_paid_users
(
    id              bigint unsigned auto_increment comment '自增id'
        primary key,
    user_id         bigint unsigned            not null comment '所属用户',
    group_id        bigint unsigned            not null comment '用户组 id',
    order_id        bigint unsigned  default 0 not null comment '订单 id',
    operator_id     bigint unsigned            null comment '操作人',
    delete_type     tinyint unsigned default 0 not null comment '删除类型：1到期删除，2管理员修改，3用户复购',
    expiration_time datetime                   not null comment '用户组到期时间',
    created_at      datetime                   not null comment '创建时间',
    updated_at      datetime                   not null comment '更新时间',
    deleted_at      datetime                   null comment '删除时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 3;

INSERT INTO evolve.group_paid_users (id, user_id, group_id, order_id, operator_id, delete_type, expiration_time, created_at, updated_at, deleted_at) VALUES (1, 3, 16, 6, null, 3, '2022-01-23 17:29:06', '2021-12-23 17:29:06', '2022-01-20 21:27:11', '2022-01-20 21:27:11');
INSERT INTO evolve.group_paid_users (id, user_id, group_id, order_id, operator_id, delete_type, expiration_time, created_at, updated_at, deleted_at) VALUES (2, 3, 17, 9, null, 0, '2022-02-20 21:27:11', '2022-01-20 21:27:11', '2022-01-20 21:27:11', null);
