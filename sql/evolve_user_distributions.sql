create table user_distributions
(
    id             bigint unsigned auto_increment
        primary key,
    pid            bigint unsigned              null comment '父级id',
    user_id        bigint unsigned              null comment '用户ID',
    be_scale       double(3, 1)     default 0.0 not null comment '受邀时的分成比例',
    level          tinyint          default 1   not null comment '当前用户所处深度',
    is_subordinate tinyint unsigned default 0   not null comment '是否可以 推广下线',
    is_commission  tinyint unsigned default 0   not null comment '是否可以 收入提成',
    updated_at     datetime                     not null comment '更新时间',
    created_at     datetime                     not null comment '创建时间',
    constraint user_distributions_user_id_foreign
        foreign key (user_id) references users (id)
            on delete cascade
)
    collate = utf8mb4_unicode_ci;

create index idx_user
    on user_distributions (user_id);

