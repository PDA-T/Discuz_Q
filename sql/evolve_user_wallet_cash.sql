create table user_wallet_cash
(
    id                 bigint unsigned auto_increment comment '提现 id'
        primary key,
    user_id            bigint unsigned             not null comment '提现用户 id',
    cash_sn            bigint unsigned             not null comment '提现交易编号',
    cash_charge        decimal(10, 2) unsigned     not null comment '提现手续费',
    cash_actual_amount decimal(10, 2) unsigned     not null comment '实际提现金额',
    cash_apply_amount  decimal(10, 2) unsigned     not null comment '提现申请金额',
    cash_status        tinyint unsigned default 0  not null comment '提现状态：1：待审核，2：审核通过，3：审核不通过，4：待打款， 5，已打款， 6：打款失败',
    cash_mobile        varchar(20)      default '' not null comment '提现到账手机号码',
    cash_type          tinyint          default 1  not null comment '提现转账类型：0：人工转账， 1：企业零钱付款',
    remark             varchar(255)     default '' not null comment '备注或原因',
    trade_time         datetime                    null comment '交易时间',
    trade_no           varchar(64)                 null comment '交易号',
    error_code         varchar(64)                 null comment '错误代码',
    error_message      varchar(64)                 null comment '交易失败描叙',
    refunds_status     tinyint unsigned default 0  not null comment '返款状态，0未返款，1已返款',
    created_at         datetime                    not null comment '创建时间',
    updated_at         datetime                    not null comment '更新时间',
    receive_account    varchar(255)     default '' not null comment '收款账号'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 2;

INSERT INTO evolve.user_wallet_cash (id, user_id, cash_sn, cash_charge, cash_actual_amount, cash_apply_amount, cash_status, cash_mobile, cash_type, remark, trade_time, trade_no, error_code, error_message, refunds_status, created_at, updated_at, receive_account) VALUES (1, 1, 202108218698102515, 0.00, 10.00, 10.00, 3, '', 0, '提现测试完成', null, '', '', '', 1, '2021-08-21 21:30:51', '2021-08-21 21:32:27', '');
