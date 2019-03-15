DROP TABLE IF EXISTS DMK.DMK_STR_OPERATE_D;
CREATE TABLE IF NOT EXISTS DMK.DMK_STR_OPERATE_D(
PERIOD_WID                    BIGINT                             COMMENT  '期间ID',
YEAR                          BIGINT                             COMMENT  '年',
MONTH                         BIGINT                             COMMENT  '月',
PERIOD_DT                     BIGINT                             COMMENT  '日',
OC_ID                         STRING                             COMMENT  '运营中心ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
BASE_ID                       STRING                             COMMENT  '基地ID',
PROJ_ID                       STRING                             COMMENT  '项目ID',
STR_ID                        STRING                             COMMENT  '仓库ID',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
MODEL_ID                      STRING                             COMMENT  '车型ID',
IN_STORE_QTY                  BIGINT                             COMMENT  '入库量',
OUT_STORE_QTY                 BIGINT                             COMMENT  '出库量',
SOURCE_CODE                   STRING                             COMMENT  'DMK_[源表]',
INTEGRATION_ID                STRING                             COMMENT  'SOURCE_CODE || _ || ORDER_ID',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  'TABLE_NAME1[yyyy-MM-dd HH:mm:dd],…',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '仓储业务量统计'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;