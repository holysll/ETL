DROP TABLE IF EXISTS TEMP.DMR_TP_QP_PROGRESS;
CREATE TABLE IF NOT EXISTS TEMP.DMR_TP_QP_PROGRESS(
PERIOD_WID                    STRING                             COMMENT  '期间                 ',
month_id                      STRING                             COMMENT  '年月id',
rgn_id                        string                             COMMENT  '大区ID',
rgn_name                      string                             COMMENT  '大区名称',
base_id                       string                             COMMENT  '基地ID',
base_name                     string                             COMMENT  '基地名称',
brand_id                      string                             COMMENT  '品牌ID',
brand_name                    string                             COMMENT  '品牌名称',
proj_id                       string                             COMMENT  '项目ID',
proj_name                     string                             COMMENT  '项目名称',
dest_prvn_id                  STRING                             COMMENT  '目的地省份',
tpmode_id                     string                             COMMENT  '发运方式id（第一段）',
tpmode_name               string                              comment'发运方式名称',
CUR_TGT_QP_QTY                bigint                             COMMENT  '月计划启票量',
JHQPFYFSZB                    DECIMAL(32,8)                      COMMENT  '计划启票发运方式占比',
yljhqp                        bigint                             COMMENT  '月累计划启票',
zrqp                          bigint                             COMMENT  '昨日启票',
ylqp                          bigint                             COMMENT  '月累启票',
QPJD                          DECIMAL(32,8)                      COMMENT  '启票进度',
SYRJQPL                       DECIMAL(32,8)                      COMMENT  '剩余日均启票量',
clxq                          DECIMAL(32,8)                      COMMENT  '车辆需求',
zrsjfy                        bigint                             COMMENT  '昨日实际发运',
ylfy                          bigint                             COMMENT  '月累发运',
SJQPFYFSZB                    DECIMAL(32,8)                      COMMENT  '实际启票发运方式占比',
SJQPZQYBL                     DECIMAL(32,8)                      COMMENT  '实际启票占全月计划启票比例',
YLQPCY                        bigint                             COMMENT  '月累启票差异',
INSERT_time                   STRING                             COMMENT  '插入时间'

) 
COMMENT 'PC运输启票进度'
PARTITIONED BY(PART_SC STRING COMMENT  '数据来源',PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;
