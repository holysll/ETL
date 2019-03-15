DROP TABLE IF EXISTS DIM.DIM_SERVPROV;
CREATE TABLE IF NOT EXISTS DIM.DIM_SERVPROV(
SERVPROV_ID                   STRING                             COMMENT  '承运商ID',
SERVPROV_CODE                 STRING                             COMMENT  '承运商编码',
SERVPROV_NAME                 STRING                             COMMENT  '承运商名称',
BIZ_DOMAIN                    STRING                             COMMENT  '业务范畴',
SPELLING                      STRING                             COMMENT  '简拼',
SUPERIOR_CO                   STRING                             COMMENT  '上级公司',
SERVPROV_AB                   STRING                             COMMENT  '承运商简称',
SOURCE_CODE                   STRING                             COMMENT  '来源',
WD_INSERT_DT                  STRING                             COMMENT  '数据仓库记录插入时间 ',
WD_UPDATE_DT                  STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '承运商维度表(公司)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DIM.HIS_DIM_SERVPROV;
CREATE TABLE IF NOT EXISTS DIM.HIS_DIM_SERVPROV(
SERVPROV_ID                   STRING                             COMMENT  '承运商ID',
SERVPROV_CODE                 STRING                             COMMENT  '承运商编码',
SERVPROV_NAME                 STRING                             COMMENT  '承运商名称',
BIZ_DOMAIN                    STRING                             COMMENT  '业务范畴',
SPELLING                      STRING                             COMMENT  '简拼',
SUPERIOR_CO                   STRING                             COMMENT  '上级公司',
SERVPROV_AB                   STRING                             COMMENT  '承运商简称',
SOURCE_CODE                   STRING                             COMMENT  '来源',
WD_INSERT_DT                  STRING                             COMMENT  '数据仓库记录插入时间 ',
WD_UPDATE_DT                  STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '承运商维度表(公司)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;