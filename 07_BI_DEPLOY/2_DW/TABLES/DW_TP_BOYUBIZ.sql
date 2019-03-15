DROP TABLE IF EXISTS DW.DW_TP_BOYUBIZ;
CREATE TABLE IF NOT EXISTS DW.DW_TP_BOYUBIZ(
PERIOD_WID                    BIGINT                             COMMENT  '日期维ID',
YEAR                          STRING                             COMMENT  '年度',
MONTH                         STRING                             COMMENT  '月份',
PROJ_NAME                     STRING                             COMMENT  '项目名称',
REMARK                        STRING                             COMMENT  '备注',
BIZ_QTY                       decimal(32,8)                      COMMENT  '业务量',
BIZ_QTY_PER_CAR               decimal(32,8)                      COMMENT  '业务量次',
BIZ_INCOME                    decimal(32,8)                      COMMENT  '营业收入',
TRANS_COST                    decimal(32,8)                      COMMENT  '运输成本',
TRUCK_DEPRECIATION            decimal(32,8)                      COMMENT  '大车折旧',
SOURCE_CODE                   STRING                             COMMENT  '源系统标识',
INTEGRATION_ID                STRING                             COMMENT  '记录唯一标识',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  '原系统记录创建时间',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '博宇业务数据'
PARTITIONED BY(PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;