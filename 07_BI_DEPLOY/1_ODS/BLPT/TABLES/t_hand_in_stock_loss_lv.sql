DROP TABLE IF EXISTS ODS_BLPT.T_HAND_IN_STOCK_LOSS_LV;
create table ODS_BLPT.T_HAND_IN_STOCK_LOSS_LV
(
  ID BIGINT,
  SEQ_ID STRING COMMENT '序号ID',
  RGN_NAME STRING COMMENT '大区名称',
  BASE_NAME STRING COMMENT '基地名称',
  BRAND_NAME STRING COMMENT '品牌名称',
  PRO_NAME STRING COMMENT '项目名称',
  LOSS_TYPE STRING COMMENT '质损类型',
  LOSS_LEVEL STRING COMMENT '质损程度',
  WTD STRING COMMENT '问题点',
  CHECK_DAY STRING COMMENT '时间',
  COMMENTS STRING COMMENT '问题描述',
  LOSS_CNT STRING COMMENT '质损数量',
  ZRF STRING COMMENT '责任方',
  DRV STRING COMMENT '驾驶员（若为项目驾驶员填写项目驾驶员姓名）',
  LOSS_YJ_AM STRING COMMENT '质损金额（预估）',
  LOSS_SJ_AM STRING COMMENT '质损金额（实际）',
  LAST_UPDATE_DATE STRING,
  LAST_UPDATED_BY STRING,
  CREATION_DATE STRING,
  CREATED_BY STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS PARQUET;


DROP TABLE IF EXISTS ODS_BLPT.STG_T_HAND_IN_STOCK_LOSS_LV;
create table ODS_BLPT.STG_T_HAND_IN_STOCK_LOSS_LV
(
  ID BIGINT,
  SEQ_ID STRING COMMENT '序号ID',
  RGN_NAME STRING COMMENT '大区名称',
  BASE_NAME STRING COMMENT '基地名称',
  BRAND_NAME STRING COMMENT '品牌名称',
  PRO_NAME STRING COMMENT '项目名称',
  LOSS_TYPE STRING COMMENT '质损类型',
  LOSS_LEVEL STRING COMMENT '质损程度',
  WTD STRING COMMENT '问题点',
  CHECK_DAY STRING COMMENT '时间',
  COMMENTS STRING COMMENT '问题描述',
  LOSS_CNT STRING COMMENT '质损数量',
  ZRF STRING COMMENT '责任方',
  DRV STRING COMMENT '驾驶员（若为项目驾驶员填写项目驾驶员姓名）',
  LOSS_YJ_AM STRING COMMENT '质损金额（预估）',
  LOSS_SJ_AM STRING COMMENT '质损金额（实际）',
  LAST_UPDATE_DATE STRING,
  LAST_UPDATED_BY STRING,
  CREATION_DATE STRING,
  CREATED_BY STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS TEXTFILE;

DROP TABLE IF EXISTS ODS_BLPT.HIS_T_HAND_IN_STOCK_LOSS_LV;
create table ODS_BLPT.HIS_T_HAND_IN_STOCK_LOSS_LV
(
  ID BIGINT,
  SEQ_ID STRING COMMENT '序号ID',
  RGN_NAME STRING COMMENT '大区名称',
  BASE_NAME STRING COMMENT '基地名称',
  BRAND_NAME STRING COMMENT '品牌名称',
  PRO_NAME STRING COMMENT '项目名称',
  LOSS_TYPE STRING COMMENT '质损类型',
  LOSS_LEVEL STRING COMMENT '质损程度',
  WTD STRING COMMENT '问题点',
  CHECK_DAY STRING COMMENT '时间',
  COMMENTS STRING COMMENT '问题描述',
  LOSS_CNT STRING COMMENT '质损数量',
  ZRF STRING COMMENT '责任方',
  DRV STRING COMMENT '驾驶员（若为项目驾驶员填写项目驾驶员姓名）',
  LOSS_YJ_AM STRING COMMENT '质损金额（预估）',
  LOSS_SJ_AM STRING COMMENT '质损金额（实际）',
  LAST_UPDATE_DATE STRING,
  LAST_UPDATED_BY STRING,
  CREATION_DATE STRING,
  CREATED_BY STRING
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS PARQUET;