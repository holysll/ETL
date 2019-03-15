DROP TABLE IF EXISTS DMR.DMR_OV_BIZCNT_REALTIME_D;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_BIZCNT_REALTIME_D(
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR移动端总览实时业务量快报'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;