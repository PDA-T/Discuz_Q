create table plugin_shop_wxshop_products
(
    id               bigint unsigned auto_increment comment '自增id'
        primary key,
    app_id           varchar(64)                         not null comment '商店appid',
    product_id       varchar(128)                        not null comment '微信小商店商品id',
    title            varchar(256)                        not null comment '商品名',
    image_path       varchar(256)                        not null comment '商品图片',
    price            varchar(32)                         not null comment '价格',
    path             varchar(128)                        not null comment '商品原path',
    detail_url       varchar(512)                        not null comment '微信url，小程序，h5直接跳',
    detail_qrcode    varchar(512)                        not null comment '外部url，扫码跳',
    is_remote        int                                 not null comment '是否放在远程0不1是',
    attach_file_name varchar(512)                        not null comment '附件文件名',
    attach_file_path varchar(512)                        not null comment '附件全路径',
    detail_scheme    varchar(512)                        not null comment '外部url，点击跳转',
    created_at       timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_at       timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    constraint index_app_product_id
        unique (app_id, product_id)
)
    collate = utf8mb4_unicode_ci;

