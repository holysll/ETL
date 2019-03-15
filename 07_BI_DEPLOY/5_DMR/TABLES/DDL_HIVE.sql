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
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_CONVECTION_RANK_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_CONVECTION_RANK_M(
MONTH_ID                      STRING                             COMMENT  '月份ID',
CITY_ID                       STRING                             COMMENT  '城市ID',
CITY_NAME                     STRING                             COMMENT  '城市名称',
ASC_RANK_ID                   BIGINT                             COMMENT  '升序排名号',
DESC_RANK_ID                  BIGINT                             COMMENT  '降序排名号',
FORWARD_QTY                   BIGINT                             COMMENT  '顺向数量',
BACKRWARD_QTY                 BIGINT                             COMMENT  '逆向数量',
CONVECTION_QTY                BIGINT                             COMMENT  '对流量',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR大屏端线路对流排名'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_OPERATE_ONE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_OPERATE_ONE_M(
YEAR_ID                       STRING                             COMMENT  '年份ID',
MONTH_ID                      STRING                             COMMENT  '月份ID',
TIME_RATE                     decimal(32,8)                      COMMENT  '时间进度',
CUR_M_BIZ_INCOME_AMT          decimal(32,8)                      COMMENT  '当月营业收入金额',
CUR_Y_BIZ_INCOME_AMT          decimal(32,8)                      COMMENT  '当年营业收入金额',
CUR_Y_BIZ_INCOME_FINISH_RATE  decimal(32,8)                      COMMENT  '当年营业收入完成率',
CUR_Y_BIZ_INCOME_FLAG         STRING                             COMMENT  '当年营业收入正常标志（0正常 1不正常）',
CUR_M_BIZ_INCOME_TB_RATE      decimal(32,8)                      COMMENT  '当月营业收入同比',
CUR_M_BIZ_INCOME_HB_RATE      decimal(32,8)                      COMMENT  '当月营业收入环比',
CUR_M_PROFIT_AMT              decimal(32,8)                      COMMENT  '当月利润金额',
CUR_Y_PROFIT_AMT              decimal(32,8)                      COMMENT  '当年利润金额',
CUR_Y_PROFIT_PLAN_FINISH_RATE decimal(32,8)                      COMMENT  '当年利润计划完成率',
CUR_Y_PROFIT_FLAG             STRING                             COMMENT  '当年利润正常标志（0正常 1不正常）',
CUR_M_PROFIT_TB_RATE          decimal(32,8)                      COMMENT  '当月利润同比',
CUR_M_PROFIT_HB_RATE          decimal(32,8)                      COMMENT  '当月利润环比',
CUR_M_RECV_RFND_AMT           decimal(32,8)                      COMMENT  '当月应收账款回款金额',
CUR_Y_RECV_RFND_AMT           decimal(32,8)                      COMMENT  '当年应收账款回款金额',
CUR_Y_RECV_RFND_FINISH_RATE   decimal(32,8)                      COMMENT  '当年应收账款回款完成率',
CUR_Y_RECV_RFND_FLAG          STRING                             COMMENT  '当年应收账款回款正常标志（0正常 1不正常）',
CUR_M_RECV_RFND_TB_RATE       decimal(32,8)                      COMMENT  '当月应收账款回款同比',
CUR_M_RECV_RFND_HB_RATE       decimal(32,8)                      COMMENT  '当月应收账款回款环比',
CUR_M_INCOME_FNSH_RATE       decimal(32,8)                      COMMENT  '当月收入完成率',
CUR_M_INCOME_RFND_RATE       decimal(32,8)                      COMMENT  '当月回款完成率',
CUR_M_PROFIT_FNSH_RATE       decimal(32,8)                      COMMENT  '当月利润总额的完成率',
SORTING       decimal(32,0)                      COMMENT  '排序标志默认值是0',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR大屏端运营总览1'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_OPERATE_TWO_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_OPERATE_TWO_M(
MONTH_ID                      STRING                             COMMENT  '月份ID',
ORG_ID                        STRING                             COMMENT  '组织ID',
ORG_TYPE                      STRING                             COMMENT  '组织类型',
ORG_NAME                      STRING                             COMMENT  '组织名称',
CUR_M_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  '当月市场拓展收入金额',
LST_TQ_M_MKT_EXP_INCOME_AMT   DECIMAL(32,8)                      COMMENT  '去年同期月市场拓展收入金额',
CUR_M_PLAN_MKT_EXP_INCOME_AMT DECIMAL(32,8)                      COMMENT  '当月计划市场拓展收入金额',
CUR_M_BIZ_INCOME_AMT          DECIMAL(32,8)                      COMMENT  '当月营业收入金额',
CUR_M_HR_FEE_RATE             DECIMAL(32,8)                      COMMENT  '当月人事费用率',
CUR_M_HR_FEE_RATE_TARGT       DECIMAL(32,8)                      COMMENT  '当月人事费用率目标值',
CUR_M_BIZ_QTY                 BIGINT                             COMMENT  '当月业务量',
CUR_M_BIZ_INCOME_HB_RATE      DECIMAL(32,8)                      COMMENT  '当月营业收入环比',
CUR_M_PROFIT_AMT              DECIMAL(32,8)                      COMMENT  '当月利润金额',
LST_TQ_M_PROFIT_AMT           DECIMAL(32,8)                      COMMENT  '去年同期月利润金额',
CUR_M_PROFIT_GROW_RATE        DECIMAL(32,8)                      COMMENT  '当月利润增长率',
CUR_M_CA_ONTIME_RATE          DECIMAL(32,8)                      COMMENT  '当月长安准到率',
CUR_M_CA_ONTIME_RATE_TARGT    DECIMAL(32,8)                      COMMENT  '当月长安准到率目标',
CUR_M_FT_ONTIME_RATE          DECIMAL(32,8)                      COMMENT  '当月福特准到率',
CUR_M_FT_ONTIME_RATE_TARGT    DECIMAL(32,8)                      COMMENT  '当月福特准到率目标',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR大屏端运营总览2'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_SHIPTYPE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_SHIPTYPE_M(
MONTH_ID                      STRING                             COMMENT  '月份ID',
SHIP_TYPE                     STRING                             COMMENT  '发运方式',
CUR_Y_SHIP_QTY                BIGINT                             COMMENT  '当年发运量',
CUR_Y_SHIP_QTY_RATE           DECIMAL(32,8)                      COMMENT  '当年发运方式占比',
LST_TQ_SHIP_QTY               STRING                             COMMENT  '去年发运量',
LST_TQ_SHIP_QTY_RATE          DECIMAL(32,8)                      COMMENT  '去年发运方式占比',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR大屏端发运方式'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_BIZCNT_REALTIME_D;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_BIZCNT_REALTIME_D(
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR移动端总览实时业务量快报'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_CM_USER_AUTH;
CREATE TABLE IF NOT EXISTS DMR.DMR_CM_USER_AUTH(
OC_ID                         STRING                             COMMENT  '运营中心ID',
OC_NAME                       STRING                             COMMENT  '运营中心名称',
RGN_ID                        STRING                             COMMENT  '区域ID',
RGN_NAME                      STRING                             COMMENT  '区域名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR用户权限控制表'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

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
COMMENT 'DMR整车运输方式月报表'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_FIN_CPT_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_FIN_CPT_M(
MONTH_ID                      STRING                             COMMENT  '月份ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
CUR_M_QP_QTY                  BIGINT                             COMMENT  '当月启票量',
CUR_M_QP_PLAN_QTY             BIGINT                             COMMENT  '当月启票计划量',
CUR_M_QP_FNSH_RATE            DECIMAL(32,8)                      COMMENT  '当月启票完成率',
CUR_M_ONTIME_ARRIVE_QTY       BIGINT                             COMMENT  '当月准时到达量',
CUR_M_DLV_QTY                 BIGINT                             COMMENT  '当月交付量',
CUR_M_ONTIME_DLV_RATE         DECIMAL(32,8)                      COMMENT  '当月准时交付率',
CUR_M_TRANS_BIZ_QTY           BIGINT                             COMMENT  '当月运输业务量',
CUR_M_TRANS_PLAN_QTY          BIGINT                             COMMENT  '当月运输计划量',
CUR_M_TRANS_FNSH_RATE         DECIMAL(32,8)                      COMMENT  '当月运输完成率',
CUR_M_MANUAL_TRANS_QTY        BIGINT                             COMMENT  '当月人工运输量',
CUR_M_HIGHWAY_TRANS_QTY       BIGINT                             COMMENT  '当月公路运输量',
CUR_M_WATERWAY_TRANS_QTY      BIGINT                             COMMENT  '当月水运运输量',
CUR_M_RAILWAY_TRANS_QTY       BIGINT                             COMMENT  '当月铁路运输量',
CUR_M_INCOME_AMT              DECIMAL(32,8)                      COMMENT  '当月收入金额',
CUR_M_INCOME_PLAN_AMT         DECIMAL(32,8)                      COMMENT  '当月收入计划金额',
CUR_M_INCOME_FNSH_RATE        DECIMAL(32,8)                      COMMENT  '当月收入完成率',
LST_M_INCOME_AMT              DECIMAL(32,8)                      COMMENT  '上月收入金额',
MONTH_INCOME_HB_RATE          DECIMAL(32,8)                      COMMENT  '月收入环比',
LST_TQ_M_INCOME_AMT           DECIMAL(32,8)                      COMMENT  '去年同期月收入金额',
MONTH_INCOME_TB_RATE          DECIMAL(32,8)                      COMMENT  '月收入同比',
CUR_Y_INCOME_AMT              DECIMAL(32,8)                      COMMENT  '当年收入金额',
CUR_Y_INCOME_PLAN_AMT         DECIMAL(32,8)                      COMMENT  '当年收入计划金额',
CUR_Y_INCOME_FNSH_RATE        DECIMAL(32,8)                      COMMENT  '当年收入完成率',
CUR_M_PROFIT_AMT              DECIMAL(32,8)                      COMMENT  '当月利润金额',
CUR_M_PROFIT_PLAN_AMT         DECIMAL(32,8)                      COMMENT  '当月利润计划金额',
CUR_M_PROFIT_FNSH_RATE        DECIMAL(32,8)                      COMMENT  '当月利润完成率',
LST_M_PROFIT_AMT              DECIMAL(32,8)                      COMMENT  '上月利润金额',
MONTH_PROFIT_HB_RATE          DECIMAL(32,8)                      COMMENT  '月利润环比',
LST_TQ_M_PROFIT_AMT           DECIMAL(32,8)                      COMMENT  '去年同期月利润金额',
MONTH_PROFIT_TB_RATE          DECIMAL(32,8)                      COMMENT  '月利润同比',
CUR_Y_PROFIT_AMT              DECIMAL(32,8)                      COMMENT  '当年利润金额',
CUR_Y_PROFIT_PLAN_AMT         DECIMAL(32,8)                      COMMENT  '当年利润计划金额',
CUR_Y_PROFIT_FNSH_RATE        DECIMAL(32,8)                      COMMENT  '当年利润完成率',
CUR_M_RECV_AMT                DECIMAL(32,8)                      COMMENT  '当月应收账款金额',
CUR_M_RECV_PLAN_AMT           DECIMAL(32,8)                      COMMENT  '当月应收账款计划金额',
CUR_M_RECV_FNSH_RATE          DECIMAL(32,8)                      COMMENT  '当月应收账款完成率',
LST_M_RECV_AMT                DECIMAL(32,8)                      COMMENT  '上月应收账款金额',
MONTH_RECV_HB_RATE            DECIMAL(32,8)                      COMMENT  '月应收账款环比',
LST_TQ_M_RECV_AMT             DECIMAL(32,8)                      COMMENT  '去年同期月应收账款金额',
MONTH_RECV_TB_RATE            DECIMAL(32,8)                      COMMENT  '月应收账款同比',
CUR_Y_RECV_AMT                DECIMAL(32,8)                      COMMENT  '当年应收账款金额',
CUR_Y_RECV_PLAN_AMT           DECIMAL(32,8)                      COMMENT  '当年应收账款计划金额',
CUR_Y_RECV_FNSH_RATE          DECIMAL(32,8)                      COMMENT  '当年应收账款完成率',
CUR_M_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  '当月市场拓展收入金额',
CUR_M_MKT_EXP_INCOME_PLAN_AMT DECIMAL(32,8)                      COMMENT  '当月市场拓展收入计划金额',
CUR_M_MKT_EXP_INCOME_FNSH_RATE DECIMAL(32,8)                      COMMENT  '当月市场拓展收入完成率',
LST_M_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  '上月市场拓展收入金额',
MONTH_MKT_EXP_INCOME_HB_RATE  DECIMAL(32,8)                      COMMENT  '月市场拓展收入环比',
LST_TQ_M_MKT_EXP_INCOME_AMT   DECIMAL(32,8)                      COMMENT  '去年同期月市场拓展收入金额',
MONTH_MKT_EXP_INCOME_TB_RATE  DECIMAL(32,8)                      COMMENT  '月市场拓展收入同比',
CUR_Y_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  '当年市场拓展收入金额',
CUR_Y_MKT_EXP_INCOME_PLAN_AMT DECIMAL(32,8)                      COMMENT  '当年市场拓展收入计划金额',
YEAR_MKT_EXP_INCOME_FNSH_RATE DECIMAL(32,8)                      COMMENT  '年市场拓展收入完成率',
LST_Y_MKT_EXP_INCOME_AMT      DECIMAL(32,8)                      COMMENT  '去年市场拓展收入金额',
YEAR_MKT_EXP_INCOME_HB_RATE   DECIMAL(32,8)                      COMMENT  '年市场拓展收入环比',
LST_TQ_Y_MKT_EXP_INCOME_AMT   DECIMAL(32,8)                      COMMENT  '去年同期年市场拓展收入金额',
YEAR_MKT_EXP_INCOME_TB_RATE   DECIMAL(32,8)                      COMMENT  '年市场拓展收入同比',
CUR_Y_INCOME_TB_RATE          DECIMAL(32,8)                      COMMENT  '当年收入同比',
CUR_Y_INCOME_HB_RATE          DECIMAL(32,8)                      COMMENT  '当年收入环比',
CUR_Y_PROFIT_TB_RATE          DECIMAL(32,8)                      COMMENT  '当年利润同比',
CUR_Y_PROFIT_HB_RATE          DECIMAL(32,8)                      COMMENT  '当年利润环比',
CUR_Y_RECV_TB_RATE            DECIMAL(32,8)                      COMMENT  '当年应收账款同比',
CUR_Y_RECV_HB_RATE            DECIMAL(32,8)                      COMMENT  '当年应收账款环比',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR移动端总览财务完成情况'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_TRANSPORT_MODE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_TRANSPORT_MODE_M(
MONTH_ID                      STRING                             COMMENT  '月份ID',
RGN_ID                        STRING                             COMMENT  '大区ID',
RGN_NAME                      STRING                             COMMENT  '大区名称',
BASE_ID                       STRING                             COMMENT  '基地ID',
BASE_NAME                     STRING                             COMMENT  '基地名称',
BRAND_ID                      STRING                             COMMENT  '品牌ID',
BRAND_NAME                    STRING                             COMMENT  '品牌名称',
SHIP_TYPE                     STRING                             COMMENT  '发运方式',
CUR_M_TRANS_QTY               BIGINT                             COMMENT  '当月运输量',
SHIP_TYPE_RATIO               DECIMAL(32,8)                      COMMENT  '发运方式占比',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR整车运输方式月报表'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;

DROP TABLE IF EXISTS DMR.DMR_OV_HR_FEE_M;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_HR_FEE_M(
MONTH_ID                      STRING                             COMMENT  '月份ID',
CUR_M_INCOME_AMT              DECIMAL(32,8)                      COMMENT  '当月收入金额',
TOTAL_MANPOWER_COST_AMT       DECIMAL(32,8)                      COMMENT  '总人力成本金额',
FACT_FEE_RATE                 DECIMAL(32,8)                      COMMENT  '实际费用率',
CUR_M_FEE_RATE_INDEX          DECIMAL(32,8)                      COMMENT  '当月费用率指标',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR移动端总览人事费用'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;