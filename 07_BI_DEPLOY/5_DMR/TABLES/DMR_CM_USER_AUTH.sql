DROP TABLE IF EXISTS DMR.DMR_CM_USER_AUTH;
CREATE TABLE IF NOT EXISTS DMR.DMR_CM_USER_AUTH(
USER_ACCT                         STRING                         COMMENT  '用户账户',
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