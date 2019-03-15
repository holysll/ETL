DROP TABLE IF EXISTS DMR.DMR_OV_RGN_PROVINCE_RELA;
CREATE TABLE IF NOT EXISTS DMR.DMR_OV_RGN_PROVINCE_RELA(
RGN_NAME                      STRING                             COMMENT  '大区名称',
PROVINCE_NAME                 STRING                             COMMENT  '省份名称',
RGN_FLAG                 STRING                             COMMENT  '大区序号'
) 
COMMENT 'DMR大屏端大区省份关系'
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;