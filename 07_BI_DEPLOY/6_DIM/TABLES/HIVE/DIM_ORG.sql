DROP TABLE IF EXISTS DIM.DIM_ORG;
CREATE TABLE IF NOT EXISTS DIM.DIM_ORG(
ORG_ID                        STRING                             COMMENT  '组织ID',
ORG_TYPE                      STRING                             COMMENT  '组织类型(C 公司 O 运营中心 R 大区 B 基地 P 项目 S 仓库)',
CO_ID                         STRING                             COMMENT  '公司ID',
CO_NAME                       STRING                             COMMENT  '公司名称',
OC_ID                         STRING                             COMMENT  '运营中心ID',
OC_NAME                       STRING                             COMMENT  '运营中心名称',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_TYPE                     STRING                             COMMENT  '基地类型',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
STR_TYPE                      STRING                             COMMENT  '仓库类型',
STR_ID                        STRING                             COMMENT  '仓库ID',
STR_NAME                      STRING                             COMMENT  '仓库名称',
PRIOR_ID                      STRING                             COMMENT  '上级ID',
PRVN_ID                       STRING                             COMMENT  '仓库省份ID',
PRVN_NAME                     STRING                             COMMENT  '仓库省份名称',
CITY_ID                       STRING                             COMMENT  '仓库城市ID',
CITY_NAME                     STRING                             COMMENT  '仓库城市名称',
POSTAL_ID                     STRING                             COMMENT  '仓库区县ID',
POSTAL_NAME                   STRING                             COMMENT  '仓库区县名称',
LAT                           DECIMAL(32,8)                      COMMENT  '经度',
LON                           DECIMAL(32,8)                      COMMENT  '纬度',
SOURCE_CODE                   STRING                             COMMENT  '来源',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库记录插入时间 ',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '公司组织维(公司)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DIM.HIS_DIM_ORG;
CREATE TABLE IF NOT EXISTS DIM.HIS_DIM_ORG(
ORG_ID                        STRING                             COMMENT  '组织ID',
ORG_TYPE                      STRING                             COMMENT  '组织类型(C 公司 O 运营中心 R 大区 B 基地 P 项目 S 仓库)',
CO_ID                         STRING                             COMMENT  '公司ID',
CO_NAME                       STRING                             COMMENT  '公司名称',
OC_ID                         STRING                             COMMENT  '运营中心ID',
OC_NAME                       STRING                             COMMENT  '运营中心名称',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_TYPE                     STRING                             COMMENT  '基地类型',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
STR_TYPE                      STRING                             COMMENT  '仓库类型',
STR_ID                        STRING                             COMMENT  '仓库ID',
STR_NAME                      STRING                             COMMENT  '仓库名称',
PRIOR_ID                      STRING                             COMMENT  '上级ID',
PRVN_ID                       STRING                             COMMENT  '仓库省份ID',
PRVN_NAME                     STRING                             COMMENT  '仓库省份名称',
CITY_ID                       STRING                             COMMENT  '仓库城市ID',
CITY_NAME                     STRING                             COMMENT  '仓库城市名称',
POSTAL_ID                     STRING                             COMMENT  '仓库区县ID',
POSTAL_NAME                   STRING                             COMMENT  '仓库区县名称',
LAT                           DECIMAL(32,8)                      COMMENT  '经度',
LON                           DECIMAL(32,8)                      COMMENT  '纬度',
SOURCE_CODE                   STRING                             COMMENT  '来源',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库记录插入时间 ',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '公司组织维(公司)'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;