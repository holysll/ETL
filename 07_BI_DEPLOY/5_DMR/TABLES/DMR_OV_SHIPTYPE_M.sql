DROP TABLE IF EXISTS DMR.DMR_OV_SHIPTYPE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_SHIPTYPE_M(
MONTH_ID                      STRING                             COMMENT  '月份ID',
SHIP_TYPE                     STRING                             COMMENT  '发运方式',
CUR_Y_SHIP_QTY                BIGINT                             COMMENT  '当年发运量',
CUR_Y_SHIP_QTY_RATE           DECIMAL(32,8)                      COMMENT  '当年发运方式占比',
LST_TQ_SHIP_QTY               STRING                             COMMENT  '去年发运量',
LST_TQ_SHIP_QTY_RATE          DECIMAL(32,8)                      COMMENT  '去年发运方式占比',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR大屏端发运方式'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;