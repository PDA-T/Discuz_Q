create table user_sign_in_fields
(
    id          bigint unsigned auto_increment comment '自增id'
        primary key,
    user_id     bigint unsigned                        not null comment '用户user_id',
    name        varchar(20)                            not null comment '用户端显示的字段名称',
    type        tinyint      default 0                 not null comment '0:单行文本框 1:多行文本框 2:单选 3:复选 4:图片上传 5:附件上传',
    fields_ext  text                                   not null comment '字段扩展信息，Json表示选项内容',
    fields_desc text                                   not null comment '字段介绍',
    remark      varchar(200) default ''                not null comment '审核意见',
    sort        tinyint      default 1                 not null comment '自定义显示顺序',
    status      tinyint      default 1                 not null comment '0:废弃 1:待审核 2:驳回 3:审核通过',
    required    tinyint      default 1                 not null comment '是否必填项 0:否 1:是',
    created_at  timestamp    default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at  timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

create index user_sign_in_fields_user_id_index
    on user_sign_in_fields (user_id);

