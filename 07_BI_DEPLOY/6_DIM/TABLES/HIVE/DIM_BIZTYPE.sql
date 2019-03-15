DROP TABLE IF EXISTS DIM.DIM_BIZTYPE;
CREATE TABLE IF NOT EXISTS DIM.DIM_BIZTYPE(
BIZTYPE_ID                    STRING                             COMMENT  '业务类型ID',
BIZTYPE_NAME                  STRING                             COMMENT  '业务类型名称',
SOURCE_CODE                   STRING                             COMMENT  '来源',
WD_INSERT_DT                  STRING                             COMMENT  '数据仓库记录插入时间 ',
WD_UPDATE_DT                  STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '业务类型(项目)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DIM.HIS_DIM_BIZTYPE;
CREATE TABLE IF NOT EXISTS DIM.HIS_DIM_BIZTYPE(
BIZTYPE_ID                    STRING                             COMMENT  '业务类型ID',
BIZTYPE_NAME                  STRING                             COMMENT  '业务类型名称',
SOURCE_CODE                   STRING                             COMMENT  '来源',
WD_INSERT_DT                  STRING                             COMMENT  '数据仓库记录插入时间 ',
WD_UPDATE_DT                  STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '业务类型(项目)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;