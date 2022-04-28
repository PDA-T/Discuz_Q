create table finance
(
    id                bigint unsigned auto_increment comment '自增ID'
        primary key,
    income            decimal(10, 2) unsigned not null comment '用户充值金额',
    withdrawal        decimal(10, 2) unsigned not null comment '用户提现金额',
    order_count       int unsigned            not null comment '订单数量',
    order_amount      decimal(10, 2) unsigned not null comment '订单金额',
    total_profit      decimal(10, 2) unsigned not null comment '平台盈利',
    register_profit   decimal(10, 2) unsigned not null comment '注册收入',
    master_portion    decimal(10, 2) unsigned not null comment '打赏贴的分成',
    withdrawal_profit decimal(10, 2) unsigned not null comment '提现手续费收入',
    created_at        date                    not null comment '创建时间'
)
    collate = utf8mb4_unicode_ci
    auto_increment = 82;

INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (1, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-03');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (2, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-04');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (3, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-05');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (4, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-06');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (5, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-07');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (6, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-08');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (7, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-09');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (8, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-10');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (9, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-11');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (10, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-12');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (11, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-13');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (12, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-14');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (13, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-15');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (14, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-16');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (15, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-17');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (16, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-18');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (17, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-19');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (18, 3000.00, 0.00, 3, 3000.00, 0.00, 0.00, 0.00, 0.00, '2022-01-20');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (19, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-21');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (20, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-22');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (21, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-23');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (22, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-24');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (23, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-25');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (24, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-26');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (25, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-27');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (26, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-28');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (27, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-29');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (28, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-30');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (29, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-01-31');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (30, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-01');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (31, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-02');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (32, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-03');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (33, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-04');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (34, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-05');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (35, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-06');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (36, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-07');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (37, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-08');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (38, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-09');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (39, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-10');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (40, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-11');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (41, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-12');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (42, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-13');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (43, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-14');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (44, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-15');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (45, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-16');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (46, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-17');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (47, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-18');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (48, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-19');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (49, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-20');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (50, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-21');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (51, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-22');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (52, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-23');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (53, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-24');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (54, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-25');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (55, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-26');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (56, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-27');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (57, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-02-28');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (58, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-01');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (59, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-02');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (60, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-03');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (61, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-04');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (62, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-05');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (63, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-06');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (64, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-07');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (65, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-08');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (66, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-09');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (67, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-10');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (68, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-11');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (69, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-12');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (70, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-13');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (71, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-14');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (72, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-15');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (73, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-16');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (74, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-17');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (75, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-18');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (76, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-19');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (77, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-20');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (78, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-21');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (79, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-22');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (80, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-23');
INSERT INTO evolve.finance (id, income, withdrawal, order_count, order_amount, total_profit, register_profit, master_portion, withdrawal_profit, created_at) VALUES (81, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 0.00, '2022-03-24');
