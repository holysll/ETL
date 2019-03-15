DROP TABLE IF EXISTS DMR.DMR_OV_BIZ_QTY_D;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_BIZ_QTY_D(
DATE_ID                       STRING                             COMMENT  '日期ID',
ORG_TYPE                      STRING                             COMMENT  '组织类型',
ORG_ID                        STRING                             COMMENT  '组织ID',
ORG_NAME                      STRING                             COMMENT  '组织名称',
CUR_D_SHIP_QTY                BIGINT                             COMMENT  '当日发运量',
LST_D_SHIP_QTY                BIGINT                             COMMENT  '上日发运量',
CUR_D_SHIP_QTY_HB             DECIMAL(32,8)                      COMMENT  '当日发运量环比',
CUR_D_SHIP_QTY_HB_FLAG        STRING                             COMMENT  '档日发运量环比增长标志(0增长 1下降 2不变）',
CUR_D_STOCK_IN_QTY            BIGINT                             COMMENT  '当日入库量',
LST_D_STOCK_IN_QTY            BIGINT                             COMMENT  '上日入库量',
CUR_D_STOCK_IN_QTY_HB         DECIMAL(32,8)                      COMMENT  '当日入库量环比',
CUR_D_STOCK_IN_QTY_HB_FLAG    STRING                             COMMENT  '当日入库量环比增长标志(0增长 1下降 2不变）',
CUR_M_SHIP_QTY                BIGINT                             COMMENT  '当月发运量',
LST_M_SHIP_QTY                BIGINT                             COMMENT  '上月发运量',
CUR_M_STOCK_IN_QTY            BIGINT                             COMMENT  '当月入库量',
LST_M_STOCK_IN_QTY            BIGINT                             COMMENT  '上月入库量',
CUR_Y_SHIP_QTY                BIGINT                             COMMENT  '当年发运量',
CUR_Y_STOCK_IN_QTY            BIGINT                             COMMENT  '当年入库量',
CUR_D_SHIP_CNT                BIGINT                             COMMENT  '当日发运量(辆次）',
LST_D_SHIP_CNT                BIGINT                             COMMENT  '上日发运量(辆次）',
CUR_D_STOCK_IN_CNT            BIGINT                             COMMENT  '当日入库量(辆次）',
LST_D_STOCK_IN_CNT            BIGINT                             COMMENT  '上日入库量(辆次）',
CUR_M_SHIP_CNT                BIGINT                             COMMENT  '当月发运量(辆次）',
LST_M_SHIP_CNT                BIGINT                             COMMENT  '上月发运量(辆次）',
CUR_M_STOCK_IN_CNT            BIGINT                             COMMENT  '当月入库量(辆次）',
LST_M_STOCK_IN_CNT            BIGINT                             COMMENT  '上月入库量(辆次）',
CUR_Y_SHIP_CNT                BIGINT                             COMMENT  '当年发运量(辆次）',
CUR_Y_STOCK_IN_CNT            BIGINT                             COMMENT  '当年入库量(辆次）',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR大屏端业务量表'
PARTITIONED BY(PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;
