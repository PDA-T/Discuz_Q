create table order_children
(
    id        bigint unsigned auto_increment comment '自增id'
        primary key,
    order_sn  char(22)                default ''   not null comment '订单编号',
    thread_id bigint unsigned         default 0    null comment '关联的threads主键ID',
    type      int unsigned                         not null comment '订单类型：1注册，2打赏，3购买主题，4购买权限组，5付费提问，6问答围观，7购买附件，8站点付费，9红包，10悬赏，11合并订单',
    status    int unsigned            default 1    not null comment '订单状态：0待付款，1已付款，2取消，3支付失败，4过期，5部分退款，10全额退款，11异常订单',
    amount    decimal(10, 2) unsigned              not null comment '金额',
    refund    decimal(10, 2) unsigned default 0.00 not null comment '退款金额',
    return_at timestamp                            null comment '退款时间'
)
    collate = utf8mb4_unicode_ci;

