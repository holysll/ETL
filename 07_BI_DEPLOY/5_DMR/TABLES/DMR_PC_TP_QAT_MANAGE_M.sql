DROP TABLE IF EXISTS DMR.DMR_PC_TP_QAT_MANAGE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_PC_TP_QAT_MANAGE_M(
MONTH_ID	STRING	COMMENT	'月份ID'
,RGN_ID	STRING	COMMENT	'大区ID'
,RGN_NAME	STRING	COMMENT	'大区名称'
,BASE_ID	STRING	COMMENT	'基地ID'
,BASE_NAME	STRING	COMMENT	'基地名称'
,BRAND_ID	STRING	COMMENT	'品牌ID'
,BRAND_NAME	STRING	COMMENT	'品牌名称'
,SUPPLIER_ID 	STRING	COMMENT	'承运商ID'
,SUPPLIER_NAME	STRING	COMMENT	'承运商名称'
,TPMODE_ID	STRING	COMMENT	'运输方式ID'
,TPMODE_NAME	STRING	COMMENT	'运输方式名称'
,LOS_QAT_QTY	BIGINT	COMMENT	'在途质损数'
,TP_QTY	BIGINT	COMMENT	'发运数量'
,INSERT_DATE	STRING	COMMENT	'插入时间'
,UPDATE_DATE	STRING	COMMENT	'更新时间'
) 
COMMENT 'PC质量月承运商管理-质量管理'
PARTITIONED BY(PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;