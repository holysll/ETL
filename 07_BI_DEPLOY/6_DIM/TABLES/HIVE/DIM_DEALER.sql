DROP TABLE IF EXISTS DIM.DIM_DEALER;
CREATE TABLE IF NOT EXISTS DIM.DIM_DEALER(
DLR_ID                        STRING                             COMMENT  '经销商ID',
DLR_CODE                      STRING                             COMMENT  '经销商编码',
DLR_NAME                      STRING                             COMMENT  '经销商名称',
DLR_AB                        STRING                             COMMENT  '经销商简称',
CITY_ID                       STRING                             COMMENT  '经销商城市ID',
CITY_NAME                     STRING                             COMMENT  '经销商城市',
PRVN_ID                       STRING                             COMMENT  '经销商省份ID',
PRVN_NAME                     STRING                             COMMENT  '经销商省份',
POSTAL_ID                     STRING                             COMMENT  '经销商所在区县ID',
POSTAL_NAME                   STRING                             COMMENT  '经销商所在区县',
CUST_ID                       STRING                             COMMENT  '经销商所属客户ID',
CUST_NAME                     STRING                             COMMENT  '经销商所属客户名称',
LAT                           DECIMAL(32,8)                      COMMENT  '经度',
LON                           DECIMAL(32,8)                      COMMENT  '纬度',
SOURCE_CODE                   STRING                             COMMENT  '来源',
WD_INSERT_DT                  STRING                             COMMENT  '数据仓库记录插入时间 ',
WD_UPDATE_DT                  STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '经销商维度(公司)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DIM.HIS_DIM_DEALER;
CREATE TABLE IF NOT EXISTS DIM.HIS_DIM_DEALER(
DLR_ID                        STRING                             COMMENT  '经销商ID',
DLR_CODE                      STRING                             COMMENT  '经销商编码',
DLR_NAME                      STRING                             COMMENT  '经销商名称',
DLR_AB                        STRING                             COMMENT  '经销商简称',
CITY_ID                       STRING                             COMMENT  '经销商城市ID',
CITY_NAME                     STRING                             COMMENT  '经销商城市',
PRVN_ID                       STRING                             COMMENT  '经销商省份ID',
PRVN_NAME                     STRING                             COMMENT  '经销商省份',
POSTAL_ID                     STRING                             COMMENT  '经销商所在区县ID',
POSTAL_NAME                   STRING                             COMMENT  '经销商所在区县',
CUST_ID                       STRING                             COMMENT  '经销商所属客户ID',
CUST_NAME                     STRING                             COMMENT  '经销商所属客户名称',
LAT                           DECIMAL(32,8)                      COMMENT  '经度',
LON                           DECIMAL(32,8)                      COMMENT  '纬度',
SOURCE_CODE                   STRING                             COMMENT  '来源',
WD_INSERT_DT                  STRING                             COMMENT  '数据仓库记录插入时间 ',
WD_UPDATE_DT                  STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '经销商维度(公司)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;