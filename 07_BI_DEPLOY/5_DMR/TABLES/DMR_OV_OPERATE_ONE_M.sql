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
CUR_M_INCOME_FNSH_RATE        decimal(32,8)                      COMMENT  '当月收入完成率',
CUR_M_INCOME_RFND_RATE        decimal(32,8)                      COMMENT  '当月回款完成率',
CUR_M_PROFIT_FNSH_RATE        decimal(32,8)                      COMMENT  '当月利润总额的完成率',
SORTING                       decimal(32,0)                      COMMENT  '排序标志默认值是0',
INCOME_RFND_RATE_M_TARGT      decimal(32,8)                      COMMENT  '回款完成率月目标',
INSERT_TIME                   STRING                             COMMENT  '插入时间',
UPDATE_TIME                   STRING                             COMMENT  '更新时间'
) 
COMMENT 'DMR大屏端运营总览1'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;