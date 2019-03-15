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
PARTITIONED BY(PART_DT STRING COMMENT  '分区时间')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;
