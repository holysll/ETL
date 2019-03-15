DROP TABLE IF EXISTS DMR.DMR_OV_OPERATE_TWO_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_OPERATE_TWO_M(
MONTH_ID                      STRING                             COMMENT  '月份ID',
ORG_ID                        STRING                             COMMENT  '组织ID',
ORG_TYPE                      STRING                             COMMENT  '组织类型',
ORG_NAME                      STRING                             COMMENT  '组织名称',
CUR_M_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  '当月市场拓展收入金额',
LST_TQ_M_MKT_EXP_INCOME_AMT   DECIMAL(32,8)                      COMMENT  '去年同期月市场拓展收入金额',
CUR_M_PLAN_MKT_EXP_INCOME_AMT DECIMAL(32,8)                      COMMENT  '当月计划市场拓展收入金额',
CUR_M_BIZ_INCOME_AMT          DECIMAL(32,8)                      COMMENT  '当月营业收入金额',
CUR_M_HR_FEE_RATE             DECIMAL(32,8)                      COMMENT  '当月人事费用率',
CUR_M_HR_FEE_RATE_TARGT       DECIMAL(32,8)                      COMMENT  '当月人事费用率目标值',
CUR_M_BIZ_QTY                 BIGINT                             COMMENT  '当月业务量',
CUR_M_BIZ_INCOME_HB_RATE      DECIMAL(32,8)                      COMMENT  '当月营业收入环比',
CUR_M_PROFIT_AMT              DECIMAL(32,8)                      COMMENT  '当月利润金额',
LST_TQ_M_PROFIT_AMT           DECIMAL(32,8)                      COMMENT  '去年同期月利润金额',
CUR_M_PROFIT_GROW_RATE        DECIMAL(32,8)                      COMMENT  '当月利润增长率',
CUR_M_CA_ONTIME_RATE          DECIMAL(32,8)                      COMMENT  '当月长安准到率',
CUR_M_CA_ONTIME_RATE_TARGT    DECIMAL(32,8)                      COMMENT  '当月长安准到率目标',
CUR_M_FT_ONTIME_RATE          DECIMAL(32,8)                      COMMENT  '当月福特准到率',
CUR_M_FT_ONTIME_RATE_TARGT    DECIMAL(32,8)                      COMMENT  '当月福特准到率目标',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR大屏端运营总览2'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;