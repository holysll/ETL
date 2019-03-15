DROP TABLE IF EXISTS DW.DW_SAL_SELL_BIZ;
CREATE TABLE IF NOT EXISTS DW.DW_SAL_SELL_BIZ(
PERIOD_WID                    BIGINT                             COMMENT  '日期维ID',
MONTH_ID                      STRING                             COMMENT  '月份ID',
OC_ID                         STRING                             COMMENT  '运营中心',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
PROJ_ID                       STRING                             COMMENT  '项目ID',
PROJ_NAME                     STRING                             COMMENT  '项目名称',
BIZTYPE                       STRING                             COMMENT  '业务类别',
SELL_OBJ                      STRING                             COMMENT  '销售对象',
QTY                           decimal(32,8)                      COMMENT  '数量',
INCOME                        decimal(32,8)                      COMMENT  '收入',
COST                          decimal(32,8)                      COMMENT  '成本',
SOURCE_CODE                   STRING                             COMMENT  '源系统标识',
INTEGRATION_ID                STRING                             COMMENT  '记录唯一标识',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  '原系统记录创建时间',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '销售业务P7'
PARTITIONED BY(PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;