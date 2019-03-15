DROP TABLE IF EXISTS DW.DW_FIN_INCOME_COST;
CREATE TABLE IF NOT EXISTS DW.DW_FIN_INCOME_COST(
PERIOD_WID                    BIGINT                             COMMENT  '日期维ID',
MONTH_ID                      BIGINT                             COMMENT  '月份ID',
OC_ID                         STRING                             COMMENT  '运营中心',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
PROJ_ID                       STRING                             COMMENT  '项目ID',
PROJ_NAME                     STRING                             COMMENT  '项目名称',
OUT_BIZ_INCOME                decimal(32,8)                      COMMENT  '营业外收入',
OUT_BIZ_COST                  decimal(32,8)                      COMMENT  '营业外支出',
SOURCE_CODE                   STRING                             COMMENT  '源系统标识',
INTEGRATION_ID                STRING                             COMMENT  '记录唯一标识',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  '原系统记录创建时间',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '营业外收支'
PARTITIONED BY(PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;