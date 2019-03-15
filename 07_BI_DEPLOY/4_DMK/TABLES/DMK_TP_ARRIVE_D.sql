DROP TABLE IF EXISTS DMK.DMK_TP_ARRIVE_D;
CREATE TABLE IF NOT EXISTS DMK.DMK_TP_ARRIVE_D(
PERIOD_WID                    STRING                             COMMENT  '期间ID',
PERIOD_DT                     BIGINT                             COMMENT  '日',
OC_ID                         STRING                             COMMENT  '运营中心ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
BASE_ID                       STRING                             COMMENT  '基地ID',
PROJ_ID                       STRING                             COMMENT  '项目ID',
SOURCE_LOCATION_TYPE          STRING                             COMMENT  '始发地类型',
SOURCE_LOCATION_ID            STRING                             COMMENT  '始发地ID',
SRC_PRVN_ID                   STRING                             COMMENT  '始发地省份ID',
SRC_CITY_ID                   STRING                             COMMENT  '始发地城市ID',
DEST_LOCATION_TYPE            STRING                             COMMENT  '目的地类型',
DEST_LOCATION_ID              STRING                             COMMENT  '目的地ID',
DEST_PRVN_ID                  STRING                             COMMENT  '目的地省份ID',
DEST_CITY_ID                  STRING                             COMMENT  '目的地城市ID',
CUST_ID                       STRING                             COMMENT  '客户',
BRAND_ID                      STRING                             COMMENT  '品牌',
MODEL_ID                      STRING                             COMMENT  '车型',
TRANSPORTMODE_ID              STRING                             COMMENT  '运输方式(仅含第一段发运方式)',
BIZ_QTY                       BIGINT                             COMMENT  '业务量',
TOTAL_ARRIVE_NUM              BIGINT                             COMMENT  '总到数',
ONTIME_ARRIVE_NUM             BIGINT                             COMMENT  '准到数',
LATE_ARRIVE_NUM               BIGINT                             COMMENT  '晚到数',
ADVANCE_ARRIVE_NUM            BIGINT                             COMMENT  '早到数',
ON_PASSAGE_NUM                BIGINT                             COMMENT  '在途量',
ON_PASSAGE_OUTTIME_NUM        BIGINT                             COMMENT  '在途超时量',
SOURCE_CODE                   STRING                             COMMENT  '源系统标识',
INTEGRATION_ID                STRING                             COMMENT  '记录唯一标识',
AUX1_CHANGED_ON_DT            STRING                             COMMENT  '原系统记录创建时间',
W_INSERT_DT                   STRING                             COMMENT  '数据仓库插入时间',
W_UPDATE_DT                   STRING                             COMMENT  '数据仓库修改时间'
) 
COMMENT '运输到达量统计'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;
