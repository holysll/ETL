DROP TABLE IF EXISTS DW.DW_FIN_TAX_RATE;
CREATE TABLE IF NOT EXISTS DW.DW_FIN_TAX_RATE(
PERIOD_WID                    BIGINT                             COMMENT  '日期维ID',
YEAR                          BIGINT                             COMMENT  '年',
MONTH                         BIGINT                             COMMENT  '月',
BIZ_CAT                       STRING                             COMMENT  '业务类别',
BIZ_TYPE                      STRING                             COMMENT  '业务类型',
TAX_RATE                      decimal(32,8)                      COMMENT  '税率',
SOURCE_CODE                   STRING                             COMMENT  '源系统标识',
INTEGRATION_ID                STRING                             COMMENT  '记录唯一标识',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  '原系统记录创建时间',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '税率'
PARTITIONED BY(PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;