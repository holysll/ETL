DROP TABLE IF EXISTS TEMP.DMR_PC_TP_ORD_QPJFCKFY_D;
CREATE TABLE IF NOT EXISTS TEMP.DMR_PC_TP_ORD_QPJFCKFY_D(
DATE_ID                       STRING                             COMMENT  '日期ID',
MONTH_ID                    STRING                             COMMENT '年月ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
PROJ_ID                       STRING                             COMMENT  '项目ID',
PROJ_NAME                     STRING                             COMMENT  '项目名称',
TPMODE_ID                     STRING                             COMMENT  '运输方式ID',
TPMODE_NAME                   STRING                             COMMENT  '运输方式名称',
CUR_QP_QTY                    BIGINT                             COMMENT  '当日实际启票量',
CUR_TGT_QP_QTY                BIGINT                             COMMENT  '当日计划启票量',
CUR_ALLOC_QTY                 BIGINT                             COMMENT  '当日实际分配量',
CUR_TGT_ALLOC_QTY             BIGINT                             COMMENT  '当日计划分配量',
FACT_DEVR_NUM                 DECIMAL(32,8)                      COMMENT  '实际交付数',
PLAN_DEVR_NUM                 DECIMAL(32,8)                      COMMENT  '计划交付数',
BIZ_QTY                       DECIMAL(32,8)                      COMMENT  '业务运输量',
OUT_STORE_QTY                 DECIMAL(32,8)                      COMMENT  '出库量',
INSERT_DATE                   STRING                             COMMENT  '插入时间',
UPDATE_DATE                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'PC运输订单管理-启票管理（日）'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;