DROP TABLE IF EXISTS TEMP.DMR_PC_TP_ORD_QPJFCKFY_D;
CREATE TABLE IF NOT EXISTS TEMP.DMR_PC_TP_ORD_QPJFCKFY_D(
DATE_ID                       STRING                             COMMENT  '����ID',
MONTH_ID                    STRING                             COMMENT '����ID',
RGN_ID                        STRING                             COMMENT  '����ID',
RGN_NAME                      STRING                             COMMENT  '��������',
BASE_ID                       STRING                             COMMENT  '����ID',
BASE_NAME                     STRING                             COMMENT  '��������',
PROJ_ID                       STRING                             COMMENT  '��ĿID',
PROJ_NAME                     STRING                             COMMENT  '��Ŀ����',
TPMODE_ID                     STRING                             COMMENT  '���䷽ʽID',
TPMODE_NAME                   STRING                             COMMENT  '���䷽ʽ����',
CUR_QP_QTY                    BIGINT                             COMMENT  '����ʵ����Ʊ��',
CUR_TGT_QP_QTY                BIGINT                             COMMENT  '���ռƻ���Ʊ��',
CUR_ALLOC_QTY                 BIGINT                             COMMENT  '����ʵ�ʷ�����',
CUR_TGT_ALLOC_QTY             BIGINT                             COMMENT  '���ռƻ�������',
FACT_DEVR_NUM                 DECIMAL(32,8)                      COMMENT  'ʵ�ʽ�����',
PLAN_DEVR_NUM                 DECIMAL(32,8)                      COMMENT  '�ƻ�������',
BIZ_QTY                       DECIMAL(32,8)                      COMMENT  'ҵ��������',
OUT_STORE_QTY                 DECIMAL(32,8)                      COMMENT  '������',
INSERT_DATE                   STRING                             COMMENT  '����ʱ��',
UPDATE_DATE                   STRING                             COMMENT  '����ʱ��'
) 
COMMENT 'PC���䶩������-��Ʊ�����գ�'
PARTITIONED BY(PART_SC STRING COMMENT  '������Դ',PART_DT STRING COMMENT  '����ʱ��')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\036'
STORED AS PARQUET;