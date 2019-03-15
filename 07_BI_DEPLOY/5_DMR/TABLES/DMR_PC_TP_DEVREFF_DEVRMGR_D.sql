DROP TABLE IF EXISTS `DMR.DMR_PC_TP_DEVREFF_DEVRMGR_D`;
CREATE TABLE IF NOT EXISTS `DMR.DMR_PC_TP_DEVREFF_DEVRMGR_D`(
`PERIOD_WID` BIGINT COMMENT '期间ID', 
`RGN_ID` STRING COMMENT '大区ID', 
`RGN_NAME` STRING COMMENT '大区名称', 
`BASE_ID` STRING COMMENT '基地ID', 
`BASE_NAME` STRING COMMENT '基地名称', 
`SUPPLIER_ID` STRING COMMENT '承运商ID', 
`SUPPLIER_NAME` STRING COMMENT '承运商名称', 
`TPMODE_ID` STRING COMMENT '运输方式ID', 
`TPMODE_NAME` STRING COMMENT '运输方式名称', 
`FACT_DEVR_NUM` DECIMAL(32,8) COMMENT '实际交付数', 
`PLAN_DEVR_NUM` DECIMAL(32,8) COMMENT '计划交付数', 
`INSERT_TIME` STRING COMMENT '插入时间',
`UPDATE_TIME` STRING COMMENT '更新时间'
)COMMENT '交付与效率管理（日）-交付管理'
PARTITIONED BY (`PART_SC` STRING COMMENT '数据来源', `PART_DT` STRING COMMENT '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;