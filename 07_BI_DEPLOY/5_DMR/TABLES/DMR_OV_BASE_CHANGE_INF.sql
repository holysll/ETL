DROP TABLE IF EXISTS DMR.DMR_OV_BASE_CHANGE_INF;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_BASE_CHANGE_INF(
DATE_ID                       STRING                             COMMENT  '日期ID',
ST_RGN                        STRING                             COMMENT  '始发地所属大区',
ST_BASE_NAME                  STRING                             COMMENT  '始发基地名称',
ST_CITY_NAME                  STRING                             COMMENT  '始发地城市',
DEST_ORG_NAME                 STRING                             COMMENT  '目的组织名称',
DEST_CITY_NAME                STRING                             COMMENT  '目的地城市',
CUR_M_SHIP_QTY                BIGINT                             COMMENT  '当月发运量',
ST_BASE_TYPE                  STRING                             COMMENT  '（1-生产基地，2-中转站、3-城市配送中心）'
) 
COMMENT 'DMR大屏端基地迁徙信息'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;