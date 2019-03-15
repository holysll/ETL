DROP TABLE IF EXISTS TEMP.DMR_TP_ARRIVE_D;
CREATE TABLE IF NOT EXISTS TEMP.DMR_TP_ARRIVE_D(
PERIOD_WID                    STRING                             COMMENT  '期间ID',
MONTH_ID                       STRING                             COMMENT'年月id',

oc_id                string                            comment'运营中心ID',
oc_name                string                            comment'运营中心名称',
rgn_id             string                             COMMENT  '大区ID',
rgn_name             string                             COMMENT  '大区名称',

base_id            string                               COMMENT  '基地ID',
base_name            string                               COMMENT  '基地名称',
proj_id                string                             COMMENT  '项目ID',
proj_name               string                             COMMENT  '项目名称',


dest_prvn_id                   STRING                             COMMENT  '目的地省份ID',
TPMODE_id                 STRING                             COMMENT  '运输方式ID(仅含第一段发运方式)',
TPMODE_NAME           STRING                             COMMENT'运输方式名称',
BIZ_QTY                       BIGINT                             COMMENT  '业务量',
TOTAL_ARRIVE_NUM              BIGINT                             COMMENT  '总到数',
ONTIME_ARRIVE_NUM             BIGINT                             COMMENT  '准到数',
LATE_ARRIVE_NUM               BIGINT                             COMMENT  '晚到数',
ADVANCE_ARRIVE_NUM            BIGINT                             COMMENT  '早到数',
ONTIME_ARRIVE_RATE            decimal(32,8)                      COMMENT  '准到率',
ON_PASSAGE_NUM                BIGINT                             COMMENT  '在途量',
ON_PASSAGE_OUTTIME_NUM        BIGINT                             COMMENT  '在途超时量',
INSERT_DT                    STRING                             COMMENT  '插入时间'
) 
COMMENT '运输到达统计'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;
