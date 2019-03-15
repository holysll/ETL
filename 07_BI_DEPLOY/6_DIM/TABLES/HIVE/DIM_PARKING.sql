DROP TABLE IF EXISTS DIM.DIM_PARKING;
CREATE TABLE IF NOT EXISTS DIM.DIM_PARKING(
PARKING_ID                    STRING                             COMMENT  '库区库位ID',
PARKING_NAME                  STRING                             COMMENT  '库区库位名称',
PARKING_TYPE                  STRING                             COMMENT  '库区库位类型',
PARKING_BRIEF_ID              STRING                             COMMENT  '本级库区库位名称',
PARKING_PARENT_ID             STRING                             COMMENT  '上级库区库位代码',
PARKING_LEVEL                 STRING                             COMMENT  '库区库位级次',
LASTLEVEL                     STRING                             COMMENT  '末级库区库位',
STR_ID                        STRING                             COMMENT  '仓库ID',
STR_NAME                      STRING                             COMMENT  '仓库名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
WHID                          STRING                             COMMENT  '仓库代码',
OGID                          STRING                             COMMENT  '组织代码',
STATUS                        STRING                             COMMENT  '状态',
LENGTH                        DECIMAL(32,8)                      COMMENT  '长',
WIDTH                         DECIMAL(32,8)                      COMMENT  '宽',
HEIGHT                        DECIMAL(32,8)                      COMMENT  '高',
VOLUME                        DECIMAL(32,8)                      COMMENT  '容积',
MAXWEIGHT                     DECIMAL(32,8)                      COMMENT  '承重',
MIXED                         STRING                             COMMENT  '是否混放',
QTY                           STRING                             COMMENT  '库位标准停放数量',
REMAK                         STRING                             COMMENT  '备注',
AUDITDATE                     STRING                             COMMENT  '审核日期',
INPUTDATE                     STRING                             COMMENT  '录入日期',
LASTMODIFYDATE                STRING                             COMMENT  '最后一次修改日期',
SOURCE_CODE                   STRING                             COMMENT  '来源',
WD_INSERT_DT                  STRING                             COMMENT  '数据仓库记录插入时间 ',
WD_UPDATE_DT                  STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '库区库位信息'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DIM.HIS_DIM_PARKING;
CREATE TABLE IF NOT EXISTS DIM.HIS_DIM_PARKING(
PARKING_ID                    STRING                             COMMENT  '库区库位ID',
PARKING_NAME                  STRING                             COMMENT  '库区库位名称',
PARKING_TYPE                  STRING                             COMMENT  '库区库位类型',
PARKING_BRIEF_ID              STRING                             COMMENT  '本级库区库位名称',
PARKING_PARENT_ID             STRING                             COMMENT  '上级库区库位代码',
PARKING_LEVEL                 STRING                             COMMENT  '库区库位级次',
LASTLEVEL                     STRING                             COMMENT  '末级库区库位',
STR_ID                        STRING                             COMMENT  '仓库ID',
STR_NAME                      STRING                             COMMENT  '仓库名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
WHID                          STRING                             COMMENT  '仓库代码',
OGID                          STRING                             COMMENT  '组织代码',
STATUS                        STRING                             COMMENT  '状态',
LENGTH                        DECIMAL(32,8)                      COMMENT  '长',
WIDTH                         DECIMAL(32,8)                      COMMENT  '宽',
HEIGHT                        DECIMAL(32,8)                      COMMENT  '高',
VOLUME                        DECIMAL(32,8)                      COMMENT  '容积',
MAXWEIGHT                     DECIMAL(32,8)                      COMMENT  '承重',
MIXED                         STRING                             COMMENT  '是否混放',
QTY                           STRING                             COMMENT  '库位标准停放数量',
REMAK                         STRING                             COMMENT  '备注',
AUDITDATE                     STRING                             COMMENT  '审核日期',
INPUTDATE                     STRING                             COMMENT  '录入日期',
LASTMODIFYDATE                STRING                             COMMENT  '最后一次修改日期',
SOURCE_CODE                   STRING                             COMMENT  '来源',
WD_INSERT_DT                  STRING                             COMMENT  '数据仓库记录插入时间 ',
WD_UPDATE_DT                  STRING                             COMMENT  '数据仓库记录更新时间 ',
START_DATE_ACTIVE             STRING                             COMMENT  '数据仓库记录生效日期',
END_DATE_ACTIVE               STRING                             COMMENT  '数据仓库记录失效日期',
ENABLE_FLAG                   STRING                             COMMENT  '数据仓库记录是否最新记录 T最新，其他历史'
) 
COMMENT '库区库位信息'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;
