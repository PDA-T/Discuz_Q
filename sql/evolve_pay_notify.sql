create table pay_notify
(
    id         bigint unsigned auto_increment comment '支付通知 id'
        primary key,
    payment_sn varchar(20)      default '' not null comment '支付编号',
    user_id    bigint unsigned             not null comment '付款人 id',
    trade_no   varchar(64)      default '' not null comment '商户平台交易号',
    status     tinyint unsigned default 0  not null comment '0未接受到通知，1收到通知',
    created_at datetime                    not null comment '创建时间',
    updated_at datetime                    not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 10;

INSERT INTO evolve.pay_notify (id, payment_sn, user_id, trade_no, status, created_at, updated_at) VALUES (1, '202108062410255995', 37, '', 0, '2021-08-06 12:46:55', '2021-08-06 12:46:55');
INSERT INTO evolve.pay_notify (id, payment_sn, user_id, trade_no, status, created_at, updated_at) VALUES (2, '202110188753981019', 121, '', 0, '2021-10-18 09:24:21', '2021-10-18 09:24:21');
INSERT INTO evolve.pay_notify (id, payment_sn, user_id, trade_no, status, created_at, updated_at) VALUES (3, '202112171952571005', 136, '', 0, '2021-12-17 22:51:32', '2021-12-17 22:51:32');
INSERT INTO evolve.pay_notify (id, payment_sn, user_id, trade_no, status, created_at, updated_at) VALUES (4, '202112231210157551', 3, '', 0, '2021-12-23 17:26:54', '2021-12-23 17:26:54');
INSERT INTO evolve.pay_notify (id, payment_sn, user_id, trade_no, status, created_at, updated_at) VALUES (5, '202112237910151975', 3, '', 0, '2021-12-23 17:28:46', '2021-12-23 17:28:46');
INSERT INTO evolve.pay_notify (id, payment_sn, user_id, trade_no, status, created_at, updated_at) VALUES (6, '202112236154102494', 3, '202112236154102494', 1, '2021-12-23 17:28:54', '2021-12-23 17:29:06');
INSERT INTO evolve.pay_notify (id, payment_sn, user_id, trade_no, status, created_at, updated_at) VALUES (7, '202201206951555752', 3, '', 0, '2022-01-20 01:11:31', '2022-01-20 01:11:31');
INSERT INTO evolve.pay_notify (id, payment_sn, user_id, trade_no, status, created_at, updated_at) VALUES (8, '202201203448551015', 3, '', 0, '2022-01-20 21:26:56', '2022-01-20 21:26:56');
INSERT INTO evolve.pay_notify (id, payment_sn, user_id, trade_no, status, created_at, updated_at) VALUES (9, '202201209056975251', 3, '202201209056975251', 1, '2022-01-20 21:27:04', '2022-01-20 21:27:11');
