DROP TABLE IF EXISTS DMR.DMR_OV_TRANSPORT_MODE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_TRANSPORT_MODE_M(
MONTH_ID                      STRING                             COMMENT  '月份ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
SHIP_TYPE                     STRING                             COMMENT  '发运方式',
CUR_M_TRANS_QTY               BIGINT                             COMMENT  '当月运输量',
SHIP_TYPE_RATIO               DECIMAL(32,8)                      COMMENT  '发运方式占比',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR整车运输方式月报表'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;