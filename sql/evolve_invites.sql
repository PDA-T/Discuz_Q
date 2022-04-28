create table invites
(
    id         bigint unsigned auto_increment comment '邀请 id'
        primary key,
    group_id   bigint unsigned             not null comment '默认用户组 id',
    type       tinyint unsigned default 1  not null comment '类型:1普通用户2管理员',
    code       char(32)         default '' not null comment '邀请码',
    dateline   int unsigned     default 0  not null comment '邀请码生效时间',
    endtime    int unsigned     default 0  not null comment '邀请码结束时间',
    user_id    bigint unsigned             not null comment '邀请用户 id',
    to_user_id bigint unsigned  default 0  not null comment '被邀请用户 id',
    status     tinyint unsigned default 1  not null comment '邀请码状态:0失效1未使用2已使用3已过期',
    created_at datetime                    not null comment '创建时间',
    updated_at datetime                    not null comment '更新时间',
    constraint uk_code
        unique (code)
)
    collate = utf8mb4_unicode_ci
    auto_increment = 3;

create index idx_user_id
    on invites (user_id);

INSERT INTO evolve.invites (id, group_id, type, code, dateline, endtime, user_id, to_user_id, status, created_at, updated_at) VALUES (1, 10, 1, 'eRLgUCxbqTScryETr0mMxnsnv7Wc4rVL', 1627746100, 1628350900, 1, 0, 3, '2021-07-31 23:41:40', '2022-01-04 02:41:02');
INSERT INTO evolve.invites (id, group_id, type, code, dateline, endtime, user_id, to_user_id, status, created_at, updated_at) VALUES (2, 1, 1, 'wWsRmiBUt5gTdf51vvj2faigjIfRlyO0', 1627746803, 1628351603, 1, 0, 3, '2021-07-31 23:53:23', '2022-01-04 02:41:02');
