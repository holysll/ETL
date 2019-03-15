DROP TABLE IF EXISTS DMK.DMK_FIN_TPBUDGET_D;
CREATE TABLE IF NOT EXISTS DMK.DMK_FIN_TPBUDGET_D(
PERIOD_WID                    BIGINT                             COMMENT  '期间ID',
OC_ID                         STRING                             COMMENT  '运营中心ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
BASE_ID                       STRING                             COMMENT  '基地ID',
PROJ_ID                       STRING                             COMMENT  '项目ID',
SOURCE_LOCATION_TYPE          STRING                             COMMENT  '始发地类型',
SOURCE_LOCATION_ID            STRING                             COMMENT  '始发地ID',
DEST_LOCATION_TYPE            STRING                             COMMENT  '目的地类型',
DEST_LOCATION_ID              STRING                             COMMENT  '目的地ID',
SOURCE_PRVN_ID                STRING                             COMMENT  '始发地省份ID',
SOURCE_CTY_ID                 STRING                             COMMENT  '始发地城市ID',
DEST_PRVN_ID                  STRING                             COMMENT  '目的地省份ID',
DEST_CTY_ID                   STRING                             COMMENT  '目的地城市ID',
SUPPLIER_ID                   STRING                             COMMENT  '承运商ID',
TRANSPORTMODE_ID              STRING                             COMMENT  '运输方式',
CUST_ID                       STRING                             COMMENT  '客户ID',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
MODEL_ID                      STRING                             COMMENT  '车型ID',
MDLGRP_ID                     STRING                             COMMENT  '车型组ID',
INCOME_AMT                    decimal(32,8)                      COMMENT  '收入金额',
COST_AMT                      decimal(32,8)                      COMMENT  '成本金额',
PROFIT_AMT                    decimal(32,8)                      COMMENT  '利润金额',
SOURCE_CODE                   STRING                             COMMENT  '源系统标识',
INTEGRATION_ID                STRING                             COMMENT  '记录唯一标识',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  '原系统记录创建时间',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '运输财务预算日明细'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;