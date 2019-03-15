DROP TABLE IF EXISTS DMR.DMR_OV_HR_FEE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_HR_FEE_M(
MONTH_ID                      STRING                             COMMENT  '月份ID',
CUR_M_INCOME_AMT              DECIMAL(32,8)                      COMMENT  '当月收入金额',
TOTAL_MANPOWER_COST_AMT       DECIMAL(32,8)                      COMMENT  '总人力成本金额',
FACT_FEE_RATE                 DECIMAL(32,8)                      COMMENT  '实际费用率',
CUR_M_FEE_RATE_INDEX          DECIMAL(32,8)                      COMMENT  '当月费用率指标',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR移动端总览人事费用'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;