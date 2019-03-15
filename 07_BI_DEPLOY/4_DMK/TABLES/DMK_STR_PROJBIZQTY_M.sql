DROP TABLE IF EXISTS DMK.DMK_STR_PROJBIZQTY_M;
CREATE TABLE IF NOT EXISTS DMK.DMK_STR_PROJBIZQTY_M(
PERIOD_WID                    BIGINT                             COMMENT  '期间ID',
YEAR                          BIGINT                             COMMENT  '年',
MONTH                         BIGINT                             COMMENT  '月',
OC_ID                         STRING                             COMMENT  '运营中心ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
BASE_ID                       STRING                             COMMENT  '基地ID',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
PROJ_ID                       STRING                             COMMENT  '项目ID',
BIZ_QTY                       BIGINT                             COMMENT  '仓储业务量',
BIZ_NUM                       BIGINT                             COMMENT  '业务辆次',
SOURCE_CODE                   STRING                             COMMENT  'DMK_[源表]',
INTEGRATION_ID                STRING                             COMMENT  'SOURCE_CODE || _ || ORDER_ID',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  'TABLE_NAME1[yyyy-MM-dd HH:mm:dd],…',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '仓储项目粒度业务量月份统计'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;