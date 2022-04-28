create table admin_sign_in_fields
(
    id          bigint unsigned auto_increment comment '自增id'
        primary key,
    name        varchar(20)                         not null comment '用户端显示的字段名称',
    type        tinyint   default 0                 not null comment '0:单行文本框 1:多行文本框 2:单选 3:复选 4:图片上传 5:附件上传',
    fields_ext  text                                not null comment '字段扩展信息，Json表示选项内容',
    fields_desc text                                not null comment '字段介绍',
    sort        tinyint   default 1                 not null comment '自定义显示顺序',
    status      tinyint   default 1                 not null comment '-1:未启用 0:删除 1：启用',
    required    tinyint   default 1                 not null comment '是否必填项 0:否 1:是',
    created_at  timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at  timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    collate = utf8mb4_unicode_ci;

