DROP TABLE IF EXISTS DIM.DIM_AREA;
CREATE TABLE IF NOT EXISTS DIM.DIM_AREA(
AREA_ID                       STRING                             COMMENT  '区域ID',
AREA_CODE                     STRING                             COMMENT  '区域编码',
AREA_TYPE                     STRING                             COMMENT  '区域类型(CIRY/PRVN/CITY/POSTAL)',
CTRY_ID                       STRING                             COMMENT  '国家ID',
CTRY_NAME                     STRING                             COMMENT  '国家名称',
PRVN_ID                       STRING                             COMMENT  '省份ID',
PRVN_NAME                     STRING                             COMMENT  '省份名称',
CITY_ID                       STRING                             COMMENT  '城市ID',
CITY_NAME                     STRING                             COMMENT  '城市名称',
POSTAL_ID                     STRING                             COMMENT  '区县ID',
POSTAL_NAME                   STRING                             COMMENT  '区县名称',
LOCATION                      STRING                             COMMENT  '详细地址',
SOURCE_CODE                   STRING                             COMMENT  '来源',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库记录插入时间 ',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '区域维度表(国标)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DIM.HIS_DIM_AREA;
CREATE TABLE IF NOT EXISTS DIM.HIS_DIM_AREA(
AREA_ID                       STRING                             COMMENT  '区域ID',
AREA_CODE                     STRING                             COMMENT  '区域编码',
AREA_TYPE                     STRING                             COMMENT  '区域类型(CIRY/PRVN/CITY/POSTAL)',
CTRY_ID                       STRING                             COMMENT  '国家ID',
CTRY_NAME                     STRING                             COMMENT  '国家名称',
PRVN_ID                       STRING                             COMMENT  '省份ID',
PRVN_NAME                     STRING                             COMMENT  '省份名称',
CITY_ID                       STRING                             COMMENT  '城市ID',
CITY_NAME                     STRING                             COMMENT  '城市名称',
POSTAL_ID                     STRING                             COMMENT  '区县ID',
POSTAL_NAME                   STRING                             COMMENT  '区县名称',
LOCATION                      STRING                             COMMENT  '详细地址',
SOURCE_CODE                   STRING                             COMMENT  '来源',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库记录插入时间 ',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '区域维度表(国标)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;