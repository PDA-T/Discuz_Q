create table user_wallet_logs
(
    id                      bigint unsigned auto_increment comment '钱包明细 id'
        primary key,
    user_id                 bigint unsigned              not null comment '明细所属用户 id',
    source_user_id          bigint unsigned   default 0  not null comment '金额来源用户',
    change_available_amount decimal(10, 2)               not null comment '变动可用金额',
    change_freeze_amount    decimal(10, 2)               not null comment '变动冻结金额',
    change_type             smallint unsigned default 0  not null comment '10：提现冻结，11：提现成功，12：撤销提现解冻； 31：打赏收入，32：人工收入； 50：人工支出',
    change_desc             varchar(255)      default '' not null comment '变动描述',
    order_id                bigint unsigned              null comment '关联订单记录ID',
    user_wallet_cash_id     bigint unsigned              null comment '关联提现记录ID',
    question_id             bigint unsigned   default 0  not null comment '关联问答记录 id',
    thread_id               bigint unsigned              null comment '关联的threads主键ID',
    post_id                 bigint unsigned              null comment '关联的posts主键ID',
    created_at              datetime                     not null comment '创建时间',
    updated_at              datetime                     not null comment '更新时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 11;

INSERT INTO evolve.user_wallet_logs (id, user_id, source_user_id, change_available_amount, change_freeze_amount, change_type, change_desc, order_id, user_wallet_cash_id, question_id, thread_id, post_id, created_at, updated_at) VALUES (1, 1, 0, 10.00, 0.00, 32, '测试使用', null, null, 0, 0, 0, '2021-08-21 21:29:01', '2021-08-21 21:29:01');
INSERT INTO evolve.user_wallet_logs (id, user_id, source_user_id, change_available_amount, change_freeze_amount, change_type, change_desc, order_id, user_wallet_cash_id, question_id, thread_id, post_id, created_at, updated_at) VALUES (2, 1, 0, -10.00, 10.00, 10, '提现冻结', null, 1, 0, 0, 0, '2021-08-21 21:30:52', '2021-08-21 21:30:52');
INSERT INTO evolve.user_wallet_logs (id, user_id, source_user_id, change_available_amount, change_freeze_amount, change_type, change_desc, order_id, user_wallet_cash_id, question_id, thread_id, post_id, created_at, updated_at) VALUES (3, 3, 0, 5.00, 0.00, 32, '测试使用', null, null, 0, 0, 0, '2021-08-21 21:31:29', '2021-08-21 21:31:29');
INSERT INTO evolve.user_wallet_logs (id, user_id, source_user_id, change_available_amount, change_freeze_amount, change_type, change_desc, order_id, user_wallet_cash_id, question_id, thread_id, post_id, created_at, updated_at) VALUES (4, 1, 0, 10.00, -10.00, 12, '审核不通过，退回', null, 1, 0, 0, 0, '2021-08-21 21:32:27', '2021-08-21 21:32:27');
INSERT INTO evolve.user_wallet_logs (id, user_id, source_user_id, change_available_amount, change_freeze_amount, change_type, change_desc, order_id, user_wallet_cash_id, question_id, thread_id, post_id, created_at, updated_at) VALUES (5, 3, 0, -5.00, 0.00, 50, '测试删减余额', null, null, 0, 0, 0, '2021-08-21 21:35:15', '2021-08-21 21:35:15');
INSERT INTO evolve.user_wallet_logs (id, user_id, source_user_id, change_available_amount, change_freeze_amount, change_type, change_desc, order_id, user_wallet_cash_id, question_id, thread_id, post_id, created_at, updated_at) VALUES (6, 2, 0, 6666.00, 0.00, 32, '人工收入', null, null, 0, 0, 0, '2021-10-19 10:31:52', '2021-10-19 10:31:52');
INSERT INTO evolve.user_wallet_logs (id, user_id, source_user_id, change_available_amount, change_freeze_amount, change_type, change_desc, order_id, user_wallet_cash_id, question_id, thread_id, post_id, created_at, updated_at) VALUES (7, 3, 0, 50.00, 0.00, 32, '测试', null, null, 0, 0, 0, '2021-12-23 17:28:07', '2021-12-23 17:28:07');
INSERT INTO evolve.user_wallet_logs (id, user_id, source_user_id, change_available_amount, change_freeze_amount, change_type, change_desc, order_id, user_wallet_cash_id, question_id, thread_id, post_id, created_at, updated_at) VALUES (8, 3, 0, -50.00, 0.00, 51, '付费升级用户组', 6, null, 0, 0, 0, '2021-12-23 17:29:06', '2021-12-23 17:29:06');
INSERT INTO evolve.user_wallet_logs (id, user_id, source_user_id, change_available_amount, change_freeze_amount, change_type, change_desc, order_id, user_wallet_cash_id, question_id, thread_id, post_id, created_at, updated_at) VALUES (9, 3, 0, 3000.00, 0.00, 32, '测试', null, null, 0, 0, 0, '2022-01-20 21:25:05', '2022-01-20 21:25:05');
INSERT INTO evolve.user_wallet_logs (id, user_id, source_user_id, change_available_amount, change_freeze_amount, change_type, change_desc, order_id, user_wallet_cash_id, question_id, thread_id, post_id, created_at, updated_at) VALUES (10, 3, 0, -3000.00, 0.00, 51, '付费升级用户组', 9, null, 0, 0, 0, '2022-01-20 21:27:11', '2022-01-20 21:27:11');
