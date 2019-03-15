DROP TABLE IF EXISTS DMR.DMR_OV_TP_OPERATE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_TP_OPERATE_M(
DATE_ID                       STRING                             COMMENT  '日期ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
CUR_D_TRANS_BIZ_QTY           BIGINT                             COMMENT  '当日运输业务量',
CUR_M_TRANS_BIZ_QTY           BIGINT                             COMMENT  '当月运输业务量',
CUR_M_FNSH_RATE               DECIMAL(32,8)                      COMMENT  '当月完成率',
MONTH_HB_RATE                 DECIMAL(32,8)                      COMMENT  '月环比',
CUR_Y_TRANS_BIZ_QTY           BIGINT                             COMMENT  '当年运输业务量',
CUR_Y_FNSH_RATE               DECIMAL(32,8)                      COMMENT  '当年完成率',
LST_D_QP_QTY                  BIGINT                             COMMENT  '上日启票量',
CUR_D_DUE_OUT_QTY             BIGINT                             COMMENT  '当日待发量',
LST_D_DLV_QTY                 BIGINT                             COMMENT  '上日交付量',
CUR_M_QP_QTY                  BIGINT                             COMMENT  '当月启票量',
CUR_D_ON_ROAD_QTY             BIGINT                             COMMENT  '当日在途量',
CUR_M_DLV_QTY                 BIGINT                             COMMENT  '当月交付量',
CUR_Y_QP_QTY                  BIGINT                             COMMENT  '当年启票量',
CUR_D_ON_ROAD_OVT_QTY         BIGINT                             COMMENT  '当日在途超时量',
CUR_Y_DLV_QTY                 BIGINT                             COMMENT  '当年交付量',
CUR_D_QP_FNSH_RATE            DECIMAL(32,8)                      COMMENT  '当日启票完成率',
CUR_D_ON_ROAD_OVT_RATE        DECIMAL(32,8)                      COMMENT  '当日在途超时率',
CUR_D_ONTIME_ARRIVE_RATE      DECIMAL(32,8)                      COMMENT  '当日准时到达率',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR整车运输实时报表'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;