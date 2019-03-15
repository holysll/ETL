DROP TABLE IF EXISTS DMR.DMR_PC_TP_DEVREFF_CARUSE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_PC_TP_DEVREFF_CARUSE_M(
PERIOD_WID                    BIGINT                             COMMENT  '期间ID',
RGN_ID                        STRING                             COMMENT  '大区ID(-1,未知,…)',
RGN_NAME                      STRING                             COMMENT  '大区名称(-1,未知,…)',
BASE_ID                       STRING                             COMMENT  '基地',
BASE_NAME                     STRING                             COMMENT  '基地名称',
BRAND_ID                      STRING                             COMMENT  '品牌',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
SUPPLIER_ID                   STRING                             COMMENT  '承运商ID(…)',
SUPPLIER_NAME                 STRING                             COMMENT  '承运商名称(…)',
SHIPMENT_TOOL_TYPE_ID         STRING                             COMMENT  '运输工具类型ID(….)',
SHIPMENT_TOOL_TYPE_NAME       STRING                             COMMENT  '运输工具类型名称(….)',
SOURCE_CITY_ID                STRING                             COMMENT  '出发城市名称ID',
SOURCE_CITY_NAME              STRING                             COMMENT  '出发城市名称',
DEST_CITY_ID                  STRING                             COMMENT  '目的城市名称ID',
DEST_CITY_NAME                STRING                             COMMENT  '目的城市名称',
SHIPMENT_TOOL_USE_NUM         DECIMAL(32,8)                      COMMENT  '运输车辆使用趟次',
tp_car_need_num               DECIMAL(32,8)                      COMMENT  '运力需求',
INSERT_DATE                   STRING                             COMMENT  '插入时间'
) 
COMMENT '交付与效率管理（月）-单车使用趟次明细'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;


DROP TABLE IF EXISTS DMR.DMR_PC_TP_DEVREFF_DEVRMGR_D;
CREATE TABLE IF NOT EXISTS DMR.DMR_PC_TP_DEVREFF_DEVRMGR_D(
PERIOD_WID                    BIGINT                             COMMENT  '期间ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
BRAND_ID                      STRING                             COMMENT  '品牌',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
SUPPLIER_ID                   STRING                             COMMENT  '承运商ID',
SUPPLIER_NAME                 STRING                             COMMENT  '承运商名称',
TPMODE_ID                     STRING                             COMMENT  '运输方式ID',
TPMODE_NAME                   STRING                             COMMENT  '运输方式名称',
FACT_DEVR_NUM                 DECIMAL(32,8)                      COMMENT  '实际交付数',
PLAN_DEVR_NUM                 DECIMAL(32,8)                      COMMENT  '计划交付数',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
update_time                   STRING                             COMMENT  '更新时间'
) 
COMMENT '交付与效率管理（日）-交付管理'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;


DROP TABLE IF EXISTS DMR.DMR_PC_TP_DEVREFF_DEVRMGR_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_PC_TP_DEVREFF_DEVRMGR_M(
PERIOD_WID                    BIGINT                             COMMENT  '期间ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
SUPPLIER_ID                   STRING                             COMMENT  '承运商ID',
SUPPLIER_NAME                 STRING                             COMMENT  '承运商名称',
TPMODE_ID                     STRING                             COMMENT  '运输方式ID',
TPMODE_NAME                   STRING                             COMMENT  '运输方式名称',
cur_m_dever_qty               DECIMAL(32,8)                      COMMENT  '月累计交付数',
cur_m_tgt_dever_qty           DECIMAL(32,8)                      COMMENT  '月计划交付数',
lst_m_dever_qty               DECIMAL(32,8)                      COMMENT  '上期累计交付数',
lst_m_tgt_dever_qty           DECIMAL(32,8)                      COMMENT  '上期计划交付数',
lst_y_m_dever_qty             DECIMAL(32,8)                      COMMENT  '同期累计交付数',
lst_y_m_tgt_dever_qty         DECIMAL(32,8)                      COMMENT  '同期计划交付数',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
update_time                   STRING                             COMMENT  '更新时间'
) 
COMMENT '交付与效率管理（月）-交付管理'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;
