DROP TABLE IF EXISTS DW.DW_FIN_MANAGE_FEE;
CREATE TABLE IF NOT EXISTS DW.DW_FIN_MANAGE_FEE(
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
BASE_BIZ_QTY                  decimal(32,8)                      COMMENT  '基地业务量',
TRANS_ALLOCA_BIZ_QTY          decimal(32,8)                      COMMENT  '中转分拨业务量',
BASE_DOWNLINE_INCOME_PRICE    decimal(32,8)                      COMMENT  '基地下线收入单价',
TRANS_ALLOCA_INCOME_PRICE     decimal(32,8)                      COMMENT  '中转分拨收入单价',
SECURE_CLEAN_INCOME           decimal(32,8)                      COMMENT  '保安保洁收入',
RENT_INCOME                   decimal(32,8)                      COMMENT  '租金收入',
RENT_COST                     decimal(32,8)                      COMMENT  '租金成本',
SECURE_CLEAN_COST             decimal(32,8)                      COMMENT  '保安保洁成本',
MANPOWER_COST                 decimal(32,8)                      COMMENT  '人力成本',
FOUR_ITM_FEE                  decimal(32,8)                      COMMENT  '四项费用',
DEPRECIATION                  decimal(32,8)                      COMMENT  '折旧',
OTHER_FEE                     decimal(32,8)                      COMMENT  '其他费用',
SOURCE_CODE                   STRING                             COMMENT  '源系统标识',
INTEGRATION_ID                STRING                             COMMENT  '记录唯一标识',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  '原系统记录创建时间',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '仓储管理费用'
PARTITIONED BY(PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;