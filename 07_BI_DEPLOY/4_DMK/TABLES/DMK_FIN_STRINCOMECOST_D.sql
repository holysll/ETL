DROP TABLE IF EXISTS DMK.DMK_FIN_STRINCOMECOST_D;
CREATE TABLE IF NOT EXISTS DMK.DMK_FIN_STRINCOMECOST_D(
PERIOD_WID                    BIGINT                             COMMENT  '期间ID',
YEAR                          BIGINT                             COMMENT  '年',
MONTH                         BIGINT                             COMMENT  '月',
OC_ID                         STRING                             COMMENT  '运营中心ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
BASE_ID                       STRING                             COMMENT  '基地ID',
PROJ_ID                       STRING                             COMMENT  '项目ID',
VCL_MANAGER_INCOME_AMT        decimal(32,8)                      COMMENT  '整车管理费收入',
VCL_RENT_INCOME_AMT           decimal(32,8)                      COMMENT  '整车租金收入',
SECURE_CLEAN_INCOME_AMT       decimal(32,8)                      COMMENT  '整车保安保洁收入',
STORE_MANAGER_COST_AMT        decimal(32,8)                      COMMENT  '仓储管理成本',
RENT_COST_AMT                 decimal(32,8)                      COMMENT  '租金成本',
SECURE_CLEAN_COST_AMT         decimal(32,8)                      COMMENT  '保安保洁成本',
SOURCE_CODE                   STRING                             COMMENT  'DMK_[源表]',
INTEGRATION_ID                STRING                             COMMENT  'SOURCE_CODE || _ || ORDER_ID',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  'TABLE_NAME1[yyyy-MM-dd HH:mm:dd],…',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '仓储收入成本日汇总'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;