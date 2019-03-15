DROP TABLE IF EXISTS DW.DW_FIN_AR;
CREATE TABLE IF NOT EXISTS DW.DW_FIN_AR(
PERIOD_WID                    BIGINT                             COMMENT  '日期维ID',
YEAR                          BIGINT                             COMMENT  '年',
MONTH                         BIGINT                             COMMENT  '月',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
PROJ_NAME                     STRING                             COMMENT  '项目名称',
TYPE                          STRING                             COMMENT  '分类',
AR_AMT                        decimal(32,8)                      COMMENT  '应收账款',
SOURCE_CODE                   STRING                             COMMENT  '源系统标识',
INTEGRATION_ID                STRING                             COMMENT  '记录唯一标识',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  '原系统记录创建时间',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '应收账款'
PARTITIONED BY(PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;