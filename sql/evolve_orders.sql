create table orders
(
    id                 bigint unsigned auto_increment comment '订单 id'
        primary key,
    order_sn           char(22)                default ''   not null comment '订单编号',
    payment_sn         varchar(20)             default ''   not null comment '支付编号',
    amount             decimal(10, 2) unsigned              not null comment '订单总金额',
    master_amount      decimal(10, 2) unsigned default 0.00 not null comment '站长分成金额',
    author_amount      decimal(10, 2) unsigned default 0.00 not null comment '作者分成金额',
    third_party_amount decimal(8, 2) unsigned  default 0.00 not null comment '第三者收益金额',
    be_scale           double(3, 1)            default 0.0  not null comment '作者受邀时的分成比例',
    user_id            bigint unsigned                      not null comment '付款人 id',
    payee_id           bigint unsigned                      not null comment '收款人 id',
    third_party_id     bigint unsigned                      null comment '第三者收益人 id',
    type               tinyint unsigned        default 0    not null comment '交易类型：1注册、2打赏、3付费主题、4付费用户组',
    group_id           bigint unsigned                      null comment '用户组 id',
    thread_id          bigint unsigned                      null comment '主题 id',
    status             tinyint unsigned        default 0    not null comment '订单状态：0待付款；1已付款；2.取消订单；3支付失败；4订单过期',
    payment_type       smallint unsigned       default 0    not null comment '付款方式：微信（10：pc扫码，11：h5支付，12：微信内支付',
    is_anonymous       tinyint unsigned        default 0    not null comment '是否匿名(0否1是)',
    post_id            bigint unsigned         default 0    not null comment '关联的posts主键ID',
    refund             decimal(10, 2) unsigned default 0.00 not null comment '退款金额',
    expired_at         datetime                             null comment '付费注册过期时长',
    created_at         datetime                             not null comment '创建时间',
    updated_at         datetime                             not null comment '更新时间',
    return_at          timestamp                            null comment '退款时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 10;

create index orders_thread_id_index
    on orders (thread_id);

INSERT INTO evolve.orders (id, order_sn, payment_sn, amount, master_amount, author_amount, third_party_amount, be_scale, user_id, payee_id, third_party_id, type, group_id, thread_id, status, payment_type, is_anonymous, post_id, refund, expired_at, created_at, updated_at, return_at) VALUES (1, '2021080612465510255999', '202108062410255995', 50.00, 0.00, 0.00, 0.00, 0, 37, 2, 0, 2, null, 16, 0, 0, 0, 0, 0.00, null, '2021-08-06 12:46:55', '2021-08-06 12:46:55', null);
INSERT INTO evolve.orders (id, order_sn, payment_sn, amount, master_amount, author_amount, third_party_amount, be_scale, user_id, payee_id, third_party_id, type, group_id, thread_id, status, payment_type, is_anonymous, post_id, refund, expired_at, created_at, updated_at, return_at) VALUES (2, '2021101809242153981019', '202110188753981019', 500.00, 0.00, 0.00, 0.00, 0, 121, 3, 0, 3, null, 149, 0, 0, 0, 0, 0.00, null, '2021-10-18 09:24:21', '2021-10-18 09:24:21', null);
INSERT INTO evolve.orders (id, order_sn, payment_sn, amount, master_amount, author_amount, third_party_amount, be_scale, user_id, payee_id, third_party_id, type, group_id, thread_id, status, payment_type, is_anonymous, post_id, refund, expired_at, created_at, updated_at, return_at) VALUES (3, '2021121722513252571009', '202112171952571005', 50.00, 0.00, 0.00, 0.00, 0, 136, 0, 0, 4, 16, null, 0, 0, 0, 0, 0.00, null, '2021-12-17 22:51:32', '2021-12-17 22:51:32', null);
INSERT INTO evolve.orders (id, order_sn, payment_sn, amount, master_amount, author_amount, third_party_amount, be_scale, user_id, payee_id, third_party_id, type, group_id, thread_id, status, payment_type, is_anonymous, post_id, refund, expired_at, created_at, updated_at, return_at) VALUES (4, '2021122317265410157564', '202112231210157551', 50.00, 0.00, 0.00, 0.00, 0, 3, 0, 0, 4, 16, null, 0, 0, 0, 0, 0.00, null, '2021-12-23 17:26:54', '2021-12-23 17:26:54', null);
INSERT INTO evolve.orders (id, order_sn, payment_sn, amount, master_amount, author_amount, third_party_amount, be_scale, user_id, payee_id, third_party_id, type, group_id, thread_id, status, payment_type, is_anonymous, post_id, refund, expired_at, created_at, updated_at, return_at) VALUES (5, '2021122317284610151975', '202112237910151975', 500.00, 0.00, 0.00, 0.00, 0, 3, 0, 0, 4, 13, null, 0, 0, 0, 0, 0.00, null, '2021-12-23 17:28:46', '2021-12-23 17:28:46', null);
INSERT INTO evolve.orders (id, order_sn, payment_sn, amount, master_amount, author_amount, third_party_amount, be_scale, user_id, payee_id, third_party_id, type, group_id, thread_id, status, payment_type, is_anonymous, post_id, refund, expired_at, created_at, updated_at, return_at) VALUES (6, '2021122317285454102495', '202112236154102494', 50.00, 0.00, 0.00, 0.00, 0, 3, 0, 0, 4, 16, null, 1, 20, 0, 0, 0.00, null, '2021-12-23 17:28:54', '2021-12-23 17:29:06', null);
INSERT INTO evolve.orders (id, order_sn, payment_sn, amount, master_amount, author_amount, third_party_amount, be_scale, user_id, payee_id, third_party_id, type, group_id, thread_id, status, payment_type, is_anonymous, post_id, refund, expired_at, created_at, updated_at, return_at) VALUES (7, '2022012001113151555755', '202201206951555752', 3000.00, 0.00, 0.00, 0.00, 0, 3, 0, 0, 4, 17, null, 4, 0, 0, 0, 0.00, null, '2022-01-20 01:11:31', '2022-01-21 01:12:01', null);
INSERT INTO evolve.orders (id, order_sn, payment_sn, amount, master_amount, author_amount, third_party_amount, be_scale, user_id, payee_id, third_party_id, type, group_id, thread_id, status, payment_type, is_anonymous, post_id, refund, expired_at, created_at, updated_at, return_at) VALUES (8, '2022012021265648551015', '202201203448551015', 5000.00, 0.00, 0.00, 0.00, 0, 3, 0, 0, 4, 14, null, 4, 0, 0, 0, 0.00, null, '2022-01-20 21:26:56', '2022-01-21 21:27:01', null);
INSERT INTO evolve.orders (id, order_sn, payment_sn, amount, master_amount, author_amount, third_party_amount, be_scale, user_id, payee_id, third_party_id, type, group_id, thread_id, status, payment_type, is_anonymous, post_id, refund, expired_at, created_at, updated_at, return_at) VALUES (9, '2022012021270456975253', '202201209056975251', 3000.00, 0.00, 0.00, 0.00, 0, 3, 0, 0, 4, 17, null, 1, 20, 0, 0, 0.00, null, '2022-01-20 21:27:04', '2022-01-20 21:27:11', null);
