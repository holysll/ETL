DROP TABLE IF EXISTS ODS_BLPT.`T_HAND_SELL_BIZ`;
CREATE TABLE ODS_BLPT.`T_HAND_SELL_BIZ` (
  `ID`               BIGINT         COMMENT 'AUTO_INCREMENT',
  `SEQ_ID`           STRING         COMMENT '序号ID',
  `MONTH_ID`         STRING         COMMENT '月份ID',
  `RGN_NAME`         STRING         COMMENT '大区名称',
  `BASE_NAME`        STRING         COMMENT '基地名称',
  `BRAND_NAME`       STRING         COMMENT '品牌名称',
  `PROJ_NAME`        STRING         COMMENT '项目名称',
  `BIZTYPE`          STRING         COMMENT '业务类别',
  `SELL_OBJ`         STRING         COMMENT '销售对象',
  `QTY`              BIGINT         COMMENT '数量',
  `INCOME`           DECIMAL(32, 8) COMMENT '收入',
  `COST`             DECIMAL(32, 8) COMMENT '成本',
  `LAST_UPDATE_DATE` STRING         COMMENT '',
  `LAST_UPDATED_BY`  STRING         COMMENT '',
  `CREATION_DATE`    STRING         COMMENT '',
  `CREATED_BY`       STRING         COMMENT ''
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS PARQUET;

DROP TABLE IF EXISTS ODS_BLPT.`STG_T_HAND_SELL_BIZ`;
CREATE TABLE ODS_BLPT.`STG_T_HAND_SELL_BIZ` (
  `ID`               BIGINT         COMMENT 'AUTO_INCREMENT',
  `SEQ_ID`           STRING         COMMENT '序号ID',
  `MONTH_ID`         STRING         COMMENT '月份ID',
  `RGN_NAME`         STRING         COMMENT '大区名称',
  `BASE_NAME`        STRING         COMMENT '基地名称',
  `BRAND_NAME`       STRING         COMMENT '品牌名称',
  `PROJ_NAME`        STRING         COMMENT '项目名称',
  `BIZTYPE`          STRING         COMMENT '业务类别',
  `SELL_OBJ`         STRING         COMMENT '销售对象',
  `QTY`              BIGINT         COMMENT '数量',
  `INCOME`           DECIMAL(32, 8) COMMENT '收入',
  `COST`             DECIMAL(32, 8) COMMENT '成本',
  `LAST_UPDATE_DATE` STRING         COMMENT '',
  `LAST_UPDATED_BY`  STRING         COMMENT '',
  `CREATION_DATE`    STRING         COMMENT '',
  `CREATED_BY`       STRING         COMMENT ''
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS TEXTFILE;

DROP TABLE IF EXISTS ODS_BLPT.`HIS_T_HAND_SELL_BIZ`;
CREATE TABLE ODS_BLPT.`HIS_T_HAND_SELL_BIZ` (
  `ID`               BIGINT         COMMENT 'AUTO_INCREMENT',
  `SEQ_ID`           STRING         COMMENT '序号ID',
  `MONTH_ID`         STRING         COMMENT '月份ID',
  `RGN_NAME`         STRING         COMMENT '大区名称',
  `BASE_NAME`        STRING         COMMENT '基地名称',
  `BRAND_NAME`       STRING         COMMENT '品牌名称',
  `PROJ_NAME`        STRING         COMMENT '项目名称',
  `BIZTYPE`          STRING         COMMENT '业务类别',
  `SELL_OBJ`         STRING         COMMENT '销售对象',
  `QTY`              BIGINT         COMMENT '数量',
  `INCOME`           DECIMAL(32, 8) COMMENT '收入',
  `COST`             DECIMAL(32, 8) COMMENT '成本',
  `LAST_UPDATE_DATE` STRING         COMMENT '',
  `LAST_UPDATED_BY`  STRING         COMMENT '',
  `CREATION_DATE`    STRING         COMMENT '',
  `CREATED_BY`       STRING         COMMENT ''
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036' STORED AS PARQUET;

