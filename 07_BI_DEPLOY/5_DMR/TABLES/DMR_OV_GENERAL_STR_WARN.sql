DROP TABLE IF EXISTS DMR.DMR_OV_GENERAL_STR_WARN;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_GENERAL_STR_WARN(
ORG_ID          STRING         COMMENT  '组织ID',
ORG_NAME        STRING         COMMENT  '组织名称',
ALL_STR_QTY     BIGINT         COMMENT  '总库位量',
USED_STR_QTY    BIGINT         COMMENT  '使用库位量',
REMAIN_STR_QTY  BIGINT         COMMENT  '剩余库位量',
USED_STR_RATE   DECIMAL(32,8)  COMMENT  '库房利用率',
COLOR_FLAG      STRING         COMMENT  '预警标记 R：红色 Y：黄色 G：绿色'
) 
COMMENT '大屏5-仓储整体情况（预警）'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;