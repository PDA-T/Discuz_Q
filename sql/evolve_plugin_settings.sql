create table plugin_settings
(
    id            bigint unsigned auto_increment comment '自增id'
        primary key,
    app_id        varchar(100)                        not null comment '插件应用id',
    app_name      varchar(100)                        not null comment '插件唯一英文名',
    type          tinyint                             not null comment '插件类型',
    private_value text                                not null comment '私有数据',
    public_value  text                                not null comment 'JSON存储配置信息',
    created_at    timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at    timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    constraint plugin_settings_app_id_unique
        unique (app_id),
    constraint plugin_settings_app_name_unique
        unique (app_name)
)
    collate = utf8mb4_unicode_ci;

create index plugin_settings_app_id_type_index
    on plugin_settings (app_id, type);

